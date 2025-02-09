#!/bin/bash
find /your/directory -type f -exec md5sum {} + | sort | uniq -w32 -d | awk '{print $2}' | xargs rm -v
