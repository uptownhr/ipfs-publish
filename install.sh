#!/bin/sh

srcScript=ipfs-publish.sh
bin=ipfs-publish

# this script is currently brain dead.
# it merely tries two locations.
# in the future maybe use value of $PATH.

binpath=/usr/local/bin
if [ -d "$binpath" ]; then
    cp "$srcScript" "$binpath/$bin"
    echo "installed $binpath/$bin"
    exit 0
fi

binpath=/usr/bin
if [ -d "$binpath" ]; then
    cp "$srcScript" "$binpath/$bin"
    echo "installed $binpath/$bin"
    exit 0
fi
