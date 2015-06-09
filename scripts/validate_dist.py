#!/usr/bin/env python
# kos-ports ##version##
#
# scripts/validate_dist.py
# Copyright (C) 2015 Lawrence Sebald
#

import sys
import os
import hashlib

def calc_sha256(fn):
    h = hashlib.sha256()
    with open('dist/' + fn, 'rb') as f:
        buf = f.read(1024*1024)
        while len(buf) > 0:
            h.update(buf)
            buf = f.read(1024*1024)
        return h.hexdigest()
    return None

def file_size(fn):
    try:
        return os.path.getsize('dist/' + fn)
    except:
        return None

# Script entry point.
with open('distinfo', 'r') as f:
    lines = f.readlines()
    for l1, l2 in zip(lines[::2], lines[1::2]):
        # Remove newlines and any trailing whitespace...
        l1.rstrip()
        l2.rstrip()

        # Split each string into tokens and validate that they look sane.
        l1t = l1.split()
        l2t = l2.split()

        if l1t[0] != 'SHA256' or l1t[2] != '=' or l2t[0] != 'SIZE' or l2t[2] != '=' or l1t[1] != l2t[1]:
            sys.exit('Invalid distinfo')
        if not l1t[1].startswith('(') or not l1t[1].endswith(')'):
            sys.exit('Invalid distinfo')

        fn = l1t[1].lstrip('(').rstrip(')')

        # Validate that everything matches the distinfo for this file.
        size = file_size(fn)

        if size == None:
            sys.exit('File not found: %s' % (fn,))

        if size != int(l2t[3]):
            sys.exit('File "%s" is incorrect size (expected %d)' % (fn, int(l2t[3])))

        sha = calc_sha256(fn)

        if sha == None:
            sys.exit('File not found: %s' % (fn, ))

        if sha != l1t[3]:
            sys.exit('File "%s" is corrupt!' % (fn, ))

        print('File "%s" is ok.' % (fn, ))
sys.exit(0)
