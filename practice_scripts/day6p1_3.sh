#!/bin/bash -x

#3.write a program that takes input and check for prime number.

read -p "Enter a number to check prime or not:" number;

if [ $number -gt 1 ]
then
   for (( i=2; i<$number; i++ ))
   do
   	if (( $number%$i == 0 ))
	then
	   echo "$number is not prime";
	   exit
	fi
   done
fi


echo "$number is prime";

