#!/bin/bash

arr=( 'A' 'B' 'C' EFGHI)
echo ${arr[0]}
echo ${arr[1]}
echo ${#arr[3]}
echo ${#arr[@]}
echo ${#arr[*]}

echo ${arr[3]:2:4}

echo ${arr[*]:2:4}
