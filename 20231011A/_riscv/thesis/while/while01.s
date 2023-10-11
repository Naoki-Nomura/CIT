	.file	"while01.ct"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	a
	.section .sbss,"aw",@nobits
	.align	2
	.type	a, @object
	.size	a, 4
a:
	.zero 4
	.globl	b
	.align	2
	.type	b, @object
	.size	b, 4
b:
	.zero 4
	.globl	c
	.align	2
	.type	c, @object
	.size	c, 4
c:
	.zero 4
	.globl	answer1
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
	#(T(=)	a	0)
	li	a5,0
	lla	a4,a
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	b	20)
	li	a5,20
	lla	a4,b
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	c	30)
	li	a5,30
	lla	a4,c
	sw	a5,0(a4)
	#
	# === gsfCommonLoop ========================================
	#(WHILE	0
	#	{
	#	}
	#)
	nop
	#
	# === ccfAssign ========================================
	#(T(=)	answer1	0)
	li	a5,0
	lla	a4,answer1
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	answer2	0)
	li	a5,0
	lla	a4,answer2
	sw	a5,0(a4)
	#
	# === gsfCommonLoop ========================================
	#(WHILE	0
	#	{
	#		(T(=)	answer1	100)
	#		(T(=)	answer2	200)
	#		(BREAK)
	#	}
	#)
	nop
	#
	# === gsfCommonLoop ========================================
	#(WHILE	1
	#	{
	#		(T(=)	a	(T(+)	a	1))
	#		(IF	(T(<)	10	a)
	#			{
	#				(BREAK)
	#			}
	#		)
	#	}
	#)
.while3:
	#
	# === ccfAssign ========================================
	#(T(=)	a	(T(+)	a	1))
	lla	a5,a
	lw	a5,0(a5)
	li	a4,1
	addw	a4,a5,a4
	sext.w	a4,a4
	lla	a5,a
	sw	a4,0(a5)
	#
	# === gsfIf ========================================
.if4_1:
	#
	# === ccfLt ========================================
	#(T(<)	10	a)
	li	a5,10
	lla	a4,a
	lw	a4,0(a4)
	blt	a5,a4,.if4_TRUE
	j	.if4_EXIT
.if4_TRUE:
	j	.while3_exit
.if4_EXIT:
.while3_COND:
	j	.while3
.while3_exit:
	#
	# === gsfCommonLoop ========================================
	#(WHILE	(T(<=)	a	10)
	#	{
	#		(T(=)	a	(T(+)	a	1))
	#	}
	#)
	j	.while5_COND
.while5:
	#
	# === ccfAssign ========================================
	#(T(=)	a	(T(+)	a	1))
	lla	a5,a
	lw	a5,0(a5)
	li	a4,1
	addw	a4,a5,a4
	sext.w	a4,a4
	lla	a5,a
	sw	a4,0(a5)
.while5_COND:
.while5_1:
	#
	# === ccfLe ========================================
	#(T(<=)	a	10)
	lla	a5,a
	lw	a5,0(a5)
	li	a4,10
	ble	a5,a4,.while5
.while5_exit:
	#
	# === ccfAssign ========================================
	#(T(=)	a	0)
	li	a5,0
	lla	a4,a
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	b	0)
	li	a5,0
	lla	a4,b
	sw	a5,0(a4)
	#
	# === gsfCommonLoop ========================================
	#(WHILE	(T(<=)	a	10)
	#	{
	#		(T(=)	a	(T(+)	a	1))
	#		(T(=)	b	(T(+)	b	1))
	#	}
	#)
	j	.while6_COND
.while6:
	#
	# === ccfAssign ========================================
	#(T(=)	a	(T(+)	a	1))
	lla	a5,a
	lw	a5,0(a5)
	li	a4,1
	addw	a4,a5,a4
	sext.w	a4,a4
	lla	a5,a
	sw	a4,0(a5)
	#
	# === ccfAssign ========================================
	#(T(=)	b	(T(+)	b	1))
	lla	a5,b
	lw	a5,0(a5)
	li	a4,1
	addw	a4,a5,a4
	sext.w	a4,a4
	lla	a5,b
	sw	a4,0(a5)
.while6_COND:
.while6_1:
	#
	# === ccfLe ========================================
	#(T(<=)	a	10)
	lla	a5,a
	lw	a5,0(a5)
	li	a4,10
	ble	a5,a4,.while6
.while6_exit:
	#
	# === gsfCommonLoop ========================================
	#(WHILE	(T(<=)	(T(POST++)	a)	10)
	#	{
	#		(T(=)	b	(T(+)	b	1))
	#	}
	#)
	j	.while7_COND
.while7:
	#
	# === ccfAssign ========================================
	#(T(=)	b	(T(+)	b	1))
	lla	a5,b
	lw	a5,0(a5)
	li	a4,1
	addw	a4,a5,a4
	sext.w	a4,a4
	lla	a5,b
	sw	a4,0(a5)
.while7_COND:
.while7_1:
	#
	# === ccfLe ========================================
	#(T(<=)	(T(POST++)	a)	10)
	#
	# === ccfPstInc ========================================
	#(T(POST++)	a)
	lla	a5,a
	lw	a5,0(a5)
	addiw	a5,a5,1
	sext.w	a5,a5
	lla	a4,a
	sw	a5,0(a4)
	# --- ccfPstInc
	li	a3,10
	ble	a4,a3,.while7
.while7_exit:
	nop
	ld	s0,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.ident	"CIT: () 0.1.0"
