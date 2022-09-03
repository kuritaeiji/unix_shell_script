#!/bin/bash

csvfile="$1"

if [ ! -f "$csvfile" ]; then
    echo "usage: ${0##*/} <csvfile>" >&2
    exit 1
fi

filename=${csvfile%.*}

awk -F , 'BEGIN{sum = 0} {sum += $NF} END{print sum / $NR}' "$csvfile" > "${filename}.avg"