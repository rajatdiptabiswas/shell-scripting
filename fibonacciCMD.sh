#!/bin/sh

x=$1

f1=0
f2=1

echo ""

for (( i = 0; i <= $x; i++ )); do
	echo "$f1  "
	f3=$(( $f1 + $f2 ))
	f1=$f2
	f2=$f3
done
