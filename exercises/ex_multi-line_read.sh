#!/bin/bash
while read line
do echo "$line ${#line}"
done < inputfile
