echo -n "Enter the year to be checked: "
read y

# if [ `expr $y % 400` -eq 0 ]
# 	then
# 		echo "The year is a leap year"
# 	else
# 		if [ `expr $y % 4` -eq 0 ]
# 			then
# 				if [ `expr $y % 100 != 0` ]
# 					then
# 						echo "The year is a leap year"
# 				fi
# 			else
# 				echo "The year is not a leap year"
# 		fi
# fi  

if [ `expr $y % 400` -eq 0  -o `expr $y % 4` -eq 0 -a `expr $y % 100 != 0` ]
	then
		echo "The year is a leap year"
	else
		echo "The year is not a leap year"
fi
