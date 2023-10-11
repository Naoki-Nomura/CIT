	.file	"initialization04c4.ct"
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
	addi	sp,sp,-80
	sd	s0,72(sp)
	addi	s0,sp,80
	#
	# === ccfAssign ========================================
	#(T(=)	a.x	100)
	li	a5,100
	sw	a5,-32(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	a.y	-200)
	li	a5,-200
	sw	a5,-28(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	a.z	300)
	li	a5,300
	sw	a5,-24(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	b.x	400)
	li	a5,400
	sw	a5,-48(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	b.y	-500)
	li	a5,-500
	sw	a5,-44(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	b.z	600)
	li	a5,600
	sw	a5,-40(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	c.v	700)
	li	a5,700
	sw	a5,-72(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	c.w	800)
	li	a5,800
	sw	a5,-68(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	c.x	-900)
	li	a5,-900
	sw	a5,-64(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	c.y	1000)
	li	a5,1000
	sw	a5,-60(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	c.z	1100)
	li	a5,1100
	sw	a5,-56(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	answer	a.x)
	lw	a5,-32(s0)
	lla	a4,answer
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	answer	a.y)
	lw	a5,-28(s0)
	lla	a4,answer
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	answer	a.z)
	lw	a5,-24(s0)
	lla	a4,answer
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	answer	b.x)
	lw	a5,-48(s0)
	lla	a4,answer
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	answer	b.y)
	lw	a5,-44(s0)
	lla	a4,answer
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	answer	b.z)
	lw	a5,-40(s0)
	lla	a4,answer
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	answer	c.v)
	lw	a5,-72(s0)
	lla	a4,answer
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	answer	c.w)
	lw	a5,-68(s0)
	lla	a4,answer
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	answer	c.x)
	lw	a5,-64(s0)
	lla	a4,answer
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	answer	c.y)
	lw	a5,-60(s0)
	lla	a4,answer
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	answer	c.z)
	lw	a5,-56(s0)
	lla	a4,answer
	sw	a5,0(a4)
	nop
	ld	s0,72(sp)
	addi	sp,sp,80
	jr	ra
	.size	main, .-main
	.ident	"CIT: () 0.1.0"
