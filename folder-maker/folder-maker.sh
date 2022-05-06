#!/bin/bash
#script realizado para pruebas, usar archiovos mp3 sin licencia
#autor original Dario Ochoa
if [ $# -eq 0 ]
    then
        echo "ingresar parametros"
	echo "primer parametro: un numero (cantidad de carpetas a crear)"
	echo "segundo parametro: nombre de archivo a copiar dentro de cada carpeta creada"
	echo "ejemplo: "
	echo "./folder-maker.sh 10 coffee.mp3"
	exit 0
fi
iteration=0;
while test $iteration -lt $1; do
	name=$(cat /dev/urandom | tr -dc '[:alpha:]' | fold -w12 | head -n 1)
	echo $name
	mkdir $name
	cp $2 $name/$name.mp3 
	id3v2 -t $name $name/$name.mp3
	id3v2 -a "el dari" $name/$name.mp3 
	echo $iteration
	iteration=$((iteration+1));
done
