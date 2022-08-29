#!/bin/bash

prog=${0##*/}

if [ $# -ne 1 ]; then
    echo "Usage: $prog <string>" 1>&2
    exit 1
fi

echo "start: $prog"
echo "$1"
echo "end: $prog"