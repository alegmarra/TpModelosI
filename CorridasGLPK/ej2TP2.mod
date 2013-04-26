var SN >= 0;
var SD >= 0;

maximize Z: 20* SN + 15 * SD;  

s.t. verde: 0.25 * SN + 0.5 * SD <=15;
s.t. rojas: 0.5 * SN + 0.5 * SD <= 60;
s.t. amarillas: 0.25 * SN <= 15;
#s.t. reqBar: SD >= 10;
s.t. reqBar: SN >= 10;
