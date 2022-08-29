#!/bin/bash

uptimelog=uptime.log

: > "$uptimelog"

for _ in $(seq 6)
do
    uptime >> "$uptimelog"
    sleep 1
done