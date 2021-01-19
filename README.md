**Fuente**: “Data histórica del Registro de Camas diarias disponibles y
ocupadas del formato F500.2”
<a href="http://datos.susalud.gob.pe/dataset/data-hist%C3%B3rica-del-registro-de-camas-diarias-disponibles-y-ocupadas-del-formato-f5002" class="uri">http://datos.susalud.gob.pe/dataset/data-hist%C3%B3rica-del-registro-de-camas-diarias-disponibles-y-ocupadas-del-formato-f5002</a>

Notas
-----

-   **2020-09-13**: Los datos ahora incluyen in campo extra
    `fecha_registro`
-   **2020-09-21**: Algunos registros no tienen región/departamento
    asignados
-   **2020-12-04**: Los datos de hoy tienen 121,600 registros, y los de
    hace un par de días atras (2020-12-02) eran 76,072. Un aumento de
    casi el 60% de registros comparando hoy con hace dos días. Parece
    que los datos posteriores al 2020-11-27 estaban incompletos, y
    recién se han actualizado en su totalidad.
-   **2020-12-05**: Hoy se detectaron 220 registros con un incorrecto
    número de columnas, debido a que el nombre de un hospítal contiene
    una coma y no esta apropiadamente delimitado por comillas (HOSPITAL
    DE APOYO II - 2, SULLANA)
-   **2020-12-12**: Cambio no documentado en el formato de datos de
    SUSALUD, está ahora usando: `|`, como separador
    -   También, hay 247 registros con errores de formato, pues toda la
        línea está entre comillas
    -   Esto se puede ver en la muestra de datos siguiente

