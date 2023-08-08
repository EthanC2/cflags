#!/bin/bash
set -e

DEST=/usr/share/cflags

if [[ $EUID != 0 ]]; then
    >&2 echo "fatal error: requires root permissions. rerun with 'sudo -E'"
    exit 1
fi

if [[ "$HOME" == "/root" ]] && [[ "$1" != "-f" ]]; then
    >&2 echo "\ncareful! this script requires root permissions, but also needs to preserve your \$HOME variable."
    >&2 echo "rerun 'sudo -E' or 'sudo --preserve-env' to grant root permissions while still using your environment!"
    >&2 echo "if you *really* want to install in the root directory, pass the '-f' flag as the first argument"
    exit 2
fi

mkdir $DEST
cp ./collections/* $DEST
echo "CFLAGS='$DEST'" >> "$HOME/.profile"
