echo -n "Enter the marks of the student (out of 100): "
read m

if [[ m -gt 90 ]]; then
	echo "Grade A"
elif [[ m -gt 80 ]]; then
	echo "Grade B"
elif [[ m -gt 70 ]]; then
	echo "Grade C"
elif [[ m -gt 60 ]]; then
	echo "Grade D"
elif [[ m -gt 50 ]]; then
	echo "Grade E"
else
	echo "FAIL"
fi