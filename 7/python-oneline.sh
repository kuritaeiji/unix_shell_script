#!/bin/bash

ipaddr="192.168.10.1"
port="80"

wait_time=$(./rand.py)
echo "$wait_time"

nc -w 5 -zv "$ipaddr" "$port"
sleep "$wait_time"
nc -w 5 -zv "$ipaddr" "$port"
