	.file	"param01.ct"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	func00
	.type	func00, @function
func00:
	addi	sp,sp,-16
	sd	s0,8(sp)
	addi	s0,sp,16
	#
	# === Return1 ========================================
	#(RETURN	100.0f)
	lla	t0,.LC_100F
	flw	ft0,0(t0)
	fmv.x.w	a0,ft0
	j	.func00_exit
.func00_exit:
	ld	s0,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	func00, .-func00
	.align	2
	.globl	func01
	.type	func01, @function
func01:
	addi	sp,sp,-32
	sd	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	#
	# === Return1 ========================================
	#(RETURN	p1)
	flw	ft0,-20(s0)
	fmv.x.w	a0,ft0
	j	.func01_exit
.func01_exit:
	ld	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	func01, .-func01
	.align	2
	.globl	func02
	.type	func02, @function
func02:
	addi	sp,sp,-32
	sd	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	#
	# === Return1 ========================================
	#(RETURN	(T(+)	p1	p2))
	flw	ft0,-20(s0)
	flw	ft1,-24(s0)
	fadd.s	ft1,ft0,ft1
	fmv.x.w	a0,ft1
	j	.func02_exit
.func02_exit:
	ld	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	func02, .-func02
	.align	2
	.globl	func03
	.type	func03, @function
func03:
	addi	sp,sp,-32
	sd	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	#
	# === Return1 ========================================
	#(RETURN	(T(+)	(T(+)	p1	p2)	p3))
	flw	ft0,-20(s0)
	flw	ft1,-24(s0)
	fadd.s	ft1,ft0,ft1
	flw	ft0,-28(s0)
	fadd.s	ft0,ft1,ft0
	fmv.x.w	a0,ft0
	j	.func03_exit
.func03_exit:
	ld	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	func03, .-func03
	.align	2
	.globl	func04
	.type	func04, @function
func04:
	addi	sp,sp,-32
	sd	s0,24(sp)
	addi	s0,sp,32
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	#
	# === Return1 ========================================
	#(RETURN	(T(+)	(T(+)	(T(+)	p1	p2)	p3)	p4))
	flw	ft0,-20(s0)
	flw	ft1,-24(s0)
	fadd.s	ft1,ft0,ft1
	flw	ft0,-28(s0)
	fadd.s	ft0,ft1,ft0
	flw	ft1,-32(s0)
	fadd.s	ft1,ft0,ft1
	fmv.x.w	a0,ft1
	j	.func04_exit
.func04_exit:
	ld	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	func04, .-func04
	.align	2
	.globl	func05
	.type	func05, @function
func05:
	addi	sp,sp,-48
	sd	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	#
	# === Return1 ========================================
	#(RETURN	(T(+)	(T(+)	(T(+)	(T(+)	p1	p2)	p3)	p4)	p5))
	flw	ft0,-20(s0)
	flw	ft1,-24(s0)
	fadd.s	ft1,ft0,ft1
	flw	ft0,-28(s0)
	fadd.s	ft0,ft1,ft0
	flw	ft1,-32(s0)
	fadd.s	ft1,ft0,ft1
	flw	ft0,-36(s0)
	fadd.s	ft0,ft1,ft0
	fmv.x.w	a0,ft0
	j	.func05_exit
.func05_exit:
	ld	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	func05, .-func05
	.align	2
	.globl	func06
	.type	func06, @function
func06:
	addi	sp,sp,-48
	sd	s0,40(sp)
	addi	s0,sp,48
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	sw	a5,-40(s0)
	#
	# === Return1 ========================================
	#(RETURN	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	p1	p2)	p3)	p4)	p5)	p6))
	flw	ft0,-20(s0)
	flw	ft1,-24(s0)
	fadd.s	ft1,ft0,ft1
	flw	ft0,-28(s0)
	fadd.s	ft0,ft1,ft0
	flw	ft1,-32(s0)
	fadd.s	ft1,ft0,ft1
	flw	ft0,-36(s0)
	fadd.s	ft0,ft1,ft0
	flw	ft1,-40(s0)
	fadd.s	ft1,ft0,ft1
	fmv.x.w	a0,ft1
	j	.func06_exit
.func06_exit:
	ld	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	func06, .-func06
	.align	2
	.globl	func07
	.type	func07, @function
