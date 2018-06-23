#!/bin/sh

echo "Enter the number of the Fibonacci Series to be displayed:"
read x

f1=0
f2=1

echo ""

for (( i = 0; i <= $x; i++ )); do
	echo -n "$f1  "
	f3=$(( $f1 + $f2 ))
	f1=$f2
	f2=$f3
done

echo -e "\n"