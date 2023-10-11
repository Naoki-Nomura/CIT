	.file	"if_and_or01.ct"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	val1
	.section .sdata,"aw"
	.align	2
	.type	val1, @object
	.size	val1, 4
val1:
	.word 1
	.globl	val2
	.align	2
	.type	val2, @object
	.size	val2, 4
val2:
	.word 2
	.globl	val3
	.align	2
	.type	val3, @object
	.size	val3, 4
val3:
	.word 3
	.globl	val4
	.align	2
	.type	val4, @object
	.size	val4, 4
val4:
	.word 4
	.globl	val5
	.align	2
	.type	val5, @object
	.size	val5, 4
val5:
	.word 5
	.globl	val6
	.align	2
	.type	val6, @object
	.size	val6, 4
val6:
	.word 6
	.globl	val7
	.align	2
	.type	val7, @object
	.size	val7, 4
val7:
	.word 7
	.globl	val8
	.align	2
	.type	val8, @object
	.size	val8, 4
val8:
	.word 8
	.globl	val9
	.align	2
	.type	val9, @object
	.size	val9, 4
val9:
	.word 9
	.globl	answer1
	.section .sbss,"aw",@nobits
	.align	2
	.type	answer1, @object
	.size	answer1, 4
answer1:
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
	# === gsfIf ========================================
.if1_1:
	#
	# === ccfEq ========================================
	#(T(==)	val1	1)
	lla	a5,val1
	lw	a5,0(a5)
	li	a4,1
	beq	a5,a4,.if1_1_TRUE
.if1_1_FALSE:
	li	t0,0
	j	.if1_1_EXIT
.if1_1_TRUE:
	li	t0,1
.if1_1_EXIT:
.if1_2:
	#
	# === ccfEq ========================================
	#(T(==)	val2	2)
	lla	a5,val2
	lw	a5,0(a5)
	li	a4,2
	beq	a5,a4,.if1_2_TRUE
.if1_2_FALSE:
	li	t1,0
	j	.if1_2_EXIT
.if1_2_TRUE:
	li	t1,1
.if1_2_EXIT:
.if1_3:
	# and .if1_1 .if1_2
	and	t0,t0,t1
	li	t1,1
	beq	t0,t1,.if1_3_TRUE
.if1_3_FALSE:
	li	t0,0
	j	.if1_3_EXIT
.if1_3_TRUE:
	li	t0,1
.if1_3_EXIT:
.if1_4:
	#
	# === ccfEq ========================================
	#(T(==)	val3	3)
	lla	a5,val3
	lw	a5,0(a5)
	li	a4,3
	beq	a5,a4,.if1_4_TRUE
.if1_4_FALSE:
	li	t1,0
	j	.if1_4_EXIT
.if1_4_TRUE:
	li	t1,1
.if1_4_EXIT:
.if1_5:
	# and .if1_3 .if1_4
	and	t0,t0,t1
	li	t1,1
	beq	t0,t1,.if1_5_TRUE
.if1_5_FALSE:
	li	t0,0
	j	.if1_5_EXIT
.if1_5_TRUE:
	li	t0,1
.if1_5_EXIT:
.if1_6:
	#
	# === ccfEq ========================================
	#(T(==)	val4	4)
	lla	a5,val4
	lw	a5,0(a5)
	li	a4,4
	beq	a5,a4,.if1_6_TRUE
.if1_6_FALSE:
	li	t1,0
	j	.if1_6_EXIT
.if1_6_TRUE:
	li	t1,1
.if1_6_EXIT:
.if1_7:
	# and .if1_5 .if1_6
	and	t0,t0,t1
	li	t1,1
	beq	t0,t1,.if1_7_TRUE
.if1_7_FALSE:
	li	t0,0
	j	.if1_7_EXIT
.if1_7_TRUE:
	li	t0,1
.if1_7_EXIT:
.if1_8:
	#
	# === ccfEq ========================================
	#(T(==)	val5	5)
	lla	a5,val5
	lw	a5,0(a5)
	li	a4,5
	beq	a5,a4,.if1_8_TRUE
