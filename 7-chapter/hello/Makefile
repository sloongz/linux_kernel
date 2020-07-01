hello:
	gcc -m32 -static -o hello.m32.static hello.c
	gcc -m32 -o hello.m32.dynamic hello.c
	gcc -E hello.c -o hello.i
	gcc -S hello.i -o hello.s -m32
	gcc -c hello.s -o hello.o -m32
	gcc hello.o -o hello -m32
