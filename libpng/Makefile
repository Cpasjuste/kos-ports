# Port Metadata
PORTNAME = 			libpng
PORTVERSION = 		1.6.17

DEPENDENCIES =      zlib

# What files we need to download, and where from.
DOWNLOAD_SITE = 	ftp://ftp.simplesystems.org/pub/libpng/png/src/libpng16
DOWNLOAD_FILES = 	${PORTNAME}-${PORTVERSION}.tar.gz

TARGET =			libpng.a
INSTALLED_HDRS =	png.h pngconf.h readpng.h kospng.h pnglibconf.h
HDR_INSTDIR =       png

# KOS Distributed extras (to be copied into the build tree)
KOS_DISTFILES =		KOSMakefile.mk kos_texture.c kos_img.c readpng.h kospng.h \
                    readpng.c writepng.c

include ${KOS_PORTS}/scripts/kos-ports.mk
