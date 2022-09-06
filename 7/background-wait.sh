#!/bin/bash

ping -c 6 "192.168.10.1" > host1.log &
ping -c 6 "192.168.10.2" > host2.log &
ping -c 6 "192.168.10.3" > host3.log &

wait

cat host1.log host2.log host3.log
