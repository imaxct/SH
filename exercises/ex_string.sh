#!/bin/bash

echo "string length"
stringZ=abcdefghijk
echo ${#stringZ}
echo `expr length $stringZ`
echo `expr "$stringZ" : '.*'`

echo

echo "string remove"

stringZ=abcdABCDabcd

echo ${stringZ#b*d} #minimum remove from beginning
echo ${stringZ#a*d}

echo ${stringZ##a*b} #maximum remove from beginning

echo ${stringZ%b*d}

echo ${stringZ%b*c} #can not find if does not from the end.

echo 

echo "string replacement"

echo ${stringZ/abc/KKK} #replace first

echo ${stringZ//abc/KKK} #replace all

echo ${stringZ/#abc/KKZ} #replace front-end

echo ${stringZ/%abcd/KKK} #replace back-end

echo
