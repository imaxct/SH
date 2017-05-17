#!/bin/bash

ROOT_UID=0

if [ "$UID" -eq "$ROOT_UID" ]; then
	echo "you are root"
else
	echo "you are not root"
fi

echo

until [ -z "$*" ]; do
	echo "$*"
	shift
done

echo


