#!/bin/bash

if [ $# -ne 1 ]
then
	echo "Usage: ./ejercicio28.sh <directorio>"
	exit 1
fi

if [[ -d $1 ]]
then
	echo "El directorio $1 no existe"
	exit 4
fi

count=0
for file in $(ls "$(pwd)/$1")
do
	path="$1/$file"
	if [[ -d "$path" ]]
	then
		continue
	fi

	if [[ -r $path ]]
	then
		if [[ -w $path ]]
		then
			(( count++ ))
		fi
	fi
done

echo "Cantidad de archivos con lectura y escritrua: $count"
exit 0
