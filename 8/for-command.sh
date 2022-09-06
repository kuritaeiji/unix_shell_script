#!/bin/bash

subnet="$1"

if [ -z "$subnet" ]; then
    echo "usage ${0##*/} <subnet>" >&2
    exit 1
fi

# while read -r num
# do
#     ipaddress="${subnet}.${num}"
#     ping -w 1 -c 1 "$ipaddress" > /dev/null 2>&1
#     if [ "$?" -eq 0 ]; then
#         echo "[success] ping -> $ipaddress"
#     else
#         echo "[fail] ping -> $ipaddress"
#     fi
# done < "address.lst"

for ipaddress in $(sed -E "s/IP_SUBNET/${subnet}/" address.lst)
do
    ping -c 1 -w 1 "$ipaddress" > /dev/null 2>&1
    if [ "$?" -eq 0 ]; then
        echo "[success] ping -> $ipaddress"
    else
        echo "[fail] ping -> $ipaddress"
    fi
done
