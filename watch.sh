#!/bin/sh
watch -n 2 "ifconfig eth0; ifconfig wlan0 ; iwconfig wlan0 ; route -n ; echo ; ping -n -c 1 -W 1 8.8.8.8 | grep from ; echo ; tail -n 5 /var/log/syslog | grep -v kernel"
