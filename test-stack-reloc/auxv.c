
#include <stdio.h>
#include <elf.h>


int main(int argc, char* argv[], char* envp[])
{
  Elf64_auxv_t *auxv;

  printf("sizeof(Elf64_auxv_t): %d\n", sizeof(Elf64_auxv_t));

  while(*envp++ != NULL); /*from stack diagram above: *envp = NULL marks end of envp*/

  for (auxv = (Elf64_auxv_t *)envp; auxv->a_type != AT_NULL; auxv++)
  /* auxv->a_type = AT_NULL marks the end of auxv */
  {
//    if( auxv->a_type == AT_SYSINFO)
     switch (auxv->a_type) {
	     case AT_PLATFORM:
             case AT_BASE_PLATFORM:
             case AT_EXECFN:
               printf("AT_ type: %d is: %s (0x%lx)\n", auxv->a_type, auxv->a_un.a_val, auxv->a_un.a_val);
	       break;
	     default:
               printf("AT_ type: %d is: 0x%lx\n", auxv->a_type, auxv->a_un.a_val);
     }
  }

  return 0;
}
