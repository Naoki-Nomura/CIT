	.file	"char01.ct"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32
	sd	s0,24(sp)
	addi	s0,sp,32
	#
	# === ccfAssign ========================================
	#(T(=)	a	'1')
	li	a5,49
	sb	a5,-17(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	b	'2')
	li	a5,50
	sb	a5,-18(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	c	'3')
	li	a5,51
	sb	a5,-19(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	d	'4')
	li	a5,52
	sb	a5,-20(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	e	'5')
	li	a5,53
	sb	a5,-21(s0)
	nop
	ld	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.ident	"CIT: () 0.1.0"
