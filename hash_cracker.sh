#!/bin/bash
HASH_TO_CRACK="5f4dcc3b5aa765d61d8327deb882cf99"
WORDLIST="passwords.txt"
while read word; do
    HASH=$(echo -n $word | md5sum | awk '{print $1}')
    if [[ $HASH == $HASH_TO_CRACK ]]; then
        echo "Password found: $word"
        break
    fi
done < $WORDLIST
