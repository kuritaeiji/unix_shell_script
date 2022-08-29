#!/bin/bash

timestamp="201311100100.00"

touch -t "$timestamp" app1.log
touch -c -t "$timestamp" lock.tmp