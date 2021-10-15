#!/bin/bash
#
# Escaner de puertos usando nc(netcat)
# escrito en BASH
#
# Verificando que parametro de ip no este vacio
if [ $# -eq 0 ]
then
	echo "Modo de uso:./portscanv2.sh [IP]"
	echo "Ejemplo: ./portscanv2.sh 192.168.1.19"
else
	echo "Favor de esperar mientras se escanean los primeros 1024 puertos..."
	nc -nvz $1 1-1024 > ${1}.txt 2>&1
	echo "Tu escaneo ha finalizado"
	echo "Podrás revisar tus resultados en el archivo: "${1}.txt
fi
