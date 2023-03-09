#!/bin/bash

fullTime=1;
partTime=2;
perHrWage=100;
totalWorkingDay=2;


for (( day=1; day<=totalWorkingDay; day++ ))
do
   empCheck=$((RANDOM%3))
   case $empCheck in
   	$fullTime)
        	empWorkHrs=8;;
        $partTime)
        	empWorkHrs=4;;
        *)
        	empWorkHrs=0;;
   esac

salary=$(($empWorkHrs*$perHrWage));
echo "Emp_Work_Status:$empCheck : Day-->$day : Salary-->$salary";
done


