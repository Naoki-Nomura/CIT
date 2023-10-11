	.file	"continue01.ct"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	a1
	.section .sbss,"aw",@nobits
	.align	2
	.type	a1, @object
	.size	a1, 4
a1:
	.zero 4
	.globl	a2
	.align	2
	.type	a2, @object
	.size	a2, 4
a2:
	.zero 4
	.globl	a3
	.align	2
	.type	a3, @object
	.size	a3, 4
a3:
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
	#(T(=)	a1	0)
	li	a5,0
	lla	a4,a1
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	a2	0)
	li	a5,0
	lla	a4,a2
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	a3	0)
	li	a5,0
	lla	a4,a3
	sw	a5,0(a4)
	#
	# === gsfCommonLoop ========================================
	#(WHILE	(T(<)	a3	100)
	#	{
	#		(T(POST++)	a1)
	#		(IF	(T(<=)	a1	10)
	#			{
	#				(CONTINUE)
	#			}
	#		)
	#		(T(POST++)	a2)
	#		(IF	(T(<=)	a2	20)
	#			{
	#				(CONTINUE)
	#			}
	#		)
	#		(T(POST++)	a3)
	#	}
	#)
	j	.while1_COND
.while1:
	#
	# === ccfPstInc ========================================
	#(T(POST++)	a1)
	lla	a5,a1
	lw	a5,0(a5)
	addiw	a5,a5,1
	sext.w	a5,a5
	lla	a4,a1
	sw	a5,0(a4)
	#
	# === gsfIf ========================================
.if2_1:
	#
	# === ccfLe ========================================
	#(T(<=)	a1	10)
	lla	a5,a1
	lw	a5,0(a5)
	li	a4,10
	ble	a5,a4,.if2_TRUE
	j	.if2_EXIT
.if2_TRUE:
	j	.while1
.if2_EXIT:
	#
	# === ccfPstInc ========================================
	#(T(POST++)	a2)
	lla	a5,a2
	lw	a5,0(a5)
	addiw	a5,a5,1
	sext.w	a5,a5
	lla	a4,a2
	sw	a5,0(a4)
	#
	# === gsfIf ========================================
.if3_1:
	#
	# === ccfLe ========================================
	#(T(<=)	a2	20)
	lla	a5,a2
	lw	a5,0(a5)
	li	a4,20
	ble	a5,a4,.if3_TRUE
	j	.if3_EXIT
.if3_TRUE:
	j	.while1
.if3_EXIT:
	#
	# === ccfPstInc ========================================
	#(T(POST++)	a3)
	lla	a5,a3
	lw	a5,0(a5)
	addiw	a5,a5,1
	sext.w	a5,a5
	lla	a4,a3
	sw	a5,0(a4)
.while1_COND:
.while1_1:
	#
	# === ccfLt ========================================
	#(T(<)	a3	100)
	lla	a5,a3
	lw	a5,0(a5)
	li	a4,100
	blt	a5,a4,.while1
.while1_exit:
	nop
	ld	s0,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.ident	"CIT: () 0.1.0"
