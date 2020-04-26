#!/bin/bash
echo "Please Enter thats needs to be checked"
read i
echo "Value of Entered Number: $i"
a=`expr $i \% 2`
echo $a
if [ $a -eq 0 ];
then
	echo "Number is Even"
else
	echo "Number is Odd"
fi
