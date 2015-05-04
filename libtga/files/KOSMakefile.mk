TARGET = libtga.a
OBJS = tga.o tga_texture.o
KOS_CFLAGS += -Iinclude

include ${KOS_PORTS}/scripts/lib.mk
