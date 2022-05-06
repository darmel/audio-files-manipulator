#!/bin/bash
#script realizado para pruebas, usar archiovos mp3 sin licencia
#autor original Dario Ochoa | febrero 2022
if [ $# -eq 0 ]
    then
	echo "genera la cantidad solicitada de archivos .m3u"
	 echo "ingresar parametros"
        echo "primer parametro: un numero (cantidad de playlist-m3u a crear)"
        echo "segundo parametro: nombre de archivo.m3u copiar la cantidad de veces especificada"
        echo "ejemplo: "
        echo "./playlist-maker.sh 10 playlist.m3u"
	echo "pegar los archivos .m3u en la raiz del pendrive"
        exit 0
fi

iteration=0;
while test $iteration -lt $1; do
name=$(cat /dev/urandom | tr -dc '[:alpha:]' | fold -w12 | head -n 1)
echo $name
cp $2 $name.m3u
echo $iteration
iteration=$((iteration+1));
done
