#include <stdio.h>

int main(void)
{
	unsigned int val1 = 1;
	unsigned int val2 = 2;
	unsigned int val3 = 0;

	printf("val1:%d val2:%d val3:%d\n", val1, val2, val3);

	asm volatile (
		"movl $0, %%eax\n\t"
		"addl %1, %%eax\n\t"
		"addl %2, %%eax\n\t"
		"movl %%eax, %0\r\t"
		:"=m"(val3)
		:"c"(val1),"d"(val2)
	);

	printf("val3:%d = val1:%d  + val2:%d\n", val3, val1, val2);

	return 0;
}
