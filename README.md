Scripts sencillos pero super útiles para generar data sets para las pruebas de aplicaciones
que utilizan archivos de audio, especificamente estan hechos para archivos .mp3
los archivos presentes en el repositorio son archivos sin copyright creados por Hola Beats

2kFilesMaker:
	Genera la cantidad especificada de archivos en carpetas de a 20, modifica también la metada de cada
	archivo para cambiarle el "tittle".
	La necesidad era tener una cantidad grande (2K) de archivos de audio con titulos distintos.

albuns-maker:
	Genera la cantidad especificada de archivos con metadata "tiitle" y "Albun" distintos.
	La necesidad era tener una gran cantidad de archivos con diferente valor de "Albun" en la metadata

older-maker:
	Genera una cantidad especificada de carpetas con un archivo de audio dentro de cada una.
	La necesidad era tener una gran cantidad de carpetas con al menos un archivo de audio cada una

playlist-maker:
	Genera la cantidad especificada de listas de reproduccion en formato .m3u 
	Para utilizarlas es necesario pegar los archivos generados junto con los archivos de audio presentes
	en la raiz de un USB

Todos los scripts hacen uso de id3v2 por lo cual es necesario tenerlo instalado
sudo apt install id3v2
