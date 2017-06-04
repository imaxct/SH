#!/bin/bash

#shopt -s lastpipe  ##uncomment to work

last="(null)"
cat $0 |
while read line
do
	echo "{$line}"
	last=$line
done

echo "++++++++++++"
printf "the last line is {$last}\n"
exit 0

