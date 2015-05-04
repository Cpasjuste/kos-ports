# Port Metadata
PORTNAME = 			libjpeg
PORTVERSION = 		9.1

# No dependencies beyond the base system.
DEPENDENCIES =

# What files we need to download, and where from.
DOWNLOAD_SITE = 	http://ijg.org/files
DOWNLOAD_FILES = 	jpegsrc.v9a.tar.gz

TARGET =			libjpeg.a
INSTALLED_HDRS =	jconfig.h jmorecfg.h jpeg.h jpeglib.h
HDR_INSTDIR =       jpeg
DISTFILE_DIR =      jpeg-9a

# KOS Distributed extras (to be copied into the build tree)
KOS_DISTFILES =		KOSMakefile.mk kos_img.c kos_texture.c jpeg.h

include ${KOS_PORTS}/scripts/kos-ports.mk
