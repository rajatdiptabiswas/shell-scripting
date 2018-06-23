#!/bin/sh

echo ""

echo "Enter the number to be checked for prime:"
read num

i=2

while [[ $(( i*i )) -le num ]]; do
	if [[ $(( num % i )) -eq 0 ]]; then
		echo -e "\nThe number is not a prime\n"
		exit
	fi

	i=`expr $i + 1`
done

echo -e "\nThe number is a prime\n"