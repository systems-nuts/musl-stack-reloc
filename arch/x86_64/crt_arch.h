
/* Original version by the musl authors */
/* Current version by Antonio Barbalace, Nikos, The University of Edinburgh 2021 */

__asm__(
".text \n"
".global " START " \n"
START ": \n"
"	xor %rbp,%rbp \n"
"	mov %rsp,%rdi \n"
".weak _DYNAMIC \n"
".hidden _DYNAMIC \n"
"	lea _DYNAMIC(%rip),%rsi \n"
"	andq $-16,%rsp \n"
"	call " START "_c \n"
);

/* TODO copy more than a byte at the time */
#define __memcpy_nostack(dest, src, n) \
	({ unsigned long retval =-1; \
	__asm__ volatile(".weak __memcpy_nostack \n" \
		".weak __memcpy_nostack_error \n" \
		".weak __memcpy_nostack_exit \n" \
		".weak __memcpy_nostack_copy \n" \
		"__memcpy_nostack:" \
		"cmp %4, %3; \n\t" \
		"jg __memcpy_nostack_error; \n" \
		"push %%r8; \n\t" \
		"push %%r9; \n\t" \
		"movq %1, %%r8; \n\t" \
		"cmp %%r8, %2; \n\t" \
		"jle __memcpy_nostack_exit; \n" \
		"__memcpy_nostack_copy:" \
		"movb (%4, %%r8, 1), %%r9b; \n\t" \
		"movb %%r9b, (%3, %%r8, 1); \n\t" \
		"inc %%r8; \n\t" \
		"cmp %%r8, %2; \n\t" \
		"jg __memcpy_nostack_copy; \n" \
		"__memcpy_nostack_exit:" \
		"movq %%r8, %0; \n\t" \
		"pop %%r9; \n\t" \
		"pop %%r8; \n\t" \
		"__memcpy_nostack_error: \n\t" \
		: "=r" (retval) \
		: "I" (0), "r" (n), \
		  "r" (dest), "r" (src) \
		: "r9b", "r8", "memory"); \
	retval; })

/* comment the following to disable relocation before libc start */
#define STACK_RELOC
//in x86_64 we don't move VVAR and VDSO, at least for the moment
