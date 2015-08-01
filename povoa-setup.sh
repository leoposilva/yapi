#!/bin/sh
sysctl -w net.ipv4.ip_forward=1
iptables -t nat -A POSTROUTING -o wlan0 -j MASQUERADE
iptables -A FORWARD -i eth0 -j ACCEPT

FON_USERNAME='leoposilva@gmail.com'
FON_PASSWORD='ZVgf3f4wz_Vc'
export FON_USERNAME FON_PASSWORD
