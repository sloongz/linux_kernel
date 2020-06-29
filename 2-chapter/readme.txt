sudo apt-get install libc6-dev-i386
gcc -g -o test test.c -m32
objdump -S test > test.s
