TARGET = libGLdc.a

OBJS = GL/draw.o GL/flush.o GL/framebuffer.o GL/immediate.o GL/lighting.o GL/state.o GL/texture.o GL/glu.o
OBJS += GL/matrix.o GL/fog.o GL/error.o GL/clip.o containers/stack.o containers/named_array.o containers/aligned_vector.o GL/profiler.o
OBJS += containers/stack.o containers/named_array.o containers/aligned_vector.o GL/profiler.o

KOS_CFLAGS += -ffast-math -Ofast -Iinclude

include ${KOS_PORTS}/scripts/lib.mk