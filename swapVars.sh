echo -n "Enter the value for x: "
read x

echo -n "Enter the value for y: "
read y

z=$x
x=$y
y=$z

echo -e "After swapping the values are...\nx = $x\ny = $y"
