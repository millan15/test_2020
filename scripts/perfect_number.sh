#!/bin/bash

echo "Enter the number"
read i
sum=0
for (( a=1 ; a<$i ; a++ ))
do
	r=`expr $i \% $a`
	if [ $r -eq 0 ];
	then
	sum=`expr $sum + $a`
	fi
done
echo $sum
if [ $sum -eq $i ];
then
	echo "$i is Perfect Number"
else
	echo "$i is not a Perfect Number"
fi
