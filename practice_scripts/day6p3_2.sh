#!/bin/bash

n=121
copy_value=$n

function checkPalindrom()
{
 echo "HHHHHHHHHHHH $1"
 temp=$1
 echo "temp=$temp"
 while (( temp>0 ))
 do
         ans=$((ans*10))
         mod=$((temp%10))
         ans=$((ans+mod))
         temp=$((temp/10))
 done
 if [ $n -eq $ans ]
 then
   echo "palidromm";
 else
   echo "not";
 fi

}

checkPalindrom 121

