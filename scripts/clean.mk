# kos-ports ##version##
#
# scripts/clean.mk
# Copyright (C) 2015 Lawrence Sebald
#

clean-dist:
	@echo "Cleaning up dist files ..."
	-@rm -rf dist

clean-build:
	@echo "Cleaning up build directories ..."
	-@rm -rf build
	-@rm -f build-stamp

clean: clean-build clean-dist
