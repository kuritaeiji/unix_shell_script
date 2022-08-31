#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <filename>" >&2
    exit 1
fi

for filename in $(ls -aF "$1")
do
    case $filename in
        .*/)
            echo "dot directory: $filename"
            ;;
        .*)
            echo "dot file: $filename"
            ;;
    esac
done