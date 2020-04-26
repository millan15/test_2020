/*Shell Script to find the factorial value */

#!/bin/bash
echo "Enter the Number"
read i
var=1
for (( a=1 ; a <=i ; a++ ))
do
	var=`expr $var \* $a`
done
echo "Factorial Value:$var"

