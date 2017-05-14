#!/bin/bash

echo "file name is: $0"
echo "first arg is: $1"
echo "second arg is: $2"
echo "number of args: $#"

echo $*
for x in "$*"; do
	echo $x
done

echo $$

echo $!

echo $@
for x in "$@"; do
	echo $x
done

echo $-

echo $?
