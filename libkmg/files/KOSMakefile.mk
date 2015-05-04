TARGET = libkmg.a
OBJS = kmg.o
KOS_CFLAGS += -Iinclude

include ${KOS_PORTS}/scripts/lib.mk
