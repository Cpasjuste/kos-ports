# Port Metadata
PORTNAME = 			libvorbis
PORTVERSION = 		1.3.5

DEPENDENCIES =      libogg

# What files we need to download, and where from.
DOWNLOAD_SITE = 	http://downloads.xiph.org/releases/vorbis
DOWNLOAD_FILES = 	${PORTNAME}-${PORTVERSION}.tar.gz

TARGET =			libvorbis.a
INSTALLED_HDRS =	include/vorbis/codec.h include/vorbis/vorbisenc.h \
					include/vorbis/vorbisfile.h
HDR_INSTDIR =       vorbis

# KOS Distributed extras (to be copied into the build tree)
KOS_DISTFILES =		KOSMakefile.mk

include ${KOS_PORTS}/scripts/kos-ports.mk
