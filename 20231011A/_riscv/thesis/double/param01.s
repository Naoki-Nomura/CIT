	.file	"param01.ct"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	val00
	.section .sdata,"aw"
	.align	3
	.type	val00, @object
	.size	val00, 8
val00:
	.word -2064333081
	.word 1083394629
	.globl	val01
	.align	3
	.type	val01, @object
	.size	val01, 8
val01:
	.word 0
	.word 1079574528
	.globl	val02
	.align	3
	.type	val02, @object
	.size	val02, 8
val02:
	.word 0
	.word 1080623104
	.globl	val03
	.align	3
	.type	val03, @object
	.size	val03, 8
val03:
	.word 0
	.word 1081262080
	.globl	val04
	.align	3
	.type	val04, @object
	.size	val04, 8
val04:
	.word 0
	.word 1081671680
	.globl	val05
	.align	3
	.type	val05, @object
	.size	val05, 8
val05:
	.word 0
	.word 1082081280
	.globl	val06
	.align	3
	.type	val06, @object
	.size	val06, 8
val06:
	.word 0
	.word 1082310656
	.globl	val07
	.align	3
	.type	val07, @object
	.size	val07, 8
val07:
	.word 0
	.word 1082515456
	.globl	val08
	.align	3
	.type	val08, @object
	.size	val08, 8
val08:
	.word 0
	.word 1082720256
	.globl	val09
	.align	3
	.type	val09, @object
	.size	val09, 8
val09:
	.word 0
	.word 1082925056
	.globl	val10
	.align	3
	.type	val10, @object
	.size	val10, 8
val10:
	.word 0
	.word 1083129856
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
	#(RETURN	100.0)
	lla	t0,.LC_100D
	fld	ft0,0(t0)
	fmv.x.d	a0,ft0
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
	sd	a0,-24(s0)
	#
	# === Return1 ========================================
	#(RETURN	p1)
	fld	ft0,-24(s0)
	fmv.x.d	a0,ft0
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
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	#
	# === Return1 ========================================
	#(RETURN	(T(+)	p1	p2))
	fld	ft0,-24(s0)
	fld	ft1,-32(s0)
	fadd.d	ft1,ft0,ft1
	fmv.x.d	a0,ft1
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
	addi	sp,sp,-48
	sd	s0,40(sp)
	addi	s0,sp,48
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	sd	a2,-40(s0)
	#
	# === Return1 ========================================
	#(RETURN	(T(+)	(T(+)	p1	p2)	p3))
	fld	ft0,-24(s0)
	fld	ft1,-32(s0)
	fadd.d	ft1,ft0,ft1
	fld	ft0,-40(s0)
	fadd.d	ft0,ft1,ft0
	fmv.x.d	a0,ft0
	j	.func03_exit
.func03_exit:
	ld	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	func03, .-func03
	.align	2
	.globl	func04
	.type	func04, @function
func04:
	addi	sp,sp,-48
	sd	s0,40(sp)
	addi	s0,sp,48
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	sd	a2,-40(s0)
	sd	a3,-48(s0)
	#
	# === Return1 ========================================
	#(RETURN	(T(+)	(T(+)	(T(+)	p1	p2)	p3)	p4))
	fld	ft0,-24(s0)
	fld	ft1,-32(s0)
	fadd.d	ft1,ft0,ft1
	fld	ft0,-40(s0)
	fadd.d	ft0,ft1,ft0
	fld	ft1,-48(s0)
	fadd.d	ft1,ft0,ft1
	fmv.x.d	a0,ft1
	j	.func04_exit
.func04_exit:
	ld	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	func04, .-func04
	.align	2
	.globl	func05
	.type	func05, @function
func05:
	addi	sp,sp,-64
	sd	s0,56(sp)
	addi	s0,sp,64
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	sd	a2,-40(s0)
	sd	a3,-48(s0)
	sd	a4,-56(s0)
	#
	# === Return1 ========================================
	#(RETURN	(T(+)	(T(+)	(T(+)	(T(+)	p1	p2)	p3)	p4)	p5))
	fld	ft0,-24(s0)
	fld	ft1,-32(s0)
	fadd.d	ft1,ft0,ft1
	fld	ft0,-40(s0)
	fadd.d	ft0,ft1,ft0
	fld	ft1,-48(s0)
	fadd.d	ft1,ft0,ft1
	fld	ft0,-56(s0)
	fadd.d	ft0,ft1,ft0
	fmv.x.d	a0,ft0
	j	.func05_exit
