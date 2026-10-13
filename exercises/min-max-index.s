/*
Lars Goozen
Homework 2
Problem 3
*/

//min value in r0, min value index in r1

.global _start
_start:
		
LDR R5, =array	// the address where the array is stored

MOV R7, #0 // value of loop start

LDR R0, [R5] // set min value

LDR R2, [R5] // set max value

loop:

CMP R8, #6 //is the loop greater than or equal to 6
BGE end_loop

ADD R8, R8, #1 //increment loop

LDR R11, [R5], #4 //post-indexing grab array value


//max value
CMP R2, R11 //R0 is max value and r11 is current value
BGT max_end
b max_value
max_value:
MOV R2, R11
MOV R3, R8
b max_end
max_end:


//min value
CMP R0, R11 //R0 is min value and r11 is current value
BLT min_end
b min_value
min_value:
MOV R0, R11
MOV R1, R8
b min_end
min_end:

b loop

end_loop:






.data
array: 	.word 2, 45, 678, 932, 12, 3

	