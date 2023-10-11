	.file	"eachloop01.ct"
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
	.globl	i
	.align	2
	.type	i, @object
	.size	i, 4
i:
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
	# === gsfCommonLoop ========================================
	#(WHILE	(T(<=)	answer1	9)
	#	{
	#		(T(=)	answer1	(T(+)	answer1	1))
	#	}
	#)
	j	.while1_COND
.while1:
	#
	# === ccfAssign ========================================
	#(T(=)	answer1	(T(+)	answer1	1))
	lla	a5,answer1
	lw	a5,0(a5)
	li	a4,1
	addw	a4,a5,a4
	sext.w	a4,a4
	lla	a5,answer1
	sw	a4,0(a5)
.while1_COND:
.while1_1:
	#
	# === ccfLe ========================================
	#(T(<=)	answer1	9)
	lla	a5,answer1
	lw	a5,0(a5)
	li	a4,9
	ble	a5,a4,.while1
.while1_exit:
	#
	# === ccfAssign ========================================
	#(T(=)	answer1	0)
	li	a5,0
	lla	a4,answer1
	sw	a5,0(a4)
	#
	# === gsfCommonLoop ========================================
	#(DOWHILE	
	#	{
	#		(T(=)	answer1	(T(+)	answer1	1))
	#	}
	#	(T(<=)	answer1	9)
	#)
.dowhile2:
	#
	# === ccfAssign ========================================
	#(T(=)	answer1	(T(+)	answer1	1))
	lla	a5,answer1
	lw	a5,0(a5)
	li	a4,1
	addw	a4,a5,a4
	sext.w	a4,a4
	lla	a5,answer1
	sw	a4,0(a5)
.dowhile2_COND:
.dowhile2_1:
	#
	# === ccfLe ========================================
	#(T(<=)	answer1	9)
	lla	a5,answer1
	lw	a5,0(a5)
	li	a4,9
	ble	a5,a4,.dowhile2
.dowhile2_exit:
	#
	# === ccfAssign ========================================
	#(T(=)	answer1	0)
	li	a5,0
	lla	a4,answer1
	sw	a5,0(a4)
	#
	# === gsfCommonLoop ========================================
	#(FOR	(T(=)	i	0)	(T(<=)	i	9)	(T(POST++)	i)
	#	{
	#		(T(=)	answer1	(T(+)	answer1	1))
	#	}
	#)
	#
	# === ccfAssign ========================================
	#(T(=)	i	0)
	li	a5,0
	lla	a4,i
	sw	a5,0(a4)
	j	.for3_COND
.for3:
	#
	# === ccfAssign ========================================
	#(T(=)	answer1	(T(+)	answer1	1))
	lla	a5,answer1
	lw	a5,0(a5)
	li	a4,1
	addw	a4,a5,a4
	sext.w	a4,a4
	lla	a5,answer1
	sw	a4,0(a5)
.for3_REINIT:
	#
	# === ccfPstInc ========================================
	#(T(POST++)	i)
	lla	a5,i
	lw	a5,0(a5)
	addiw	a5,a5,1
	sext.w	a5,a5
	lla	a4,i
	sw	a5,0(a4)
.for3_COND:
.for3_1:
	#
	# === ccfLe ========================================
	#(T(<=)	i	9)
	lla	a5,i
	lw	a5,0(a5)
	li	a4,9
	ble	a5,a4,.for3
.for3_exit:
	nop
	ld	s0,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.ident	"CIT: () 0.1.0"
