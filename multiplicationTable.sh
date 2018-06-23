#!/bin/sh

echo -n "Enter the number for which the multiplication table is to be displayed: "
read x

for (( i = 1; i <= 10; i++ )); 
do
	ans=`expr $x \* $i`
	echo "$x x $i = $ans"
done