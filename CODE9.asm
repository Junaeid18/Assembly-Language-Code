.MODEL SMALL
.STACK 100H
.DATA
V1 DB '  ENTER A NUMBER : $'
V2 DB '  IN RANGE  $'
V3 DB '  OUT OF RANGE  $'
.CODE
MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,V1
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    SUB BL,48
    
    CMP BL,3
    JGE L2
    
    L1:  
    LEA DX,V3
    MOV AH,9
    INT 21H
    
    JMP EXIT
    
    L2:
    CMP BL,7
    JNG L3
    JG L1 
    
    L3:
    LEA DX,V2
    MOV AH,9
    INT 21H 
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN