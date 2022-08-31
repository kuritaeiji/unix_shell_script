#!/bin/bash

year=$( date '+%Y' )

mod4=$(( year % 4 ))
mod100=$(( year % 100 ))
mod400=$(( year % 400  ))

if [ "$mod4" -eq 0 ] && [ "$mod100" -ne 0 ] || [ "$mod400" -eq 0 ]; then
    echo "$year: leap year"
else
    echo "$year: not leap year"
fi