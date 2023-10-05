if [ "$#" = 0 ] 
then
    #Script exits if no 
    #arguments passed 
    echo "No arguments passed."
    exit 1 
fi
  
#Initialize maxEle with  
#the first argument 
largest_num=$1 
  
#Loop that compares maxEle with the  
#passed arguments and updates it 
for i in "$@"
do
    if [ "$i" -gt "$largest_num" ] 
    then
        largest_num=$i
    fi
done
echo "Largest value among the arguments passed is: $largest_num"
