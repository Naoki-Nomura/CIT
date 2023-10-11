	.file	"bitfield01.ct"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	val
	.section .sbss,"aw",@nobits
	.align	2
	.type	val, @object
	.size	val, 4
val:
	.zero 4
	.globl	ival
	.align	2
	.type	ival, @object
	.size	ival, 4
ival:
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
	#(T(=)	val.u	0xffffffff)
	li	a5,-1
	lla	a4,val
	sw	a5,0(a4)
	#
	# === ccfAssign ========================================
	#(T(=)	ival	(T(+)	(T(+)	val.f.a	val.f.b)	val.f.c))
	lla	a5,val
	#--- BuildBitValueCode() --- bitpos:0  bitcnt:10
	ld	a5,0(a5)
	andi	a5,a5,1023
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	t0,a5
	lla	a5,val
	#--- BuildBitValueCode() --- bitpos:10  bitcnt:8
	ld	a5,0(a5)
	srli	a5,a5,10
	andi	a5,a5,-1
	andi	a5,a5,0xff
	sext.w	t1,a5
	addw	t1,t0,t1
	sext.w	t1,t1
	lla	a5,val
	#--- BuildBitValueCode() --- bitpos:18  bitcnt:12
	ld	a5,0(a5)
	srli	a5,a5,18
	#--- base number to apply when exceeding 11 bits >>>4096
	li	t0,4096
	addi	t0,t0,-1
	and	a5,a5,t0
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	t0,a5
	addw	t0,t1,t0
	sext.w	t0,t0
	lla	a5,ival
	sw	t0,0(a5)
	#
	# === ccfAssign ========================================
	#(T(=)	val.f.a	0x02)
	#--- TEST1 --- 
	li	a5,2
	lla	a4,val
	#--- BitAssign() --- bitpos:0  bitcnt:10 ValMask:3ff
	#--- BitAssign() --- GetClearMask64:fffffffffffffc00
	lw	t0,0(a4)
	#--- clearMask  >>>18446744073709550592
	andi	t0,t0,-1024
	or	t0,t0,a5
	sw	t0,0(a4)
	# --- BitAssign
	#
	# === ccfAssign ========================================
	#(T(=)	val.f.b	0x5)
	#--- TEST1 --- 
	li	a5,5
	lla	a4,val
	#--- BitAssign() --- bitpos:10  bitcnt:8 ValMask:3fc00
	#--- BitAssign() --- GetClearMask64:fffffffffffc03ff
	lw	t0,0(a4)
	#--- clearMask  >>>18446744073709290495
	#--- leftbitTotal >>>1023
	li	t1,-262144
	addi	t1,t1,1023
	and	t0,t0,t1
	slli	a5,a5,10
	or	t0,t0,a5
	sw	t0,0(a4)
	# --- BitAssign
	#
	# === ccfAssign ========================================
	#(T(=)	val.f.c	0x3)
	#--- TEST1 --- 
	li	a5,3
	lla	a4,val
	#--- BitAssign() --- bitpos:18  bitcnt:12 ValMask:3ffc0000
	#--- BitAssign() --- GetClearMask64:ffffffffc003ffff
	lw	t0,0(a4)
	#--- clearMask  >>>18446744072636071935
	#--- leftbitTotal >>>262143
	li	t1,-1073479680
	addi	t1,t1,-1
	and	t0,t0,t1
	slli	a5,a5,18
	or	t0,t0,a5
	sw	t0,0(a4)
	# --- BitAssign
	#
	# === ccfAssign ========================================
	#(T(=)	val.f.d	0x1)
	#--- TEST1 --- 
	li	a5,1
	lla	a4,val
	#--- BitAssign() --- bitpos:30  bitcnt:2 ValMask:c0000000
	#--- BitAssign() --- GetClearMask64:ffffffff3fffffff
	lw	t0,0(a4)
	#--- clearMask  >>>18446744070488326143
	#--- leftbitTotal >>>1073741823
	li	t1,1073741824
	addi	t1,t1,-1
	and	t0,t0,t1
	slli	a5,a5,30
	or	t0,t0,a5
	sw	t0,0(a4)
	# --- BitAssign
	nop
	ld	s0,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.ident	"CIT: () 0.1.0"
