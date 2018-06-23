function add ()
{
	echo `expr $1 + $2`
}

function mul ()
{
	echo `expr $1 \* $2`
}

function log ()
{
	x=$(expr "scale = 4; l($1) / l(10)" | bc -l)
	echo $x
}

echo -e "\nWhat do you want to calculate?\n1. Log\n2. Add\n3. Multiply\n"
read choice

case $choice in
	1 )
		echo ""
		echo -n "Enter the number: "
		read x
		log $x
		;;
	2 )
		echo ""
		echo -n "Enter the first number: "
		read x
		echo -n "Enter the second number: "
		read y
		add $x $y
		;;
	3 )
		echo ""
		echo -n "Enter the first number: "
		read x
		echo -n "Enter the second number: "
		read y
		ans=mul $x $y
		;;
	* )
		echo ""
		echo "Invalid choice entered"
		;;
esac