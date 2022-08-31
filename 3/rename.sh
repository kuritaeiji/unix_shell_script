#!/bin/bash

for filename in *
do
    case $filename in
        *.html | *.htm)
            headname=${filename%.*}
            mv "$filename" "${headname}.txt"
            ;;
    esac
done