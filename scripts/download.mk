# kos-ports ##version##
#
# scripts/download.mk
# Copyright (C) 2015 Lawrence Sebald
#

fetch:
	@if [ ! -d "dist" ] ; then \
		mkdir dist ; \
	fi

	@cd dist ; \
	for _file in ${DOWNLOAD_FILES}; do \
		if [ ! -f "$$_file" ] ; then \
			echo "Fetching $$_file from ${DOWNLOAD_SITE} ..." ; \
			file="${DOWNLOAD_SITE}/$$_file" ; \
			${FETCH_CMD} $$file ; \
		fi ; \
	done

	@if [ -z "${DOWNLOAD_FILES}" ] ; then \
		cd dist ; \
		if [ -n "${GIT_REPOSITORY}" ] ; then \
			if [ ! -d "${PORTNAME}-${PORTVERSION}" ] ; then \
				echo "Fetching ${PORTNAME} from ${GIT_REPOSITORY} ..." ; \
				git clone ${GIT_REPOSITORY} ${PORTNAME}-${PORTVERSION} ; \
			else \
				echo "Updating ${PORTNAME} from ${GIT_REPOSITORY} ..." ; \
				cd ${PORTNAME}-${PORTVERSION} ; \
				git pull ; \
			fi ; \
		elif [ -n "${SVN_REPOSITORY}" ] ; then \
			if [ ! -d "${PORTNAME}-${PORTVERSION}" ] ; then \
				echo "Fetching ${PORTNAME} from ${SVN_REPOSITORY} ..." ; \
				if [ -n "${SVN_REVISION}" ] ; then \
					svn checkout ${SVN_REPOSITORY} -r ${SVN_REVISION} ${PORTNAME}-${PORTVERSION} ; \
				else \
					svn checkout ${SVN_REPOSITORY} ${PORTNAME}-${PORTVERSION} ; \
				fi ; \
			else \
				echo "Updating ${PORTNAME} from ${SVN_REPOSITORY} ..." ; \
				cd ${PORTNAME}-${PORTVERSION} ; \
				if [ -n "${SVN_REVISION}" ] ; then \
					svn update -r "${SVN_REVISION}" ; \
				else \
					svn update ; \
				fi ; \
			fi ; \
		fi ; \
	fi
