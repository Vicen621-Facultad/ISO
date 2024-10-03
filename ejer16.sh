#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Debe ingresar una extension"
	exit 1
fi

EXTENSION=$1

echo "usuario	cant_archivos" > reporte.txt

for usuario in $(cut -d: -f1 /etc/passwd); do
	echo "$usuario	$(ls /home/$usuario | grep $EXTENSION | wc -l)" >> reporte.txt
done
