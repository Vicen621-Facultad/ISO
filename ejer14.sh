#!/bin/bash

DIRECTORIO=$1
OPCION=$2
CADENA=$3

for archivo in "$DIRECTORIO"*; do
	if [ -f "$archivo" ]; then
		echo "moviendo archivo: $archivo"
		nombre=$(basename "$archivo")
		case "$OPCION" in
			-a) mv "$archivo" "$DIRECTORIO${nombre}${CADENA}" ;;
			-b) mv "$archivo" "$DIRECTORIO${CADENA}${nombre}" ;;
		esac
	fi
done

echo "Archivos renombrados"
