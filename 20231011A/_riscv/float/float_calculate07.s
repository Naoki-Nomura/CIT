	.file	"float_calculate07.ct"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32
	sd	s0,24(sp)
	addi	s0,sp,32
	li	a5,0
	sw	a5,-20(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	a	20)
	li	a5,20
	fcvt.s.w	ft0,a5
	fsw	ft0,-24(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	b	30)
	li	a5,30
	fcvt.s.w	ft0,a5
	fsw	ft0,-28(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	c	70)
	li	a5,70
	fcvt.s.w	ft0,a5
	fsw	ft0,-32(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	ans	(T(-)	(T(*)	(T(*)	a	b)	c)	(T(+)	(T(/)	(T(+)	a	b)	(T(-)	(T(-)	b	a)	0.2f))	100)))
	flw	ft0,-24(s0)
	flw	ft1,-28(s0)
	fmul.s	ft1,ft0,ft1
	flw	ft0,-32(s0)
	fmul.s	ft0,ft1,ft0
	flw	ft1,-24(s0)
	flw	ft2,-28(s0)
	fadd.s	ft2,ft1,ft2
	flw	ft1,-28(s0)
	flw	ft3,-24(s0)
	fsub.s	ft3,ft1,ft3
	lla	t0,.LC_0_2F
	flw	ft1,0(t0)
	fsub.s	ft1,ft3,ft1
	fdiv.s	ft1,ft2,ft1
	li	a5,100
	fmv.w.x	ft2,a5
	fadd.s	ft2,ft1,ft2
	fsub.s	ft2,ft0,ft2
	fsw	ft2,-20(s0)
	nop
	ld	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.section .rodata
	.align	2
.LC_0_2F:
	.word 1045220557
	.ident	"CIT: () 0.1.0"
