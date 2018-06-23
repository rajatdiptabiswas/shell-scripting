echo -n "Enter the temperature in degree Fahreheit: "
read f

c=$( expr "scale = 3; ($f - 32) * (5 / 9)" | bc )

echo "The temperature in degree Celsius is $c"
