/*Shell Script to check whether a given number is prime or not */

#!/bin/bash
echo "Enter the Number" 
read i
echo "Entered number:$i"
count=0
for (( a=1 ; a<=$i ; a++ ))
do
	var=`expr $i \% $a`
	if [ $var -eq 0 ];
		then
		count=`expr $count \+ 1`
	fi
done
if [ $count -gt 2 ];
	then
	echo "Number:$i is not Prime"
else
	echo "Number:$i is Prime"
fi


