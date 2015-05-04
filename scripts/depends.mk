# kos-ports ##version##
#
# scripts/depends.mk
# Copyright (C) 2015 Lawrence Sebald
#

DEPENDENCIES ?=

depends-check:
	@for _dep in ${DEPENDENCIES}; do \
		if [ ! -f "${KOS_PORTS}/lib/.kos-ports/$$_dep" ] ; then \
			echo "${PORTNAME} requires $$_dep to be installed. Please install the $$_dep port." ; \
			echo "Exiting." ; \
			exit 1 ; \
		fi ; \
	done
