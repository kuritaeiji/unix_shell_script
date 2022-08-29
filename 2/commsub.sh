#!/bin/bash

err_count=$(grep -c "ERROR" "/var/log/myapp/$(hostname).log")
echo "Error coounts: $err_count"