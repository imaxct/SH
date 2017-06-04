#!/bin/bash
while read line
do echo "$line ${#line}"
done < inputfile

OIFS=$IFS; IFS=:
while read name passwd uid gid fullname ignore
do echo "$name ($fullname)"
done < /etc/passwd
IFS=$OIFS

while IFS=: read name passwd uid gid fullname ignore
do echo "$name ($fullname) ${#name}"
done < /etc/passwd

echo "IFS is $IFS"
