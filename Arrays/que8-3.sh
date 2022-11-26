#!/bin/bash -x
echo "Enter the number to find prime factors"
read num
count=0
count1=0
for((i=2;i<=num-1; i++))
do
  if(($num%i==0))
  then
        for((j=2;j<=i-1;j++))
         do
             if(($i%j==0))
               then
                   ((count++))
              else
                    count1=$(($count1+1))
           fi

          done


          if(($count==0))
           then
                PrimeFactor[$count1]=$(($i))
             fi
       fi
done
echo ${PrimeFactor[@]}
