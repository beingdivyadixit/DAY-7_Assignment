#!/bin/bash -x
s1=9999
s2=9999
l1=1
l2=1
for((i=1; i<=10;i++))
do
random_Check=$((RANDOM%900+100))
RandomThreeDigi[$i]=$(($random_Check))
echo ${RandomThreeDigi[@]}
if(($s1 > $random_Check))
then
   s2=$s1
   s1=$random_Check
elif(($s2>$random_Check && $s1!=$random_Check))
then
     s2=$random_Check
  echo "Second Smallest : $s2"
fi
if(($l1 < $random_Check))
then
   l2=$l1
   l1=$random_Check
elif(($l2<$random_Check && $l1!=$random_Check))
then
     l2=$random_Check
fi
done
echo "Second Largest : $l2"
