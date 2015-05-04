TARGET = libparallax.a
OBJS := $(patsubst %.c,%.o,$(wildcard src/*.c))
KOS_CFLAGS += -Iinclude

include ${KOS_PORTS}/scripts/lib.mk
