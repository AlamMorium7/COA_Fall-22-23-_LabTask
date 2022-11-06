 ;Write an assembly probram to print all the ASCII code from 0 to 255.  Hints: use jnz and dec instructions


.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC 
    
    MOV AH, 2
    MOV DL,0
    MOV CX,255
    
    TOP:
    INC DL
    DEC CX
    INT 21H
    JNZ TOP
    
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN
