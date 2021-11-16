; accept 2 integers from the user
;implement separate procedure to compute 
;and output the sum and difference
 
org 100h 
INCLUDE 'emu8086.inc'   

printn "Enter your first digit"
CALL scan_num
printn

MOV AX, CX

print "Enter your second digit" 
printn   

CALL scan_num
printn 
printn    

MOV BX, AX

CALL sum 
printn 

CALL difference


define_scan_num 
define_print_num
define_print_num_uns
ret
      
      
sum PROC    
    ADD AX, CX
    print "The sum is "
    CALL print_num
    RET
sum ENDP  


difference PROC   
    SUB BX,CX 
    MOV AX, BX
    print "The difference is "
    CALL print_num
difference ENDP
    