.func05_exit:
	ld	s0,56(sp)
	addi	sp,sp,64
	jr	ra
	.size	func05, .-func05
	.align	2
	.globl	func06
	.type	func06, @function
func06:
	addi	sp,sp,-64
	sd	s0,56(sp)
	addi	s0,sp,64
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	sd	a2,-40(s0)
	sd	a3,-48(s0)
	sd	a4,-56(s0)
	sd	a5,-64(s0)
	#
	# === Return1 ========================================
	#(RETURN	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	p1	p2)	p3)	p4)	p5)	p6))
	fld	ft0,-24(s0)
	fld	ft1,-32(s0)
	fadd.d	ft1,ft0,ft1
	fld	ft0,-40(s0)
	fadd.d	ft0,ft1,ft0
	fld	ft1,-48(s0)
	fadd.d	ft1,ft0,ft1
	fld	ft0,-56(s0)
	fadd.d	ft0,ft1,ft0
	fld	ft1,-64(s0)
	fadd.d	ft1,ft0,ft1
	fmv.x.d	a0,ft1
	j	.func06_exit
.func06_exit:
	ld	s0,56(sp)
	addi	sp,sp,64
	jr	ra
	.size	func06, .-func06
	.align	2
	.globl	func07
	.type	func07, @function
func07:
	addi	sp,sp,-80
	sd	s0,72(sp)
	addi	s0,sp,80
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	sd	a2,-40(s0)
	sd	a3,-48(s0)
	sd	a4,-56(s0)
	sd	a5,-64(s0)
	sd	a6,-72(s0)
	#
	# === Return1 ========================================
	#(RETURN	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	p1	p2)	p3)	p4)	p5)	p6)	p7))
	fld	ft0,-24(s0)
	fld	ft1,-32(s0)
	fadd.d	ft1,ft0,ft1
	fld	ft0,-40(s0)
	fadd.d	ft0,ft1,ft0
	fld	ft1,-48(s0)
	fadd.d	ft1,ft0,ft1
	fld	ft0,-56(s0)
	fadd.d	ft0,ft1,ft0
	fld	ft1,-64(s0)
	fadd.d	ft1,ft0,ft1
	fld	ft0,-72(s0)
	fadd.d	ft0,ft1,ft0
	fmv.x.d	a0,ft0
	j	.func07_exit
.func07_exit:
	ld	s0,72(sp)
	addi	sp,sp,80
	jr	ra
	.size	func07, .-func07
	.align	2
	.globl	func08
	.type	func08, @function
func08:
	addi	sp,sp,-80
	sd	s0,72(sp)
	addi	s0,sp,80
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	sd	a2,-40(s0)
	sd	a3,-48(s0)
	sd	a4,-56(s0)
	sd	a5,-64(s0)
	sd	a6,-72(s0)
	sd	a7,-80(s0)
	#
	# === Return1 ========================================
	#(RETURN	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	p1	p2)	p3)	p4)	p5)	p6)	p7)	p8))
	fld	ft0,-24(s0)
	fld	ft1,-32(s0)
	fadd.d	ft1,ft0,ft1
	fld	ft0,-40(s0)
	fadd.d	ft0,ft1,ft0
	fld	ft1,-48(s0)
	fadd.d	ft1,ft0,ft1
	fld	ft0,-56(s0)
	fadd.d	ft0,ft1,ft0
	fld	ft1,-64(s0)
	fadd.d	ft1,ft0,ft1
	fld	ft0,-72(s0)
	fadd.d	ft0,ft1,ft0
	fld	ft1,-80(s0)
	fadd.d	ft1,ft0,ft1
	fmv.x.d	a0,ft1
	j	.func08_exit
.func08_exit:
	ld	s0,72(sp)
	addi	sp,sp,80
	jr	ra
	.size	func08, .-func08
	.align	2
	.globl	func09
	.type	func09, @function
