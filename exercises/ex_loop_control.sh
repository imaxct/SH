#!/bin/bash
for outer in I II III IV V
do
	echo; echo "$outer :"
	for inner in 1 2 3 4 5 6 7 8 9 10 11 12
	do
		if [[ "$inner" -eq 7 && "$outer" = "III" ]]; then
			continue 2
		fi
		echo "$inner"
	done
done
