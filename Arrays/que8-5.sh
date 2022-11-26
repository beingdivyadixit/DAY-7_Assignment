#!/bin/bash -x
repeatedDigi=()
for((i=0; i<=100; i++))
do
if((i>10))
then
   mod=$((i%11))
fi
   if(($mod==0))
    then
      repeatedDigi[$i]=$i
       fi
done
echo ${repeatedDigi[@]}
