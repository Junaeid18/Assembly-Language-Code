.MODEL SMALL
.STACK 100H
.DATA 
V1 DB 'TYPE NUMBER: $'
V2 DB '  SMALLER   $'
V3 DB '   GREATER  $'
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
    
    CMP BL,5
    JG L2
    
    
    LEA DX,V2
    MOV AH,9
    INT 21H
    
    JMP EXIT
    
    L2:
    
    LEA DX,V3
    MOV AH,9
    INT 21H
    
    EXIT:
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
    
    