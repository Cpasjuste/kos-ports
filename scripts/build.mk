# kos-ports ##version##
#
# scripts/build.mk
# Copyright (C) 2015 Lawrence Sebald
#

KOS_MAKEFILE ?= KOSMakefile.mk

build-stamp: fetch unpack copy-kos-files
	@if [ -z "${DISTFILE_DIR}" ] ; then \
		$(MAKE) -C build/${PORTNAME}-${PORTVERSION} -f ${KOS_MAKEFILE} ; \
	else \
		$(MAKE) -C build/${DISTFILE_DIR} -f ${KOS_MAKEFILE} ; \
	fi
	touch build-stamp

install: setup-check version-check depends-check force-install

force-install: build-stamp
	@if [ ! -d "inst" ] ; then \
		mkdir inst ; \
	fi

	@cd inst ; \
	if [ ! -d "lib" ] ; then \
		mkdir lib ; \
	fi ; \
	if [ ! -d "include" ] ; then \
		mkdir include ; \
	fi

	@echo "Installing..."
	@cd build ; \
	if [ -z "${DISTFILE_DIR}" ] ; then \
		cd ${PORTNAME}-${PORTVERSION} ; \
	else \
		cd ${DISTFILE_DIR} ; \
	fi ;\
	cp ${TARGET} ../../inst/lib ; \
	for _file in ${INSTALLED_HDRS}; do \
		cp $$_file ../../inst/include ; \
	done ; \
	if [ -n "${HDR_DIRECTORY}" ] ; then \
		cp -r ${HDR_DIRECTORY}/ ../../inst/include ; \
	fi

	@if [ -n "${HDR_INSTDIR}" ] ; then \
		rm -f ${KOS_PORTS}/include/${HDR_INSTDIR} ; \
		ln -s ${KOS_PORTS}/${PORTNAME}/inst/include ${KOS_PORTS}/include/${HDR_INSTDIR} ; \
	else \
		rm -f ${KOS_PORTS}/include/${PORTNAME} ; \
		ln -s ${KOS_PORTS}/${PORTNAME}/inst/include ${KOS_PORTS}/include/${PORTNAME} ; \
	fi

	@rm -f ${KOS_PORTS}/lib/${TARGET}
	@ln -s ${KOS_PORTS}/${PORTNAME}/inst/lib/${TARGET} ${KOS_PORTS}/lib/${TARGET}

	@echo "Marking ${PORTNAME} ${PORTVERSION} as installed."
	@echo "${PORTVERSION}" > "${KOS_PORTS}/lib/.kos-ports/${PORTNAME}"
