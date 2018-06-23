#!/bin/sh

echo -n "Enter the character to be checked: "
read char

case $char in
	a | e | i | o | u | A | E | I | O | U )
		echo "The character is a vowel"
		;;
	* )
		echo "The character is a consonant"
		;;
esac