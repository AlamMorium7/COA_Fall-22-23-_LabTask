.MODEL SMALL ;The size of code and data of a program can be specified by memory model using .MODEL directive

.STACK 100H  ;Allocates 100 bytes for stack area

.DATA   ; this is where we keep all data variables
MYMSG DB 'HELLO WORLD$'  ; variable

.CODE   ; this is where we keep all codes
 MAIN PROC 
     
    MOV AX,@DATA   ;name of data segment define in .DATA
    MOV DS,AX 
    
    
    
    ;now show the hello world message
    MOV AH, 9
    LEA DX, MYMSG
    INT 21H ; call DOS to Print
    
    ;exit to the disk operating system (DOS)
    MOV AX,4CH  ;AX=4CH
    INT 21H   ; calling DOS for help
MAIN ENDP  ;similar to the end of main function in C  
    
        
 END MAIN  ; the end of the whole program
