echo -n "Enter the principal: "
read p

echo -n "Enter the rate of interest: "
read r

echo -n "Enter the time (in years): "
read t

si=$( expr "scale=3; ($p*$r*$t)/100" | bc )
#si=`expr $p \* $t \* $r / 100`

echo "Simple interest = $si"
