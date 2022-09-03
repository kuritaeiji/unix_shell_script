#!/bin/bash

filename="$1"

if [ ! -f "$filename" ]; then
    echo "usage: ${0##*/} <filename>" >&2
    exit 1
fi

awk '{print $4,$3,$1}' "$filename" > "${filename}.lst"