func09:
	addi	sp,sp,-80
	sd	s0,72(sp)
	addi	s0,sp,80
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	sd	a2,-40(s0)
	sd	a3,-48(s0)
	sd	a4,-56(s0)
	sd	a5,-64(s0)
	sd	a6,-72(s0)
	sd	a7,-80(s0)
	#
	# === Return1 ========================================
	#(RETURN	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	p1	p2)	p3)	p4)	p5)	p6)	p7)	p8)	p9))
	fld	ft0,-24(s0)
	fld	ft1,-32(s0)
	fadd.d	ft1,ft0,ft1
	fld	ft0,-40(s0)
	fadd.d	ft0,ft1,ft0
	fld	ft1,-48(s0)
	fadd.d	ft1,ft0,ft1
	fld	ft0,-56(s0)
	fadd.d	ft0,ft1,ft0
	fld	ft1,-64(s0)
	fadd.d	ft1,ft0,ft1
	fld	ft0,-72(s0)
	fadd.d	ft0,ft1,ft0
	fld	ft1,-80(s0)
	fadd.d	ft1,ft0,ft1
	fld	ft0,0(s0)
	fadd.d	ft0,ft1,ft0
	fmv.x.d	a0,ft0
	j	.func09_exit
.func09_exit:
	ld	s0,72(sp)
	addi	sp,sp,80
	jr	ra
	.size	func09, .-func09
	.align	2
	.globl	func10
	.type	func10, @function
func10:
	addi	sp,sp,-80
	sd	s0,72(sp)
	addi	s0,sp,80
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	sd	a2,-40(s0)
	sd	a3,-48(s0)
	sd	a4,-56(s0)
	sd	a5,-64(s0)
	sd	a6,-72(s0)
	sd	a7,-80(s0)
	#
	# === Return1 ========================================
	#(RETURN	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	p1	p2)	p3)	p4)	p5)	p6)	p7)	p8)	p9)	p10))
	fld	ft0,-24(s0)
	fld	ft1,-32(s0)
	fadd.d	ft1,ft0,ft1
	fld	ft0,-40(s0)
	fadd.d	ft0,ft1,ft0
	fld	ft1,-48(s0)
	fadd.d	ft1,ft0,ft1
	fld	ft0,-56(s0)
	fadd.d	ft0,ft1,ft0
	fld	ft1,-64(s0)
	fadd.d	ft1,ft0,ft1
	fld	ft0,-72(s0)
	fadd.d	ft0,ft1,ft0
	fld	ft1,-80(s0)
	fadd.d	ft1,ft0,ft1
	fld	ft0,0(s0)
	fadd.d	ft0,ft1,ft0
	fld	ft1,8(s0)
	fadd.d	ft1,ft0,ft1
	fmv.x.d	a0,ft1
	j	.func10_exit
