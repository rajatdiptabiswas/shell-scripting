#!/bin/sh

echo "Enter the number till which the summation is to be found:"
read n

summation=$(( $n * $(( $n + 1 )) )) 
summation=$(( $summation / 2 )) 

echo "The sum of 1..$n natural numbers is $summation" 