#!/bin/bash

echo "Enter the number"
read i
old_num=$i
new_num=0
while [ $i -ne 0 ]
do
	r=`expr $i % 10`
	new_num=$(( $r + ( $new_num * 10 ) ))
	i=`expr $i / 10`
done
echo "Original Number: $old_num"
echo "Reverse Number: $new_num"
if [ $new_num -eq $old_num ];
then
	echo "Number is Palindrome"
else
	echo "Number is not Palindrome"
fi
