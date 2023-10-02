#! /bin/bash

# generating the pattern

n=1
for i in {1..4}; do
    for j in $(seq $i); do
        echo  -n "$n "
        n=`expr $n + 1`
    done
    echo     
done    