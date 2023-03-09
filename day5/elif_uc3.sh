#!/bin/bash -x

randomNum=$(($RANDOM%3))
rate=10
fullTime=1
partTime=2

if [ $randomNum -eq 1 ]
then
   #echo "Employee is present";
   #salary=$(($rate*$workingHrs))
   workingHrs=8;
elif [ $randomNum -eq 2 ]
then
   workingHrs=4;
else
   #echo "Employee is absent";
   #salary=0
   workingHrs=0;
fi

salary=$(($rate*$workingHrs))
echo $salary
