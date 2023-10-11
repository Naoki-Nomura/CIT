	.file	"union04.ct"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	sfval
	.bss
	.align	3
	.type	sfval, @object
	.size	sfval, 40
sfval:
	.zero 40
	.text
	.align	2
	.globl	show
	.type	show, @function
show:
	addi	sp,sp,-32
	sd	s0,24(sp)
	addi	s0,sp,32
	sd	a0,-24(s0)
	nop
	ld	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	show, .-show
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
	#(T(=)	sfval.type	1)
	li	a5,1
	lla	a4,sfval
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	sfval.shape.l.s.x	1.1f)
	lla	t0,.LC_1_1F
	flw	ft0,0(t0)
	lla	a5,sfval
	fsw	ft0,0(a5)
	#
	# === ccfAssign ========================================
	#(T(=)	sfval.shape.l.s.y	0)
	li	a5,0
	lla	a4,sfval
	fcvt.s.w	ft0,a5
	fsw	ft0,4(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	sfval.shape.l.s.z	1.3)
	lla	t0,.LC_1_3D
	fld	ft0,0(t0)
	lla	a5,sfval
	fcvt.s.w	ft1,ft0
	fsw	ft1,8(a5)
	#
	# === ccfAssign ========================================
	#(T(=)	sfval.shape.l.e.x	5.1)
	lla	t0,.LC_5_1D
	fld	ft0,0(t0)
	lla	a5,sfval
	fcvt.s.w	ft1,ft0
	fsw	ft1,0(a5)
	#
	# === ccfAssign ========================================
	#(T(=)	sfval.shape.l.e.y	0)
	li	a5,0
	lla	a4,sfval
	fcvt.s.w	ft0,a5
	fsw	ft0,4(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	sfval.shape.l.e.z	6.1)
	lla	t0,.LC_6_1D
	fld	ft0,0(t0)
	lla	a5,sfval
	fcvt.s.w	ft1,ft0
	fsw	ft1,8(a5)
	#
	# === call ========================================
	#(show	sfval.shape.l.s&)
	lla	a0,sfval+4
	call	show
	#
	# === call ========================================
	#(show	sfval.shape.l.e&)
	lla	a0,sfval+12
	call	show
	nop
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.section .rodata
	.align	2
.LC_1_1F:
	.word 1066192077
	.align	3
.LC_1_3D:
	.word -858993459
	.word 1073007820
	.align	3
.LC_5_1D:
	.word 1717986918
	.word 1075078758
	.align	3
.LC_6_1D:
	.word 1717986918
	.word 1075340902
	.ident	"CIT: () 0.1.0"
