#!/bin/bash

fqdn="www.google.com"

host "$fqdn" | \
awk '/has address/ {print $NF,"IPv4"} \
/has IPv6 address/ {print $NF,"IPv6"}'