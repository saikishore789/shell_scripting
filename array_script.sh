#! /bin/bash 
 
# To declare static Array  
arr=(prakhar ankit 1 rishabh manish abhinav) 
 
# To print all elements of array 
echo ${arr[@]}        
echo ${arr[1]}        
echo ${arr[2]:0}     
echo ${arr[*]:0}
echo ${arr[@]:2:3}
echo ${arr[3]:1}
echo ${#arr[@]}
echo ${arr[@]//a/A}
