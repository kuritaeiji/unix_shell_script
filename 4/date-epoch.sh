#!/bin/bash

day1="2022/01/01 11:11:10"
day2="2022/04/04 11:11:11"

day1_epoch=$( date -d "$day1" '+%s' )
day2_epoch=$( date -d "$day2" '+%s' )

echo "day1($day1): $day1_epoch"
echo "day2($day2): $day2_epoch"

if [ "$day1_epoch" -gt "$day2_epoch" ]; then
    day_interval=$(( ("$day1_epoch" - "$day2_epoch") / 86400 ))
else
    day_interval=$(( ("$day2_epoch" - "$day1_epoch") / 86400 ))
fi

echo $day_interval