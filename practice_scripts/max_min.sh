#!/bin/bash

val1=$(((RANDOM%900)+100))
val2=$(((RANDOM%900)+100))
val3=$(((RANDOM%900)+100))

echo $val1 $val2 $val3

#maximum finding
if [ $val1 -gt $val2 ] && [ $val1 -gt $val3 ]
then
  echo "max:"$val1
elif [ $val2 -gt $val3 ]
then
  echo "max:"$val2
else
  echo "max:"$val3
fi

#minimum find
if [ $val1 -lt $val2 ] && [ $val1 -lt $val3 ]
then
  echo "min:"$val1
elif [ $val2 -lt $val3 ]
then
  echo "min:"$val2
else
  echo "min:"$val3
fi

