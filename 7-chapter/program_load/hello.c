#include <stdio.h>
#include <unistd.h>

int main()
{
	char *arglist[3];
	arglist[0] = "ls";
	arglist[1] = "-1";
	arglist[2] = 0;
	printf("before\n");
	execvp(arglist[0], arglist);
	printf("after\n");

	return 0;
}
