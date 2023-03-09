#!/bin/bash
#day05 Prob01-3

dice1=$((RANDOM%7))
dice2=$((RANDOM%7))
echo $dice1 $dice2
echo $(($dice1+$dice2))
