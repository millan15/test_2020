#!/bin/bash

echo "Enter 1st Number"
read a
echo "Enter 2nd Number"
read b
echo "Enter 3rd Number"
read c
new_c=`expr $c \* $c`
new_d=$(( ( $a * $a ) + ( $b * $b ) ))
if [ $new_c -eq $new_d ];
then
	echo "$a, $b and $c are pythagoras"
else 
	echo "$a, $b and $c are not pythagoras"
fi
