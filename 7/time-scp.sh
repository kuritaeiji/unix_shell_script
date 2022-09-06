#!/bin/bash

username="user1"
hostname="192.168.10.1"
path="/home/kuritaeiji/app"
tmpfile="tmpfile.$$"

(time -p scp -C "$1" "${username}@${hostname}:${path}") 2> "$tmpfile"

realtime=$(awk '/^real/ {print $2}' "$tmpfile")
usertime=$(awk '/^user/ {print $2}' "$tmpfile")
systime=$(awk '/^sys/ {print $2}' "$tmpfile")

cpu_percentage=$(echo "scale=2; 100 * ($usertime + $systime) / ${realtime}" | bc)

echo "cpu使用率: $cpu_percentage"

remove_file()
{
    rm -f "$tmpfile"
}

trap 'remove_file' EXIT
