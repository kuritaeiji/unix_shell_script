#!/bin/bash

if [ ! -f "$1" ]; then
    echo "usage: ${0##*/} <filename>" >&2
    exit 1
fi

headline=$( head -n 1 "$1" )

case $headline in
    *bash*)
        mv "$1" "$1.sh"
        ;;
    *python3*)
        mv "$1" "$1.py"
        ;;
    *)
        echo "unkown type: $1"
esac