# Port Metadata
PORTNAME =	freetype
PORTVERSION =	2.10.1

MAINTAINER =	Cpasjuste <cpasjuste@gmail.com>
LICENSE =	3-clause BSD (see COPYING in the source distribution)
SHORT_DESC =	Freetype font rendering library

# This port uses the autotools scripts that are included with the distfiles.
PORT_AUTOTOOLS =	1

# No dependencies beyond the base system.
DEPENDENCIES =	zlib

# What files we need to download, and where from.
DOWNLOAD_SITE =	http://ftp.igh.cnrs.fr/pub/nongnu/freetype
DOWNLOAD_FILES =	${PORTNAME}-${PORTVERSION}.tar.gz

TARGET =		libfreetype.a
HDR_DIRECTORY =	include
HDR_INSTDIR =		freetype

# Autotools setup work.
CONFIGURE_ARGS = --host=sh-elf --prefix=$(KOS_PORTS)/freetype/inst --disable-shared --with-harfbuzz=no --with-png=no \
			CFLAGS="${KOS_CFLAGS} -I${KOS_PORTS}/include/zlib" \
			LDFLAGS="${KOS_LDFLAGS}" LIBS="${KOS_LIBS}" CC=${KOS_CC} AR=${KOS_AR} RUNLIB=${KOS_RUNLIB}
CONFIGURE_DEFS =

# KOS Distributed extras (to be copied into the build tree)
KOS_DISTFILES =

# Add a pre-install target to get the built library where we expect it.
PREINSTALL = freetype_preinstall

freetype_preinstall:
	cp build/${PORTNAME}-${PORTVERSION}/objs/.libs/${TARGET} build/${PORTNAME}-${PORTVERSION}

include ${KOS_PORTS}/scripts/kos-ports.mk
