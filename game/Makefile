CC = i686-pc-nazna-gcc
CFLAGS = -march=core2 -std=c99 -O0 -I/afs/acm.uiuc.edu/user/lange7/nazna-toolchain/local/i686-pc-nazna/include/freetype2

.PHONY: all

all: ../initrd/bin/game

../initrd/bin/game: game
	cp game ../initrd/bin/game

game: main.c
	${CC} ${CFLAGS} -o game main.c ~/nazna-toolchain/local/i686-pc-nazna/lib/libfreetype.a