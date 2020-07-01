#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

int main()
{
	int pid;

	pid = fork();
	if (pid < 0) {
		printf("fork fail\n");
		exit(-1);
	} else if (pid == 0) {
		printf("This is child process, pid:%d\n", getpid());
	} else {
		printf("This is parent process, pid:%d\n", getpid());
		wait(NULL);
		printf("child complete\n");
		exit(0);
	}

	return 0;
}
