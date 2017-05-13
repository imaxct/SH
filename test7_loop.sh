#!/bin/bash

for ((;;)); do
    echo "input a number between 1 and 10"
    read num
    case $num in
        1|2|3|4|5|6|7|8|9|10 ) echo "the number is $num"
        ;;
        *) echo "wrong input"
        break;
        ;;
    esac
done
