	.file	"initialization04c2.ct"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	answer
	.section .sbss,"aw",@nobits
	.align	2
	.type	answer, @object
	.size	answer, 4
answer:
	.zero 4
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-64
	sd	s0,56(sp)
	addi	s0,sp,64
	li	a5,100
	sw	a5,-20(s0)
	li	a5,-200
	sw	a5,-24(s0)
	li	a5,300
	sw	a5,-28(s0)
	li	a5,400
	sw	a5,-32(s0)
	li	a5,-500
	sw	a5,-36(s0)
	li	a5,600
	sw	a5,-40(s0)
	li	a5,700
	sw	a5,-44(s0)
	li	a5,800
	sw	a5,-48(s0)
	li	a5,-900
	sw	a5,-52(s0)
	li	a5,1000
	sw	a5,-56(s0)
	li	a5,1100
	sw	a5,-60(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	answer	va0)
	lw	a5,-20(s0)
	lla	a4,answer
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	answer	va1)
	lw	a5,-24(s0)
	lla	a4,answer
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	answer	va2)
	lw	a5,-28(s0)
	lla	a4,answer
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	answer	vb0)
	lw	a5,-32(s0)
	lla	a4,answer
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	answer	vb1)
	lw	a5,-36(s0)
	lla	a4,answer
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	answer	vb2)
	lw	a5,-40(s0)
	lla	a4,answer
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	answer	vc0)
	lw	a5,-44(s0)
	lla	a4,answer
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	answer	vc1)
	lw	a5,-48(s0)
	lla	a4,answer
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	answer	vc2)
	lw	a5,-52(s0)
	lla	a4,answer
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	answer	vc3)
	lw	a5,-56(s0)
	lla	a4,answer
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	answer	vc4)
	lw	a5,-60(s0)
	lla	a4,answer
	sw	a5,0(a4)
	nop
	ld	s0,56(sp)
	addi	sp,sp,64
	jr	ra
	.size	main, .-main
	.ident	"CIT: () 0.1.0"
