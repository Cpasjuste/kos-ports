# kos-ports ##version##
#
# scripts/uninstall.mk
# Copyright (C) 2015 Lawrence Sebald
#

uninstall:
	@if [ -f ${KOS_PORTS}/lib/.kos-ports/${PORTNAME} ] ; then \
		echo "Uninstalling ${PORTNAME}..." ; \
		rm -f ${KOS_PORTS}/lib/.kos-ports/${PORTNAME} ; \
		rm -f ${KOS_PORTS}/lib/${TARGET} ; \
		if [ -n "${HDR_INSTDIR}" ] ; then \
			rm -f ${KOS_PORTS}/include/${HDR_INSTDIR} ; \
		else \
			rm -f ${KOS_PORTS}/include/${PORTNAME} ; \
		fi ; \
		rm -fr inst ; \
		echo "Uninstalled ${PORTNAME}." ; \
		echo "WARNING: Dependency checking not done, any dependent ports will be broken." ; \
	else \
		echo "${PORTNAME} does not appear to be installed." ; \
		exit 1 ; \
	fi
