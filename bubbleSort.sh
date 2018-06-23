echo "Enter the number of elements in the array"
read n

echo "Enter the elements in the array"

for (( i = 0; i < $n; i++ )); do
	read arr[$i]
done

for (( i = 0; i < $n; i++ )); do
	for (( j = 0; j < $n-1-i; j++ )); do
		#echo -e "\ni = $i\nj = $j\n"

		if [[ ${arr[$j]} -gt ${arr[$j+1]} ]]; then
			temp=${arr[$j]}
			arr[$j]=${arr[$j+1]}
			arr[$j+1]=$temp

			#echo -e "\narr[j] = ${arr[$j]}\narr[j+1] = ${arr[$j+1]}\n"
		fi
	done
done

echo "After printing sorted array..."
for (( i = 0; i < $n; i++ )); do
	echo ${arr[$i]}
done