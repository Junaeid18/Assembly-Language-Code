.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    MOV AH,1
    INT 21H
    MOV BL,AL
    INT 21H
    MOV BH,AL
    INT 21H
    MOV CL,AL
    
    CMP BL,BH
    JGE L2
    JNG L1
    
    L1:
    CMP BH,CL
    JGE LL1
    JNG B1
    
    L2 :
     
    CMP BL,CL
    JGE LL2
    JNG B2
    
    LL1:
    
    CMP BL,CL
    JGE LLL1
    JNG LLL2
    
    LL2:
    
    CMP BH,CL
    JGE A1
    JNG A2
    
    LLL1:
    
    MOV AH,2
    MOV DL,BH
    INT 21H
    MOV DL,BL
    INT 21H
    MOV DL,CL
    INT 21H 
    
    JMP EXIT
    
    LLL2:
    
    MOV AH,2
    MOV DL,BH
    INT 21H
    MOV DL,CL
    INT 21H
    MOV DL,BL
    INT 21H  
    
    JMP EXIT
    
    A1:
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    MOV DL,BH
    INT 21H
    MOV DL,CL
    INT 21H 
    
    JMP EXIT 
    
    A2:
    MOV AH,2
    MOV DL,BL
    INT 21H
    MOV DL,CL
    INT 21H
    MOV DL,BH
    INT 21H 
    
    
    JMP EXIT
    
    B1:
    MOV AH,2
    MOV DL,CL
    INT 21H
    MOV DL,BH
    INT 21H
    MOV DL,BL
    INT 21H 
    
    JMP EXIT 
    
    B2:
    MOV AH,2
    MOV DL,CL
    INT 21H
    MOV DL,BL
    INT 21H
    MOV DL,BH
    INT 21H
     
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN