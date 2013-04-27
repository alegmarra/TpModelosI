# Resolucion TP - Modelos y Optimización I - Cátedra Sábados
# Bogado Sebastián 	 - 91707
# García Marra Alejandro - 91516
# Ejercicio 2 - 2da Entrega

/* variables  */
var SN >= 0;
var SD >= 0;

/* funcional */
maximize Z: 20* SN + 15 * SD;  

/* Restricciones */
s.t. verde: 0.5 * SN + 1 * SD <=15;
s.t. rojas: 1 * SN + 1 * SD <= 60;
s.t. amarillas: 0.5 * SN <= 15;
s.t. reqBar: SD >= 10;
