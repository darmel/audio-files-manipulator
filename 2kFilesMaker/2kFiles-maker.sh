#!/bin/bash
if [ $# -eq 0 ]
    then
    echo "este script crea n canciones agrupadas en carpetas con 20 canciones cada una"
	echo "cambia el valor \"titulo\" de la metadata de cada cancion"
	echo "cada achivo.mp3 tiene valor de \"Album\" el nombre de la carpeta donde se encuentra"
	echo "Ingresar parametros"
	echo "   primer parametro: un numero (cantidad de canciones a crear)"
	echo "   segundo parametro: nombre de archivo a copiar dentro de cada carpeta creada"
	echo "ejemplo: "
	echo "./2kFile-maker.sh 50 coffee.mp3"
	exit 0
fi
songs=1;
while test $songs -lt $1; do
	name=$(cat /dev/urandom | tr -dc '[:alpha:]' | fold -w10 | head -n 1)
	echo $name
	mkdir $name
	cp $2 $name 
	mv $name/$2 $name/$name.mp3
	id3v2 -t $name $name/$name.mp3
	songs=$((songs+1))
	for ((c=1; c<=19; c++))
	do
		name2=$(cat /dev/urandom | tr -dc '[:alpha:]' | fold -w12 | head -n 1)
		if [ $1 -lt $songs ]
			then
			#echo $songs
			echo "salir"
			exit 0
		fi
		cp $name/$name.mp3 $name/$name2.mp3
		echo $iteration $name2
		id3v2 -t $name2 $name/$name2.mp3
		id3v2 -a "dari 8a" $name/$name2.mp3
		id3v2 -A $name $name/$name2.mp3
		songs=$((songs+1))
		echo $songs
	done 
	
done
