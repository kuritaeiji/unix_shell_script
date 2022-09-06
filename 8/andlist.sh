#!/bin/bash

url_path="http://www.example.org"
filename="sample.dat"

remove_file()
{
    rm -f "$filename"
}

trap 'remove_file' EXIT

curl -sO "${url_path}/${filename}" && md5sum "$filename" | awk '{print $1}'
