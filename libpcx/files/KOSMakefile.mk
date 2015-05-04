TARGET = libpcx.a
OBJS = pcx.o pcx_texture.o
KOS_CFLAGS += -Iinclude

include ${KOS_PORTS}/scripts/lib.mk
