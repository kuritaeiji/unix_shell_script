#!/bin/bash

dir1="${HOME}/1"
dir2="${HOME}/2"

(
    cd "$dir1" || exit 1
    find . -maxdepth 1 -type f | sort > "tmpfile1.lst"
)

(
    cd "$dir2" || exit 1
    find . -maxdepth 1 -type f | sort > "tmpfile2.lst"
)

comm  "${dir1}/tmpfile1.lst" "${dir2}/tmpfile2.lst"