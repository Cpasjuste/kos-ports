TARGET = libconio.a
OBJS = conio.o draw.o input.o
KOS_CFLAGS += -Iinclude -DBUILD_LIBCONIO

include ${KOS_PORTS}/scripts/lib.mk
