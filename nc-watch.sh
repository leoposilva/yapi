#!/bin/sh
#nc -l -p 10270 -e ./watch.sh
mkfifo ncwatch
nc -l -p 10270 < ncwatch | ./watch.sh > ncwatch 
