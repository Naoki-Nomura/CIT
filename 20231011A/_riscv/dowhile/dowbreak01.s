	.file	"dowbreak01.ct"
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
	#(T(=)	b	0)
	li	a5,0
	lla	a4,b
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	c	0)
	li	a5,0
	lla	a4,c
	sw	a5,0(a4)
	#
	# === gsfCommonLoop ========================================
	#(DOWHILE	
	#	{
	#		(T(POST++)	a)
	#		(IF	(T(<=)	10	a)
	#			{
	#				(BREAK)
	#			}
	#		)
	#		(T(POST++)	b)
	#		(IF	(T(<=)	3	b)
	#			{
	#				(BREAK)
	#			}
	#		)
	#		(T(POST++)	c)
	#	}
	#	(T(<)	a	100)
	#)
.dowhile1:
	#
	# === ccfPstInc ========================================
	#(T(POST++)	a)
	lla	a5,a
	lw	a5,0(a5)
	addiw	a5,a5,1
	sext.w	a5,a5
	lla	a4,a
	sw	a5,0(a4)
	#
	# === gsfIf ========================================
.if2_1:
	#
	# === ccfLe ========================================
	#(T(<=)	10	a)
	li	a5,10
	lla	a4,a
	lw	a4,0(a4)
	ble	a5,a4,.if2_TRUE
	j	.if2_EXIT
.if2_TRUE:
	j	.dowhile1_exit
.if2_EXIT:
	#
	# === ccfPstInc ========================================
	#(T(POST++)	b)
	lla	a5,b
	lw	a5,0(a5)
	addiw	a5,a5,1
	sext.w	a5,a5
	lla	a4,b
	sw	a5,0(a4)
	#
	# === gsfIf ========================================
.if3_1:
	#
	# === ccfLe ========================================
	#(T(<=)	3	b)
	li	a5,3
	lla	a4,b
	lw	a4,0(a4)
	ble	a5,a4,.if3_TRUE
	j	.if3_EXIT
.if3_TRUE:
	j	.dowhile1_exit
.if3_EXIT:
	#
	# === ccfPstInc ========================================
	#(T(POST++)	c)
	lla	a5,c
	lw	a5,0(a5)
	addiw	a5,a5,1
	sext.w	a5,a5
	lla	a4,c
	sw	a5,0(a4)
.dowhile1_COND:
.dowhile1_1:
	#
	# === ccfLt ========================================
	#(T(<)	a	100)
	lla	a5,a
	lw	a5,0(a5)
	li	a4,100
	blt	a5,a4,.dowhile1
.dowhile1_exit:
	nop
	ld	s0,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.ident	"CIT: () 0.1.0"
