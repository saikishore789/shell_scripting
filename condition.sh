#! /bin/bash

if [ $# -ne 1 ]
   then	
   echo "usage: sh else_condition.sh <TAG>"
   exit 1
fi

echo 'this is:'$1