.func10_exit:
	ld	s0,72(sp)
	addi	sp,sp,80
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
	fmv.d.x	ft0,a0
	fsd	ft0,-24(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	ans	(func01	100.0))
	#
	# === call ========================================
	#(func01	100.0)
	lla	t0,.LC_100D
	fld	ft0,0(t0)
	fmv.x.d	a0,ft0
	call	func01
	fmv.d.x	ft0,a0
	fsd	ft0,-24(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	ans	(func02	100.0	200.0))
	#
	# === call ========================================
	#(func02	100.0	200.0)
	lla	t0,.LC_200D
	fld	ft0,0(t0)
	fmv.x.d	a1,ft0
	lla	t0,.LC_100D
	fld	ft0,0(t0)
	fmv.x.d	a0,ft0
	call	func02
	fmv.d.x	ft0,a0
	fsd	ft0,-24(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	ans	(func03	100.0	200.0	300.0))
	#
	# === call ========================================
	#(func03	100.0	200.0	300.0)
	lla	t0,.LC_300D
	fld	ft0,0(t0)
	fmv.x.d	a2,ft0
	lla	t0,.LC_200D
	fld	ft0,0(t0)
	fmv.x.d	a1,ft0
	lla	t0,.LC_100D
	fld	ft0,0(t0)
	fmv.x.d	a0,ft0
	call	func03
	fmv.d.x	ft0,a0
	fsd	ft0,-24(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	ans	(func04	100.0	200.0	300.0	400.0))
	#
	# === call ========================================
	#(func04	100.0	200.0	300.0	400.0)
	lla	t0,.LC_400D
	fld	ft0,0(t0)
	fmv.x.d	a3,ft0
	lla	t0,.LC_300D
	fld	ft0,0(t0)
	fmv.x.d	a2,ft0
	lla	t0,.LC_200D
	fld	ft0,0(t0)
	fmv.x.d	a1,ft0
	lla	t0,.LC_100D
	fld	ft0,0(t0)
	fmv.x.d	a0,ft0
	call	func04
	fmv.d.x	ft0,a0
	fsd	ft0,-24(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	ans	(func05	100.0	200.0	300.0	400.0	500.0))
	#
	# === call ========================================
	#(func05	100.0	200.0	300.0	400.0	500.0)
	lla	t0,.LC_500D
	fld	ft0,0(t0)
	fmv.x.d	a4,ft0
	lla	t0,.LC_400D
	fld	ft0,0(t0)
	fmv.x.d	a3,ft0
	lla	t0,.LC_300D
	fld	ft0,0(t0)
	fmv.x.d	a2,ft0
	lla	t0,.LC_200D
	fld	ft0,0(t0)
	fmv.x.d	a1,ft0
	lla	t0,.LC_100D
	fld	ft0,0(t0)
	fmv.x.d	a0,ft0
	call	func05
	fmv.d.x	ft0,a0
	fsd	ft0,-24(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	ans	(func06	100.0	200.0	300.0	400.0	500.0	600.0))
	#
	# === call ========================================
	#(func06	100.0	200.0	300.0	400.0	500.0	600.0)
	lla	t0,.LC_600D
	fld	ft0,0(t0)
	fmv.x.d	a5,ft0
	lla	t0,.LC_500D
	fld	ft0,0(t0)
	fmv.x.d	a4,ft0
	lla	t0,.LC_400D
	fld	ft0,0(t0)
	fmv.x.d	a3,ft0
	lla	t0,.LC_300D
	fld	ft0,0(t0)
	fmv.x.d	a2,ft0
	lla	t0,.LC_200D
	fld	ft0,0(t0)
	fmv.x.d	a1,ft0
	lla	t0,.LC_100D
	fld	ft0,0(t0)
	fmv.x.d	a0,ft0
	call	func06
	fmv.d.x	ft0,a0
	fsd	ft0,-24(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	ans	(func07	100.0	200.0	300.0	400.0	500.0	600.0	700.0))
	#
	# === call ========================================
	#(func07	100.0	200.0	300.0	400.0	500.0	600.0	700.0)
	lla	t0,.LC_700D
	fld	ft0,0(t0)
	fmv.x.d	a6,ft0
	lla	t0,.LC_600D
	fld	ft0,0(t0)
	fmv.x.d	a5,ft0
	lla	t0,.LC_500D
	fld	ft0,0(t0)
	fmv.x.d	a4,ft0
	lla	t0,.LC_400D
	fld	ft0,0(t0)
	fmv.x.d	a3,ft0
	lla	t0,.LC_300D
	fld	ft0,0(t0)
	fmv.x.d	a2,ft0
	lla	t0,.LC_200D
	fld	ft0,0(t0)
	fmv.x.d	a1,ft0
	lla	t0,.LC_100D
	fld	ft0,0(t0)
	fmv.x.d	a0,ft0
	call	func07
	fmv.d.x	ft0,a0
	fsd	ft0,-24(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	ans	(func08	100.0	200.0	300.0	400.0	500.0	600.0	700.0	800.0))
	#
	# === call ========================================
	#(func08	100.0	200.0	300.0	400.0	500.0	600.0	700.0	800.0)
	lla	t0,.LC_800D
	fld	ft0,0(t0)
	fmv.x.d	a7,ft0
	lla	t0,.LC_700D
	fld	ft0,0(t0)
	fmv.x.d	a6,ft0
	lla	t0,.LC_600D
	fld	ft0,0(t0)
	fmv.x.d	a5,ft0
	lla	t0,.LC_500D
	fld	ft0,0(t0)
	fmv.x.d	a4,ft0
	lla	t0,.LC_400D
	fld	ft0,0(t0)
	fmv.x.d	a3,ft0
	lla	t0,.LC_300D
	fld	ft0,0(t0)
	fmv.x.d	a2,ft0
	lla	t0,.LC_200D
	fld	ft0,0(t0)
	fmv.x.d	a1,ft0
	lla	t0,.LC_100D
	fld	ft0,0(t0)
	fmv.x.d	a0,ft0
	call	func08
	fmv.d.x	ft0,a0
	fsd	ft0,-24(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	ans	(func09	100.0	200.0	300.0	400.0	500.0	600.0	700.0	800.0	900.0))
	#
	# === call ========================================
	#(func09	100.0	200.0	300.0	400.0	500.0	600.0	700.0	800.0	900.0)
	lla	t0,.LC_900D
	fld	ft0,0(t0)
	fsd	ft0,0(sp)
	lla	t0,.LC_800D
	fld	ft0,0(t0)
	fmv.x.d	a7,ft0
	lla	t0,.LC_700D
	fld	ft0,0(t0)
	fmv.x.d	a6,ft0
	lla	t0,.LC_600D
	fld	ft0,0(t0)
	fmv.x.d	a5,ft0
	lla	t0,.LC_500D
	fld	ft0,0(t0)
	fmv.x.d	a4,ft0
	lla	t0,.LC_400D
	fld	ft0,0(t0)
	fmv.x.d	a3,ft0
	lla	t0,.LC_300D
	fld	ft0,0(t0)
	fmv.x.d	a2,ft0
	lla	t0,.LC_200D
	fld	ft0,0(t0)
	fmv.x.d	a1,ft0
	lla	t0,.LC_100D
	fld	ft0,0(t0)
	fmv.x.d	a0,ft0
	call	func09
	fmv.d.x	ft0,a0
	fsd	ft0,-24(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	ans	(func10	100.0	200.0	300.0	400.0	500.0	600.0	700.0	800.0	900.0	1000.0))
	#
	# === call ========================================
	#(func10	100.0	200.0	300.0	400.0	500.0	600.0	700.0	800.0	900.0	1000.0)
	lla	t0,.LC_1000D
	fld	ft0,0(t0)
	fsd	ft0,8(sp)
	lla	t0,.LC_900D
	fld	ft0,0(t0)
	fsd	ft0,0(sp)
	lla	t0,.LC_800D
	fld	ft0,0(t0)
	fmv.x.d	a7,ft0
	lla	t0,.LC_700D
	fld	ft0,0(t0)
	fmv.x.d	a6,ft0
	lla	t0,.LC_600D
	fld	ft0,0(t0)
	fmv.x.d	a5,ft0
	lla	t0,.LC_500D
	fld	ft0,0(t0)
	fmv.x.d	a4,ft0
	lla	t0,.LC_400D
	fld	ft0,0(t0)
	fmv.x.d	a3,ft0
	lla	t0,.LC_300D
	fld	ft0,0(t0)
	fmv.x.d	a2,ft0
	lla	t0,.LC_200D
	fld	ft0,0(t0)
	fmv.x.d	a1,ft0
	lla	t0,.LC_100D
	fld	ft0,0(t0)
	fmv.x.d	a0,ft0
	call	func10
	fmv.d.x	ft0,a0
	fsd	ft0,-24(s0)
	nop
	ld	ra,40(sp)
	ld	s0,32(sp)
	addi	sp,sp,48
	jr	ra
	.size	main, .-main
	.section .rodata
	.align	3
.LC_100D:
	.word 0
	.word 1079574528
	.align	3
.LC_200D:
	.word 0
	.word 1080623104
	.align	3
.LC_300D:
	.word 0
	.word 1081262080
	.align	3
.LC_400D:
	.word 0
	.word 1081671680
	.align	3
.LC_500D:
	.word 0
	.word 1082081280
	.align	3
.LC_600D:
	.word 0
	.word 1082310656
	.align	3
.LC_700D:
	.word 0
	.word 1082515456
	.align	3
.LC_800D:
	.word 0
	.word 1082720256
	.align	3
.LC_900D:
	.word 0
	.word 1082925056
	.align	3
.LC_1000D:
	.word 0
	.word 1083129856
	.ident	"CIT: () 0.1.0"
