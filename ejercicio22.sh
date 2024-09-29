#!/bin/bash

num=(10 3 5 7 9 3 5 4)

productoria() {
	local total
	total=1
	for i in $*
	do
		((total*=$i))
	done
	echo "$total"
	return 0
}

productoria ${num[*]}
