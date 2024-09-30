#!/bin/bash

inicializar() {
	ARRAY=()
	return 0
}

agregar_elem() {
	if [ $# -ne 1 ]
	then
		echo "Debes ingresar un elemento"
		return 1
	fi

	ARRAY+=( $1 )
	return 0
}

eliminar_elem() {
	if [ $# -ne 1 ]
	then
		echo "Debes ingresar la posicion a eliminar"
		return 1
	fi

	if [ $1 -ge ${#ARRAY[*]} ]
	then
		echo "La posicion $1 no es una posición valida"
		return 1
	fi

	unset ARRAY[$1]
	return 0
}

longitud() {
	echo "La longitud del arreglo es: ${#ARRAY[*]}"
	return 0
}

imprimir() {
	echo "Los elementos de la lista son:"
	echo "${ARRAY[*]}"
	return 0
}

inicializar_con_valores() {
	if [ $# -ne 2 ]
	then
		echo "Usage: inicializar_con_valores {longitud} {valor}"
		return 1
	fi
	
	ARRAY=()

	# Repito $1 veces
	for ((i=0; i < $1; i++))
	do
		ARRAY+=( $2 )
	done


	return 0
}

inicializar_con_valores 3 1
imprimir
longitud
agregar_elem 4
imprimir
eliminar_elem 0
imprimir
eliminar_elem 3
imprimir
