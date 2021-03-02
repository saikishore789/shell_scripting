#! /bin/bash
true
output=$?
if [ $output == 0 ]
then
echo "this is true condition"
else
echo "this is false condition"
fi

