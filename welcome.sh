#!/bin/bash
#
## Script que muestra el usuo de variables
## de ambiente y ejecución de comandos"
#
echo "Hola ${LOGNAME}"
echo "Hoy es $(date)"
echo "Usuarios actuales conectados, y sus procesos:"
# El comando w muestra quien esta conectado
# a CLI y que se esta ejecutando
w
