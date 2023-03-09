#!/bin/bash -x

fullTime=1;
partTime=2;
totalSalary=0;
perHourSalary=100;
maxNoOfWorkingDays=5;
maxHrsInMonth=10;

totalEmpHrs=0;
totalWorkingDays=1;


while (( $totalEmpHrs < $maxHrsInMonth && $totalWorkingDays <= $maxNoOfWorkingDays ))
do
	((totalWorkingDays++))
	randomCheck=$((RANDOM%3))
	case $randomCheck in
		$fullTime)
		     empHrs=8;;
		$partTime)
		     empHrs=4;;
		*)
		     empHrs=0;;
	esac
	totalEmpHrs=$(($totalEmpHrs+$empHrs))
	if (( $totalEmpHrs > $maxHrsInMonth ))
	then
	  totalEmpHrs=$(($totalEmpHrs-$empHrs))
	fi
done

totalSalary=$(($totalEmpHrs*$perHourSalary))
#echo $totalSalary
