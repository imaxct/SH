#!/bin/sh

dirc=${1-`pwd`}

for file in "$( find $dirc -type f )"; do
	echo "$file"
done | sort >> logfile

exit $?