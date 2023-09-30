#! /bin/bash

# print how many times letter s has repeated in word

x=sister

grep -o "s" <<< "$x" | wc -l
