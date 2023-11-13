for i in $(ls -d */); do
        for k in $(sudo find "$i"  -type f); do
               echo "$k"
               sudo cat $k | grep false
               if [ $? == 0 ];
               then
                       echo "we found the file with expected word"
               fi
        done
done
