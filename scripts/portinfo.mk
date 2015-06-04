# kos-ports ##version##
#
# scripts/portinfo.mk
# Copyright (C) 2015 Lawrence Sebald
#

MAINTAINER ?=
LICENSE ?=
SHORT_DESC ?=

portinfo:
	@echo "$(PORTNAME) $(PORTVERSION)"
ifdef SHORT_DESC
	@echo "$(SHORT_DESC)"
endif
	@echo "---------------------------------------------------"
ifdef MAINTAINER
	@echo "KOS Port maintainer: $(MAINTAINER)"
endif
ifdef LICENSE
	@echo "License: $(LICENSE)"
else
	@echo "License: Unknown"
endif
	@if [ -f "pkg-descr" ] ; then \
		echo "" ; \
		cat pkg-descr ; \
	fi
