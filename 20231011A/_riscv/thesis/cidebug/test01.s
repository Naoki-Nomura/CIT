	.file	"test01.ct"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	answer
	.section .sdata,"aw"
	.align	2
	.type	answer, @object
	.size	answer, 4
answer:
	.word 10
	.text
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
	#(CIDebug.vint	"answer="	answer	10)
