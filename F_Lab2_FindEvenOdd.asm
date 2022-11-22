;IF LSB IS ZERO,THE NUMBER IS EVEN
;IF LSB IS ONE,THE NUMBER IS  ODD
;TEST command does 'AND' operation between source and destination


.MODEL SMALL
.STACK 100H
.DATA
D1 DB 0DH,0AH, 'ENTER A NUMBER :$'
D2 DB 0DH,0AH, 'IT IS EVEN$'
D3 DB 0DH,0AH, 'IT IS ODD$' 
D4 DB 'PRESS O TO EXIT$'

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX 
    
   
    MOV AH,9
    LEA DX,D4
    INT 21H  
    
    ;NEWLINE 
    MOV AH,2
    MOV DL,0DH ;CARRIAGE RETURN <START OF LINE IN LEFT>
    INT 21H
    MOV DL,0AH ;LINE PRINT  (NEW LINE)
    INT 21H
    
 TOP:  
    LEA DX,D1
    MOV AH,9
    INT 21H 
      
    MOV AH,1
    INT 21H 
    
    
    CMP AL,'O'
    JE EXIT 
    
    TEST AL,01H  ;TEST operation does not store result in destination
    JE ZERO   
    JNZ NOTZERO
    
    
    ZERO:
    LEA DX,D2
    MOV AH,9
    INT 21H 
    LOOP TOP 
    
    
    NOTZERO:
    LEA DX,D3
    MOV AH,9
    INT 21H    
    LOOP TOP 
    
    EXIT: 
    MOV AH,4CH
    INT 21H 
    
  
    MAIN ENDP
END MAIN
