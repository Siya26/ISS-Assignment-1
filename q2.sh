#!/bin/bash
while IFS="~" read quote author
do 
   if [[ "$quote" =~ [^[:space:]] ]]
   then
      echo "$author once said, \"$quote\"" 
   fi
done < quotes.txt > speech.txt