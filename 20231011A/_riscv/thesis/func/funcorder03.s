	.file	"funcorder03.ct"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	func4
	.type	func4, @function
func4:
	addi	sp,sp,-48
	sd	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	sw	a5,-40(s0)
	sw	a6,-44(s0)
	sw	a7,-48(s0)
	#
	# === Return1 ========================================
	#(RETURN	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	p1	p2)	p3)	p4)	p5)	p6)	p7)	p8)	p9)	p10))
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	addw	a4,a5,a4
	sext.w	a4,a4
	lw	a5,-28(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-32(s0)
	addw	a4,a5,a4
	sext.w	a4,a4
	lw	a5,-36(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-40(s0)
	addw	a4,a5,a4
	sext.w	a4,a4
	lw	a5,-44(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-48(s0)
	addw	a4,a5,a4
	sext.w	a4,a4
	lw	a5,0(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,8(s0)
	addw	a4,a5,a4
	sext.w	a4,a4
	mv	a0,a4
	j	.func4_exit
.func4_exit:
	ld	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	func4, .-func4
	.align	2
	.globl	func3
	.type	func3, @function
func3:
	addi	sp,sp,-48
	sd	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	sw	a5,-40(s0)
	sw	a6,-44(s0)
	sw	a7,-48(s0)
	#
	# === Return1 ========================================
	#(RETURN	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	p1	p2)	p3)	p4)	p5)	p6)	p7)	p8))
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	addw	a4,a5,a4
	sext.w	a4,a4
	lw	a5,-28(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-32(s0)
	addw	a4,a5,a4
	sext.w	a4,a4
	lw	a5,-36(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-40(s0)
	addw	a4,a5,a4
	sext.w	a4,a4
	lw	a5,-44(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-48(s0)
	addw	a4,a5,a4
	sext.w	a4,a4
	mv	a0,a4
	j	.func3_exit
.func3_exit:
	ld	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	func3, .-func3
	.align	2
	.globl	func2
	.type	func2, @function
func2:
	addi	sp,sp,-96
	sd	ra,88(sp)
	sd	s0,80(sp)
	addi	s0,sp,96
	sw	a0,-68(s0)
	sw	a1,-72(s0)
	sw	a2,-76(s0)
	sw	a3,-80(s0)
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
	li	a5,90
	sw	a5,-52(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	val2	p1)
	lw	a5,-68(s0)
	sw	a5,-24(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	val3	p2)
	lw	a5,-72(s0)
	sw	a5,-28(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	val4	p3)
	lw	a5,-76(s0)
	sw	a5,-32(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	val5	p4)
	lw	a5,-80(s0)
	sw	a5,-36(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	val1	(func3	1	2	3	4	5	6	7	8))
	#
	# === call ========================================
	#(func3	1	2	3	4	5	6	7	8)
	li	a7,8
	li	a6,7
	li	a5,6
	li	a4,5
	li	a3,4
	li	a2,3
	li	a1,2
	li	a0,1
	call	func3
	sw	a0,-20(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	val2	(func4	1	2	3	4	5	6	7	8	9	10))
	#
	# === call ========================================
	#(func4	1	2	3	4	5	6	7	8	9	10)
	li	a5,10
	sd	a5,8(sp)
	li	a5,9
	sd	a5,0(sp)
	li	a7,8
	li	a6,7
	li	a5,6
	li	a4,5
	li	a3,4
	li	a2,3
	li	a1,2
	li	a0,1
	call	func4
	sw	a0,-24(s0)
	#
	# === Return1 ========================================
	#(RETURN	200)
	li	a5,200
	mv	a0,a5
	j	.func2_exit
.func2_exit:
	ld	ra,88(sp)
	ld	s0,80(sp)
	addi	sp,sp,96
	jr	ra
	.size	func2, .-func2
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
	#(T(=)	val1	(func2	1	2	3	4))
	#
	# === call ========================================
	#(func2	1	2	3	4)
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
