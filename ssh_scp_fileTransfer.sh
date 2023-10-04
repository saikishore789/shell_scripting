#! /bin/bash
# Script for scp & ssh by demonstrating remote login & file transfer functions

CMD=$1
echo -n "enter remote machine IP address: "
read ip_address

echo -n "enter username of remote machine: "
read username

# transfering files remotely using scp 
function scp {
    scp ./numbers_divided.sh $username@${ip_address}:/home/ubuntu/numbers_divided.sh
}

# connecting to remote machine and creating new files
function ssh {
    ssh -i ./rsk.pem username@${ip_address} 'touch file.txt; sudo apt-get update'
}

case $CMD in 
    scp) 
        scp "$@"
        ;;
    ssh)
        ssh "$@"
        ;;
    *) 
        echo $"usage: $0 {scp|ssh}"
        exit 1;
esac             
