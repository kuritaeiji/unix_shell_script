#!/bin/bash

datafile="/home/user1/myapp/sample.dat"

if [ -f "$datafile" ]; then
    # ./myapp "$datafile"
    :
else
    echo "データファイルが存在しません $datafile" >&2
    exit 1 
fi
