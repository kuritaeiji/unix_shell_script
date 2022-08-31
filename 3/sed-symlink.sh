#!/bin/bash

if [ ! -e "$1" ]; then
    echo "Error: no such file $1" >&2
    exit 1
elif [ -L "$1" ]; then
    sed -i.bak 's/hello/hi/g' "$( readlink "$1" )"
else
    sed -i.bak 's/hello/hi/g' "$1"
fi

# sed -i.bak --follow-symlinks 's/hello/hi/g' "$1"