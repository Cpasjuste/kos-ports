# Port Metadata
PORTNAME =	GLdc
PORTVERSION =	1.0.0

MAINTAINER =	Cpasjuste <cpasjuste@gmail.com>
LICENSE =	KOS License
SHORT_DESC =	OpenGL (tm) like graphics library for KOS

# No dependencies beyond the base system.
DEPENDENCIES =

# What files we need to download, and where from.
GIT_REPOSITORY =	https://gitlab.com/simulant/GLdc.git
GIT_CHANGESET =	efc75db05c2565d45bcf0b5e87a0a907ac7d0e87

TARGET =		libGLdc.a
INSTALLED_HDRS =	include/GL/gl.h include/GL/glext.h include/GL/glu.h include/GL/glkos.h
HDR_COMDIR =		GL

# KOS Distributed extras (to be copied into the build tree)
KOS_DISTFILES =	KOSMakefile.mk

include ${KOS_PORTS}/scripts/kos-ports.mk
