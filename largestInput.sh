echo -n "Enter the value of x: "
read x

echo -n "Enter the value of y: "
read y

echo -n "Enter the value of z: "
read z

if [[ $y -gt $z ]]
	then
		if [[ $x -gt $y ]]
			then
				echo "x = $x is largest"
			else
				echo "y = $y is largest"
		fi
	else
		if [[ $x -gt $z ]]
			then
				echo "x = $x is largest"
			else
				echo "z = $z is largest"
		fi
fi