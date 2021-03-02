# Port Metadata
PORTNAME = 			GLdc
PORTVERSION = 		1.0.0

MAINTAINER =        Cpasjuste <cpasjuste@gmail.com>
LICENSE =           KOS License
SHORT_DESC =        OpenGL (tm) like graphics library for KOS

# No dependencies beyond the base system.
DEPENDENCIES =

# What files we need to download, and where from.
GIT_REPOSITORY =    https://gitlab.com/simulant/GLdc.git
GIT_CHANGESET = 	8c187f67de584a52e3bd351abd217a1a5cdfef35

TARGET =			libGLdc.a
INSTALLED_HDRS =	include/gl.h include/glext.h include/glu.h include/glkos.h
HDR_COMDIR =		GL

# KOS Distributed extras (to be copied into the build tree)
KOS_DISTFILES =		KOSMakefile.mk

include ${KOS_PORTS}/scripts/kos-ports.mk
