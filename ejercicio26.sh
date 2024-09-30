#!/bin/bash

if [ $# -eq 0 ]
then
	echo "Debe ingresar aunque sea un directorio"
	exit 1
fi

var_pos=0
inexistentes=0
for path in $*
do
	(( var_pos++ ))
	if [ $(( var_pos % 2 )) -eq 0 ]
	then
		continue # Si es par sigo
	fi

	if [ -d $path ]
	then
		echo "El directorio existe"
	elif [ -f $path ]
	then
		echo "El archivo existe"
	else
		(( inexistentes++ ))
	fi
done
echo "Los archivos inexistentes fueron: $inexistentes"
exit 0
