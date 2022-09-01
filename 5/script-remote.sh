#!/bin/bash

username="user"
scriptname="check.sh"

ssh "${username}@192.168.10.1" "bash" < "$scriptname"
ssh "${username}@192.168.10.2" "bash" < "$scriptname"
ssh "${username}@192.168.10.3" "bash" < "$scriptname"