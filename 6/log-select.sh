#!/bin/bash

logfile="access.log"

if [ ! -f "$logfile" ]; then
    echo "usage: ${0##*/} <filename>" >&2
    exit 1
fi

awk '$($NF - 1) == 404 {print $($NF - 3)}' "$logfile"