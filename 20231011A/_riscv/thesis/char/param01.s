	.file	"param01.ct"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	val00
	.section .sbss,"aw",@nobits
	.type	val00, @object
	.size	val00, 1
val00:
	.zero 1
	.globl	val01
	.section .sdata,"aw"
	.type	val01, @object
	.size	val01, 1
val01:
	.byte 1
	.globl	val02
	.type	val02, @object
	.size	val02, 1
val02:
	.byte 2
	.globl	val03
	.type	val03, @object
	.size	val03, 1
val03:
	.byte 3
	.globl	val04
	.type	val04, @object
	.size	val04, 1
val04:
	.byte 4
	.globl	val05
	.type	val05, @object
	.size	val05, 1
val05:
	.byte 5
	.globl	val06
	.type	val06, @object
	.size	val06, 1
val06:
	.byte 6
	.globl	val07
	.type	val07, @object
	.size	val07, 1
val07:
	.byte 7
	.globl	val08
	.type	val08, @object
	.size	val08, 1
val08:
	.byte 8
	.globl	val09
	.type	val09, @object
	.size	val09, 1
val09:
	.byte 9
	.globl	val10
	.type	val10, @object
	.size	val10, 1
val10:
	.byte 10
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
	#(RETURN	(CAST	1	char))
	li	a5,1
	mv	a0,a5
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
	sb	a0,-17(s0)
	#
	# === Return1 ========================================
	#(RETURN	p1)
	lbu	a5,-17(s0)
	mv	a0,a5
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
	sb	a0,-17(s0)
	sb	a1,-18(s0)
	#
	# === Return1 ========================================
	#(RETURN	(T(+)	p1	p2))
	lbu	a5,-17(s0)
	lbu	a4,-18(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	mv	a0,a4
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
	sb	a0,-17(s0)
	sb	a1,-18(s0)
	sb	a2,-19(s0)
	#
	# === Return1 ========================================
	#(RETURN	(T(+)	(T(+)	p1	p2)	p3))
	lbu	a5,-17(s0)
	lbu	a4,-18(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,-19(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	mv	a0,a5
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
	sb	a0,-17(s0)
	sb	a1,-18(s0)
	sb	a2,-19(s0)
	sb	a3,-20(s0)
	#
	# === Return1 ========================================
	#(RETURN	(T(+)	(T(+)	(T(+)	p1	p2)	p3)	p4))
	lbu	a5,-17(s0)
	lbu	a4,-18(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,-19(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,-20(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	mv	a0,a4
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
	addi	sp,sp,-32
	sd	s0,24(sp)
	addi	s0,sp,32
	sb	a0,-17(s0)
	sb	a1,-18(s0)
	sb	a2,-19(s0)
	sb	a3,-20(s0)
	sb	a4,-21(s0)
	#
	# === Return1 ========================================
	#(RETURN	(T(+)	(T(+)	(T(+)	(T(+)	p1	p2)	p3)	p4)	p5))
	lbu	a5,-17(s0)
	lbu	a4,-18(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,-19(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,-20(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,-21(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	mv	a0,a5
	j	.func05_exit
.func05_exit:
	ld	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	func05, .-func05
	.align	2
	.globl	func06
	.type	func06, @function
func06:
	addi	sp,sp,-32
	sd	s0,24(sp)
	addi	s0,sp,32
	sb	a0,-17(s0)
	sb	a1,-18(s0)
	sb	a2,-19(s0)
	sb	a3,-20(s0)
	sb	a4,-21(s0)
	sb	a5,-22(s0)
	#
	# === Return1 ========================================
	#(RETURN	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	p1	p2)	p3)	p4)	p5)	p6))
	lbu	a5,-17(s0)
	lbu	a4,-18(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,-19(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,-20(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,-21(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,-22(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	mv	a0,a4
	j	.func06_exit
.func06_exit:
	ld	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	func06, .-func06
	.align	2
	.globl	func07
	.type	func07, @function
func07:
	addi	sp,sp,-32
	sd	s0,24(sp)
	addi	s0,sp,32
	sb	a0,-17(s0)
	sb	a1,-18(s0)
	sb	a2,-19(s0)
	sb	a3,-20(s0)
	sb	a4,-21(s0)
	sb	a5,-22(s0)
	sb	a6,-23(s0)
	#
	# === Return1 ========================================
	#(RETURN	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	p1	p2)	p3)	p4)	p5)	p6)	p7))
	lbu	a5,-17(s0)
	lbu	a4,-18(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,-19(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,-20(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,-21(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,-22(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,-23(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	mv	a0,a5
	j	.func07_exit
.func07_exit:
	ld	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	func07, .-func07
	.align	2
	.globl	func08
	.type	func08, @function
func08:
	addi	sp,sp,-32
	sd	s0,24(sp)
	addi	s0,sp,32
	sb	a0,-17(s0)
	sb	a1,-18(s0)
	sb	a2,-19(s0)
	sb	a3,-20(s0)
	sb	a4,-21(s0)
	sb	a5,-22(s0)
	sb	a6,-23(s0)
	sb	a7,-24(s0)
	#
	# === Return1 ========================================
	#(RETURN	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	p1	p2)	p3)	p4)	p5)	p6)	p7)	p8))
	lbu	a5,-17(s0)
	lbu	a4,-18(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,-19(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,-20(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,-21(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,-22(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,-23(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,-24(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	mv	a0,a4
	j	.func08_exit
.func08_exit:
	ld	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	func08, .-func08
	.align	2
	.globl	func09
	.type	func09, @function
func09:
	addi	sp,sp,-32
	sd	s0,24(sp)
	addi	s0,sp,32
	sb	a0,-17(s0)
	sb	a1,-18(s0)
	sb	a2,-19(s0)
	sb	a3,-20(s0)
	sb	a4,-21(s0)
	sb	a5,-22(s0)
	sb	a6,-23(s0)
	sb	a7,-24(s0)
	#
	# === Return1 ========================================
	#(RETURN	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	p1	p2)	p3)	p4)	p5)	p6)	p7)	p8)	p9))
	lbu	a5,-17(s0)
	lbu	a4,-18(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,-19(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,-20(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,-21(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,-22(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,-23(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,-24(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,0(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	mv	a0,a5
	j	.func09_exit
.func09_exit:
	ld	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	func09, .-func09
	.align	2
	.globl	func10
	.type	func10, @function
func10:
	addi	sp,sp,-32
	sd	s0,24(sp)
	addi	s0,sp,32
	sb	a0,-17(s0)
	sb	a1,-18(s0)
	sb	a2,-19(s0)
	sb	a3,-20(s0)
	sb	a4,-21(s0)
	sb	a5,-22(s0)
	sb	a6,-23(s0)
	sb	a7,-24(s0)
	#
	# === Return1 ========================================
	#(RETURN	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	p1	p2)	p3)	p4)	p5)	p6)	p7)	p8)	p9)	p10))
	lbu	a5,-17(s0)
	lbu	a4,-18(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,-19(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,-20(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,-21(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,-22(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,-23(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,-24(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,0(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,8(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	mv	a0,a4
	j	.func10_exit
.func10_exit:
	ld	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	func10, .-func10
	.align	2
	.globl	func11
	.type	func11, @function
func11:
	addi	sp,sp,-32
	sd	s0,24(sp)
	addi	s0,sp,32
	sb	a0,-17(s0)
	sb	a1,-18(s0)
	sb	a2,-19(s0)
	sb	a3,-20(s0)
	sb	a4,-21(s0)
	sb	a5,-22(s0)
	sb	a6,-23(s0)
	sb	a7,-24(s0)
	#
	# === Return1 ========================================
	#(RETURN	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	p1	p2)	p3)	p4)	p5)	p6)	p7)	p8)	p9)	p10)	p11))
	lbu	a5,-17(s0)
	lbu	a4,-18(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,-19(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,-20(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,-21(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,-22(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,-23(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,-24(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,0(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,8(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,16(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	mv	a0,a5
	j	.func11_exit
.func11_exit:
	ld	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	func11, .-func11
	.align	2
	.globl	func12
	.type	func12, @function
func12:
	addi	sp,sp,-32
	sd	s0,24(sp)
	addi	s0,sp,32
	sb	a0,-17(s0)
	sb	a1,-18(s0)
	sb	a2,-19(s0)
	sb	a3,-20(s0)
	sb	a4,-21(s0)
	sb	a5,-22(s0)
	sb	a6,-23(s0)
	sb	a7,-24(s0)
	#
	# === Return1 ========================================
	#(RETURN	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	p1	p2)	p3)	p4)	p5)	p6)	p7)	p8)	p9)	p10)	p11)	p12))
	lbu	a5,-17(s0)
	lbu	a4,-18(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,-19(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,-20(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,-21(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,-22(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,-23(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,-24(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,0(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,8(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,16(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,24(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	mv	a0,a4
	j	.func12_exit
.func12_exit:
	ld	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	func12, .-func12
	.align	2
	.globl	func13
	.type	func13, @function
func13:
	addi	sp,sp,-32
	sd	s0,24(sp)
	addi	s0,sp,32
	sb	a0,-17(s0)
	sb	a1,-18(s0)
	sb	a2,-19(s0)
	sb	a3,-20(s0)
	sb	a4,-21(s0)
	sb	a5,-22(s0)
	sb	a6,-23(s0)
	sb	a7,-24(s0)
	#
	# === Return1 ========================================
	#(RETURN	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	p1	p2)	p3)	p4)	p5)	p6)	p7)	p8)	p9)	p10)	p11)	p12)	p13))
	lbu	a5,-17(s0)
	lbu	a4,-18(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,-19(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,-20(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,-21(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,-22(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,-23(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,-24(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,0(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,8(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,16(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,24(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,32(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	mv	a0,a5
	j	.func13_exit
.func13_exit:
	ld	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	func13, .-func13
	.align	2
	.globl	func30
	.type	func30, @function
func30:
	addi	sp,sp,-32
	sd	s0,24(sp)
	addi	s0,sp,32
	sb	a0,-17(s0)
	sb	a1,-18(s0)
	sb	a2,-19(s0)
	sb	a3,-20(s0)
	sb	a4,-21(s0)
	sb	a5,-22(s0)
	sb	a6,-23(s0)
	sb	a7,-24(s0)
	#
	# === Return1 ========================================
	#(RETURN	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	(T(+)	p01	p02)	p03)	p04)	p05)	p06)	p07)	p08)	p09)	p10)	p11)	p12)	p13)	p14)	p15)	p16)	p17)	p18)	p19)	p20)	p21)	p22)	p23)	p24)	p25)	p26)	p27)	p28)	p29)	p30))
	lbu	a5,-17(s0)
	lbu	a4,-18(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,-19(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,-20(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,-21(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,-22(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,-23(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,-24(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,0(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,8(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,16(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,24(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,32(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,40(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,48(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,56(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,64(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,72(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,80(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,88(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,96(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,104(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,112(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,120(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,128(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,136(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,144(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,152(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	lbu	a5,160(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,168(s0)
	addw	a4,a5,a4
	andi	a4,a4,0xff
	mv	a0,a4
	j	.func30_exit
.func30_exit:
	ld	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	func30, .-func30
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
	sb	a0,-17(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	ans	(func01	1))
	#
	# === call ========================================
	#(func01	1)
	li	a0,1
	call	func01
	sb	a0,-17(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	ans	(func02	1	2))
	#
	# === call ========================================
	#(func02	1	2)
	li	a1,2
	li	a0,1
	call	func02
	sb	a0,-17(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	ans	(func03	1	2	3))
	#
	# === call ========================================
	#(func03	1	2	3)
	li	a2,3
	li	a1,2
	li	a0,1
	call	func03
	sb	a0,-17(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	ans	(func04	1	2	3	4))
	#
	# === call ========================================
	#(func04	1	2	3	4)
	li	a3,4
	li	a2,3
	li	a1,2
	li	a0,1
	call	func04
	sb	a0,-17(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	ans	(func05	1	2	3	4	5))
	#
	# === call ========================================
	#(func05	1	2	3	4	5)
	li	a4,5
	li	a3,4
	li	a2,3
	li	a1,2
	li	a0,1
	call	func05
	sb	a0,-17(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	ans	(func06	1	2	3	4	5	6))
	#
	# === call ========================================
	#(func06	1	2	3	4	5	6)
	li	a5,6
	li	a4,5
	li	a3,4
	li	a2,3
	li	a1,2
	li	a0,1
	call	func06
	sb	a0,-17(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	ans	(func07	1	2	3	4	5	6	7))
	#
	# === call ========================================
	#(func07	1	2	3	4	5	6	7)
	li	a6,7
	li	a5,6
	li	a4,5
	li	a3,4
	li	a2,3
	li	a1,2
	li	a0,1
	call	func07
	sb	a0,-17(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	ans	(func08	1	2	3	4	5	6	7	8))
	#
	# === call ========================================
	#(func08	1	2	3	4	5	6	7	8)
	li	a7,8
	li	a6,7
	li	a5,6
	li	a4,5
	li	a3,4
	li	a2,3
	li	a1,2
	li	a0,1
	call	func08
	sb	a0,-17(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	ans	(func09	1	2	3	4	5	6	7	8	9))
	#
	# === call ========================================
	#(func09	1	2	3	4	5	6	7	8	9)
	li	a5,9
	sd	a5,0(sp)
	li	a7,8
	li	a6,7
	li	a5,6
	li	a4,5
	li	a3,4
	li	a2,3
	li	a1,2
	li	a0,1
	call	func09
	sb	a0,-17(s0)
	#
	# === ccfAssign ========================================
	#(T(=)	ans	(func10	val01	val02	val03	val04	val05	val06	val07	val08	val09	val10))
	#
	# === call ========================================
	#(func10	val01	val02	val03	val04	val05	val06	val07	val08	val09	val10)
	lla	a5,val10
	lbu	a5,0(a5)
	sd	a5,8(sp)
	lla	a5,val09
	lbu	a5,0(a5)
	sd	a5,0(sp)
	lla	a7,val08
	lbu	a7,0(a7)
	lla	a6,val07
	lbu	a6,0(a6)
	lla	a5,val06
	lbu	a5,0(a5)
	lla	a4,val05
	lbu	a4,0(a4)
	lla	a3,val04
	lbu	a3,0(a3)
	lla	a2,val03
	lbu	a2,0(a2)
	lla	a1,val02
	lbu	a1,0(a1)
	lla	a0,val01
	lbu	a0,0(a0)
	call	func10
	sb	a0,-17(s0)
	nop
	ld	ra,40(sp)
	ld	s0,32(sp)
	addi	sp,sp,48
	jr	ra
	.size	main, .-main
	.ident	"CIT: () 0.1.0"
