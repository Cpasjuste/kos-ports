TARGET = libdcplib.a
OBJS = ulError.o sg.o fnt.o fntTXF.o sgd.o sgIsect.o
KOS_CFLAGS += -Iinclude

include ${KOS_PORTS}/scripts/lib.mk
