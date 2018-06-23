#!/bin/sh

echo -n "Enter the first number: "
read op1

echo -n "Enter the second number: "
read op2

echo "Enter the operation to execute: "

select oprtr in Add Subtract Multiply Divide STOP
do
	case $oprtr in
		Add )
			ans=`expr $op1 + $op2`
			echo "The result is $ans"
			;;
		Subtract )
			ans=`expr $op1 - $op2`
			echo "The result is $ans"
			;;
		Multiply )
			ans=`expr $op1 \* $op2`
			echo "The result is $ans"
			;;
		Divide )
			ans=`expr $op1 / $op2`
			echo "The result is $ans"
			;;
		STOP )
			break
			;;
		* )
			echo "Invalid operator inserted"
			;;
	esac
done