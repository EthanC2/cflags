#!/bin/bash
set -e

DEST=/usr/share/cflags

if [ $EUID -ne 0 ]; then
    >&2 echo "fatal error: requires root permissions"
    exit 1
fi

mkdir $DEST
cp ./collections/* $DEST
