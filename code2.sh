#!/bin/bash

echo "Enter the file name: "
read filename


ARRAY=( $(cat $filename | tr '\n' ' ') )
# testing 
for i in $(seq 0 $((${#ARRAY[@]}-1)))
do
    echo "i=$i - ${ARRAY[$i]}"
done

echo -e "Total lines \c" 
wc -l $filename
echo -e "\n"
echo -e "Array length is : " ${#ARRAY[@]}
echo -e "\n" 
