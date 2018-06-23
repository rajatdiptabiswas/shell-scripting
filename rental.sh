#!/bin/sh

echo -e "\n\nWELCOME TO RENTAL SERVICES"
echo "**************************"

echo -e "\nChoose what kind of vehicle you want to rent"
echo -e "\n 1) Car\n 2) Van\n 3) Truck\n 4) Cycle\n"
read choice

echo -e "\nThe rate for the chosen vehicle is..."

case $choice in
	1 )
		echo "Rs 20 per km"
		;;
	2 )
		echo "Rs 10 per km"
		;;
	3 )
		echo "Rs 5 per km"
		;;
	4 )
		echo "Rs 2 per km"
		;;
	* )
		echo -e "\nERROR: Wrong choice entered"
		;;
esac