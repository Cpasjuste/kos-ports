TARGET = libconio.a
OBJS = conio.o draw.o input.o
KOS_CFLAGS += -Iinclude

include ${KOS_PORTS}/scripts/lib.mk
