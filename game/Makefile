CC = i686-pc-nazna-gcc
CFLAGS = -march=core2 -std=c99 -O3 -I/afs/acm.uiuc.edu/user/lange7/nazna-toolchain/local/i686-pc-nazna/include/freetype2

.PHONY: all

all: ../initrd/bin/game ../initrd/bin/julia

../initrd/bin/game: main.c
	${CC} ${CFLAGS} -o $@ $< ~/nazna-toolchain/local/i686-pc-nazna/lib/libfreetype.a

../initrd/bin/julia: julia.c
	${CC} ${CFLAGS} -o $@ $<
