#!/bin/bash
PS3='Choose one option'
echo

select a in "o1" "o2" "o3" "o4"
do
	echo
	echo "You chose $a"
	break
done
