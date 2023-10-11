	.file	"goto03.ct"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	err
	.section .sbss,"aw",@nobits
	.align	2
	.type	err, @object
	.size	err, 4
err:
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
	#(T(=)	err	2)
	li	a5,2
	lla	a4,err
	sw	a5,0(a4)
	#
	# === gsfIf ========================================
.if1_1:
	#
	# === ccfEq ========================================
	#(T(==)	err	1)
	lla	a5,err
	lw	a5,0(a5)
	li	a4,1
	beq	a5,a4,.if1_TRUE
	j	.if1_FALSE
.if1_TRUE:
	j	.error2
	j	.if1_EXIT
.if1_FALSE:
	#
	# === gsfIf ========================================
.if3_1:
	#
	# === ccfEq ========================================
	#(T(==)	err	2)
	lla	a5,err
	lw	a5,0(a5)
	li	a4,2
	beq	a5,a4,.if3_TRUE
	j	.if3_FALSE
.if3_TRUE:
	j	.error2
	j	.if3_EXIT
.if3_FALSE:
	#
	# === gsfIf ========================================
.if4_1:
	#
	# === ccfEq ========================================
	#(T(==)	err	3)
	lla	a5,err
	lw	a5,0(a5)
	li	a4,3
	beq	a5,a4,.if4_TRUE
	j	.if4_EXIT
.if4_TRUE:
	j	.error2
.if4_EXIT:
.if3_EXIT:
.if1_EXIT:
	#
	# === Return1 ========================================
	#(RETURN)
	nop
	j	.main_exit
.error2:
	#
	# === Return1 ========================================
	#(RETURN)
	nop
	j	.main_exit
.main_exit:
	ld	s0,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.ident	"CIT: () 0.1.0"
