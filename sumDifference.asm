; accept 2 integers from the user
;implement separate procedure to compute 
;and output the sum and difference
 
org 100h 
INCLUDE 'emu8086.inc'   

printn "Enter your first digit"

;Save user input
CALL scan_num
printn

;Move users input into the AX register
MOV AX, CX

print "Enter your second digit" 
printn   

;Save user input
CALL scan_num
printn 
printn    

;Move first user input to BX Register
MOV BX, AX

;Call the sum procedure
CALL sum 
printn 

;Call the difference procedure
CALL difference

;Definitions
define_scan_num 
define_print_num
define_print_num_uns
ret
      

;Sum procedure definition      
sum PROC  
    
    ;Add the first user input with the second    
    ADD AX, CX
    print "The sum is "
    CALL print_num
    RET
sum ENDP  


;Difference procedure definition
difference PROC  
    
    ;Subtract first user input with second   
    SUB BX,CX 
      
    ;Move result to AX register to print using print_num
    MOV AX, BX
    print "The difference is "
    CALL print_num
difference ENDP
    



