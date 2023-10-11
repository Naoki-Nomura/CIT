	.file	"eachloop02.ct"
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
	.globl	loopmax
	.section .sdata,"aw"
	.align	2
	.type	loopmax, @object
	.size	loopmax, 4
loopmax:
	.word 30
	.globl	continue_val
	.align	2
	.type	continue_val, @object
	.size	continue_val, 4
continue_val:
	.word 10
	.globl	break_val
	.align	2
	.type	break_val, @object
	.size	break_val, 4
break_val:
	.word 7
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
	#(T(=)	i	0)
	li	a5,0
	lla	a4,i
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	answer1	0)
	li	a5,0
	lla	a4,answer1
	sw	a5,0(a4)
	#
	# === gsfCommonLoop ========================================
	#(WHILE	(T(<=)	i	loopmax)
	#	{
	#		(T(POST++)	i)
	#		(IF	(T(<)	continue_val	answer1)
	#			{
	#				(CONTINUE)
	#			}
	#		)
	#		(T(=)	answer1	(T(+)	answer1	1))
	#		(IF	(T(<)	break_val	i)
	#			{
	#				(BREAK)
	#			}
	#		)
	#	}
	#)
	j	.while1_COND
.while1:
	#
	# === ccfPstInc ========================================
	#(T(POST++)	i)
	lla	a5,i
	lw	a5,0(a5)
	addiw	a5,a5,1
	sext.w	a5,a5
	lla	a4,i
	sw	a5,0(a4)
	#
	# === gsfIf ========================================
.if2_1:
	#
	# === ccfLt ========================================
	#(T(<)	continue_val	answer1)
	lla	a5,continue_val
	lw	a5,0(a5)
	lla	a4,answer1
	lw	a4,0(a4)
	blt	a5,a4,.if2_TRUE
	j	.if2_EXIT
.if2_TRUE:
	j	.while1
.if2_EXIT:
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
	#
	# === gsfIf ========================================
.if3_1:
	#
	# === ccfLt ========================================
	#(T(<)	break_val	i)
	lla	a5,break_val
	lw	a5,0(a5)
	lla	a4,i
	lw	a4,0(a4)
	blt	a5,a4,.if3_TRUE
	j	.if3_EXIT
.if3_TRUE:
	j	.while1_exit
.if3_EXIT:
.while1_COND:
.while1_1:
	#
	# === ccfLe ========================================
	#(T(<=)	i	loopmax)
	lla	a5,i
	lw	a5,0(a5)
	lla	a4,loopmax
	lw	a4,0(a4)
	ble	a5,a4,.while1
.while1_exit:
	#
	# === ccfAssign ========================================
	#(T(=)	i	0)
	li	a5,0
	lla	a4,i
	sw	a5,0(a4)
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
	#		(T(POST++)	i)
	#		(IF	(T(<)	continue_val	answer1)
	#			{
	#				(CONTINUE)
	#			}
	#		)
	#		(T(=)	answer1	(T(+)	answer1	1))
	#		(IF	(T(<)	break_val	i)
	#			{
	#				(BREAK)
	#			}
	#		)
	#	}
	#	(T(<=)	i	loopmax)
	#)
.dowhile4:
	#
	# === ccfPstInc ========================================
	#(T(POST++)	i)
	lla	a5,i
	lw	a5,0(a5)
	addiw	a5,a5,1
	sext.w	a5,a5
	lla	a4,i
	sw	a5,0(a4)
	#
	# === gsfIf ========================================
.if5_1:
	#
	# === ccfLt ========================================
	#(T(<)	continue_val	answer1)
	lla	a5,continue_val
	lw	a5,0(a5)
	lla	a4,answer1
	lw	a4,0(a4)
	blt	a5,a4,.if5_TRUE
	j	.if5_EXIT
.if5_TRUE:
	j	.dowhile4
.if5_EXIT:
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
	#
	# === gsfIf ========================================
.if6_1:
	#
	# === ccfLt ========================================
	#(T(<)	break_val	i)
	lla	a5,break_val
	lw	a5,0(a5)
	lla	a4,i
	lw	a4,0(a4)
	blt	a5,a4,.if6_TRUE
	j	.if6_EXIT
.if6_TRUE:
	j	.dowhile4_exit
.if6_EXIT:
.dowhile4_COND:
.dowhile4_1:
	#
	# === ccfLe ========================================
	#(T(<=)	i	loopmax)
	lla	a5,i
	lw	a5,0(a5)
	lla	a4,loopmax
	lw	a4,0(a4)
	ble	a5,a4,.dowhile4
.dowhile4_exit:
	#
	# === ccfAssign ========================================
	#(T(=)	answer1	0)
	li	a5,0
	lla	a4,answer1
	sw	a5,0(a4)
	#
	# === gsfCommonLoop ========================================
	#(FOR	(T(=)	i	0)	(T(<=)	i	loopmax)	(T(POST++)	i)
	#	{
	#		(IF	(T(<)	continue_val	answer1)
	#			{
	#				(CONTINUE)
	#			}
	#		)
	#		(T(=)	answer1	(T(+)	answer1	1))
	#		(IF	(T(<)	break_val	i)
	#			{
	#				(BREAK)
	#			}
	#		)
	#	}
	#)
	#
	# === ccfAssign ========================================
	#(T(=)	i	0)
	li	a5,0
	lla	a4,i
	sw	a5,0(a4)
	j	.for7_COND
.for7:
	#
	# === gsfIf ========================================
.if8_1:
	#
	# === ccfLt ========================================
	#(T(<)	continue_val	answer1)
	lla	a5,continue_val
	lw	a5,0(a5)
	lla	a4,answer1
	lw	a4,0(a4)
	blt	a5,a4,.if8_TRUE
	j	.if8_EXIT
.if8_TRUE:
	j	.for7_REINIT
.if8_EXIT:
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
	#
	# === gsfIf ========================================
.if9_1:
	#
	# === ccfLt ========================================
	#(T(<)	break_val	i)
	lla	a5,break_val
	lw	a5,0(a5)
	lla	a4,i
	lw	a4,0(a4)
	blt	a5,a4,.if9_TRUE
	j	.if9_EXIT
.if9_TRUE:
	j	.for7_exit
.if9_EXIT:
.for7_REINIT:
	#
	# === ccfPstInc ========================================
	#(T(POST++)	i)
	lla	a5,i
	lw	a5,0(a5)
	addiw	a5,a5,1
	sext.w	a5,a5
	lla	a4,i
	sw	a5,0(a4)
.for7_COND:
.for7_1:
	#
	# === ccfLe ========================================
	#(T(<=)	i	loopmax)
	lla	a5,i
	lw	a5,0(a5)
	lla	a4,loopmax
	lw	a4,0(a4)
	ble	a5,a4,.for7
.for7_exit:
	nop
	ld	s0,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.ident	"CIT: () 0.1.0"
