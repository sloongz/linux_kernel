#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

int main(int argc, char **argv)
{
	int pid;

	pid = fork();
	if (pid < 0) {
		printf("fork fail\n");
		exit(-1);
	} else if (pid == 0) {
		printf("This is child process, pid:%d\n", getpid());
		execlp("/bin/ls", "ls", "-al",NULL);
	} else {
		printf("This is parent process, pid:%d\n", getpid());
		wait(NULL);
		printf("chlid complete\n");
		exit(0);
	}

	return 0;
}
