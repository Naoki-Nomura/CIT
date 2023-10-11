	.file	"funcorder02.ct"
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
	sd	ra,24(sp)
	sd	s0,16(sp)
	addi	s0,sp,32
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
	#(T(=)	val1	(func2))
	#
	# === call ========================================
	#(func2)
	call	func2
	sw	a0,-20(s0)
	#
	# === Return1 ========================================
	#(RETURN	100)
	li	a5,100
	mv	a0,a5
	j	.func1_exit
.func1_exit:
	ld	ra,24(sp)
	ld	s0,16(sp)
	addi	sp,sp,32
	jr	ra
	.size	func1, .-func1
	.align	2
	.globl	func2
	.type	func2, @function
func2:
	addi	sp,sp,-64
	sd	ra,56(sp)
	sd	s0,48(sp)
	addi	s0,sp,64
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
	#(T(=)	val1	(func3))
	#
	# === call ========================================
	#(func3)
	call	func3
	sw	a0,-20(s0)
	#
	# === Return1 ========================================
	#(RETURN	200)
	li	a5,200
	mv	a0,a5
	j	.func2_exit
.func2_exit:
	ld	ra,56(sp)
	ld	s0,48(sp)
	addi	sp,sp,64
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
	#(T(=)	val1	(func1))
	#
	# === call ========================================
	#(func1)
	call	func1
	sw	a0,-20(s0)
	nop
	ld	ra,24(sp)
	ld	s0,16(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.align	2
	.globl	func3
	.type	func3, @function
func3:
	addi	sp,sp,-16
	sd	s0,8(sp)
	addi	s0,sp,16
	#
	# === Return1 ========================================
	#(RETURN	300)
	li	a5,300
	mv	a0,a5
	j	.func3_exit
.func3_exit:
	ld	s0,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	func3, .-func3
	.ident	"CIT: () 0.1.0"
