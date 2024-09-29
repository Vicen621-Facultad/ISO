#!/bin/bash
# Stack

STACK=()

# Agrega un elemento a la pila y devuelve:
#    0 si lo agrego exitosamente
#    1 si se llamó a la función sin parametros
push() {
	if [ $# -lt 1 ]; then
		echo "Debes ingresar el elemento a pushear"
		return 1
	fi

	STACK+=("$1")
	return 0
}


# Saca un elemento de la pila y devuelve:
#    0 si lo saco exitosamente
#    1 si la pila estaba vacía
pop() {
	if [ ${#STACK[*]} -eq 0 ]; then
		echo "La stack esta vacia"
		return 1
	fi

	unset STACK[-1]
}

# Devuelve la cantidad de elementos que hay en la pila
length() {
	return ${#STACK[*]}
}

# Imprime los elementos que hay en la pila y devuelve:
#    0 si imprimió los elementos correctamente
#    1 si la pila estaba vacia
print() {
	if [ ${#STACK[*]} -eq 0 ];
	then
		echo "La stack esta vacía"
		return 1
	fi

	for element in "${STACK[*]}";
	do
		echo "$element"
	done
	return 0
}

# Pusheo 10 elementos a la stack
for i in {1..10}
do
	push $i
done

for i in {1..3}
do
	pop
done

length
print