<!-- -->

    CORRELATIVO|FECHA_CORTE|FECHA_REGISTRO|INSTITUCION|UBIGEO|REGION|PROVINCIA|CATEGORIA|CODIGO|NOMBRE|ZONA_COVID|CAMAS_ZC_OCUPADOS|CAMAS_ZC_DISPONIBLES|CAMAS_ZC_TOTAL|CAMAS_ZNC_OCUPADOS|CAMAS_ZNC_DISPONIBLE|CAMAS_ZNC_TOTAL|UCI_ADULTOS_CAMAS_OCUPADAS|UCI_ADULTOS_CAMAS_DISPONIBLE|UCI_ADULTOS_CAMAS_TOTAL|UCI_PEDIATRIA_CAMAS_OCUPADAS|UCI_PEDIATRIA_CAMAS_DISPONIBLE|UCI_PEDIATRIA_CAMAS_TOTAL|UCIN_CAMAS_OCUPADAS|UCIN_CAMAS_DISPONIBLE|UCIN_CAMAS_TOTAL|CAMAS_HOSP_OCUPADAS|CAMAS_HOSP_DISPONIBLE|CAMAS_HOSP_TOTAL|VENTILADORES_UCI_ZC_OCUPADOS|VENTILADORES_UCI_ZC_DISPONIBLE|VENTILADORES_UCI_ZC_TOTAL|VENTILADORES_UCI_ADULTO_OCUPADOS|VENTILADORES_UCI_ADULTO_DISPONIBLE|VENTILADORES_UCI_ADULTO_TOTAL|VENTILADORES_UCI_PEDIATRIA_OCUPADOS|VENTILADORES_UCI_PEDIATRIA_DISPONIBLE|VENTILADORES_UCI_PEDIATRIA_TOTAL|VENTILADORES_UCIN_OCUPADOS|VENTILADORES_UCIN_DISPONIBLE|VENTILADORES_UCIN_TOTAL
    1|20200407|20200407|Privado|040103|AREQUIPA|AREQUIPA|II-1|00015730|CLINICA SAN JUAN DE DIOS|No|0|0|0|0|0|0|1|3|4|0|0|0|0|0|0|15|35|50|0|0|0|1|4|5|0|0|0|0|0|0
    2|20200407|20200407|Privado|040101|AREQUIPA|AREQUIPA|II-1|00016744|CLINICA VALLESUR|No|0|0|0|0|0|0|3|1|4|0|0|0|0|0|0|12|39|51|0|0|0|3|1|4|0|0|0|0|0|0
    3|20200407|20200407|Privado|060101|CAJAMARCA|CAJAMARCA|II-1|00012761|CLINICA SAN LORENZO S.R.L.|No|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|14|14|0|0|0|0|0|0|0|0|0|0|0|0

    ...

    "91|20200409|20200409|Privado|150132|LIMA|LIMA|II-1|00009090|""CLINICA """" LIMATAMBO""""""|No|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|14|16|30|0|0|0|0|0|0|0|0|0|0|0|0"

    ...

    "150|20200410|20200410|Privado|150132|LIMA|LIMA|II-1|00009090|""CLINICA """" LIMATAMBO""""""|No|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|17|13|30|0|0|0|0|0|0|0|0|0|0|0|0"

    ...

    "125468|20201211|20201211|Privado|150132|LIMA|LIMA|II-1|00009090|""CLINICA """" LIMATAMBO""""""|No|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|8|12|20|0|0|0|0|0|0|0|0|0|0|0|0"

    ...

Reporte rápido de datos
-----------------------

<table>
<caption>Data summary</caption>
<tbody>
<tr class="odd">
<td style="text-align: left;">Name</td>
<td style="text-align: left;">susalud_camas</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of rows</td>
<td style="text-align: left;">147513</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of columns</td>
<td style="text-align: left;">45</td>
</tr>
<tr class="even">
<td style="text-align: left;">_______________________</td>
<td style="text-align: left;"></td>
</tr>
<tr class="odd">
<td style="text-align: left;">Column type frequency:</td>
<td style="text-align: left;"></td>
</tr>
<tr class="even">
<td style="text-align: left;">Date</td>
<td style="text-align: left;">2</td>
</tr>
<tr class="odd">
<td style="text-align: left;">factor</td>
<td style="text-align: left;">11</td>
</tr>
<tr class="even">
<td style="text-align: left;">numeric</td>
<td style="text-align: left;">31</td>
</tr>
<tr class="odd">
<td style="text-align: left;">________________________</td>
<td style="text-align: left;"></td>
</tr>
<tr class="even">
<td style="text-align: left;">Group variables</td>
<td style="text-align: left;">None</td>
</tr>
</tbody>
</table>

**Variable type: Date**

<table>
<thead>
<tr class="header">
<th style="text-align: left;">skim_variable</th>
<th style="text-align: right;">n_missing</th>
<th style="text-align: right;">complete_rate</th>
<th style="text-align: left;">min</th>
<th style="text-align: left;">max</th>
<th style="text-align: left;">median</th>
<th style="text-align: right;">n_unique</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">fecha_corte</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: left;">2020-04-07</td>
<td style="text-align: left;">2021-01-18</td>
<td style="text-align: left;">2020-09-11</td>
<td style="text-align: right;">287</td>
</tr>
<tr class="even">
<td style="text-align: left;">fecha_registro</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: left;">2020-04-07</td>
<td style="text-align: left;">2021-01-18</td>
<td style="text-align: left;">2020-09-05</td>
<td style="text-align: right;">287</td>
</tr>
</tbody>
</table>

**Variable type: factor**

<table>
<thead>
<tr class="header">
<th style="text-align: left;">skim_variable</th>
<th style="text-align: right;">n_missing</th>
<th style="text-align: right;">complete_rate</th>
<th style="text-align: left;">ordered</th>
<th style="text-align: right;">n_unique</th>
<th style="text-align: left;">top_counts</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">mes_corte</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: left;">TRUE</td>
<td style="text-align: right;">10</td>
<td style="text-align: left;">dic: 17822, oct: 17428, nov: 17107, ago: 16898</td>
</tr>
<tr class="even">
<td style="text-align: left;">dia_semana</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: left;">TRUE</td>
<td style="text-align: right;">7</td>
<td style="text-align: left;">lun: 21280, dom: 21197, sáb: 21150, vie: 21114</td>
</tr>
<tr class="odd">
<td style="text-align: left;">institucion</td>
<td style="text-align: right;">26</td>
<td style="text-align: right;">1</td>
<td style="text-align: left;">FALSE</td>
<td style="text-align: right;">6</td>
<td style="text-align: left;">Pri: 66331, Gob: 42812, EsS: 27135, MIN: 7757</td>
</tr>
<tr class="even">
<td style="text-align: left;">ubigeo</td>
<td style="text-align: right;">26</td>
<td style="text-align: right;">1</td>
<td style="text-align: left;">FALSE</td>
<td style="text-align: right;">224</td>
<td style="text-align: left;">130: 4579, 150: 4253, 150: 3748, 150: 3649</td>
</tr>
<tr class="odd">
<td style="text-align: left;">region</td>
<td style="text-align: right;">26</td>
<td style="text-align: right;">1</td>
<td style="text-align: left;">FALSE</td>
<td style="text-align: right;">25</td>
<td style="text-align: left;">LIM: 51457, LA : 12844, ARE: 7374, JUN: 6804</td>
</tr>
<tr class="even">
<td style="text-align: left;">provincia</td>
<td style="text-align: right;">26</td>
<td style="text-align: right;">1</td>
<td style="text-align: left;">FALSE</td>
<td style="text-align: right;">129</td>
<td style="text-align: left;">LIM: 47291, TRU: 8371, ARE: 5928, CUS: 4090</td>
</tr>
<tr class="odd">
<td style="text-align: left;">distrito</td>
<td style="text-align: right;">26</td>
<td style="text-align: right;">1</td>
<td style="text-align: left;">FALSE</td>
<td style="text-align: right;">219</td>
<td style="text-align: left;">TRU: 4579, LIM: 4253, SAN: 3748, MIR: 3649</td>
</tr>
<tr class="even">
<td style="text-align: left;">categoria</td>
<td style="text-align: right;">26</td>
<td style="text-align: right;">1</td>
<td style="text-align: left;">FALSE</td>
<td style="text-align: right;">11</td>
<td style="text-align: left;">II-: 58208, II-: 38579, II-: 22759, III: 9660</td>
</tr>
<tr class="odd">
<td style="text-align: left;">codigo</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: left;">FALSE</td>
<td style="text-align: right;">579</td>
<td style="text-align: left;">000: 287, 000: 287, 000: 287, 000: 287</td>
</tr>
<tr class="even">
<td style="text-align: left;">nombre</td>
<td style="text-align: right;">26</td>
<td style="text-align: right;">1</td>
<td style="text-align: left;">FALSE</td>
<td style="text-align: right;">586</td>
<td style="text-align: left;">CLI: 568, CLI: 556, CLU: 540, OFT: 424</td>
</tr>
<tr class="odd">
<td style="text-align: left;">zona_covid</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: left;">FALSE</td>
<td style="text-align: right;">2</td>
<td style="text-align: left;">Si: 92632, No: 54881</td>
</tr>
</tbody>
</table>

**Variable type: numeric**

<table>
<thead>
<tr class="header">
<th style="text-align: left;">skim_variable</th>
<th style="text-align: right;">n_missing</th>
<th style="text-align: right;">complete_rate</th>
<th style="text-align: right;">mean</th>
<th style="text-align: right;">sd</th>
<th style="text-align: right;">p0</th>
<th style="text-align: right;">p25</th>
<th style="text-align: right;">p50</th>
<th style="text-align: right;">p75</th>
<th style="text-align: right;">p100</th>
<th style="text-align: left;">hist</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">epi_week</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">33.63</td>
<td style="text-align: right;">13.12</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">25</td>
<td style="text-align: right;">35</td>
<td style="text-align: right;">44</td>
<td style="text-align: right;">53</td>
<td style="text-align: left;">▂▃▇▇▇</td>
</tr>
<tr class="even">
<td style="text-align: left;">camas_zc_ocupados</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">2.19</td>
<td style="text-align: right;">8.25</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">146</td>
<td style="text-align: left;">▇▁▁▁▁</td>
</tr>
<tr class="odd">
<td style="text-align: left;">camas_zc_disponibles</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.50</td>
<td style="text-align: right;">1.63</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">45</td>
<td style="text-align: left;">▇▁▁▁▁</td>
</tr>
<tr class="even">
<td style="text-align: left;">camas_zc_total</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">2.70</td>
<td style="text-align: right;">8.69</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">146</td>
<td style="text-align: left;">▇▁▁▁▁</td>
</tr>
<tr class="odd">
<td style="text-align: left;">camas_znc_ocupados</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">14.93</td>
<td style="text-align: right;">58.55</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">8</td>
<td style="text-align: right;">1609</td>
<td style="text-align: left;">▇▁▁▁▁</td>
</tr>
<tr class="even">
<td style="text-align: left;">camas_znc_disponible</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">14.02</td>
<td style="text-align: right;">47.65</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">10</td>
<td style="text-align: right;">2419</td>
<td style="text-align: left;">▇▁▁▁▁</td>
</tr>
<tr class="odd">
<td style="text-align: left;">camas_znc_total</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">28.95</td>
<td style="text-align: right;">92.38</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">20</td>
<td style="text-align: right;">2563</td>
<td style="text-align: left;">▇▁▁▁▁</td>
</tr>
<tr class="even">
<td style="text-align: left;">uci_adultos_camas_ocupadas</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.82</td>
<td style="text-align: right;">2.27</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">230</td>
<td style="text-align: left;">▇▁▁▁▁</td>
</tr>
<tr class="odd">
<td style="text-align: left;">uci_adultos_camas_disponible</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.48</td>
<td style="text-align: right;">1.33</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">57</td>
<td style="text-align: left;">▇▁▁▁▁</td>
</tr>
<tr class="even">
<td style="text-align: left;">uci_adultos_camas_total</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">1.30</td>
<td style="text-align: right;">2.91</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">230</td>
<td style="text-align: left;">▇▁▁▁▁</td>
</tr>
<tr class="odd">
<td style="text-align: left;">uci_pediatria_camas_ocupadas</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.35</td>
<td style="text-align: right;">2.59</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">47</td>
<td style="text-align: left;">▇▁▁▁▁</td>
</tr>
<tr class="even">
<td style="text-align: left;">uci_pediatria_camas_disponible</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.18</td>
<td style="text-align: right;">0.88</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">83</td>
<td style="text-align: left;">▇▁▁▁▁</td>
</tr>
<tr class="odd">
<td style="text-align: left;">uci_pediatria_camas_total</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.53</td>
<td style="text-align: right;">3.01</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">89</td>
<td style="text-align: left;">▇▁▁▁▁</td>
</tr>
<tr class="even">
<td style="text-align: left;">ucin_camas_ocupadas</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.88</td>
<td style="text-align: right;">4.59</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">89</td>
<td style="text-align: left;">▇▁▁▁▁</td>
</tr>
<tr class="odd">
<td style="text-align: left;">ucin_camas_disponible</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.41</td>
<td style="text-align: right;">1.89</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">50</td>
<td style="text-align: left;">▇▁▁▁▁</td>
</tr>
<tr class="even">
<td style="text-align: left;">ucin_camas_total</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">1.29</td>
<td style="text-align: right;">6.01</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">103</td>
<td style="text-align: left;">▇▁▁▁▁</td>
</tr>
<tr class="odd">
<td style="text-align: left;">camas_hosp_ocupadas</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">24.91</td>
<td style="text-align: right;">63.49</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">21</td>
<td style="text-align: right;">1418</td>
<td style="text-align: left;">▇▁▁▁▁</td>
</tr>
<tr class="even">
<td style="text-align: left;">camas_hosp_disponible</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">24.12</td>
<td style="text-align: right;">45.86</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">11</td>
<td style="text-align: right;">25</td>
<td style="text-align: right;">4052</td>
<td style="text-align: left;">▇▁▁▁▁</td>
</tr>
<tr class="odd">
<td style="text-align: left;">camas_hosp_total</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">49.03</td>
<td style="text-align: right;">95.99</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">8</td>
<td style="text-align: right;">20</td>
<td style="text-align: right;">45</td>
<td style="text-align: right;">4100</td>
<td style="text-align: left;">▇▁▁▁▁</td>
</tr>
<tr class="even">
<td style="text-align: left;">ventiladores_uci_zc_ocupados</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">2.21</td>
<td style="text-align: right;">8.27</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">146</td>
<td style="text-align: left;">▇▁▁▁▁</td>
</tr>
<tr class="odd">
<td style="text-align: left;">ventiladores_uci_zc_disponible</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.60</td>
<td style="text-align: right;">1.81</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">45</td>
<td style="text-align: left;">▇▁▁▁▁</td>
</tr>
<tr class="even">
<td style="text-align: left;">ventiladores_uci_zc_total</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">2.81</td>
<td style="text-align: right;">8.80</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">146</td>
<td style="text-align: left;">▇▁▁▁▁</td>
</tr>
<tr class="odd">
<td style="text-align: left;">ventiladores_uci_adulto_ocupados</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.63</td>
<td style="text-align: right;">2.02</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">230</td>
<td style="text-align: left;">▇▁▁▁▁</td>
</tr>
<tr class="even">
<td style="text-align: left;">ventiladores_uci_adulto_disponible</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.47</td>
<td style="text-align: right;">1.34</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">57</td>
<td style="text-align: left;">▇▁▁▁▁</td>
</tr>
<tr class="odd">
<td style="text-align: left;">ventiladores_uci_adulto_total</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">1.10</td>
<td style="text-align: right;">2.68</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">230</td>
<td style="text-align: left;">▇▁▁▁▁</td>
</tr>
<tr class="even">
<td style="text-align: left;">ventiladores_uci_pediatria_ocupados</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.27</td>
<td style="text-align: right;">2.23</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">47</td>
<td style="text-align: left;">▇▁▁▁▁</td>
</tr>
<tr class="odd">
<td style="text-align: left;">ventiladores_uci_pediatria_disponible</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.15</td>
<td style="text-align: right;">0.82</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">33</td>
<td style="text-align: left;">▇▁▁▁▁</td>
</tr>
<tr class="even">
<td style="text-align: left;">ventiladores_uci_pediatria_total</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.42</td>
<td style="text-align: right;">2.72</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">55</td>
<td style="text-align: left;">▇▁▁▁▁</td>
</tr>
<tr class="odd">
<td style="text-align: left;">ventiladores_ucin_ocupados</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.28</td>
<td style="text-align: right;">1.91</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">139</td>
<td style="text-align: left;">▇▁▁▁▁</td>
</tr>
<tr class="even">
<td style="text-align: left;">ventiladores_ucin_disponible</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.16</td>
<td style="text-align: right;">0.74</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">21</td>
<td style="text-align: left;">▇▁▁▁▁</td>
</tr>
<tr class="odd">
<td style="text-align: left;">ventiladores_ucin_total</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">0.44</td>
<td style="text-align: right;">2.13</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">139</td>
<td style="text-align: left;">▇▁▁▁▁</td>
</tr>
</tbody>
</table>

Evolución del número de camas disponibles
-----------------------------------------

![Número de camas totales a nivel
nacional](plots/camas-totales-nacional.png)

Cambio en el uso porcentual de camas en zona COVID-19 a nivel nacional
----------------------------------------------------------------------

![Porcentaje de ocupación de camas en zona
COVID-19](plots/pct-ocupacion-zona-covid.png)

Cambios en la cantidad de ventiladores UCI en zona COVID-19
-----------------------------------------------------------

![Número de ventiladores por
Departamento](plots/uso-ventiladores-departamento.png)
