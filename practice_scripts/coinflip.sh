#!/bin/bash

coinValue=$((RANDOM%1))

echo $coinValue

if [ $coinValue -eq 1 ]
then
  echo "Head"
else
  echo "Tail"
fi
