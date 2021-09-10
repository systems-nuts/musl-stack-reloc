.global _longjmp
.global longjmp
.type _longjmp,%function
.type longjmp,%function
_longjmp:
longjmp:
	// IHI0055B_aapcs64.pdf 5.1.1, 5.1.2 callee saved registers
	ldp x19, x20, [x0,#0]
	ldp x29, x30, [x0,#16]
	ldr x2, [x0,#40]
	mov sp, x2
	ldp d8 , d9, [x0,#48]
	ldp d10, d11, [x0,#64]
	ldp d12, d13, [x0,#80]
	ldp d14, d15, [x0,#96]

	mov x0, x1
	cbnz x1, 1f
	mov x0, #1
1:	br x30
