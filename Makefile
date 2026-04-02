.PHONY: all clean install

CC = gcc
CFLAGS = -Wall -m32 -O \
	     -fstrength-reduce -fomit-frame-pointer -finline-functions \
	     -nostdinc -fno-builtin \
	     -fno-pic -fno-pie -fno-stack-protector \
	     -I./include

all: kernel

install: kernel
	mount bootdisk.img /mnt -o loop
	cp kernel /mnt/kernel
	umount /mnt

kernel: start.o link.ld main.o vga.o gdt.o idt.o isrs.o irq.o timer.o kbd.o
	ld -m elf_i386 -T link.ld -o kernel *.o

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

start.o: start.asm
	nasm -f elf -o start.o start.asm

clean:
	rm -f *.o kernel
