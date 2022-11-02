;IF AX<0
;Then replace AX by -AX
;END-IF

CMP AX,0
JNL END-IF

NEG AX
 END-IF
 
 
;IF-ELSE

IF AL<BL

Then, display the character in AL

ELSE

display the character in BL

END-IF

;

MOV AH,2

CMP AL,BL

JNBE ELSE

MOV DL,AL
JMP DISPLAY

ELSE:
MOV DL,BL

DISPLAY:
INT 21H


;SWITCH-CASE

CASE AX

<0: put -1 in BX
=0: put 0 in BX

>0: put 1 in BX

END-CASE

;

CMP AX,0

JL NEGATIVE

JE ZERO

JG POSITIVE

NEGATIVE:
MOV BX,-1
JMP END-CASE

ZERO:

MOV BX,0
JMP END-CASE

POSITIVE:
MOV BX,1
END-CASE:


;

CMP AL,1

JE ODD

CMP AL,3

JE ODD

CMP  AL,2
JE EVEN

CMP AL,4

JE EVEN

JMP END-CASE

ODD:

MOV DL,0

JMP DISPLAY

EVEN:

MOV DL,'e'

DISPLAY:
MOV AH,2
INT 21H

END-CASE


;AND-CONDITION

Read a character in AL

IF('A'<=character)and (character<='z')

Then 

DISPLAY Character

END-IF


