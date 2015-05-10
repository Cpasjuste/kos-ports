# kos-ports ##version##
#
# scripts/setup.mk
# Copyright (C) 2015 Lawrence Sebald
#

setup-check:
	@cd ${KOS_PORTS} ; \
	if [ ! -d "lib" ] ; then \
		mkdir lib ; \
	fi ; \
	if [ ! -d "lib/.kos-ports" ] ; then \
		mkdir lib/.kos-ports ; \
		echo "Do not modify any of the files in this directory." >> lib/.kos-ports/README ; \
		echo "" >> lib/.kos-ports/README ; \
		echo "All files in this directory are for record-keeping purposes and maintain the" >> lib/.kos-ports/README ; \
		echo "state of the ports collection. Modifying or deleting files in this directory" >> lib/.kos-ports/README ; \
		echo "will probably break the entire ports collection, so don't do it." >> lib/.kos-ports/README ;\
	fi ; \
	if [ ! -d "include" ] ; then \
		mkdir include ; \
	fi ; \
	if [ ! -d "examples" ] ; then \
		mkdir examples ; \
	fi || exit 1
