# Port Metadata
PORTNAME = 			libogg
PORTVERSION = 		1.3.2

MAINTAINER =        Lawrence Sebald <ljsebald@users.sourceforge.net>
LICENSE =           3-clause BSD (see COPYING in the source distribution)
SHORT_DESC =        Multimedia container format access library

# No dependencies beyond the base system.
DEPENDENCIES =

# What files we need to download, and where from.
DOWNLOAD_SITE = 	http://downloads.xiph.org/releases/ogg
DOWNLOAD_FILES = 	${PORTNAME}-${PORTVERSION}.tar.gz

TARGET =			libogg.a
INSTALLED_HDRS =	include/ogg/ogg.h include/ogg/os_types.h \
					include/ogg/config_types.h
HDR_INSTDIR =       ogg

# KOS Distributed extras (to be copied into the build tree)
KOS_DISTFILES =		KOSMakefile.mk

include ${KOS_PORTS}/scripts/kos-ports.mk
