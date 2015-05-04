TARGET = libimageload.a
OBJS = readpcx.o readbmp.o readjpeg.o imageload.o jitter.o
KOS_CFLAGS += -Iinclude

include ${KOS_PORTS}/scripts/lib.mk
