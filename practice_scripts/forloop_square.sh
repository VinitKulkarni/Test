#!/bin/bash

read -p "Enter the maximum value:" value

temp=2;

for (( i=1; i<=value; i++ ))
do
	result=$(($temp ** $i))
	echo "$temp^$i="$result;
done

#Day6 prob1-1
