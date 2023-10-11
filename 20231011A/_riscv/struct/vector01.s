	.file	"vector01.ct"
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
	#(T(=)	test.x	100)
	li	a5,100
	sw	a5,-32(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	test.y	200)
	li	a5,200
	sw	a5,-28(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	test.z	300)
	li	a5,300
	sw	a5,-24(s0)
	nop
	ld	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.ident	"CIT: () 0.1.0"
