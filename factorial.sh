#!/bin/sh

echo -e "\nEnter the number to find factorial for:"
read n

prod=1
i=$n

if [[ $n -eq 0 || $n -eq 1 ]]; then
	echo -e "\nThe factorial of $n is 1\n"
	exit
else
	while [[ $i -ne 1 ]]; do
		prod=$(( prod*i ))

		i=`expr $i - 1`
	done
fi

echo -e "\nThe factorial of $n is $prod\n"