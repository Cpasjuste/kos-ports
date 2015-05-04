# Port Metadata
PORTNAME = 			libparallax
PORTVERSION = 		2.0.0

# No dependencies beyond the base system.
DEPENDENCIES =

# What files we need to download, and where from.
GIT_REPOSITORY =    git://git.code.sf.net/p/cadcdev/libparallax

TARGET =			libparallax.a
INSTALLED_HDRS =	include/color.h include/context.h include/dr.h
INSTALLED_HDRS +=   include/font.h include/list.h include/matrix.h
INSTALLED_HDRS +=   include/prim.h include/sprite.h include/texture.h
HDR_INSTDIR =       plx

# KOS Distributed extras (to be copied into the build tree)
KOS_DISTFILES =		KOSMakefile.mk

include ${KOS_PORTS}/scripts/kos-ports.mk
