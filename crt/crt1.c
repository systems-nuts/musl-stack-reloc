#include <features.h>
#include "libc.h"

#define START "_start"

#include "crt_arch.h"

/* stack relocatoin code, Antonio Barbalace, Stevens 2019 */
/* for stack relocation */
// http://articles.manugarg.com/aboutelfauxiliaryvectors.html
#include <string.h>
#include <unistd.h>
#include <sys/mman.h>
#include "syscall.h"
#include <elf.h>

#define MB                (1024*1024)
#define STACK_SIZE        (16*MB)
#define STACK_END_ADDR    (0x800000000000)
#define STACK_START_ADDR  (STACK_END_ADDR - STACK_SIZE)
#define __PAGE_SIZE       (4096)
#define MAPPED_PAGES	  (32)

// TODO use mremap instead (SYS_mremap)
/* end stack relocation code */

int main();
weak void _init();
weak void _fini();
_Noreturn int __libc_start_main(int (*)(), int, char **,
	void (*)(), void(*)(), void(*)());

void _start_c(long *p)
{
	register int argc = p[0];
	register char **argv = (void *)(p+1);

/* stack relocation code */
        char **envp = argv+argc+1;
	Elf64_auxv_t *auxv; 
        int i;
	long stack_ptr = 0x00; long copied = 0, max, size, total_size;
	      
	/* gets the memory for the stack */
	void* stack_addr; // = mmap(STACK_START_ADDR, STACK_SIZE, PROT_NONE, MAP_PRIVATE|MAP_ANON, -1, 0);
#ifdef SYS_mmap2
        stack_addr = __syscall(SYS_mmap2, STACK_START_ADDR, STACK_SIZE, PROT_READ|PROT_WRITE, (MAP_PRIVATE|MAP_ANON|MAP_FIXED), -1, 0);
#else
	stack_addr = (void*) __syscall(SYS_mmap, STACK_START_ADDR, STACK_SIZE, PROT_READ|PROT_WRITE, (MAP_PRIVATE|MAP_ANON|MAP_FIXED), -1, 0);
#endif
	if ( stack_addr == ((void*)-1) )
	  goto _error;
        memset(stack_addr, STACK_SIZE, 0);      

	/* ARCH getting the the current stack pointer */
	__asm__ volatile ("mov %0, sp\n\t" : "=r" (stack_ptr) : : "memory");

	/* getting the current dimension of the stack, using heuristics */
        for (i=0; i<argc; i++) {
	  if (max < (long)argv[i])
	    max = (long)argv[i];
        }
	for (i=0; envp[i]; i++) {
          if (max < (long)envp[i])
	    max = (long)envp[i];
	}
	auxv = (Elf64_auxv_t *)(&envp[i+1]);
	for (i=0; (auxv[i].a_type != AT_NULL); i++) {
	  if (max < (long)auxv[i].a_un.a_val)
            max = (long) auxv[i].a_un.a_val;
	}
	/* align max address */
        max = (max & ~(__PAGE_SIZE -1)) + __PAGE_SIZE;
	size = ((max - (unsigned long)stack_ptr));
	
	/* update expected total mapped size in [stack] */
	total_size = __PAGE_SIZE * (MAPPED_PAGES + 1 + size/__PAGE_SIZE);

	/* rewrite pointers for the new stack */
        for (i=0; i<argc; i++)
	  argv[i] = (void*) (STACK_END_ADDR - (max - (unsigned long) argv[i])); 
	for (i=0; envp[i]; i++)
	  envp[i] = (void*) (STACK_END_ADDR - (max - (unsigned long) envp[i]));
	for (i=0; (auxv[i].a_type != AT_NULL); i++)
	  switch (auxv[i].a_type) {
	    case AT_PHDR: case AT_BASE: case AT_ENTRY:
            case AT_PLATFORM: case AT_BASE_PLATFORM:
	    case AT_EXECFN: case AT_RANDOM: 
	      /* check if it is != 0 and greater than the new stack end addr */
	      if (auxv[i].a_un.a_val > STACK_END_ADDR)
	        auxv[i].a_un.a_val = STACK_END_ADDR - (max - auxv[i].a_un.a_val);

	    /* we don't do VDSO relocation for now (TODO fix when we do VDSO relocation) */
	    case AT_SYSINFO: case AT_SYSINFO_EHDR: 
	    /* all others handled by the kernel */
	    case AT_HWCAP: case AT_PAGESZ: case AT_CLKTCK: case AT_PHENT:
	    case AT_PHNUM: case AT_FLAGS: case AT_UID: case AT_EUID:
	    case AT_GID: case AT_EGID: case AT_SECURE: case AT_EXECFD:
	    case AT_HWCAP2:
	      break;
	  }
	/* update argv pointer with the new address */
	argv = (void*) (STACK_END_ADDR - (max - (unsigned long) argv));

	/* ARCH copy the stack (TODO copy a word at the time) */ //TODO user SYS_mremap instead
	__asm__ volatile("_copia: mov x4, %1 \n\t"
			"cmp %2, x4 \n\t"
			"b.le _aarch64_memcpy_exit \n\t"
			"_aarch64_memcpy_copy:"
			"ldrb w5, [%4, x4] \n\t"
			"strb w5, [%3, x4] \n\t"
			"add x4, x4, #0x1 \n\t"
			"cmp %2, x4 \n\t"
			"b.gt _aarch64_memcpy_copy \n\t"
			"_aarch64_memcpy_exit:"
			"mov %0, x4 \n\t"
			: "=r" (copied)
			: "I" (0), "r" (size),
			  "r" (STACK_END_ADDR -size), "r" (stack_ptr)
			: "x5", "x4", "memory");
	if (copied != size)
	  goto _error;
  
	/* ARCH stack switch */
	__asm__ volatile("sub %1, %0, %1 \n\t"
		       	"mov sp, %1 \n\t"
			: :"r" (STACK_END_ADDR), "r" (size) : "memory");

	/* unmap previous stack */
	__syscall(SYS_munmap, (max - total_size), total_size);

	/* now it can continue to normal startup */
	__libc_start_main(main, argc, argv, _init, _fini, 0);

	/* we should reach here only in case of errors */
_error:
	/* from src/exit/_Exit.c */
       	//int ec =1;
	__syscall(SYS_exit_group, 1); //ec);
	for (;;) __syscall(SYS_exit, 1); //ec);
}



