#!/bin/bash

test=(1 2 3 4 5 6 7 8 9)

recorrerArreglo() {
	local impares
	impares=0
	for i in $*
	do
		if [ $(($i % 2)) -eq 1 ]; then
			((impares+=1))
		else
			echo "$i"
		fi
	done
	echo "cantidad impares: $impares"
	return 0
}

recorrerArreglo ${test[*]}
