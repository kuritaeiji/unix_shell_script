#!/bin/bash

if [ -z "$1" ]; then
    echo "usage: ${0##*/} <ipaddress>" >&2
    exit 1
fi

case $1 in
    192.168.10.*|192.168.2.*)
        ping -c 1 "$1" > /dev/null 2>&1
        if [ "$?" -eq 0 ]; then
            echo "ping to $1: [ok]"
        else
            echo "ping to $1: [ng]"
        fi
        ;;
    *)
        echo "$1 is not test target" >&2
        exit 2
        ;;
esac