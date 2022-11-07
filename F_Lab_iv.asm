;Put the sum 100 + 95 + 90 + ... + 5 in AX.  Hints: Employ LOOP instructions to do the following. 

 ;first we find how many loops needed:
;(last term – first term )/ difference
;(100 – 5)/5 = 19 loops
;So put cx = 19
;==============================================================

.MODEL SMALL
.STACK 100H 

.DATA  

.CODE
MAIN PROC 
    
   MOV CX,19
   MOV AX,100 ;first term is 100
   MOV BX,100 ;bx =100 
   
   TOP:
   SUB BX,5 ; sub 5 from bx, bx=100-5
   ADD AX,BX ; now bx=95 and keep it in ax
   
   LOOP TOP
        
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN

HERE AFTER RUNNING THE PROGRAM AX REGISTER IS =4C1A ,IN DECIMAL WHICH IS 19482
================================================OR,


.MODEL SMALL
.STACK 100H 
.DATA  
.CODE
MAIN PROC 
 MOV CX,100 ;FIRST TERM
 MOV BX,5 ;DIFFERENCE IS 5
 MOV AX,0 ; AFTER DECREMENT KEEP THE SUM HERE,INITIALLY IT IS 0
 
 TOP:
 ADD AX,CX
 DEC CX
 DEC CX
 DEC CX
 DEC CX
 DEC CX
 
 CMP BX,CX
 JLE TOP
 
  MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN
 
 

