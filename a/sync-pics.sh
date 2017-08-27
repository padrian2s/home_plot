#!/bin/bash

t=0

while true; do
 echo "wait 5m..."
 sleep 5m
 ping -c 1 192.168.0.107 &>/dev/null
 if [ "$?" = 0 ]; then
    echo "is alive"
    isWorking = pgrep rsync
    if [ "$?" = 0]; then
       rsync /home/pi/
    fi
    echo $(date)  >>/home/a/sync-pics-alive.dat
 else
    echo $(date) "nothing to do..."
    sleep 1
 fi
