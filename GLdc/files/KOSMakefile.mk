TARGET = libGLdc.a

OBJS = containers/aligned_vector.o containers/named_array.o containers/stack.o
OBJS += GL/clip.o GL/draw.o GL/error.o GL/flush.o GL/fog.o GL/framebuffer.o
OBJS += GL/glu.o GL/immediate.o GL/lighting.o GL/matrix.o GL/state.o GL/texture.o
OBJS += GL/util.o GL/yalloc/yalloc.o
OBJS += GL/platforms/sh4.o GL/version.o

KOS_CFLAGS += -O3 --fast-math -Iinclude -DBACKEND_KOSPVR

defaultall: GL/version.c $(OBJS) subdirs linklib

GL/version.c:
	rm -f $@
	@printf 'const char* GLDC_VERSION = "$(shell git describe --abbrev=4 --dirty --always --tags)";\n' > $@

include ${KOS_PORTS}/scripts/lib.mk
