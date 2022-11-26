#!/bin/bash -x
array=()
for ((i=0; i<10; i++))
do
array[i]=$((RANDOM%900+100))
done
echo ${array[@]}
for ((i=0; i<10; i++))
do
   for ((k=$i+1; k<10; k++))
     do
          temp=0
        if((${array[$i]}>${array[$k]}))
          then
             temp=${array[$i]}
              array[$i]=${array[$k]}
              array[$k]=$temp
          fi
        done
  done
echo "The Second largest element is:" ${array[8]}
echo "The Second smallest element is:" ${array[1]}
echo ${array[@]}





































#largest=${random_Check[1]}
#secondLargest=0
#for((i=1;i<=${#random_Check[@]};i++))
#do
 #if((${random_Check[i]}<$largest))
#then
 # secondLargest=$largest
  #largest=${random_Check[i]}
#elif(( ${random_Check[i]}!=$largest && $secondLargest==0 || ${random_Check[i]} > $secondLargest))
#then
 #  secondLargest=${random_Check[i]}
#fi
#done
#echo "Second Largest : $secondLargest"
