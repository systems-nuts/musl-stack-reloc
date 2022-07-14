
/* Antonio Barbalace, Nikos , The University of Edinburgh 2021 */

// note the different register order in ARM and x86 == src, dst
#define arch_stack_get() \
	({ unsigned long stack_ptr =-1; \
	__asm__ volatile ("mov %%rsp, %0\n\t" \
		: "=r" (stack_ptr) \
		: : "memory"); \
	stack_ptr; })

/* stack relocation configuration parameters */

#define STACK_PAGE_SIZE    (4096)

#define STACK_MB           (1024*1024)
#define STACK_SIZE         (16*STACK_MB)
#define STACK_END_ADDR     (0x800000000000 - 1 * STACK_PAGE_SIZE)
//in the next version we need to change the above to 0x8000...000 -8192

#define STACK_START_ADDR   (STACK_END_ADDR - STACK_SIZE)
#define STACK_MAPPED_PAGES (32)

#define STACK_RELOC_PAGE_ALIGN 2
#define STACK_RELOC_OFFSET 0x00

/* stack relocation arch dep macros */


#define arch_stack_switch(stack_top, stack_offset) \
	({ __asm__ volatile("sub %1, %0 \n\t" \
			"mov %0, %%rsp \n\t" \
			: :"r" (stack_top), "r" (stack_offset) \
			: "memory"); })

//applies to linux only

#define arch_vvar_get_pagesz() (STACK_PAGE_SIZE *1)

// per arch/platform (wasn't able to find this anywhere else in the code)

#define arch_vaddr_max() (0x800000000000)
// TODO maybe this should be (0x800000000000 - 4096) and the above should be (0x800000000000 - 2*4096)
