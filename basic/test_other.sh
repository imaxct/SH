#!/bin/bash

a=zed

if [ $a == "z*" ]; then
	echo "equals"
fi

if [ $a == z* ]; then
	echo "balabala"
fi

if [[ $a == z* ]]; then
	echo "matched"
fi

if [[ $a == "z*" ]]; then
	echo "equals"
fi


if [ -z "$a" ]; then #null, has zero length
	echo "is null or empty"
fi

if [ -n "$a" ]; then #not null
	echo "not null nor emtpy"
fi

echo

#compare

if [ -n $n_str ]; then
	echo "not null"
else
	echo "null"
fi #wrong

#need to be enclosed

if [ -n "$n_str" ]; then
	echo "not null"
else
	echo "null"
fi

echo
#compare

if [ $n_str ]; then #[ has one argument, "]", cause $n_str is null.
	echo "not null"
else
	echo "null"
fi

if [ "$n_str" ]; then #[ has two arguments, empty "$n_str" and "]"
	echo "not null"
else
	echo "null"
fi

echo

#example
str="a = b"

if [ $str ]; then
	echo "not null"
else
	echo "null"
fi

#better to quote variables in []