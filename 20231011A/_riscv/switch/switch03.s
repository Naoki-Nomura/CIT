	.file	"switch03.ct"
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
	#(T(=)	a	700)
	li	a5,700
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
	# === gsfSwitch ========================================
	#(SWITCH	a
	#	(DEFAULT	
	#		(T(=)	b	100)
	#		(T(=)	c	4)
	#		(BREAK)
	#	)
	#	(CASE	100
	#		(T(=)	b	1000)
	#		(T(=)	c	1)
	#		(BREAK)
	#	)
	#	(CASE	200
	#		(T(=)	b	2000)
	#		(T(=)	c	2)
	#		(BREAK)
	#	)
	#	(CASE	300
	#		(T(=)	b	3000)
	#		(T(=)	c	3)
	#		(BREAK)
	#	)
	#)
	lla	a5,a
	lw	a5,0(a5)
	#(T(==)	a	100)
	li	a4,100
	beq	a5,a4,.switch1_case_100
	#(T(==)	a	200)
	li	a4,200
	beq	a5,a4,.switch1_case_200
	#(T(==)	a	300)
	li	a4,300
	beq	a5,a4,.switch1_case_300
	j	.switch1_case_default
.switch1_case_default:
	#
	# === ccfAssign ========================================
	#(T(=)	b	100)
	li	a5,100
	lla	a4,b
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	c	4)
	li	a5,4
	lla	a4,c
	sw	a5,0(a4)
	j	.switch1_exit
.switch1_case_100:
	#
	# === ccfAssign ========================================
	#(T(=)	b	1000)
	li	a5,1000
	lla	a4,b
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	c	1)
	li	a5,1
	lla	a4,c
	sw	a5,0(a4)
	j	.switch1_exit
.switch1_case_200:
	#
	# === ccfAssign ========================================
	#(T(=)	b	2000)
	li	a5,2000
	lla	a4,b
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	c	2)
	li	a5,2
	lla	a4,c
	sw	a5,0(a4)
	j	.switch1_exit
.switch1_case_300:
	#
	# === ccfAssign ========================================
	#(T(=)	b	3000)
	li	a5,4096
	addi	a5,a5,-1096
	lla	a4,b
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	c	3)
	li	a5,3
	lla	a4,c
	sw	a5,0(a4)
	j	.switch1_exit
.switch1_exit:
	nop
	ld	s0,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.ident	"CIT: () 0.1.0"
