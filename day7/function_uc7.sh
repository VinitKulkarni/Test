#!/bin/bash -x

fullTime=1;
partTime=2;
totalSalary=0;
perHourSalary=100;
maxNoOfWorkingDays=5;
maxHrsInMonth=10;

totalEmpHrs=0;
totalWorkingDays=1;

#function code
function getWorkingHrs(){
	case $1 in
                $fullTime)
                     empHrs=8;;
                $partTime)
                     empHrs=4;;
                *)
                     empHrs=0;;
        esac
	echo $empHrs;
}


while (( $totalEmpHrs < $maxHrsInMonth && $totalWorkingDays <= $maxNoOfWorkingDays ))
do
	((totalWorkingDays++))
	empHrs=$(getWorkingHrs $((RANDOM%3))); #function calling
	totalEmpHrs=$(($totalEmpHrs+$empHrs))
	if (( $totalEmpHrs > $maxHrsInMonth ))
	then
	  totalEmpHrs=$(($totalEmpHrs-$empHrs))
	fi
done

totalSalary=$(($totalEmpHrs*$perHourSalary))
#echo $totalSalary
