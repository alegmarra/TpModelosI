var SN >= 0;
var SD >= 0;

maximize Z: 20* SN + 15 * SD;  

s.t. verde: 0.5 * SN + 1 * SD <=15;
s.t. rojas: 1 * SN + 1 * SD <= 60;
s.t. amarillas: 0.5 * SN <= 15;
s.t. reqBar: SD >= 10;
