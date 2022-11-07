;Put the sum of the first 50 terms of the arithmetic sequence
;1, 5, 9, 13, ... in DX. Hints: Employ LOOP instructions to do the following. 
 
;first we find how many loops needed:
;(last term – first term )/ difference
;(148 – 1)/3 = 49 loops
;So put cx = 49

.MODEL SMALL
.STACK 100H 
.DATA  
.CODE
MAIN PROC 
    
   MOV CX,49
   MOV AX,1
   MOV BX,1
   
   TOP:
   ADD BX,3
   ADD AX,BX
   
   LOOP TOP        
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN

AX CONTAINS 4C8D
=======================================================================
.MODEL SMALL
.STACK 100H 
.DATA  
.CODE
MAIN PROC 
  MOV AX,1 ;FIRST TERM
  MOV BX,148 ;LAST TERM
  MOV DX,0
  
  TOP:
  ADD DX,AX
  INC AX
  INC AX
  INC AX
  INC AX
  
  CMP AX,BX
  JLE TOP
  
  MOV AH,4CH
  INT 21H
  
  MAIN ENDP
END MAIN

SO, AX CONTAINS 4C8D
  
  




