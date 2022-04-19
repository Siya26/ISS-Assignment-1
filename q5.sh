#!/bin/bash
echo "Enter string"
read str

s[0]=$str
let a=${#s}
for (( i=$a+1 ; i>=0 ; i--))
do
	STR="$STR${s[0]:$i:1}"
done 
echo $STR

echo $STR |tr '[a-z]' '[b-za-a]' |tr '[A-Z]' '[B-ZA-A]'
let b=a/2

for (( i=$b-1 ; i>=0 ; i--))
do
       echo -n ${s[0]:$i:1}
done 
for (( i=$b ; i<$a+1 ; i++))
do
       echo -n ${s[0]:$i:1} 
done 
