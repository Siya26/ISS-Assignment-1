#!/bin/bash
echo "1a:"
echo
grep -v '^[[:space:]]*$' quotes.txt
echo 
echo
echo "1b:"
echo
awk '!visited[$0]++' quotes.txt | grep -v '^[[:space:]]*$'

