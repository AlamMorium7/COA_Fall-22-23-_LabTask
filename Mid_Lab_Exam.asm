;display my name
;display your id 
;now print alphabets in given range from user input
;e.g. input 1st character: A
;input 2nd char : F
;the output is: BCDE
;and total character:
;=======================================================

.MODEL SMALL
.STACK 100H
.DATA  
D1 DB 'MY NAME:ALAM MORIUM AKTER$' 
D2 DB 'MYID: 19-39957-1$'
D3 DB 'INPUT 1ST CHARACTER:$' 
D4 DB 'INPUT 2ND CHARACTER:$'
D5 DB 'THE OUTPUT IS:$'
D6 DB 'TOTAL CHARACTER=$'
.CODE  
    MAIN PROC  
        MOV AX,@DATA
        MOV DS,AX  ;initialize DS
        
        ;DISPLAY MSG1
        LEA DX,D1  ;get message
        MOV AH,9   ;display string function
        INT 21H    ;display string
        
        
        ;go to starting of the line   
        MOV AH,2
        MOV DL,0AH
        INT 21H    
        ;cursor position is in DL [next line]
        MOV DL,0DH
        INT 21H
        
        ;DISPLAY MSG_2
        LEA DX,D2
        MOV AH,9
        INT 21H 
        
        ;show a single character output   
        MOV AH,2
        MOV DL,0DH
        INT 21H            
        MOV DL,0AH
        INT 21H
        
        ;DISPLAY MSG_3
        LEA DX,D3
        MOV AH,9
        INT 21H 
        
        ;user input for 1st char
        MOV AH,1
        INT 21H         
        MOV DL,AL
        MOV CH,DL   ;store in CH
        
        ;show a single character output   
        MOV AH,2
        MOV DL,0DH
        INT 21H            
        MOV DL,0AH
        INT 21H 
        
        
        ;DISPLAY MSG_4
        LEA DX,D4
        MOV AH,9
        INT 21H 
        
        ;user input for 2ND char
        MOV AH,1
        INT 21H  ;character in AL       
        MOV DL, AL
        MOV CL,DL  ;save in CL
        
        ;show a single character output   
        MOV AH,2
        MOV DL,0DH
        INT 21H            
        MOV DL,0AH
        INT 21H 
        
        
        ;show a single character output   
        MOV AH,2
        MOV DL,0DH
        INT 21H            
        MOV DL,0AH
        INT 21H  
        
        ;DISPLAY MSG_5
        LEA DX,D5
        MOV AH,9
        INT 21H 
         
        ;Conditions 
        CMP CH,CL  ;compare data
        JNE loop1  ;jump if not equal
         
        loop1:        
            INC CH    ;increment
            MOV AH,2
            MOV DL,CH
            INT 21H
         
            CMP CH,CL
            JNE loop1  
            
            
            
        
        ;exit 
        EXIT:   
        MOV AH,4CH ;DOS exit function
        INT 21H    ;exit to DOS
       
        
        MAIN ENDP
    END MAIN
