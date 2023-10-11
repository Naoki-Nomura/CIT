	.file	"int_if_and_to.ct"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	p1
	.section .sdata,"aw"
	.align	2
	.type	p1, @object
	.size	p1, 4
p1:
	.word 10
	.globl	p2
	.align	2
	.type	p2, @object
	.size	p2, 4
p2:
	.word 20
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
	#(T(=)	ans	0)
	li	a5,0
	sw	a5,-20(s0)
	#
	# === gsfIf ========================================
.if1_1:
	#
	# === ccfLt ========================================
	#(T(<)	p1	p2)
	lla	a5,p1
	lw	a5,0(a5)
	lla	a4,p2
	lw	a4,0(a4)
	blt	a5,a4,.if1_TRUE
	j	.if1_FALSE
.if1_TRUE:
	#
	# === ccfAssign ========================================
	#(T(=)	ans	p1)
	lla	a5,p1
	lw	a5,0(a5)
	sw	a5,-20(s0)
	j	.if1_EXIT
.if1_FALSE:
	#
	# === ccfAssign ========================================
	#(T(=)	ans	p2)
	lla	a5,p2
	lw	a5,0(a5)
	sw	a5,-20(s0)
.if1_EXIT:
	#
	# === ccfAssign ========================================
	#(T(=)	ans	0)
	li	a5,0
	sw	a5,-20(s0)
	#
	# === gsfIf ========================================
.if2_1:
	#
	# === ccfLt ========================================
	#(T(<)	p1	p2)
	lla	a5,p1
	lw	a5,0(a5)
	lla	a4,p2
	lw	a4,0(a4)
	blt	a5,a4,.if2_TRUE
	j	.if2_FALSE
.if2_TRUE:
	#
	# === ccfAssign ========================================
	#(T(=)	ans	p1)
	lla	a5,p1
	lw	a5,0(a5)
	sw	a5,-20(s0)
	j	.if2_EXIT
.if2_FALSE:
	#
	# === ccfAssign ========================================
	#(T(=)	ans	p2)
	lla	a5,p2
	lw	a5,0(a5)
	sw	a5,-20(s0)
.if2_EXIT:
	#
	# === ccfAssign ========================================
	#(T(=)	ans	0)
	li	a5,0
	sw	a5,-20(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	ans	(T(?)	(T(<)	p1	p2)	p1	p2))
.ternary3_1:
	#
	# === ccfLt ========================================
	#(T(<)	p1	p2)
	lla	a5,p1
	lw	a5,0(a5)
	lla	a4,p2
	lw	a4,0(a4)
	blt	a5,a4,.ternary3_TRUE
	j	.ternary3_FALSE
.ternary3_TRUE:
	lla	a5,p1
	lw	a5,0(a5)
	j	.ternary3_EXIT
.ternary3_FALSE:
	lla	a5,p2
	lw	a5,0(a5)
.ternary3_EXIT:
	sw	a5,-20(s0)
	nop
	ld	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.ident	"CIT: () 0.1.0"
