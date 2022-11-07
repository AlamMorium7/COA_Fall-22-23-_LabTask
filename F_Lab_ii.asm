;Write a program to display a "?", read two capital letters, and display them on the next line In alphabetical order. Hints: use cmp, jg, xchg

;Sample Output
;Enter character: CB 
;BC
;Thank you. 



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
    
    ;TAKE ANOTHER INPUT
    MOV AH, 1
    INT 21H 
    
    MOV CL,AL;MOVE IT TO CL
    
    ;NEWLINE
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    
    CMP BL,CL
    JG XCHANGE ;JUMP IF GREATER THAN
    JL SAME     ;JUMP IF LESS THAN
    
    
    XCHANGE:
    XCHG CL,BL
    MOV AH,2
    MOV DL,BL
    
    INT 21H
    MOV AH,2
    MOV DL,CL   
    INT 21H
    
    
    
   
   SAME: 
   MOV AH,2 
   MOV DL,BL
  
   INT 21H 
   MOV AH,2
   MOV DL,CL   
   INT 21H  
   
   JMP EXIT  
    
    EXIT: 
    
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
