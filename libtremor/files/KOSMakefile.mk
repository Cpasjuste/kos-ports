TARGET = libtremor.a
OBJS = mdct.o dsp.o info.o misc.o floor1.o floor0.o vorbisfile.o res012.o \
       mapping0.o codebook.o framing.o bitwise.o floor_lookup.o main.o \
	   sndoggvorbis.o

KOS_CFLAGS += -DPACKAGE="libvorbisidec" -DVERSION="1.3.0" \
	-DHAVE_DLFCN_H=1 -I. -fsigned-char  -D_REENTRANT -ffast-math

include ${KOS_PORTS}/scripts/lib.mk
