#!/bin/bash

list1=($(cat punto/archivo01.txt))
list2=($(cat punto/archivo02.txt))

for ((i=0;i<5;i++))
do
	suma[i]=$((${list1[i]}+${list2[i]}))
done
echo ${suma[@]}>punto/archivo03.txt
