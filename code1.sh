#!/bin/bash

store_all_lines_count(){
   f=$1
   index=0
   echo "File content of " $f "is : "
   while read line
   do
      Line[$index]="$line"
      index=$(($index+1))
   done < $f
   
   for i in $(seq 0 $((${#Line[@]}-1)))
   do
      echo "i=$i - ${Line[$i]}"
   done
   echo -e "Total lines \c" 
   wc -l $f
   echo -e "\n"
   echo -e "Array length is : " ${#Line[@]}
   echo -e "\n"    
}

i=0
echo "Enter the file name: "
read file
store_all_lines_count $file






