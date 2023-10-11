	.file	"char02.ct"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	a
	.section .sbss,"aw",@nobits
	.type	a, @object
	.size	a, 1
a:
	.zero 1
	.globl	b
	.type	b, @object
	.size	b, 1
b:
	.zero 1
	.globl	c
	.type	c, @object
	.size	c, 1
c:
	.zero 1
	.globl	d
	.type	d, @object
	.size	d, 1
d:
	.zero 1
	.globl	e
	.type	e, @object
	.size	e, 1
e:
	.zero 1
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
	#(T(=)	a	'1')
	li	a5,49
	lla	a4,a
	sb	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	b	'2')
	li	a5,50
	lla	a4,b
	sb	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	c	'3')
	li	a5,51
	lla	a4,c
	sb	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	d	'4')
	li	a5,52
	lla	a4,d
	sb	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	e	'5')
	li	a5,53
	lla	a4,e
	sb	a5,0(a4)
	nop
	ld	s0,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.ident	"CIT: () 0.1.0"
