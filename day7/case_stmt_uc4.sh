#!/bin/bash -x

fullTime=1;
partTime=2;
empCheck=$((RANDOM%3));
perHrWage=100;

case $empCheck in
	$fullTime)
	empWorkHrs=8;;
	$partTime)
	empWorkHrs=4;;
	*)
	empWorkHrs=0;;
esac

salary=$(($empWorkHrs*$perHrWage));
echo $salary;
