#!/bin/bash
# Este script se fija cada 10 segundos si se logueo un usuario pasado por parametro
# Una vez se logueo se deja de ejecutar

if [$# -ne 1]; then
	echo "Debe ingresar un nombre de usuario"
	exit 1
fi

USER=$1
logged=0
while [ $logged -eq 0 ]
do
	if [ $(who | grep $USER | wc -l) -gt 0 ]; then
		echo "Usuario $USER logueado en el sistema"
		logged=1
	else
		sleep 10
	fi
done
