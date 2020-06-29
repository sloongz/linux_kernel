#include <stdio.h>

typedef int (*FUNC)(int x);

int afunc(int x)
{
	printf("call %s\n", __func__);
	return x;
}

int main()
{
	int val;
	FUNC func;

	func = afunc;
	
	val = func(1);
	printf("val:%d\n", val);

	return 0;
}
