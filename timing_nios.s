/*
File: timing_nios.s
Description: This file is used to detect the time taken by a single operation in NIOS 
			.. in DE1SoC
			Change the code as needed
Author:		Prawar Poudel, pp0030@uah.edu
			24 March, 2020
*/

.text					/* what follows is in .text */
.global _start			/* let us export _start */
_start:
	/* let us move the address of the output Jumper in one of the register */
	movia	r15,0xff200060
	/* let us move the address of direction register in one of the register */
	movia 	r14,0xff200064

	/* set pin0 or D0 as output */
	/* input is 0 and output is 1 */
	movia	r13,0x01
	stwio	r13,0(r4)

my_label:
	/* set the output pin */
	stwio	r13,0(r15)
	add 	zero,zero,zero
	xori	r13,r13,0x01
	br my_label

.end
