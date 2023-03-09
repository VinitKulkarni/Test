#!/bin/bash

fullTime=1;
partTime=2;
totalSalary=0;
perHourSalary=100;
maxNoOfWorkingDays=5;
maxHrsInMonth=40;

totalEmpHrs=0;
totalWorkingDays=0;

#dictionary declaration
declare -A empDailyWageDict;

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


while (( $totalEmpHrs < $maxHrsInMonth && $totalWorkingDays < $maxNoOfWorkingDays ))
do
	((totalWorkingDays++)) #wrong stmnt?
	empHrs=$(getWorkingHrs $((RANDOM%3))); #function calling
	totalEmpHrs=$(($totalEmpHrs+$empHrs))
	if (( $totalEmpHrs > $maxHrsInMonth ))
	then
	  totalEmpHrs=$(($totalEmpHrs-$empHrs))
	else
	   echo "emp working hrs: $empHrs"
	   dailyWage=$(($empHrs*$perHourSalary)) #calculate daily wage
	   totalWage=$(($totalEmpHrs*$perHourSalary)) #calculate total wage with previous total
	   ##empDailyWageDict[$totalWorkingDays]=$(($empHrs*$perHourSalary))
	   empDailyWageDict[$totalWorkingDays]="$dailyWage $totalWage";
	fi
done


#echo "testing---> ${!empDailyWageDict[@]}";

for vari in ${!empDailyWageDict[@]}
do
	echo "$vari ${empDailyWageDict[$vari]}";
done
