INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
         PRINTN 'JUNAEID'
         PRINT 'JUBAEIR'
         
         EXIT:
         MOV AH,4
         INT 21H
         MAIN ENDP
END MAIN