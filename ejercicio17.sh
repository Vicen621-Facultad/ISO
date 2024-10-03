#!/bin/bash
# Este script lista todos los archivos del directorio actual elimnando todas las 'a'
# ademas cambia las mayusculas por minusculas en los nombres

files=$(ls | tr -d aA)
echo "${files~~}"
