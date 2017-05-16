#!/bin/bash

ARGS=2
E_BADARGS=85
if [ $# -ne "$ARGS" ]; then
	echo "Usage: `basename $0` number1 number2"
	exit $E_BADARGS
fi

if [[ ! $1 =~ [0-9]{1,} || ! $2 =~ [0-9]{1,} ]]; then
	echo "arguments are not numbers"
	exit $E_BADARGS
fi


gcd(){
	x=$1
	y=$2
	r=1
	until [[ "$r" -eq 0 ]]; do
		let "r = $x % $y"
		x=$y
		y=$r
	done
	return $x
}

gcd $1 $2

echo "The gcd of $1 and $2 is $?"

exit 0