#!/bin/sh
# kos-ports ##version##
#
# utils/build-all.mk
# Copyright (C) 2015 Lawrence Sebald
#

cd ${KOS_PORTS}

for _dir in ${KOS_PORTS}/* ; do
    if [ -d "${_dir}" ] ; then
        if [ -f "${_dir}/Makefile" ] ; then
            echo "Checking if ${_dir} is installed and up-to-date..."
            ${KOS_MAKE} -C "${_dir}" version-check > /dev/null 2>&1
            rv=$?
            if [ "$rv" -eq 0 ] ; then
                echo "Building ${_dir}..."
                ${KOS_MAKE} -C "${_dir}" install clean
                rv=$?
                echo $rv
                if [ "$rv" -ne 0 ] ; then
                    echo "Error building ${_dir}. Bailing out."
                    exit 1
                fi
            else
                echo "${_dir} is already installed and up-to-date. Skipping."
            fi
        fi
    fi
done
