#!/bin/bash

ipaddr="93.184.216.34"
faillog="fail-port.log"

for port in 80 2222 8080
do
    nc -w 5 -z "$ipaddr" "$port"
    if [ "$?" -ne 0 ]; then
        echo "failed at port $port" >> "$faillog"
    fi
done