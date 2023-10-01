#!/bin/bash

# printing the count of files and subdirectories in the specified directory

if [ -d "$@" ]; then
	echo "files: $(find "$@" -type f | wc -l)"
	echo "directories: $(find "$@" -type d | wc -l)"
else
    echo "[ERROR] Please retry with a folder."
    exit 1
fi	

