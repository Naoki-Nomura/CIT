	.file	"modassign01.ct"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-48
	sd	s0,40(sp)
	addi	s0,sp,48
	#
	# === ccfAssign ========================================
	#(T(=)	a	5000)
	li	a5,4096
	addi	a5,a5,904
	sw	a5,-20(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	b	7)
	li	a5,7
	sw	a5,-24(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	c	100)
	li	a5,100
	sw	a5,-28(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	ap	a&)
	addi	a5,s0,-20
	sd	a5,-36(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	bp	b&)
	addi	a5,s0,-24
	sd	a5,-44(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	a	(T(%)	a	7))
	lw	a5,-20(s0)
	li	a4,7
	remw	a4,a5,a4
	sext.w	a4,a4
	sw	a4,-20(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	a	5000)
	li	a5,4096
	addi	a5,a5,904
	sw	a5,-20(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	b	7)
	li	a5,7
	sw	a5,-24(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	a	(T(%)	a	b))
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	remw	a4,a5,a4
	sext.w	a4,a4
	sw	a4,-20(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	a	5000)
	li	a5,4096
	addi	a5,a5,904
	sw	a5,-20(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	b	7)
	li	a5,7
	sw	a5,-24(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	ap*	(T(%)	ap*	bp*))
	ld	a5,-36(s0)
	lw	a4,0(a5)
	ld	a3,-44(s0)
	lw	a2,0(a3)
	remw	a2,a4,a2
	sext.w	a2,a2
	ld	a4,-36(s0)
	sw	a2,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	a	5000)
	li	a5,4096
	addi	a5,a5,904
	sw	a5,-20(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	b	7)
	li	a5,7
	sw	a5,-24(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	c	4)
	li	a5,4
	sw	a5,-28(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	ap*	(T(%)	ap*	(T(+)	bp*	c)))
	ld	a5,-36(s0)
	lw	a4,0(a5)
	ld	a3,-44(s0)
	lw	a2,0(a3)
	lw	a1,-28(s0)
	addw	a1,a2,a1
	sext.w	a1,a1
	remw	a1,a4,a1
	sext.w	a1,a1
	ld	a4,-36(s0)
	sw	a1,0(a4)
	nop
	ld	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	main, .-main
	.ident	"CIT: () 0.1.0"