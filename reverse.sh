#!/bin/sh

echo "Enter the number to reverse:"
read x

d=${#x}

r=0

for (( i = 0; i < $d; i++ )); do
	temp=`expr $x % 10`
	r=$(echo "($r*10) + $temp" | bc)
	x=`expr $x / 10`

	# echo -e "temp = $temp;\tsum = $r;\tx = $x;\n"
done

echo -e "\nThe reversed number is $r"