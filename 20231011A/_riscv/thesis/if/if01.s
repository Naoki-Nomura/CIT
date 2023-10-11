	.file	"if01.ct"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	answer1
	.section .sbss,"aw",@nobits
	.align	2
	.type	answer1, @object
	.size	answer1, 4
answer1:
	.zero 4
	.globl	answer2
	.align	2
	.type	answer2, @object
	.size	answer2, 4
answer2:
	.zero 4
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
	#(T(=)	answer1	0)
	li	a5,0
	lla	a4,answer1
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	answer2	5)
	li	a5,5
	lla	a4,answer2
	sw	a5,0(a4)
	#
	# === gsfIf ========================================
.if1_1:
	#
	# === ccfEq ========================================
	#(T(==)	answer1	0)
	lla	a5,answer1
	lw	a5,0(a5)
	li	a4,0
	beq	a5,a4,.if1_TRUE
	j	.if1_EXIT
.if1_TRUE:
	#
	# === ccfAssign ========================================
	#(T(=)	answer1	1)
	li	a5,1
	lla	a4,answer1
	sw	a5,0(a4)
.if1_EXIT:
	#
	# === ccfAssign ========================================
	#(T(=)	answer1	2)
	li	a5,2
	lla	a4,answer1
	sw	a5,0(a4)
	#
	# === gsfIf ========================================
.if2_1:
	#
	# === ccfEq ========================================
	#(T(==)	answer1	0)
	lla	a5,answer1
	lw	a5,0(a5)
	li	a4,0
	beq	a5,a4,.if2_TRUE
	j	.if2_FALSE
.if2_TRUE:
	#
	# === ccfAssign ========================================
	#(T(=)	answer1	1)
	li	a5,1
	lla	a4,answer1
	sw	a5,0(a4)
	j	.if2_EXIT
.if2_FALSE:
	#
	# === ccfAssign ========================================
	#(T(=)	answer1	3)
	li	a5,3
	lla	a4,answer1
	sw	a5,0(a4)
.if2_EXIT:
	nop
	ld	s0,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.ident	"CIT: () 0.1.0"
