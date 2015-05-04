# kos-ports ##version##
#
# scripts/unpack.mk
# Copyright (C) 2015 Lawrence Sebald
#

unpack: fetch
	@if [ -d "build" ] ; then \
		rm -rf build ; \
	fi

	@mkdir build

	@if [ -n "${DOWNLOAD_FILES}" ]; then \
		cd build ; \
		for _file in "${DOWNLOAD_FILES}"; do \
			echo "Unpacking $$_file ..." ; \
			${UNPACK_CMD} "../dist/$$_file" ; \
		done ; \
	else \
		cd build ; \
		echo "Copying SCM checkout of ${PORTNAME} ..." ; \
		cp -r ../dist/${PORTNAME}-${PORTVERSION} . ; \
	fi

copy-kos-files:
	@echo "Copying KOS files..."
	@cd build ; \
	if [ -z "${DISTFILE_DIR}" ] ; then \
		cd ${PORTNAME}-${PORTVERSION} ; \
	else \
		cd ${DISTFILE_DIR} ; \
	fi ; \
	for _file in ${KOS_DISTFILES}; do \
		cp "../../files/$$_file" . ; \
	done
