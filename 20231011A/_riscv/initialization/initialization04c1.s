	.file	"initialization04c1.ct"
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
	#(T(=)	a[0]	100)
	li	a5,100
	sw	a5,-32(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	a[1]	-200)
	li	a5,-200
	sw	a5,-28(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	a[2]	300)
	li	a5,300
	sw	a5,-24(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	b[0]	400)
	li	a5,400
	sw	a5,-48(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	b[1]	-500)
	li	a5,-500
	sw	a5,-44(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	b[2]	600)
	li	a5,600
	sw	a5,-40(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	c[0]	700)
	li	a5,700
	sw	a5,-72(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	c[1]	800)
	li	a5,800
	sw	a5,-68(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	c[2]	-900)
	li	a5,-900
	sw	a5,-64(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	c[3]	1000)
	li	a5,1000
	sw	a5,-60(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	c[4]	1100)
	li	a5,1100
	sw	a5,-56(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	answer	a[0])
	lw	a5,-32(s0)
	lla	a4,answer
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	answer	a[1])
	lw	a5,-28(s0)
	lla	a4,answer
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	answer	a[2])
	lw	a5,-24(s0)
	lla	a4,answer
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	answer	b[0])
	lw	a5,-48(s0)
	lla	a4,answer
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	answer	b[1])
	lw	a5,-44(s0)
	lla	a4,answer
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	answer	b[2])
	lw	a5,-40(s0)
	lla	a4,answer
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	answer	c[0])
	lw	a5,-72(s0)
	lla	a4,answer
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	answer	c[1])
	lw	a5,-68(s0)
	lla	a4,answer
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	answer	c[2])
	lw	a5,-64(s0)
	lla	a4,answer
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	answer	c[3])
	lw	a5,-60(s0)
	lla	a4,answer
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	answer	c[4])
	lw	a5,-56(s0)
	lla	a4,answer
	sw	a5,0(a4)
	nop
	ld	s0,72(sp)
	addi	sp,sp,80
	jr	ra
	.size	main, .-main
	.ident	"CIT: () 0.1.0"
