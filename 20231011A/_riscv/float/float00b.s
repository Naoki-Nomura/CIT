	.file	"float00b.ct"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	result
	.section .sbss,"aw",@nobits
	.align	2
	.type	result, @object
	.size	result, 4
result:
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
	#(T(=)	result	3)
	li	a5,3
	lla	a4,result
	fcvt.s.w	ft0,a5
	fsw	ft0,0(a4)
	nop
	ld	s0,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.ident	"CIT: () 0.1.0"
