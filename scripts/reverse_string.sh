#!/bin/bash

echo "Enter the string that needs to be reversed"
read i
len=`echo $i | wc -c`
echo $len

for (( a=$len - 1 ; $len=>0 ; $len-- ))
do
reverse = "$reverse${string:$a:1}" 
done 
echo "$reverse"
