#!/bin/bash
# Este script imprime los numeros del 1 al 100 junto con sus cuadrados

for i in {1..100}; do
	echo "$i, $i^2=$(($i*$i))"
done
