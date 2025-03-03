#!/bin/bash

while true; do

value=`cat /sys/bus/w1/devices/28-00000a54e0f2/w1_slave | grep t= | awk '{print $10 }' | cut -d= -f2| sed 's/\(..\)\(...\)/\1.\2/'`

rrdupdate /home/klumppmoritza22/temperatur1.rrd N:$value
echo $value

sleep 5

done
