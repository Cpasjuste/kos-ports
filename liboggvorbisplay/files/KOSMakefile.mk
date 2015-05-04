TARGET = liboggvorbisplay.a
OBJS = liboggvorbisplay/main.o liboggvorbisplay/sndoggvorbis.o
KOS_CFLAGS += -Iinclude -Iliboggvorbisplay

include ${KOS_PORTS}/scripts/lib.mk
