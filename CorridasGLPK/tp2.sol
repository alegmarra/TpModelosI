Problem:    tp2
Rows:       39
Columns:    42
Non-zeros:  132
Status:     OPTIMAL
Objective:  Z = 18971019.9 (MAXimum)

   No.   Row name   St   Activity     Lower bound   Upper bound    Marginal
------ ------------ -- ------------- ------------- ------------- -------------
     1 Z            B     1.8971e+07                             
     2 inProduccionNL
                    NS             0            -0             =       725.539
     3 outProduccionNL
                    NS             0            -0             =      -725.539
     4 inProduccionNM
                    NS             0            -0             =       597.844
     5 outProduccionNM
                    NS             0            -0             =      -597.844
     6 inProduccionNP
                    NS             0            -0             =       470.149
     7 outProduccionNP
                    NS             0            -0             =      -470.149
     8 inProduccionAL
                    NS             0            -0             =           400
     9 outProduccionAL
                    NS             0            -0             =          -400
    10 inProduccionAP
                    NS             0            -0             =           400
    11 outProduccionAP
                    NS             0            -0             =          -400
    12 inProduccionRDES
                    NS             0            -0             =           400
    13 outProduccionRDES
                    NS             0            -0             =          -400
    14 inProduccionGREF
                    NS             0            -0             =       1044.78
    15 outProduccionGREF
                    NS             0            -0             =      -1044.78
    16 inProduccionGCRA
                    NS             0            -0             =       1428.57
    17 outProduccionGCRA
                    NS             0            -0             =      -1428.57
    18 inProduccionACRA
                    NS             0            -0             =       533.333
    19 outProduccionACRA
                    NS             0            -0             =      -533.333
    20 finalPR      NS             0            -0             =       -551.41
    21 finalSU      NS             0            -0             =       -551.41
    22 ALpartFO     NS             0            -0             =           400
    23 APpartFO     NS             0            -0             =           400
    24 ACRApartFO   NS             0            -0             =       533.333
    25 RDESpartFO   NS             0            -0             =           400
    26 finalAV      NS             0            -0             =           400
    27 finalLU      NS             0            -0             =           400
    28 dispCrudo1   NU         20000                       20000       3.23383
    29 dispCrudo2   B          25000                       30000 
    30 maxDestilado NU         45000                       45000       422.919
    31 maxReformado B        7412.94                       10000 
    32 maxCraqueo   B              0                        8000 
    33 minLub       NL           500           500                        -250
    34 maxLub       B            500                        1000 
    35 minPremium   B        20422.9            -0               
    36 minOCTPR     NU             0                          -0       12.7695
    37 minOCTSU     NU             0                          -0       12.7695
    38 maxOCTSU     B              0            -0               
    39 maxPresAV    B           5645            -0               

   No. Column name  St   Activity     Lower bound   Upper bound    Marginal
------ ------------ -- ------------- ------------- ------------- -------------
     1 C1           B          20000             0               
     2 C2           B          25000             0               
     3 NL           B           5750             0               
     4 NLREF        NL             0             0                    -98.6733
     5 NLPR         B           5750             0               
     6 NLSU         B              0             0               
     7 NM           B          10250             0               
     8 NMREF        NL             0             0                    -54.5605
     9 NMPR         B          10250             0               
    10 NMSU         B              0             0               
    11 NP           B           8500             0               
    12 NPREF        B        7412.94             0               
    13 NPPR         B        1087.06             0               
    14 NPSU         NL             0             0                       < eps
    15 AL           B           4400             0               
    16 ALAV         B           4400             0               
    17 ALGCRA       B              0             0               
    18 ALACRA       NL             0             0                    -37.3333
    19 ALFO         B              0             0               
    20 AP           B           2000             0               
    21 APAV         B           2000             0               
    22 APGCRA       NL             0             0                    -114.286
    23 APACRA       B              0             0               
    24 APFO         B              0             0               
    25 RDES         B           5600             0               
    26 RDESAV       B           5100             0               
    27 RDESLU       B            500             0               
    28 RDESFO       B              0             0               
    29 GREF         B        3335.82             0               
    30 GREFPR       B        3335.82             0               
    31 GREFSU       NL             0             0                       < eps
    32 GCRA         B              0             0               
    33 GCRAPR       NL             0             0                     -511.49
    34 GCRASU       NL             0             0                     -511.49
    35 ACRA         B              0             0               
    36 ACRAAV       NL             0             0                    -133.333
    37 ACRAFO       B              0             0               
    38 PR           B        20422.9             0               
    39 SU           NL             0             0                    -61.6915
    40 AV           B          11500             0               
    41 FO           NL             0             0                      -12370
    42 LU           B            500             0               

Karush-Kuhn-Tucker optimality conditions:

KKT.PE: max.abs.err. = 9.31e-10 on row 1
        max.rel.err. = 1.82e-12 on row 4
        High quality

KKT.PB: max.abs.err. = 1.18e-25 on column 6
        max.rel.err. = 1.18e-25 on column 6
        High quality

KKT.DE: max.abs.err. = 4.55e-13 on column 5
        max.rel.err. = 4.55e-13 on column 5
        High quality

KKT.DB: max.abs.err. = 7.56e-13 on column 31
        max.rel.err. = 7.56e-13 on column 31
        High quality

End of output
