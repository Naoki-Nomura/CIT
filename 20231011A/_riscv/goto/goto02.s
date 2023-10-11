	.file	"goto02.ct"
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
	addi	sp,sp,-32
	sd	s0,24(sp)
	addi	s0,sp,32
	#
	# === ccfAssign ========================================
	#(T(=)	answer1	0)
	li	a5,0
	lla	a4,answer1
	sw	a5,0(a4)
	#
	# === gsfCommonLoop ========================================
	#(FOR	(T(=)	i	0)	(T(<)	i	10)	(T(POST++)	i)
	#	{
	#		(FOR	(T(=)	j	0)	(T(<)	j	10)	(T(POST++)	j)
	#			{
	#				(FOR	(T(=)	k	0)	(T(<)	k	10)	(T(POST++)	k)
	#					{
	#						(T(POST++)	answer1)
	#						(IF	(T(<)	50	answer1)
	#							{
	#								(GOTO	exit)
	#							}
	#						)
	#					}
	#				)
	#			}
	#		)
	#	}
	#)
	#
	# === ccfAssign ========================================
	#(T(=)	i	0)
	li	a5,0
	sw	a5,-20(s0)
	j	.for1_COND
.for1:
	#
	# === gsfCommonLoop ========================================
	#(FOR	(T(=)	j	0)	(T(<)	j	10)	(T(POST++)	j)
	#	{
	#		(FOR	(T(=)	k	0)	(T(<)	k	10)	(T(POST++)	k)
	#			{
	#				(T(POST++)	answer1)
	#				(IF	(T(<)	50	answer1)
	#					{
	#						(GOTO	exit)
	#					}
	#				)
	#			}
	#		)
	#	}
	#)
	#
	# === ccfAssign ========================================
	#(T(=)	j	0)
	li	a5,0
	sw	a5,-24(s0)
	j	.for2_COND
.for2:
	#
	# === gsfCommonLoop ========================================
	#(FOR	(T(=)	k	0)	(T(<)	k	10)	(T(POST++)	k)
	#	{
	#		(T(POST++)	answer1)
	#		(IF	(T(<)	50	answer1)
	#			{
	#				(GOTO	exit)
	#			}
	#		)
	#	}
	#)
	#
	# === ccfAssign ========================================
	#(T(=)	k	0)
	li	a5,0
	sw	a5,-28(s0)
	j	.for3_COND
.for3:
	#
	# === ccfPstInc ========================================
	#(T(POST++)	answer1)
	lla	a5,answer1
	lw	a5,0(a5)
	addiw	a5,a5,1
	sext.w	a5,a5
	lla	a4,answer1
	sw	a5,0(a4)
	#
	# === gsfIf ========================================
.if4_1:
	#
	# === ccfLt ========================================
	#(T(<)	50	answer1)
	li	a5,50
	lla	a4,answer1
	lw	a4,0(a4)
	blt	a5,a4,.if4_TRUE
	j	.if4_EXIT
.if4_TRUE:
	j	.exit5
.if4_EXIT:
.for3_REINIT:
	#
	# === ccfPstInc ========================================
	#(T(POST++)	k)
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	sw	a5,-28(s0)
.for3_COND:
.for3_1:
	#
	# === ccfLt ========================================
	#(T(<)	k	10)
	lw	a5,-28(s0)
	li	a4,10
	blt	a5,a4,.for3
.for3_exit:
.for2_REINIT:
	#
	# === ccfPstInc ========================================
	#(T(POST++)	j)
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	sw	a5,-24(s0)
.for2_COND:
.for2_1:
	#
	# === ccfLt ========================================
	#(T(<)	j	10)
	lw	a5,-24(s0)
	li	a4,10
	blt	a5,a4,.for2
.for2_exit:
.for1_REINIT:
	#
	# === ccfPstInc ========================================
	#(T(POST++)	i)
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	sw	a5,-20(s0)
.for1_COND:
.for1_1:
	#
	# === ccfLt ========================================
	#(T(<)	i	10)
	lw	a5,-20(s0)
	li	a4,10
	blt	a5,a4,.for1
.for1_exit:
.exit5:
	#
	# === ccfAssign ========================================
	#(T(=)	answer2	answer1)
	lla	a5,answer1
	lw	a5,0(a5)
	lla	a4,answer2
	sw	a5,0(a4)
	nop
	ld	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.ident	"CIT: () 0.1.0"
