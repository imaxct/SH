#!/bin/bash

(( 0 && 1 ))

echo $?

let "num = (( 0 && 1 ))"
echo $num


(( var+=22)) && echo $var
echo $?

echo "-------"

var -= 2 && (( var+=22)) && echo $var
echo $?

echo "-------"

nul=

if [ -n nul ]; then
	echo "is null"
else
	echo "not null"
fi

echo "-------"

dec=15
oct=017
hex=0x0f

if [[ "$dec" -eq "$hex" ]]; then
	echo "equal"
else
	echo "not equal"
fi

echo "-------"

if [ "$dec" -eq "$hex" ]; then #不会自动转换进制
	echo "equal"
else
	echo "not equal"
fi

# (( )) 中表达式为true, 则退出码为0, 否则为1.

(( 0 ))
echo $?

(( 1 ))
echo $?

(( 5 > 4 ))
echo $?