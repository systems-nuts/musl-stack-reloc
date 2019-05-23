#include <stdio.h>
#include <unistd.h>
#include <elf.h>

int main (int arc, char * argv[], char * envp[]) {
  printf("hello world! %d 0x%lx 0x%lx\n", arc, argv, &arc);

  int i;
  for (i=0; i< arc; i++)
	  printf("i: %d, @ 0x%lx, %s\n", i, argv[i], argv[i]);

  i=0;
  while (envp[i++] != 0)
	  printf("e: %d, @ 0x%lx, %s\n", i-1, envp[i-1], envp[i-1]);

  Elf64_Phdr* phdr=0; long phent=0; long phnum=0;
  Elf64_auxv_t *auxv;
  for (auxv = (Elf64_auxv_t *)&envp[i]; auxv->a_type != AT_NULL; auxv++)
	  switch (auxv->a_type) {
		  case AT_PLATFORM:
	          case AT_BASE_PLATFORM:
	          case AT_EXECFN:
		      printf("AT_  type: %d is: %s (0x%lx)\n", auxv->a_type, auxv->a_un.a_val, auxv->a_un.a_val);
		      break;
		  case AT_PHDR:
		      phdr = (void*)auxv->a_un.a_val;
		      break;
		  case AT_PHENT:
		      phent = auxv->a_un.a_val;
		      break;
		  case AT_PHNUM:
		      phnum = auxv->a_un.a_val;
		      break;
                  default:
                     printf("AT_ type: %d is: 0x%lx\n", auxv->a_type, auxv->a_un.a_val);

	  };
  printf("phdr 0x%lx phent %d (%d) phnum %d\n",
	phdr, (int) phent, sizeof(Elf64_Phdr), (int)phnum);
  for (i=0; i< phnum; i++) {
	  printf("i: %d type: %d flags: %d off: 0x%lx vaddr: 0x%lx paddr: 0x%lx filesz: 0x%lx memsz: 0x%lx align: 0x%lx\n",
                i, phdr[i].p_type, phdr[i].p_flags, phdr[i].p_offset, phdr[i].p_vaddr, phdr[i].p_paddr,
		phdr[i].p_filesz, phdr[i].p_memsz, phdr[i].p_align);
  }

  sleep(30);
      
  return 0;
}
