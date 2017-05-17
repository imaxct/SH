#!/bin/bash

TIMELIMIT=5

read -t $TIMELIMIT var

echo

if [ -z "$var" ]; then
	echo timeout
else
	echo "var = $var"
fi

exit 0
