;Write and execute an assembly language program that will accept a character from user and output will be according to the following:
;If input is 'a' or 'A' display 's' otherwise display 'n'



.MODEL SMALL  

.STACK 100H  

.DATA  

.CODE   ; this is where we keep all codes
 MAIN PROC 
     
    ;take an input from user
    MOV AH,1
    INT 21H  
    
    
    CMP AL,'A'
        JE SAME  ;jump if equal 
     
    CMP AL,'a'
        JE SAME  ;jump if equal 
        
      JNE NOTSAME ;jump if not equal
      
      
    SAME:
        MOV DL,'s'
        MOV AH,2
        INT 21H
        JMP END_CASE
        
    NOTSAME:             
        MOV DL,'n'
        INT 21H 
        
    END_CASE:
        ;exit to the disk operating system (DOS)
        MOV AX,4CH  ;AX = 4CH
        INT 21H   ; calling DOS for help
    
          
 MAIN ENDP  ;similar to the end of main function in C  
    
        
 END MAIN  ; the end of the whole program