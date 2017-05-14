#/bin/bash

str="abcd"
echo $str

echo "\"$str\""

echo -e "$str\na\na"

echo -e "$str\taaa"

printf "%5d%5s\n" 100 abc

printf "%-10.2f\n" 123.456

printf "\x6F\n"

printf "\u1234\n"

printf "\U42345678\n"

printf "%s\n" 'hello\nworld\n!'

printf "%b\n" 'hello\nworld\n!'

printf "home directory is %s\n" $HOME
