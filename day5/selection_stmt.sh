#!/bin/bash

read -p "Enter 1st Num:" num1;
read -p "Enter 2nd Num:" num2;

if [ $num1 -gt $num2 ]
then
   echo "$num1 is greater than $num2";
elif [ $num1 -lt $num2 ]
then
   echo "$num2 is greater than $num1";
else
   echo "Both $num1 and $num2 are equal";
fi
