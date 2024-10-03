#!/bin/bash
# Este script recibe 2 numeros por parametro e imprime la suma, resta, multiplicacion de los mismos
# y cual es el numero mas grande de los dos
echo "$1+$2=$((1+2))"
echo "$1-$2=$((1-2))"
echo "$1*$2=$((1*2))"



if [ $1 -gt $2 ]; then
	echo "$1 es mayor que $2"
else
	echo "$2 es mayor que $1"
fi
