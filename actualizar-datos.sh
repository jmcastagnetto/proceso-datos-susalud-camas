#! /bin/bash

wget -O -  http://datos.susalud.gob.pe/node/223/download | iconv  -f ISO_8859-1 -t UTF-8  > datos/reporte_camas.csv 

# revisar si el archivo descargado a cambiado
sha1sum --status -c sha1sum-orig.txt

if [ $? -eq 0 ]
then
	echo "Archivo de datos no ha cambiado"
else
	echo "Procesando los datos"
	Rscript proc-inicial.R
	Rscript build-readme.R
	sha1sum datos/reporte_camas.csv > sha1sum-orig.txt
fi
