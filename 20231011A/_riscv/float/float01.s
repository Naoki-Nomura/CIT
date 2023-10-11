	.file	"float01.ct"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	func1
	.type	func1, @function
func1:
	addi	sp,sp,-32
	sd	s0,24(sp)
	addi	s0,sp,32
	#
	# === ccfAssign ========================================
	#(T(=)	result	(T(+)	(T(+)	100	200)	300))
	li	a5,100
	li	a4,200
	addw	a4,a5,a4
	sext.w	a4,a4
	li	a5,300
	addw	a5,a4,a5
	sext.w	a5,a5
	fcvt.s.w	ft0,a5
	fsw	ft0,-20(s0)
	#
	# === Return1 ========================================
	#(RETURN	result)
	flw	ft0,-20(s0)
	fmv.x.w	a0,ft0
	j	.func1_exit
.func1_exit:
	ld	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	func1, .-func1
	.align	2
	.globl	func2
	.type	func2, @function
func2:
	addi	sp,sp,-32
	sd	s0,24(sp)
	addi	s0,sp,32
	#
	# === ccfAssign ========================================
	#(T(=)	result	(T(+)	(T(+)	100	200)	300))
	li	a5,100
	li	a4,200
	addw	a4,a5,a4
	sext.w	a4,a4
	li	a5,300
	addw	a5,a4,a5
	sext.w	a5,a5
	sw	a5,-20(s0)
	#
	# === Return1 ========================================
	#(RETURN	result)
	lw	a5,-20(s0)
	mv	a0,a5
	j	.func2_exit
.func2_exit:
	ld	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	func2, .-func2
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	addi	s0,sp,32
	#
	# === ccfAssign ========================================
	#(T(=)	a	(func1))
	#
	# === call ========================================
	#(func1)
	call	func1
	sw	a0,-20(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	b	(func2))
	#
	# === call ========================================
	#(func2)
	call	func2
	sw	a0,-24(s0)
	nop
	ld	ra,24(sp)
	ld	s0,16(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.ident	"CIT: () 0.1.0"
