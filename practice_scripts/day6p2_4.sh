#!/bin/bash -x

moneyHave=1;
moneyGoal=5;
wonCount=0;
betCount=0;

while (( $moneyHave != 0 && $moneyHave <= 5 ))
do
	betNum=$(($RANDOM%2))
	((betCount++))
	if [ $betNum == 1 ]
	then
	   ((wonCount++))
	   moneyHave=$(($moneyHave+1))
	else
	   moneyHave=$(($moneyHave-1))
	fi
done

echo "bet_won $betCount";
echo "bet_count $betCount";
