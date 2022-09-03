#!/bin/bash

tmpfile="tmpfile.$$"

if [ ! -f "$1" ]; then
    echo "usage ${0##*/} <filename>" >&2
    exit 1
fi

rev "$1" | sort | rev > "$tmpfile"

cat "$tmpfile"

rm -f "$tmpfile"