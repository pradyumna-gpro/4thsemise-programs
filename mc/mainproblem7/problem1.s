;a. ALP to find the sum of digits of a number.
	AREA PROB1,CODE,READONLY

DD RN 1
DV RN 2
Q RN 3
R RN 4
SUM RN 5

ENTRY
	LDR DD,=123456
	LDR SUM,=0
MAINLOOP
	BL DIVIDE
	ADD SUM,R
	MOV DD,Q
	CMP DD,#0
	BNE MAINLOOP
GO B GO
	
DIVIDE
	LDR Q,=0
DIVLOOP
	SUBS DD,#10
	ADDPL Q,#1
	BPL DIVLOOP
	ADDMI R,DD,#10
	BX LR

	END