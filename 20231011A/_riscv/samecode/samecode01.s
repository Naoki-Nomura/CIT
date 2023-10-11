	.file	"samecode01.ct"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	test_struct
	.type	test_struct, @function
test_struct:
	addi	sp,sp,-32
	sd	s0,24(sp)
	addi	s0,sp,32
	#
	# === ccfAssign ========================================
	#(T(=)	test.x	100)
	li	a5,100
	sw	a5,-32(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	test.y	200)
	li	a5,200
	sw	a5,-28(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	test.z	300)
	li	a5,300
	sw	a5,-24(s0)
	nop
	ld	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	test_struct, .-test_struct
	.align	2
	.globl	test_array
	.type	test_array, @function
test_array:
	addi	sp,sp,-32
	sd	s0,24(sp)
	addi	s0,sp,32
	#
	# === ccfAssign ========================================
	#(T(=)	test[0]	100)
	li	a5,100
	sw	a5,-32(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	test[1]	200)
	li	a5,200
	sw	a5,-28(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	test[2]	300)
	li	a5,300
	sw	a5,-24(s0)
	nop
	ld	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	test_array, .-test_array
	.align	2
	.globl	test_normal1
	.type	test_normal1, @function
test_normal1:
	addi	sp,sp,-32
	sd	s0,24(sp)
	addi	s0,sp,32
	li	a5,100
	sw	a5,-20(s0)
	li	a5,200
	sw	a5,-24(s0)
	li	a5,300
	sw	a5,-28(s0)
	nop
	ld	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	test_normal1, .-test_normal1
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16
	sd	ra,8(sp)
	sd	s0,0(sp)
	addi	s0,sp,16
	#
	# === call ========================================
	#(test_struct)
	call	test_struct
	#
	# === call ========================================
	#(test_array)
	call	test_array
	#
	# === call ========================================
	#(test_normal1)
	call	test_normal1
	nop
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.ident	"CIT: () 0.1.0"
