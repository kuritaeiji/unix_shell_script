#!/bin/bash

while read -r ipaddr
do
    fqdn=$( host "$ipaddr" )

    if [ "$?" -eq 0 ]; then
        echo -n "$ipaddr"
        echo "$fqdn" | awk '{print $NF}' | sed -E 's/\.$//'
    else
        echo "$ipaddr,"
    fi
done < "$1"