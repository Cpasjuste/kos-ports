TARGET = libogg.a
OBJS = src/bitwise.o src/framing.o

KOS_CFLAGS += -Iinclude -fsigned-char -ffast-math

defaultall: copytypes $(OBJS) subdirs linklib

copytypes:
	cp ../../files/config_types.h include/ogg

include ${KOS_PORTS}/scripts/lib.mk