.if1_8_FALSE:
	li	t1,0
	j	.if1_8_EXIT
.if1_8_TRUE:
	li	t1,1
.if1_8_EXIT:
.if1_9:
	#
	# === ccfEq ========================================
	#(T(==)	val6	6)
	lla	a5,val6
	lw	a5,0(a5)
	li	a4,6
	beq	a5,a4,.if1_9_TRUE
.if1_9_FALSE:
	li	t2,0
	j	.if1_9_EXIT
.if1_9_TRUE:
	li	t2,1
.if1_9_EXIT:
.if1_10:
	# and .if1_8 .if1_9
	and	t1,t1,t2
	li	t2,1
	beq	t1,t2,.if1_10_TRUE
.if1_10_FALSE:
	li	t1,0
	j	.if1_10_EXIT
.if1_10_TRUE:
	li	t1,1
.if1_10_EXIT:
.if1_11:
	#
	# === ccfEq ========================================
	#(T(==)	val7	7)
	lla	a5,val7
	lw	a5,0(a5)
	li	a4,7
	beq	a5,a4,.if1_11_TRUE
.if1_11_FALSE:
	li	t2,0
	j	.if1_11_EXIT
.if1_11_TRUE:
	li	t2,1
.if1_11_EXIT:
.if1_12:
	# and .if1_10 .if1_11
	and	t1,t1,t2
	li	t2,1
	beq	t1,t2,.if1_12_TRUE
.if1_12_FALSE:
	li	t1,0
	j	.if1_12_EXIT
.if1_12_TRUE:
	li	t1,1
.if1_12_EXIT:
.if1_13:
	# or .if1_7 .if1_12
	or	t0,t0,t1
	li	t1,1
	beq	t0,t1,.if1_13_TRUE
.if1_13_FALSE:
	li	t0,0
	j	.if1_13_EXIT
.if1_13_TRUE:
	li	t0,1
.if1_13_EXIT:
.if1_14:
	#
	# === ccfEq ========================================
	#(T(==)	val8	8)
	lla	a5,val8
	lw	a5,0(a5)
	li	a4,8
	beq	a5,a4,.if1_14_TRUE
.if1_14_FALSE:
	li	t1,0
	j	.if1_14_EXIT
.if1_14_TRUE:
	li	t1,1
.if1_14_EXIT:
.if1_15:
	# or .if1_13 .if1_14
	or	t0,t0,t1
	li	t1,1
	beq	t0,t1,.if1_15_TRUE
.if1_15_FALSE:
	li	t0,0
	j	.if1_15_EXIT
.if1_15_TRUE:
	li	t0,1
.if1_15_EXIT:
.if1_16:
	#
	# === ccfEq ========================================
	#(T(==)	val9	9)
	lla	a5,val9
	lw	a5,0(a5)
	li	a4,9
	beq	a5,a4,.if1_16_TRUE
.if1_16_FALSE:
	li	t1,0
	j	.if1_16_EXIT
.if1_16_TRUE:
	li	t1,1
.if1_16_EXIT:
.if1_17:
	# or .if1_15 .if1_16
	or	t0,t0,t1
	li	t1,1
	beq	t0,t1,.if1_17_TRUE
.if1_17_FALSE:
	li	t0,0
	j	.if1_17_EXIT
.if1_17_TRUE:
	li	t0,1
.if1_17_EXIT:
	li	a5,1
	bne	t0,a5,.if1_FALSE
.if1_TRUE:
	#
	# === ccfAssign ========================================
	#(T(=)	answer1	10)
	li	a5,10
	lla	a4,answer1
	sw	a5,0(a4)
	j	.if1_EXIT
.if1_FALSE:
	#
	# === ccfAssign ========================================
	#(T(=)	answer1	-10)
	li	a5,-10
	lla	a4,answer1
	sw	a5,0(a4)
.if1_EXIT:
	nop
	ld	s0,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.ident	"CIT: () 0.1.0"
