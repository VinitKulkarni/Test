#!/bin/bash -x

n=121
temp=$n

function checkPalindrom
{
 while (( temp>0 ))
 do
         ans=$((ans*10))
         mod=$((temp%10))
         ans=$((ans+mod))
         temp=$((temp/10))
 done
}


if (( $n == $ans ))
then
   echo "palidromm";
else
   echo "not";
fi
