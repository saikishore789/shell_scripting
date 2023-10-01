#! /bin/bash

#echo -n "enter no of arguments to pass: "
#read n
cmd=$1

function add {
	if [ $# -ne 4 ]; then
	       echo "usage: $0 num1 num2 num3"
	       exit 1;
	fi
	export num1="$2"
	export num2="$3"	
	export num3="$4"
	sum=$(( $num1 + $num2 + $num3  ))
	echo "sum of numbers: $sum "
		
}

function subtract {
	if [ $# -ne 3 ]; then
               echo "usage: $0 num1 num2"
               exit 1;
        fi
        export num1="$2"
        export num2="$3"
	if [ $num1 -lt $num2 ]; then
		echo "2nd argument should be greater than 3rd argument for subtracting"
		exit 1;
	fi 

        sum=$(( $num1 - $num2 ))
        echo "sum of numbers: $sum "
}

case $cmd in
	add)
		add "$@"
		;;

	subtract)
		subtract "$@"
		;;
	*)
		echo $"usage: $0 {add|subtract}"
	        exit 1;

esac

