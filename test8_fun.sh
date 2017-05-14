#!/bin/bash

justPrint(){
    echo "Hello"
}

echo "----a-----"

justPrint

echo "----b-----"


returnValue(){
    echo "exec"
    return 1
}

echo "----c----"

returnValue

echo "return value is $?"


argsFun(){
    echo $1
    echo $2
    echo $#
    echo $*
    echo $@
}

echo "----d----"

argsFun a b
