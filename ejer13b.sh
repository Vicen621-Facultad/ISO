#!/bin/bash
# Este script te da 3 opciones para saber donde estas parado, listar los archivos del directorio actual y ver quienes estan conectados ahora mismo

PS3="Enter your choice ==> "
echo "Choose a command"

select option in Listar DondeEstoy QuienEsta Salir;
do
	case $option in
		Listar) echo "los archivos son: $(ls)" ;;
		DondeEstoy) echo "Te encontras en el directorio: $(pwd)" ;;
		QuienEsta) echo "Los usuarios conectados son: $(cat /etc/passwd)" ;;
		Salir) break ;;
		*) echo "Error: comando desconocido" ;;
	esac
done
