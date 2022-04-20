.data
Track1: .word 72,667,72,166,67,166,74,166,76,1167,76,166,77,166,79,833,81,333,79,166,77,333,76,333,74,333,72,166,74,166,76,333,76,166,77,166,79,2334,72,166,74,166,76,166,77,166,76,1667,72,667,72,166,67,166,72,166,79,1167,79,166,81,166,83,833,84,333,83,166,81,333,79,333,77,333,74,166,72,166,76,333,76,166,77,166,79,2334,84,166,86,166,88,2001,89,2334,88,166,86,166,84,2001,83,166,84,166,86,166,83,166,84,333,79,2668,74,166,76,166,77,333,76,1667,79,2334,81,166,83,166,84,2001,86,166,88,166,89,166,86,166,87,333,84,1667,77,166,79,166,83,166,79,166,84,333,79,2334,0,0




OST_STATUS:		.word 0, 0

.text

OST.SETUP:
	la t0, Track1
	la t1, OST_STATUS
	sw t0, 4(t1)
	sw zero,0(t1)
	
	ret
	
OST.TOCA:
	la a0, OST_STATUS
	li a2, 0
	li a3, 50
	
	lw t0, 0(a0)
	beqz t0, OST.TOCA.NOTA
	
	csrr t1, 3073
	bltu t1, t0, OST.RET

OST.TOCA.NOTA:
	lw t0, 4(a0)
	lw t1, 0(t0)
	lw t2, 4(t0)
	
	beqz t1, OST.TERMINOU
	
	mv t3, a0
	
	mv a0, t1
	mv a1, t2
	li a7, 31
	ecall
	
	mv a0, t3

OST.TERMINOU:
	beqz t2, OST.SETUP
	
	csrr t3, 3073
	add t3, t3, t2
	sw t3, 0(a0)
	
	addi t0, t0, 8
	sw t0, 4(a0)
	
OST.RET:
	ret
	
	