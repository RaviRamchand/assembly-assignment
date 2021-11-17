;enter mark of student. If entered marks is >= 50 print "Pass" else print "Fail"
                                                                               
org 100h 
INCLUDE 'EMU8086.INC'

printn "Enter the students mark"

;Reads what user inputed
CALL scan_num   
printn

MOV AX, 50

;Check if users input saved in CX > AX of 50
CMP CX, AX 
    JGE pass ;If grade > 50 run pass
    JL fail  ; else run fail
    
pass:
    print "Pass" 
    HLT

fail:
    print "Fail"


define_scan_num

ret