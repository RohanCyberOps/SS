#!/bin/bash
echo "CPU Usage:"
top -bn1 | grep "Cpu(s)" | awk '{print "Usage: " $2 + $4 "%"}'
echo "RAM Usage:"
free -h | grep "Mem" | awk '{print "Used: " $3 " / " $2}'
echo "Disk Usage:"
df -h | grep "/dev/sd"
echo "Uptime:"
uptime -p
