#!/bin/bash
echo -n "Size of file in bytes: "
cat $1 | wc -c

echo -n "Number of lines in file: "
cat $1 | wc -l

echo -n "Number of words in file: "
cat $1 | wc -w

IFS=$'\n'
i=1
while read -r l;
do
	echo -n "Line no: $i - Count of words: "
	wc -w <<< "$l"
	let i++
done < $1

sed -e 's/[^[:alpha:]]/ /g' $1 | tr '\n' " " |  tr -s " " | tr " " '\n'| tr 'A-Z' 'a-z' | sort | uniq -c | sort -nr | while IFS=" " read repeat word
do
        if [ ${repeat} -gt 1 ];
        then
                echo "Word: $word - Count of repetition: ${repeat}"
                
        fi
done

