#!/bin/bash

ipaddr="192.168.10.10"

hostname

ping -c 1 "$ipaddr" > /dev/null 2>&1

if [ "$?" -eq 0 ]; then
    echo "Ping to $ipaddr [OK]"
else
    echo "Ping to $ipaddr [NG]"
fi