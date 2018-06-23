echo -n "Enter the radius of the circle: "
read r

readonly PI=3.14159

echo -e "Choose whether to find area or circumference of the circle\n1. Area\n2. Circumference\n"
echo -n "Choice = "
read choice

case $choice in
	1)
		area=$( expr "scale = 2; $PI * $r^2" | bc )  
		echo -e "\nArea = $area"
		;; 
	2)
		circ=$( expr "scale = 2; 2 * $PI * $r" | bc )
		echo -e "\nCircumference = $circ"
		;;
	*)
		echo "Please enter either 1 or 2"
		;;
esac
