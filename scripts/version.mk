# kos-ports ##version##
#
# scripts/version.mk
# Copyright (C) 2015 Lawrence Sebald
#

version-check:
	@if [ -f ${KOS_PORTS}/lib/.kos-ports/${PORTNAME} ] ; then \
		a=`cat ${KOS_PORTS}/lib/.kos-ports/${PORTNAME}` ; \
		${KOS_PORTS}/scripts/vercmp.sh $$a ${PORTVERSION} ; \
		res=$$? ; \
		if [ "$$res" -eq "0" ] ; then \
			echo "${PORTNAME} is already installed and is latest version. Exiting." ; \
			exit 1 ; \
		elif [ "$$res" -eq "1" ] ; then \
			echo "${PORTNAME} is already installed and is newer than latest version!" ; \
			echo "Ports collection out of sync. Please update! Exiting." ; \
			exit 255 ; \
		else \
			echo "${PORTNAME} $$a installed. Update to ${PORTVERSION}." ; \
		fi ; \
	else \
		echo "${PORTNAME} is not currently installed." ; \
	fi
