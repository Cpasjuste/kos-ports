# kos-ports ##version##
#
# scripts/depends.mk
# Copyright (C) 2015 Lawrence Sebald
#

DEPENDENCIES ?=

depends-check:
ifeq (${BUILD_DEPENDS},false)
	@for _dep in ${DEPENDENCIES}; do \
		if [ ! -f "${KOS_PORTS}/lib/.kos-ports/$$_dep" ] ; then \
			echo "${PORTNAME} requires $$_dep to be installed. Please install the $$_dep port." ; \
			echo "Exiting." ; \
			exit 1 ; \
		fi ; \
	done
else ifeq (${BUILD_DEPENDS},true)
	@for _dep in ${DEPENDENCIES}; do \
		if [ ! -f "${KOS_PORTS}/lib/.kos-ports/$$_dep" ] ; then \
			echo "${PORTNAME} requires $$_dep to be installed. Building..." ; \
			${MAKE} -C "${KOS_PORTS}/$$_dep" install clean || exit 1 ; \
		fi ; \
	done
	@echo "Finished processing dependencies for ${PORTNAME}."
else
	@echo "BUILD_DEPENDS is not set in config.mk. Please correct your configuration."
	exit 1
endif
