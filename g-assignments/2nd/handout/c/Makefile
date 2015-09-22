# Handout for G1, ARK15, DIKU.
#
# Copyright (c) 2015 DIKU.
# Copenhagen Liberal License - v0.5 - September 6, 2015.
#
# To cross-compile all C-files into executables, type
#
# $ make all
#
# To clean things up, type
#
# $ make clean
#
# Authors:
#		Annie Jane Pinder <anpi@di.ku.dk>
#  	Oleksandr Shturmov <oleks@oleks.info>

.PHONY: all clean

SRC=$(patsubst %.c,%.elf,$(wildcard *.c))

all: $(SRC)

%.elf: _start.S %.c
	mips-elf-gcc -mips32 -nostdlib -o $*.elf _start.S $*.c

clean:
	rm -f *.o
	rm -f *.elf
