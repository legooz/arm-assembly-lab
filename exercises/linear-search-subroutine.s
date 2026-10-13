.global _start
_start:
	
//initialize registers to 0 (to reset previous runtime)
MOV R0, #0 
MOV R1, #0
MOV R2, #0
MOV R3, #0
MOV R4, #0

//initialize the array
LDR R0, =array_num // address of array
MOV R2, #6 //size of array
MOV R3, #20 //number to search for


//branch to "subroutine"
bl subroutine



b end

//subroutine purpose to find number inside the array
subroutine:
@ INPUT:
// R0 = address of array
// R2 = size of array
// R3 = number to search for in array
@ OUTPUT
// R0 = store the result

PUSH {R4} //push r4 onto stack so we dont clobber the registers


MOV R4, #0 // = counter for loop
LDR R1, [R0], #4 // get the first element of the array

//for loop
for_loop:
CMP R4, R2 //compare r4, r2

BLT branch_lessthan //if r4 is less than branch to branch_lessthan

b not_found // if not less than, end and branch to not_found

branch_lessthan:
CMP R1, R3 //is this the number?
BEQ search_found //if so its found.

LDR R1, [R0], #4 //if not found get the next element of array

ADD R4, R4, #1 //increment counter by 1 (play as index)
b for_loop // continue loop

//if found end loop and return out of subroutine with index of number found in array
search_found:
MOV R0, R4 
POP {R4}
bx lr

//if not found assign return value to negative 1
not_found:
MOV R0, #-1
POP {R4}
bx lr
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
.data

array_num: .word 1,5,10,15,20,25