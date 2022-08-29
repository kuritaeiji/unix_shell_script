#!/bin/bash

logdir=/var/log/myapp

find "$logdir" -name "*.log" -mtime -4 -mtime +1 -print