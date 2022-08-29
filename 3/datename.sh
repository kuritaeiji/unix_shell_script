#!/bin/bash

config="myapp.conf"

back_filename="${config}.$(date '+%Y%m%d')"

if [ -e "$back_filename" ]; then
    back_filename="${config}.$(date '+%Y%m%d%M.%S')"
fi

cp -v "$config" "$back_filename"