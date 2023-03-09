#!/bin/bash

#Day5 Prob01-4
value1=$(((RANDOM%90)+10));
value2=$(((RANDOM%99)+10));
value3=$(((RANDOM%99)+10));
value4=$(((RANDOM%99)+10));
value5=$(((RANDOM%99)+10));

echo $value1 $value2 $value3 $value4 $value5

result_add=$(($value1+$value2+$value3+$value4+$value5));
echo "addition:" $result_add

result_avg=$(($result_add/5));
echo "average:" $result_avg;
