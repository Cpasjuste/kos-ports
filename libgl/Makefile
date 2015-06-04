# Port Metadata
PORTNAME = 			libgl
PORTVERSION = 		2.0.0

MAINTAINER =        Josh Pearson <ph3nom@users.sourceforge.net>
LICENSE =           KOS License
SHORT_DESC =        OpenGL (tm) like graphics library for KOS

# No dependencies beyond the base system.
DEPENDENCIES =

# What files we need to download, and where from.
GIT_REPOSITORY =    git://git.code.sf.net/p/cadcdev/libgl

TARGET =			libgl.a
INSTALLED_HDRS =	include/gl.h include/glext.h include/glu.h include/glut.h
HDR_INSTDIR =       GL

# KOS Distributed extras (to be copied into the build tree)
KOS_DISTFILES =		KOSMakefile.mk

include ${KOS_PORTS}/scripts/kos-ports.mk
