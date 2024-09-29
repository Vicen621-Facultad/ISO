#!/bin/bash
# Creo arreglo con todos los usuarios del grupo users
# PARAMETROS:
# -b n: Retorna el elemento de la posicion n del arreglo si existe. Error en caso contrario
# -l: Devuelve la longitud del arreglo
# -i: imprime todos los elementos del arreglo en pantalla

if [ $# -lt 1 ]; then
	echo "Debe introducir un argumento"
	echo "-b n: Retorna el elemento de la posicion n del arreglo si existe. Error en caso contrario"
	echo "-l: Devuelve la longitud del arreglo"
	echo "-i: imprime todos los elementos del arreglo en pantalla"
	exit 1
fi

GROUP_ID=100
loadUsers() {
	for user in $(cat /etc/passwd)
	do
		username=$(echo ${user} | cut -d: -f1)
		gid=$(echo ${user} | cut -d: -f4)

		if [ "$gid" == "$GROUP_ID" ]
		then
			USERS+=($username)
		fi
	done
	return 0
}

USERS=()
loadUsers

case $1 in
	-b)
		if [ $# -ne 2 ]; then
			echo "Debe introducir una posición"
			exit 1
		fi

		if [ $2 -gt $(( ${#USERS[*]} - 1 )) ]; then
			echo "La posicion ingresada no corresponde con una posicion en el arreglo"
			exit 1
		fi

		echo "La posicion $2 del arreglo es: ${USERS[$2]}"
		exit 0
	;;
	-l)
		echo "La longitud del arreglo es ${#USERS[*]}"
		exit 0
	;;
	-i)
		for element in ${USERS[*]}
		do
			echo "$element"
		done
		exit 0
	;;
esac
