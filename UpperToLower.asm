;get a character as an input from the user and convert it to lower case character

org 100h

INCLUDE 'emu8086.inc'

printn 'Enter a letter'

;Set the range of 'A' and 'B'
MOV BL, 65
MOV CL, 90

;21h/AH=01h interrupt to intake a digit from the user 
MOV AH, 01h
INT 21h

;If users input is 'A' or greater run withinA label, else run notWithinA label
CMP AL, BL
    JGE withinA
    JL notWithinA

;If users input is 'Z' or less run withinZ label, else run notWithinZ label    
withinA:
    CMP AL, 90
        JLE withinZ
        JG notWithinZ
     
    
notWithinA:
    printn 
    printn
    printn "Not within range" 
    HLT

;Change the upper case letter to a lower case letter and display using 10h/AH=0Eh interrupt     
withinZ:
    ADD AL, 32  
    printn
    printn
    print 'Your new letter is: '
    MOV AH, 0Eh
    INT 10h   
    HLT
             
notWithinZ:
    printn 
    printn
    printn "Not within range" 
    HLT

ret