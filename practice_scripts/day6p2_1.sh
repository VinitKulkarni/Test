#!/bin/bash

read -p "Enter the number:" n;
temp=2;
fix_value=256

while (( $result != $fix_value ))
do
	result=$(($temp**$n))
done
