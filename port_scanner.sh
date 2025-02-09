#!/bin/bash
IP=$1
PORTS=(21 22 25 80 443 8080)
for port in "${PORTS[@]}"; do
    (echo > /dev/tcp/$IP/$port) &>/dev/null && echo "Port $port is open on $IP" || echo "Port $port is closed"
done
