# Resolucion TP - Modelos y Optimización I - Cátedra Sábados
# Bogado Sebastián 	 - 91707
# García Marra Alejandro - 91516
# Ejercicio 1 - 2da Entrega

/* variables  */
# Compra
var C1 >= 0;
var C2 >= 0;

# Destilado
var NL >= 0; 
var NLREF >= 0; 
var NLPR >= 0; 
var NLSU >= 0;

var NM >= 0; 
var NMREF >= 0;
var NMPR >= 0;  
var NMSU >= 0; 

var NP >= 0;  
var NPREF >= 0; 
var NPPR >= 0; 
var NPSU >= 0;

var AL >= 0;  
var ALAV >= 0;  
var ALGCRA >= 0;  
var ALACRA >= 0;  
var ALFO >= 0;  

var AP >= 0;  
var APAV >= 0;  
var APGCRA >= 0;  
var APACRA >= 0;  
var APFO >= 0;  

var RDES >= 0;
var RDESAV >= 0;
var RDESLU >= 0;
var RDESFO >= 0; 

# Reformado
var GREF >= 0;
var GREFPR >= 0;
var GREFSU >= 0;

# Craqueo
var GCRA >= 0;
var GCRAPR >= 0;
var GCRASU >= 0;

var ACRA >= 0;
var ACRAAV >= 0;
var ACRAFO >= 0;

# Ventas
var PR >= 0;
var SU >= 0;
var AV >= 0;
var FO >= 0;
var LU >= 0;

/* Funcional */
maximize Z: 700 * PR + 600 * SU + 400 * AV + 350 * FO + 150 * LU;


/*** Ecuaciones ***/

/*- Destilado -*/

/*Nafta Liviana*/
s.t. inProduccionNL:   NL = 0.1 * C1 + 0.15 * C2;
s.t. outProduccionNL:  NL = NLREF + NLPR + NLSU;

/*Nafta Mediana*/
s.t. inProduccionNM:   NM = 0.2 * C1 + 0.25 * C2;
s.t. outProduccionNM:  NM = NMREF + NMPR + NMSU;

/*Nafta Pesada*/
s.t. inProduccionNP:   NP = 0.2 * C1 + 0.18 * C2;
s.t. outProduccionNP:  NP = NPREF + NPPR + NPSU;

/*Aceite Liviano*/
s.t. inProduccionAL:   AL = 0.12 * C1 + 0.08 * C2;
s.t. outProduccionAL : AL = ALAV + ALGCRA + ALACRA + ALFO;

/*Aceite Pesado*/
s.t. inProduccionAP:   AP = 0.1 * C1;
s.t. outProduccionAP:  AP = APAV + APGCRA + APACRA + APFO;

/*Residuo Destilado*/
s.t. inProduccionRDES:   RDES = 0.13 * C1 + 0.12 * C2;
s.t. outProduccionRDES:  RDES = RDESAV + RDESLU + RDESFO;


/*- Reformado -*/

/*Gasolina Reformada*/
s.t. inProduccionGREF:   GREF = 0.6 * NLREF + 0.52 * NMREF + 0.45 * NPREF;
s.t. outProduccionGREF:  GREF = GREFPR + GREFSU;

/*- Craqueo -*/

/*Gasolina Craqueada*/
s.t. inProduccionGCRA:   GCRA = 0.28 * ALGCRA + 0.2 * APGCRA;
s.t. outProduccionGCRA:  GCRA = GCRAPR + GCRASU;

/*Aceite Craqueado*/
s.t. inProduccionACRA:   ACRA = 0.68 * ALACRA + 0.75 * APACRA;
s.t. outProduccionACRA:  ACRA = ACRAAV + ACRAFO;

/*Ventas*/
s.t. finalPR: PR = NLPR + NMPR + NPPR + GCRAPR + GREFPR;
s.t. finalSU: SU = NLSU + NMSU + NPSU + GCRASU + GREFSU;

s.t. ALpartFO: 	 1.8 * FO = ALFO;
s.t. APpartFO: 	   6 * FO = APFO;
s.t. ACRApartFO: 4.5 * FO = ACRAFO;
s.t. RDESpartFO:  18 * FO = RDESFO;

s.t. finalAV: AV = ALAV + APAV + ACRAAV + RDESAV;
s.t. finalLU: LU = RDESLU;

/** Restricciones **/

/* Destilaciones máximas de Crudos */
s.t. dispCrudo1: C1 <= 20000;
s.t. dispCrudo2: C2 <= 30000;
s.t. maxDestilado: C1 + C2 <= 45000;

/* Reformado máximo de naftas */
s.t. maxReformado: NLREF + NMREF + NPREF <= 10000;

/* Craqueo máximo de aceites */
s.t. maxCraqueo: ALGCRA + ALACRA + APGCRA + APACRA <= 8000;

/* Producción de Lubricantes */
s.t. minLub: LU >= 500;
s.t. maxLub: LU <= 1000;

/* Minimo inProducción nafta Premium */
s.t. minPremium: PR >= 0.4 * SU;

/* Octanaje nafta Premium */
s.t. minOCTPR: PR * 98 <= 100 * NLPR + 90 * NMPR + 80 * NPPR + 115 * GCRAPR + 125* GREFPR;

/* Octanaje nafta Super*/
s.t. minOCTSU: SU * 95 <= 100 * NLSU + 90 * NMSU + 80 * NPSU + 115 * GCRASU + 125* GREFSU;
s.t. maxOCTSU: SU * 97.99 >= 100 * NLSU + 90 * NMSU + 80 * NPSU + 115 * GCRASU + 125* GREFSU;

/* Presión por cm^2 de Combustible para Aviones*/
s.t. maxPresAV: AV  >= 1 * ALAV + 0.6 * APAV + 1.5 * ACRAAV + 0.05 * RDESAV;

end;
