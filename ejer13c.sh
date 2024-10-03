#!/bin/bash
# Recibe el path de un archivo como parametro y se fija si existe

FILE=$1

if [ -f $FILE ]; then
	echo "El archivo $FILE existe"
elif [ -d $FILE ]; then
	echo "El directorio $FILE existe"
else
	echo "El archivo $FILE NO existe"
	mkdir $FILE
fi
