;ALP to find the factorial of a number.
	AREA PROB1,CODE,READONLY
FACT RN 1
N RN 2
COUNT RN 3
PLACE RN 4
ENTRY
	MOV N,#5
	MOV COUNT,N
	MOV PLACE,#0X40000000
LOOP
	SUBS N,#1
	MULNE FACT,COUNT,N
	MOV COUNT,FACT
	BNE LOOP
	STR FACT,[PLACE]
GO B GO
	END