#!/bin/bash
#script realizado para pruebas, usar archiovos mp3 sin licencia
#autor original Dario Ochoa
if [ $# -eq 0 ]
    then
	echo "este scripts crea N archivos de musica, todos con valor diferente de  ALBUN en metadata"
        echo "ingresar parametros"
	echo "primer parametro: un numero (cantidad de archivos con DIFERENTE valor de  ALBUN)"
	echo "segundo parametro: nombre de archivo a copiar dentro de la carpeta Nalbuns (cualquier .mp3 para usar de base)"
	echo "ejemplo: "
	echo "./albuns-maker.sh 10 coffee.mp3 (esto va  a crear 10 .mp3 todos con distinto valor de ALBUN en una carpeta Nalbuns"
	echo "es necesario tener isntalado id3v2"
	echo "sudo apt install id3v2"
	exit 0
fi
mkdir Nalbuns
cd Nalbuns
iteration=0;
while test $iteration -lt $1; do
name=$(cat /dev/urandom | tr -dc '[:alpha:]' | fold -w15 | head -n 1)
echo $name

cp ../$2 ./$name.mp3 

id3v2 -t $name $name.mp3
id3v2 -A $name $name.mp3
id3v2 -a "dari 8a" $name.mp3

echo $iteration
iteration=$((iteration+1));
done
