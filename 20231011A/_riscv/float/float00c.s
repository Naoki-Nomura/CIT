	.file	"float00c.ct"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	isrc
	.section .sdata,"aw"
	.align	2
	.type	isrc, @object
	.size	isrc, 4
isrc:
	.word 3
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
	#(T(=)	result	isrc)
	lla	a5,isrc
	lw	a5,0(a5)
	lla	a4,result
	fcvt.s.w	ft0,a5
	fsw	ft0,0(a4)
	nop
	ld	s0,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.ident	"CIT: () 0.1.0"
