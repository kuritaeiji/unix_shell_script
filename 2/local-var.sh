#!/bin/bash

dir=/var/tmp

ls_home()
{
    local dir
    dir=~/$1
    ls "$dir"
    echo "directory: $dir"
}

ls_home 1

echo "directory: $dir"
ls "$dir"