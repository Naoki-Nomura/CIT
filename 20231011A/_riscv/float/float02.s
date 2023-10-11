	.file	"float02.ct"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	func3
	.type	func3, @function
func3:
	addi	sp,sp,-48
	sd	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	r	(T(+)	(T(+)	x	y)	z))
	flw	ft0,-36(s0)
	flw	ft1,-40(s0)
	fadd.s	ft1,ft0,ft1
	flw	ft0,-44(s0)
	fadd.s	ft0,ft1,ft0
	fsw	ft0,-20(s0)
	#
	# === Return1 ========================================
	#(RETURN	r)
	flw	ft0,-20(s0)
	fmv.x.w	a0,ft0
	j	.func3_exit
.func3_exit:
	ld	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	func3, .-func3
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
	#(T(=)	ans	(func3	100.0	200.0	300.0))
	#
	# === call ========================================
	#(func3	100.0	200.0	300.0)
	lla	t0,.LC_300F
	flw	ft0,0(t0)
	fmv.x.w	a2,ft0
	lla	t0,.LC_200F
	flw	ft0,0(t0)
	fmv.x.w	a1,ft0
	lla	t0,.LC_100F
	flw	ft0,0(t0)
	fmv.x.w	a0,ft0
	call	func3
	sw	a0,-20(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	p1	100)
	li	a5,100
	fcvt.s.w	ft0,a5
	fsw	ft0,-24(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	p2	200)
	li	a5,200
	fcvt.s.w	ft0,a5
	fsw	ft0,-28(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	p3	300)
	li	a5,300
	fcvt.s.w	ft0,a5
	fsw	ft0,-32(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	ans	(func3	p1	p2	p3))
	#
	# === call ========================================
	#(func3	p1	p2	p3)
	flw	ft0,-32(s0)
	fmv.x.w	a2,ft0
	flw	ft0,-28(s0)
	fmv.x.w	a1,ft0
	flw	ft0,-24(s0)
	fmv.x.w	a0,ft0
	call	func3
	sw	a0,-20(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	ans	(func3	100	200	300))
	#
	# === call ========================================
	#(func3	100	200	300)
	lla	t0,.LC_300F
	flw	ft0,0(t0)
	fmv.x.w	a2,ft0
	lla	t0,.LC_200F
	flw	ft0,0(t0)
	fmv.x.w	a1,ft0
	lla	t0,.LC_100F
	flw	ft0,0(t0)
	fmv.x.w	a0,ft0
	call	func3
	sw	a0,-20(s0)
	nop
	ld	ra,24(sp)
	ld	s0,16(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.section .rodata
	.align	2
.LC_300F:
	.word 1133903872
	.align	2
.LC_200F:
	.word 1128792064
	.align	2
.LC_100F:
	.word 1120403456
	.ident	"CIT: () 0.1.0"
