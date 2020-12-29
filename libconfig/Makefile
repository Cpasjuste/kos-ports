# Port Metadata

PORTNAME = 			libconfig
PORTVERSION = 		1.7.2

MAINTAINER =        Cpasjuste <cpasjuste@gmail.com>
LICENSE =           3-clause BSD (see COPYING in the source distribution)
SHORT_DESC =        Libconfig is a simple library for processing structured configuration files

# This port uses the autotools scripts that are included with the distfiles.
PORT_AUTOTOOLS =	1

# What files we need to download, and where from.
GIT_REPOSITORY =    https://github.com/Cpasjuste/libconfig-dc.git

TARGET =			libconfig.a
INSTALLED_HDRS =	lib/libconfig.h lib/libconfig.h++
HDR_INSTDIR =

# Autotools setup work.
CONFIGURE_ARGS = --disable-shared --disable-examples --disable-cxx
CONFIGURE_DEFS =

# KOS Distributed extras (to be copied into the build tree)
KOS_DISTFILES =

# Add a pre-install target to get the built library where we expect it.
PREINSTALL = libconfig_preinstall

libconfig_preinstall:
	cp build/${PORTNAME}-${PORTVERSION}/lib/.libs/${TARGET} build/${PORTNAME}-${PORTVERSION}
	#cp build/${PORTNAME}-${PORTVERSION}/lib/.libs/libconfig++.a build/${PORTNAME}-${PORTVERSION}

include ${KOS_PORTS}/scripts/kos-ports.mk
