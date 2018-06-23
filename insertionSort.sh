echo "Enter the number of elements in the array"
read num

echo "Enter the elements in the array"

for (( i = 0; i < $num; i++ )); do
	read arr[$i]
done

for (( i = 1; i < $num; i++ )); do
	j=$i-1
	temp=${arr[$i]}
	
	while [[ j -ge 0 && arr[j] -gt temp ]]; do
		arr[$j+1]=${arr[$j]}
		j=$j-1
	done

	arr[j+1]=$temp
done

echo "After printing sorted array..."
for (( i = 0; i < $num; i++ )); do
	echo ${arr[$i]}
done