#! /bin/bash

echo "what is ur name"
read name
echo "what is ur passwd"
read passwd

if [[ ( $name == "sai" && $passwd == "devops" ) ]]
        then 
	echo "valid user"
        else 
	echo "invalid user"
fi
