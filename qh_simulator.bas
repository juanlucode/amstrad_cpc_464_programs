10 MODE 0:PAPER 1:PEN 3:CLS
20 LOCATE 9,12:PRINT "QH"
30 LOCATE 5,13:PRINT "SIMULATOR"
40 FOR T =0 TO 3000:NEXT T
50 MODE 1:PAPER 3:PEN 1:CLS
60 PRINT TAB(19)"QH"
70 PRINT TAB(15)"SIMULATOR"
80 PRINT:PRINT
90 PRINT TAB(15)"PROGRAMADO"
100 PRINT TAB(19)"POR"
110 PRINT TAB(12)"JUAN LUIS GARCIA"
120 PRINT:PRINT:PRINT
130 PRINT TAB(12)"PULSA UNA TECLA"
140 A$=INKEY$:IF A$="" THEN GOTO 140
150 ' INICIALIZA
160 DIN=40000
165 RESTORE:CAR=0
170 CAR=CAR+1
180 IF CAR=1 THEN GOTO 290
190 IF CAR=2 THEN GOTO 330
200 IF CAR=3 THEN GOTO 370
210 IF CAR=4 THEN GOTO 410
220 IF CAR=5 THEN GOTO 450
230 IF CAR=6 THEN GOTO 490
240 IF CAR=7 THEN GOTO 530
250 IF CAR=8 THEN GOTO 570
260 IF CAR>8 THEN 165
270 GOTO 165
290 REM CARRERA 1
300 READ NOM1$,NOM2$,NOM3$,NOM4$,MINA
310 DATA LUCHADOR,DULCE,CORRECAMINOS,INVENCIBLE,2000
320 GOTO 610
330 REM CARRERA 2
340 READ NOM1$,NOM2$,NOM3$,NOM4$,MINA
350 DATA BOLIDO,TROTAMUNDOS,GANIMEDES,ROSA,6300
360 GOTO 610
370 REM CARRERA 3
380 READ NOM1$,NOM2$,NOM3$,NOM4$,MINA
390 DATA ROCOSO,LIBERTAD,DESEO,NAVIDAD,7800
400 GOTO 610
410 REM CARRERA 4
420 READ NOM1$,NOM2$,NOM3$,NOM4$,MINA
430 DATA TRAMPOSO,NEPTUNO,CRAZY HORSE,DEPORTISTA,10000
440 GOTO 610
450 REM CARRERA 5
460 READ NOM1$,NOM2$,NOM3$,NOM4$,MINA
470 DATA BELICOSO,WINNER,SILLY HORSE,STALLONE,12430
480 GOTO 610
490 REM CARRERA 6
500 READ NOM1$,NOM2$,NOM3$,NOM4$,MINA
510 DATA GLADIS,ONCORA,PARIS,BOSTON,14100
520 GOTO 610
530 REM CARRERA 7
540 READ NOM1$,NOM2$,NOM3$,NOM4$,MINA
550 DATA DAGA,GLORIA,COPERO,NATIONAL,16500
560 GOTO 610
570 REM CARRERA 8
580 READ NOM1$,NOM2$,NOM3$,NOM4$,MINA
590 DATA TURBO II,RAMBO,KING,MEC-MEC,25000
600 GOTO 610
610 CLS
620 IF DIN<MINA THEN GOTO 1960
630 ' APOSTAR
640 MODE 1:PAPER 0:PEN 1
650 DRAW 0,399:DRAW 315,399:DRAW 315,0:DRAW 0,0
660 WINDOW #1,20,40,1,25
670 PAPER #1,1:PEN #1,0:CLS #1
680 PRINT #1
690 PRINT #1,TAB(10) "QH"
700 PRINT #1,TAB(7) "SIMULATOR"
710 PRINT #1
720 PRINT #1,TAB(5) "CARRERA:";CAR
730 PRINT #1
740 PRINT #1:PRINT #1,"1-";NOM1$
750 PRINT #1,"2-";NOM2$
760 PRINT #1,"3-";NOM3$
770 PRINT #1,"4-";NOM4$
780 PRINT #1:PRINT #1:PRINT #1
790 PRINT #1,"APUESTA MIN.:";MINA
800 PRINT:PRINT:PRINT
810 PRINT #1,"DINERO:";DIN
820 LOCATE #0,2,3:PRINT #0, "BOLETO QH"
830 PRINT #0:PRINT #0:PRINT #0:PRINT #0
840 LOCATE #0,2,7:PRINT #0,"CARRERA:";CAR
850 LOCATE #0,2,12:INPUT #0,"CABALLO N.:";CAB
860 IF CAB>4 OR CAB<1 THEN GOTO 850
870 LOCATE #0,2,17:INPUT #0,"APUESTA:";APU
880 IF APU<MINA THEN GOTO 870
890 DIN=DIN-APU
900 GOTO 910
910 ' PANTALLA
920 MODE 1:CLG:PAPER 0:PEN 1
930 MOVE 0,200:DRAW 639,200:DRAW 639,399:MOVE 0,399:DRAW 0,200
940 MOVE 0,250:DRAW 639,250
950 MOVE 0,300:DRAW 639,300
960 MOVE 0,350:DRAW 639,350
970 MOVE 0,399:DRAW 639,399
980 MOVE 620,399:DRAW 620,200
990 MOVE 20,399:DRAW 20,200
1000 LOCATE 1,2:PRINT"1"
1010 LOCATE 1,5:PRINT "2"
1020 LOCATE 1,8:PRINT "3"
1030 LOCATE 1,11:PRINT "4"
1040 LOCATE 40,2:PRINT "M"
1050 LOCATE 40,5:PRINT "E"
1060 LOCATE 40,8:PRINT "T"
1070 LOCATE 40,11:PRINT "A"
1080 WINDOW #0,1,40,16,25
1090 PAPER #0,3:CLS #0
1100 PRINT #0,"************* QH SIMULATOR *************"
1110 PRINT #0
1120 PRINT "CARRERA:";CAR
1130 PRINT "APUESTA:";APU
1140 PRINT "CABALLO:";CAB
1150 PRINT "MIN.APUESTA:";MINA
1160 PRINT "DINERO:";DIN
1170 IF DIN<0 THEN GOTO 1960
1180 REM DEFINE CARACTER
1190 SYMBOL 255,24,18,27,146,126,124,66,129
1200 WINDOW SWAP 0,1
1210 PAPER 0:PEN 3
1220 X=3
1230 X1=X
1240 X2=X
1250 X3=X
1260 X4=X
1270 LOCATE X1,2:PRINT CHR$(255)
1280 LOCATE X2,5:PRINT CHR$(255)
1290 LOCATE X3,8:PRINT CHR$(255)
1300 LOCATE X4,11:PRINT CHR$(255)
1310 ' NUMERO ALEATORIO
1320 Z=INT(RND*4)+1
1330 FOR Q=0 TO 200: NEXT Q
1340 'MUEVE CABALLOS
1350 IF Z=1 THEN GOTO 1390
1360 IF Z=2 THEN GOTO 1440
1370 IF Z=3 THEN GOTO 1490
1380 IF Z=4 THEN GOTO 1540
1390 ' IMPRIME CABALLO 1
1400 X1=X1+1
1410 IF X1=39 THEN GOTO 1590
1420 LOCATE X1,2:PRINT CHR$(32);CHR$(255)
1430 GOTO 1310
1440 ' IMPRIME CABALLO 2
1450 X2=X2+1
1460 IF X2=39 THEN GOTO 1650
1470 LOCATE X2,5:PRINT CHR$(32);CHR$(255)
1480 GOTO 1310
1490 ' IMPRIME CABALLO 3
1500 X3=X3+1
1510 IF X3=39 THEN GOTO 1710
1520 LOCATE X3,8:PRINT CHR$(32);CHR$(255)
1530 GOTO 1310
1540 ' IMPRIME CABALLO 4
1550 X4=X4+1
1560 IF X4=39 THEN GOTO 1770
1570 LOCATE X4,11:PRINT CHR$(32);CHR$(255)
1580 GOTO 1310
1590 ' GANA CABALLO 1
1600 CLS
1610 PRINT "EL CABALLO 1-";NOM1$:PRINT " HA GANADO LA CARRERA ";CAR
1620 FOR T=0 TO 3000:NEXT T
1630 IF CAB=1 THEN GOTO 1830
1640 GOTO 170
1650 ' GANA CABALLO 2
1660 CLS
1670 PRINT "EL CABALLO 2-";NOM2$:PRINT " HA GANADO LA CARRERA ";CAR
1680 FOR T=0 TO 3000:NEXT T
1690 IF CAB=2 THEN GOTO 1830
1700 GOTO 170
1710 ' GANA CABALLO 3
1720 CLS
1730 PRINT "EL CABALLO 3-";NOM3$:PRINT " HA GANADO LA CARRERA ";CAR
1740 FOR T=0 TO 3000:NEXT T
1750 IF CAB=3 THEN GOTO 1830
1760 GOTO 170
1770 ' GANA CABALLO 4
1780 CLS
1790 PRINT "EL CABALLO 4-";NOM4$:PRINT " HA GANADO LA CARRERA ";CAR
1800 FOR T=0 TO 3000:NEXT T
1810 IF CAB=4 THEN GOTO 1830
1820 GOTO 170
1830 MODE 1:PAPER 0:PEN 1
1840 MOVE 200,0:DRAW 200,399:DRAW 400,399:DRAW 400,0:MOVE 200,300:DRAW 400,300
1850 LOCATE 17,3:PRINT "COBROS"
1860 MOVE 0,0
1870 DRAW 639,0
1880 MOVE 200,175:DRAW 400,175
1890 MOVE 250,175:DRAW 250,250:DRAW 350,250:DRAW 350,175
1900 LOCATE 14,17:PRINT "HAS GANADO:"
1910 GAN=3*APU
1920 LOCATE 14,20:PRINT GAN
1930 DIN=DIN+GAN
1940 FOR T=0 TO 5000:NEXT T
1950 GOTO 170
1960 ' FINAL
1970 MODE 1:PEN 3:PAPER 1:CLS
1980 LOCATE 18,12:PRINT "ESTAS"
1990 LOCATE 16,13:PRINT "ARRUINADO"
2000 FOR P=0 TO 4000:NEXT P
2010 MODE 0:CLS
2020 LOCATE 6,13:PRINT "GAME OVER"
2030 FOR T=0 TO 4000:NEXT T
2040 GOTO 50

