#!/bin/bash

ipaddr="172.21.0.1"

macaddr=$( arp | awk "/$ipaddr/ {print \$3}" )

if [ -n "$macaddr" ]; then
    echo "$ipaddr -> $macaddr"
else
    echo "$ipaddr はARPキャッシュにありません"
fi