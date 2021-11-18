; print upper-case characters (A-E) by writing directly into the video memory (B8000-BBFFFF)

org 100h

INCLUDE "emu8086.inc" 

;Set the loop counter 
MOV CX, 4

;Set the video memory of the first character
MOV AX, 0xb800   

;Move the video memory value to the DS register
MOV DS, AX
          
;Set the offset for DS register          
MOV BX, 0000  

;Set first character to display in video memory location
MOV [BX], 'A'

;Save the first character in another register to loop through 
MOV DX, 'A' 

back:  
    ;Increment the value of DX by 1 each iteration 
    ADD DX, 1
    
    ;Increment the offset by 2 each iteration  
    ADD BX, 2 
    
    ;I have no idea how this part works, I was supposed to put MOV but put ADD by a mistake
    ADD [BX], DX

;Loop back label for 4 times (CX)    
LOOP back

ret 