	.file	"pointer_func06.ct"
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
	.globl	pfaray
	.data
	.align	3
	.type	pfaray, @object
	.size	pfaray, 24
pfaray:
	.dword	func1
	.dword	func2
	.dword	func3
	.globl	pf
	.align	3
	.type	pf, @object
	.size	pf, 8
pf:
	.dword	func4
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
	#(T(=)	val	(pfaray[0]*	5	6))
	#
	# === pointerCall ========================================
	#(pfaray[0]*	5	6)
	li	a1,6
	li	a0,5
	lla	a5,pfaray
	ld	a5,0(a5)
	jalr	a5
	lla	a5,val
	sw	a0,0(a5)
	#
	# === ccfAssign ========================================
	#(T(=)	val	(pfaray[1]*))
	#
	# === pointerCall ========================================
	#(pfaray[1]*)
	lla	a5,pfaray
	ld	a5,8(a5)
	jalr	a5
	lla	a5,val
	sw	a0,0(a5)
	#
	# === ccfAssign ========================================
	#(T(=)	val	(pfaray[2]*))
	#
	# === pointerCall ========================================
	#(pfaray[2]*)
	lla	a5,pfaray
	ld	a5,16(a5)
	jalr	a5
	lla	a5,val
	sw	a0,0(a5)
	#
	# === ccfAssign ========================================
	#(T(=)	val	(pf*))
	#
	# === pointerCall ========================================
	#(pf*)
	lla	a5,pf
	ld	a5,0(a5)
	jalr	a5
	lla	a5,val
	sw	a0,0(a5)
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
	addi	sp,sp,-32
	sd	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	#
	# === Return1 ========================================
	#(RETURN	(T(+)	p1	p2))
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	addw	a4,a5,a4
	sext.w	a4,a4
	mv	a0,a4
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
	addi	sp,sp,-16
	sd	s0,8(sp)
	addi	s0,sp,16
	#
	# === Return1 ========================================
	#(RETURN	300)
	li	a5,300
	mv	a0,a5
	j	.func2_exit
.func2_exit:
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
	# === Return1 ========================================
	#(RETURN	400)
	li	a5,400
	mv	a0,a5
	j	.func3_exit
.func3_exit:
	ld	s0,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	func3, .-func3
	.align	2
	.globl	func4
	.type	func4, @function
func4:
	addi	sp,sp,-16
	sd	s0,8(sp)
	addi	s0,sp,16
	#
	# === Return1 ========================================
	#(RETURN	500)
	li	a5,500
	mv	a0,a5
	j	.func4_exit
.func4_exit:
	ld	s0,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	func4, .-func4
	.ident	"CIT: () 0.1.0"
