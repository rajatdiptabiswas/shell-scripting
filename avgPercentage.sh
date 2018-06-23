echo "Enter the marks for the 3 subjects (out of 100)"

read a
read b
read c

avg=$( expr "scale = 2; (($a+$b+$c)/3)" | bc )

echo "The average percentage of the 3 subjects is $avg"
