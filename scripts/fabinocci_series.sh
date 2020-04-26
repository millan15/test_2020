o// Shell Script to generate a series of fabinocci series

#!/bin/bash
echo "Enter the number of sequence for the fabinocci series"
read i
a=0
b=1
echo "Sequence"
for (( var=1 ; var<=i ; var++ ))
do
	echo $a
	c=`expr $a \+ $b`
	a=$b
	b=$c
done
