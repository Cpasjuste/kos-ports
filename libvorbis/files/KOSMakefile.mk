TARGET = libvorbis.a
OBJS = lib/mdct.o lib/smallft.o lib/block.o lib/envelope.o lib/window.o \
       lib/lsp.o lib/lpc.o lib/analysis.o lib/synthesis.o lib/psy.o lib/info.o \
       lib/floor1.o lib/floor0.o lib/res0.o lib/mapping0.o lib/registry.o \
	   lib/codebook.o lib/sharedbook.o lib/lookup.o lib/bitrate.o \
	   lib/vorbisfile.o

KOS_CFLAGS += -Iinclude -fsigned-char -ffast-math

include ${KOS_PORTS}/scripts/lib.mk
