#!/bin/bash

# do a arthimetic operation based on the last digit of a string

echo -n "enter a number with operator: "
read string

array=()

for ((i=0; i<${#string}; i++)); do
    array+=("${string:i:1}")

done

last_index=$(( ${#array[@]} - 1 ))

new_array=("${array[@]:0:$last_index}")

last_element="${array[-1]}"

result=0

for element in "${new_array[@]}"; do
    digit="$element"
    case "$last_element" in
        "+")
            result=$((result + digit))
            ;;
        "-")
            result=$((digit - result))
            ;;
        "*")
            result=$((result * digit))
            ;;
        *)   
            echo "error, invalid operator"
            exit 1
            ;;
    esac    
done

echo "result($last_element): $result"



