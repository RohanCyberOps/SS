#!/bin/bash
CHECKSUM_FILE="checksums.txt"
FILES_TO_MONITOR=("/etc/passwd" "/etc/shadow")
for file in "${FILES_TO_MONITOR[@]}"; do
    sha256sum $file >> $CHECKSUM_FILE
done
echo "Integrity check recorded. Run again to verify."
