#! /bin/bash

wget -O -  http://datos.susalud.gob.pe/node/223/download | sed -e 's/HOSPITAL DE APOYO II - 2, SULLANA/"HOSPITAL DE APOYO II - 2, SULLANA"/' > datos/reporte_camas.csv 

Rscript proc-inicial.R
Rscript build-readme.R
