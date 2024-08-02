#!/bin/bash

# VALIDACIONES
	if [ $# -lt 2 ]
	then
		echo "No se pasaron parametros suficientes."
		exit 1
	fi
	if [ $# -gt 3 ]
	then
		echo "Se pasaron parametros de más"
		exit 1
	fi

# OBTENER TEXTO | QUEDARSE CON COLUMNA | ELIMINAR VOCALES
	cat $1 | cut -d $2 -f${3:-1} | tr -d [aeiouAEIOUáéíóúÁÉÍÓÚ]
