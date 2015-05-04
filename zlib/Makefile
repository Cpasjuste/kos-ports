# Port Metadata
PORTNAME = 			zlib
PORTVERSION = 		1.2.8

# No dependencies beyond the base system.
DEPENDENCIES =

# What files we need to download, and where from.
DOWNLOAD_SITE = 	http://zlib.net
DOWNLOAD_FILES = 	${PORTNAME}-${PORTVERSION}.tar.gz

TARGET =			libz.a
INSTALLED_HDRS =	zlib.h zconf.h

# KOS Distributed extras (to be copied into the build tree)
KOS_DISTFILES =		KOSMakefile.mk kos_zlib.c

include ${KOS_PORTS}/scripts/kos-ports.mk
