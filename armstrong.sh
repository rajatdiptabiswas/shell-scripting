#!/bin/sh

echo "Enter the number to be checked for being an Armstrong number: "
read x

initx=$x

d=${#x}

# echo -e "\nlength = $d\n"

s=0

for (( i = 0; i < $d; i++ )); do
	temp=`expr $x % 10`
	s=$(echo "$s + $temp^$d" | bc)
	x=`expr $x / 10`

	# echo -e "temp = $temp;\tsum = $s;\tx = $x;\n"
done

if [[ $s -eq $initx ]]; then
	echo -e "\nThe number is an Armstrong number"
else
	echo -e "\nThe number is not an Armstrong number"
fi