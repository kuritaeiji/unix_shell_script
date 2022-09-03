#!/bin/bash

csvfile="data.csv"
id_list="$1"

if [ ! -f "$csvfile" ]; then
    echo "csv file can't be found" >&2
    exit 1
fi

if [ ! -f "$id_list" ]; then
    echo "usage: ${0##*/} <filename>" >&2
    exit 1
fi

while IFS=, read -r id name score
do
    grep -qx "$id" "$id_list"
    if [ "$?" -eq 0 ]; then
        echo "$name"
    fi
done < "$csvfile"

grep -f "$id_list" "$csvfile" | awk -F , '{print $2}'