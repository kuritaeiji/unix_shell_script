#!/bin/bash

d_option=0

while getopts "d" opt
do
    case $opt in
        d)
            d_option=1
            ;;
        \?)
            exit 1
            ;;
    esac
done

shift $((OPTIND - 1))

filename="$1"

if [ ! -f "$filename" ]; then
    echo "usage: ${0##*/} <filename>" >&2
    exit 2
fi

if [ "$d_option" -eq 1 ]; then
    awk '{print $1}' "$filename" | sed -En 's/^([0-9]{3})-([0-9]{4})$/\1\2/p'
else
    awk '{print $1}' "$filename" | sed -En 's/^([0-9]{3})([0-9]{4})$/\1-\2/p'
fi