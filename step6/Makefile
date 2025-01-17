build:
	nasm -f elf64 hello.asm
	ld hello.o -nmagic --strip-all -T link.lds -o hello.out
.PHONY: build
