	.file	"vector02.ct"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	test
	.bss
	.align	3
	.type	test, @object
	.size	test, 12
test:
	.zero 12
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16
	sd	s0,8(sp)
	addi	s0,sp,16
	#
	# === ccfAssign ========================================
	#(T(=)	test.x	100)
	li	a5,100
	lla	a4,test
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	test.y	200)
	li	a5,200
	lla	a4,test
	sw	a5,4(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	test.z	300)
	li	a5,300
	lla	a4,test
	sw	a5,8(a4)
	nop
	ld	s0,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.ident	"CIT: () 0.1.0"
