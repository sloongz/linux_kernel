#include <stdio.h>
#include "shlib.h"
#include <dlfcn.h>

int main()
{
	printf("this is main program");

	//装载是动态链接
	printf("calling sharelib_api() form libshlib.so\n");
	sharelib_api();

	//运行时动态链接
	void *handle = dlopen("libdllib.so", RTLD_NOW);
	if (handle == NULL) {
		printf("open lib libdllib.so error:%s\n", dlerror());
		return -1;
	}
	
	int (*func)(void);
	char *error;
	func = dlsym(handle, "dllib_api");
	if ((error = dlerror()) != NULL) {
		printf("dllib_api not found:%s\n", error);
	}
	printf("calling dllib_api() form libdllib.so\n");
	func();
	dlclose(handle);

	return 0;
}
