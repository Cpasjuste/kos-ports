# Port Metadata
PORTNAME = 			libtremor
PORTVERSION = 		19480

# No dependencies beyond the base system.
DEPENDENCIES =

# What files we need to download, and where from.
SVN_REPOSITORY =    http://svn.xiph.org/branches/lowmem-branch/Tremor/
SVN_REVISION =      19480

TARGET =			libtremor.a
INSTALLED_HDRS =	ivorbiscodec.h ivorbisfile.h sndoggvorbis.h
HDR_INSTDIR =       vorbis

# KOS Distributed extras (to be copied into the build tree)
KOS_DISTFILES =		KOSMakefile.mk sndoggvorbis.h sndoggvorbis.c main.c \
                    sndvorbisfile.h

include ${KOS_PORTS}/scripts/kos-ports.mk
