	.file	"continue02.ct"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	ary
	.bss
	.align	3
	.type	ary, @object
	.size	ary, 40
ary:
	.zero 40
	.globl	i
	.section .sbss,"aw",@nobits
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
	#(T(=)	ary[0]	1)
	li	a5,1
	lla	a4,ary
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	ary[1]	2)
	li	a5,2
	lla	a4,ary
	sw	a5,4(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	ary[2]	3)
	li	a5,3
	lla	a4,ary
	sw	a5,8(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	ary[3]	4)
	li	a5,4
	lla	a4,ary
	sw	a5,12(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	ary[4]	5)
	li	a5,5
	lla	a4,ary
	sw	a5,16(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	ary[5]	6)
	li	a5,6
	lla	a4,ary
	sw	a5,20(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	ary[6]	7)
	li	a5,7
	lla	a4,ary
	sw	a5,24(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	ary[7]	8)
	li	a5,8
	lla	a4,ary
	sw	a5,28(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	ary[8]	9)
	li	a5,9
	lla	a4,ary
	sw	a5,32(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	ary[9]	10)
	li	a5,10
	lla	a4,ary
	sw	a5,36(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	i	-1)
	li	a5,-1
	lla	a4,i
	sw	a5,0(a4)
	#
	# === gsfCommonLoop ========================================
	#(WHILE	(T(<)	i	9)
	#	{
	#		(T(POST++)	i)
	#		(IF	(T(==)	(T(%)	ary[i]	2)	0)
	#			{
	#				(CONTINUE)
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
	# === ccfEq ========================================
	#(T(==)	(T(%)	ary[i]	2)	0)
	lla	a5,ary
	lla	a4,i
	lw	a4,0(a4)
	slli	a4,a4,2
	add	a4,a5,a4
	lw	a4,0(a4)
	li	a3,2
	remw	a3,a4,a3
	sext.w	a3,a3
	li	a4,0
	beq	a3,a4,.if2_TRUE
	j	.if2_EXIT
.if2_TRUE:
	j	.while1
.if2_EXIT:
.while1_COND:
.while1_1:
	#
	# === ccfLt ========================================
	#(T(<)	i	9)
	lla	a5,i
	lw	a5,0(a5)
	li	a4,9
	blt	a5,a4,.while1
.while1_exit:
	nop
	ld	s0,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.ident	"CIT: () 0.1.0"
