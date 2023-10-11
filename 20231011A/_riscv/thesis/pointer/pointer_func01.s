	.file	"pointer_func01.ct"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	val
	.section .sdata,"aw"
	.align	2
	.type	val, @object
	.size	val, 4
val:
	.word 100
	.globl	pfunc
	.section .sbss,"aw",@nobits
	.align	3
	.type	pfunc, @object
	.size	pfunc, 8
pfunc:
	.zero 8
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16
	sd	ra,8(sp)
	sd	s0,0(sp)
	addi	s0,sp,16
	#
	# === ccfAssign ========================================
	#(T(=)	pfunc	func3)
	lla	a5,func3
	lla	a4,pfunc
	sd	a5,0(a4)
	#
	# === pointerCall ========================================
	#(pfunc*)
	lla	a5,pfunc
	ld	a5,0(a5)
	jalr	a5
	nop
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.align	2
	.globl	func1
	.type	func1, @function
func1:
	addi	sp,sp,-16
	sd	s0,8(sp)
	addi	s0,sp,16
	#
	# === ccfAssign ========================================
	#(T(=)	val	200)
	li	a5,200
	lla	a4,val
	sw	a5,0(a4)
	nop
	ld	s0,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	func1, .-func1
	.align	2
	.globl	func2
	.type	func2, @function
func2:
	addi	sp,sp,-16
	sd	s0,8(sp)
	addi	s0,sp,16
	#
	# === ccfAssign ========================================
	#(T(=)	val	300)
	li	a5,300
	lla	a4,val
	sw	a5,0(a4)
	nop
	ld	s0,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	func2, .-func2
	.align	2
	.globl	func3
	.type	func3, @function
func3:
	addi	sp,sp,-16
	sd	s0,8(sp)
	addi	s0,sp,16
	#
	# === ccfAssign ========================================
	#(T(=)	val	400)
	li	a5,400
	lla	a4,val
	sw	a5,0(a4)
	nop
	ld	s0,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	func3, .-func3
	.ident	"CIT: () 0.1.0"
