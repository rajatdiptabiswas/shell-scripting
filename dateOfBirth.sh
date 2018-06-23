#!/bin/sh

function age ()
{
	year=$1
	month=$2

	yearnow=$(date '+%Y')
	monthnow=$(date '+%m')

	agey=$(($yearnow-$year))
	agem=$(($monthnow-$month))

	if [ $agem -lt 0 ] ; then
	   agem=$(($monthnow-$month+12))
	else
	   agem=$(($monthnow-$month))
	fi
	echo "You are $agey years and $agem months old!"
}

read -p "Enter your birth year  : " year
read -p "Enter your birth month : " month

age $year $month