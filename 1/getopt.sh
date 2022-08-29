#!/bin/bash

a_flag=false
separator=""

while getopts "ap:" option
do
    case $option in
        a)
            a_flag=true
            ;;
        p)
            separator=$OPTARG
            ;;
        \?)
            echo "USAGE: getopt.sh [-a] [-p separator] target_dir" 1>&2
            ;;
    esac
done

shift $((OPTIND - 1))
path=$1

if [ $a_flag = true ]; then
    ls -a "$path"
else
    ls "$path"
fi

if [ -n "$separator" ]; then
    echo "$separator"
fi