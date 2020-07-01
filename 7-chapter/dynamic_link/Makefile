out: 
	gcc -shared shlib.c -o libshlib.so -m32
	gcc -shared dllib.c -o libdllib.so -m32
	gcc main.c -o main -L$(PWD) -lshlib -ldl -m32
