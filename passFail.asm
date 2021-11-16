;enter mark of student. If entered marks is >= 50 print "Pass" else print "Fail"
                                                                               
org 100h 
INCLUDE 'EMU8086.INC'

printn "Enter the students mark"

CALL scan_num   
printn

MOV AX, 50

CMP CX, AX
    JGE pass
    JL fail
    
pass:
    print "Pass" 
    HLT

fail:
    print "Fail"


define_scan_num

ret