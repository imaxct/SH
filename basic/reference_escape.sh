#!/bin/bash

echo "\v\v"

echo -e "\v\v"

echo '\v\v'

echo $'\v\v'

echo "abcd \$\' ... \' abcd"

underline=$'\137\137\137'

echo "$underline UNDERLINE $underline"

ABC=$'\101\102\103\010'

echo $ABC

echo 'a
b'
#a
#b

echo 'a\
b'
#a\
#b

echo a\
b

#ab

echo "a\
b"
#ab
