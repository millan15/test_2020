#!/bin/bash
echo "Enter the number"
read i
num=$i
echo "Pre Value: $num"
sum=0
while [ $i -gt 0 ]
do
	r=`expr $i \% 10`
	sum=$(( $sum + ( $r * $r * $r ) ))
	i=`expr $i \/ 10`
done
echo "Post Value: $sum"
if [ $sum -eq $num ];
then
	echo "$num is Adam Number"
else
	echo "$num is not Adam Number"
fi