func07:
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
	#
	# === Return1 ========================================
	#(RETURN	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	p1	p2)	p3)	p4)	p5)	p6)	p7))
	flw	ft0,-20(s0)
	flw	ft1,-24(s0)
	fadd.s	ft1,ft0,ft1
	flw	ft0,-28(s0)
	fadd.s	ft0,ft1,ft0
	flw	ft1,-32(s0)
	fadd.s	ft1,ft0,ft1
	flw	ft0,-36(s0)
	fadd.s	ft0,ft1,ft0
	flw	ft1,-40(s0)
	fadd.s	ft1,ft0,ft1
	flw	ft0,-44(s0)
	fadd.s	ft0,ft1,ft0
	fmv.x.w	a0,ft0
	j	.func07_exit
.func07_exit:
	ld	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	func07, .-func07
	.align	2
	.globl	func08
	.type	func08, @function
func08:
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
	flw	ft0,-20(s0)
	flw	ft1,-24(s0)
	fadd.s	ft1,ft0,ft1
	flw	ft0,-28(s0)
	fadd.s	ft0,ft1,ft0
	flw	ft1,-32(s0)
	fadd.s	ft1,ft0,ft1
	flw	ft0,-36(s0)
	fadd.s	ft0,ft1,ft0
	flw	ft1,-40(s0)
	fadd.s	ft1,ft0,ft1
	flw	ft0,-44(s0)
	fadd.s	ft0,ft1,ft0
	flw	ft1,-48(s0)
	fadd.s	ft1,ft0,ft1
	fmv.x.w	a0,ft1
	j	.func08_exit
.func08_exit:
	ld	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	func08, .-func08
	.align	2
	.globl	func09
	.type	func09, @function
func09:
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
	#(RETURN	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	p1	p2)	p3)	p4)	p5)	p6)	p7)	p8)	p9))
	flw	ft0,-20(s0)
	flw	ft1,-24(s0)
	fadd.s	ft1,ft0,ft1
	flw	ft0,-28(s0)
	fadd.s	ft0,ft1,ft0
	flw	ft1,-32(s0)
	fadd.s	ft1,ft0,ft1
	flw	ft0,-36(s0)
	fadd.s	ft0,ft1,ft0
	flw	ft1,-40(s0)
	fadd.s	ft1,ft0,ft1
	flw	ft0,-44(s0)
	fadd.s	ft0,ft1,ft0
	flw	ft1,-48(s0)
	fadd.s	ft1,ft0,ft1
	flw	ft0,0(s0)
	fadd.s	ft0,ft1,ft0
	fmv.x.w	a0,ft0
	j	.func09_exit
.func09_exit:
	ld	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	func09, .-func09
	.align	2
	.globl	func10
	.type	func10, @function
func10:
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
	flw	ft0,-20(s0)
	flw	ft1,-24(s0)
	fadd.s	ft1,ft0,ft1
	flw	ft0,-28(s0)
	fadd.s	ft0,ft1,ft0
	flw	ft1,-32(s0)
	fadd.s	ft1,ft0,ft1
	flw	ft0,-36(s0)
	fadd.s	ft0,ft1,ft0
	flw	ft1,-40(s0)
	fadd.s	ft1,ft0,ft1
	flw	ft0,-44(s0)
	fadd.s	ft0,ft1,ft0
	flw	ft1,-48(s0)
	fadd.s	ft1,ft0,ft1
	flw	ft0,0(s0)
	fadd.s	ft0,ft1,ft0
	flw	ft1,8(s0)
	fadd.s	ft1,ft0,ft1
	fmv.x.w	a0,ft1
	j	.func10_exit
