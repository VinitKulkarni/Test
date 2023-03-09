#!/bin/bash -x

randomNum=$(($RANDOM%2))
rate=10
workingHrs=8

if [ $randomNum -eq 1 ]
then
   #echo "Employee is present";
   salary=$(($rate*$workingHrs))
else
   #echo "Employee is absent";
   salary=0
fi

echo $salary
