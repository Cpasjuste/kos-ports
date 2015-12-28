TARGET = libGL.a
OBJS =  gl-rgb.o gl-fog.o gl-sh4-light.o gl-light.o gl-clip.o gl-clip-arrays.o
OBJS += gl-arrays.o gl-pvr.o gl-matrix.o gl-api.o gl-texture.o glu-texture.o
OBJS += gl-framebuffer.o gl-cap.o gl-error.o

KOS_CFLAGS += -Iinclude -ffast-math -O3 -DBUILD_LIBGL

include ${KOS_PORTS}/scripts/lib.mk
