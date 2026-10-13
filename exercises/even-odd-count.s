/* Even and odd element count. Attribution: see NOTICE.md. */


.global _start
_start:



LDR R3, =array	// the address where the array is stored

MOV R5, #0 // start of for loop



array_loop:
CMP R5, #6 //(r5 == 6)

BGE array_loop_end //if(r5 >= 6) is true go to loop end

ADD R5, R5, #1 //increment loop

LDR R4, [R3], #4 // load each element of the array




// IS THE NUMBER EVEN OR ODD?
// AND the current integer and 00...0001 to see if the LSB is 1 or 0
AND R4, R4, #1

//Compare the AND result
CMP R4, #1




BEQ else_label // if was one it was odd if not it was even and incremenet accordingly

//if(R4 != 1)
ADD R0, R0, #1 //if even add one to r0

B endlabel //branch end

//if(R4 == 1)
else_label: // else
ADD R1, R1, #1 //if odd add one to r1

b endlabel // branch end

endlabel: // condition statement end






b array_loop //go to beginning of loop

array_loop_end: // r5 <= 6





.data
array: 	.word 2, 45, 678, 932, 12, 3
