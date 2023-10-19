#!/bin/bash


diff=$(diff -r /home/apex/core/config /home/apex/data/config) ## diff command will check if folders has same or not

if $diff  > /dev/null 2>&1; then
       echo 'no difference in folders'
else
        echo "difference in folders: "
        echo "$diff"
fi