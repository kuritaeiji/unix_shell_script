#!/bin/bash

ipaddr="172.21.0.1"
count=5

ping -c "$count" "$ipaddr" > "ping.$$"

sed -nE 's/^.*time=(.+) ms/\1/p' "ping.$$" | awk '{sum += $1} END{print sum/NR}'

rm -f "ping.$$"