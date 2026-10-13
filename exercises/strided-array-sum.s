/* Strided array sum. Attribution: see NOTICE.md. */


.global _start
_start:
	MOV r0, #0 // Stored saved for the addition
	MOV r1, #5 // counter for the array to add the digits of the array
	LDR r2, =0x20004000 //Load in the memory address for the start of the array
	
	// start of loop
	loop:
	
	//post-index ldr of the array 
	LDR R3, [R2], #8
	
	// add the value to r0 since it is 
	ADD r0, r0, r3
	
	// deincrement the loop by one
	SUB r1, r1, #1
	
	//compare r1 to 0 to check if the loop will end
	CMP R1, #0
	
	// loop if not equal to 0
	BNE loop 
	
	