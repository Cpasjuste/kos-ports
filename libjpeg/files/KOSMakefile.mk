TARGET = libjpeg.a

COMOBJECTS = jaricom.o jcomapi.o jutils.o jerror.o jmemmgr.o jmemnobs.o
CLIBOBJECTS= jcapimin.o jcapistd.o jcarith.o jctrans.o jcparam.o \
        jdatadst.o jcinit.o jcmaster.o jcmarker.o jcmainct.o jcprepct.o \
        jccoefct.o jccolor.o jcsample.o jchuff.o jcdctmgr.o jfdctfst.o \
        jfdctflt.o jfdctint.o
DLIBOBJECTS= jdapimin.o jdapistd.o jdarith.o jdtrans.o jdatasrc.o \
        jdmaster.o jdinput.o jdmarker.o jdhuff.o jdmainct.o \
        jdcoefct.o jdpostct.o jddctmgr.o jidctfst.o jidctflt.o \
        jidctint.o jdsample.o jdcolor.o jquant1.o jquant2.o jdmerge.o
KOSOBJECTS = kos_img.o kos_texture.o
OBJS = $(COMOBJECTS) $(CLIBOBJECTS) $(DLIBOBJECTS) $(KOSOBJECTS)

KOS_CFLAGS += -I.

defaultall: jconfig.h $(OBJS) subdirs linklib

# Force the configuration file to be generated.
jconfig.h: jconfig.txt
	cp $< $@

include ${KOS_PORTS}/scripts/lib.mk
