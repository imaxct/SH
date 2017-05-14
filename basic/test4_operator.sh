#!/bin/bash
val=`expr 2 + 2`
echo $val

a="0"
b=`expr 50 + 50`
if [ $a -eq $b ]; then
    echo 'yes'
else
    echo 'no'
fi

# -eq -ne -le -lt -ge -gt only for numbers
if [ $a -ne 0 -a $b -ne 0 ]; then
    echo "both not zero"
else
    echo "both are zero or one of them is zero"
fi

if [ $a -ne 0 -o $b -ne 0 ]; then
    echo "one of a and b is not zero"
fi

if [ ! $a -eq 0 ]; then
    echo "a is not zero"
fi

if [ ! $b -eq 0 ]; then
    echo "b is not zero"
fi

if [ $a -lt $b ]; then
    echo "a is less than b"
fi

if [ $a -gt $b ]; then
    echo "a is greater than b"
fi

str='abcdefg'

str1=${str:-1:2}

echo $str1
echo ${#str1}

if [ $str ]; then
    echo 'str is not empty'
fi

str2=''
#error ?
if [ -n $str2 ]; then
    echo "str2 is not null"
fi

if [ -z $str1 ]; then
    echo "str1 is null"
fi


##########
## file ##
##########

if [ -f $0 ]; then
    echo "is file"
fi

if [ -r $0 -a -w $0 ]; then
    echo "readable and writable"
fi

if [[ -r $0 && -w $0 ]]; then
    echo "readable and writable again"
fi

if [ -b $0 ]; then
    echo "$0 is a block device file"
fi

if [ -d $0 ]; then
    echo "$0 is a directory"
fi

if [ -f $0 ]; then
    echo "$0 is a regular file"
fi

if [ -x $0 ]; then
    echo "$0 is executable"
fi

if [ -s $0 ]; then
    echo "$0 is not empty"
fi

if [ -e $0 ]; then
    echo "$0 is exist"
fi