.func10_exit:
	ld	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	func10, .-func10
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-48
	sd	ra,40(sp)
	sd	s0,32(sp)
	addi	s0,sp,48
	#
	# === ccfAssign ========================================
	#(T(=)	ans	(func00))
	#
	# === call ========================================
	#(func00)
	call	func00
	sw	a0,-20(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	ans	(func01	100.0))
	#
	# === call ========================================
	#(func01	100.0)
	lla	t0,.LC_100F
	flw	ft0,0(t0)
	fmv.x.w	a0,ft0
	call	func01
	sw	a0,-20(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	ans	(func02	100.0	200.0))
	#
	# === call ========================================
	#(func02	100.0	200.0)
	lla	t0,.LC_200F
	flw	ft0,0(t0)
	fmv.x.w	a1,ft0
	lla	t0,.LC_100F
	flw	ft0,0(t0)
	fmv.x.w	a0,ft0
	call	func02
	sw	a0,-20(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	ans	(func03	100.0	200.0	300.0))
	#
	# === call ========================================
	#(func03	100.0	200.0	300.0)
	lla	t0,.LC_300F
	flw	ft0,0(t0)
	fmv.x.w	a2,ft0
	lla	t0,.LC_200F
	flw	ft0,0(t0)
	fmv.x.w	a1,ft0
	lla	t0,.LC_100F
	flw	ft0,0(t0)
	fmv.x.w	a0,ft0
	call	func03
	sw	a0,-20(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	ans	(func04	100.0	200.0	300.0	400.0))
	#
	# === call ========================================
	#(func04	100.0	200.0	300.0	400.0)
	lla	t0,.LC_400F
	flw	ft0,0(t0)
	fmv.x.w	a3,ft0
	lla	t0,.LC_300F
	flw	ft0,0(t0)
	fmv.x.w	a2,ft0
	lla	t0,.LC_200F
	flw	ft0,0(t0)
	fmv.x.w	a1,ft0
	lla	t0,.LC_100F
	flw	ft0,0(t0)
	fmv.x.w	a0,ft0
	call	func04
	sw	a0,-20(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	ans	(func05	100.0	200.0	300.0	400.0	500.0))
	#
	# === call ========================================
	#(func05	100.0	200.0	300.0	400.0	500.0)
	lla	t0,.LC_500F
	flw	ft0,0(t0)
	fmv.x.w	a4,ft0
	lla	t0,.LC_400F
	flw	ft0,0(t0)
	fmv.x.w	a3,ft0
	lla	t0,.LC_300F
	flw	ft0,0(t0)
	fmv.x.w	a2,ft0
	lla	t0,.LC_200F
	flw	ft0,0(t0)
	fmv.x.w	a1,ft0
	lla	t0,.LC_100F
	flw	ft0,0(t0)
	fmv.x.w	a0,ft0
	call	func05
	sw	a0,-20(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	ans	(func06	100.0	200.0	300.0	400.0	500.0	600.0))
	#
	# === call ========================================
	#(func06	100.0	200.0	300.0	400.0	500.0	600.0)
	lla	t0,.LC_600F
	flw	ft0,0(t0)
	fmv.x.w	a5,ft0
	lla	t0,.LC_500F
	flw	ft0,0(t0)
	fmv.x.w	a4,ft0
	lla	t0,.LC_400F
	flw	ft0,0(t0)
	fmv.x.w	a3,ft0
	lla	t0,.LC_300F
	flw	ft0,0(t0)
	fmv.x.w	a2,ft0
	lla	t0,.LC_200F
	flw	ft0,0(t0)
	fmv.x.w	a1,ft0
	lla	t0,.LC_100F
	flw	ft0,0(t0)
	fmv.x.w	a0,ft0
	call	func06
	sw	a0,-20(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	ans	(func07	100.0	200.0	300.0	400.0	500.0	600.0	700.0))
	#
	# === call ========================================
	#(func07	100.0	200.0	300.0	400.0	500.0	600.0	700.0)
	lla	t0,.LC_700F
	flw	ft0,0(t0)
	fmv.x.w	a6,ft0
	lla	t0,.LC_600F
	flw	ft0,0(t0)
	fmv.x.w	a5,ft0
	lla	t0,.LC_500F
	flw	ft0,0(t0)
	fmv.x.w	a4,ft0
	lla	t0,.LC_400F
	flw	ft0,0(t0)
	fmv.x.w	a3,ft0
	lla	t0,.LC_300F
	flw	ft0,0(t0)
	fmv.x.w	a2,ft0
	lla	t0,.LC_200F
	flw	ft0,0(t0)
	fmv.x.w	a1,ft0
	lla	t0,.LC_100F
	flw	ft0,0(t0)
	fmv.x.w	a0,ft0
	call	func07
	sw	a0,-20(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	ans	(func08	100.0	200.0	300.0	400.0	500.0	600.0	700.0	800.0))
	#
	# === call ========================================
	#(func08	100.0	200.0	300.0	400.0	500.0	600.0	700.0	800.0)
	lla	t0,.LC_800F
	flw	ft0,0(t0)
	fmv.x.w	a7,ft0
	lla	t0,.LC_700F
	flw	ft0,0(t0)
	fmv.x.w	a6,ft0
	lla	t0,.LC_600F
	flw	ft0,0(t0)
	fmv.x.w	a5,ft0
	lla	t0,.LC_500F
	flw	ft0,0(t0)
	fmv.x.w	a4,ft0
	lla	t0,.LC_400F
	flw	ft0,0(t0)
	fmv.x.w	a3,ft0
	lla	t0,.LC_300F
	flw	ft0,0(t0)
	fmv.x.w	a2,ft0
	lla	t0,.LC_200F
	flw	ft0,0(t0)
	fmv.x.w	a1,ft0
	lla	t0,.LC_100F
	flw	ft0,0(t0)
	fmv.x.w	a0,ft0
	call	func08
	sw	a0,-20(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	ans	(func09	100.0	200.0	300.0	400.0	500.0	600.0	700.0	800.0	900.0))
	#
	# === call ========================================
	#(func09	100.0	200.0	300.0	400.0	500.0	600.0	700.0	800.0	900.0)
	lla	t0,.LC_900F
	flw	ft0,0(t0)
	fsw	ft0,0(sp)
	lla	t0,.LC_800F
	flw	ft0,0(t0)
	fmv.x.w	a7,ft0
	lla	t0,.LC_700F
	flw	ft0,0(t0)
	fmv.x.w	a6,ft0
	lla	t0,.LC_600F
	flw	ft0,0(t0)
	fmv.x.w	a5,ft0
	lla	t0,.LC_500F
	flw	ft0,0(t0)
	fmv.x.w	a4,ft0
	lla	t0,.LC_400F
	flw	ft0,0(t0)
	fmv.x.w	a3,ft0
	lla	t0,.LC_300F
	flw	ft0,0(t0)
	fmv.x.w	a2,ft0
	lla	t0,.LC_200F
	flw	ft0,0(t0)
	fmv.x.w	a1,ft0
	lla	t0,.LC_100F
	flw	ft0,0(t0)
	fmv.x.w	a0,ft0
	call	func09
	sw	a0,-20(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	ans	(func10	100.0	200.0	300.0	400.0	500.0	600.0	700.0	800.0	900.0	1000.0))
	#
	# === call ========================================
	#(func10	100.0	200.0	300.0	400.0	500.0	600.0	700.0	800.0	900.0	1000.0)
	lla	t0,.LC_1000F
	flw	ft0,0(t0)
	fsw	ft0,8(sp)
	lla	t0,.LC_900F
	flw	ft0,0(t0)
	fsw	ft0,0(sp)
	lla	t0,.LC_800F
	flw	ft0,0(t0)
	fmv.x.w	a7,ft0
	lla	t0,.LC_700F
	flw	ft0,0(t0)
	fmv.x.w	a6,ft0
	lla	t0,.LC_600F
	flw	ft0,0(t0)
	fmv.x.w	a5,ft0
	lla	t0,.LC_500F
	flw	ft0,0(t0)
	fmv.x.w	a4,ft0
	lla	t0,.LC_400F
	flw	ft0,0(t0)
	fmv.x.w	a3,ft0
	lla	t0,.LC_300F
	flw	ft0,0(t0)
	fmv.x.w	a2,ft0
	lla	t0,.LC_200F
	flw	ft0,0(t0)
	fmv.x.w	a1,ft0
	lla	t0,.LC_100F
	flw	ft0,0(t0)
	fmv.x.w	a0,ft0
	call	func10
	sw	a0,-20(s0)
	nop
	ld	ra,40(sp)
	ld	s0,32(sp)
	addi	sp,sp,48
	jr	ra
	.size	main, .-main
	.section .rodata
	.align	2
.LC_100F:
	.word 1120403456
	.align	2
.LC_200F:
	.word 1128792064
	.align	2
.LC_300F:
	.word 1133903872
	.align	2
.LC_400F:
	.word 1137180672
	.align	2
.LC_500F:
	.word 1140457472
	.align	2
.LC_600F:
	.word 1142292480
	.align	2
.LC_700F:
	.word 1143930880
	.align	2
.LC_800F:
	.word 1145569280
	.align	2
.LC_900F:
	.word 1147207680
	.align	2
.LC_1000F:
	.word 1148846080
	.ident	"CIT: () 0.1.0"
