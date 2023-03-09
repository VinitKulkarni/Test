#!/bin/bash

#declaration of dict
declare -A classroom;

classroom["Student-1"]="raj";
classroom["Student-2"]="yash";
classroom["Student-3"]="ram";
classroom["Student-4"]="rani";

#display all values
#echo ${classroom[@]};

#display keys
#echo ${!classroom[@]};

#display value using key
#echo ${classroom["Student-1"]};

#updating the existing value
#classroom["Student-4"]="Shridhar";
#echo ${classroom[@]};

#remove/delete the key-value pair
#unset classroom["Student-4"];
#echo ${classroom[@]};

#display key-value pair
for vari in ${!classroom[@]}
do
	echo "$vari ${classroom[$vari]}";
done
