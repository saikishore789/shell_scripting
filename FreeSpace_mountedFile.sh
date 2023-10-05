#!/bin/bash

# Check the given file-system is mounted or not, if  mounted print free-space available in it

for i in "$@"; do
    findmnt -T $i
    if [ $? -eq 0 ]; then
        free_space=$(df -h | grep $i | awk -F " " '{print $2}')
        echo "free space for $i: $free_space"
    else 
        echo "file or directory is not mounted"
    fi
done        