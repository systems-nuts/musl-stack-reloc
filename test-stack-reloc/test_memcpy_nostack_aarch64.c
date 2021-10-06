#define _GNU_SOURCE
#include <stdio.h>
#include <sys/mman.h>


#define __memcpy_nostack(dest, src, n) \
	({ unsigned long retval =-1; \
	__asm__ volatile(".weak __memcpy_nostack \n" \
		".weak __memcpy_nostack_exit \n" \
		".weak __memcpy_nostack_copy \n" \
		"__memcpy_nostack:" \
		"mov x4, %1 \n\t" \
		"cmp %2, x4 \n\t" \
		"b.le __memcpy_nostack_exit \n" \
		"__memcpy_nostack_copy:" \
		"ldrb w5, [%4, x4] \n\t" \
		"strb w5, [%3, x4] \n\t" \
		"add x4, x4, #0x1 \n\t" \
		"cmp %2, x4 \n\t" \
		"b.gt __memcpy_nostack_copy \n" \
		"__memcpy_nostack_exit:" \
		"mov %0, x4 \n\t" \
		: "=r" (retval) \
		: "I" (0), "r" (n), \
		  "r" (dest), "r" (src) \
		: "x5", "x4", "memory"); \
	retval; })


int main()
{
	int N = 4096;
	void *old_addr = (void *)0x7fffffff1000;
	int *ptr = mmap(old_addr, N * sizeof(int), 
			PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS | MAP_FIXED, 0, 0 );

	if (ptr == MAP_FAILED) {
		printf("Mapping Failed\n");
		return 1;
	}
	printf("old_addr is : %p \n", old_addr);
	printf("ptr is : %p \n", ptr);

	for(int i=0; i<N; i++)
		ptr[i] = i;

	for(int i=0; i<N; i += 512)
		printf("%4d ", ptr[i]);
	printf("\n");

	void *new_addr = (void*)((long int)ptr - 0x000000001000);

	int *new_ptr = mmap(new_addr, N * sizeof(int), 
			PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS | MAP_FIXED, 0, 0 );
	printf("new_addr is : %p \n", new_addr);
	printf("new_ptr is : %p \n", new_ptr);

	for(int i=0; i<N; i++)
		new_ptr[i] = 2 * i;

	for(int i=0; i<N; i += 512)
		printf("%4d ", ptr[i]);
	printf("\n");

	for(int i=0; i<N; i += 512)
		printf("%4d ", new_ptr[i]);
	printf("\n");

	long int result = __memcpy_nostack(new_addr, old_addr, (long int)(4 * N));
	printf("Result is: %ld\n", result);

	for(int i=0; i<N; i += 512)
		printf("%4d ", new_ptr[i]);
	printf("\n");
}

