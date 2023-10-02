#! /bin/bash

# generating the pattern

for i in {1..4}; do
    for j in $(seq 1 $i); do
        echo  -n "$j "
    done
    echo     
done    