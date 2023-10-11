	.file	"assign01.ct"
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
	#(T(=)	a	10)
	li	a5,10
	sw	a5,-20(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	a	(T(=)	b	(T(=)	c	20)))
	#
	# === ccfAssign ========================================
	#(T(=)	b	(T(=)	c	20))
	#
	# === ccfAssign ========================================
	#(T(=)	c	20)
	li	a5,20
	sw	a5,-28(s0)
	sw	a5,-24(s0)
	sw	a5,-20(s0)
	nop
	ld	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.ident	"CIT: () 0.1.0"
