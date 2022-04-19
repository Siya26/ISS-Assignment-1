#!/bin/bash

IFS=','
read -a a
j=${#a[*]}-1

while (( $j>0 ))
do
	c=0
	for (( i=0 ; i<j ; i++))
	do
		if [[ ${a[i]} -gt ${a[$((i+1))]} ]]
		then
			tmp=${a[i]}
			a[$i]=${a[$((i+1))]}
			a[$((i+1))]=$tmp
			let c++
		fi
	done

	if [[ c -eq 0 ]]
	then
		break
	fi
	let j--
	
done
echo ${a[*]}
