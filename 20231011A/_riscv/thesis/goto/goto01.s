	.file	"goto01.ct"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
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
	#(T(=)	a	0)
	li	a5,0
	sw	a5,-20(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	b	0)
	li	a5,0
	sw	a5,-24(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	c	0)
	li	a5,0
	sw	a5,-28(s0)
.label1:
	#
	# === ccfPstInc ========================================
	#(T(POST++)	a)
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	sw	a5,-20(s0)
	#
	# === ccfPstInc ========================================
	#(T(POST++)	b)
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	sw	a5,-24(s0)
	#
	# === ccfPstInc ========================================
	#(T(POST++)	c)
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	sw	a5,-28(s0)
	#
	# === gsfIf ========================================
.if2_1:
	#
	# === ccfLt ========================================
	#(T(<)	a	10)
	lw	a5,-20(s0)
	li	a4,10
	blt	a5,a4,.if2_TRUE
	j	.if2_EXIT
.if2_TRUE:
	j	.label1
.if2_EXIT:
	nop
	ld	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.ident	"CIT: () 0.1.0"
