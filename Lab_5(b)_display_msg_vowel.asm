;Write and execute an assembly language program that will accept a character from user and output will be according to the following:
;If input is a vowel display 'Your input is a vowel' otherwise display 'Your input is not vowel'



.MODEL SMALL
.STACK 100H
.DATA 
MSG_1 DB 'Your input is a vowel$' 
MSG_2 DB 'Your input is not a vowel$'
.CODE
    MAIN PROC 
        MOV AX,@DATA
        MOV DS,AX
        
        ;take a single character input
        MOV AH,1
        INT 21H 
        
        ;now write conditions
        CMP AL,'a'
            JE SAME  
        CMP AL,'e'
            JE SAME 
        CMP AL,'i'
            JE SAME  
        CMP AL,'o'
            JE SAME  
        CMP AL,'u'
            JE SAME 
        
        CMP AL,'A'
            JE SAME  
        CMP AL,'E'
            JE SAME 
        CMP AL,'I'
            JE SAME  
        CMP AL,'O'
            JE SAME  
        CMP AL,'U'
            JE SAME       
            
            JNE NOTSAME
            
         
        SAME: 
           ;printing new line   
           MOV AH,2
           MOV DL,0AH ;ASCII ---> 10 New Line
           INT 21H      
           ;cursor position is in DL [go to next line]
           MOV DL,0DH ;ASCII ---> 13 Carriage Return
           INT 21H
            
            ;display the msg
            LEA DX,MSG_1  ;lea means least effective address
            MOV AH,9
            INT 21H 
            
            JMP EXIT
            
        NOTSAME: 
              
            MOV AH,2
            MOV DL,0AH
            INT 21H
            
            MOV DL,0DH
            INT 21H
            
            
            LEA DX,MSG_2
            MOV AH,9
            INT 21H 
            
            JMP EXIT 
            
        EXIT:
           MOV AH,4CH
           INT 21H
           
           MAIN ENDP
    END MAIN
            
                    
