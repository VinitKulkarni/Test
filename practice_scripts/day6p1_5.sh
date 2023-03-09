#!/bin/bash

#factorial number

read -p "Enter a number:" num;
result=1
for (( i=1; i<=$num; i++ ))
do
  result=$(($result*$i))
done

echo $result
