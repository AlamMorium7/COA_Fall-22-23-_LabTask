;Write and execute an assembly language program that will accept a character from user and output will be according to the following:
;If input is a vowel display 'v' otherwise display 'c'



.MODEL SMALL
.STACK 100H
.DATA
.CODE
    MAIN PROC
        ;take a single character input
        MOV AH,1
        INT 21H
        
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
            
            JNE NOTSAME
            
      ;take a single character output      
        SAME: 
            MOV DL,'v'
            MOV AH,2
            INT 21H 
            
            JMP EXIT
            
        NOTSAME: 
            MOV DL,'c'           
            INT 21H  
            
        EXIT:
           MOV AH,4CH
           INT 21H
           
           MAIN ENDP
    END MAIN
            
                    