TARGET = libkosh.a
OBJS = kosh.o builtin.o chdir.o input.o
KOS_CFLAGS += -Iinclude

include ${KOS_PORTS}/scripts/lib.mk
