#!/bin/bash

	# VALIDACION DE PARAMETROS
	if [ $# -eq 0 ]; then
		echo "No se pasaron parametros."
		exit 1
	fi

# DESARROLLO
	# Me pareció lo más correcto hacer un switch
	# porque asi queda mas claro que son "opciones".
	case $1 in
		-o)
		  salida=$2
		  entrada="${@:3}"
		  ;;
	esac
	cat ${entrada:-$@} > ${salida:-"/dev/stdout"}
