	.file	"initialization04c3.ct"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	a
	.data
	.align	3
	.type	a, @object
	.size	a, 12
a:
	.word 100
	.word -200
	.word 300
	.globl	b
	.align	3
	.type	b, @object
	.size	b, 12
b:
	.word 400
	.word -500
	.word 600
	.globl	c
	.align	3
	.type	c, @object
	.size	c, 20
c:
	.word 700
	.word 800
	.word -900
	.word 1000
	.word 1100
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
	addi	sp,sp,-16
	sd	s0,8(sp)
	addi	s0,sp,16
	#
	# === ccfAssign ========================================
	#(T(=)	answer	a.x)
	lla	a5,a
	lw	a5,0(a5)
	lla	a4,answer
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	answer	a.y)
	lla	a5,a
	lw	a5,4(a5)
	lla	a4,answer
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	answer	a.z)
	lla	a5,a
	lw	a5,8(a5)
	lla	a4,answer
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	answer	b.x)
	lla	a5,b
	lw	a5,0(a5)
	lla	a4,answer
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	answer	b.y)
	lla	a5,b
	lw	a5,4(a5)
	lla	a4,answer
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	answer	b.z)
	lla	a5,b
	lw	a5,8(a5)
	lla	a4,answer
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	answer	c.v)
	lla	a5,c
	lw	a5,0(a5)
	lla	a4,answer
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	answer	c.w)
	lla	a5,c
	lw	a5,4(a5)
	lla	a4,answer
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	answer	c.x)
	lla	a5,c
	lw	a5,8(a5)
	lla	a4,answer
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	answer	c.y)
	lla	a5,c
	lw	a5,12(a5)
	lla	a4,answer
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	answer	c.z)
	lla	a5,c
	lw	a5,16(a5)
	lla	a4,answer
	sw	a5,0(a4)
	nop
	ld	s0,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.ident	"CIT: () 0.1.0"
