echo -n "Enter basic pay: "
read basic

if [[ basic -gt 30000 ]]; then
	hra=$( echo "scale = 2; $basic * 0.05" | bc )
	da=$hra
	tax=$( echo "scale = 2; $basic * 0.10" | bc )

elif [[ basic -gt 20000 ]]; then
	hra=$( echo "scale = 2; $basic * 0.04" | bc )
	da=$( echo "scale = 2; $basic * 0.03" | bc )
	tax=$( echo "scale = 2; $basic * 0.08" | bc )

else
	hra=$( echo "scale = 2; $basic * 0.03" | bc )
	da=$( echo "scale = 2; $basic * 0.02" | bc )
	tax=$( echo "scale = 2; $basic * 0.05" | bc )
fi

netpay=$( echo "$basic + $hra + $da + $tax" | bc )

echo "The netpay is $netpay"