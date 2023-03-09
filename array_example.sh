#!/bin/bash

#declaring array (not mandatory)
#declare -a array_name;

#Array value assinging type-1
#count=0;
#fruits[((count++))]="Mango";
#fruits[((count++))]="Greps";
#fruits[((count++))]="Orange";
#fruits[((count++))]="Blueberry";
#fruits[((count++))]="Pineapple";

#Array value assinging type-2
fruits=( Mango 300 Greps 111 Orange Blueberry Pineapple )

#list all the elements
echo ${fruits[@]};

#to get perticular element
#echo ${fruits[1]};

#size of array
#echo ${#fruits[@]};

#print the elements in range
#syntx:${arrayname[@]:indexofstartelement:noOfelements}
#echo ${fruits[@]:1:3};

#to get the index of array
#echo ${!fruits[@]};

#Replace element in array
#echo ${fruits[@]//${fruits[2]}/kiwi};

#delete the element in array
unset fruits[1];
echo ${fruits[@]};
