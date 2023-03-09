#!/bin/bash -x

randomNum=$(($RANDOM%2))

if [ $randomNum -eq 1 ]
then
   echo "Employee is present";
else
   echo "Employee is absent";
fi
