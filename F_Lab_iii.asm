;Read a character and display it 50 times on the next line. Hints: use LOOP instructions and put cx = 50

.MODEL SMALL
.STACK 100H 

.DATA  
D1 DB 'ENTER CHARACTER: $'
D2 DB 'THANK YOU$' 

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    ;PRINT 
    LEA DX,D1
    MOV AH,9
    INT 21H 
    
    ;INPUT
    MOV AH, 1
    INT 21H     
    MOV BL,AL;MOVE IT TO BL 
        
    
    ;NEWLINE
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    MOV CX,50
    MOV DL,BL
    MOV AH,2
    
    
    TOP:
    INT 21H
    LOOP TOP
    
     ;NEWLINE
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
   
    ;PRINT 
    LEA DX,D2
    MOV AH,9
    INT 21H 
        
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN
