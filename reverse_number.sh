#!/bin/bash 
if [ $# -ne 1 ] 
then 
    echo "Please provide the correct input in the below format."
    echo "Usage: $0 number"
    exit 1;
fi

n=$1
rev=0
sd=0

while [ $n -gt 0 ]
	do
		sd=$(expr $n % 10)
		rev=$(expr $rev \* 10 + $sd)
		n=$(expr $n / 10)

done
echo "reverse number: $rev"
