# kos-ports ##version##
#
# scripts/validate.mk
# Copyright (C) 2015 Lawrence Sebald
#

validate-dist:
ifeq (${VALIDATE_DISTFILES},true)
	@if [ -f "distinfo" ] ; then \
		${KOS_PORTS}/scripts/validate_dist.py || exit 1 ; \
	fi
endif
