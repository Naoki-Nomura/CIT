	.file	"funcarg01.ct"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	func1
	.type	func1, @function
func1:
	addi	sp,sp,-48
	sd	ra,40(sp)
	sd	s0,32(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	li	a5,10
	sw	a5,-20(s0)
	li	a5,20
	sw	a5,-24(s0)
	li	a5,30
	sw	a5,-28(s0)
	li	a5,40
	sw	a5,-32(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	val2	p1)
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	val1	(func2	1	2	3	4	5	6	7	8))
	#
	# === call ========================================
	#(func2	1	2	3	4	5	6	7	8)
	li	a7,8
	li	a6,7
	li	a5,6
	li	a4,5
	li	a3,4
	li	a2,3
	li	a1,2
	li	a0,1
	call	func2
	sw	a0,-20(s0)
	#
	# === Return1 ========================================
	#(RETURN	100)
	li	a5,100
	mv	a0,a5
	j	.func1_exit
.func1_exit:
	ld	ra,40(sp)
	ld	s0,32(sp)
	addi	sp,sp,48
	jr	ra
	.size	func1, .-func1
	.align	2
	.globl	func2
	.type	func2, @function
func2:
	addi	sp,sp,-80
	sd	s0,72(sp)
	addi	s0,sp,80
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	sw	a4,-68(s0)
	sw	a5,-72(s0)
	sw	a6,-76(s0)
	sw	a7,-80(s0)
	li	a5,10
	sw	a5,-20(s0)
	li	a5,20
	sw	a5,-24(s0)
	li	a5,30
	sw	a5,-28(s0)
	li	a5,40
	sw	a5,-32(s0)
	li	a5,50
	sw	a5,-36(s0)
	li	a5,60
	sw	a5,-40(s0)
	li	a5,70
	sw	a5,-44(s0)
	li	a5,80
	sw	a5,-48(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	val1	p1)
	lw	a5,-52(s0)
	sw	a5,-20(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	val2	p2)
	lw	a5,-56(s0)
	sw	a5,-24(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	val3	p3)
	lw	a5,-60(s0)
	sw	a5,-28(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	val4	p4)
	lw	a5,-64(s0)
	sw	a5,-32(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	val5	p5)
	lw	a5,-68(s0)
	sw	a5,-36(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	val6	p6)
	lw	a5,-72(s0)
	sw	a5,-40(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	val7	p7)
	lw	a5,-76(s0)
	sw	a5,-44(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	val8	p8)
	lw	a5,-80(s0)
	sw	a5,-48(s0)
	#
	# === Return1 ========================================
	#(RETURN	200)
	li	a5,200
	mv	a0,a5
	j	.func2_exit
.func2_exit:
	ld	s0,72(sp)
	addi	sp,sp,80
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
	li	a5,10
	sw	a5,-20(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	val1	(func1	1))
	#
	# === call ========================================
	#(func1	1)
	li	a0,1
	call	func1
	sw	a0,-20(s0)
	nop
	ld	ra,24(sp)
	ld	s0,16(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.ident	"CIT: () 0.1.0"
