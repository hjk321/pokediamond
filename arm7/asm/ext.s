	.include	"asm/macros.inc"
	.include	"global.inc"
	.section	.text
	.balign	4, 0

	; This file's BSS
	; Linking of BSS is a work in progress
	.extern	_06019980
	.extern	_06019988
	.extern	_060199A8
	.extern	_060199B8
	.extern	_060199D8
	.extern	_060199E8
	.extern	_06019A08
	.extern	_0601AA88
	.extern	_0601AEB4

	arm_func_start FUN_06000000
FUN_06000000: ; 0x06000000
	ldr	r1, _0600002C	; =_0601A960
	ldr	r2, [r1, #1360]	; 0x550
	strh	r0, [r2, #50]	; 0x32
	add	r1, r2, #256	; 0x100
	ldrh	r1, [r1, #136]	; 0x88
	cmp	r1, #0
	addeq	r0, r0, #2
	streqh	r0, [r2, #58]	; 0x3a
	addne	r0, r0, #2
	strneh	r0, [r2, #56]	; 0x38
	bx	lr
_0600002C:	.word	_0601A960

	arm_func_start FUN_06000030
FUN_06000030: ; 0x06000030
	ldr	r1, _0600005C	; =_0601A960
	ldr	r2, [r1, #1360]	; 0x550
	strh	r0, [r2, #48]	; 0x30
	add	r1, r2, #256	; 0x100
	ldrh	r1, [r1, #136]	; 0x88
	cmp	r1, #0
	addeq	r0, r0, #4
	streqh	r0, [r2, #56]	; 0x38
	addne	r0, r0, #4
	strneh	r0, [r2, #58]	; 0x3a
	bx	lr
_0600005C:	.word	_0601A960

	arm_func_start FUN_06000060
FUN_06000060: ; 0x06000060
	ldr	r1, _060000AC	; =_0601A960
	ldr	r2, [r1, #1360]	; 0x550
	strh	r0, [r2, #54]	; 0x36
	strh	r0, [r2, #50]	; 0x32
	add	r1, r2, #256	; 0x100
	ldrh	r1, [r1, #136]	; 0x88
	cmp	r1, #0
	addne	r0, r0, #2
	movne	r0, r0, lsl #16
	movne	r0, r0, lsr #16
	strneh	r0, [r2, #60]	; 0x3c
	strneh	r0, [r2, #56]	; 0x38
	bxne	lr
	add	r0, r0, #2
	mov	r0, r0, lsl #16
	mov	r0, r0, lsr #16
	strh	r0, [r2, #62]	; 0x3e
	strh	r0, [r2, #58]	; 0x3a
	bx	lr
_060000AC:	.word	_0601A960

	arm_func_start FUN_060000B0
FUN_060000B0: ; 0x060000B0
	ldr	r1, _060000FC	; =_0601A960
	ldr	r2, [r1, #1360]	; 0x550
	strh	r0, [r2, #48]	; 0x30
	strh	r0, [r2, #52]	; 0x34
	add	r1, r2, #256	; 0x100
	ldrh	r1, [r1, #136]	; 0x88
	cmp	r1, #0
	addne	r0, r0, #4
	movne	r0, r0, lsl #16
	movne	r0, r0, lsr #16
	strneh	r0, [r2, #62]	; 0x3e
	strneh	r0, [r2, #58]	; 0x3a
	bxne	lr
	add	r0, r0, #4
	mov	r0, r0, lsl #16
	mov	r0, r0, lsr #16
	strh	r0, [r2, #60]	; 0x3c
	strh	r0, [r2, #56]	; 0x38
	bx	lr
_060000FC:	.word	_0601A960

	arm_func_start FUN_06000100
FUN_06000100: ; 0x06000100
	ldr	r0, _06000130	; =_0601A960
	ldr	r1, [r0, #1360]	; 0x550
	mov	r0, #0
	strh	r0, [r1, #56]	; 0x38
	strh	r0, [r1, #58]	; 0x3a
	strh	r0, [r1, #48]	; 0x30
	strh	r0, [r1, #50]	; 0x32
	strh	r0, [r1, #60]	; 0x3c
	strh	r0, [r1, #62]	; 0x3e
	strh	r0, [r1, #52]	; 0x34
	strh	r0, [r1, #54]	; 0x36
	bx	lr
_06000130:	.word	_0601A960

	arm_func_start FUN_06000134
FUN_06000134: ; 0x06000134
	stmdb	sp!, {r4, lr}
	mov	r4, #0
	bl	FUN_060001A4
	ldr	r1, _060001A0	; =_0601A960
	ldr	r2, [r1, #1356]	; 0x54c
	cmp	r2, #0
	beq	_06000190
	mov	ip, r4
	b	_06000188
_06000158:
	mov	r3, ip, lsl #4
	add	r1, r2, ip, lsl #4
	ldr	r1, [r1, #208]	; 0xd0
	ands	r1, r1, #32768	; 0x8000
	beq	_06000184
	add	r2, r2, #208	; 0xd0
	add	r4, r2, r3
	ldr	r1, [r2, r3]
	bic	r1, r1, #32768	; 0x8000
	str	r1, [r2, r3]
	b	_06000190
_06000184:
	add	ip, ip, #1
_06000188:
	cmp	ip, #32
	blt	_06000158
_06000190:
	bl	FUN_060001AC
	mov	r0, r4
	ldmia	sp!, {r4, lr}
	bx	lr
_060001A0:	.word	_0601A960

	arm_func_start FUN_060001A4
FUN_060001A4: ; 0x060001A4
	ldr	pc, _060001A8	; =FUN_037FB05C
_060001A8:	.word	FUN_037FB05C

	arm_func_start FUN_060001AC
FUN_060001AC: ; 0x060001AC
	ldr	pc, _060001B0	; =FUN_037FB070
_060001B0:	.word	FUN_037FB070

	arm_func_start FUN_060001B4
FUN_060001B4: ; 0x060001B4
	stmdb	sp!, {r4, r5, r6, lr}
	mov	r6, r0
	mov	r5, r1
	mov	r4, r2
	bl	FUN_060001E8
	strh	r6, [r0]
	mov	r1, #1
	strh	r1, [r0, #2]
	strh	r5, [r0, #4]
	strh	r4, [r0, #6]
	bl	FUN_060001F0
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr

	arm_func_start FUN_060001E8
FUN_060001E8: ; 0x060001E8
	ldr	pc, _060001EC	; =FUN_03807534
_060001EC:	.word	FUN_03807534

	arm_func_start FUN_060001F0
FUN_060001F0: ; 0x060001F0
	ldr	pc, _060001F4	; =FUN_03807590
_060001F4:	.word	FUN_03807590

	arm_func_start FUN_060001F8
FUN_060001F8: ; 0x060001F8
	ldr	r0, _06000200	; =_0380B808
	bx	lr
_06000200:	.word	_0380B808

	arm_func_start FUN_06000204
FUN_06000204: ; 0x06000204
	ldr	r0, _0600020C	; =_0380B764
	bx	lr
_0600020C:	.word	_0380B764

	arm_func_start FUN_06000210
FUN_06000210: ; 0x06000210
	stmdb	sp!, {r4, lr}
	bl	FUN_060001A4
	mov	r4, r0
	bl	FUN_06000270
	ldr	r0, _06000264	; =_0380B808
	ldr	r1, _06000268	; =_0601A960
	ldr	r1, [r1, #1400]	; 0x578
	bl	FUN_06000278
	bl	FUN_06008D18
	ldr	r1, _06000268	; =_0601A960
	ldr	r1, [r1, #1404]	; 0x57c
	bl	FUN_06000278
	ldr	r0, _0600026C	; =_0380B764
	ldr	r1, _06000268	; =_0601A960
	ldr	r1, [r1, #1408]	; 0x580
	bl	FUN_06000278
	bl	FUN_06000280
	mov	r0, r4
	bl	FUN_060001AC
	ldmia	sp!, {r4, lr}
	bx	lr
_06000264:	.word	_0380B808
_06000268:	.word	_0601A960
_0600026C:	.word	_0380B764

	arm_func_start FUN_06000270
FUN_06000270: ; 0x06000270
	ldr	pc, _06000274	; =FUN_037F8D88
_06000274:	.word	FUN_037F8D88

	arm_func_start FUN_06000278
FUN_06000278: ; 0x06000278
	ldr	pc, _0600027C	; =FUN_037F8EB8
_0600027C:	.word	FUN_037F8EB8

	arm_func_start FUN_06000280
FUN_06000280: ; 0x06000280
	ldr	pc, _06000284	; =FUN_037F8D50
_06000284:	.word	FUN_037F8D50

	arm_func_start FUN_06000288
FUN_06000288: ; 0x06000288
	stmdb	sp!, {r4, lr}
	bl	FUN_060001A4
	mov	r4, r0
	bl	FUN_06000270
	ldr	r0, _060002DC	; =_0380B764
	ldr	r1, _060002E0	; =_0601A960
	ldr	r1, [r1, #1420]	; 0x58c
	bl	FUN_06000278
	bl	FUN_06008D18
	ldr	r1, _060002E0	; =_0601A960
	ldr	r1, [r1, #1416]	; 0x588
	bl	FUN_06000278
	ldr	r0, _060002E4	; =_0380B808
	ldr	r1, _060002E0	; =_0601A960
	ldr	r1, [r1, #1412]	; 0x584
	bl	FUN_06000278
	bl	FUN_06000280
	mov	r0, r4
	bl	FUN_060001AC
	ldmia	sp!, {r4, lr}
	bx	lr
_060002DC:	.word	_0380B764
_060002E0:	.word	_0601A960
_060002E4:	.word	_0380B808

	arm_func_start FUN_060002E8
FUN_060002E8: ; 0x060002E8
	ldr	r1, _0600034C	; =_0601A960
	ldr	r1, [r1, #1356]	; 0x54c
	ldrb	r1, [r1, #83]	; 0x53
	cmp	r1, #8
	bne	_06000324
	cmp	r0, #22
	movcc	r0, #0
	bxcc	lr
	cmp	r0, #28
	movcc	r0, #1
	bxcc	lr
	cmp	r0, #34	; 0x22
	movcc	r0, #2
	movcs	r0, #3
	bx	lr
_06000324:
	cmp	r0, #8
	movcc	r0, #0
	bxcc	lr
	cmp	r0, #14
	movcc	r0, #1
	bxcc	lr
	cmp	r0, #20
	movcc	r0, #2
	movcs	r0, #3
	bx	lr
_0600034C:	.word	_0601A960

	arm_func_start FUN_06000350
FUN_06000350: ; 0x06000350
	mov	r2, #0
	mov	r3, r2
	ldr	r1, _06000384	; =_06019960
_0600035C:
	add	r0, r1, r3
	add	r0, r0, #4096	; 0x1000
	ldrb	r0, [r0, #1364]	; 0x554
	add	r2, r2, r0
	add	r3, r3, #1
	cmp	r3, #32
	blt	_0600035C
	mov	r0, r2, lsr #5
	ldr	ip, _06000388	; =FUN_060002E8
	bx	ip
_06000384:	.word	_06019960
_06000388:	.word	FUN_060002E8

	arm_func_start FUN_0600038C
FUN_0600038C: ; 0x0600038C
	mov	r3, #0
	ldr	r2, _060003BC	; =_06019960
_06000394:
	add	r1, r2, r3
	add	r1, r1, #4096	; 0x1000
	strb	r0, [r1, #1364]	; 0x554
	add	r3, r3, #1
	cmp	r3, #32
	blt	_06000394
	mov	r1, #0
	ldr	r0, _060003C0	; =_0601A960
	str	r1, [r0, #1396]	; 0x574
	bx	lr
_060003BC:	.word	_06019960
_060003C0:	.word	_0601A960

	arm_func_start FUN_060003C4
FUN_060003C4: ; 0x060003C4
	ldr	r1, _060003FC	; =_0601A960
	ldr	r3, [r1, #1396]	; 0x574
	ldr	r2, _06000400	; =_0601AEB4
	strb	r0, [r2, r3]
	ldr	r2, [r1, #1396]	; 0x574
	add	r2, r2, #1
	and	r2, r2, #31
	str	r2, [r1, #1396]	; 0x574
	ldr	r2, _06000404	; =0x027FFF98
	ldrh	r1, [r2]
	eor	r0, r0, r1, lsl #1
	eor	r0, r0, r0, lsr #16
	strh	r0, [r2]
	bx	lr
_060003FC:	.word	_0601A960
_06000400:	.word	_0601AEB4
_06000404:	.word	0x027FFF98

	arm_func_start FUN_06000408
FUN_06000408: ; 0x06000408
	stmdb	sp!, {r4, r5, r6, lr}
	mov	r6, r0
	mov	r5, r1
	ldr	r0, _0600054C	; =_0601A960
	ldr	r4, [r0, #1360]	; 0x550
	add	r0, r4, #224	; 0xe0
	add	r1, r5, #16
	mov	r2, #6
	bl	FUN_06000554
	mov	r0, #7
	strh	r0, [r5, #22]
	add	r0, r4, #256	; 0x100
	ldrh	r1, [r0, #244]	; 0xf4
	strh	r1, [r5, #24]
	ldrh	r1, [r0, #236]	; 0xec
	strh	r1, [r5, #30]
	ldrh	r1, [r4, #230]	; 0xe6
	strh	r1, [r5, #28]
	ldr	r1, [r4, #408]	; 0x198
	cmp	r1, #0
	bne	_06000480
	mov	r0, #0
	strh	r0, [r5, #32]
	strh	r0, [r5, #34]	; 0x22
	add	r1, r5, #36	; 0x24
	mov	r2, #80	; 0x50
	bl	FUN_0600055C
	mov	r0, #0
	strh	r0, [r5, #158]	; 0x9e
	b	_060004A8
_06000480:
	ldrh	r0, [r0, #150]	; 0x96
	strh	r0, [r5, #32]
	ldrh	r0, [r4, #196]	; 0xc4
	strh	r0, [r5, #34]	; 0x22
	add	r0, r4, #412	; 0x19c
	add	r1, r5, #36	; 0x24
	mov	r2, #80	; 0x50
	bl	FUN_06000554
	mov	r0, #1
	strh	r0, [r5, #158]	; 0x9e
_060004A8:
	mov	r0, #1
	strh	r0, [r5, #116]	; 0x74
	strh	r0, [r5, #118]	; 0x76
	ldrh	r0, [r4, #230]	; 0xe6
	cmp	r0, #1
	moveq	r0, #0
	streqh	r0, [r5, #120]	; 0x78
	movne	r0, #16
	strneh	r0, [r5, #120]	; 0x78
	mov	r0, #10
	strh	r0, [r5, #122]	; 0x7a
	cmp	r6, #38	; 0x26
	bne	_060004F0
	mov	r0, #0
	add	r1, r5, #124	; 0x7c
	mov	r2, #32
	bl	FUN_0600055C
	b	_06000510
_060004F0:
	mov	r0, #0
	add	r1, r5, #124	; 0x7c
	mov	r2, #8
	bl	FUN_0600055C
	ldr	r0, _06000550	; =0x0000FFFF
	add	r1, r5, #132	; 0x84
	mov	r2, #24
	bl	FUN_0600055C
_06000510:
	add	r0, r4, #256	; 0x100
	ldrh	r0, [r0, #238]	; 0xee
	strh	r0, [r5, #156]	; 0x9c
	mov	r0, r5
	bl	FUN_06002810
	ldrh	r2, [r0, #4]
	cmp	r2, #0
	moveq	r0, #1
	beq	_06000544
	mov	r0, r6
	mov	r1, #512	; 0x200
	bl	FUN_060001B4
	mov	r0, #0
_06000544:
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr
_0600054C:	.word	_0601A960
_06000550:	.word	0x0000FFFF

	arm_func_start FUN_06000554
FUN_06000554: ; 0x06000554
	ldr	pc, _06000558	; =FUN_037FB478
_06000558:	.word	FUN_037FB478

	arm_func_start FUN_0600055C
FUN_0600055C: ; 0x0600055C
	ldr	pc, _06000560	; =FUN_037FB300
_06000560:	.word	FUN_037FB300

	arm_func_start FUN_06000564
FUN_06000564: ; 0x06000564
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	mov	r2, r0
	ldr	r0, [r1, #8]
	str	r0, [r2, #4]
	ldrh	r0, [r1, #12]
	strh	r0, [r2, #8]
	ldrh	r0, [r1, #18]
	cmp	r0, #0
	movne	r3, #2
	moveq	r3, #0
	ldrh	r0, [r1, #14]
	cmp	r0, #0
	movne	ip, #1
	moveq	ip, #0
	ldrh	r0, [r1, #20]
	cmp	r0, #0
	movne	lr, #4
	moveq	lr, #0
	orr	r0, ip, r3
	orr	r0, lr, r0
	strb	r0, [r2, #11]
	ldrh	r0, [r1, #4]
	strb	r0, [r2, #10]
	mov	r0, #1
	strh	r0, [r2]
	strb	r0, [r2, #2]
	mov	r0, #0
	strb	r0, [r2, #3]
	ldrh	r0, [r1, #52]	; 0x34
	strh	r0, [r2, #12]
	ldrh	r0, [r1, #54]	; 0x36
	strh	r0, [r2, #14]
	ldrb	r3, [r2, #10]
	cmp	r3, #0
	beq	_06000608
	ldr	r0, [r1]
	add	r1, r2, #16
	add	r2, r3, #1
	bic	r2, r2, #1
	bl	FUN_06000554
_06000608:
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr

	arm_func_start FUN_06000614
FUN_06000614: ; 0x06000614
	ldr	r1, _0600068C	; =_0601A960
	ldr	r1, [r1, #1360]	; 0x550
	add	r3, r1, #224	; 0xe0
	ldrb	r2, [r0]
	ldrb	r1, [r1, #224]	; 0xe0
	cmp	r2, r1
	bne	_06000684
	ldrb	r2, [r0, #1]
	ldrb	r1, [r3, #1]
	cmp	r2, r1
	bne	_06000684
	ldrb	r2, [r0, #2]
	ldrb	r1, [r3, #2]
	cmp	r2, r1
	bne	_06000684
	ldrb	r2, [r0, #3]
	ldrb	r1, [r3, #3]
	cmp	r2, r1
	bne	_06000684
	ldrb	r2, [r0, #4]
	ldrb	r1, [r3, #4]
	cmp	r2, r1
	bne	_06000684
	ldrb	r1, [r0, #5]
	ldrb	r0, [r3, #5]
	cmp	r1, r0
	moveq	r0, #1
	bxeq	lr
_06000684:
	mov	r0, #0
	bx	lr
_0600068C:	.word	_0601A960

	arm_func_start FUN_06000690
FUN_06000690: ; 0x06000690
	stmdb	sp!, {r4, lr}
	mov	r4, r1
	cmp	r2, #0
	bne	_060006E8
	ldr	r0, _060006F0	; =_060199E8
	mov	r2, #0
	bl	FUN_060006F8
	cmp	r0, #0
	bne	_060006E8
	ldr	r0, _060006F4	; =_0601A960
	ldr	r0, [r0, #1356]	; 0x54c
	cmp	r0, #0
	beq	_060006E8
	bl	FUN_060001E8
	ldrh	r1, [r4]
	strh	r1, [r0]
	mov	r1, #8
	strh	r1, [r0, #2]
	mov	r1, #0
	strh	r1, [r0, #4]
	strh	r1, [r0, #6]
	bl	FUN_060001F0
_060006E8:
	ldmia	sp!, {r4, lr}
	bx	lr
_060006F0:	.word	_060199E8
_060006F4:	.word	_0601A960

	arm_func_start FUN_060006F8
FUN_060006F8: ; 0x060006F8
	ldr	pc, _060006FC	; =FUN_037F9924
_060006FC:	.word	FUN_037F9924

	arm_func_start FUN_06000700
FUN_06000700: ; 0x06000700
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	mov	r1, r0
	ldr	r0, _06000778	; =_06019960
	mov	r2, #1
	bl	FUN_060006F8
	ldr	r0, _0600077C	; =_060199B8
	add	r1, sp, #0
	mov	r2, #1
	bl	FUN_06000780
	ldr	r1, [sp]
	ldrh	r0, [r1, #14]
	add	r0, r1, r0, lsl #1
	ldrh	r0, [r0, #20]
	cmp	r0, #14
	bne	_06000768
	bl	FUN_060001E8
	mov	r1, #128	; 0x80
	strh	r1, [r0]
	mov	r1, #19
	strh	r1, [r0, #2]
	mov	r1, #24
	strh	r1, [r0, #4]
	bl	FUN_060001F0
	bl	FUN_06000788
	bl	FUN_06000790
_06000768:
	ldr	r0, [sp]
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_06000778:	.word	_06019960
_0600077C:	.word	_060199B8

	arm_func_start FUN_06000780
FUN_06000780: ; 0x06000780
	ldr	pc, _06000784	; =FUN_037F9884
_06000784:	.word	FUN_037F9884

	arm_func_start FUN_06000788
FUN_06000788: ; 0x06000788
	ldr	pc, _0600078C	; =FUN_037FBAA8
_0600078C:	.word	FUN_037FBAA8

	arm_func_start FUN_06000790
FUN_06000790: ; 0x06000790
	ldr	pc, _06000794	; =FUN_037FB1F0
_06000794:	.word	FUN_037FB1F0

	arm_func_start FUN_06000798
FUN_06000798: ; 0x06000798
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #12
	mov	r5, r0
	mov	r4, r1
	ldr	r1, [r4]
	ldr	r0, _06000924	; =_0601A960
	str	r1, [r0, #1344]	; 0x540
	ldr	r1, [r5, #36]	; 0x24
	str	r1, [r0, #1348]	; 0x544
	ldr	r1, [r5, #40]	; 0x28
	str	r1, [r0, #1352]	; 0x548
	mov	r1, #0
	str	r1, [r0, #1356]	; 0x54c
	str	r1, [r0, #1360]	; 0x550
	ldr	r0, _06000928	; =_06019960
	ldr	r1, _0600092C	; =_06019980
	mov	r2, #2
	bl	FUN_06000964
	ldr	r0, _06000930	; =_06019988
	ldr	r1, _06000934	; =_060199A8
	mov	r2, #4
	bl	FUN_06000964
	ldr	r0, _06000938	; =_060199B8
	ldr	r1, _0600093C	; =_060199D8
	mov	r2, #4
	bl	FUN_06000964
	ldr	r0, _06000940	; =_060199E8
	ldr	r1, _06000944	; =_06019A08
	mov	r2, #32
	bl	FUN_06000964
	ldr	r0, _06000928	; =_06019960
	str	r0, [r5, #16]
	ldr	r0, _06000930	; =_06019988
	str	r0, [r5, #20]
	ldr	r1, [r4, #8]
	ldr	r0, _06000924	; =_0601A960
	str	r1, [r0, #1400]	; 0x578
	ldr	r1, [r4, #24]
	str	r1, [r0, #1404]	; 0x57c
	ldr	r1, [r4, #16]
	str	r1, [r0, #1408]	; 0x580
	ldr	r1, [r4, #4]
	str	r1, [r0, #1412]	; 0x584
	ldr	r1, [r4, #20]
	str	r1, [r0, #1416]	; 0x588
	ldr	r1, [r4, #12]
	str	r1, [r0, #1420]	; 0x58c
	ldr	r0, _06000948	; =_0601AE88
	bl	FUN_0600096C
	mov	r0, #1024	; 0x400
	str	r0, [sp]
	ldr	r0, [r4, #4]
	str	r0, [sp, #4]
	ldr	r0, _0600094C	; =_0380B808
	ldr	r1, _06000950	; =FUN_060020E0
	mov	r2, #0
	ldr	r3, _06000948	; =_0601AE88
	bl	FUN_06000974
	ldr	r0, _0600094C	; =_0380B808
	bl	FUN_0600097C
	mov	r0, #4096	; 0x1000
	str	r0, [sp]
	ldr	r0, [r4, #12]
	str	r0, [sp, #4]
	ldr	r0, _06000954	; =_0380B764
	ldr	r1, _06000958	; =FUN_06002188
	mov	r2, #0
	ldr	r3, _0600095C	; =_0601AA88
	bl	FUN_06000974
	ldr	r0, _06000954	; =_0380B764
	bl	FUN_0600097C
	mov	r3, #0
	mov	r2, r3
	ldr	r1, _06000928	; =_06019960
_060008C0:
	add	r0, r1, r3
	add	r0, r0, #4096	; 0x1000
	strb	r2, [r0, #1364]	; 0x554
	add	r3, r3, #1
	cmp	r3, #32
	blt	_060008C0
	ldr	r0, _06000924	; =_0601A960
	str	r2, [r0, #1396]	; 0x574
	bl	FUN_06000984
	cmp	r0, #0
	bne	_060008F0
	bl	FUN_0600098C
_060008F0:
	bl	FUN_06000994
	mov	r0, #10
	ldr	r1, _06000960	; =FUN_06000690
	bl	FUN_0600099C
	mov	r0, #2
	str	r0, [r5, #24]
	ldr	r0, [r4, #20]
	str	r0, [r5, #12]
	mov	r0, r5
	bl	FUN_06008D2C
	add	sp, sp, #12
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_06000924:	.word	_0601A960
_06000928:	.word	_06019960
_0600092C:	.word	_06019980
_06000930:	.word	_06019988
_06000934:	.word	_060199A8
_06000938:	.word	_060199B8
_0600093C:	.word	_060199D8
_06000940:	.word	_060199E8
_06000944:	.word	_06019A08
_06000948:	.word	_0601AE88
_0600094C:	.word	_0380B808
_06000950:	.word	FUN_060020E0
_06000954:	.word	_0380B764
_06000958:	.word	FUN_06002188
_0600095C:	.word	_0601AA88
_06000960:	.word	FUN_06000690

	arm_func_start FUN_06000964
FUN_06000964: ; 0x06000964
	ldr	pc, _06000968	; =FUN_037F99B8
_06000968:	.word	FUN_037F99B8

	arm_func_start FUN_0600096C
FUN_0600096C: ; 0x0600096C
	ldr	pc, _06000970	; =FUN_037F9B68
_06000970:	.word	FUN_037F9B68

	arm_func_start FUN_06000974
FUN_06000974: ; 0x06000974
	ldr	pc, _06000978	; =FUN_037F9244
_06000978:	.word	FUN_037F9244

	arm_func_start FUN_0600097C
FUN_0600097C: ; 0x0600097C
	ldr	pc, _06000980	; =FUN_037F8FB4
_06000980:	.word	FUN_037F8FB4

	arm_func_start FUN_06000984
FUN_06000984: ; 0x06000984
	ldr	pc, _06000988	; =FUN_037FAFD0
_06000988:	.word	FUN_037FAFD0

	arm_func_start FUN_0600098C
FUN_0600098C: ; 0x0600098C
	ldr	pc, _06000990	; =FUN_037FAFE0
_06000990:	.word	FUN_037FAFE0

	arm_func_start FUN_06000994
FUN_06000994: ; 0x06000994
	ldr	pc, _06000998	; =FUN_037FB5B0
_06000998:	.word	FUN_037FB5B0

	arm_func_start FUN_0600099C
FUN_0600099C: ; 0x0600099C
	ldr	pc, _060009A0	; =FUN_037FB7A8
_060009A0:	.word	FUN_037FB7A8

	arm_func_start FUN_060009A4
FUN_060009A4: ; 0x060009A4
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	ldr	r0, _060009C8	; =_0380B8D8
	bl	FUN_060009D0
	ldr	r0, _060009CC	; =_0380B8AC
	bl	FUN_060009D0
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_060009C8:	.word	_0380B8D8
_060009CC:	.word	_0380B8AC

	arm_func_start FUN_060009D0
FUN_060009D0: ; 0x060009D0
	ldr	pc, _060009D4	; =FUN_037FA650
_060009D4:	.word	FUN_037FA650

	arm_func_start FUN_060009D8
FUN_060009D8: ; 0x060009D8
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	ldr	r0, _060009FC	; =_0380B8D8
	bl	FUN_06000A04
	ldr	r0, _06000A00	; =_0380B8AC
	bl	FUN_06000A04
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_060009FC:	.word	_0380B8D8
_06000A00:	.word	_0380B8AC

	arm_func_start FUN_06000A04
FUN_06000A04: ; 0x06000A04
	ldr	pc, _06000A08	; =FUN_037FA900
_06000A08:	.word	FUN_037FA900

	arm_func_start FUN_06000A0C
FUN_06000A0C: ; 0x06000A0C
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	bl	FUN_060001E8
	mov	r1, #128	; 0x80
	strh	r1, [r0]
	mov	r1, #0
	strh	r1, [r0, #2]
	mov	r1, #19
	strh	r1, [r0, #4]
	bl	FUN_060001F0
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr

	arm_func_start FUN_06000A40
FUN_06000A40: ; 0x06000A40
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #12
	mov	r8, r0
	ldr	r0, _06000D00	; =_0601A960
	ldr	r6, [r0, #1360]	; 0x550
	ldrh	r0, [r6]
	cmp	r0, #7
	beq	_06000A68
	cmp	r0, #9
	bne	_06000BF4
_06000A68:
	add	r0, r8, #16
	add	r1, sp, #0
	mov	r2, #6
	bl	FUN_06000554
	mov	r5, #0
	mov	r7, r5
	mov	r4, #1
	mov	r9, #6
	b	_06000B6C
_06000A8C:
	bl	FUN_060001A4
	mov	fp, r0
	add	ip, r6, #256	; 0x100
	ldrh	r3, [ip, #130]	; 0x82
	add	r1, r7, #1
	mov	r0, r4, lsl r1
	ands	r0, r3, r0
	beq	_06000B60
	mul	r2, r7, r9
	add	r0, r6, r2
	ldrb	lr, [sp]
	ldrb	sl, [r0, #296]	; 0x128
	cmp	lr, sl
	bne	_06000B60
	ldrb	lr, [sp, #1]
	ldrb	sl, [r0, #297]	; 0x129
	cmp	lr, sl
	bne	_06000B60
	ldrb	lr, [sp, #2]
	ldrb	sl, [r0, #298]	; 0x12a
	cmp	lr, sl
	bne	_06000B60
	ldrb	lr, [sp, #3]
	ldrb	sl, [r0, #299]	; 0x12b
	cmp	lr, sl
	bne	_06000B60
	ldrb	sl, [sp, #4]
	ldrb	lr, [r0, #300]	; 0x12c
	cmp	sl, lr
	bne	_06000B60
	ldrb	sl, [sp, #5]
	ldrb	r0, [r0, #301]	; 0x12d
	cmp	sl, r0
	bne	_06000B60
	mov	r0, r1, lsl #16
	mov	r5, r0, lsr #16
	mvn	r1, r4, lsl r5
	and	r0, r3, r1
	strh	r0, [ip, #130]	; 0x82
	ldrh	r0, [r6, #134]	; 0x86
	and	r0, r0, r1
	strh	r0, [r6, #134]	; 0x86
	mov	r1, #0
	add	r0, r6, r5, lsl #3
	str	r1, [r0, #1848]	; 0x738
	str	r1, [r0, #1852]	; 0x73c
	add	r0, r6, #296	; 0x128
	add	r0, r0, r2
	mov	r2, #6
	bl	FUN_06000D08
	mov	r0, fp
	bl	FUN_060001AC
	b	_06000B74
_06000B60:
	mov	r0, fp
	bl	FUN_060001AC
	add	r7, r7, #1
_06000B6C:
	cmp	r7, #15
	blt	_06000A8C
_06000B74:
	cmp	r5, #0
	beq	_06000CF4
	bl	FUN_060001E8
	mov	r4, r0
	mov	r0, #8
	strh	r0, [r4]
	mov	r0, #0
	strh	r0, [r4, #2]
	mov	r0, #9
	strh	r0, [r4, #8]
	ldrh	r0, [r8, #22]
	strh	r0, [r4, #18]
	strh	r5, [r4, #16]
	add	r0, r8, #16
	add	r1, r4, #10
	mov	r2, #6
	bl	FUN_06000554
	ldrh	r0, [r6, #48]	; 0x30
	strh	r0, [r4, #44]	; 0x2c
	ldrh	r0, [r6, #50]	; 0x32
	strh	r0, [r4, #46]	; 0x2e
	mov	r0, r4
	bl	FUN_060001F0
	ldr	r0, [r6, #12]
	cmp	r0, #1
	bne	_06000CF4
	mov	r0, #1
	mov	r0, r0, lsl r5
	mov	r0, r0, lsl #16
	mov	r0, r0, lsr #16
	bl	FUN_06006F48
	b	_06000CF4
_06000BF4:
	mov	r5, #0
	bl	FUN_060001A4
	mov	r4, r0
	add	r1, r6, #256	; 0x100
	ldrh	r1, [r1, #130]	; 0x82
	cmp	r1, #0
	bne	_06000C18
	bl	FUN_060001AC
	b	_06000CF4
_06000C18:
	ldr	r0, [r6, #12]
	cmp	r0, #1
	bne	_06000C38
	mov	r0, r5
	str	r0, [r6, #12]
	mov	r5, #1
	bl	FUN_06006978
	bl	FUN_06000288
_06000C38:
	mov	r1, #0
	add	r0, r6, #256	; 0x100
	strh	r1, [r0, #130]	; 0x82
	strh	r1, [r6, #134]	; 0x86
	str	r1, [r6, #20]
	str	r1, [r6, #16]
	str	r1, [r6, #28]
	str	r1, [r6, #408]	; 0x198
	strh	r1, [r0, #150]	; 0x96
	add	r0, r6, #412	; 0x19c
	mov	r2, #80	; 0x50
	bl	FUN_06000D08
	bl	FUN_06000100
	mov	r0, #0
	strh	r0, [r6, #194]	; 0xc2
	mov	r0, #3
	strh	r0, [r6]
	mov	r0, r4
	bl	FUN_060001AC
	bl	FUN_060001E8
	mov	r4, r0
	mov	r0, #12
	strh	r0, [r4]
	mov	r0, #0
	strh	r0, [r4, #2]
	mov	r0, #9
	strh	r0, [r4, #8]
	ldrh	r0, [r8, #22]
	strh	r0, [r4, #12]
	add	r0, r6, #256	; 0x100
	ldrh	r0, [r0, #136]	; 0x88
	strh	r0, [r4, #10]
	ldr	r0, _06000D04	; =0x0000018A
	add	r0, r6, r0
	add	r1, r4, #16
	mov	r2, #6
	bl	FUN_06000554
	ldrh	r0, [r6, #48]	; 0x30
	strh	r0, [r4, #22]
	ldrh	r0, [r6, #50]	; 0x32
	strh	r0, [r4, #24]
	mov	r0, r4
	bl	FUN_060001F0
	cmp	r5, #0
	beq	_06000CF4
	mov	r0, #1
	bl	FUN_06006F48
_06000CF4:
	add	sp, sp, #12
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
_06000D00:	.word	_0601A960
_06000D04:	.word	0x0000018A

	arm_func_start FUN_06000D08
FUN_06000D08: ; 0x06000D08
	ldr	pc, _06000D0C	; =FUN_037FB3E4
_06000D0C:	.word	FUN_037FB3E4

	arm_func_start FUN_06000D10
FUN_06000D10: ; 0x06000D10
	stmdb	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #4
	mov	r7, r0
	ldr	r0, _06000E90	; =_0601A960
	ldr	r5, [r0, #1360]	; 0x550
	ldrh	r6, [r7, #22]
	cmp	r6, #0
	beq	_06000E84
	cmp	r6, #16
	bcs	_06000E84
	ldrh	r0, [r5, #246]	; 0xf6
	cmp	r0, #0
	bne	_06000DB0
	bl	FUN_06000134
	movs	r4, r0
	moveq	r0, #0
	beq	_06000D7C
	mov	r0, #34	; 0x22
	str	r0, [r4]
	add	r0, r7, #16
	add	r1, r4, #4
	mov	r2, #6
	bl	FUN_06000554
	ldr	r0, _06000E94	; =_060199E8
	mov	r1, r4
	mov	r2, #0
	bl	FUN_060006F8
_06000D7C:
	cmp	r0, #0
	bne	_06000E84
	bl	FUN_060001E8
	mov	r1, #128	; 0x80
	strh	r1, [r0]
	mov	r1, #8
	strh	r1, [r0, #2]
	mov	r1, #22
	strh	r1, [r0, #4]
	mov	r1, #34	; 0x22
	strh	r1, [r0, #6]
	bl	FUN_060001F0
	b	_06000E84
_06000DB0:
	bl	FUN_060001A4
	mov	r4, r0
	mov	r2, #1
	add	r0, r5, #256	; 0x100
	ldrh	r1, [r0, #130]	; 0x82
	orr	r1, r1, r2, lsl r6
	strh	r1, [r0, #130]	; 0x82
	ldrh	r1, [r5, #134]	; 0x86
	mvn	r0, r2, lsl r6
	and	r0, r1, r0
	strh	r0, [r5, #134]	; 0x86
	bl	FUN_06000E98
	orr	r1, r1, #0
	orr	r2, r0, #1
	add	r0, r5, r6, lsl #3
	str	r2, [r0, #1848]	; 0x738
	str	r1, [r0, #1852]	; 0x73c
	add	r0, r7, #16
	add	r1, r5, #296	; 0x128
	sub	r3, r6, #1
	mov	r2, #6
	mla	r1, r3, r2, r1
	bl	FUN_06000554
	mov	r0, r4
	bl	FUN_060001AC
	mov	r0, #1
	add	r1, r5, #504	; 0x1f8
	add	r1, r1, r6, lsl #4
	mov	r2, #16
	bl	FUN_0600055C
	bl	FUN_060001E8
	mov	r4, r0
	mov	r0, #8
	strh	r0, [r4]
	mov	r0, #0
	strh	r0, [r4, #2]
	mov	r0, #7
	strh	r0, [r4, #8]
	add	r0, r7, #16
	add	r1, r4, #10
	mov	r2, #6
	bl	FUN_06000554
	strh	r6, [r4, #16]
	add	r0, r7, #34	; 0x22
	add	r1, r4, #20
	mov	r2, #24
	bl	FUN_06000EA0
	ldrh	r0, [r5, #48]	; 0x30
	strh	r0, [r4, #44]	; 0x2c
	ldrh	r0, [r5, #50]	; 0x32
	strh	r0, [r4, #46]	; 0x2e
	mov	r0, r4
	bl	FUN_060001F0
_06000E84:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, lr}
	bx	lr
_06000E90:	.word	_0601A960
_06000E94:	.word	_060199E8

	arm_func_start FUN_06000E98
FUN_06000E98: ; 0x06000E98
	ldr	pc, _06000E9C	; =FUN_037FA364
_06000E9C:	.word	FUN_037FA364

	arm_func_start FUN_06000EA0
FUN_06000EA0: ; 0x06000EA0
	ldr	pc, _06000EA4	; =FUN_037FB318
_06000EA4:	.word	FUN_037FB318

	arm_func_start FUN_06000EA8
FUN_06000EA8: ; 0x06000EA8
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	bl	FUN_060001E8
	mov	r1, #128	; 0x80
	strh	r1, [r0]
	mov	r1, #0
	strh	r1, [r0, #2]
	mov	r1, #18
	strh	r1, [r0, #4]
	bl	FUN_060001F0
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr

	arm_func_start FUN_06000EDC
FUN_06000EDC: ; 0x06000EDC
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	bl	FUN_060001E8
	mov	r1, #128	; 0x80
	strh	r1, [r0]
	mov	r1, #0
	strh	r1, [r0, #2]
	mov	r1, #17
	strh	r1, [r0, #4]
	bl	FUN_060001F0
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr

	arm_func_start FUN_06000F10
FUN_06000F10: ; 0x06000F10
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	ldr	r1, _06001034	; =_0601A960
	ldr	r5, [r1, #1360]	; 0x550
	ldrh	r1, [r5, #154]	; 0x9a
	cmp	r1, #1
	bne	_06000F94
	ldrh	r0, [r0, #16]
	cmp	r0, #32
	bne	_06000F94
	bl	FUN_060001A4
	mov	r4, r0
	ldr	r0, _06001038	; =_0380B8AC
	bl	FUN_060009D0
	mov	r0, #0
	strh	r0, [r5, #132]	; 0x84
	mov	r0, r4
	bl	FUN_060001AC
	mov	r1, #0
	strh	r1, [r5, #138]	; 0x8a
	mov	r0, #1
	bl	FUN_06007168
	bl	FUN_060001E8
	mov	r1, #128	; 0x80
	strh	r1, [r0]
	mov	r1, #0
	strh	r1, [r0, #2]
	mov	r1, #23
	strh	r1, [r0, #4]
	mov	r1, #1
	strh	r1, [r0, #6]
	bl	FUN_060001F0
	b	_06001028
_06000F94:
	bl	FUN_06000134
	movs	r1, r0
	moveq	r0, #0
	beq	_06000FF8
	mov	r0, #37	; 0x25
	str	r0, [r1]
	ldr	r0, _0600103C	; =0x00008003
	str	r0, [r1, #8]
	ldrh	r0, [r5]
	cmp	r0, #9
	beq	_06000FC8
	cmp	r0, #7
	bne	_06000FD4
_06000FC8:
	ldr	r0, _06001040	; =0x00007FFE
	str	r0, [r1, #4]
	b	_06000FEC
_06000FD4:
	cmp	r0, #10
	beq	_06000FE4
	cmp	r0, #8
	bne	_06000FEC
_06000FE4:
	mov	r0, #1
	str	r0, [r1, #4]
_06000FEC:
	ldr	r0, _06001044	; =_060199E8
	mov	r2, #0
	bl	FUN_060006F8
_06000FF8:
	cmp	r0, #0
	bne	_06001028
	bl	FUN_060001E8
	mov	r1, #128	; 0x80
	strh	r1, [r0]
	mov	r1, #8
	strh	r1, [r0, #2]
	mov	r1, #22
	strh	r1, [r0, #4]
	mov	r1, #37	; 0x25
	strh	r1, [r0, #6]
	bl	FUN_060001F0
_06001028:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_06001034:	.word	_0601A960
_06001038:	.word	_0380B8AC
_0600103C:	.word	0x00008003
_06001040:	.word	0x00007FFE
_06001044:	.word	_060199E8

	arm_func_start FUN_06001048
FUN_06001048: ; 0x06001048
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	mov	r5, r0
	ldr	r0, _06001138	; =_0601A960
	ldr	r4, [r0, #1360]	; 0x550
	ldr	r0, [r4, #16]
	cmp	r0, #0
	beq	_0600112C
	ldrb	r1, [r5, #31]
	ands	r0, r1, #2
	movne	r0, r1, asr #2
	andne	r0, r0, #255	; 0xff
	moveq	r0, r1, asr #2
	addeq	r0, r0, #25
	andeq	r0, r0, #255	; 0xff
	bl	FUN_060003C4
	bl	FUN_06000350
	strh	r0, [r4, #188]	; 0xbc
	add	r5, r5, #16
	add	r0, r5, #30
	bl	FUN_06000614
	cmp	r0, #1
	beq	_0600112C
	ldrh	r1, [r5, #6]
	ldr	r0, _0600113C	; =0x000005E4
	cmp	r1, r0
	bhi	_0600112C
	ldrh	r0, [r4, #174]	; 0xae
	eor	r0, r0, #1
	strh	r0, [r4, #174]	; 0xae
	ldrh	r0, [r4, #174]	; 0xae
	add	r0, r4, r0, lsl #2
	ldr	r4, [r0, #176]	; 0xb0
	mov	r0, r5
	mov	r1, r4
	ldrh	r2, [r5, #6]
	add	r2, r2, #44	; 0x2c
	add	r2, r2, #1
	bic	r2, r2, #1
	bl	FUN_06000554
	add	r0, r5, #24
	add	r1, r4, #24
	mov	r2, #6
	bl	FUN_06000554
	add	r0, r5, #30
	add	r1, r4, #30
	mov	r2, #6
	bl	FUN_06000554
	bl	FUN_060001E8
	mov	r1, #17
	strh	r1, [r0]
	mov	r1, #0
	strh	r1, [r0, #2]
	mov	r1, #15
	strh	r1, [r0, #4]
	str	r4, [r0, #8]
	bl	FUN_060001F0
_0600112C:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_06001138:	.word	_0601A960
_0600113C:	.word	0x000005E4

	arm_func_start FUN_06001140
FUN_06001140: ; 0x06001140
	stmdb	sp!, {r4, lr}
	bl	FUN_06000134
	movs	r1, r0
	ldr	r4, _060011C8	; =_06019960
	ldr	r0, _060011CC	; =_0601A960
	ldr	r0, [r0, #1360]	; 0x550
	mov	r2, #0
	strh	r2, [r0, #94]	; 0x5e
	strh	r2, [r0, #96]	; 0x60
	strh	r2, [r0, #136]	; 0x88
	beq	_06001180
	mov	r0, #44	; 0x2c
	str	r0, [r1]
	add	r0, r4, #136	; 0x88
	bl	FUN_060006F8
	mov	r2, r0
_06001180:
	cmp	r2, #0
	bne	_060011C0
	add	r0, r4, #4096	; 0x1000
	ldr	r0, [r0, #1356]	; 0x54c
	cmp	r0, #0
	beq	_060011C0
	bl	FUN_060001E8
	mov	r1, #128	; 0x80
	strh	r1, [r0]
	mov	r1, #8
	strh	r1, [r0, #2]
	mov	r1, #22
	strh	r1, [r0, #4]
	mov	r1, #44	; 0x2c
	strh	r1, [r0, #6]
	bl	FUN_060001F0
_060011C0:
	ldmia	sp!, {r4, lr}
	bx	lr
_060011C8:	.word	_06019960
_060011CC:	.word	_0601A960

	arm_func_start FUN_060011D0
FUN_060011D0: ; 0x060011D0
	ldr	ip, _060011D8	; =FUN_06001140
	bx	ip
_060011D8:	.word	FUN_06001140

	arm_func_start FUN_060011DC
FUN_060011DC: ; 0x060011DC
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub	sp, sp, #4
	add	r9, r0, #16
	ldr	r1, _06001434	; =_0601A960
	ldr	r5, [r1, #1360]	; 0x550
	mov	r7, #0
	ldr	r1, [r5, #12]
	cmp	r1, #0
	beq	_06001428
	ldrh	r0, [r0, #14]
	cmp	r0, #0
	bne	_06001258
	mov	r8, #1
	ldr	r2, _06001438	; =0x048080F8
	ldrh	r1, [r2]
	ldr	r0, _0600143C	; =0x048080FA
	ldrh	r3, [r0]
	ldrh	r2, [r2]
	cmp	r1, r2
	ldrhih	r3, [r0]
	mov	r0, r3, lsl #12
	orr	r0, r0, r2, asr #4
	mov	r0, r0, lsl #16
	mov	r1, r0, lsr #16
	ldrh	r0, [r5, #130]	; 0x82
	sub	r0, r1, r0
	mov	r0, r0, lsl #16
	mov	r0, r0, asr #16
	cmp	r0, #0
	bgt	_0600125C
	b	_06001428
_06001258:
	mov	r8, r7
_0600125C:
	bl	FUN_060001A4
	mov	r4, r0
	ldrh	r1, [r5, #132]	; 0x84
	cmp	r1, #0
	bne	_06001278
	bl	FUN_060001AC
	b	_06001428
_06001278:
	mov	r0, #0
	strh	r0, [r5, #132]	; 0x84
	ldrh	r6, [r5, #144]	; 0x90
	ldr	r0, _06001440	; =_0380B8AC
	bl	FUN_060009D0
	mov	r0, r4
	bl	FUN_060001AC
	mov	r0, #1
	ldrh	r3, [r5, #140]	; 0x8c
	cmp	r3, #0
	beq	_060012C8
	cmp	r8, #0
	bne	_060012C4
	ldrh	r2, [r9, #46]	; 0x2e
	add	r1, r5, #256	; 0x100
	ldrh	r1, [r1, #136]	; 0x88
	mov	r1, r0, lsl r1
	ands	r1, r2, r1
	bne	_060012C8
_060012C4:
	mov	r0, #0
_060012C8:
	cmp	r3, #0
	movne	r1, #0
	strneh	r1, [r5, #140]	; 0x8c
	ldrh	r1, [r5, #142]	; 0x8e
	cmp	r1, #0
	beq	_06001304
	mov	r1, #0
	strh	r1, [r5, #142]	; 0x8e
	cmp	r0, #0
	movne	r1, #1
	mov	r0, r8
	mov	r1, r1, lsl #16
	mov	r1, r1, lsr #16
	bl	FUN_06007168
	mov	r7, r0
_06001304:
	cmp	r6, #0
	beq	_06001428
	bl	FUN_060001E8
	mov	r4, r0
	mov	r0, #14
	strh	r0, [r4]
	cmp	r8, #0
	movne	r0, #9
	strneh	r0, [r4, #2]
	bne	_06001354
	ldrh	r2, [r9, #46]	; 0x2e
	mov	r1, #1
	add	r0, r5, #256	; 0x100
	ldrh	r0, [r0, #136]	; 0x88
	mov	r0, r1, lsl r0
	ands	r0, r2, r0
	movne	r0, #15
	strneh	r0, [r4, #2]
	moveq	r0, #0
	streqh	r0, [r4, #2]
_06001354:
	mov	r0, #13
	strh	r0, [r4, #4]
	mov	r0, #0
	str	r0, [r4, #8]
	cmp	r8, #0
	bne	_060013B4
	ldrh	r0, [r9, #12]
	strh	r0, [r4, #12]
	ldrh	r0, [r9, #14]
	strh	r0, [r4, #14]
	add	r0, r9, #24
	add	r1, r4, #16
	mov	r2, #6
	bl	FUN_06000554
	add	r0, r9, #30
	add	r1, r4, #22
	mov	r2, #6
	bl	FUN_06000554
	ldrh	r0, [r9, #42]	; 0x2a
	strh	r0, [r4, #28]
	ldrh	r0, [r9, #44]	; 0x2c
	strh	r0, [r4, #30]
	ldrh	r0, [r9, #46]	; 0x2e
	strh	r0, [r4, #32]
_060013B4:
	mov	r0, r4
	bl	FUN_060001F0
	cmp	r6, #0
	beq	_06001428
	cmp	r7, #1
	beq	_060013D8
	ldrh	r0, [r5, #94]	; 0x5e
	cmp	r0, #0
	bne	_06001414
_060013D8:
	ldrh	r0, [r5, #70]	; 0x46
	cmp	r0, #0
	beq	_0600140C
	ldr	r0, _06001444	; =_0380B8D8
	bl	FUN_060009D0
	mov	r0, #0
	str	r0, [sp]
	ldr	r0, _06001444	; =_0380B8D8
	ldr	r1, [r5, #80]	; 0x50
	ldr	r2, [r5, #84]	; 0x54
	ldr	r3, _06001448	; =FUN_060011D0
	bl	FUN_0600144C
	b	_06001428
_0600140C:
	bl	FUN_06001140
	b	_06001428
_06001414:
	mov	r1, #0
	strh	r1, [r5, #94]	; 0x5e
	mov	r0, #1
	strh	r0, [r5, #96]	; 0x60
	strh	r1, [r5, #136]	; 0x88
_06001428:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, lr}
	bx	lr
_06001434:	.word	_0601A960
_06001438:	.word	0x048080F8
_0600143C:	.word	0x048080FA
_06001440:	.word	_0380B8AC
_06001444:	.word	_0380B8D8
_06001448:	.word	FUN_060011D0

	arm_func_start FUN_0600144C
FUN_0600144C: ; 0x0600144C
	ldr	pc, _06001450	; =FUN_037FA75C
_06001450:	.word	FUN_037FA75C

	arm_func_start FUN_06001454
FUN_06001454: ; 0x06001454
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	ldr	r5, _060014E4	; =_06019960
	ldr	r1, _060014E8	; =_0601A960
	ldr	r0, [r1, #1348]	; 0x544
	ldr	r1, [r1, #1352]	; 0x548
	mov	r2, #64	; 0x40
	bl	FUN_060014F4
	mov	r4, r0
	ldr	r0, _060014EC	; =0x00000185
	strh	r0, [r4, #12]
	mov	r2, #0
	strh	r2, [r4, #14]
	ldr	r0, _060014F0	; =_06019988
	mov	r1, r4
	bl	FUN_060006F8
	cmp	r0, #0
	bne	_060014D8
	mov	r0, r4
	bl	FUN_06001F4C
	add	r0, r5, #4096	; 0x1000
	ldr	r0, [r0, #1356]	; 0x54c
	cmp	r0, #0
	beq	_060014D8
	bl	FUN_060001E8
	mov	r2, #128	; 0x80
	strh	r2, [r0]
	mov	r1, #8
	strh	r1, [r0, #2]
	mov	r1, #22
	strh	r1, [r0, #4]
	strh	r2, [r0, #6]
	bl	FUN_060001F0
_060014D8:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_060014E4:	.word	_06019960
_060014E8:	.word	_0601A960
_060014EC:	.word	0x00000185
_060014F0:	.word	_06019988

	arm_func_start FUN_060014F4
FUN_060014F4: ; 0x060014F4
	ldr	pc, _060014F8	; =FUN_037FA138
_060014F8:	.word	FUN_037FA138

	arm_func_start FUN_060014FC
FUN_060014FC: ; 0x060014FC
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #4
	mov	sl, r0
	ldr	r0, _06001830	; =_0601A960
	ldr	r5, [r0, #1360]	; 0x550
	ldrb	r1, [sl, #31]
	ands	r0, r1, #2
	movne	r0, r1, asr #2
	andne	r1, r0, #255	; 0xff
	moveq	r0, r1, asr #2
	addeq	r0, r0, #25
	andeq	r1, r0, #255	; 0xff
	ldrh	r0, [r5, #190]	; 0xbe
	cmp	r0, r1
	strhih	r1, [r5, #190]	; 0xbe
	ldr	r0, [r5, #12]
	cmp	r0, #0
	beq	_06001824
	ldrh	r0, [r5, #96]	; 0x60
	cmp	r0, #1
	moveq	r0, #0
	streqh	r0, [r5, #96]	; 0x60
	ldrh	r6, [r5, #142]	; 0x8e
	ldrh	r0, [r5, #112]	; 0x70
	eor	r0, r0, #1
	strh	r0, [r5, #112]	; 0x70
	ldrh	r0, [r5, #112]	; 0x70
	add	r0, r5, r0, lsl #2
	ldr	r8, [r0, #116]	; 0x74
	ldrh	r0, [sl, #22]
	add	r2, r0, #48	; 0x30
	ldrh	r0, [r5, #114]	; 0x72
	cmp	r0, r2
	movcc	r2, r0
	add	r0, sl, #16
	mov	r1, r8
	bl	FUN_06000554
	bl	FUN_060001A4
	mov	fp, r0
	mov	r7, #0
	ldrh	r0, [r5, #132]	; 0x84
	cmp	r0, #1
	bne	_060015B4
	mov	r7, #1
	ldr	r0, _06001834	; =_0380B8AC
	bl	FUN_060009D0
_060015B4:
	mov	r9, #1
	strh	r9, [r5, #132]	; 0x84
	ldrh	r0, [r8, #10]
	strh	r0, [r5, #130]	; 0x82
	ldrh	r4, [sl, #24]
	ands	r0, r4, #8192	; 0x2000
	moveq	r9, #0
	strh	r9, [r5, #144]	; 0x90
	mov	lr, #0
	str	lr, [sp]
	ldr	r0, _06001834	; =_0380B8AC
	ldrh	r2, [r8, #10]
	ldrh	r1, [r8, #12]
	sub	r1, r2, r1
	mov	r1, r1, lsl #16
	mov	r1, r1, lsr #16
	add	r1, r1, #128	; 0x80
	mov	r2, r1, lsl #4
	mov	r1, r2, asr #31
	ldr	r3, _06001838	; =0x000082EA
	umull	ip, r3, r2, r3
	mla	r3, r2, lr, r3
	ldr	r2, _06001838	; =0x000082EA
	mla	r3, r1, r2, r3
	mov	lr, r3, lsr #6
	mov	r1, ip, lsr #6
	orr	r1, r1, r3, lsl #26
	mov	r2, lr, lsr #10
	mov	r1, r1, lsr #10
	orr	r1, r1, lr, lsl #22
	ldr	r3, _0600183C	; =FUN_06001454
	bl	FUN_0600144C
	and	r0, r4, #10240	; 0x2800
	cmp	r0, #10240	; 0x2800
	moveq	r1, #1
	movne	r1, #0
	and	r0, r4, #24576	; 0x6000
	cmp	r0, #24576	; 0x6000
	moveq	r2, #1
	movne	r2, #0
	cmp	r2, #0
	movne	r0, #0
	strneh	r0, [r5, #138]	; 0x8a
	cmp	r1, #0
	movne	r0, #1
	moveq	r0, #0
	strh	r0, [r5, #142]	; 0x8e
	cmp	r2, #0
	movne	r0, #1
	moveq	r0, #0
	strh	r0, [r5, #140]	; 0x8c
	cmp	r9, #0
	beq	_060016C4
	ldrh	r0, [r8, #44]	; 0x2c
	sub	r0, r0, #102	; 0x66
	mov	r1, #4
	bl	FUN_06001840
	subs	r1, r0, #32
	bmi	_060016C4
	ldrh	r0, [r5, #54]	; 0x36
	cmp	r1, r0
	movgt	r1, r0
	ldrh	r0, [r5, #50]	; 0x32
	cmp	r1, r0
	beq	_060016C4
	mov	r0, r1, lsl #16
	mov	r0, r0, lsr #16
	bl	FUN_06000000
_060016C4:
	mov	r0, fp
	bl	FUN_060001AC
	cmp	r7, #0
	beq	_06001710
	cmp	r6, #1
	bne	_060016E8
	mov	r0, r7
	mov	r1, #0
	bl	FUN_06007168
_060016E8:
	bl	FUN_060001E8
	mov	r1, #14
	strh	r1, [r0]
	mov	r1, #9
	strh	r1, [r0, #2]
	mov	r1, #13
	strh	r1, [r0, #4]
	mov	r1, #0
	str	r1, [r0, #8]
	bl	FUN_060001F0
_06001710:
	cmp	r9, #0
	bne	_0600173C
	ldrh	r0, [r8, #6]
	cmp	r0, #2
	bcc	_06001824
	ldrh	r0, [r8, #48]	; 0x30
	ands	r0, r0, #32768	; 0x8000
	movne	r0, #1
	moveq	r0, #0
	strh	r0, [r5, #94]	; 0x5e
	b	_06001824
_0600173C:
	add	r0, sl, #40	; 0x28
	add	r1, r8, #24
	mov	r2, #6
	bl	FUN_06000554
	add	r0, sl, #46	; 0x2e
	add	r1, r8, #30
	mov	r2, #6
	bl	FUN_06000554
	ldrh	r0, [r8, #6]
	cmp	r0, #2
	bcc	_060017CC
	sub	r0, r0, #2
	strh	r0, [r8, #6]
	ldrh	r0, [r8, #48]	; 0x30
	ands	r0, r0, #32768	; 0x8000
	movne	r0, #1
	moveq	r0, #0
	strh	r0, [r5, #94]	; 0x5e
	bl	FUN_060001E8
	mov	r1, #14
	strh	r1, [r0]
	mov	r1, #0
	strh	r1, [r0, #2]
	mov	r1, #12
	strh	r1, [r0, #4]
	str	r8, [r0, #8]
	bl	FUN_060001F0
	ldrh	r3, [r8, #6]
	cmp	r3, #0
	beq	_060017F8
	str	r8, [sp]
	mov	r0, #0
	ldrh	r1, [r8, #48]	; 0x30
	add	r2, r8, #50	; 0x32
	bl	FUN_06006CAC
	b	_060017F8
_060017CC:
	mov	r0, #0
	strh	r0, [r8, #6]
	strh	r0, [r5, #94]	; 0x5e
	bl	FUN_060001E8
	mov	r1, #14
	strh	r1, [r0]
	strh	r1, [r0, #2]
	mov	r1, #12
	strh	r1, [r0, #4]
	str	r8, [r0, #8]
	bl	FUN_060001F0
_060017F8:
	ldr	r2, [r5, #1976]	; 0x7b8
	ldr	r1, [r5, #1980]	; 0x7bc
	mov	r0, #0
	cmp	r1, r0
	cmpeq	r2, r0
	beq	_06001824
	bl	FUN_06000E98
	orr	r1, r1, #0
	orr	r0, r0, #1
	str	r0, [r5, #1848]	; 0x738
	str	r1, [r5, #1852]	; 0x73c
_06001824:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
_06001830:	.word	_0601A960
_06001834:	.word	_0380B8AC
_06001838:	.word	0x000082EA
_0600183C:	.word	FUN_06001454

	arm_func_start FUN_06001840
FUN_06001840: ; 0x06001840
	ldr	pc, _06001844	; =_s32_div_f
_06001844:	.word	_s32_div_f

	arm_func_start FUN_06001848
FUN_06001848: ; 0x06001848
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	ldr	r2, _060018C4	; =_0601A960
	ldr	lr, [r2, #1360]	; 0x550
	ldrh	r4, [lr, #190]	; 0xbe
	cmp	r1, #0
	bne	_060018B8
	ldrh	r3, [r0, #20]
	cmp	r3, #1
	bcc	_060018B8
	mov	r5, #0
	add	ip, r0, #26
	b	_060018AC
_0600187C:
	ldrh	r2, [r0, #22]
	mla	r1, r2, r5, ip
	ldrb	r2, [r1, #3]
	ands	r1, r2, #2
	movne	r1, r2, asr #2
	andne	r1, r1, #255	; 0xff
	moveq	r1, r2, asr #2
	addeq	r1, r1, #25
	andeq	r1, r1, #255	; 0xff
	cmp	r1, r4
	movcc	r4, r1
	add	r5, r5, #1
_060018AC:
	cmp	r5, r3
	blt	_0600187C
	strh	r4, [lr, #190]	; 0xbe
_060018B8:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_060018C4:	.word	_0601A960

	arm_func_start FUN_060018C8
FUN_060018C8: ; 0x060018C8
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	mov	r5, r0
	bl	FUN_06000134
	movs	r1, r0
	ldr	r4, _0600194C	; =_06019960
	moveq	r0, #0
	beq	_06001900
	mov	r0, #43	; 0x2b
	str	r0, [r1]
	str	r5, [r1, #4]
	add	r0, r4, #136	; 0x88
	mov	r2, #0
	bl	FUN_060006F8
_06001900:
	cmp	r0, #0
	bne	_06001940
	add	r0, r4, #4096	; 0x1000
	ldr	r0, [r0, #1356]	; 0x54c
	cmp	r0, #0
	beq	_06001940
	bl	FUN_060001E8
	mov	r1, #128	; 0x80
	strh	r1, [r0]
	mov	r1, #8
	strh	r1, [r0, #2]
	mov	r1, #22
	strh	r1, [r0, #4]
	mov	r1, #43	; 0x2b
	strh	r1, [r0, #6]
	bl	FUN_060001F0
_06001940:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_0600194C:	.word	_06019960

	arm_func_start FUN_06001950
FUN_06001950: ; 0x06001950
	mov	r0, r0, lsl #16
	mov	r0, r0, lsr #16
	ldr	ip, _06001960	; =FUN_060018C8
	bx	ip
_06001960:	.word	FUN_060018C8

	arm_func_start FUN_06001964
FUN_06001964: ; 0x06001964
	stmdb	sp!, {r4, lr}
	ldr	r0, _060019DC	; =_0601A960
	ldr	r4, [r0, #1360]	; 0x550
	bl	FUN_06000134
	movs	r1, r0
	moveq	r0, #0
	beq	_0600199C
	mov	r0, #45	; 0x2d
	str	r0, [r1]
	ldrh	r0, [r4, #104]	; 0x68
	str	r0, [r1, #4]
	ldr	r0, _060019E0	; =_060199E8
	mov	r2, #0
	bl	FUN_060006F8
_0600199C:
	cmp	r0, #0
	movne	r0, #1
	strneh	r0, [r4, #102]	; 0x66
	bne	_060019D4
	bl	FUN_060001E8
	mov	r1, #128	; 0x80
	strh	r1, [r0]
	mov	r1, #8
	strh	r1, [r0, #2]
	mov	r1, #22
	strh	r1, [r0, #4]
	mov	r1, #45	; 0x2d
	strh	r1, [r0, #6]
	bl	FUN_060001F0
_060019D4:
	ldmia	sp!, {r4, lr}
	bx	lr
_060019DC:	.word	_0601A960
_060019E0:	.word	_060199E8

	arm_func_start FUN_060019E4
FUN_060019E4: ; 0x060019E4
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #44	; 0x2c
	mov	sl, r0
	ldr	r0, _06001D34	; =_0601A960
	ldr	r8, [r0, #1360]	; 0x550
	mov	r5, #0
	ldr	r0, [r8, #12]
	cmp	r0, #0
	beq	_06001D28
	ldrh	r0, [sl, #18]
	cmp	r0, #0
	bne	_06001A2C
	ldrh	r1, [r8, #102]	; 0x66
	cmp	r1, #1
	bne	_06001A34
	ldrh	r0, [sl, #16]
	cmp	r0, #0
	beq	_06001A34
_06001A2C:
	bl	FUN_06001964
	b	_06001D28
_06001A34:
	cmp	r1, #0
	movne	r0, #0
	strneh	r0, [r8, #102]	; 0x66
	ldrh	r0, [r8, #112]	; 0x70
	add	r0, r8, r0, lsl #2
	ldr	r7, [r0, #116]	; 0x74
	ldrh	r1, [sl, #22]
	ldrh	r0, [sl, #20]
	mul	r0, r1, r0
	add	r2, r0, #10
	ldrh	r0, [r8, #114]	; 0x72
	cmp	r0, r2
	movcc	r2, r0
	add	r0, sl, #16
	mov	r1, r7
	bl	FUN_06000554
	mov	r0, sl
	ldrh	r1, [r7]
	ldrh	r2, [r8, #146]	; 0x92
	bl	FUN_06001848
	bl	FUN_06000E98
	mov	r9, #0
	mov	r2, #1
	str	r2, [sp, #16]
	orr	r1, r1, #0
	str	r1, [sp, #8]
	orr	r0, r0, #1
	str	r0, [sp, #4]
	add	r6, r7, #10
	ldrh	fp, [r7]
	str	r9, [sp, #20]
	mov	r0, #37	; 0x25
	str	r0, [sp, #24]
	mov	r0, #128	; 0x80
	str	r0, [sp, #28]
	mov	r0, #8
	str	r0, [sp, #32]
	mov	r0, #22
	str	r0, [sp, #36]	; 0x24
	b	_06001C3C
_06001AD4:
	ldrh	r4, [r6, #4]
	ldrh	r1, [r6]
	cmp	r4, #1
	bcc	_06001C28
	cmp	r4, #15
	bhi	_06001C28
	cmp	r1, #2
	bcc	_06001B50
	ldr	r0, _06001D38	; =0x0000FFFF
	cmp	r1, r0
	beq	_06001B50
	sub	r0, r1, #2
	strh	r0, [r6]
	ldrh	r2, [r8, #134]	; 0x86
	ldr	r1, [sp, #16]
	orr	r1, r2, r1, lsl r4
	strh	r1, [r8, #134]	; 0x86
	add	r2, r8, r4, lsl #3
	ldr	r1, [sp, #4]
	str	r1, [r2, #1848]	; 0x738
	ldr	r1, [sp, #8]
	str	r1, [r2, #1852]	; 0x73c
	mov	r0, r0, lsl #16
	movs	r3, r0, lsr #16
	beq	_06001C28
	str	r7, [sp]
	mov	r0, r4
	ldrh	r1, [r6, #8]
	add	r2, r6, #10
	bl	FUN_06006CAC
	b	_06001C28
_06001B50:
	cmp	r1, #0
	bne	_06001C28
	add	r1, r8, r4, lsl #3
	ldr	r0, [r1, #1848]	; 0x738
	ldr	r3, [r1, #1852]	; 0x73c
	ldr	r1, [sp, #16]
	mov	r1, r1, lsl r4
	str	r1, [sp, #12]
	ldr	r1, [sp, #16]
	orr	fp, fp, r1, lsl r4
	ldr	r2, [r8, #1976]	; 0x7b8
	ldr	r1, [r8, #1980]	; 0x7bc
	mov	ip, #0
	cmp	r1, ip
	cmpeq	r2, ip
	beq	_06001C28
	cmp	r3, ip
	cmpeq	r0, ip
	beq	_06001C28
	ldr	ip, [sp, #4]
	subs	r0, ip, r0
	ldr	ip, [sp, #8]
	sbc	r3, ip, r3
	cmp	r3, r1
	cmpeq	r0, r2
	bls	_06001C28
	bl	FUN_06000134
	movs	r1, r0
	add	r2, r8, r4, lsl #3
	ldr	r0, [sp, #20]
	str	r0, [r2, #1848]	; 0x738
	str	r0, [r2, #1852]	; 0x73c
	beq	_06001BF8
	ldr	r0, [sp, #24]
	str	r0, [r1]
	ldr	r0, [sp, #12]
	str	r0, [r1, #4]
	ldr	r0, _06001D3C	; =0x00008001
	str	r0, [r1, #8]
	ldr	r0, _06001D40	; =_060199E8
	ldr	r2, [sp, #20]
	bl	FUN_060006F8
_06001BF8:
	cmp	r0, #0
	bne	_06001C28
	bl	FUN_060001E8
	ldr	r1, [sp, #28]
	strh	r1, [r0]
	ldr	r1, [sp, #32]
	strh	r1, [r0, #2]
	ldr	r1, [sp, #36]	; 0x24
	strh	r1, [r0, #4]
	ldr	r1, [sp, #24]
	strh	r1, [r0, #6]
	bl	FUN_060001F0
_06001C28:
	add	r0, r9, #1
	mov	r0, r0, lsl #16
	mov	r9, r0, lsr #16
	ldrh	r0, [r7, #6]
	add	r6, r6, r0
_06001C3C:
	ldrh	r0, [r7, #4]
	cmp	r9, r0
	bcc	_06001AD4
	mov	r0, #0
	mov	r1, fp, lsl #16
	mov	r1, r1, lsr #16
	bl	FUN_06007168
	ldrh	r0, [r7]
	cmp	r0, #0
	movne	r5, #1
	bl	FUN_060001E8
	mov	r1, #14
	strh	r1, [r0]
	mov	r1, #0
	strh	r1, [r0, #2]
	mov	r1, #11
	strh	r1, [r0, #4]
	str	r7, [r0, #8]
	bl	FUN_060001F0
	ldrh	r0, [r8, #112]	; 0x70
	eor	r0, r0, #1
	strh	r0, [r8, #112]	; 0x70
	bl	FUN_060001A4
	cmp	r5, #0
	ldreqsh	r1, [r8, #98]	; 0x62
	subeq	r1, r1, #1
	streqh	r1, [r8, #98]	; 0x62
	ldrsh	r1, [r8, #100]	; 0x64
	cmp	r1, #0
	subgt	r1, r1, #1
	strgth	r1, [r8, #100]	; 0x64
	ldrsh	r1, [r8, #98]	; 0x62
	cmp	r1, #0
	ble	_06001CD4
	ldrsh	r1, [r8, #100]	; 0x64
	cmp	r1, #0
	movgt	r4, #1
	bgt	_06001CD8
_06001CD4:
	mov	r4, #0
_06001CD8:
	bl	FUN_060001AC
	cmp	r4, #0
	beq	_06001D28
	cmp	r5, #1
	ldreqh	r4, [sl, #16]
	ldrne	r4, _06001D38	; =0x0000FFFF
	ldrh	r0, [r8, #68]	; 0x44
	cmp	r0, #0
	beq	_06001D20
	ldr	r0, _06001D44	; =_0380B8D8
	bl	FUN_060009D0
	str	r4, [sp]
	ldr	r0, _06001D44	; =_0380B8D8
	ldr	r1, [r8, #72]	; 0x48
	ldr	r2, [r8, #76]	; 0x4c
	ldr	r3, _06001D48	; =FUN_06001950
	bl	FUN_0600144C
	b	_06001D28
_06001D20:
	mov	r0, r4
	bl	FUN_060018C8
_06001D28:
	add	sp, sp, #44	; 0x2c
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
_06001D34:	.word	_0601A960
_06001D38:	.word	0x0000FFFF
_06001D3C:	.word	0x00008001
_06001D40:	.word	_060199E8
_06001D44:	.word	_0380B8D8
_06001D48:	.word	FUN_06001950

	arm_func_start FUN_06001D4C
FUN_06001D4C: ; 0x06001D4C
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	ldr	r0, _06001D94	; =_0601A960
	ldr	r0, [r0, #1360]	; 0x550
	ldrh	r0, [r0, #194]	; 0xc2
	cmp	r0, #0
	beq	_06001D88
	bl	FUN_060001E8
	mov	r1, #12
	strh	r1, [r0]
	mov	r1, #0
	strh	r1, [r0, #2]
	mov	r1, #8
	strh	r1, [r0, #8]
	bl	FUN_060001F0
_06001D88:
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_06001D94:	.word	_0601A960

	arm_func_start FUN_06001D98
FUN_06001D98: ; 0x06001D98
	stmdb	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #4
	mov	r7, r0
	ldr	r0, _06001EEC	; =_0601A960
	ldr	r4, [r0, #1360]	; 0x550
	add	r6, r7, #60	; 0x3c
	ldrb	r1, [r7, #31]
	ands	r0, r1, #2
	movne	r0, r1, asr #2
	andne	r2, r0, #255	; 0xff
	moveq	r0, r1, asr #2
	addeq	r0, r0, #25
	andeq	r2, r0, #255	; 0xff
	ldr	r1, _06001EF0	; =0x027FFF98
	ldrh	r0, [r1]
	eor	r0, r2, r0, lsl #1
	eor	r0, r0, r0, lsr #16
	strh	r0, [r1]
	ldrh	r0, [r4]
	cmp	r0, #8
	beq	_06001DF4
	cmp	r0, #10
	bne	_06001EE0
_06001DF4:
	ldrh	r1, [r4, #186]	; 0xba
	ldrh	r0, [r6, #8]
	cmp	r1, r0
	beq	_06001E6C
	bl	FUN_06000134
	movs	r1, r0
	moveq	r0, #0
	beq	_06001E38
	mov	r0, #37	; 0x25
	str	r0, [r1]
	mov	r0, #1
	str	r0, [r1, #4]
	ldr	r0, _06001EF4	; =0x00008002
	str	r0, [r1, #8]
	ldr	r0, _06001EF8	; =_060199E8
	mov	r2, #0
	bl	FUN_060006F8
_06001E38:
	cmp	r0, #0
	bne	_06001EE0
	bl	FUN_060001E8
	mov	r1, #128	; 0x80
	strh	r1, [r0]
	mov	r1, #8
	strh	r1, [r0, #2]
	mov	r1, #22
	strh	r1, [r0, #4]
	mov	r1, #37	; 0x25
	strh	r1, [r0, #6]
	bl	FUN_060001F0
	b	_06001EE0
_06001E6C:
	ldr	r0, _06001EEC	; =_0601A960
	ldr	r0, [r0, #1360]	; 0x550
	ldrh	r0, [r0, #194]	; 0xc2
	cmp	r0, #0
	beq	_06001EE0
	bl	FUN_060001E8
	mov	r5, r0
	mov	r0, #128	; 0x80
	strh	r0, [r5]
	mov	r0, #0
	strh	r0, [r5, #2]
	mov	r0, #16
	strh	r0, [r5, #4]
	ldrh	r0, [r6, #8]
	strh	r0, [r5, #6]
	ldrh	r0, [r4]
	strh	r0, [r5, #8]
	ldrh	r0, [r7, #22]
	strh	r0, [r5, #10]
	ldrh	r2, [r5, #10]
	cmp	r2, #128	; 0x80
	bhi	_06001ED8
	mov	r0, r6
	add	r1, r5, #12
	add	r2, r2, #1
	bic	r2, r2, #1
	bl	FUN_06000EA0
_06001ED8:
	mov	r0, r5
	bl	FUN_060001F0
_06001EE0:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, lr}
	bx	lr
_06001EEC:	.word	_0601A960
_06001EF0:	.word	0x027FFF98
_06001EF4:	.word	0x00008002
_06001EF8:	.word	_060199E8

	arm_func_start FUN_06001EFC
FUN_06001EFC: ; 0x06001EFC
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	ldr	r0, _06001F44	; =_0601A960
	ldr	r0, [r0, #1360]	; 0x550
	ldrh	r0, [r0, #194]	; 0xc2
	cmp	r0, #0
	beq	_06001F38
	bl	FUN_060001E8
	mov	r1, #8
	strh	r1, [r0]
	mov	r1, #0
	strh	r1, [r0, #2]
	mov	r1, #2
	strh	r1, [r0, #8]
	bl	FUN_060001F0
_06001F38:
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_06001F44:	.word	_0601A960

	arm_func_start FUN_06001F48
FUN_06001F48: ; 0x06001F48
	bx	lr

	arm_func_start FUN_06001F4C
FUN_06001F4C: ; 0x06001F4C
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	mov	r5, r0
	bl	FUN_060001A4
	mov	r4, r0
	ldr	r1, _06001F88	; =_0601A960
	ldr	r0, [r1, #1348]	; 0x544
	ldr	r1, [r1, #1352]	; 0x548
	mov	r2, r5
	bl	FUN_06001F8C
	mov	r0, r4
	bl	FUN_060001AC
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_06001F88:	.word	_0601A960

	arm_func_start FUN_06001F8C
FUN_06001F8C: ; 0x06001F8C
	ldr	pc, _06001F90	; =FUN_037FA0C4
_06001F90:	.word	FUN_037FA0C4

	arm_func_start FUN_06001F94
FUN_06001F94: ; 0x06001F94
	stmdb	sp!, {r4, lr}
	mov	r4, r0
	ldr	r1, _060020D0	; =_0601A960
	ldr	r2, [r1, #1356]	; 0x54c
	cmp	r2, #0
	beq	_060020C8
	ldr	r1, [r1, #1360]	; 0x550
	ldrh	r1, [r1]
	cmp	r1, #1
	beq	_060020C8
	ldrh	r2, [r4, #12]
	ldr	r1, _060020D4	; =0x00000182
	cmp	r2, r1
	bgt	_0600201C
	cmp	r2, r1
	bge	_06002098
	cmp	r2, #141	; 0x8d
	bgt	_06002010
	subs	r1, r2, #132	; 0x84
	addpl	pc, pc, r1, lsl #2
	b	_060020B8
	b	_0600204C
	b	_06002054
	b	_0600205C
	b	_06002064
	b	_0600206C
	b	_060020B8
	b	_060020B8
	b	_06002074
	b	_0600207C
	b	_06002084
_06002010:
	cmp	r2, #384	; 0x180
	beq	_0600208C
	b	_060020B8
_0600201C:
	ldr	r1, _060020D8	; =0x00000185
	cmp	r2, r1
	bgt	_0600203C
	cmp	r2, r1
	bge	_060020A8
	cmp	r2, #388	; 0x184
	beq	_060020A0
	b	_060020B8
_0600203C:
	ldr	r1, _060020DC	; =0x00000186
	cmp	r2, r1
	beq	_060020B0
	b	_060020B8
_0600204C:
	bl	FUN_06000A0C
	b	_060020C0
_06002054:
	bl	FUN_06000A40
	b	_060020C0
_0600205C:
	bl	FUN_06000D10
	b	_060020C0
_06002064:
	bl	FUN_06000EA8
	b	_060020C0
_0600206C:
	bl	FUN_06000EDC
	b	_060020C0
_06002074:
	bl	FUN_06001D4C
	b	_060020C0
_0600207C:
	bl	FUN_06001EFC
	b	_060020C0
_06002084:
	bl	FUN_06001D98
	b	_060020C0
_0600208C:
	mov	r0, r4
	bl	FUN_06001048
	b	_060020C0
_06002098:
	bl	FUN_060014FC
	b	_060020C0
_060020A0:
	bl	FUN_060019E4
	b	_060020C0
_060020A8:
	bl	FUN_060011DC
	b	_060020C0
_060020B0:
	bl	FUN_06000F10
	b	_060020C0
_060020B8:
	mov	r0, r4
	bl	FUN_06001F48
_060020C0:
	mov	r0, r4
	bl	FUN_06001F4C
_060020C8:
	ldmia	sp!, {r4, lr}
	bx	lr
_060020D0:	.word	_0601A960
_060020D4:	.word	0x00000182
_060020D8:	.word	0x00000185
_060020DC:	.word	0x00000186

	arm_func_start FUN_060020E0
FUN_060020E0: ; 0x060020E0
	stmdb	sp!, {r4, r5, r6, r7, lr}

	arm_func_start FUN_060020E4
FUN_060020E4: ; 0x060020E4
	sub	sp, sp, #4
	ldr	r0, _06002178	; =_06019960
	add	r7, r0, #88	; 0x58
	mov	r4, #1
	add	r6, r0, #40	; 0x28
	add	r5, sp, #0
_060020FC:
	mov	r0, r6
	mov	r1, r5
	mov	r2, r4
	bl	FUN_06000780
	ldr	r1, [sp]
	cmp	r1, #0
	bne	_06002120
	bl	FUN_0600217C
	b	_0600216C
_06002120:
	ldrh	r2, [r1, #12]
	and	r0, r2, #255	; 0xff
	mov	r0, r0, lsl #16
	mov	r3, r0, lsr #16
	and	r0, r2, #65280	; 0xff00
	mov	r0, r0, lsl #16
	movs	r0, r0, lsr #16
	beq	_06002148
	cmp	r0, #256	; 0x100
	bne	_0600215C
_06002148:
	ands	r0, r3, #128	; 0x80
	beq	_0600215C
	mov	r0, r1
	bl	FUN_06001F94
	b	_060020FC
_0600215C:
	mov	r0, r7
	mov	r2, r4
	bl	FUN_060006F8
	b	_060020FC
_0600216C:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, lr}
	bx	lr
_06002178:	.word	_06019960

	arm_func_start FUN_0600217C
FUN_0600217C: ; 0x0600217C
	ldr	pc, _06002180	; =FUN_037F9218
_06002180:	.word	FUN_037F9218

	arm_func_start FUN_06002184
FUN_06002184: ; 0x06002184
	bx	lr

	arm_func_start FUN_06002188
FUN_06002188: ; 0x06002188
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	sub	sp, sp, #8
	ldr	r1, _06002228	; =_06019960
	ldr	r0, _0600222C	; =_0601A960
	ldr	sl, [r0, #1360]	; 0x550
	mov	r6, #1
	ldr	r5, _06002230	; =_06019268
	mov	r4, #0
	add	r8, r1, #136	; 0x88
	add	r7, sp, #0
_060021B0:
	mov	r0, r8
	mov	r1, r7
	mov	r2, r6
	bl	FUN_06000780
	ldr	r0, [sp]
	cmp	r0, #0
	bne	_060021D4
	bl	FUN_0600217C
	b	_0600221C
_060021D4:
	ldrh	r9, [r0]
	ands	r0, r9, #32768	; 0x8000
	bicne	r0, r9, #32768	; 0x8000
	movne	r0, r0, lsl #16
	movne	r9, r0, lsr #16
	cmp	r9, #46	; 0x2e
	bcs	_0600220C
	str	r6, [sl, #4]
	strh	r9, [sl, #2]
	ldr	r0, [sp]
	ldr	r1, [r5, r9, lsl #2]
	mov	lr, pc
	bx	r1
	str	r4, [sl, #4]
_0600220C:
	orr	r1, r9, #32768	; 0x8000
	ldr	r0, [sp]
	strh	r1, [r0]
	b	_060021B0
_0600221C:
	add	sp, sp, #8
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	bx	lr
_06002228:	.word	_06019960
_0600222C:	.word	_0601A960
_06002230:	.word	_06019268

	arm_func_start FUN_06002234
FUN_06002234: ; 0x06002234
	stmdb	sp!, {r4, lr}
	mov	r3, #0
	strh	r3, [r0]
	strh	r3, [r0, #2]
	strh	r3, [r0, #4]
	strh	r3, [r0, #6]
	strh	r3, [r0, #8]
	strh	r3, [r0, #10]
	strh	r1, [r0, #12]
	strh	r3, [r0, #14]
	ldrh	r1, [r0, #14]
	add	r3, r0, r1, lsl #1
	add	r4, r3, #16
	ldrh	r1, [r0, #12]
	strh	r1, [r3, #16]
	strh	r2, [r4, #2]
	bl	FUN_06000700
	mov	r0, r4
	ldmia	sp!, {r4, lr}
	bx	lr

	arm_func_start FUN_06002284
FUN_06002284: ; 0x06002284
	stmdb	sp!, {r4, lr}
	mov	ip, #0
	strh	ip, [r0]
	strh	ip, [r0, #2]
	strh	ip, [r0, #4]
	strh	ip, [r0, #6]
	strh	ip, [r0, #8]
	strh	ip, [r0, #10]
	ldr	ip, _060022F4	; =0x00000309
	strh	ip, [r0, #12]
	mov	ip, #4
	strh	ip, [r0, #14]
	strh	r1, [r0, #16]
	strh	r2, [r0, #18]
	strh	r3, [r0, #20]
	ldrh	r1, [sp, #8]
	strh	r1, [r0, #22]
	ldrh	r1, [r0, #14]
	add	r2, r0, r1, lsl #1
	add	r4, r2, #16
	ldrh	r1, [r0, #12]
	strh	r1, [r2, #16]
	mov	r1, #1
	strh	r1, [r4, #2]
	bl	FUN_06000700
	mov	r0, r4
	ldmia	sp!, {r4, lr}
	bx	lr
_060022F4:	.word	0x00000309

	arm_func_start FUN_060022F8
FUN_060022F8: ; 0x060022F8
	mov	r1, #776	; 0x308
	mov	r2, #2
	ldr	ip, _06002308	; =FUN_06002234
	bx	ip
_06002308:	.word	FUN_06002234

	arm_func_start FUN_0600230C
FUN_0600230C: ; 0x0600230C
	ldr	r1, _0600231C	; =0x00000307
	mov	r2, #92	; 0x5c
	ldr	ip, _06002320	; =FUN_06002234
	bx	ip
_0600231C:	.word	0x00000307
_06002320:	.word	FUN_06002234

	arm_func_start FUN_06002324
FUN_06002324: ; 0x06002324
	ldr	r1, _06002334	; =0x00000306
	mov	r2, #9
	ldr	ip, _06002338	; =FUN_06002234
	bx	ip
_06002334:	.word	0x00000306
_06002338:	.word	FUN_06002234

	arm_func_start FUN_0600233C
FUN_0600233C: ; 0x0600233C
	ldr	r1, _0600234C	; =0x00000305
	mov	r2, #1
	ldr	ip, _06002350	; =FUN_06002234
	bx	ip
_0600234C:	.word	0x00000305
_06002350:	.word	FUN_06002234

	arm_func_start FUN_06002354
FUN_06002354: ; 0x06002354
	mov	r1, #772	; 0x304
	mov	r2, #1
	ldr	ip, _06002364	; =FUN_06002234
	bx	ip
_06002364:	.word	FUN_06002234

	arm_func_start FUN_06002368
FUN_06002368: ; 0x06002368
	ldr	r1, _06002378	; =0x00000303
	mov	r2, #1
	ldr	ip, _0600237C	; =FUN_06002234
	bx	ip
_06002378:	.word	0x00000303
_0600237C:	.word	FUN_06002234

	arm_func_start FUN_06002380
FUN_06002380: ; 0x06002380
	ldr	r1, _06002390	; =0x00000302
	mov	r2, #1
	ldr	ip, _06002394	; =FUN_06002234
	bx	ip
_06002390:	.word	0x00000302
_06002394:	.word	FUN_06002234

	arm_func_start FUN_06002398
FUN_06002398: ; 0x06002398
	ldr	r1, _060023A8	; =0x00000301
	mov	r2, #1
	ldr	ip, _060023AC	; =FUN_06002234
	bx	ip
_060023A8:	.word	0x00000301
_060023AC:	.word	FUN_06002234

	arm_func_start FUN_060023B0
FUN_060023B0: ; 0x060023B0
	mov	r1, #644	; 0x284
	mov	r2, #2
	ldr	ip, _060023C0	; =FUN_06002234
	bx	ip
_060023C0:	.word	FUN_06002234

	arm_func_start FUN_060023C4
FUN_060023C4: ; 0x060023C4
	ldr	r1, _060023D4	; =0x00000283
	mov	r2, #3
	ldr	ip, _060023D8	; =FUN_06002234
	bx	ip
_060023D4:	.word	0x00000283
_060023D8:	.word	FUN_06002234

	arm_func_start FUN_060023DC
FUN_060023DC: ; 0x060023DC
	ldr	r1, _060023EC	; =0x00000281
	mov	r2, #4
	ldr	ip, _060023F0	; =FUN_06002234
	bx	ip
_060023EC:	.word	0x00000281
_060023F0:	.word	FUN_06002234

	arm_func_start FUN_060023F4
FUN_060023F4: ; 0x060023F4
	stmdb	sp!, {r4, r5, r6, lr}
	mov	r4, r0
	mov	r6, r1
	mov	r5, r2
	mov	r0, #0
	strh	r0, [r4]
	strh	r0, [r4, #2]
	strh	r0, [r4, #4]
	strh	r0, [r4, #6]
	strh	r0, [r4, #8]
	strh	r0, [r4, #10]
	ldr	r0, _06002480	; =0x00000245
	strh	r0, [r4, #12]
	add	r0, r6, #1
	mov	r1, #2
	bl	FUN_06001840
	add	r0, r0, #1
	strh	r0, [r4, #14]
	strh	r6, [r4, #16]
	mov	r0, r5
	add	r1, r4, #18
	mov	r2, r6
	bl	FUN_06000EA0
	ldrh	r0, [r4, #14]
	add	r1, r4, r0, lsl #1
	add	r5, r1, #16
	ldrh	r0, [r4, #12]
	strh	r0, [r1, #16]
	mov	r0, #1
	strh	r0, [r5, #2]
	mov	r0, r4
	bl	FUN_06000700
	mov	r0, r5
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr
_06002480:	.word	0x00000245

	arm_func_start FUN_06002484
FUN_06002484: ; 0x06002484
	stmdb	sp!, {r4, lr}
	mov	r2, #0
	strh	r2, [r0]
	strh	r2, [r0, #2]
	strh	r2, [r0, #4]
	strh	r2, [r0, #6]
	strh	r2, [r0, #8]
	strh	r2, [r0, #10]
	ldr	r2, _060024E0	; =0x00000242
	strh	r2, [r0, #12]
	mov	r3, #1
	strh	r3, [r0, #14]
	strh	r1, [r0, #16]
	ldrh	r1, [r0, #14]
	add	r2, r0, r1, lsl #1
	add	r4, r2, #16
	ldrh	r1, [r0, #12]
	strh	r1, [r2, #16]
	strh	r3, [r4, #2]
	bl	FUN_06000700
	mov	r0, r4
	ldmia	sp!, {r4, lr}
	bx	lr
_060024E0:	.word	0x00000242

	arm_func_start FUN_060024E4
FUN_060024E4: ; 0x060024E4
	stmdb	sp!, {r4, lr}
	mov	r2, #0
	strh	r2, [r0]
	strh	r2, [r0, #2]
	strh	r2, [r0, #4]
	strh	r2, [r0, #6]
	strh	r2, [r0, #8]
	strh	r2, [r0, #10]
	ldr	r2, _06002540	; =0x00000216
	strh	r2, [r0, #12]
	mov	r3, #1
	strh	r3, [r0, #14]
	strh	r1, [r0, #16]
	ldrh	r1, [r0, #14]
	add	r2, r0, r1, lsl #1
	add	r4, r2, #16
	ldrh	r1, [r0, #12]
	strh	r1, [r2, #16]
	strh	r3, [r4, #2]
	bl	FUN_06000700
	mov	r0, r4
	ldmia	sp!, {r4, lr}
	bx	lr
_06002540:	.word	0x00000216

	arm_func_start FUN_06002544
FUN_06002544: ; 0x06002544
	stmdb	sp!, {r4, lr}
	mov	r2, #0
	strh	r2, [r0]
	strh	r2, [r0, #2]
	strh	r2, [r0, #4]
	strh	r2, [r0, #6]
	strh	r2, [r0, #8]
	strh	r2, [r0, #10]
	ldr	r2, _060025A0	; =0x00000215
	strh	r2, [r0, #12]
	mov	r3, #1
	strh	r3, [r0, #14]
	strh	r1, [r0, #16]
	ldrh	r1, [r0, #14]
	add	r2, r0, r1, lsl #1
	add	r4, r2, #16
	ldrh	r1, [r0, #12]
	strh	r1, [r2, #16]
	strh	r3, [r4, #2]
	bl	FUN_06000700
	mov	r0, r4
	ldmia	sp!, {r4, lr}
	bx	lr
_060025A0:	.word	0x00000215

	arm_func_start FUN_060025A4
FUN_060025A4: ; 0x060025A4
	stmdb	sp!, {r4, lr}
	mov	r2, #0
	strh	r2, [r0]
	strh	r2, [r0, #2]
	strh	r2, [r0, #4]
	strh	r2, [r0, #6]
	strh	r2, [r0, #8]
	strh	r2, [r0, #10]
	ldr	r2, _06002600	; =0x00000212
	strh	r2, [r0, #12]
	mov	r3, #1
	strh	r3, [r0, #14]
	strh	r1, [r0, #16]
	ldrh	r1, [r0, #14]
	add	r2, r0, r1, lsl #1
	add	r4, r2, #16
	ldrh	r1, [r0, #12]
	strh	r1, [r2, #16]
	strh	r3, [r4, #2]
	bl	FUN_06000700
	mov	r0, r4
	ldmia	sp!, {r4, lr}
	bx	lr
_06002600:	.word	0x00000212

	arm_func_start FUN_06002604
FUN_06002604: ; 0x06002604
	stmdb	sp!, {r4, lr}
	mov	ip, #0
	strh	ip, [r0]
	strh	ip, [r0, #2]
	strh	ip, [r0, #4]
	strh	ip, [r0, #6]
	strh	ip, [r0, #8]
	strh	ip, [r0, #10]
	ldr	ip, _0600266C	; =0x00000211
	strh	ip, [r0, #12]
	mov	ip, #3
	strh	ip, [r0, #14]
	strh	r1, [r0, #16]
	strh	r2, [r0, #18]
	strh	r3, [r0, #20]
	ldrh	r1, [r0, #14]
	add	r2, r0, r1, lsl #1
	add	r4, r2, #16
	ldrh	r1, [r0, #12]
	strh	r1, [r2, #16]
	mov	r1, #1
	strh	r1, [r4, #2]
	bl	FUN_06000700
	mov	r0, r4
	ldmia	sp!, {r4, lr}
	bx	lr
_0600266C:	.word	0x00000211

	arm_func_start FUN_06002670
FUN_06002670: ; 0x06002670
	stmdb	sp!, {r4, lr}
	mov	r2, #0
	strh	r2, [r0]
	strh	r2, [r0, #2]
	strh	r2, [r0, #4]
	strh	r2, [r0, #6]
	strh	r2, [r0, #8]
	strh	r2, [r0, #10]
	ldr	r2, _060026CC	; =0x0000020E
	strh	r2, [r0, #12]
	mov	r3, #1
	strh	r3, [r0, #14]
	strh	r1, [r0, #16]
	ldrh	r1, [r0, #14]
	add	r2, r0, r1, lsl #1
	add	r4, r2, #16
	ldrh	r1, [r0, #12]
	strh	r1, [r2, #16]
	strh	r3, [r4, #2]
	bl	FUN_06000700
	mov	r0, r4
	ldmia	sp!, {r4, lr}
	bx	lr
_060026CC:	.word	0x0000020E

	arm_func_start FUN_060026D0
FUN_060026D0: ; 0x060026D0
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	mov	r4, r0
	mov	r0, #0
	strh	r0, [r4]
	strh	r0, [r4, #2]
	strh	r0, [r4, #4]
	strh	r0, [r4, #6]
	strh	r0, [r4, #8]
	strh	r0, [r4, #10]
	ldr	r0, _0600274C	; =0x0000020D
	strh	r0, [r4, #12]
	mov	r0, #16
	strh	r0, [r4, #14]
	mov	r0, r1
	add	r1, r4, #16
	mov	r2, #32
	bl	FUN_06000EA0
	ldrh	r0, [r4, #14]
	add	r1, r4, r0, lsl #1
	add	r5, r1, #16
	ldrh	r0, [r4, #12]
	strh	r0, [r1, #16]
	mov	r0, #1
	strh	r0, [r5, #2]
	mov	r0, r4
	bl	FUN_06000700
	mov	r0, r5
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_0600274C:	.word	0x0000020D

	arm_func_start FUN_06002750
FUN_06002750: ; 0x06002750
	stmdb	sp!, {r4, lr}
	mov	r2, #0
	strh	r2, [r0]
	strh	r2, [r0, #2]
	strh	r2, [r0, #4]
	strh	r2, [r0, #6]
	strh	r2, [r0, #8]
	strh	r2, [r0, #10]
	ldr	r2, _060027AC	; =0x0000020B
	strh	r2, [r0, #12]
	mov	r3, #1
	strh	r3, [r0, #14]
	strh	r1, [r0, #16]
	ldrh	r1, [r0, #14]
	add	r2, r0, r1, lsl #1
	add	r4, r2, #16
	ldrh	r1, [r0, #12]
	strh	r1, [r2, #16]
	strh	r3, [r4, #2]
	bl	FUN_06000700
	mov	r0, r4
	ldmia	sp!, {r4, lr}
	bx	lr
_060027AC:	.word	0x0000020B

	arm_func_start FUN_060027B0
FUN_060027B0: ; 0x060027B0
	stmdb	sp!, {r4, lr}
	mov	r2, #0
	strh	r2, [r0]
	strh	r2, [r0, #2]
	strh	r2, [r0, #4]
	strh	r2, [r0, #6]
	strh	r2, [r0, #8]
	strh	r2, [r0, #10]
	ldr	r2, _0600280C	; =0x00000207
	strh	r2, [r0, #12]
	mov	r3, #1
	strh	r3, [r0, #14]
	strh	r1, [r0, #16]
	ldrh	r1, [r0, #14]
	add	r2, r0, r1, lsl #1
	add	r4, r2, #16
	ldrh	r1, [r0, #12]
	strh	r1, [r2, #16]
	strh	r3, [r4, #2]
	bl	FUN_06000700
	mov	r0, r4
	ldmia	sp!, {r4, lr}
	bx	lr
_0600280C:	.word	0x00000207

	arm_func_start FUN_06002810
FUN_06002810: ; 0x06002810
	stmdb	sp!, {r4, lr}
	mov	r1, #0
	strh	r1, [r0]
	strh	r1, [r0, #2]
	strh	r1, [r0, #4]
	strh	r1, [r0, #6]
	strh	r1, [r0, #8]
	strh	r1, [r0, #10]
	mov	r1, #512	; 0x200
	strh	r1, [r0, #12]
	mov	r1, #72	; 0x48
	strh	r1, [r0, #14]
	ldrh	r1, [r0, #14]
	add	r2, r0, r1, lsl #1
	add	r4, r2, #16
	ldrh	r1, [r0, #12]
	strh	r1, [r2, #16]
	mov	r1, #1
	strh	r1, [r4, #2]
	bl	FUN_06000700
	mov	r0, r4
	ldmia	sp!, {r4, lr}
	bx	lr

	arm_func_start FUN_0600286C
FUN_0600286C: ; 0x0600286C
	stmdb	sp!, {r4, lr}
	mov	r2, #0
	strh	r2, [r0]
	strh	r2, [r0, #2]
	strh	r2, [r0, #4]
	strh	r2, [r0, #6]
	strh	r2, [r0, #8]
	strh	r2, [r0, #10]
	mov	r2, #260	; 0x104
	strh	r2, [r0, #12]
	mov	r3, #1
	strh	r3, [r0, #14]
	strh	r1, [r0, #16]
	ldrh	r1, [r0, #14]
	add	r2, r0, r1, lsl #1
	add	r4, r2, #16
	ldrh	r1, [r0, #12]
	strh	r1, [r2, #16]
	strh	r3, [r4, #2]
	bl	FUN_06000700
	mov	r0, r4
	ldmia	sp!, {r4, lr}
	bx	lr

	arm_func_start FUN_060028C8
FUN_060028C8: ; 0x060028C8
	stmdb	sp!, {r4, lr}
	mov	ip, #0
	strh	ip, [r0]
	strh	ip, [r0, #2]
	strh	ip, [r0, #4]
	strh	ip, [r0, #6]
	strh	ip, [r0, #8]
	strh	ip, [r0, #10]
	ldr	ip, _06002960	; =0x00000102
	strh	ip, [r0, #12]
	mov	ip, #10
	strh	ip, [r0, #14]
	strh	r1, [r0, #16]
	strh	r2, [r0, #18]
	strh	r3, [r0, #20]
	ldrh	r1, [sp, #8]
	strh	r1, [r0, #22]
	ldrh	r1, [sp, #12]
	strh	r1, [r0, #24]
	ldrh	r1, [sp, #16]
	strh	r1, [r0, #26]
	ldrh	r1, [sp, #20]
	strh	r1, [r0, #28]
	ldrh	r1, [sp, #24]
	strh	r1, [r0, #30]
	ldr	r1, [sp, #28]
	str	r1, [r0, #32]
	ldrh	r1, [r0, #14]
	add	r2, r0, r1, lsl #1
	add	r4, r2, #16
	ldrh	r1, [r0, #12]
	strh	r1, [r2, #16]
	mov	r1, #1
	strh	r1, [r4, #2]
	bl	FUN_06000700
	mov	r0, r4
	ldmia	sp!, {r4, lr}
	bx	lr
_06002960:	.word	0x00000102

	arm_func_start FUN_06002964
FUN_06002964: ; 0x06002964
	stmdb	sp!, {r4, lr}
	mov	ip, #0
	strh	ip, [r0]
	strh	ip, [r0, #2]
	strh	ip, [r0, #4]
	strh	ip, [r0, #6]
	strh	ip, [r0, #8]
	strh	ip, [r0, #10]
	ldr	ip, _060029CC	; =0x00000101
	strh	ip, [r0, #12]
	mov	ip, #4
	strh	ip, [r0, #14]
	strh	r1, [r0, #16]
	strh	r2, [r0, #18]
	str	r3, [r0, #20]
	ldrh	r1, [r0, #14]
	add	r2, r0, r1, lsl #1
	add	r4, r2, #16
	ldrh	r1, [r0, #12]
	strh	r1, [r2, #16]
	mov	r1, #1
	strh	r1, [r4, #2]
	bl	FUN_06000700
	mov	r0, r4
	ldmia	sp!, {r4, lr}
	bx	lr
_060029CC:	.word	0x00000101

	arm_func_start FUN_060029D0
FUN_060029D0: ; 0x060029D0
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	mov	r4, r0
	mov	r5, r1
	mov	r0, #0
	strh	r0, [r4]
	strh	r0, [r4, #2]
	strh	r0, [r4, #4]
	strh	r0, [r4, #6]
	strh	r0, [r4, #8]
	strh	r0, [r4, #10]
	mov	r0, #256	; 0x100
	strh	r0, [r4, #12]
	mov	r0, #24
	strh	r0, [r4, #14]
	mov	r0, r5
	add	r1, r4, #16
	mov	r2, #48	; 0x30
	bl	FUN_06000EA0
	mov	r0, #0
	strh	r0, [r5, #2]
	strh	r0, [r5, #4]
	strh	r0, [r5, #8]
	strh	r0, [r5, #10]
	strh	r0, [r5, #12]
	strh	r0, [r5, #16]
	strh	r0, [r5, #18]
	strh	r0, [r5, #20]
	strh	r0, [r5, #22]
	strh	r0, [r5, #36]	; 0x24
	strh	r0, [r5, #38]	; 0x26
	strh	r0, [r5, #40]	; 0x28
	strh	r0, [r5, #42]	; 0x2a
	ldrh	r0, [r4, #14]
	add	r1, r4, r0, lsl #1
	add	r5, r1, #16
	ldrh	r0, [r4, #12]
	strh	r0, [r1, #16]
	mov	r0, #2
	strh	r0, [r5, #2]
	mov	r0, r4
	bl	FUN_06000700
	mov	r0, r5
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr

	arm_func_start FUN_06002A88
FUN_06002A88: ; 0x06002A88
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	mov	r4, r0
	mov	ip, #0
	strh	ip, [r4]
	strh	ip, [r4, #2]
	strh	ip, [r4, #4]
	strh	ip, [r4, #6]
	strh	ip, [r4, #8]
	strh	ip, [r4, #10]
	mov	r0, #10
	strh	r0, [r4, #12]
	mov	r0, #12
	strh	r0, [r4, #14]
	strh	ip, [r4, #16]
	strh	r1, [r4, #18]
	strh	r2, [r4, #20]
	strh	r3, [r4, #22]
	ldr	r0, [sp, #16]
	add	r1, r4, #24
	mov	r2, #16
	bl	FUN_06000EA0
	ldrh	r0, [r4, #14]
	add	r1, r4, r0, lsl #1
	add	r5, r1, #16
	ldrh	r0, [r4, #12]
	strh	r0, [r1, #16]
	mov	r0, #18
	strh	r0, [r5, #2]
	mov	r0, r4
	bl	FUN_06000700
	mov	r0, r5
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr

	arm_func_start FUN_06002B14
FUN_06002B14: ; 0x06002B14
	stmdb	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #4
	mov	r7, r0
	mov	r6, r1
	mov	r5, r2
	mov	r4, r3
	mov	r0, #0
	strh	r0, [r7]
	strh	r0, [r7, #2]
	strh	r0, [r7, #4]
	strh	r0, [r7, #6]
	strh	r0, [r7, #8]
	strh	r0, [r7, #10]
	mov	r0, #9
	strh	r0, [r7, #12]
	ldrh	r0, [sp, #40]	; 0x28
	add	r0, r0, #1
	mov	r1, #2
	bl	FUN_06001840
	add	r0, r0, #23
	strh	r0, [r7, #14]
	strh	r6, [r7, #16]
	mov	r0, r5
	add	r1, r7, #18
	mov	r2, #32
	bl	FUN_06000EA0
	strh	r4, [r7, #50]	; 0x32
	ldrh	r0, [sp, #24]
	strh	r0, [r7, #52]	; 0x34
	ldrh	r0, [sp, #28]
	strh	r0, [r7, #54]	; 0x36
	ldrh	r0, [sp, #32]
	strh	r0, [r7, #56]	; 0x38
	ldrh	r0, [sp, #36]	; 0x24
	strh	r0, [r7, #58]	; 0x3a
	ldrh	r2, [sp, #40]	; 0x28
	strh	r2, [r7, #60]	; 0x3c
	ldr	r0, [sp, #44]	; 0x2c
	add	r1, r7, #62	; 0x3e
	bl	FUN_06000EA0
	ldrh	r0, [r7, #14]
	add	r1, r7, r0, lsl #1
	add	r4, r1, #16
	ldrh	r0, [r7, #12]
	strh	r0, [r1, #16]
	mov	r0, #1
	strh	r0, [r4, #2]
	mov	r0, r7
	bl	FUN_06000700
	mov	r0, r4
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, lr}
	bx	lr

	arm_func_start FUN_06002BE8
FUN_06002BE8: ; 0x06002BE8
	stmdb	sp!, {r4, r5, r6, lr}
	mov	r4, r0
	mov	r6, r2
	mov	r5, r3
	mov	r0, #0
	strh	r0, [r4]
	strh	r0, [r4, #2]
	strh	r0, [r4, #4]
	strh	r0, [r4, #6]
	strh	r0, [r4, #8]
	strh	r0, [r4, #10]
	mov	r2, #6
	strh	r2, [r4, #12]
	mov	r0, #5
	strh	r0, [r4, #14]
	mov	r0, r1
	add	r1, r4, #16
	bl	FUN_06000EA0
	strh	r6, [r4, #22]
	strh	r5, [r4, #24]
	ldrh	r0, [r4, #14]
	add	r1, r4, r0, lsl #1
	add	r5, r1, #16
	ldrh	r0, [r4, #12]
	strh	r0, [r1, #16]
	mov	r0, #3
	strh	r0, [r5, #2]
	mov	r0, r4
	bl	FUN_06000700
	mov	r0, r5
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr

	arm_func_start FUN_06002C68
FUN_06002C68: ; 0x06002C68
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	mov	r4, r0
	mov	r5, r2
	mov	r0, #0
	strh	r0, [r4]
	strh	r0, [r4, #2]
	strh	r0, [r4, #4]
	strh	r0, [r4, #6]
	strh	r0, [r4, #8]
	strh	r0, [r4, #10]
	mov	r0, #5
	strh	r0, [r4, #12]
	mov	r0, #4
	strh	r0, [r4, #14]
	mov	r0, r1
	add	r1, r4, #16
	mov	r2, #6
	bl	FUN_06000EA0
	strh	r5, [r4, #22]
	ldrh	r0, [r4, #14]
	add	r1, r4, r0, lsl #1
	add	r5, r1, #16
	ldrh	r0, [r4, #12]
	strh	r0, [r1, #16]
	mov	r0, #4
	strh	r0, [r5, #2]
	mov	r0, r4
	bl	FUN_06000700
	mov	r0, r5
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr

	arm_func_start FUN_06002CEC
FUN_06002CEC: ; 0x06002CEC
	stmdb	sp!, {r4, r5, r6, lr}
	mov	r4, r0
	mov	r6, r2
	mov	r5, r3
	mov	r0, #0
	strh	r0, [r4]
	strh	r0, [r4, #2]
	strh	r0, [r4, #4]
	strh	r0, [r4, #6]
	strh	r0, [r4, #8]
	strh	r0, [r4, #10]
	mov	r0, #4
	strh	r0, [r4, #12]
	mov	r0, #5
	strh	r0, [r4, #14]
	mov	r0, r1
	add	r1, r4, #16
	mov	r2, #6
	bl	FUN_06000EA0
	strh	r6, [r4, #22]
	strh	r5, [r4, #24]
	ldrh	r0, [r4, #14]
	add	r1, r4, r0, lsl #1
	add	r5, r1, #16
	ldrh	r0, [r4, #12]
	strh	r0, [r1, #16]
	mov	r0, #6
	strh	r0, [r5, #2]
	mov	r0, r4
	bl	FUN_06000700
	mov	r0, r5
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr

	arm_func_start FUN_06002D70
FUN_06002D70: ; 0x06002D70
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	mov	r4, r0
	mov	r3, #0
	strh	r3, [r4]
	strh	r3, [r4, #2]
	strh	r3, [r4, #4]
	strh	r3, [r4, #6]
	strh	r3, [r4, #8]
	strh	r3, [r4, #10]
	mov	r0, #3
	strh	r0, [r4, #12]
	mov	r0, #34	; 0x22
	strh	r0, [r4, #14]
	strh	r1, [r4, #16]
	strh	r3, [r4, #18]
	mov	r0, r2
	add	r1, r4, #20
	mov	r2, #68	; 0x44
	bl	FUN_06000EA0
	ldrh	r0, [r4, #14]
	add	r1, r4, r0, lsl #1
	add	r5, r1, #16
	ldrh	r0, [r4, #12]
	strh	r0, [r1, #16]
	mov	r0, #5
	strh	r0, [r5, #2]
	mov	r0, r4
	bl	FUN_06000700
	mov	r0, r5
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr

	arm_func_start FUN_06002DF4
FUN_06002DF4: ; 0x06002DF4
	stmdb	sp!, {r4, r5, r6, lr}
	mov	r5, r0
	mov	r4, r1
	mov	r6, r3
	mov	r0, #0
	strh	r0, [r5]
	strh	r0, [r5, #2]
	strh	r0, [r5, #4]
	strh	r0, [r5, #6]
	strh	r0, [r5, #8]
	strh	r0, [r5, #10]
	mov	r0, #2
	strh	r0, [r5, #12]
	mov	r0, #31
	strh	r0, [r5, #14]
	mov	r0, r2
	add	r1, r5, #16
	mov	r2, #6
	bl	FUN_06000EA0
	strh	r6, [r5, #22]
	ldr	r0, [sp, #16]
	add	r1, r5, #24
	mov	r2, #32
	bl	FUN_06000EA0
	ldrh	r0, [sp, #20]
	strh	r0, [r5, #56]	; 0x38
	ldr	r0, [sp, #24]
	add	r1, r5, #58	; 0x3a
	mov	r2, #16
	bl	FUN_06000EA0
	ldrh	r0, [sp, #28]
	strh	r0, [r5, #74]	; 0x4a
	mov	r0, #0
	strh	r0, [r5, #76]	; 0x4c
	ldrh	r0, [r5, #14]
	add	r1, r5, r0, lsl #1
	add	r6, r1, #16
	ldrh	r0, [r5, #12]
	strh	r0, [r1, #16]
	mov	r0, r4, lsr #1
	sub	r0, r0, #44	; 0x2c
	strh	r0, [r6, #2]
	mov	r0, r5
	bl	FUN_06000700
	mov	r0, r6
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr

	arm_func_start FUN_06002EB0
FUN_06002EB0: ; 0x06002EB0
	stmdb	sp!, {r4, lr}
	mov	ip, #0
	strh	ip, [r0]
	strh	ip, [r0, #2]
	strh	ip, [r0, #4]
	strh	ip, [r0, #6]
	strh	ip, [r0, #8]
	strh	ip, [r0, #10]
	mov	lr, #1
	strh	lr, [r0, #12]
	mov	ip, #3
	strh	ip, [r0, #14]
	strh	r1, [r0, #16]
	strh	r2, [r0, #18]
	strh	r3, [r0, #20]
	ldrh	r1, [r0, #14]
	add	r2, r0, r1, lsl #1
	add	r4, r2, #16
	ldrh	r1, [r0, #12]
	strh	r1, [r2, #16]
	strh	lr, [r4, #2]
	bl	FUN_06000700
	mov	r0, r4
	ldmia	sp!, {r4, lr}
	bx	lr

	arm_func_start FUN_06002F14
FUN_06002F14: ; 0x06002F14
	stmdb	sp!, {r4, lr}
	mov	r2, #0
	strh	r2, [r0]
	strh	r2, [r0, #2]
	strh	r2, [r0, #4]
	strh	r2, [r0, #6]
	strh	r2, [r0, #8]
	strh	r2, [r0, #10]
	strh	r2, [r0, #12]
	mov	r3, #1
	strh	r3, [r0, #14]
	strh	r1, [r0, #16]
	ldrh	r1, [r0, #14]
	add	r2, r0, r1, lsl #1
	add	r4, r2, #16
	ldrh	r1, [r0, #12]
	strh	r1, [r2, #16]
	strh	r3, [r4, #2]
	bl	FUN_06000700
	mov	r0, r4
	ldmia	sp!, {r4, lr}
	bx	lr

	arm_func_start FUN_06002F6C
FUN_06002F6C: ; 0x06002F6C
	stmdb	sp!, {r4, lr}
	sub	sp, sp, #8
	ldr	r4, [r0, #4]
	ldr	r1, _06003018	; =_0601A960
	str	r4, [r1, #1356]	; 0x54c
	ldr	r2, [r0, #8]
	str	r2, [r1, #1360]	; 0x550
	str	r2, [r4]
	ldr	r0, [r0, #12]
	str	r0, [r4, #8]
	bl	FUN_06008124
	mov	r0, #15
	bl	FUN_0600301C
	mov	r1, #1
	ldr	r0, [r4]
	strh	r1, [r0]
	add	r0, sp, #0
	add	r1, sp, #2
	bl	FUN_06008380
	cmp	r0, #0
	bne	_06002FEC
	bl	FUN_060001E8
	mov	r1, #0
	strh	r1, [r0]
	mov	r1, #1
	strh	r1, [r0, #2]
	ldrh	r1, [sp]
	strh	r1, [r0, #4]
	ldrh	r1, [sp, #2]
	strh	r1, [r0, #6]
	bl	FUN_060001F0
	b	_0600300C
_06002FEC:
	mov	r1, #2
	ldr	r0, [r4]
	strh	r1, [r0]
	bl	FUN_060001E8
	mov	r1, #0
	strh	r1, [r0]
	strh	r1, [r0, #2]
	bl	FUN_060001F0
_0600300C:
	add	sp, sp, #8
	ldmia	sp!, {r4, lr}
	bx	lr
_06003018:	.word	_0601A960

	arm_func_start FUN_0600301C
FUN_0600301C: ; 0x0600301C
	ldr	pc, _06003020	; =FUN_03802BC8
_06003020:	.word	FUN_03802BC8

	arm_func_start FUN_06003024
FUN_06003024: ; 0x06003024
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	mov	r5, r0
	mov	r4, r1
	bl	FUN_060001E8
	mov	r1, #1
	strh	r1, [r0]
	strh	r1, [r0, #2]
	strh	r5, [r0, #4]
	strh	r4, [r0, #6]
	bl	FUN_060001F0
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr

	arm_func_start FUN_0600305C
FUN_0600305C: ; 0x0600305C
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #532	; 0x214
	ldr	r0, _06003448	; =_0601A960
	ldr	r7, [r0, #1360]	; 0x550
	mov	r5, #0
	bl	FUN_060001A4
	mov	r4, r0
	ldr	r0, [r7, #12]
	cmp	r0, #1
	bne	_060030B8
	mov	r0, r5
	str	r0, [r7, #12]
	mov	r5, #1
	bl	FUN_06006978
	bl	FUN_06000288
	ldrh	r0, [r7]
	cmp	r0, #10
	moveq	r0, #8
	streqh	r0, [r7]
	beq	_060030B8
	cmp	r0, #9
	moveq	r0, #7
	streqh	r0, [r7]
_060030B8:
	ldrh	r1, [r7]
	ldr	r0, _0600344C	; =0x0000FFF9
	add	r0, r1, r0
	mov	r0, r0, lsl #16
	mov	r0, r0, lsr #16
	cmp	r0, #1
	bhi	_060030EC
	add	r0, r7, #256	; 0x100
	ldrh	r9, [r0, #130]	; 0x82
	cmp	r1, #7
	moveq	sl, #1
	movne	sl, #0
	b	_060030F0
_060030EC:
	mov	r9, #0
_060030F0:
	mov	r1, #0
	add	r0, r7, #256	; 0x100
	strh	r1, [r0, #130]	; 0x82
	strh	r1, [r7, #134]	; 0x86
	str	r1, [r7, #20]
	str	r1, [r7, #16]
	str	r1, [r7, #28]
	strh	r1, [r7, #194]	; 0xc2
	mov	r0, r4
	bl	FUN_060001AC
	cmp	r5, #0
	beq	_06003128
	ldr	r0, _06003450	; =0x0000FFFF
	bl	FUN_06006F48
_06003128:
	cmp	sl, #0
	movne	r0, #0
	strneh	r0, [r7, #246]	; 0xf6
	cmp	r9, #0
	beq	_0600318C
	mov	r8, #0
	add	r5, r7, #296	; 0x128
	ldr	r0, _06003454	; =0x0000018A
	add	fp, r7, r0
	mov	r6, #1
	mov	r4, #6
_06003154:
	mov	r0, r6, lsl r8
	ands	r0, r9, r0
	beq	_06003180
	cmp	r8, #0
	moveq	r2, fp
	subne	r0, r8, #1
	mlane	r2, r0, r4, r5
	mov	r0, sl
	mov	r1, r8, lsl #16
	mov	r1, r1, lsr #16
	bl	FUN_06004C5C
_06003180:
	add	r8, r8, #1
	cmp	r8, #16
	blt	_06003154
_0600318C:
	add	r0, r7, #296	; 0x128
	mov	r1, #0
	mov	r2, #90	; 0x5a
	bl	FUN_06000D08
	add	r0, sp, #16
	bl	FUN_060022F8
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_060031BC
	mov	r0, #776	; 0x308
	bl	FUN_06003024
	b	_0600343C
_060031BC:
	ldrh	r4, [r0, #6]
	add	r0, sp, #16
	bl	FUN_060023B0
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_060031E0
	mov	r0, #644	; 0x284
	bl	FUN_06003024
	b	_0600343C
_060031E0:
	ldrh	r1, [r0, #6]
	cmp	r4, #32
	bgt	_06003234
	cmp	r4, #32
	bge	_06003310
	cmp	r4, #0
	bgt	_06003208
	cmp	r4, #0
	beq	_06003334
	b	_06003414
_06003208:
	cmp	r4, #18
	bgt	_06003414
	cmp	r4, #16
	blt	_06003414
	cmp	r4, #16
	beq	_06003354
	cmp	r4, #17
	beq	_060033AC
	cmp	r4, #18
	beq	_060033AC
	b	_06003414
_06003234:
	cmp	r4, #48	; 0x30
	bgt	_06003248
	cmp	r4, #48	; 0x30
	beq	_06003250
	b	_06003414
_06003248:
	cmp	r4, #64	; 0x40
	bne	_06003414
_06003250:
	ldr	r0, _06003458	; =0x0000FFFE
	add	r0, r1, r0
	mov	r0, r0, lsl #16
	mov	r0, r0, lsr #16
	cmp	r0, #1
	bhi	_060032D8
	ldr	r0, _06003454	; =0x0000018A
	add	r0, r7, r0
	add	r1, sp, #4
	mov	r2, #6
	bl	FUN_06000554
	mov	r6, #0
	add	r5, sp, #4
	mov	r4, #3
	b	_060032CC
_0600328C:
	add	r0, sp, #16
	mov	r1, r5
	mov	r2, r4
	bl	FUN_06002C68
	ldrh	r0, [r0, #4]
	cmp	r0, #0
	beq	_060032BC
	cmp	r0, #7
	beq	_060032C8
	cmp	r0, #12
	beq	_060032C8
	b	_06003310
_060032BC:
	mov	r0, #3
	strh	r0, [r7]
	b	_06003310
_060032C8:
	add	r6, r6, #1
_060032CC:
	cmp	r6, #2
	blt	_0600328C
	b	_06003310
_060032D8:
	cmp	r1, #1
	bne	_06003310
	add	r0, sp, #10
	mov	r1, #255	; 0xff
	mov	r2, #6
	bl	FUN_06000D08
	add	r0, sp, #16
	add	r1, sp, #10
	mov	r2, #3
	bl	FUN_06002C68
	ldrh	r0, [r0, #4]
	cmp	r0, #0
	moveq	r0, #3
	streqh	r0, [r7]
_06003310:
	add	r0, sp, #16
	mov	r1, #1
	bl	FUN_06002F14
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_06003334
	mov	r0, #0
	bl	FUN_06003024
	b	_0600343C
_06003334:
	add	r0, sp, #16
	bl	FUN_06002380
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_06003354
	ldr	r0, _0600345C	; =0x00000302
	bl	FUN_06003024
	b	_0600343C
_06003354:
	add	r0, r7, #256	; 0x100
	ldrh	r0, [r0, #238]	; 0xee
	cmp	r0, #0
	bne	_06003394
	add	r0, sp, #16
	mov	r1, #1
	bl	FUN_06002670
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_06003388
	ldr	r0, _06003460	; =0x0000020E
	bl	FUN_06003024
	b	_0600343C
_06003388:
	mov	r1, #1
	add	r0, r7, #256	; 0x100
	strh	r1, [r0, #238]	; 0xee
_06003394:
	mov	r0, #2
	strh	r0, [r7]
	mov	r0, #0
	str	r0, [r7, #408]	; 0x198
	bl	FUN_06000100
	b	_06003424
_060033AC:
	cmp	r1, #0
	bne	_060033E8
	mov	r0, #1
	str	r0, [sp]
	add	r0, sp, #16
	mov	r1, #0
	mov	r2, r1
	mov	r3, #20
	bl	FUN_06002284
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_060033E8
	ldr	r0, _06003464	; =0x00000309
	bl	FUN_06003024
	b	_0600343C
_060033E8:
	add	r0, sp, #16
	bl	FUN_06002380
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_06003408
	ldr	r0, _0600345C	; =0x00000302
	bl	FUN_06003024
	b	_0600343C
_06003408:
	mov	r0, #2
	strh	r0, [r7]
	b	_06003424
_06003414:
	mov	r0, #776	; 0x308
	mov	r1, #0
	bl	FUN_06003024
	b	_0600343C
_06003424:
	bl	FUN_060001E8
	mov	r1, #1
	strh	r1, [r0]
	mov	r1, #0
	strh	r1, [r0, #2]
	bl	FUN_060001F0
_0600343C:
	add	sp, sp, #532	; 0x214
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
_06003448:	.word	_0601A960
_0600344C:	.word	0x0000FFF9
_06003450:	.word	0x0000FFFF
_06003454:	.word	0x0000018A
_06003458:	.word	0x0000FFFE
_0600345C:	.word	0x00000302
_06003460:	.word	0x0000020E
_06003464:	.word	0x00000309

	arm_func_start FUN_06003468
FUN_06003468: ; 0x06003468
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	mov	r5, r0
	mov	r4, r1
	bl	FUN_060001E8
	mov	r1, #2
	strh	r1, [r0]
	mov	r1, #1
	strh	r1, [r0, #2]
	strh	r5, [r0, #4]
	strh	r4, [r0, #6]
	bl	FUN_060001F0
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr

	arm_func_start FUN_060034A4
FUN_060034A4: ; 0x060034A4
	stmdb	sp!, {r4, lr}
	sub	sp, sp, #512	; 0x200
	ldr	r0, _06003534	; =_0601A960
	ldr	r4, [r0, #1360]	; 0x550
	ldrh	r0, [r4]
	cmp	r0, #2
	beq	_060034DC
	bl	FUN_060001E8
	mov	r1, #2
	strh	r1, [r0]
	mov	r1, #3
	strh	r1, [r0, #2]
	bl	FUN_060001F0
	b	_06003528
_060034DC:
	add	r0, sp, #0
	bl	FUN_06002398
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_060034FC
	ldr	r0, _06003538	; =0x00000301
	bl	FUN_06003468
	b	_06003528
_060034FC:
	mov	r0, #1
	strh	r0, [r4]
	bl	FUN_0600301C
	mov	r0, #0
	strh	r0, [r4]
	bl	FUN_060001E8
	mov	r1, #2
	strh	r1, [r0]
	mov	r1, #0
	strh	r1, [r0, #2]
	bl	FUN_060001F0
_06003528:
	add	sp, sp, #512	; 0x200
	ldmia	sp!, {r4, lr}
	bx	lr
_06003534:	.word	_0601A960
_06003538:	.word	0x00000301

	arm_func_start FUN_0600353C
FUN_0600353C: ; 0x0600353C
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	mov	r5, r0
	mov	r4, r1
	bl	FUN_060001E8
	mov	r1, #7
	strh	r1, [r0]
	mov	r1, #1
	strh	r1, [r0, #2]
	strh	r5, [r0, #4]
	strh	r4, [r0, #6]
	bl	FUN_060001F0
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr

	arm_func_start FUN_06003578
FUN_06003578: ; 0x06003578
	stmdb	sp!, {r4, lr}
	sub	sp, sp, #512	; 0x200
	ldr	r1, _06003618	; =_0601A960
	ldr	r4, [r1, #1360]	; 0x550
	ldr	r0, [r0, #4]
	add	r1, r4, #232	; 0xe8
	mov	r2, #64	; 0x40
	bl	FUN_06000554
	mov	r2, #1
	add	r0, r4, #256	; 0x100
	ldrh	r1, [r0, #26]
	mov	r1, r2, lsl r1
	ldrh	r0, [r0, #244]	; 0xf4
	ands	r0, r1, r0
	bne	_060035D0
	bl	FUN_060001E8
	mov	r1, #7
	strh	r1, [r0]
	mov	r1, #6
	strh	r1, [r0, #2]
	bl	FUN_060001F0
	b	_0600360C
_060035D0:
	add	r0, sp, #0
	ldrh	r1, [r4, #248]	; 0xf8
	bl	FUN_060025A4
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_060035F4
	ldr	r0, _0600361C	; =0x00000212
	bl	FUN_0600353C
	b	_0600360C
_060035F4:
	bl	FUN_060001E8
	mov	r1, #7
	strh	r1, [r0]
	mov	r1, #0
	strh	r1, [r0, #2]
	bl	FUN_060001F0
_0600360C:
	add	sp, sp, #512	; 0x200
	ldmia	sp!, {r4, lr}
	bx	lr
_06003618:	.word	_0601A960
_0600361C:	.word	0x00000212

	arm_func_start FUN_06003620
FUN_06003620: ; 0x06003620
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	mov	r5, r0
	mov	r4, r1
	bl	FUN_060001E8
	mov	r1, #8
	strh	r1, [r0]
	mov	r1, #1
	strh	r1, [r0, #2]
	mov	r1, #0
	strh	r1, [r0, #8]
	strh	r5, [r0, #4]
	strh	r4, [r0, #6]
	bl	FUN_060001F0
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr

	arm_func_start FUN_06003664
FUN_06003664: ; 0x06003664
	stmdb	sp!, {r4, r5, r6, lr}
	sub	sp, sp, #696	; 0x2b8
	ldr	r1, _060038E0	; =_0601A960
	ldr	r4, [r1, #1360]	; 0x550
	add	r6, sp, #56	; 0x38
	ldrh	r1, [r4]
	cmp	r1, #2
	beq	_060036A8
	bl	FUN_060001E8
	mov	r1, #8
	strh	r1, [r0]
	mov	r1, #3
	strh	r1, [r0, #2]
	mov	r1, #0
	strh	r1, [r0, #8]
	bl	FUN_060001F0
	b	_060038D4
_060036A8:
	ldr	r5, [r0, #4]
	add	r0, r4, #256	; 0x100
	ldrh	r3, [r0, #246]	; 0xf6
	mov	r2, #1
	ldrh	r1, [r0, #26]
	mov	r1, r2, lsl r1
	mov	r1, r1, asr #1
	ands	r1, r3, r1
	bne	_060036F0
	bl	FUN_060001E8
	mov	r1, #8
	strh	r1, [r0]
	mov	r1, #6
	strh	r1, [r0, #2]
	mov	r1, #0
	strh	r1, [r0, #8]
	bl	FUN_060001F0
	b	_060038D4
_060036F0:
	strh	r2, [r4, #230]	; 0xe6
	mov	r1, #0
	strh	r1, [r0, #136]	; 0x88
	bl	FUN_060001A4
	mov	r2, #0
	add	r1, r4, #256	; 0x100
	strh	r2, [r1, #130]	; 0x82
	strh	r2, [r4, #134]	; 0x86
	bl	FUN_060001AC
	mov	r1, #1
	add	r0, r4, #256	; 0x100
	strh	r1, [r0, #238]	; 0xee
	mov	r0, #8
	mov	r1, r6
	bl	FUN_06000408
	cmp	r0, #0
	beq	_060038D4
	mov	r0, r6
	bl	FUN_06002368
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_06003754
	ldr	r0, _060038E4	; =0x00000303
	bl	FUN_06003620
	b	_060038D4
_06003754:
	cmp	r5, #0
	movne	r0, #1
	moveq	r0, #0
	mov	r0, r0, lsl #16
	mov	r5, r0, lsr #16
	mov	r0, r6
	mov	r1, r5
	mov	r2, #0
	mov	r3, #1
	bl	FUN_06002EB0
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_06003794
	mov	r0, #1
	bl	FUN_06003620
	b	_060038D4
_06003794:
	strh	r5, [r4, #198]	; 0xc6
	add	r5, r4, #232	; 0xe8
	mov	r0, #0
	add	r1, sp, #568	; 0x238
	mov	r2, #128	; 0x80
	bl	FUN_0600055C
	add	r0, sp, #568	; 0x238
	mov	r1, r5
	bl	FUN_06000564
	mov	r0, #0
	add	r1, sp, #24
	mov	r2, #32
	bl	FUN_0600055C
	ldr	r0, [r5, #8]
	strh	r0, [sp, #24]
	ldr	r0, [r5, #8]
	mov	r0, r0, lsr #16
	strh	r0, [sp, #26]
	ldrh	r0, [r5, #12]
	strh	r0, [sp, #28]
	mov	r0, #0
	strh	r0, [sp, #30]
	mov	r0, #2
	str	r0, [sp]
	ldrh	r0, [r5, #50]	; 0x32
	str	r0, [sp, #4]
	mov	r0, #3
	str	r0, [sp, #8]
	str	r0, [sp, #12]
	ldrh	r0, [r5, #4]
	add	r0, r0, #16
	mov	r0, r0, lsl #16
	mov	r0, r0, lsr #16
	str	r0, [sp, #16]
	add	r0, sp, #568	; 0x238
	str	r0, [sp, #20]
	mov	r0, r6
	mov	r1, #32
	add	r2, sp, #24
	ldrh	r3, [r5, #24]
	bl	FUN_06002B14
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_06003850
	mov	r0, #9
	bl	FUN_06003620
	b	_060038D4
_06003850:
	ldrh	r0, [r5, #20]
	cmp	r0, #0
	movne	r1, #42	; 0x2a
	moveq	r1, #0
	ldrh	r0, [r5, #52]	; 0x34
	add	r0, r0, r1
	mov	r0, r0, lsl #16
	mov	r0, r0, lsr #16
	bl	FUN_060000B0
	ldrh	r0, [r5, #20]
	cmp	r0, #0
	movne	r1, #6
	moveq	r1, #0
	ldrh	r0, [r5, #54]	; 0x36
	add	r0, r0, r1
	mov	r0, r0, lsl #16
	mov	r0, r0, lsr #16
	bl	FUN_06000060
	bl	FUN_060001E8
	mov	r1, #7
	strh	r1, [r4]
	mov	r1, #8
	strh	r1, [r0]
	mov	r1, #0
	strh	r1, [r0, #2]
	strh	r1, [r0, #8]
	ldrh	r1, [r4, #48]	; 0x30
	strh	r1, [r0, #44]	; 0x2c
	ldrh	r1, [r4, #50]	; 0x32
	strh	r1, [r0, #46]	; 0x2e
	bl	FUN_060001F0
	mov	r0, #1
	strh	r0, [r4, #194]	; 0xc2
_060038D4:
	add	sp, sp, #696	; 0x2b8
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr
_060038E0:	.word	_0601A960
_060038E4:	.word	0x00000303

	arm_func_start FUN_060038E8
FUN_060038E8: ; 0x060038E8
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	mov	r5, r0
	mov	r4, r1
	bl	FUN_060001E8
	mov	r1, #9
	strh	r1, [r0]
	mov	r1, #1
	strh	r1, [r0, #2]
	strh	r5, [r0, #4]
	strh	r4, [r0, #6]
	bl	FUN_060001F0
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr

	arm_func_start FUN_06003924
FUN_06003924: ; 0x06003924
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #532	; 0x214
	ldr	r0, _06003AF0	; =_0601A960
	ldr	r8, [r0, #1360]	; 0x550
	ldrh	r0, [r8]
	cmp	r0, #7
	beq	_0600395C
	bl	FUN_060001E8
	mov	r1, #9
	strh	r1, [r0]
	mov	r1, #3
	strh	r1, [r0, #2]
	bl	FUN_060001F0
	b	_06003AE4
_0600395C:
	mov	r6, #0
	strh	r6, [r8, #246]	; 0xf6
	mov	sl, #1
	add	r4, r8, #296	; 0x128
	mov	fp, #6
	mov	r0, #3
	str	r0, [sp]
	str	sl, [sp, #4]
	mov	r5, sl
_06003980:
	mov	r7, r5, lsl sl
	add	r0, r8, #256	; 0x100
	ldrh	r0, [r0, #130]	; 0x82
	ands	r0, r0, r7
	beq	_06003A44
	sub	r1, sl, #1
	mov	r0, #6
	mla	r0, r1, r0, r4
	add	r1, sp, #8
	mov	r2, fp
	bl	FUN_06000554
	mov	r9, r6
	b	_060039E4
_060039B4:
	add	r0, sp, #16
	add	r1, sp, #8
	ldr	r2, [sp]
	bl	FUN_06002C68
	ldrh	r0, [r0, #4]
	cmp	r0, #0
	beq	_060039EC
	cmp	r0, #7
	beq	_060039E0
	cmp	r0, #12
	bne	_060039EC
_060039E0:
	add	r9, r9, #1
_060039E4:
	cmp	r9, #2
	blt	_060039B4
_060039EC:
	bl	FUN_060001A4
	add	r1, r8, #256	; 0x100
	ldrh	r2, [r1, #130]	; 0x82
	ands	r3, r2, r7
	beq	_06003A40
	mvn	r3, r7
	and	r2, r2, r3
	strh	r2, [r1, #130]	; 0x82
	ldrh	r1, [r8, #134]	; 0x86
	and	r1, r1, r3
	strh	r1, [r8, #134]	; 0x86
	add	r1, r8, sl, lsl #3
	str	r6, [r1, #1848]	; 0x738
	str	r6, [r1, #1852]	; 0x73c
	bl	FUN_060001AC
	ldr	r0, [sp, #4]
	mov	r1, sl, lsl #16
	mov	r1, r1, lsr #16
	add	r2, sp, #8
	bl	FUN_06004C5C
	b	_06003A44
_06003A40:
	bl	FUN_060001AC
_06003A44:
	add	sl, sl, #1
	cmp	sl, #16
	blt	_06003980
	add	r0, sp, #16
	mov	r1, #1
	bl	FUN_06002F14
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_06003A74
	mov	r0, #0
	bl	FUN_060038E8
	b	_06003AE4
_06003A74:
	mov	r0, #0
	strh	r0, [r8, #194]	; 0xc2
	mov	r0, #3
	strh	r0, [r8]
	add	r0, sp, #16
	bl	FUN_06002380
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_06003AA4
	ldr	r0, _06003AF4	; =0x00000302
	bl	FUN_060038E8
	b	_06003AE4
_06003AA4:
	mov	r0, #2
	strh	r0, [r8]
	mov	r1, #0
	str	r1, [r8, #408]	; 0x198
	add	r0, r8, #256	; 0x100
	strh	r1, [r0, #150]	; 0x96
	add	r0, r8, #412	; 0x19c
	mov	r2, #80	; 0x50
	bl	FUN_06000D08
	bl	FUN_06000100
	bl	FUN_060001E8
	mov	r1, #9
	strh	r1, [r0]
	mov	r1, #0
	strh	r1, [r0, #2]
	bl	FUN_060001F0
_06003AE4:
	add	sp, sp, #532	; 0x214
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
_06003AF0:	.word	_0601A960
_06003AF4:	.word	0x00000302

	arm_func_start FUN_06003AF8
FUN_06003AF8: ; 0x06003AF8
	stmdb	sp!, {r4, r5, r6, lr}
	mov	r6, r0
	mov	r5, r1
	mov	r4, r2
	bl	FUN_060001E8
	cmp	r4, #0
	movne	r1, #38	; 0x26
	strneh	r1, [r0]
	moveq	r1, #10
	streqh	r1, [r0]
	mov	r1, #1
	strh	r1, [r0, #2]
	mov	r1, #4
	strh	r1, [r0, #8]
	strh	r6, [r0, #4]
	strh	r5, [r0, #6]
	bl	FUN_060001F0
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr

	arm_func_start FUN_06003B44
FUN_06003B44: ; 0x06003B44
	stmdb	sp!, {r4, lr}
	mov	r4, r0
	sub	r0, r4, #64	; 0x40
	mov	r1, #66	; 0x42
	bl	FUN_06003B68
	sub	r0, r4, r0, lsl #1
	add	r0, r0, #94	; 0x5e
	ldmia	sp!, {r4, lr}
	bx	lr

	arm_func_start FUN_06003B68
FUN_06003B68: ; 0x06003B68
	ldr	pc, _06003B6C	; =_u32_div_f
_06003B6C:	.word	_u32_div_f

	arm_func_start FUN_06003B70
FUN_06003B70: ; 0x06003B70
	ldrh	r2, [r0, #10]
	cmp	r2, #0
	moveq	r0, #0
	bxeq	lr
	cmp	r2, #32
	movhi	r0, #0
	bxhi	lr
	mov	r3, #0
	b	_06003BAC
_06003B94:
	add	r1, r0, r3
	ldrb	r1, [r1, #12]
	cmp	r1, #0
	movne	r0, #1
	bxne	lr
	add	r3, r3, #1
_06003BAC:
	cmp	r3, r2
	blt	_06003B94
	mov	r0, #0
	bx	lr

	arm_func_start FUN_06003BBC
FUN_06003BBC: ; 0x06003BBC
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	ip, _060040D8	; =0x000004CC
	sub	sp, sp, ip
	mov	r8, r0
	ldr	r0, _060040DC	; =_0601A960
	ldr	r4, [r0, #1360]	; 0x550
	ldrh	r0, [r4]
	cmp	r0, #2
	beq	_06003C14
	cmp	r0, #3
	beq	_06003C14
	cmp	r0, #5
	beq	_06003C14
	bl	FUN_060001E8
	mov	r1, #38	; 0x26
	strh	r1, [r0]
	mov	r1, #3
	strh	r1, [r0, #2]
	mov	r1, #4
	strh	r1, [r0, #8]
	bl	FUN_060001F0
	b	_060040C8
_06003C14:
	ldr	r0, [r8, #4]
	str	r0, [r4, #388]	; 0x184
	ldrh	sl, [r8, #2]
	add	r0, r4, #256	; 0x100
	strh	sl, [r0, #144]	; 0x90
	ldrh	fp, [r8, #10]
	add	r0, r8, #12
	add	r1, sp, #28
	mov	r2, #6
	bl	FUN_06000554
	ldrh	r6, [r8, #54]	; 0x36
	ldrh	r7, [r8, #18]
	cmp	r7, #2
	beq	_06003C58
	cmp	r7, #3
	beq	_06003C64
	b	_06003C70
_06003C58:
	mov	r5, #1
	mov	r7, #0
	b	_06003C74
_06003C64:
	mov	r5, #1
	mov	r7, r5
	b	_06003C74
_06003C70:
	mov	r5, #0
_06003C74:
	ldrh	r9, [r8, #20]
	add	r0, r8, #22
	add	r1, sp, #34	; 0x22
	mov	r2, #32
	bl	FUN_06000554
	ldrh	r0, [r8, #8]
	str	r0, [sp, #16]
	ldrh	r1, [sp, #28]
	ldr	r0, _060040E0	; =0x0000FFFF
	cmp	r1, r0
	beq	_06003CAC
	ands	r0, r1, #1
	bicne	r0, r1, #1
	strneh	r0, [sp, #28]
_06003CAC:
	mov	r0, sl, lsl #17
	mov	r1, r0, lsr #16
	add	r0, r4, #256	; 0x100
	ldrh	r0, [r0, #244]	; 0xf4
	ands	sl, r1, r0
	bne	_06003CE8
	bl	FUN_060001E8
	mov	r1, #38	; 0x26
	strh	r1, [r0]
	mov	r1, #6
	strh	r1, [r0, #2]
	mov	r1, #4
	strh	r1, [r0, #8]
	bl	FUN_060001F0
	b	_060040C8
_06003CE8:
	ldr	r0, [r8, #4]
	cmp	r0, #0
	beq	_06003D08
	ands	r0, r0, #3
	bne	_06003D08
	ldrh	r0, [r8, #8]
	cmp	r0, #64	; 0x40
	bcs	_06003D2C
_06003D08:
	bl	FUN_060001E8
	mov	r1, #38	; 0x26
	strh	r1, [r0]
	mov	r1, #6
	strh	r1, [r0, #2]
	mov	r1, #4
	strh	r1, [r0, #8]
	bl	FUN_060001F0
	b	_060040C8
_06003D2C:
	mov	r0, #2
	strh	r0, [r4, #230]	; 0xe6
	add	r0, sp, #116	; 0x74
	bl	FUN_060022F8
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_06003D58
	mov	r0, #776	; 0x308
	mov	r2, #1
	bl	FUN_06003AF8
	b	_060040C8
_06003D58:
	ldrh	r0, [r0, #6]
	cmp	r0, #16
	bne	_06003DDC
	mov	r0, #38	; 0x26
	add	r1, sp, #116	; 0x74
	bl	FUN_06000408
	cmp	r0, #0
	beq	_060040C8
	add	r0, sp, #116	; 0x74
	bl	FUN_06002368
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_06003D9C
	ldr	r0, _060040E4	; =0x00000303
	mov	r2, #1
	bl	FUN_06003AF8
	b	_060040C8
_06003D9C:
	mov	r0, #3
	strh	r0, [r4]
	add	r0, sp, #116	; 0x74
	mov	r1, #1
	mov	r2, #0
	mov	r3, r1
	bl	FUN_06002EB0
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_06003DD4
	mov	r0, #1
	mov	r2, r0
	bl	FUN_06003AF8
	b	_060040C8
_06003DD4:
	mov	r0, #1
	strh	r0, [r4, #198]	; 0xc6
_06003DDC:
	cmp	r7, #0
	bne	_06003E2C
	add	r0, r4, #256	; 0x100
	ldrh	r0, [r0, #238]	; 0xee
	cmp	r0, #1
	bne	_06003E70
	add	r0, sp, #116	; 0x74
	mov	r1, #0
	bl	FUN_06002670
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_06003E1C
	ldr	r0, _060040E8	; =0x0000020E
	mov	r2, #1
	bl	FUN_06003AF8
	b	_060040C8
_06003E1C:
	mov	r1, #0
	add	r0, r4, #256	; 0x100
	strh	r1, [r0, #238]	; 0xee
	b	_06003E70
_06003E2C:
	add	r0, r4, #256	; 0x100
	ldrh	r0, [r0, #238]	; 0xee
	cmp	r0, #0
	bne	_06003E70
	add	r0, sp, #116	; 0x74
	mov	r1, #1
	bl	FUN_06002670
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_06003E64
	ldr	r0, _060040E8	; =0x0000020E
	mov	r2, #1
	bl	FUN_06003AF8
	b	_060040C8
_06003E64:
	mov	r1, #1
	add	r0, r4, #256	; 0x100
	strh	r1, [r0, #238]	; 0xee
_06003E70:
	cmp	r5, #1
	bne	_06003EC8
	add	r0, sp, #66	; 0x42
	mov	r1, #255	; 0xff
	mov	r2, #32
	bl	FUN_06000D08
	cmp	r6, #32
	bhi	_06003EA0
	add	r0, sp, #66	; 0x42
	mov	r1, #0
	mov	r2, r6
	bl	FUN_06000D08
_06003EA0:
	add	r0, sp, #116	; 0x74
	add	r1, sp, #66	; 0x42
	bl	FUN_060026D0
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_06003EC8
	ldr	r0, _060040EC	; =0x0000020D
	mov	r2, #1
	bl	FUN_06003AF8
	b	_060040C8
_06003EC8:
	mov	r0, #5
	strh	r0, [r4]
	mov	r5, #0
	add	r0, sp, #98	; 0x62
	mov	r1, r5
	mov	r2, #16
	bl	FUN_06000D08
	mov	r3, #1
	add	r1, sp, #98	; 0x62
	mov	r2, r3
_06003EF0:
	mov	r0, r2, lsl r3
	ands	r0, sl, r0
	strneb	r3, [r1, r5]
	addne	r0, r5, #1
	movne	r0, r0, lsl #16
	movne	r5, r0, lsr #16
	add	r0, r3, #1
	mov	r0, r0, lsl #16
	mov	r3, r0, lsr #16
	cmp	r3, #15
	bcc	_06003EF0
	ldr	r0, [sp, #16]
	bl	FUN_06003B44
	mov	r1, r0
	add	r0, sp, #34	; 0x22
	str	r0, [sp]
	str	r7, [sp, #4]
	add	r0, sp, #98	; 0x62
	str	r0, [sp, #8]
	str	fp, [sp, #12]
	add	r0, sp, #116	; 0x74
	add	r2, sp, #28
	mov	r3, r9
	bl	FUN_06002DF4
	mov	r8, r0
	ldrh	r1, [r8, #4]
	cmp	r1, #0
	beq	_06003F70
	mov	r0, #2
	mov	r2, #1
	bl	FUN_06003AF8
	b	_060040C8
_06003F70:
	bl	FUN_060001E8
	mov	r7, r0
	ldrh	r0, [r8, #8]
	cmp	r0, #0
	bne	_06003FAC
	mov	r0, #38	; 0x26
	strh	r0, [r7]
	mov	r1, #0
	strh	r1, [r7, #2]
	mov	r0, #4
	strh	r0, [r7, #8]
	strh	r1, [r7, #14]
	mov	r0, sl, asr #1
	strh	r0, [r7, #10]
	b	_060040C0
_06003FAC:
	add	r5, r8, #10
	ldr	r4, [r4, #388]	; 0x184
	mov	r0, #0
	mov	r1, r4
	ldr	r2, [sp, #16]
	bl	FUN_0600055C
	mov	r6, #0
	mov	r0, #32
	str	r0, [sp, #24]
	b	_0600408C
_06003FD4:
	ldrh	r0, [r5]
	mov	r0, r0, lsl #17
	mov	r0, r0, lsr #16
	str	r0, [sp, #20]
	mov	r0, r5
	mov	r1, r4
	ldr	r2, [sp, #20]
	bl	FUN_06000554
	cmp	r9, #0
	beq	_06004020
	mov	r0, r4
	bl	FUN_06003B70
	cmp	r0, #0
	bne	_06004020
	strh	r9, [r4, #10]
	add	r0, sp, #34	; 0x22
	add	r1, r4, #12
	ldr	r2, [sp, #24]
	bl	FUN_06000554
_06004020:
	add	r0, r7, r6, lsl #2
	str	r4, [r0, #16]
	ldrh	r0, [r5, #2]
	and	r1, r0, #255	; 0xff
	ands	r0, r1, #2
	movne	r0, r1, asr #2
	andne	fp, r0, #255	; 0xff
	moveq	r0, r1, asr #2
	addeq	r0, r0, #25
	andeq	fp, r0, #255	; 0xff
	mov	r0, fp
	bl	FUN_060002E8
	add	r1, r7, r6, lsl #1
	strh	r0, [r1, #80]	; 0x50
	ldr	r0, _060040F0	; =0x027FFF98
	ldrh	r0, [r0]
	eor	r0, fp, r0, lsl #1
	eor	r1, r0, r0, lsr #16
	ldr	r0, _060040F0	; =0x027FFF98
	strh	r1, [r0]
	ldr	r0, [sp, #20]
	add	r5, r5, r0
	add	r4, r4, r0
	ands	r0, r4, #2
	addne	r0, r4, #2
	bicne	r4, r0, #3
	add	r6, r6, #1
_0600408C:
	ldrh	r0, [r8, #8]
	cmp	r6, r0
	blt	_06003FD4
	mov	r0, #38	; 0x26
	strh	r0, [r7]
	mov	r0, #0
	strh	r0, [r7, #2]
	mov	r0, #5
	strh	r0, [r7, #8]
	ldrh	r0, [r8, #8]
	strh	r0, [r7, #14]
	mov	r0, sl, asr #1
	strh	r0, [r7, #10]
_060040C0:
	mov	r0, r7
	bl	FUN_060001F0
_060040C8:
	ldr	ip, _060040D8	; =0x000004CC
	add	sp, sp, ip
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
_060040D8:	.word	0x000004CC
_060040DC:	.word	_0601A960
_060040E0:	.word	0x0000FFFF
_060040E4:	.word	0x00000303
_060040E8:	.word	0x0000020E
_060040EC:	.word	0x0000020D
_060040F0:	.word	0x027FFF98

	arm_func_start FUN_060040F4
FUN_060040F4: ; 0x060040F4
	stmdb	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #588	; 0x24c
	add	r6, sp, #72	; 0x48
	ldr	r1, _0600447C	; =_0601A960
	ldr	r4, [r1, #1360]	; 0x550
	ldrh	r1, [r4]
	cmp	r1, #2
	beq	_06004148
	cmp	r1, #3
	beq	_06004148
	cmp	r1, #5
	beq	_06004148
	bl	FUN_060001E8
	mov	r1, #10
	strh	r1, [r0]
	mov	r1, #3
	strh	r1, [r0, #2]
	mov	r1, #4
	strh	r1, [r0, #8]
	bl	FUN_060001F0
	b	_06004470
_06004148:
	ldr	r1, [r0, #4]
	str	r1, [r4, #388]	; 0x184
	ldrh	r7, [r0, #2]
	add	r1, r4, #256	; 0x100
	strh	r7, [r1, #144]	; 0x90
	ldrh	r5, [r0, #8]
	add	r0, r0, #10
	add	r1, sp, #16
	mov	r2, #6
	bl	FUN_06000554
	ldrh	r1, [sp, #16]
	ldr	r0, _06004480	; =0x0000FFFF
	cmp	r1, r0
	beq	_0600418C
	ands	r0, r1, #1
	bicne	r0, r1, #1
	strneh	r0, [sp, #16]
_0600418C:
	cmp	r7, #0
	bne	_060041B8
	bl	FUN_060001E8
	mov	r1, #10
	strh	r1, [r0]
	mov	r1, #6
	strh	r1, [r0, #2]
	mov	r1, #4
	strh	r1, [r0, #8]
	bl	FUN_060001F0
	b	_06004470
_060041B8:
	mov	r0, #1
	mov	r1, r0, lsl r7
	add	r0, r4, #256	; 0x100
	ldrh	r0, [r0, #244]	; 0xf4
	ands	r0, r1, r0
	bne	_060041F4
	bl	FUN_060001E8
	mov	r1, #10
	strh	r1, [r0]
	mov	r1, #6
	strh	r1, [r0, #2]
	mov	r1, #4
	strh	r1, [r0, #8]
	bl	FUN_060001F0
	b	_06004470
_060041F4:
	mov	r0, #2
	strh	r0, [r4, #230]	; 0xe6
	mov	r0, r6
	bl	FUN_060022F8
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_06004220
	mov	r0, #776	; 0x308
	mov	r2, #0
	bl	FUN_06003AF8
	b	_06004470
_06004220:
	ldrh	r0, [r0, #6]
	cmp	r0, #16
	bne	_060042A4
	mov	r0, #10
	mov	r1, r6
	bl	FUN_06000408
	cmp	r0, #0
	beq	_06004470
	mov	r0, r6
	bl	FUN_06002368
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_06004264
	ldr	r0, _06004484	; =0x00000303
	mov	r2, #0
	bl	FUN_06003AF8
	b	_06004470
_06004264:
	mov	r0, #3
	strh	r0, [r4]
	mov	r0, r6
	mov	r1, #1
	mov	r2, #0
	mov	r3, r1
	bl	FUN_06002EB0
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_0600429C
	mov	r0, #1
	mov	r2, #0
	bl	FUN_06003AF8
	b	_06004470
_0600429C:
	mov	r0, #1
	strh	r0, [r4, #198]	; 0xc6
_060042A4:
	mov	r0, #5
	strh	r0, [r4]
	ldr	r0, _06004480	; =0x0000FFFF
	add	r1, sp, #22
	mov	r2, #32
	bl	FUN_0600055C
	strb	r7, [sp, #54]	; 0x36
	add	r0, sp, #55	; 0x37
	mov	r1, #0
	mov	r2, #15
	bl	FUN_06000D08
	add	r0, sp, #22
	str	r0, [sp]
	mov	r0, #1
	str	r0, [sp, #4]
	add	r0, sp, #54	; 0x36
	str	r0, [sp, #8]
	str	r5, [sp, #12]
	mov	r0, r6
	ldr	r1, _06004488	; =0x0000011E
	add	r2, sp, #16
	mov	r3, #0
	bl	FUN_06002DF4
	mov	r6, r0
	ldrh	r1, [r6, #4]
	cmp	r1, #0
	beq	_06004320
	mov	r0, #2
	mov	r2, #0
	bl	FUN_06003AF8
	b	_06004470
_06004320:
	bl	FUN_060001E8
	mov	r5, r0
	ldrh	r0, [r6, #8]
	cmp	r0, #0
	bne	_06004358
	mov	r0, #10
	strh	r0, [r5]
	mov	r1, #0
	strh	r1, [r5, #2]
	mov	r0, #4
	strh	r0, [r5, #8]
	strh	r7, [r5, #16]
	strh	r1, [r5, #18]
	b	_06004468
_06004358:
	mov	r0, #0
	ldr	r1, [r4, #388]	; 0x184
	add	r1, r1, #64	; 0x40
	mov	r2, #128	; 0x80
	bl	FUN_0600055C
	add	r0, r6, #10
	ldr	r1, [r4, #388]	; 0x184
	ldrh	r2, [r6, #10]
	mov	r2, r2, lsl #1
	bl	FUN_06000554
	mov	r0, #10
	strh	r0, [r5]
	mov	r0, #0
	strh	r0, [r5, #2]
	mov	r0, #5
	strh	r0, [r5, #8]
	ldrh	r0, [r6, #64]	; 0x40
	strh	r0, [r5, #16]
	ldrh	r0, [r6, #12]
	and	r1, r0, #255	; 0xff
	ands	r0, r1, #2
	movne	r0, r1, asr #2
	andne	r4, r0, #255	; 0xff
	moveq	r0, r1, asr #2
	addeq	r0, r0, #25
	andeq	r4, r0, #255	; 0xff
	mov	r0, r4
	bl	FUN_060002E8
	strh	r0, [r5, #18]
	ldr	r1, _0600448C	; =0x027FFF98
	ldrh	r0, [r1]
	eor	r0, r4, r0, lsl #1
	eor	r0, r0, r0, lsr #16
	strh	r0, [r1]
	ldrh	r0, [r6, #20]
	strh	r0, [r5, #20]
	add	r0, r6, #14
	add	r1, r5, #10
	mov	r2, #6
	bl	FUN_06000554
	add	r0, r6, #22
	add	r1, r5, #22
	mov	r2, #32
	bl	FUN_06000EA0
	ldrh	r0, [r6, #70]	; 0x46
	strh	r0, [r5, #54]	; 0x36
	ldrh	r0, [r5, #54]	; 0x36
	cmp	r0, #128	; 0x80
	bls	_06004440
	mov	r0, #10
	strh	r0, [r5]
	mov	r1, #0
	strh	r1, [r5, #2]
	mov	r0, #4
	strh	r0, [r5, #8]
	strh	r7, [r5, #16]
	strh	r1, [r5, #18]
	b	_06004468
_06004440:
	mov	r0, #0
	add	r1, r5, #56	; 0x38
	mov	r2, #128	; 0x80
	bl	FUN_0600055C
	add	r0, r6, #74	; 0x4a
	add	r1, r5, #56	; 0x38
	ldrh	r2, [r5, #54]	; 0x36
	add	r2, r2, #1
	bic	r2, r2, #1
	bl	FUN_06000EA0
_06004468:
	mov	r0, r5
	bl	FUN_060001F0
_06004470:
	add	sp, sp, #588	; 0x24c
	ldmia	sp!, {r4, r5, r6, r7, lr}
	bx	lr
_0600447C:	.word	_0601A960
_06004480:	.word	0x0000FFFF
_06004484:	.word	0x00000303
_06004488:	.word	0x0000011E
_0600448C:	.word	0x027FFF98

	arm_func_start FUN_06004490
FUN_06004490: ; 0x06004490
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	mov	r5, r0
	mov	r4, r1
	bl	FUN_060001E8
	mov	r1, #11
	strh	r1, [r0]
	mov	r1, #1
	strh	r1, [r0, #2]
	strh	r5, [r0, #4]
	strh	r4, [r0, #6]
	bl	FUN_060001F0
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr

	arm_func_start FUN_060044CC
FUN_060044CC: ; 0x060044CC
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #516	; 0x204
	add	r5, sp, #0
	ldr	r0, _06004594	; =_0601A960
	ldr	r4, [r0, #1360]	; 0x550
	ldrh	r0, [r4]
	cmp	r0, #5
	beq	_06004508
	bl	FUN_060001E8
	mov	r1, #11
	strh	r1, [r0]
	mov	r1, #3
	strh	r1, [r0, #2]
	bl	FUN_060001F0
	b	_06004588
_06004508:
	mov	r0, r5
	bl	FUN_06002380
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_06004528
	ldr	r0, _06004598	; =0x00000302
	bl	FUN_06004490
	b	_06004588
_06004528:
	mov	r0, #2
	strh	r0, [r4]
	add	r0, r4, #256	; 0x100
	ldrh	r0, [r0, #238]	; 0xee
	cmp	r0, #0
	bne	_06004570
	mov	r0, r5
	mov	r1, #1
	bl	FUN_06002670
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_06004564
	ldr	r0, _0600459C	; =0x0000020E
	bl	FUN_06004490
	b	_06004588
_06004564:
	mov	r1, #1
	add	r0, r4, #256	; 0x100
	strh	r1, [r0, #238]	; 0xee
_06004570:
	bl	FUN_060001E8
	mov	r1, #11
	strh	r1, [r0]
	mov	r1, #0
	strh	r1, [r0, #2]
	bl	FUN_060001F0
_06004588:
	add	sp, sp, #516	; 0x204
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_06004594:	.word	_0601A960
_06004598:	.word	0x00000302
_0600459C:	.word	0x0000020E

	arm_func_start FUN_060045A0
FUN_060045A0: ; 0x060045A0
	stmdb	sp!, {r4, r5, r6, lr}
	mov	r6, r0
	mov	r5, r1
	mov	r4, r2
	bl	FUN_060001E8
	mov	r1, #12
	strh	r1, [r0]
	mov	r1, #1
	strh	r1, [r0, #2]
	strh	r6, [r0, #4]
	strh	r5, [r0, #6]
	strh	r4, [r0, #14]
	bl	FUN_060001F0
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr

	arm_func_start FUN_060045DC
FUN_060045DC: ; 0x060045DC
	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #592	; 0x250
	mov	r6, r0
	add	r4, sp, #12
	ldr	r0, _06004BA8	; =_0601A960
	ldr	r7, [r0, #1356]	; 0x54c
	ldr	r5, [r0, #1360]	; 0x550
	ldrh	r0, [r5]
	cmp	r0, #2
	beq	_06004628
	bl	FUN_060001E8
	mov	r1, #12
	strh	r1, [r0]
	mov	r1, #3
	strh	r1, [r0, #2]
	mov	r1, #6
	strh	r1, [r0, #8]
	bl	FUN_060001F0
	b	_06004B9C
_06004628:
	ldr	r0, [r6, #4]
	add	r1, r7, #16
	mov	r2, #192	; 0xc0
	bl	FUN_06000554
	ldrh	r0, [r7, #76]	; 0x4c
	cmp	r0, #16
	bcc	_06004674
	ldrb	r0, [r7, #91]	; 0x5b
	ands	r0, r0, #1
	bne	_06004674
	bl	FUN_060001E8
	mov	r1, #12
	strh	r1, [r0]
	mov	r1, #11
	strh	r1, [r0, #2]
	mov	r1, #6
	strh	r1, [r0, #8]
	bl	FUN_060001F0
	b	_06004B9C
_06004674:
	mov	r1, #1
	ldrh	r0, [r7, #70]	; 0x46
	mov	r1, r1, lsl r0
	add	r0, r5, #256	; 0x100
	ldrh	r0, [r0, #244]	; 0xf4
	ands	r0, r1, r0
	beq	_060046A0
	mov	r1, r1, asr #1
	ldr	r0, _06004BAC	; =0x00001FFF
	ands	r0, r1, r0
	bne	_060046C0
_060046A0:
	bl	FUN_060001E8
	mov	r1, #12
	strh	r1, [r0]
	mov	r1, #6
	strh	r1, [r0, #2]
	strh	r1, [r0, #8]
	bl	FUN_060001F0
	b	_06004B9C
_060046C0:
	bl	FUN_060001E8
	mov	r1, #12
	strh	r1, [r0]
	mov	r1, #0
	strh	r1, [r0, #2]
	mov	r1, #6
	strh	r1, [r0, #8]
	bl	FUN_060001F0
	add	r0, r5, #256	; 0x100
	ldrh	r1, [r0, #236]	; 0xec
	cmp	r1, #1
	bne	_0600470C
	ldrh	r1, [r7, #62]	; 0x3e
	ands	r1, r1, #1
	movne	r1, #1
	strneh	r1, [r0, #236]	; 0xec
	moveq	r1, #2
	streqh	r1, [r0, #236]	; 0xec
	b	_06004724
_0600470C:
	ldrh	r1, [r7, #62]	; 0x3e
	ands	r1, r1, #2
	movne	r1, #2
	strneh	r1, [r0, #236]	; 0xec
	moveq	r1, #1
	streqh	r1, [r0, #236]	; 0xec
_06004724:
	ldrh	r0, [r7, #60]	; 0x3c
	ands	r0, r0, #32
	movne	r1, #1
	addne	r0, r5, #256	; 0x100
	strneh	r1, [r0, #238]	; 0xee
	moveq	r1, #0
	addeq	r0, r5, #256	; 0x100
	streqh	r1, [r0, #238]	; 0xee
	ldrh	r0, [r7, #76]	; 0x4c
	cmp	r0, #0
	moveq	r0, #3
	streqh	r0, [r5, #230]	; 0xe6
	movne	r0, #2
	strneh	r0, [r5, #230]	; 0xe6
	mov	r0, #12
	mov	r1, r4
	bl	FUN_06000408
	cmp	r0, #0
	beq	_06004B9C
	mov	r0, r4
	mov	r1, #0
	bl	FUN_060024E4
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_06004798
	ldr	r0, _06004BB0	; =0x00000216
	mov	r2, #0
	bl	FUN_060045A0
	b	_06004B9C
_06004798:
	ldrh	r0, [r7, #76]	; 0x4c
	cmp	r0, #16
	bcs	_060047F4
	ldrh	r1, [r7, #66]	; 0x42
	cmp	r1, #0
	moveq	r0, #1
	beq	_060047C0
	ldr	r0, _06004BB4	; =0x00002710
	bl	FUN_06001840
	add	r0, r0, #1
_060047C0:
	mov	r0, r0, lsl #16
	mov	r1, r0, lsr #16
	cmp	r1, #255	; 0xff
	movhi	r1, #255	; 0xff
	mov	r0, r4
	bl	FUN_06002750
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_060047F4
	ldr	r0, _06004BB8	; =0x0000020B
	mov	r2, #0
	bl	FUN_060045A0
	b	_06004B9C
_060047F4:
	mov	r0, r4
	bl	FUN_06002368
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_06004818
	ldr	r0, _06004BBC	; =0x00000303
	mov	r2, #0
	bl	FUN_060045A0
	b	_06004B9C
_06004818:
	mov	r0, #3
	strh	r0, [r5]
	ldr	r0, [r6, #32]
	cmp	r0, #0
	movne	r0, #1
	moveq	r0, #0
	mov	r0, r0, lsl #16
	mov	r8, r0, lsr #16
	mov	r0, r4
	mov	r1, r8
	mov	r2, #0
	mov	r3, #1
	bl	FUN_06002EB0
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_06004868
	mov	r0, #1
	mov	r2, #0
	bl	FUN_060045A0
	b	_06004B9C
_06004868:
	strh	r8, [r5, #198]	; 0xc6
	add	r0, r7, #16
	add	r1, sp, #524	; 0x20c
	mov	r2, #64	; 0x40
	bl	FUN_06000554
	ldrh	r0, [r5, #230]	; 0xe6
	cmp	r0, #2
	bne	_060048C8
	mov	r1, #32
	add	r0, sp, #512	; 0x200
	strh	r1, [r0, #22]
	ldr	r1, [r7, #84]	; 0x54
	strh	r1, [r0, #24]
	ldr	r1, [r7, #84]	; 0x54
	mov	r1, r1, lsr #16
	strh	r1, [r0, #26]
	ldrh	r1, [r7, #88]	; 0x58
	strh	r1, [r0, #28]
	mov	r1, #0
	strh	r1, [r0, #30]
	add	r0, r6, #8
	add	r1, sp, #544	; 0x220
	mov	r2, #24
	bl	FUN_06000554
_060048C8:
	mov	r0, r4
	mov	r1, #2000	; 0x7d0
	add	r2, sp, #524	; 0x20c
	bl	FUN_06002D70
	mov	r2, r0
	ldrh	r1, [r2, #4]
	cmp	r1, #0
	bne	_060048F4
	ldrh	r0, [r2, #6]
	cmp	r0, #0
	beq	_06004904
_060048F4:
	mov	r0, #3
	ldrh	r2, [r2, #6]
	bl	FUN_060045A0
	b	_06004B9C
_06004904:
	add	r0, r2, #8
	ldr	r1, _06004BC0	; =0x0000018A
	add	r1, r5, r1
	mov	r2, #6
	bl	FUN_06000554
	ldr	r0, _06004BC0	; =0x0000018A
	add	r0, r5, r0
	add	r1, sp, #0
	mov	r2, #6
	bl	FUN_06000554
	mov	r0, r4
	add	r1, sp, #0
	ldrh	r2, [r6, #38]	; 0x26
	mov	r3, #2000	; 0x7d0
	bl	FUN_06002CEC
	mov	r2, r0
	ldrh	r1, [r2, #4]
	cmp	r1, #12
	bne	_0600497C
	ldrh	r0, [r2, #6]
	cmp	r0, #19
	bne	_0600497C
	bl	FUN_060001E8
	mov	r1, #12
	strh	r1, [r0]
	strh	r1, [r0, #2]
	mov	r1, #6
	strh	r1, [r0, #8]
	bl	FUN_060001F0
	b	_06004B9C
_0600497C:
	cmp	r1, #0
	bne	_06004990
	ldrh	r0, [r2, #6]
	cmp	r0, #0
	beq	_060049A0
_06004990:
	mov	r0, #4
	ldrh	r2, [r2, #6]
	bl	FUN_060045A0
	b	_06004B9C
_060049A0:
	ldr	r0, _06004BC0	; =0x0000018A
	add	r0, r5, r0
	add	r1, sp, #6
	mov	r2, #6
	bl	FUN_06000554
	mov	r0, r4
	add	r1, sp, #6
	mov	r2, #1
	mov	r3, #2000	; 0x7d0
	bl	FUN_06002BE8
	mov	r4, r0
	bl	FUN_060001A4
	mov	r6, r0
	ldrh	r2, [r4, #4]
	cmp	r2, #12
	bne	_06004A10
	ldrh	r1, [r4, #6]
	cmp	r1, #19
	bne	_06004A10
	bl	FUN_060001AC
	bl	FUN_060001E8
	mov	r1, #12
	strh	r1, [r0]
	strh	r1, [r0, #2]
	mov	r1, #6
	strh	r1, [r0, #8]
	bl	FUN_060001F0
	b	_06004B9C
_06004A10:
	cmp	r2, #0
	bne	_06004A24
	ldrh	r0, [r4, #6]
	cmp	r0, #0
	beq	_06004A40
_06004A24:
	mov	r0, r6
	bl	FUN_060001AC
	mov	r0, #6
	ldrh	r1, [r4, #4]
	ldrh	r2, [r4, #6]
	bl	FUN_060045A0
	b	_06004B9C
_06004A40:
	ldrh	r1, [r4, #8]
	add	r0, r5, #256	; 0x100
	strh	r1, [r0, #136]	; 0x88
	ldrh	r0, [r7, #88]	; 0x58
	strh	r0, [r5, #186]	; 0xba
	mov	r0, #1
	add	r1, r5, #504	; 0x1f8
	mov	r2, #16
	bl	FUN_0600055C
	ldrh	r0, [r7, #18]
	and	r1, r0, #255	; 0xff
	ands	r0, r1, #2
	movne	r0, r1, asr #2
	andne	r4, r0, #255	; 0xff
	moveq	r0, r1, asr #2
	addeq	r0, r0, #25
	andeq	r4, r0, #255	; 0xff
	mov	r0, r4
	bl	FUN_060002E8
	strh	r0, [r5, #188]	; 0xbc
	mov	r0, r4
	bl	FUN_0600038C
	bl	FUN_060001A4
	mov	r4, r0
	mov	r1, #1
	add	r0, r5, #256	; 0x100
	strh	r1, [r0, #130]	; 0x82
	strh	r1, [r5, #134]	; 0x86
	ldr	r2, [r5, #1976]	; 0x7b8
	ldr	r1, [r5, #1980]	; 0x7bc
	mov	r0, #0
	cmp	r1, r0
	cmpeq	r2, r0
	beq	_06004ADC
	bl	FUN_06000E98
	orr	r1, r1, #0
	orr	r0, r0, #1
	str	r0, [r5, #1848]	; 0x738
	str	r1, [r5, #1852]	; 0x73c
_06004ADC:
	mov	r0, #8
	strh	r0, [r5]
	ldrb	r0, [r7, #91]	; 0x5b
	ands	r0, r0, #4
	movne	r1, #42	; 0x2a
	moveq	r1, #0
	ldrh	r0, [r7, #92]	; 0x5c
	add	r0, r0, r1
	mov	r0, r0, lsl #16
	mov	r0, r0, lsr #16
	bl	FUN_060000B0
	ldrb	r0, [r7, #91]	; 0x5b
	ands	r0, r0, #4
	movne	r1, #6
	moveq	r1, #0
	ldrh	r0, [r7, #94]	; 0x5e
	add	r0, r0, r1
	mov	r0, r0, lsl #16
	mov	r0, r0, lsr #16
	bl	FUN_06000060
	mov	r0, r4
	bl	FUN_060001AC
	mov	r0, #1
	strh	r0, [r5, #194]	; 0xc2
	bl	FUN_060001E8
	mov	r4, r0
	mov	r0, #12
	strh	r0, [r4]
	mov	r0, #0
	strh	r0, [r4, #2]
	mov	r0, #7
	strh	r0, [r4, #8]
	add	r0, r5, #256	; 0x100
	ldrh	r0, [r0, #136]	; 0x88
	strh	r0, [r4, #10]
	ldr	r0, _06004BC0	; =0x0000018A
	add	r0, r5, r0
	add	r1, r4, #16
	mov	r2, #6
	bl	FUN_06000554
	ldrh	r0, [r5, #48]	; 0x30
	strh	r0, [r4, #22]
	ldrh	r0, [r5, #50]	; 0x32
	strh	r0, [r4, #24]
	mov	r0, r4
	bl	FUN_060001F0
	mov	r0, r6
	bl	FUN_060001AC
_06004B9C:
	add	sp, sp, #592	; 0x250
	ldmia	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
_06004BA8:	.word	_0601A960
_06004BAC:	.word	0x00001FFF
_06004BB0:	.word	0x00000216
_06004BB4:	.word	0x00002710
_06004BB8:	.word	0x0000020B
_06004BBC:	.word	0x00000303
_06004BC0:	.word	0x0000018A

	arm_func_start FUN_06004BC4
FUN_06004BC4: ; 0x06004BC4
	stmdb	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #4
	mov	r7, r0
	mov	r6, r1
	mov	r5, r2
	mov	r4, r3
	bl	FUN_060001E8
	mov	r1, #37	; 0x25
	strh	r1, [r0]
	mov	r1, #1
	strh	r1, [r0, #2]
	strh	r7, [r0, #4]
	strh	r6, [r0, #6]
	strh	r5, [r0, #8]
	strh	r4, [r0, #10]
	bl	FUN_060001F0
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, lr}
	bx	lr

	arm_func_start FUN_06004C10
FUN_06004C10: ; 0x06004C10
	stmdb	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #4
	mov	r7, r0
	mov	r6, r1
	mov	r5, r2
	mov	r4, r3
	bl	FUN_060001E8
	mov	r1, #13
	strh	r1, [r0]
	mov	r1, #1
	strh	r1, [r0, #2]
	strh	r7, [r0, #4]
	strh	r6, [r0, #6]
	strh	r5, [r0, #8]
	strh	r4, [r0, #10]
	bl	FUN_060001F0
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, lr}
	bx	lr

	arm_func_start FUN_06004C5C
FUN_06004C5C: ; 0x06004C5C
	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r8, r0
	mov	r7, r1
	mov	r6, r2
	ldr	r0, _06004D20	; =_0601A960
	ldr	r4, [r0, #1360]	; 0x550
	bl	FUN_060001E8
	mov	r5, r0
	mov	r0, #0
	strh	r0, [r5, #2]
	cmp	r8, #0
	beq	_06004CCC
	mov	r0, #8
	strh	r0, [r5]
	mov	r0, #26
	strh	r0, [r5, #8]
	ldr	r0, _06004D24	; =0x0000F001
	strh	r0, [r5, #18]
	strh	r7, [r5, #16]
	mov	r0, r6
	add	r1, r5, #10
	mov	r2, #6
	bl	FUN_06000554
	ldrh	r0, [r4, #48]	; 0x30
	strh	r0, [r5, #44]	; 0x2c
	ldrh	r0, [r4, #50]	; 0x32
	strh	r0, [r5, #46]	; 0x2e
	b	_06004D10
_06004CCC:
	mov	r0, #12
	strh	r0, [r5]
	mov	r0, #26
	strh	r0, [r5, #8]
	ldr	r0, _06004D24	; =0x0000F001
	strh	r0, [r5, #12]
	add	r0, r4, #256	; 0x100
	ldrh	r0, [r0, #136]	; 0x88
	strh	r0, [r5, #10]
	mov	r0, r6
	add	r1, r5, #16
	mov	r2, #6
	bl	FUN_06000554
	ldrh	r0, [r4, #48]	; 0x30
	strh	r0, [r5, #22]
	ldrh	r0, [r4, #50]	; 0x32
	strh	r0, [r5, #24]
_06004D10:
	mov	r0, r5
	bl	FUN_060001F0
	ldmia	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
_06004D20:	.word	_0601A960
_06004D24:	.word	0x0000F001

	arm_func_start FUN_06004D28
FUN_06004D28: ; 0x06004D28
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #580	; 0x244
	movs	sl, r1
	str	r2, [sp]
	ldr	r1, _0600531C	; =_0601A960
	ldr	r5, [r1, #1360]	; 0x550
	ldr	r1, [r0, #4]
	mov	r1, r1, lsl #16
	mov	r9, r1, lsr #16
	ldrne	r0, [r0, #8]
	moveq	r0, #0
	mov	r0, r0, lsl #16
	mov	r0, r0, lsr #16
	str	r0, [sp, #4]
	mov	r8, #0
	mov	r7, r8
	ldrh	r0, [r5]
	cmp	r0, #9
	beq	_06004D7C
	cmp	r0, #7
	bne	_06004D8C
_06004D7C:
	ldr	r0, [r5, #12]
	cmp	r0, #1
	moveq	r7, #1
	b	_06004E88
_06004D8C:
	cmp	r0, #10
	beq	_06004D9C
	cmp	r0, #8
	bne	_06004E4C
_06004D9C:
	bl	FUN_060001A4
	mov	r4, r0
	add	r1, r5, #256	; 0x100
	ldrh	r1, [r1, #130]	; 0x82
	cmp	r1, #0
	bne	_06004DF4
	bl	FUN_060001AC
	cmp	sl, #0
	bne	_06004DEC
	bl	FUN_060001E8
	mov	r1, #13
	strh	r1, [r0]
	mov	r1, #3
	strh	r1, [r0, #2]
	mov	r1, #0
	strh	r1, [r0, #4]
	strh	r1, [r0, #6]
	strh	r9, [r0, #8]
	strh	r1, [r0, #10]
	bl	FUN_060001F0
_06004DEC:
	mov	r0, #0
	b	_06005310
_06004DF4:
	ldr	r0, [r5, #12]
	cmp	r0, #1
	bne	_06004E24
	mov	r0, #0
	str	r0, [r5, #12]
	mov	r7, #1
	bl	FUN_06006978
	bl	FUN_06000288
	ldrh	r0, [r5]
	cmp	r0, #10
	moveq	r0, #8
	streqh	r0, [r5]
_06004E24:
	mov	r1, #0
	add	r0, r5, #256	; 0x100
	strh	r1, [r0, #130]	; 0x82
	strh	r1, [r5, #134]	; 0x86
	str	r1, [r5, #20]
	str	r1, [r5, #16]
	str	r1, [r5, #28]
	mov	r0, r4
	bl	FUN_060001AC
	b	_06004E88
_06004E4C:
	cmp	sl, #0
	bne	_06004E80
	bl	FUN_060001E8
	mov	r1, #13
	strh	r1, [r0]
	mov	r1, #3
	strh	r1, [r0, #2]
	mov	r1, r8
	strh	r1, [r0, #4]
	strh	r1, [r0, #6]
	strh	r9, [r0, #8]
	strh	r1, [r0, #10]
	bl	FUN_060001F0
_06004E80:
	mov	r0, #0
	b	_06005310
_06004E88:
	ldrh	r0, [r5]
	cmp	r0, #10
	beq	_06004E9C
	cmp	r0, #8
	bne	_060050E0
_06004E9C:
	ldr	r0, _06005320	; =0x0000018A
	add	r0, r5, r0
	add	r1, sp, #56	; 0x38
	mov	r2, #6
	bl	FUN_06000554
	mov	r8, #0
	add	r6, sp, #56	; 0x38
	mov	r4, #3
	b	_06004F5C
_06004EC0:
	add	r0, sp, #68	; 0x44
	mov	r1, r6
	mov	r2, r4
	bl	FUN_06002C68
	ldrh	r1, [r0, #4]
	cmp	r1, #7
	bgt	_06004F08
	cmp	r1, #7
	bge	_06004F10
	cmp	r1, #1
	bgt	_06004F18
	cmp	r1, #0
	blt	_06004F18
	cmp	r1, #0
	beq	_06004F64
	cmp	r1, #1
	beq	_06004F64
	b	_06004F18
_06004F08:
	cmp	r1, #12
	bne	_06004F18
_06004F10:
	add	r8, r8, #1
	b	_06004F5C
_06004F18:
	cmp	sl, #0
	beq	_06004F34
	mov	r0, #5
	mov	r2, r9
	mov	r3, #0
	bl	FUN_06004BC4
	b	_06004F44
_06004F34:
	mov	r0, #5
	mov	r2, r9
	mov	r3, #0
	bl	FUN_06004C10
_06004F44:
	cmp	r7, #0
	beq	_06004F54
	mov	r0, #1
	bl	FUN_06006F48
_06004F54:
	mov	r0, #0
	b	_06005310
_06004F5C:
	cmp	r8, #2
	blt	_06004EC0
_06004F64:
	mov	r8, #1
	mov	r0, #0
	strh	r0, [r5, #194]	; 0xc2
	mov	r0, #3
	strh	r0, [r5]
	add	r0, sp, #68	; 0x44
	mov	r1, r8
	bl	FUN_06002F14
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_06004FD4
	cmp	sl, #0
	beq	_06004FAC
	mov	r0, #0
	mov	r2, r9
	mov	r3, r8
	bl	FUN_06004BC4
	b	_06004FBC
_06004FAC:
	mov	r0, #0
	mov	r2, r9
	mov	r3, r8
	bl	FUN_06004C10
_06004FBC:
	cmp	r7, #0
	beq	_06004FCC
	mov	r0, #1
	bl	FUN_06006F48
_06004FCC:
	mov	r0, #0
	b	_06005310
_06004FD4:
	add	r0, sp, #68	; 0x44
	bl	FUN_06002380
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_0600502C
	cmp	sl, #0
	beq	_06005004
	ldr	r0, _06005324	; =0x00000302
	mov	r2, r9
	mov	r3, r8
	bl	FUN_06004BC4
	b	_06005014
_06005004:
	ldr	r0, _06005324	; =0x00000302
	mov	r2, r9
	mov	r3, r8
	bl	FUN_06004C10
_06005014:
	cmp	r7, #0
	beq	_06005024
	mov	r0, #1
	bl	FUN_06006F48
_06005024:
	mov	r0, #0
	b	_06005310
_0600502C:
	mov	r0, #2
	strh	r0, [r5]
	mov	r1, #0
	str	r1, [r5, #408]	; 0x198
	add	r0, r5, #256	; 0x100
	strh	r1, [r0, #150]	; 0x96
	add	r0, r5, #412	; 0x19c
	mov	r2, #80	; 0x50
	bl	FUN_06000D08
	bl	FUN_06000100
	cmp	sl, #1
	bne	_060050BC
	bl	FUN_060001E8
	mov	r4, r0
	mov	r0, #12
	strh	r0, [r4]
	mov	r0, #0
	strh	r0, [r4, #2]
	mov	r0, #9
	strh	r0, [r4, #8]
	ldr	r0, [sp, #4]
	strh	r0, [r4, #12]
	add	r0, r5, #256	; 0x100
	ldrh	r0, [r0, #136]	; 0x88
	strh	r0, [r4, #10]
	add	r0, sp, #56	; 0x38
	add	r1, r4, #16
	mov	r2, #6
	bl	FUN_06000554
	ldrh	r0, [r5, #48]	; 0x30
	strh	r0, [r4, #22]
	ldrh	r0, [r5, #50]	; 0x32
	strh	r0, [r4, #24]
	mov	r0, r4
	bl	FUN_060001F0
	b	_060050CC
_060050BC:
	mov	r0, #0
	mov	r1, r0
	add	r2, sp, #56	; 0x38
	bl	FUN_06004C5C
_060050CC:
	cmp	r7, #0
	beq	_06005300
	mov	r0, #1
	bl	FUN_06006F48
	b	_06005300
_060050E0:
	mov	r6, #1
	str	r6, [sp, #36]	; 0x24
	mov	r0, #0
	str	r0, [sp, #24]
	mov	r0, #6
	str	r0, [sp, #20]
	str	r6, [sp, #52]	; 0x34
	mov	r0, #8
	str	r0, [sp, #44]	; 0x2c
	mov	r0, #9
	str	r0, [sp, #48]	; 0x30
	mov	r0, #3
	str	r0, [sp, #28]
	str	r6, [sp, #16]
	b	_060052F8
_0600511C:
	ldr	r0, [sp, #16]
	mov	r4, r0, lsl r6
	add	r0, r5, #256	; 0x100
	ldrh	r0, [r0, #130]	; 0x82
	and	r0, r0, r9
	ands	r0, r4, r0
	beq	_060052F4
	mov	r0, r6, lsl #16
	mov	fp, r0, lsr #16
	add	r2, r5, #296	; 0x128
	sub	r1, r6, #1
	mov	r0, #6
	mla	r0, r1, r0, r2
	str	r0, [sp, #12]
	add	r1, sp, #62	; 0x3e
	ldr	r2, [sp, #20]
	bl	FUN_06000554
	ldr	r0, [sp, #24]
	str	r0, [sp, #8]
	b	_060051EC
_0600516C:
	add	r0, sp, #68	; 0x44
	add	r1, sp, #62	; 0x3e
	ldr	r2, [sp, #28]
	bl	FUN_06002C68
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_060051F8
	cmp	r1, #7
	beq	_06005198
	cmp	r1, #12
	bne	_060051A8
_06005198:
	ldr	r0, [sp, #8]
	add	r0, r0, #1
	str	r0, [sp, #8]
	b	_060051EC
_060051A8:
	cmp	sl, #0
	beq	_060051C4
	mov	r0, #5
	mov	r2, r9
	mov	r3, r8
	bl	FUN_06004BC4
	b	_060051D4
_060051C4:
	mov	r0, #5
	mov	r2, r9
	mov	r3, r8
	bl	FUN_06004C10
_060051D4:
	cmp	r7, #0
	beq	_060051E4
	mov	r0, #1
	bl	FUN_06006F48
_060051E4:
	mov	r0, #0
	b	_06005310
_060051EC:
	ldr	r0, [sp, #8]
	cmp	r0, #2
	blt	_0600516C
_060051F8:
	bl	FUN_060001A4
	str	r0, [sp, #32]
	add	r2, r5, #256	; 0x100
	ldrh	r1, [r2, #130]	; 0x82
	ands	r3, r1, r4
	beq	_060052F0
	ldr	r0, [sp, #36]	; 0x24
	orr	r0, r8, r0, lsl fp
	mov	r0, r0, lsl #16
	mov	r8, r0, lsr #16
	mvn	r3, r4
	and	r0, r1, r3
	strh	r0, [r2, #130]	; 0x82
	ldrh	r0, [r5, #134]	; 0x86
	and	r0, r0, r3
	strh	r0, [r5, #134]	; 0x86
	add	r1, r5, fp, lsl #3
	ldr	r0, [sp, #24]
	str	r0, [r1, #1848]	; 0x738
	str	r0, [r1, #1852]	; 0x73c
	ldr	r0, [sp, #12]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #20]
	bl	FUN_06000D08
	ldr	r0, [sp, #32]
	bl	FUN_060001AC
	cmp	sl, #1
	bne	_060052C4
	bl	FUN_060001E8
	str	r0, [sp, #40]	; 0x28
	ldr	r1, [sp, #44]	; 0x2c
	strh	r1, [r0]
	ldr	r1, [sp, #24]
	strh	r1, [r0, #2]
	ldr	r1, [sp, #48]	; 0x30
	strh	r1, [r0, #8]
	ldr	r1, [sp, #4]
	strh	r1, [r0, #18]
	strh	fp, [r0, #16]
	add	r0, sp, #62	; 0x3e
	ldr	r1, [sp, #40]	; 0x28
	add	r1, r1, #10
	ldr	r2, [sp, #20]
	bl	FUN_06000554
	ldrh	r1, [r5, #48]	; 0x30
	ldr	r0, [sp, #40]	; 0x28
	strh	r1, [r0, #44]	; 0x2c
	ldrh	r1, [r5, #50]	; 0x32
	strh	r1, [r0, #46]	; 0x2e
	bl	FUN_060001F0
	b	_060052D8
_060052C4:
	ldr	r0, [sp, #52]	; 0x34
	mov	r1, r6, lsl #16
	mov	r1, r1, lsr #16
	add	r2, sp, #62	; 0x3e
	bl	FUN_06004C5C
_060052D8:
	cmp	r7, #0
	beq	_060052F4
	mov	r0, r4, lsl #16
	mov	r0, r0, lsr #16
	bl	FUN_06006F48
	b	_060052F4
_060052F0:
	bl	FUN_060001AC
_060052F4:
	add	r6, r6, #1
_060052F8:
	cmp	r6, #16
	blt	_0600511C
_06005300:
	ldr	r0, [sp]
	cmp	r0, #0
	strneh	r8, [r0]
	mov	r0, #1
_06005310:
	add	sp, sp, #580	; 0x244
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
_0600531C:	.word	_0601A960
_06005320:	.word	0x0000018A
_06005324:	.word	0x00000302

	arm_func_start FUN_06005328
FUN_06005328: ; 0x06005328
	stmdb	sp!, {r4, lr}
	sub	sp, sp, #8
	ldr	r1, [r0, #4]
	mov	r1, r1, lsl #16
	mov	r4, r1, lsr #16
	mov	r1, #0
	add	r2, sp, #0
	bl	FUN_06004D28
	cmp	r0, #1
	bne	_06005374
	bl	FUN_060001E8
	mov	r1, #13
	strh	r1, [r0]
	mov	r1, #0
	strh	r1, [r0, #2]
	strh	r4, [r0, #8]
	ldrh	r1, [sp]
	strh	r1, [r0, #10]
	bl	FUN_060001F0
_06005374:
	add	sp, sp, #8
	ldmia	sp!, {r4, lr}
	bx	lr

	arm_func_start FUN_06005380
FUN_06005380: ; 0x06005380
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	sub	sp, sp, #512	; 0x200
	ldr	r1, _06005630	; =_06019960
	ldr	r2, _06005634	; =_0601A960
	ldr	r4, [r2, #1360]	; 0x550
	mov	sl, #0
	ldr	r9, [r0, #4]
	ldr	r8, [r0, #8]
	ldr	r7, [r0, #12]
	ldr	r6, [r0, #16]
	add	r5, r0, #20
	ldrh	r0, [r4, #156]	; 0x9c
	cmp	r0, #0
	bne	_06005408
	ldrh	r0, [r4, #60]	; 0x3c
	add	r0, r0, #31
	bic	r0, r0, #31
	cmp	r6, r0
	movcc	sl, #6
	add	r0, r4, #256	; 0x100
	ldrh	r0, [r0, #136]	; 0x88
	cmp	r0, #0
	ldrneh	r0, [r4, #62]	; 0x3e
	addne	r0, r0, #81	; 0x51
	bicne	r0, r0, #31
	bne	_06005400
	ldrh	r0, [r4, #62]	; 0x3e
	add	r2, r0, #12
	ldrh	r0, [r4, #248]	; 0xf8
	mul	r0, r2, r0
	add	r0, r0, #41	; 0x29
	bic	r0, r0, #31
_06005400:
	cmp	r8, r0
	movcc	sl, #6
_06005408:
	ldrh	r0, [r4, #230]	; 0xe6
	cmp	r0, #2
	bne	_0600543C
	add	r0, r4, #256	; 0x100
	ldrh	r0, [r0, #246]	; 0xf6
	mov	r2, #1
	add	r1, r1, #4096	; 0x1000
	ldr	r1, [r1, #1356]	; 0x54c
	ldrh	r1, [r1, #70]	; 0x46
	mov	r1, r2, lsl r1
	mov	r1, r1, asr #1
	ands	r0, r0, r1
	moveq	sl, #6
_0600543C:
	cmp	sl, #0
	beq	_06005464
	bl	FUN_060001E8
	mov	r1, #14
	strh	r1, [r0]
	strh	sl, [r0, #2]
	mov	r1, #10
	strh	r1, [r0, #4]
	bl	FUN_060001F0
	b	_06005624
_06005464:
	mov	r1, #0
	ldr	r0, [r4, #12]
	cmp	r0, #0
	strne	r1, [r4, #12]
	movne	r1, #1
	cmp	r1, #0
	beq	_06005488
	ldr	r0, _06005638	; =0x0000FFFF
	bl	FUN_06006F48
_06005488:
	bl	FUN_06007F20
	mov	r0, r5
	mov	r1, #0
	bl	FUN_060086D0
	bl	FUN_060001A4
	mov	r5, r0
	ldrh	r2, [r4]
	ldr	r1, _0600563C	; =0x0000FFF9
	add	r1, r2, r1
	mov	r1, r1, lsl #16
	mov	r1, r1, lsr #16
	cmp	r1, #1
	bhi	_06005600
	mov	r2, #0
	strh	r2, [r4, #132]	; 0x84
	strh	r2, [r4, #94]	; 0x5e
	mov	r1, #1
	strh	r1, [r4, #96]	; 0x60
	strh	r2, [r4, #136]	; 0x88
	strh	r2, [r4, #158]	; 0x9e
	mov	r0, #60	; 0x3c
	strh	r0, [r4, #160]	; 0xa0
	str	r2, [r4, #1844]	; 0x734
	strh	r2, [r4, #138]	; 0x8a
	strh	r2, [r4, #140]	; 0x8c
	strh	r2, [r4, #142]	; 0x8e
	strh	r2, [r4, #144]	; 0x90
	strh	r2, [r4, #102]	; 0x66
	str	r9, [r4, #116]	; 0x74
	strh	r8, [r4, #114]	; 0x72
	add	r0, r9, r8
	str	r0, [r4, #120]	; 0x78
	strh	r2, [r4, #112]	; 0x70
	str	r7, [r4, #124]	; 0x7c
	strh	r6, [r4, #128]	; 0x80
	strh	r2, [r4, #98]	; 0x62
	strh	r2, [r4, #100]	; 0x64
	strh	r2, [r4, #104]	; 0x68
	strh	r2, [r4, #106]	; 0x6a
	ldr	r0, _06005638	; =0x0000FFFF
	strh	r0, [r4, #190]	; 0xbe
	strh	r1, [r4, #192]	; 0xc0
	bl	FUN_06000E98
	mov	r2, #0
	orr	r1, r1, #0
	orr	r3, r0, #1
_06005540:
	add	r0, r4, r2, lsl #3
	str	r3, [r0, #1848]	; 0x738
	str	r1, [r0, #1852]	; 0x73c
	add	r2, r2, #1
	cmp	r2, #16
	blt	_06005540
	bl	FUN_06000210
	mov	r0, #0
	strh	r0, [r4, #206]	; 0xce
	bl	FUN_060068E0
	ldrh	r0, [r4]
	cmp	r0, #8
	moveq	r0, #10
	streqh	r0, [r4]
	beq	_06005588
	cmp	r0, #7
	moveq	r0, #9
	streqh	r0, [r4]
_06005588:
	bl	FUN_060001E8
	mov	r1, #14
	strh	r1, [r0]
	mov	r1, #0
	strh	r1, [r0, #2]
	mov	r1, #10
	strh	r1, [r0, #4]
	bl	FUN_060001F0
	mov	r0, #1
	str	r0, [r4, #12]
	mov	r0, r5
	bl	FUN_060001AC
	add	r0, sp, #0
	mov	r1, #1
	bl	FUN_060024E4
	mov	r4, r0
	ldrh	r0, [r4, #4]
	cmp	r0, #0
	beq	_06005624
	bl	FUN_060001E8
	mov	r1, #14
	strh	r1, [r0]
	mov	r1, #1
	strh	r1, [r0, #2]
	ldr	r1, _06005640	; =0x00000216
	strh	r1, [r0, #4]
	ldrh	r1, [r4, #4]
	strh	r1, [r0, #6]
	bl	FUN_060001F0
	b	_06005624
_06005600:
	bl	FUN_060001AC
	bl	FUN_060001E8
	mov	r1, #14
	strh	r1, [r0]
	mov	r1, #3
	strh	r1, [r0, #2]
	mov	r1, #10
	strh	r1, [r0, #4]
	bl	FUN_060001F0
_06005624:
	add	sp, sp, #512	; 0x200
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	bx	lr
_06005630:	.word	_06019960
_06005634:	.word	_0601A960
_06005638:	.word	0x0000FFFF
_0600563C:	.word	0x0000FFF9
_06005640:	.word	0x00000216

	arm_func_start FUN_06005644
FUN_06005644: ; 0x06005644
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #20
	ldr	r1, _06005784	; =_0601A960
	ldr	r4, [r1, #1360]	; 0x550
	add	r2, r4, #256	; 0x100
	ldrh	r5, [r2, #130]	; 0x82
	ldr	sl, [r0, #4]
	ldr	r1, [r0, #8]
	mov	r1, r1, lsl #16
	mov	r9, r1, lsr #16
	ldr	r8, [r0, #12]
	ldr	r1, [r0, #16]
	mov	r1, r1, lsl #16
	mov	r1, r1, lsr #16
	str	r1, [sp, #16]
	ldr	r1, [r0, #20]
	mov	r1, r1, lsl #16
	mov	r1, r1, lsr #16
	ldr	r7, [r0, #24]
	ldr	fp, [r0, #28]
	ldrh	r0, [r2, #136]	; 0x88
	cmp	r0, #0
	movne	r8, #1
	ldr	r0, [r4, #12]
	cmp	r0, #0
	moveq	r6, #3
	beq	_060056E0
	ands	r0, r8, r5
	moveq	r6, #0
	beq	_060056E0
	str	sl, [sp]
	str	r9, [sp, #4]
	str	r7, [sp, #8]
	str	fp, [sp, #12]
	mov	r0, r5
	ldr	r2, [sp, #16]
	mov	r3, r8
	bl	FUN_060074AC
	mov	r6, r0
_060056E0:
	cmp	r6, #2
	beq	_06005778
	bl	FUN_060001E8
	mov	r1, #129	; 0x81
	strh	r1, [r0]
	strh	r6, [r0, #2]
	mov	r1, #20
	strh	r1, [r0, #8]
	ldr	r1, [sp, #16]
	strh	r1, [r0, #10]
	strh	r8, [r0, #12]
	cmp	r6, #10
	andeq	r1, r8, r5
	streqh	r1, [r0, #14]
	movne	r1, #0
	strneh	r1, [r0, #14]
	mov	r1, #0
	strh	r1, [r0, #16]
	strh	r9, [r0, #24]
	str	sl, [r0, #20]
	str	r7, [r0, #28]
	str	fp, [r0, #32]
	ldr	r1, _06005788	; =0x0000FFFF
	strh	r1, [r0, #26]
	ldrh	r2, [r4, #48]	; 0x30
	ldrh	r3, [r4, #50]	; 0x32
	add	r1, r4, #256	; 0x100
	ldrh	r1, [r1, #136]	; 0x88
	cmp	r1, #0
	moveq	r1, r2
	movne	r1, r3
	strh	r1, [r0, #36]	; 0x24
	add	r1, r4, #256	; 0x100
	ldrh	r1, [r1, #136]	; 0x88
	cmp	r1, #0
	movne	r3, r2
	strh	r3, [r0, #38]	; 0x26
	bl	FUN_060001F0
_06005778:
	add	sp, sp, #20
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
_06005784:	.word	_0601A960
_06005788:	.word	0x0000FFFF

	arm_func_start FUN_0600578C
FUN_0600578C: ; 0x0600578C
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	mov	r5, r0
	mov	r4, r1
	bl	FUN_060001E8
	mov	r1, #16
	strh	r1, [r0]
	mov	r1, #1
	strh	r1, [r0, #2]
	strh	r5, [r0, #4]
	strh	r4, [r0, #6]
	bl	FUN_060001F0
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr

	arm_func_start FUN_060057C8
FUN_060057C8: ; 0x060057C8
	stmdb	sp!, {r4, r5, r6, lr}
	sub	sp, sp, #512	; 0x200
	ldr	r0, _060058DC	; =_0601A960
	ldr	r4, [r0, #1360]	; 0x550
	mov	r6, #0
	ldrh	r0, [r4]
	cmp	r0, #9
	beq	_0600580C
	cmp	r0, #10
	beq	_0600580C
	bl	FUN_060001E8
	mov	r1, #16
	strh	r1, [r0]
	mov	r1, #3
	strh	r1, [r0, #2]
	bl	FUN_060001F0
	b	_060058D0
_0600580C:
	bl	FUN_060001A4
	mov	r5, r0
	ldr	r0, [r4, #12]
	cmp	r0, #1
	moveq	r6, #1
	mov	r0, #0
	str	r0, [r4, #12]
	bl	FUN_06006978
	bl	FUN_06000288
	ldrh	r0, [r4]
	cmp	r0, #10
	moveq	r0, #8
	streqh	r0, [r4]
	beq	_06005850
	cmp	r0, #9
	moveq	r0, #7
	streqh	r0, [r4]
_06005850:
	mov	r0, r5
	bl	FUN_060001AC
	add	r0, sp, #0
	mov	r1, #0
	bl	FUN_060024E4
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_0600587C
	ldr	r0, _060058E0	; =0x00000216
	bl	FUN_0600578C
	b	_060058D0
_0600587C:
	add	r0, sp, #0
	mov	r1, #7
	bl	FUN_0600286C
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_060058A0
	mov	r0, #260	; 0x104
	bl	FUN_0600578C
	b	_060058D0
_060058A0:
	mov	r0, #0
	strh	r0, [r4, #138]	; 0x8a
	cmp	r6, #0
	beq	_060058B8
	ldr	r0, _060058E4	; =0x0000FFFF
	bl	FUN_06006F48
_060058B8:
	bl	FUN_060001E8
	mov	r1, #16
	strh	r1, [r0]
	mov	r1, #0
	strh	r1, [r0, #2]
	bl	FUN_060001F0
_060058D0:
	add	sp, sp, #512	; 0x200
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr
_060058DC:	.word	_0601A960
_060058E0:	.word	0x00000216
_060058E4:	.word	0x0000FFFF

	arm_func_start FUN_060058E8
FUN_060058E8: ; 0x060058E8
	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r1, _06005970	; =_0601A960
	ldr	r5, [r1, #1360]	; 0x550
	ldr	r8, [r0, #4]
	ldr	r0, [r0, #8]
	mov	r6, r0, lsl #16
	mov	r7, r6, lsr #16
	bl	FUN_060001A4
	mov	r4, r0
	str	r8, [r5, #176]	; 0xb0
	strh	r7, [r5, #184]	; 0xb8
	add	r0, r8, r6, lsr #16
	str	r0, [r5, #180]	; 0xb4
	mov	r0, #0
	strh	r0, [r5, #174]	; 0xae
	str	r0, [r5, #168]	; 0xa8
	strh	r0, [r5, #172]	; 0xac
	str	r0, [r5, #24]
	mov	r0, #11
	strh	r0, [r5]
	bl	FUN_060001E8
	mov	r1, #17
	strh	r1, [r0]
	mov	r1, #0
	strh	r1, [r0, #2]
	mov	r1, #14
	strh	r1, [r0, #4]
	bl	FUN_060001F0
	mov	r0, #1
	str	r0, [r5, #16]
	mov	r0, r4
	bl	FUN_060001AC
	ldmia	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
_06005970:	.word	_0601A960

	arm_func_start FUN_06005974
FUN_06005974: ; 0x06005974
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #564	; 0x234
	mov	r5, r0
	ldr	r0, _06005A68	; =_0601A960
	ldr	r4, [r0, #1360]	; 0x550
	add	r0, r5, #4
	add	r1, r4, #162	; 0xa2
	mov	r2, #6
	bl	FUN_06000554
	ldr	r0, [r5, #12]
	str	r0, [r4, #168]	; 0xa8
	ldr	r0, [r5, #16]
	strh	r0, [r4, #172]	; 0xac
	mov	r0, #1
	str	r0, [r4, #24]
	mov	r0, #0
	add	r1, sp, #0
	mov	r2, #48	; 0x30
	bl	FUN_0600055C
	mov	r0, #0
	strh	r0, [sp]
	ldr	r0, [r5, #16]
	strh	r0, [sp, #6]
	add	r0, r4, #256	; 0x100
	ldrh	r0, [r0, #236]	; 0xec
	cmp	r0, #2
	moveq	r0, #20
	movne	r0, #10
	strb	r0, [sp, #14]
	add	r0, r5, #4
	add	r1, sp, #24
	mov	r2, #6
	bl	FUN_06000554
	add	r0, r4, #224	; 0xe0
	add	r1, sp, #30
	mov	r2, #6
	bl	FUN_06000554
	ldr	r0, [r5, #12]
	str	r0, [sp, #44]	; 0x2c
	add	r0, sp, #48	; 0x30
	add	r1, sp, #0
	bl	FUN_060029D0
	mov	r4, r0
	bl	FUN_060001E8
	mov	r1, #18
	strh	r1, [r0]
	ldrh	r1, [r4, #4]
	cmp	r1, #0
	moveq	r1, #0
	movne	r1, #1
	strh	r1, [r0, #2]
	ldrh	r1, [r4, #4]
	cmp	r1, #0
	movne	r1, #256	; 0x100
	strneh	r1, [r0, #4]
	ldrneh	r1, [r4, #4]
	strneh	r1, [r0, #6]
	bl	FUN_060001F0
	add	sp, sp, #564	; 0x234
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_06005A68:	.word	_0601A960

	arm_func_start FUN_06005A6C
FUN_06005A6C: ; 0x06005A6C
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	mov	r5, r0
	mov	r4, r1
	bl	FUN_060001E8
	mov	r1, #19
	strh	r1, [r0]
	mov	r1, #1
	strh	r1, [r0, #2]
	strh	r5, [r0, #4]
	strh	r4, [r0, #6]
	bl	FUN_060001F0
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr

	arm_func_start FUN_06005AA8
FUN_06005AA8: ; 0x06005AA8
	stmdb	sp!, {r4, lr}
	sub	sp, sp, #512	; 0x200
	ldr	r0, _06005B44	; =_0601A960
	ldr	r4, [r0, #1360]	; 0x550
	bl	FUN_060001A4
	ldrh	r1, [r4]
	cmp	r1, #11
	beq	_06005AE8
	bl	FUN_060001AC
	bl	FUN_060001E8
	mov	r1, #19
	strh	r1, [r0]
	mov	r1, #3
	strh	r1, [r0, #2]
	bl	FUN_060001F0
	b	_06005B38
_06005AE8:
	mov	r1, #0
	str	r1, [r4, #16]
	mov	r1, #8
	strh	r1, [r4]
	bl	FUN_060001AC
	add	r0, sp, #0
	mov	r1, #7
	bl	FUN_0600286C
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_06005B20
	mov	r0, #260	; 0x104
	bl	FUN_06005A6C
	b	_06005B38
_06005B20:
	bl	FUN_060001E8
	mov	r1, #19
	strh	r1, [r0]
	mov	r1, #0
	strh	r1, [r0, #2]
	bl	FUN_060001F0
_06005B38:
	add	sp, sp, #512	; 0x200
	ldmia	sp!, {r4, lr}
	bx	lr
_06005B44:	.word	_0601A960

	arm_func_start FUN_06005B48
FUN_06005B48: ; 0x06005B48
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	mov	r5, r0
	mov	r4, r1
	bl	FUN_060001E8
	mov	r1, #20
	strh	r1, [r0]
	mov	r1, #1
	strh	r1, [r0, #2]
	strh	r5, [r0, #4]
	strh	r4, [r0, #6]
	bl	FUN_060001F0
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr

	arm_func_start FUN_06005B84
FUN_06005B84: ; 0x06005B84
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #516	; 0x204
	mov	r5, r0
	ldr	r0, _06005C60	; =_0601A960
	ldr	r4, [r0, #1360]	; 0x550
	ldr	r1, [r5, #4]
	add	r0, r4, #256	; 0x100
	strh	r1, [r0, #150]	; 0x96
	ldrh	r0, [r0, #150]	; 0x96
	cmp	r0, #3
	addls	pc, pc, r0, lsl #2
	b	_06005BDC
	b	_06005BC4
	b	_06005BD0
	b	_06005BD0
	b	_06005BD0
_06005BC4:
	mov	r0, #0
	str	r0, [r4, #408]	; 0x198
	b	_06005BE4
_06005BD0:
	mov	r0, #1
	str	r0, [r4, #408]	; 0x198
	b	_06005BE4
_06005BDC:
	mov	r0, #0
	str	r0, [r4, #408]	; 0x198
_06005BE4:
	ldr	r0, [r4, #408]	; 0x198
	cmp	r0, #1
	bne	_06005C04
	ldr	r0, [r5, #8]
	add	r1, r4, #412	; 0x19c
	mov	r2, #80	; 0x50
	bl	FUN_06000554
	b	_06005C14
_06005C04:
	add	r0, r4, #412	; 0x19c
	mov	r1, #0
	mov	r2, #80	; 0x50
	bl	FUN_06000D08
_06005C14:
	ldr	r0, [r5, #12]
	strh	r0, [r4, #196]	; 0xc4
	add	r0, sp, #0
	ldrh	r1, [r4, #196]	; 0xc4
	bl	FUN_060027B0
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_06005C3C
	ldr	r0, _06005C64	; =0x00000207
	bl	FUN_06005B48
_06005C3C:
	bl	FUN_060001E8
	mov	r1, #39	; 0x27
	strh	r1, [r0]
	mov	r1, #0
	strh	r1, [r0, #2]
	bl	FUN_060001F0
	add	sp, sp, #516	; 0x204
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_06005C60:	.word	_0601A960
_06005C64:	.word	0x00000207

	arm_func_start FUN_06005C68
FUN_06005C68: ; 0x06005C68
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	ldr	r1, _06005D18	; =_0601A960
	ldr	r3, [r1, #1360]	; 0x550
	ldr	r2, [r0, #4]
	add	r1, r3, #256	; 0x100
	strh	r2, [r1, #150]	; 0x96
	ldrh	r1, [r1, #150]	; 0x96
	cmp	r1, #3
	addls	pc, pc, r1, lsl #2
	b	_06005CBC
	b	_06005CA4
	b	_06005CB0
	b	_06005CB0
	b	_06005CB0
_06005CA4:
	mov	r1, #0
	str	r1, [r3, #408]	; 0x198
	b	_06005CC4
_06005CB0:
	mov	r1, #1
	str	r1, [r3, #408]	; 0x198
	b	_06005CC4
_06005CBC:
	mov	r1, #0
	str	r1, [r3, #408]	; 0x198
_06005CC4:
	ldr	r1, [r3, #408]	; 0x198
	cmp	r1, #1
	bne	_06005CE4
	ldr	r0, [r0, #8]
	add	r1, r3, #412	; 0x19c
	mov	r2, #80	; 0x50
	bl	FUN_06000554
	b	_06005CF4
_06005CE4:
	add	r0, r3, #412	; 0x19c
	mov	r1, #0
	mov	r2, #80	; 0x50
	bl	FUN_06000D08
_06005CF4:
	bl	FUN_060001E8
	mov	r1, #20
	strh	r1, [r0]
	mov	r1, #0
	strh	r1, [r0, #2]
	bl	FUN_060001F0
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_06005D18:	.word	_0601A960

	arm_func_start FUN_06005D1C
FUN_06005D1C: ; 0x06005D1C
	stmdb	sp!, {r4, lr}
	sub	sp, sp, #640	; 0x280
	ldr	r1, _06005E08	; =_0601A960
	ldr	r4, [r1, #1360]	; 0x550
	ldr	r1, [r0, #4]
	str	r1, [r4, #232]	; 0xe8
	ldr	r1, [r0, #8]
	strh	r1, [r4, #236]	; 0xec
	ldr	r1, [r0, #12]
	str	r1, [r4, #240]	; 0xf0
	ldr	r1, [r0, #16]
	strh	r1, [r4, #244]	; 0xf4
	ldr	r0, [r0, #20]
	and	r1, r0, #255	; 0xff
	ands	r0, r1, #1
	movne	r0, #1
	moveq	r0, #0
	strh	r0, [r4, #246]	; 0xf6
	ands	r0, r1, #2
	movne	r0, #1
	moveq	r0, #0
	strh	r0, [r4, #250]	; 0xfa
	ands	r0, r1, #4
	movne	r0, #1
	moveq	r0, #0
	strh	r0, [r4, #252]	; 0xfc
	ands	r0, r1, #8
	movne	r0, #1
	moveq	r0, #0
	strh	r0, [r4, #254]	; 0xfe
	add	r0, sp, #512	; 0x200
	add	r1, r4, #232	; 0xe8
	bl	FUN_06000564
	add	r0, sp, #0
	ldrh	r1, [r4, #236]	; 0xec
	add	r1, r1, #16
	mov	r1, r1, lsl #16
	mov	r1, r1, lsr #16
	add	r2, sp, #512	; 0x200
	bl	FUN_060023F4
	mov	r4, r0
	bl	FUN_060001E8
	mov	r1, #24
	strh	r1, [r0]
	ldrh	r1, [r4, #4]
	cmp	r1, #0
	moveq	r1, #0
	movne	r1, #1
	strh	r1, [r0, #2]
	ldrh	r1, [r4, #4]
	cmp	r1, #0
	ldrne	r1, _06005E0C	; =0x00000245
	strneh	r1, [r0, #4]
	ldrneh	r1, [r4, #4]
	strneh	r1, [r0, #6]
	bl	FUN_060001F0
	add	sp, sp, #640	; 0x280
	ldmia	sp!, {r4, lr}
	bx	lr
_06005E08:	.word	_0601A960
_06005E0C:	.word	0x00000245

	arm_func_start FUN_06005E10
FUN_06005E10: ; 0x06005E10
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	mov	r5, r0
	mov	r4, r1
	bl	FUN_060001E8
	mov	r1, #25
	strh	r1, [r0]
	mov	r1, #1
	strh	r1, [r0, #2]
	strh	r5, [r0, #4]
	strh	r4, [r0, #6]
	bl	FUN_060001F0
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr

	arm_func_start FUN_06005E4C
FUN_06005E4C: ; 0x06005E4C
	stmfd	sp!, {lr}
	sub	sp, sp, #516	; 0x204
	mov	r1, r0
	add	r0, sp, #0
	ldr	r1, [r1, #4]
	mov	r1, r1, lsl #16
	mov	r1, r1, lsr #16
	bl	FUN_06002544
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_06005E84
	ldr	r0, _06005EA8	; =0x00000215
	bl	FUN_06005E10
	b	_06005E9C
_06005E84:
	bl	FUN_060001E8
	mov	r1, #25
	strh	r1, [r0]
	mov	r1, #0
	strh	r1, [r0, #2]
	bl	FUN_060001F0
_06005E9C:
	add	sp, sp, #516	; 0x204
	ldmfd	sp!, {lr}
	bx	lr
_06005EA8:	.word	0x00000215

	arm_func_start FUN_06005EAC
FUN_06005EAC: ; 0x06005EAC
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	bl	FUN_060001E8
	mov	r1, #26
	strh	r1, [r0]
	mov	r1, #4
	strh	r1, [r0, #2]
	bl	FUN_060001F0
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr

	arm_func_start FUN_06005ED8
FUN_06005ED8: ; 0x06005ED8
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	bl	FUN_060001E8
	mov	r1, #27
	strh	r1, [r0]
	mov	r1, #4
	strh	r1, [r0, #2]
	bl	FUN_060001F0
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr

	arm_func_start FUN_06005F04
FUN_06005F04: ; 0x06005F04
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	mov	r5, r0
	mov	r4, r1
	bl	FUN_060001E8
	mov	r1, #29
	strh	r1, [r0]
	mov	r1, #1
	strh	r1, [r0, #2]
	strh	r5, [r0, #4]
	strh	r4, [r0, #6]
	bl	FUN_060001F0
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr

	arm_func_start FUN_06005F40
FUN_06005F40: ; 0x06005F40
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #516	; 0x204
	mov	r3, r0
	ldr	r0, _06006050	; =_0601A960
	ldr	r4, [r0, #1360]	; 0x550
	ldr	r0, [r3, #16]
	mov	r0, r0, lsl #16
	mov	r5, r0, lsr #16
	add	r0, sp, #0
	ldr	r1, [r3, #4]
	mov	r1, r1, lsl #16
	mov	r1, r1, lsr #16
	ldr	r2, [r3, #8]
	mov	r2, r2, lsl #16
	mov	r2, r2, lsr #16
	ldr	r3, [r3, #12]
	mov	r3, r3, lsl #16
	mov	r3, r3, lsr #16
	bl	FUN_06002604
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_06005FA4
	ldr	r0, _06006054	; =0x00000211
	bl	FUN_06005F04
	b	_06006044
_06005FA4:
	ldr	r0, _06006058	; =0x0000FFFF
	cmp	r5, r0
	beq	_06005FF8
	cmp	r5, #0
	moveq	r1, #1
	moveq	r0, #0
	beq	_06005FEC
	mov	r0, #100	; 0x64
	mul	r3, r5, r0
	mov	r2, r3, asr #31
	mov	r1, #0
	ldr	r0, _0600605C	; =0x000082EA
	umull	ip, r5, r3, r0
	mla	r5, r3, r1, r5
	mla	r5, r2, r0, r5
	mov	r0, r5, lsr #6
	mov	r1, ip, lsr #6
	orr	r1, r1, r5, lsl #26
_06005FEC:
	str	r1, [r4, #1976]	; 0x7b8
	str	r0, [r4, #1980]	; 0x7bc
	b	_06006004
_06005FF8:
	mov	r0, #0
	str	r0, [r4, #1976]	; 0x7b8
	str	r0, [r4, #1980]	; 0x7bc
_06006004:
	bl	FUN_06000E98
	mov	r2, #0
	orr	r1, r1, #0
	orr	r3, r0, #1
_06006014:
	add	r0, r4, r2, lsl #3
	str	r3, [r0, #1848]	; 0x738
	str	r1, [r0, #1852]	; 0x73c
	add	r2, r2, #1
	cmp	r2, #16
	blt	_06006014
	bl	FUN_060001E8
	mov	r1, #29
	strh	r1, [r0]
	mov	r1, #0
	strh	r1, [r0, #2]
	bl	FUN_060001F0
_06006044:
	add	sp, sp, #516	; 0x204
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_06006050:	.word	_0601A960
_06006054:	.word	0x00000211
_06006058:	.word	0x0000FFFF
_0600605C:	.word	0x000082EA

	arm_func_start FUN_06006060
FUN_06006060: ; 0x06006060
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	mov	r5, r0
	mov	r4, r1
	bl	FUN_060001E8
	mov	r1, #30
	strh	r1, [r0]
	mov	r1, #1
	strh	r1, [r0, #2]
	strh	r5, [r0, #4]
	strh	r4, [r0, #6]
	bl	FUN_060001F0
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr

	arm_func_start FUN_0600609C
FUN_0600609C: ; 0x0600609C
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub	sp, sp, #532	; 0x214
	mov	r8, r0
	ldr	r0, _06006244	; =_0601A960
	ldr	r4, [r0, #1360]	; 0x550
	add	r7, sp, #20
	ldrh	r0, [r4]
	cmp	r0, #2
	beq	_060060DC
	bl	FUN_060001E8
	mov	r1, #30
	strh	r1, [r0]
	mov	r1, #3
	strh	r1, [r0, #2]
	bl	FUN_060001F0
	b	_06006238
_060060DC:
	mov	r0, r7
	bl	FUN_060022F8
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_060060FC
	mov	r0, #776	; 0x308
	bl	FUN_06006060
	b	_06006238
_060060FC:
	ldrh	r1, [r0, #6]
	mov	r0, #2
	strh	r0, [r4, #230]	; 0xe6
	cmp	r1, #16
	bne	_06006180
	mov	r0, #10
	mov	r1, r7
	bl	FUN_06000408
	cmp	r0, #0
	beq	_06006238
	mov	r0, r7
	bl	FUN_06002368
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_06006144
	ldr	r0, _06006248	; =0x00000303
	bl	FUN_06006060
	b	_06006238
_06006144:
	mov	r0, #3
	strh	r0, [r4]
	mov	r0, r7
	mov	r1, #1
	mov	r2, #0
	mov	r3, r1
	bl	FUN_06002EB0
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_06006178
	mov	r0, #1
	bl	FUN_06006060
	b	_06006238
_06006178:
	mov	r0, #1
	strh	r0, [r4, #198]	; 0xc6
_06006180:
	ldrh	r6, [r8, #2]
	ldrh	r5, [r8, #4]
	ldrh	r9, [r8, #6]
	ldrh	r8, [r8, #8]
	add	r0, sp, #4
	mov	r1, #0
	mov	r2, #16
	bl	FUN_06000D08
	strb	r9, [sp, #4]
	add	r0, sp, #4
	str	r0, [sp]
	mov	r0, r7
	mov	r1, r6
	mov	r2, r5
	mov	r3, r8
	bl	FUN_06002A88
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_060061D8
	mov	r0, #10
	bl	FUN_06006060
	b	_06006238
_060061D8:
	ldrh	r1, [r0, #8]
	and	r0, r1, #255	; 0xff
	mov	r0, r0, lsl #16
	mov	r5, r0, lsr #16
	mov	r0, r1, lsl #8
	mov	r6, r0, lsr #16
	mov	r0, r7
	bl	FUN_06002380
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_06006210
	ldr	r0, _0600624C	; =0x00000302
	bl	FUN_06006060
	b	_06006238
_06006210:
	mov	r0, #2
	strh	r0, [r4]
	bl	FUN_060001E8
	mov	r1, #30
	strh	r1, [r0]
	mov	r1, #0
	strh	r1, [r0, #2]
	strh	r5, [r0, #8]
	strh	r6, [r0, #10]
	bl	FUN_060001F0
_06006238:
	add	sp, sp, #532	; 0x214
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, lr}
	bx	lr
_06006244:	.word	_0601A960
_06006248:	.word	0x00000303
_0600624C:	.word	0x00000302

	arm_func_start FUN_06006250
FUN_06006250: ; 0x06006250
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	mov	r5, r0
	mov	r4, r1
	bl	FUN_060001E8
	mov	r1, #31
	strh	r1, [r0]
	mov	r1, #1
	strh	r1, [r0, #2]
	strh	r5, [r0, #4]
	strh	r4, [r0, #6]
	bl	FUN_060001F0
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr

	arm_func_start FUN_0600628C
FUN_0600628C: ; 0x0600628C
	stmfd	sp!, {lr}
	sub	sp, sp, #516	; 0x204
	add	r0, sp, #0
	bl	FUN_0600233C
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_060062B4
	ldr	r0, _060062D8	; =0x00000305
	bl	FUN_06006250
	b	_060062CC
_060062B4:
	bl	FUN_060001E8
	mov	r1, #31
	strh	r1, [r0]
	mov	r1, #0
	strh	r1, [r0, #2]
	bl	FUN_060001F0
_060062CC:
	add	sp, sp, #516	; 0x204
	ldmfd	sp!, {lr}
	bx	lr
_060062D8:	.word	0x00000305

	arm_func_start FUN_060062DC
FUN_060062DC: ; 0x060062DC
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	mov	r5, r0
	mov	r4, r1
	bl	FUN_060001E8
	mov	r1, #32
	strh	r1, [r0]
	mov	r1, #1
	strh	r1, [r0, #2]
	strh	r5, [r0, #4]
	strh	r4, [r0, #6]
	bl	FUN_060001F0
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr

	arm_func_start FUN_06006318
FUN_06006318: ; 0x06006318
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #516	; 0x204
	add	r0, sp, #0
	bl	FUN_0600230C
	mov	r5, r0
	ldrh	r1, [r5, #4]
	cmp	r1, #0
	beq	_06006344
	ldr	r0, _06006380	; =0x00000307
	bl	FUN_060062DC
	b	_06006374
_06006344:
	bl	FUN_060001E8
	mov	r4, r0
	mov	r0, #32
	strh	r0, [r4]
	mov	r0, #0
	strh	r0, [r4, #2]
	add	r0, r5, #8
	add	r1, r4, #8
	mov	r2, #180	; 0xb4
	bl	FUN_06000EA0
	mov	r0, r4
	bl	FUN_060001F0
_06006374:
	add	sp, sp, #516	; 0x204
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_06006380:	.word	0x00000307

	arm_func_start FUN_06006384
FUN_06006384: ; 0x06006384
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	ldr	r5, _06006434	; =_06019960
	ldr	r0, _06006438	; =_0601A960
	ldr	r4, [r0, #1360]	; 0x550
	bl	FUN_060001A4
	ldrh	r1, [r4, #206]	; 0xce
	cmp	r1, #1
	bne	_060063B0
	bl	FUN_060001AC
	b	_06006428
_060063B0:
	mov	r1, #1
	strh	r1, [r4, #206]	; 0xce
	bl	FUN_060001AC
	bl	FUN_06000134
	movs	r1, r0
	moveq	r0, #0
	beq	_060063E0
	mov	r0, #28
	str	r0, [r1]
	add	r0, r5, #136	; 0x88
	mov	r2, #0
	bl	FUN_060006F8
_060063E0:
	cmp	r0, #0
	bne	_06006428
	mov	r0, #0
	strh	r0, [r4, #206]	; 0xce
	add	r0, r5, #4096	; 0x1000
	ldr	r0, [r0, #1356]	; 0x54c
	cmp	r0, #0
	beq	_06006428
	bl	FUN_060001E8
	mov	r1, #128	; 0x80
	strh	r1, [r0]
	mov	r1, #8
	strh	r1, [r0, #2]
	mov	r1, #22
	strh	r1, [r0, #4]
	mov	r1, #28
	strh	r1, [r0, #6]
	bl	FUN_060001F0
_06006428:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_06006434:	.word	_06019960
_06006438:	.word	_0601A960

	arm_func_start FUN_0600643C
FUN_0600643C: ; 0x0600643C
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	ldr	r0, _06006478	; =_0601A960
	ldr	r0, [r0, #1360]	; 0x550
	ldr	r0, [r0, #12]
	cmp	r0, #1
	bne	_0600646C
	mov	r0, #209	; 0xd1
	ldr	r1, _0600647C	; =FUN_06006480
	mov	r2, #3
	bl	FUN_060068A0
	bl	FUN_06006384
_0600646C:
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_06006478:	.word	_0601A960
_0600647C:	.word	FUN_06006480

	arm_func_start FUN_06006480
FUN_06006480: ; 0x06006480
	stmdb	sp!, {r4, lr}

	arm_func_start FUN_06006484
FUN_06006484: ; 0x06006484
	ldr	r0, _060064E0	; =_0601A960
	ldr	r4, [r0, #1360]	; 0x550
	ldrh	r0, [r4, #220]	; 0xdc
	cmp	r0, #60	; 0x3c
	bcc	_060064BC
	ldr	r1, _060064E4	; =0x04000006
	ldrh	r0, [r1]
	cmp	r0, #209	; 0xd1
	blt	_060064C4
	cmp	r0, #212	; 0xd4
	strlth	r0, [r1]
	movlt	r0, #0
	strlth	r0, [r4, #220]	; 0xdc
	b	_060064C4
_060064BC:
	add	r0, r0, #1
	strh	r0, [r4, #220]	; 0xdc
_060064C4:
	bl	FUN_06006848
	ldrsh	r0, [r4, #64]	; 0x40
	ldr	r1, _060064E8	; =FUN_0600643C
	mov	r2, #5
	bl	FUN_060068A0
	ldmia	sp!, {r4, lr}
	bx	lr
_060064E0:	.word	_0601A960
_060064E4:	.word	0x04000006
_060064E8:	.word	FUN_0600643C

	arm_func_start FUN_060064EC
FUN_060064EC: ; 0x060064EC
	stmdb	sp!, {r4, lr}
	ldr	r0, _060065E4	; =_0601A960
	ldr	r4, [r0, #1360]	; 0x550
	ldr	r0, [r4, #12]
	cmp	r0, #1
	bne	_060065DC
	mov	r0, #200	; 0xc8
	ldr	r1, _060065E8	; =FUN_06006634
	mov	r2, #1
	bl	FUN_060068A0
	ldr	r2, [r4, #1976]	; 0x7b8
	ldr	r1, [r4, #1980]	; 0x7bc
	mov	r0, #0
	cmp	r1, r0
	cmpeq	r2, r0
	beq	_060065D8
	bl	FUN_06000E98
	mov	r2, #0
	orr	r3, r1, #0
	orr	ip, r0, #1
	ldr	r1, [r4, #1848]	; 0x738
	ldr	r0, [r4, #1852]	; 0x73c
	cmp	r0, r2
	cmpeq	r1, r2
	beq	_060065D8
	subs	ip, ip, r1
	sbc	r3, r3, r0
	ldr	r1, [r4, #1976]	; 0x7b8
	ldr	r0, [r4, #1980]	; 0x7bc
	cmp	r3, r0
	cmpeq	ip, r1
	bls	_060065D8
	str	r2, [r4, #1848]	; 0x738
	str	r2, [r4, #1852]	; 0x73c
	bl	FUN_06000134
	movs	r1, r0
	moveq	r0, #0
	beq	_060065A4
	mov	r0, #37	; 0x25
	str	r0, [r1]
	mov	r2, #0
	str	r2, [r1, #4]
	ldr	r0, _060065EC	; =0x00008001
	str	r0, [r1, #8]
	ldr	r0, _060065F0	; =_060199E8
	bl	FUN_060006F8
_060065A4:
	cmp	r0, #0
	bne	_060065DC
	bl	FUN_060001E8
	mov	r1, #128	; 0x80
	strh	r1, [r0]
	mov	r1, #8
	strh	r1, [r0, #2]
	mov	r1, #22
	strh	r1, [r0, #4]
	mov	r1, #37	; 0x25
	strh	r1, [r0, #6]
	bl	FUN_060001F0
	b	_060065DC
_060065D8:
	bl	FUN_06006384
_060065DC:
	ldmia	sp!, {r4, lr}
	bx	lr
_060065E4:	.word	_0601A960
_060065E8:	.word	FUN_06006634
_060065EC:	.word	0x00008001
_060065F0:	.word	_060199E8

	arm_func_start FUN_060065F4
FUN_060065F4: ; 0x060065F4
	stmdb	sp!, {r4, lr}
	ldr	r0, _0600662C	; =_0601A960
	ldr	r4, [r0, #1360]	; 0x550
	bl	FUN_060066B4
	ldr	r0, [r4, #216]	; 0xd8
	cmp	r0, #127	; 0x7f
	movcs	r0, #0
	strcs	r0, [r4, #28]
	ldrsh	r0, [r4, #66]	; 0x42
	ldr	r1, _06006630	; =FUN_060064EC
	mov	r2, #4
	bl	FUN_060068A0
	ldmia	sp!, {r4, lr}
	bx	lr
_0600662C:	.word	_0601A960
_06006630:	.word	FUN_060064EC

	arm_func_start FUN_06006634
FUN_06006634: ; 0x06006634
	stmdb	sp!, {r4, lr}

	arm_func_start FUN_06006638
FUN_06006638: ; 0x06006638
	ldr	r0, _060066A4	; =_0601A960
	ldr	r4, [r0, #1360]	; 0x550
	ldr	r0, _060066A8	; =0x0380FFF0
	ldrh	r0, [r0]
	str	r0, [r4, #208]	; 0xd0
	ldr	r1, [r4, #208]	; 0xd0
	ldr	r0, [r4, #212]	; 0xd4
	cmp	r0, r1
	beq	_06006664
	str	r1, [r4, #212]	; 0xd4
	bl	FUN_06006748
_06006664:
	ldr	r0, [r4, #216]	; 0xd8
	cmp	r0, #127	; 0x7f
	bls	_06006684
	mov	r0, #208	; 0xd0
	ldr	r1, _060066AC	; =FUN_060065F4
	mov	r2, #2
	bl	FUN_060068A0
	b	_0600669C
_06006684:
	mov	r0, #1
	str	r0, [r4, #28]
	ldrsh	r0, [r4, #66]	; 0x42
	ldr	r1, _060066B0	; =FUN_060064EC
	mov	r2, #4
	bl	FUN_060068A0
_0600669C:
	ldmia	sp!, {r4, lr}
	bx	lr
_060066A4:	.word	_0601A960
_060066A8:	.word	0x0380FFF0
_060066AC:	.word	FUN_060065F4
_060066B0:	.word	FUN_060064EC

	arm_func_start FUN_060066B4
FUN_060066B4: ; 0x060066B4
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	ldr	r0, _06006740	; =_0601A960
	ldr	ip, [r0, #1360]	; 0x550
	ldr	r0, _06006744	; =0x04000006
	ldrh	r3, [r0]
	cmp	r3, #208	; 0xd0
	blt	_06006734
	cmp	r3, #212	; 0xd4
	bge	_06006734
	ldr	r2, [ip, #216]	; 0xd8
	cmp	r2, #127	; 0x7f
	bcc	_06006734
	mov	lr, #1
	mov	r0, #63	; 0x3f
	b	_06006708
_060066F4:
	mul	r1, lr, r0
	add	r1, r1, #127	; 0x7f
	cmp	r2, r1
	bcc	_06006710
	add	lr, lr, #1
_06006708:
	cmp	lr, #7
	blt	_060066F4
_06006710:
	rsb	r0, lr, #1
	add	r1, r3, r0
	ldr	r0, _06006744	; =0x04000006
	strh	r1, [r0]
	ldr	r1, [ip, #216]	; 0xd8
	mov	r0, #63	; 0x3f
	mul	r0, lr, r0
	sub	r0, r1, r0
	str	r0, [ip, #216]	; 0xd8
_06006734:
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_06006740:	.word	_0601A960
_06006744:	.word	0x04000006

	arm_func_start FUN_06006748
FUN_06006748: ; 0x06006748
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	ldr	r0, _06006828	; =_0601A960
	ldr	r0, [r0, #1360]	; 0x550
	ldr	r1, [r0, #208]	; 0xd0
	mov	r1, r1, lsl #6
	str	r1, [r0, #208]	; 0xd0
	ldr	r3, _0600682C	; =0x048080F8
	ldrh	r2, [r3]
	ldr	r1, _06006830	; =0x048080FA
	ldrh	ip, [r1]
	ldrh	r3, [r3]
	cmp	r2, r3
	ldrhih	ip, [r1]
	orr	ip, r3, ip, lsl #16
	ldr	r1, _06006834	; =0x04000006
	ldrh	r3, [r1]
	ldr	r2, _06006838	; =0x003FFFC0
	and	ip, ip, r2
	ldr	r1, _0600683C	; =0x00000107
	sub	r3, r1, r3
	mov	r1, #127	; 0x7f
	mul	r1, r3, r1
	add	r1, r1, ip, lsl #1
	and	ip, r2, r1, lsr #1
	ldr	r1, [r0, #208]	; 0xd0
	cmp	r1, ip
	movhi	r1, #0
	strhi	r1, [r0, #216]	; 0xd8
	bhi	_0600681C
	mov	lr, #1
	add	r3, r0, #208	; 0xd0
	ldr	r1, _06006840	; =0x0000414B
	b	_0600680C
_060067D0:
	ldr	r2, [r3]
	add	r2, r2, r1
	str	r2, [r3]
	ldr	r2, [r0, #208]	; 0xd0
	cmp	r2, ip
	bls	_06006808
	sub	r1, r2, ip
	str	r1, [r0, #216]	; 0xd8
	ldr	r2, [r0, #216]	; 0xd8
	ldr	r1, _06006844	; =0x0000400E
	cmp	r2, r1
	movhi	r1, #0
	strhi	r1, [r0, #216]	; 0xd8
	b	_0600681C
_06006808:
	add	lr, lr, #1
_0600680C:
	cmp	lr, #30
	blt	_060067D0
	mov	r1, #0
	str	r1, [r0, #216]	; 0xd8
_0600681C:
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_06006828:	.word	_0601A960
_0600682C:	.word	0x048080F8
_06006830:	.word	0x048080FA
_06006834:	.word	0x04000006
_06006838:	.word	0x003FFFC0
_0600683C:	.word	0x00000107
_06006840:	.word	0x0000414B
_06006844:	.word	0x0000400E

	arm_func_start FUN_06006848
FUN_06006848: ; 0x06006848
	ldr	r0, _06006890	; =0x04000006
	ldrh	ip, [r0]
	ldr	r2, _06006894	; =0x048080F8
	ldrh	r1, [r2]
	ldr	r0, _06006898	; =0x048080FA
	ldrh	r3, [r0]
	ldrh	r2, [r2]
	cmp	r1, r2
	ldrhih	r3, [r0]
	orr	r0, r2, r3, lsl #16
	mov	r1, r0, lsl #1
	mov	r0, #127	; 0x7f
	mul	r0, ip, r0
	sub	r0, r1, r0
	mov	r1, r0, lsr #7
	ldr	r0, _0600689C	; =0x0380FFF0
	strh	r1, [r0]
	bx	lr
_06006890:	.word	0x04000006
_06006894:	.word	0x048080F8
_06006898:	.word	0x048080FA
_0600689C:	.word	0x0380FFF0

	arm_func_start FUN_060068A0
FUN_060068A0: ; 0x060068A0
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	mov	ip, r0
	mov	r3, r1
	str	r2, [sp]
	ldr	r0, _060068D0	; =_0380B904
	mov	r1, ip
	ldr	r2, _060068D4	; =0x00000107
	bl	FUN_060068D8
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_060068D0:	.word	_0380B904
_060068D4:	.word	0x00000107

	arm_func_start FUN_060068D8
FUN_060068D8: ; 0x060068D8
	ldr	pc, _060068DC	; =FUN_037FAE20
_060068DC:	.word	FUN_037FAE20

	arm_func_start FUN_060068E0
FUN_060068E0: ; 0x060068E0
	stmdb	sp!, {r4, lr}
	ldr	r0, _06006960	; =_0601A960
	ldr	r4, [r0, #1360]	; 0x550
	ldr	r0, _06006964	; =_0380B904
	ldrh	r1, [r4, #230]	; 0xe6
	cmp	r1, #1
	bne	_06006920
	ldr	r1, [r0]
	cmp	r1, #0
	beq	_0600690C
	bl	FUN_06006970
_0600690C:
	mov	r0, #209	; 0xd1
	ldr	r1, _06006968	; =FUN_06006480
	mov	r2, #3
	bl	FUN_060068A0
	b	_06006958
_06006920:
	cmp	r1, #2
	bne	_06006958
	mov	r1, #0
	str	r1, [r4, #28]
	ldr	r1, [r0]
	cmp	r1, #0
	beq	_06006940
	bl	FUN_06006970
_06006940:
	mov	r0, #200	; 0xc8
	ldr	r1, _0600696C	; =FUN_06006634
	mov	r2, #1
	bl	FUN_060068A0
	mov	r0, #0
	str	r0, [r4, #216]	; 0xd8
_06006958:
	ldmia	sp!, {r4, lr}
	bx	lr
_06006960:	.word	_0601A960
_06006964:	.word	_0380B904
_06006968:	.word	FUN_06006480
_0600696C:	.word	FUN_06006634

	arm_func_start FUN_06006970
FUN_06006970: ; 0x06006970
	ldr	pc, _06006974	; =FUN_037FACAC
_06006974:	.word	FUN_037FACAC

	arm_func_start FUN_06006978
FUN_06006978: ; 0x06006978
	ldr	r0, _06006984	; =_0380B904
	ldr	ip, _06006988	; =FUN_037FACAC
	bx	ip
_06006984:	.word	_0380B904
_06006988:	.word	FUN_037FACAC

	arm_func_start FUN_0600698C
FUN_0600698C: ; 0x0600698C
	ldr	r0, _06006998	; =_0380B904
	ldr	ip, _0600699C	; =FUN_037FAEB8
	bx	ip
_06006998:	.word	_0380B904
_0600699C:	.word	FUN_037FAEB8

	arm_func_start FUN_060069A0
FUN_060069A0: ; 0x060069A0
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	ldr	r1, _060069D8	; =_0601A960
	ldr	r1, [r1, #1360]	; 0x550
	ldrh	r1, [r1]
	cmp	r1, #9
	bne	_060069CC
	ldr	r0, [r0, #4]
	mov	r0, r0, lsl #16
	mov	r0, r0, lsr #16
	bl	FUN_06007B44
_060069CC:
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_060069D8:	.word	_0601A960

	arm_func_start FUN_060069DC
FUN_060069DC: ; 0x060069DC
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	ldr	r0, _06006A08	; =_0601A960
	ldr	r0, [r0, #1360]	; 0x550
	ldrh	r0, [r0]
	cmp	r0, #10
	bne	_060069FC
	bl	FUN_06007E50
_060069FC:
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_06006A08:	.word	_0601A960

	arm_func_start FUN_06006A0C
FUN_06006A0C: ; 0x06006A0C
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	ldr	r1, _06006A44	; =_0601A960
	ldr	r1, [r1, #1360]	; 0x550
	ldrh	r1, [r1]
	cmp	r1, #9
	bne	_06006A38
	ldr	r0, [r0, #4]
	mov	r0, r0, lsl #16
	mov	r0, r0, lsr #16
	bl	FUN_06007C50
_06006A38:
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_06006A44:	.word	_0601A960

	arm_func_start FUN_06006A48
FUN_06006A48: ; 0x06006A48
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	ldr	r0, _06006BE8	; =_0601A960
	ldr	r4, [r0, #1360]	; 0x550
	mov	r0, #0
	strh	r0, [r4, #206]	; 0xce
	mov	r0, #1
	strh	r0, [r4, #136]	; 0x88
	ldrh	r0, [r4, #192]	; 0xc0
	sub	r0, r0, #1
	strh	r0, [r4, #192]	; 0xc0
	ldrh	r0, [r4, #192]	; 0xc0
	cmp	r0, #0
	bne	_06006AB8
	ldrh	r1, [r4, #190]	; 0xbe
	ldr	r0, _06006BEC	; =0x0000FFFF
	cmp	r1, r0
	moveq	r0, #4
	streqh	r0, [r4, #190]	; 0xbe
	ldrh	r0, [r4, #190]	; 0xbe
	and	r0, r0, #255	; 0xff
	bl	FUN_060003C4
	bl	FUN_06000350
	strh	r0, [r4, #188]	; 0xbc
	ldr	r0, _06006BEC	; =0x0000FFFF
	strh	r0, [r4, #190]	; 0xbe
	mov	r0, #1
	strh	r0, [r4, #192]	; 0xc0
_06006AB8:
	ldrh	r0, [r4]
	cmp	r0, #9
	bne	_06006BA8
	bl	FUN_060001A4
	add	r1, r4, #256	; 0x100
	ldrh	r1, [r1, #130]	; 0x82
	cmp	r1, #0
	bne	_06006AE8
	mov	r1, #0
	strh	r1, [r4, #98]	; 0x62
	bl	FUN_060001AC
	b	_06006BDC
_06006AE8:
	mov	r3, #1
	ldrsh	r2, [r4, #98]	; 0x62
	cmp	r2, #0
	ble	_06006B04
	ldrsh	r1, [r4, #100]	; 0x64
	cmp	r1, #0
	movgt	r3, #0
_06006B04:
	cmp	r2, #0
	movlt	r1, #0
	strlth	r1, [r4, #98]	; 0x62
	ldrsh	r2, [r4, #98]	; 0x62
	ldrsh	r1, [r4, #90]	; 0x5a
	add	r1, r2, r1
	strh	r1, [r4, #98]	; 0x62
	ldrsh	r1, [r4, #98]	; 0x62
	cmp	r1, #256	; 0x100
	movgt	r1, #256	; 0x100
	strgth	r1, [r4, #98]	; 0x62
	ldrh	r1, [r4, #92]	; 0x5c
	strh	r1, [r4, #100]	; 0x64
	cmp	r3, #0
	beq	_06006B5C
	ldrsh	r1, [r4, #98]	; 0x62
	cmp	r1, #0
	ble	_06006B5C
	ldrsh	r1, [r4, #100]	; 0x64
	cmp	r1, #0
	movgt	r5, #1
	bgt	_06006B60
_06006B5C:
	mov	r5, #0
_06006B60:
	bl	FUN_060001AC
	cmp	r5, #0
	beq	_06006B74
	ldr	r0, _06006BEC	; =0x0000FFFF
	bl	FUN_06007C50
_06006B74:
	ldrh	r0, [r4, #146]	; 0x92
	cmp	r0, #1
	bne	_06006BDC
	ldrh	r0, [r4, #160]	; 0xa0
	sub	r0, r0, #1
	strh	r0, [r4, #160]	; 0xa0
	ldrh	r0, [r4, #160]	; 0xa0
	cmp	r0, #0
	moveq	r0, #1
	streqh	r0, [r4, #158]	; 0x9e
	moveq	r0, #60	; 0x3c
	streqh	r0, [r4, #160]	; 0xa0
	b	_06006BDC
_06006BA8:
	cmp	r0, #10
	bne	_06006BDC
	mov	r5, #0
	bl	FUN_060001A4
	ldr	r1, [r4, #1844]	; 0x734
	cmp	r1, #1
	movne	r5, #1
	movne	r1, #0
	strneh	r1, [r4, #96]	; 0x60
	bl	FUN_060001AC
	cmp	r5, #1
	bne	_06006BDC
	bl	FUN_06007E50
_06006BDC:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_06006BE8:	.word	_0601A960
_06006BEC:	.word	0x0000FFFF

	arm_func_start FUN_06006BF0
FUN_06006BF0: ; 0x06006BF0
	stmdb	sp!, {r4, r5, r6, lr}
	mov	r6, r0
	mov	r5, r1
	mov	r4, r3
	ands	r0, r5, #32768	; 0x8000
	ldrne	r0, _06006C94	; =0x00007FFF
	andne	r5, r5, r0
	addeq	r0, r5, #28
	moveq	r0, r0, lsl #2
	addeq	r5, r0, #102	; 0x66
	mov	r0, r2
	bl	FUN_06006CA4
	add	r1, r6, #34	; 0x22
	mov	r1, r1, lsl #2
	add	r1, r1, #96	; 0x60
	mul	r0, r5, r0
	add	r0, r0, #904	; 0x388
	add	r3, r1, r0
	ldr	r0, _06006C98	; =0x04000006
	ldrh	r1, [r0]
	sub	r0, r4, #2
	subs	r4, r0, r1
	bpl	_06006C58
	ldr	r0, _06006C9C	; =0x00000107
_06006C50:
	adds	r4, r4, r0
	bmi	_06006C50
_06006C58:
	mov	r0, #127	; 0x7f
	mul	r2, r4, r0
	ldr	r1, _06006CA0	; =0x66666667
	smull	r0, r4, r1, r2
	mov	r4, r4, asr #3
	mov	r0, r2, lsr #31
	add	r4, r0, r4
	mov	r0, #10
	mul	r0, r4, r0
	cmp	r0, r3
	movcc	r4, #0
	mov	r0, r4, lsl #16
	mov	r0, r0, lsr #16
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr
_06006C94:	.word	0x00007FFF
_06006C98:	.word	0x04000006
_06006C9C:	.word	0x00000107
_06006CA0:	.word	0x66666667

	arm_func_start FUN_06006CA4
FUN_06006CA4: ; 0x06006CA4
	ldr	pc, _06006CA8	; =FUN_03806B34
_06006CA8:	.word	FUN_03806B34

	arm_func_start FUN_06006CAC
FUN_06006CAC: ; 0x06006CAC
	stmdb	sp!, {r0, r1, r2, r3}

	arm_func_start FUN_06006CB0
FUN_06006CB0: ; 0x06006CB0
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #44	; 0x2c
	str	r0, [sp]
	mov	sl, r2
	movs	r9, r3
	ldr	r0, [sp, #96]	; 0x60
	str	r0, [sp, #96]	; 0x60
	ldr	r0, _06006F40	; =_0601A960
	ldr	r8, [r0, #1360]	; 0x550
	addeq	sp, sp, #44	; 0x2c
	ldmeqia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	addeq	sp, sp, #16
	bxeq	lr
	ldrh	r0, [r8, #62]	; 0x3e
	cmp	r9, r0
	addhi	sp, sp, #44	; 0x2c
	ldmhiia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	addhi	sp, sp, #16
	bxhi	lr
	add	r0, r8, #256	; 0x100
	ldrh	r1, [r0, #136]	; 0x88
	ldr	r0, [sp]
	cmp	r0, r1
	addeq	sp, sp, #44	; 0x2c
	ldmeqia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	addeq	sp, sp, #16
	bxeq	lr
	cmp	r0, #16
	addcs	sp, sp, #44	; 0x2c
	ldmcsia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	addcs	sp, sp, #16
	bxcs	lr
	ands	r0, r9, #1
	addne	sp, sp, #44	; 0x2c
	ldmneia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	addne	sp, sp, #16
	bxne	lr
	mov	r0, #1
	str	r0, [sp, #4]
	cmp	r9, #0
	addle	sp, sp, #44	; 0x2c
	ldmleia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	addle	sp, sp, #16
	bxle	lr
	add	r1, r8, #504	; 0x1f8
	ldr	r0, [sp]
	add	fp, r1, r0, lsl #4
	mov	r4, #0
	mov	r0, #512	; 0x200
	str	r0, [sp, #12]
	ldr	r0, [sp, #4]
	str	r0, [sp, #16]
	str	r0, [sp, #20]
	mov	r0, #2
	str	r0, [sp, #24]
	mov	r0, #130	; 0x82
	str	r0, [sp, #32]
	mov	r0, #21
	str	r0, [sp, #36]	; 0x24
	ldr	r0, [sp, #4]
	str	r0, [sp, #28]
_06006DA4:
	ldr	r5, _06006F44	; =0x0000FFFF
	ldr	r0, [sp, #4]
	cmp	r0, #1
	streq	r4, [sp, #4]
	addeq	r0, sp, #84	; 0x54
	movne	r0, sl
	addne	sl, sl, #2
	subne	r9, r9, #2
	ldrh	r1, [r0]
	and	r0, r1, #255	; 0xff
	movs	r7, r0, lsl #1
	ldreq	r7, [sp, #12]
	ands	r0, r1, #4096	; 0x1000
	ldrne	r2, [sp, #16]
	moveq	r2, r4
	ands	r0, r1, #2048	; 0x800
	ldrne	r3, [sp, #20]
	moveq	r3, r4
	cmp	r2, #0
	ldrne	r6, [sp, #24]
	moveq	r6, r4
	cmp	r3, #0
	ldrne	r0, [sp, #24]
	moveq	r0, r4
	add	r0, r7, r0
	add	r0, r0, r6
	subs	r9, r9, r0
	addmi	sp, sp, #44	; 0x2c
	ldmmiia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	addmi	sp, sp, #16
	bxmi	lr
	and	r1, r1, #3840	; 0xf00
	mov	r1, r1, lsl #8
	mov	r6, r1, lsr #16
	str	sl, [sp, #8]
	add	r1, sl, r7
	add	sl, sl, r0
	cmp	r3, #1
	bne	_06006E80
	and	r0, r6, #7
	mov	r3, r0, lsl #1
	add	r0, fp, r0, lsl #1
	ldrh	ip, [fp, r3]
	ldrh	r5, [r1], #2
	ands	r3, ip, #1
	movne	r3, r5, lsl #1
	strneh	r3, [r0]
	bne	_06006E80
	mov	r5, r5, lsl #1
	sub	r3, ip, r5
	mov	r3, r3, lsl #16
	mov	r3, r3, lsr #16
	cmp	r3, #256	; 0x100
	bcc	_06006F28
	strh	r5, [r0]
_06006E80:
	cmp	r2, #1
	bne	_06006EA4
	ldrh	r2, [r1]
	add	r0, r8, #256	; 0x100
	ldrh	r1, [r0, #136]	; 0x88
	ldr	r0, [sp, #28]
	mov	r0, r0, lsl r1
	ands	r0, r2, r0
	beq	_06006F28
_06006EA4:
	cmp	r7, #0
	ble	_06006F28
	bl	FUN_060001E8
	ldr	r1, [sp, #32]
	strh	r1, [r0]
	strh	r4, [r0, #2]
	ldr	r1, [sp, #36]	; 0x24
	strh	r1, [r0, #4]
	strh	r6, [r0, #6]
	ldr	r1, [sp, #96]	; 0x60
	str	r1, [r0, #8]
	ldr	r1, [sp, #8]
	str	r1, [r0, #12]
	strh	r7, [r0, #16]
	ldr	r1, [sp]
	strh	r1, [r0, #18]
	add	r1, r8, #256	; 0x100
	ldrh	r2, [r1, #136]	; 0x88
	strh	r2, [r0, #32]
	strh	r5, [r0, #26]
	ldrh	r2, [r8, #48]	; 0x30
	ldrh	r3, [r8, #50]	; 0x32
	ldrh	r1, [r1, #136]	; 0x88
	cmp	r1, #0
	moveq	r1, r2
	movne	r1, r3
	strh	r1, [r0, #64]	; 0x40
	add	r1, r8, #256	; 0x100
	ldrh	r1, [r1, #136]	; 0x88
	cmp	r1, #0
	movne	r3, r2
	strh	r3, [r0, #66]	; 0x42
	bl	FUN_060001F0
_06006F28:
	cmp	r9, #0
	bgt	_06006DA4
	add	sp, sp, #44	; 0x2c
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	add	sp, sp, #16
	bx	lr
_06006F40:	.word	_0601A960
_06006F44:	.word	0x0000FFFF

	arm_func_start FUN_06006F48
FUN_06006F48: ; 0x06006F48
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #36	; 0x24
	ldr	r1, _06007148	; =_0601A960
	ldr	r6, [r1, #1360]	; 0x550
	add	r9, r6, #760	; 0x2f8
	mvn	r1, r0
	add	r0, r6, #256	; 0x100
	ldrh	r0, [r0, #130]	; 0x82
	and	r0, r1, r0
	str	r0, [sp, #8]
	ldr	r0, _0600714C	; =0x0000071C
	add	r0, r6, r0
	bl	FUN_06007158
	mov	r0, #0
	str	r0, [sp]
	ldr	r0, _06007150	; =0x0000070C
	add	r0, r6, r0
	str	r0, [sp, #12]
	mov	r0, #129	; 0x81
	str	r0, [sp, #20]
	ldr	r0, [sp]
	str	r0, [sp, #24]
	mov	r0, #20
	str	r0, [sp, #28]
	ldr	r4, _06007154	; =0x0000FFFF
	ldr	r0, [sp]
	str	r0, [sp, #16]
_06006FB4:
	ldr	r0, [sp, #16]
	str	r0, [sp, #4]
	ldr	r5, [sp, #12]
_06006FC0:
	mov	fp, r5
	mov	r8, r4
	ldrh	sl, [r5]
	cmp	sl, r4
	beq	_06007104
_06006FD4:
	add	r7, r9, sl, lsl #5
	ldrh	r1, [r7, #6]
	ldr	r0, [sp, #8]
	and	r0, r1, r0
	strh	r0, [r7, #6]
	ldrh	r1, [r7, #10]
	ldr	r0, [sp, #8]
	and	r0, r1, r0
	strh	r0, [r7, #10]
	ldrh	r0, [r7, #6]
	cmp	r0, #0
	bne	_060070DC
	bl	FUN_060001E8
	ldr	r1, [sp, #20]
	strh	r1, [r0]
	ldr	r1, [sp, #24]
	strh	r1, [r0, #2]
	ldr	r1, [sp, #28]
	strh	r1, [r0, #8]
	ldrh	r1, [r7, #2]
	strh	r1, [r0, #10]
	ldrh	r1, [r7, #4]
	strh	r1, [r0, #12]
	ldrh	r1, [r7, #6]
	strh	r1, [r0, #14]
	ldrh	r1, [r7, #8]
	strh	r1, [r0, #16]
	ldrh	r1, [r7, #14]
	strh	r1, [r0, #24]
	ldr	r1, [r7, #20]
	str	r1, [r0, #20]
	ldr	r1, [r7, #24]
	str	r1, [r0, #28]
	ldr	r1, [r7, #28]
	str	r1, [r0, #32]
	ldrh	r1, [r7, #16]
	strh	r1, [r0, #26]
	ldrh	r1, [r6, #48]	; 0x30
	ldrh	r2, [r6, #50]	; 0x32
	add	r3, r6, #256	; 0x100
	ldrh	r3, [r3, #136]	; 0x88
	cmp	r3, #0
	moveq	r3, r1
	movne	r3, r2
	strh	r3, [r0, #36]	; 0x24
	add	r3, r6, #256	; 0x100
	ldrh	r3, [r3, #136]	; 0x88
	cmp	r3, #0
	movne	r2, r1
	strh	r2, [r0, #38]	; 0x26
	bl	FUN_060001F0
	ldrh	r0, [r7]
	cmp	r0, r4
	streqh	r8, [r5, #2]
	ldrh	r0, [r7]
	strh	r0, [fp]
	strh	r4, [r7]
	add	r0, r6, #1536	; 0x600
	ldrh	r1, [r0, #250]	; 0xfa
	cmp	r1, r4
	streqh	sl, [r0, #248]	; 0xf8
	movne	r0, r1, lsl #5
	strneh	sl, [r9, r0]
	add	r0, r6, #1536	; 0x600
	strh	sl, [r0, #250]	; 0xfa
	mov	sl, r8
_060070DC:
	cmp	sl, r4
	addne	fp, r9, sl, lsl #5
	moveq	fp, r5
	mov	r8, sl
	cmp	sl, r4
	movne	r0, sl, lsl #5
	ldrneh	sl, [r9, r0]
	ldreqh	sl, [r5]
	cmp	sl, r4
	bne	_06006FD4
_06007104:
	add	r5, r5, #4
	ldr	r0, [sp, #4]
	add	r0, r0, #1
	str	r0, [sp, #4]
	cmp	r0, #4
	blt	_06006FC0
	ldr	r0, [sp]
	add	r0, r0, #1
	str	r0, [sp]
	cmp	r0, #2
	blt	_06006FB4
	ldr	r0, _0600714C	; =0x0000071C
	add	r0, r6, r0
	bl	FUN_06007160
	add	sp, sp, #36	; 0x24
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
_06007148:	.word	_0601A960
_0600714C:	.word	0x0000071C
_06007150:	.word	0x0000070C
_06007154:	.word	0x0000FFFF

	arm_func_start FUN_06007158
FUN_06007158: ; 0x06007158
	ldr	pc, _0600715C	; =FUN_037F9ADC
_0600715C:	.word	FUN_037F9ADC

	arm_func_start FUN_06007160
FUN_06007160: ; 0x06007160
	ldr	pc, _06007164	; =FUN_037F9A6C
_06007164:	.word	FUN_037F9A6C

	arm_func_start FUN_06007168
FUN_06007168: ; 0x06007168
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #44	; 0x2c
	str	r0, [sp]
	mov	r4, r1
	ldr	r0, _0600749C	; =_0601A960
	ldr	r6, [r0, #1360]	; 0x550
	add	sl, r6, #760	; 0x2f8
	mov	r0, #0
	str	r0, [sp, #8]
	ldrh	r0, [r6]
	cmp	r0, #9
	moveq	r5, #1
	beq	_060071B8
	cmp	r0, #10
	ldreq	r5, [sp, #8]
	beq	_060071B8
	ldr	r0, [sp, #8]
	add	sp, sp, #44	; 0x2c
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
_060071B8:
	ldr	r0, _060074A0	; =0x0000071C
	add	r0, r6, r0
	bl	FUN_06007158
	ldr	r0, [r6, #1844]	; 0x734
	cmp	r0, #0
	bne	_060071EC
	ldr	r0, _060074A0	; =0x0000071C
	add	r0, r6, r0
	bl	FUN_06007160
	mov	r0, #0
	add	sp, sp, #44	; 0x2c
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
_060071EC:
	cmp	r5, #0
	moveq	fp, #1
	beq	_06007208
	bl	FUN_060001A4
	add	r1, r6, #256	; 0x100
	ldrh	fp, [r1, #130]	; 0x82
	bl	FUN_060001AC
_06007208:
	mov	r0, #0
	str	r0, [sp, #4]
	ldr	r0, _060074A4	; =0x000006FC
	add	r8, r6, r0
	mvn	r0, r4
	str	r0, [sp, #16]
	mov	r0, #1
	str	r0, [sp, #24]
	ldr	r4, _060074A8	; =0x0000FFFF
	ldr	r0, [sp, #4]
	str	r0, [sp, #20]
	mov	r0, #129	; 0x81
	str	r0, [sp, #28]
	mov	r0, #15
	str	r0, [sp, #36]	; 0x24
	ldr	r0, [sp, #4]
	str	r0, [sp, #32]
	mov	r0, #20
	str	r0, [sp, #40]	; 0x28
_06007254:
	mov	r5, r4
	str	r4, [sp, #12]
	ldrh	r9, [r8]
	cmp	r9, r4
	beq	_06007420
_06007268:
	add	r7, sl, r9, lsl #5
	ldr	r0, [sp]
	cmp	r0, #0
	bne	_060072A4
	ldrh	r2, [r7, #8]
	ldrh	r1, [r7, #10]
	ldr	r0, [sp, #16]
	and	r0, r1, r0
	orr	r0, r2, r0
	strh	r0, [r7, #8]
	ldrh	r1, [r7, #6]
	ldrh	r0, [r7, #8]
	mvn	r0, r0
	and	r0, r1, r0
	strh	r0, [r7, #6]
_060072A4:
	ldrh	r0, [r7, #6]
	and	r0, r0, fp
	strh	r0, [r7, #6]
	ldr	r0, [sp, #20]
	strh	r0, [r7, #10]
	ldrh	r0, [r7, #6]
	cmp	r0, #0
	beq	_06007330
	ldrh	r0, [r7, #2]
	ands	r0, r0, #8
	bne	_060072DC
	ldrh	r0, [r7, #18]
	cmp	r0, #0
	beq	_06007330
_060072DC:
	ldr	r0, [sp, #24]
	str	r0, [sp, #8]
	ldrh	r0, [r7, #18]
	cmp	r0, #0
	subne	r0, r0, #1
	strneh	r0, [r7, #18]
	ldrh	r0, [r7]
	cmp	r0, r4
	streqh	r4, [r8, #2]
	ldrh	r0, [r7]
	strh	r0, [r8]
	strh	r4, [r7]
	cmp	r5, r4
	moveq	r0, r9, lsl #16
	moveq	r0, r0, lsr #16
	streq	r0, [sp, #12]
	movne	r0, r5, lsl #5
	strneh	r9, [sl, r0]
	mov	r0, r9, lsl #16
	mov	r5, r0, lsr #16
	b	_06007414
_06007330:
	bl	FUN_060001E8
	ldr	r1, [sp, #28]
	strh	r1, [r0]
	ldrh	r1, [r7, #6]
	cmp	r1, #0
	ldreq	r1, [sp, #32]
	streqh	r1, [r0, #2]
	ldrne	r1, [sp, #36]	; 0x24
	strneh	r1, [r0, #2]
	ldr	r1, [sp, #40]	; 0x28
	strh	r1, [r0, #8]
	ldrh	r1, [r7, #2]
	strh	r1, [r0, #10]
	ldrh	r1, [r7, #4]
	strh	r1, [r0, #12]
	ldrh	r1, [r7, #6]
	strh	r1, [r0, #14]
	ldrh	r1, [r7, #8]
	strh	r1, [r0, #16]
	ldrh	r1, [r7, #14]
	strh	r1, [r0, #24]
	ldr	r1, [r7, #20]
	str	r1, [r0, #20]
	ldr	r1, [r7, #24]
	str	r1, [r0, #28]
	ldr	r1, [r7, #28]
	str	r1, [r0, #32]
	ldrh	r1, [r7, #16]
	strh	r1, [r0, #26]
	ldrh	r1, [r6, #48]	; 0x30
	ldrh	r2, [r6, #50]	; 0x32
	add	r3, r6, #256	; 0x100
	ldrh	r3, [r3, #136]	; 0x88
	cmp	r3, #0
	moveq	r3, r1
	movne	r3, r2
	strh	r3, [r0, #36]	; 0x24
	add	r3, r6, #256	; 0x100
	ldrh	r3, [r3, #136]	; 0x88
	cmp	r3, #0
	movne	r2, r1
	strh	r2, [r0, #38]	; 0x26
	bl	FUN_060001F0
	ldrh	r0, [r7]
	cmp	r0, r4
	streqh	r4, [r8, #2]
	ldrh	r0, [r7]
	strh	r0, [r8]
	strh	r4, [r7]
	add	r0, r6, #1536	; 0x600
	ldrh	r1, [r0, #250]	; 0xfa
	cmp	r1, r4
	streqh	r9, [r0, #248]	; 0xf8
	movne	r0, r1, lsl #5
	strneh	r9, [sl, r0]
	add	r0, r6, #1536	; 0x600
	strh	r9, [r0, #250]	; 0xfa
_06007414:
	ldrh	r9, [r8]
	cmp	r9, r4
	bne	_06007268
_06007420:
	cmp	r5, r4
	beq	_06007460
	ldr	r0, [sp, #4]
	add	r0, r6, r0, lsl #2
	add	r0, r0, #1792	; 0x700
	ldrh	r2, [r0, #12]
	mov	r1, r5, lsl #5
	strh	r2, [sl, r1]
	ldrh	r1, [r0, #14]
	cmp	r1, r4
	streqh	r5, [r0, #14]
	ldr	r0, [sp, #4]
	add	r0, r6, r0, lsl #2
	add	r1, r0, #1792	; 0x700
	ldr	r0, [sp, #12]
	strh	r0, [r1, #12]
_06007460:
	add	r8, r8, #4
	ldr	r0, [sp, #4]
	add	r0, r0, #1
	str	r0, [sp, #4]
	cmp	r0, #4
	blt	_06007254
	mov	r0, #0
	str	r0, [r6, #1844]	; 0x734
	ldr	r0, _060074A0	; =0x0000071C
	add	r0, r6, r0
	bl	FUN_06007160
	ldr	r0, [sp, #8]
	add	sp, sp, #44	; 0x2c
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
_0600749C:	.word	_0601A960
_060074A0:	.word	0x0000071C
_060074A4:	.word	0x000006FC
_060074A8:	.word	0x0000FFFF

	arm_func_start FUN_060074AC
FUN_060074AC: ; 0x060074AC
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub	sp, sp, #4
	mov	r8, r0
	mov	r7, r2
	mov	r6, r3
	ldr	r0, _060075F8	; =_0601A960
	ldr	r9, [r0, #1360]	; 0x550
	add	r5, r9, #760	; 0x2f8
	ldr	r0, _060075FC	; =0x0000070C
	add	r0, r9, r0
	add	r4, r0, r1, lsl #2
	ldrh	r0, [sp, #36]	; 0x24
	cmp	r0, #0
	moveq	r0, #6
	addeq	sp, sp, #4
	ldmeqia	sp!, {r4, r5, r6, r7, r8, r9, lr}
	bxeq	lr
	ands	r0, r7, #8
	movne	r1, #2
	moveq	r1, #0
	ldrh	r0, [sp, #36]	; 0x24
	add	r1, r0, r1
	ldrh	r0, [r9, #60]	; 0x3c
	cmp	r1, r0
	movgt	r0, #6
	addgt	sp, sp, #4
	ldmgtia	sp!, {r4, r5, r6, r7, r8, r9, lr}
	bxgt	lr
	ldr	r0, _06007600	; =0x0000071C
	add	r0, r9, r0
	bl	FUN_06007158
	add	r2, r9, #1536	; 0x600
	ldrh	r0, [r2, #248]	; 0xf8
	ldr	r3, _06007604	; =0x0000FFFF
	cmp	r0, r3
	bne	_06007558
	ldr	r0, _06007600	; =0x0000071C
	add	r0, r9, r0
	bl	FUN_06007160
	mov	r0, #10
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, lr}
	bx	lr
_06007558:
	mov	ip, r0, lsl #5
	add	r1, r5, r0, lsl #5
	ldrh	ip, [r5, ip]
	strh	ip, [r2, #248]	; 0xf8
	ldrh	ip, [r2, #250]	; 0xfa
	cmp	ip, r0
	streqh	r3, [r2, #250]	; 0xfa
	strh	r7, [r1, #2]
	strh	r6, [r1, #4]
	and	r2, r6, r8
	strh	r2, [r1, #6]
	mov	r2, #0
	strh	r2, [r1, #8]
	strh	r2, [r1, #10]
	ldr	r2, [sp, #32]
	str	r2, [r1, #20]
	ldrh	r2, [sp, #36]	; 0x24
	strh	r2, [r1, #14]
	ldr	r2, [sp, #40]	; 0x28
	str	r2, [r1, #24]
	ldr	r2, [sp, #44]	; 0x2c
	str	r2, [r1, #28]
	ldr	r3, _06007604	; =0x0000FFFF
	strh	r3, [r1]
	strh	r3, [r1, #16]
	ldrh	r2, [r9, #152]	; 0x98
	strh	r2, [r1, #18]
	ldrh	r1, [r4, #2]
	cmp	r1, r3
	streqh	r0, [r4]
	movne	r1, r1, lsl #5
	strneh	r0, [r5, r1]
	strh	r0, [r4, #2]
	ldr	r0, _06007600	; =0x0000071C
	add	r0, r9, r0
	bl	FUN_06007160
	mov	r0, #2
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, lr}
	bx	lr
_060075F8:	.word	_0601A960
_060075FC:	.word	0x0000070C
_06007600:	.word	0x0000071C
_06007604:	.word	0x0000FFFF

	arm_func_start FUN_06007608
FUN_06007608: ; 0x06007608
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #100	; 0x64
	mov	sl, r3
	ldr	r3, [sp, #136]	; 0x88
	str	r3, [sp, #136]	; 0x88
	ldr	r3, [sp, #140]	; 0x8c
	str	r3, [sp, #140]	; 0x8c
	ldr	r3, _06007B2C	; =_0601A960
	ldr	r3, [r3, #1360]	; 0x550
	str	r3, [sp, #56]	; 0x38
	ldrh	r8, [r3, #56]	; 0x38
	ldr	r7, [r3, #124]	; 0x7c
	ldrh	r4, [r3, #128]	; 0x80
	add	r3, r8, #31
	bic	r3, r3, #31
	cmp	r4, r3
	movlt	r0, #1
	addlt	sp, sp, #100	; 0x64
	ldmltia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bxlt	lr
	ldr	r3, [sp, #56]	; 0x38
	add	r3, r3, #256	; 0x100
	ldrh	r3, [r3, #136]	; 0x88
	cmp	r3, #16
	movcs	r0, #1
	addcs	sp, sp, #100	; 0x64
	ldmcsia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bxcs	lr
	ldr	r3, [sp, #56]	; 0x38
	ldrh	r3, [r3]
	cmp	r3, #9
	moveq	r3, #1
	streq	r3, [sp, #16]
	beq	_060076B0
	cmp	r3, #10
	moveq	r3, #0
	streq	r3, [sp, #16]
	beq	_060076B0
	mov	r0, #1
	add	sp, sp, #100	; 0x64
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
_060076B0:
	mov	r3, #0
	str	r3, [sp, #20]
	strh	r3, [sl]
	mov	r4, r3
	ldr	r3, [sp, #136]	; 0x88
	str	r4, [r3]
	ldr	r4, [sp, #20]
	ldr	r3, [sp, #140]	; 0x8c
	str	r4, [r3]
	mov	r6, r4
	cmp	r8, #0
	movlt	r0, #1
	addlt	sp, sp, #100	; 0x64
	ldmltia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bxlt	lr
	str	r2, [sp, #28]
	mov	r3, #1
	str	r3, [sp, #24]
	ldr	r3, [sp, #16]
	cmp	r3, #0
	beq	_06007720
	ldr	r3, [sp, #56]	; 0x38
	ldrh	r3, [r3, #146]	; 0x92
	cmp	r3, #0
	strne	r1, [sp, #28]
	movne	r1, r4
	strne	r1, [sp, #24]
	b	_06007728
_06007720:
	mov	r1, r4
	str	r1, [sp, #24]
_06007728:
	and	r4, r2, r0
	mov	r0, #0
	str	r0, [sp, #8]
	mov	r0, #1
	str	r0, [sp, #12]
	ldr	r1, _06007B30	; =0x0000071C
	ldr	r0, [sp, #56]	; 0x38
	add	r0, r0, r1
	bl	FUN_06007158
	ldr	r0, [sp, #56]	; 0x38
	ldr	r0, [r0, #1844]	; 0x734
	cmp	r0, #1
	bne	_0600777C
	ldr	r1, _06007B30	; =0x0000071C
	ldr	r0, [sp, #56]	; 0x38
	add	r0, r0, r1
	bl	FUN_06007160
	mov	r0, #1
	add	sp, sp, #100	; 0x64
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
_0600777C:
	mov	r1, #1
	str	r1, [sp, #64]	; 0x40
	ldr	r0, [sp, #56]	; 0x38
	str	r1, [r0, #1844]	; 0x734
	add	r0, r0, #760	; 0x2f8
	str	r0, [sp, #32]
	mov	r0, #0
	str	r0, [sp, #36]	; 0x24
	ldr	r1, _06007B34	; =0x0000070C
	ldr	r0, [sp, #56]	; 0x38
	add	fp, r0, r1
	ldr	r1, _06007B38	; =0x000006FC
	add	r0, r0, r1
	str	r0, [sp, #40]	; 0x28
	mvn	r0, r4
	str	r0, [sp, #60]	; 0x3c
	ldr	r0, [sp, #36]	; 0x24
	str	r0, [sp, #68]	; 0x44
	str	r0, [sp, #72]	; 0x48
	str	r0, [sp, #80]	; 0x50
	mov	r0, #2
	str	r0, [sp, #76]	; 0x4c
	ldr	r0, [sp, #36]	; 0x24
	str	r0, [sp, #84]	; 0x54
	str	r0, [sp, #88]	; 0x58
	str	r0, [sp, #92]	; 0x5c
	str	r0, [sp, #96]	; 0x60
	b	_06007AE4
_060077EC:
	str	fp, [sp, #44]	; 0x2c
	ldr	r0, _06007B3C	; =0x0000FFFF
	str	r0, [sp, #48]	; 0x30
	ldrh	r9, [fp]
	b	_06007AB4
_06007800:
	ldr	r0, [sp, #32]
	add	r5, r0, r9, lsl #5
	ldrh	r0, [r5, #2]
	ldr	r1, [sp, #64]	; 0x40
	mov	r1, r1, lsl r0
	str	r1, [sp, #52]	; 0x34
	ldr	r2, [sp, #8]
	ands	r1, r2, r1
	bne	_06007A80
	ldr	r1, [sp, #52]	; 0x34
	orr	r1, r2, r1
	str	r1, [sp, #8]
	ldrh	r2, [r5, #6]
	ldr	r1, [sp, #28]
	and	r4, r2, r1
	ldr	r1, [sp, #24]
	cmp	r1, #0
	beq	_06007854
	ldr	r1, [sp, #60]	; 0x3c
	ands	r1, r4, r1
	bne	_06007A80
_06007854:
	ands	r0, r0, #8
	ldrne	r0, [sp, #64]	; 0x40
	strne	r0, [sp, #4]
	ldreq	r0, [sp, #68]	; 0x44
	streq	r0, [sp, #4]
	ldr	r0, [sp, #16]
	cmp	r0, #0
	beq	_0600788C
	orr	r1, r4, #1
	ldr	r0, _06007B3C	; =0x0000FFFF
	cmp	r1, r0
	ldrne	r0, [sp, #64]	; 0x40
	strne	r0, [sp]
	bne	_06007894
_0600788C:
	ldr	r0, [sp, #72]	; 0x48
	str	r0, [sp]
_06007894:
	ldrh	r0, [r5, #14]
	and	r1, r0, #1
	cmp	r1, #1
	addeq	r0, r0, #1
	streqh	r0, [r5, #14]
	ldr	r0, [sp, #4]
	cmp	r0, #0
	ldrne	r0, [sp, #76]	; 0x4c
	ldreq	r0, [sp, #80]	; 0x50
	ldr	r1, [sp, #12]
	cmp	r1, #0
	ldrne	r3, [sp, #84]	; 0x54
	ldreq	r3, [sp, #76]	; 0x4c
	ldr	r1, [sp]
	cmp	r1, #0
	ldrne	r1, [sp, #76]	; 0x4c
	ldreq	r1, [sp, #88]	; 0x58
	ldrh	r2, [r5, #14]
	add	r2, r2, r3
	add	r0, r2, r0
	add	r0, r1, r0
	cmp	r0, r8
	bgt	_06007A80
	ldr	r0, [sp, #12]
	cmp	r0, #0
	moveq	sl, r7
	ldreq	r0, [sp, #92]	; 0x5c
	streqh	r0, [r7], #2
	addeq	r6, r6, #2
	subeq	r8, r8, #2
	ldrh	r0, [sl]
	ldrh	r1, [r5, #2]
	mov	r1, r1, lsl #8
	and	r2, r1, #3840	; 0xf00
	ldrh	r1, [r5, #14]
	mov	r1, r1, lsr #1
	and	r1, r1, #255	; 0xff
	orr	r1, r2, r1
	orr	r0, r0, r1
	strh	r0, [sl]
	ldr	r0, [r5, #20]
	mov	r1, r7
	ldrh	r2, [r5, #14]
	bl	FUN_06000EA0
	ldrh	r1, [r5, #14]
	bic	r0, r1, #1
	add	r7, r7, r0
	add	r6, r6, r1
	sub	r8, r8, r1
	ldr	r0, [sp, #4]
	cmp	r0, #1
	bne	_060079C0
	ldrh	r1, [r5, #16]
	ands	r0, r1, #1
	moveq	r2, r1, asr #1
	beq	_060079AC
	ldr	r0, [sp, #56]	; 0x38
	add	r0, r0, #256	; 0x100
	ldrh	r2, [r0, #136]	; 0x88
	ldrh	r0, [r5, #2]
	and	r1, r0, #7
	ldr	r0, [sp, #56]	; 0x38
	add	r0, r0, r2, lsl #4
	add	r0, r0, r1, lsl #1
	add	r0, r0, #256	; 0x100
	ldrh	r2, [r0, #248]	; 0xf8
	add	r1, r2, #1
	strh	r1, [r0, #248]	; 0xf8
	mov	r0, r2, lsl #1
	strh	r0, [r5, #16]
_060079AC:
	ldr	r0, _06007B40	; =0x00007FFF
	and	r0, r2, r0
	strh	r0, [r7], #2
	add	r6, r6, #2
	sub	r8, r8, #2
_060079C0:
	ldr	r0, [sp]
	cmp	r0, #1
	bne	_060079E4
	ldrh	r0, [sl]
	orr	r0, r0, #4096	; 0x1000
	strh	r0, [sl]
	strh	r4, [r7], #2
	add	r6, r6, #2
	sub	r8, r8, #2
_060079E4:
	ldr	r0, [sp, #12]
	cmp	r0, #1
	ldreq	r0, [sp, #96]	; 0x60
	streq	r0, [sp, #12]
	ldrh	r0, [fp, #2]
	cmp	r0, r9
	ldreq	r0, [sp, #48]	; 0x30
	streqh	r0, [fp, #2]
	ldrh	r1, [r5]
	ldr	r0, [sp, #44]	; 0x2c
	strh	r1, [r0]
	ldr	r0, _06007B3C	; =0x0000FFFF
	strh	r0, [r5]
	ldr	r0, [sp, #40]	; 0x28
	ldrh	r1, [r0, #2]
	ldr	r0, _06007B3C	; =0x0000FFFF
	cmp	r1, r0
	ldreq	r0, [sp, #40]	; 0x28
	streqh	r9, [r0]
	movne	r1, r1, lsl #5
	ldrne	r0, [sp, #32]
	strneh	r9, [r0, r1]
	ldr	r0, [sp, #40]	; 0x28
	strh	r9, [r0, #2]
	strh	r4, [r5, #10]
	ldr	r0, [sp, #52]	; 0x34
	mvn	r1, r0
	ldr	r0, [sp, #8]
	and	r0, r0, r1
	str	r0, [sp, #8]
	ldrh	r1, [r5, #4]
	ldr	r0, [sp, #20]
	orr	r0, r0, r1
	str	r0, [sp, #20]
	ldr	r9, [sp, #48]	; 0x30
	ldr	r0, [sp, #56]	; 0x38
	ldrh	r0, [r0, #148]	; 0x94
	cmp	r0, #1
	beq	_06007AF8
_06007A80:
	ldr	r0, _06007B3C	; =0x0000FFFF
	cmp	r9, r0
	ldrne	r0, [sp, #32]
	addne	r0, r0, r9, lsl #5
	strne	r0, [sp, #44]	; 0x2c
	streq	fp, [sp, #44]	; 0x2c
	str	r9, [sp, #48]	; 0x30
	ldr	r0, _06007B3C	; =0x0000FFFF
	cmp	r9, r0
	movne	r1, r9, lsl #5
	ldrne	r0, [sp, #32]
	ldrneh	r9, [r0, r1]
	ldreqh	r9, [fp]
_06007AB4:
	ldr	r0, _06007B3C	; =0x0000FFFF
	cmp	r9, r0
	beq	_06007AC8
	cmp	r8, #2
	bgt	_06007800
_06007AC8:
	add	fp, fp, #4
	ldr	r0, [sp, #40]	; 0x28
	add	r0, r0, #4
	str	r0, [sp, #40]	; 0x28
	ldr	r0, [sp, #36]	; 0x24
	add	r0, r0, #1
	str	r0, [sp, #36]	; 0x24
_06007AE4:
	ldr	r0, [sp, #36]	; 0x24
	cmp	r0, #4
	bcs	_06007AF8
	cmp	r8, #2
	bgt	_060077EC
_06007AF8:
	ldr	r1, [sp, #20]
	ldr	r0, [sp, #136]	; 0x88
	str	r1, [r0]
	ldr	r0, [sp, #140]	; 0x8c
	str	r6, [r0]
	ldr	r1, _06007B30	; =0x0000071C
	ldr	r0, [sp, #56]	; 0x38
	add	r0, r0, r1
	bl	FUN_06007160
	mov	r0, #0
	add	sp, sp, #100	; 0x64
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
_06007B2C:	.word	_0601A960
_06007B30:	.word	0x0000071C
_06007B34:	.word	0x0000070C
_06007B38:	.word	0x000006FC
_06007B3C:	.word	0x0000FFFF
_06007B40:	.word	0x00007FFF

	arm_func_start FUN_06007B44
FUN_06007B44: ; 0x06007B44
	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #536	; 0x218
	mov	r7, r0
	ldr	r0, _06007C3C	; =_0601A960
	ldr	r4, [r0, #1360]	; 0x550
	bl	FUN_060001A4
	bl	FUN_060001AC
	ldr	r0, _06007C40	; =0x048080F8
	ldrh	r6, [r0]
	ldrh	r5, [r4, #106]	; 0x6a
	add	r0, r4, #256	; 0x100
	ldrh	r0, [r0, #130]	; 0x82
	and	r7, r7, r0
	ldrh	r8, [r4, #58]	; 0x3a
	mov	r0, r7
	bl	FUN_06006CA4
	ldrh	r2, [r4, #114]	; 0x72
	add	r1, r8, #12
	mul	r0, r1, r0
	add	r0, r0, #41	; 0x29
	bic	r0, r0, #31
	cmp	r2, r0
	bge	_06007BB8
	mov	r0, #2
	bl	FUN_06007C48
	bl	FUN_06001964
	add	sp, sp, #536	; 0x218
	ldmia	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
_06007BB8:
	ldrsh	r0, [r4, #98]	; 0x62
	cmp	r0, #1
	beq	_06007BD0
	ldrsh	r0, [r4, #100]	; 0x64
	cmp	r0, #1
	bne	_06007BEC
_06007BD0:
	ldrh	r0, [r4, #110]	; 0x6e
	ldrh	r1, [r4, #108]	; 0x6c
	mov	r2, r7
	ldrh	r3, [r4, #64]	; 0x40
	bl	FUN_06006BF0
	orr	r5, r5, #32768	; 0x8000
	b	_06007BF4
_06007BEC:
	mov	r0, #0
	bic	r5, r5, #32768	; 0x8000
_06007BF4:
	mov	r1, r7, lsl #16
	mov	r1, r1, lsr #16
	str	r1, [sp]
	str	r0, [sp, #4]
	str	r6, [sp, #8]
	mov	r2, #0
	str	r2, [sp, #12]
	mov	r0, r5, lsl #16
	mov	r0, r0, lsr #16
	str	r0, [sp, #16]
	str	r2, [sp, #20]
	add	r0, sp, #24
	ldr	r1, _06007C44	; =0x0000800C
	mov	r3, r2
	bl	FUN_060028C8
	add	sp, sp, #536	; 0x218
	ldmia	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
_06007C3C:	.word	_0601A960
_06007C40:	.word	0x048080F8
_06007C44:	.word	0x0000800C

	arm_func_start FUN_06007C48
FUN_06007C48: ; 0x06007C48
	ldr	pc, _06007C4C	; =FUN_037F8E14
_06007C4C:	.word	FUN_037F8E14

	arm_func_start FUN_06007C50
FUN_06007C50: ; 0x06007C50
	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #552	; 0x228
	mov	r8, r0
	ldr	r0, _06007E40	; =_0601A960
	ldr	r4, [r0, #1360]	; 0x550
	bl	FUN_060001A4
	add	r1, r4, #256	; 0x100
	ldrh	r7, [r1, #130]	; 0x82
	ldrh	r6, [r4, #134]	; 0x86
	bl	FUN_060001AC
	mov	r1, #0
	strh	r1, [sp, #24]
	ldrh	r0, [r4, #136]	; 0x88
	cmp	r0, #1
	ldreq	r8, _06007E44	; =0x0000FFFF
	streqh	r1, [r4, #136]	; 0x88
	ldrh	r0, [r4, #158]	; 0x9e
	cmp	r0, #0
	bne	_06007D88
	ldrh	r5, [r4, #58]	; 0x3a
	add	r0, sp, #28
	str	r0, [sp]
	add	r0, sp, #32
	str	r0, [sp, #4]
	mov	r0, r8
	mov	r1, r7
	mov	r2, r6
	add	r3, sp, #24
	bl	FUN_06007608
	cmp	r0, #1
	moveq	r0, #0
	streqh	r0, [r4, #98]	; 0x62
	streqh	r0, [r4, #100]	; 0x64
	addeq	sp, sp, #552	; 0x228
	ldmeqia	sp!, {r4, r5, r6, r7, r8, lr}
	bxeq	lr
	add	r6, r5, #2
	ldrh	r0, [r4, #146]	; 0x92
	cmp	r0, #1
	ldreq	r8, [sp, #28]
	and	r8, r8, r7
	mov	r0, r8
	bl	FUN_06006CA4
	ldrh	r2, [r4, #114]	; 0x72
	add	r1, r5, #12
	mul	r0, r1, r0
	add	r0, r0, #41	; 0x29
	bic	r0, r0, #31
	cmp	r2, r0
	bge	_06007D40
	mov	r0, #0
	mov	r1, r8, lsl #16
	mov	r1, r1, lsr #16
	bl	FUN_06007168
	mov	r0, #0
	strh	r0, [r4, #98]	; 0x62
	strh	r0, [r4, #100]	; 0x64
	add	sp, sp, #552	; 0x228
	ldmia	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
_06007D40:
	ldrsh	r0, [r4, #98]	; 0x62
	cmp	r0, #1
	beq	_06007D58
	ldrsh	r0, [r4, #100]	; 0x64
	cmp	r0, #1
	bne	_06007D80
_06007D58:
	ldr	r0, [sp, #32]
	mov	r1, r6
	mov	r2, r8
	ldrh	r3, [r4, #64]	; 0x40
	bl	FUN_06006BF0
	mov	r5, r0
	ldrh	r0, [sp, #24]
	orr	r0, r0, #32768	; 0x8000
	strh	r0, [sp, #24]
	b	_06007DC8
_06007D80:
	mov	r5, #0
	b	_06007DC8
_06007D88:
	mov	r5, #0
	strh	r5, [r4, #158]	; 0x9e
	mov	r8, r7
	ldr	r6, _06007E48	; =0x000080D6
	str	r5, [sp, #32]
	ldrh	r0, [sp, #24]
	bic	r0, r0, #32768	; 0x8000
	strh	r0, [sp, #24]
	bl	FUN_060001A4
	ldrsh	r1, [r4, #98]	; 0x62
	add	r1, r1, #1
	strh	r1, [r4, #98]	; 0x62
	ldrsh	r1, [r4, #100]	; 0x64
	add	r1, r1, #1
	strh	r1, [r4, #100]	; 0x64
	bl	FUN_060001AC
_06007DC8:
	mov	r0, r8, lsl #16
	mov	r0, r0, lsr #16
	str	r0, [sp]
	str	r5, [sp, #4]
	ldr	r0, _06007E4C	; =0x048080F8
	ldrh	r0, [r0]
	str	r0, [sp, #8]
	ldr	r0, [sp, #32]
	mov	r0, r0, lsl #16
	mov	r0, r0, lsr #16
	str	r0, [sp, #12]
	ldrh	r0, [sp, #24]
	str	r0, [sp, #16]
	ldr	r0, [r4, #124]	; 0x7c
	str	r0, [sp, #20]
	add	r0, sp, #36	; 0x24
	mov	r1, #0
	mov	r2, r1
	mov	r3, r6, lsl #16
	mov	r3, r3, lsr #16
	bl	FUN_060028C8
	strh	r8, [r4, #104]	; 0x68
	ldrh	r0, [sp, #24]
	strh	r0, [r4, #106]	; 0x6a
	strh	r6, [r4, #108]	; 0x6c
	ldr	r0, [sp, #32]
	strh	r0, [r4, #110]	; 0x6e
	add	sp, sp, #552	; 0x228
	ldmia	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
_06007E40:	.word	_0601A960
_06007E44:	.word	0x0000FFFF
_06007E48:	.word	0x000080D6
_06007E4C:	.word	0x048080F8

	arm_func_start FUN_06007E50
FUN_06007E50: ; 0x06007E50
	stmdb	sp!, {r4, lr}
	sub	sp, sp, #536	; 0x218
	ldr	r0, _06007F1C	; =_0601A960
	ldr	r4, [r0, #1360]	; 0x550
	add	r0, r4, #256	; 0x100
	ldrh	r0, [r0, #130]	; 0x82
	cmp	r0, #0
	addeq	sp, sp, #536	; 0x218
	ldmeqia	sp!, {r4, lr}
	bxeq	lr
	mov	r0, #1
	strh	r0, [r4, #138]	; 0x8a
	mov	r1, #0
	strh	r1, [sp, #8]
	add	r1, sp, #12
	str	r1, [sp]
	add	r1, sp, #16
	str	r1, [sp, #4]
	mov	r1, r0
	mov	r2, r0
	add	r3, sp, #8
	bl	FUN_06007608
	cmp	r0, #1
	moveq	r0, #0
	streqh	r0, [r4, #138]	; 0x8a
	addeq	sp, sp, #536	; 0x218
	ldmeqia	sp!, {r4, lr}
	bxeq	lr
	ldr	r0, [r4, #28]
	cmp	r0, #1
	ldreqh	r0, [sp, #8]
	orreq	r0, r0, #32768	; 0x8000
	streqh	r0, [sp, #8]
	add	r0, sp, #20
	ldr	r1, [sp, #16]
	mov	r1, r1, lsl #16
	mov	r1, r1, lsr #16
	ldrh	r2, [sp, #8]
	ldr	r3, [r4, #124]	; 0x7c
	bl	FUN_06002964
	ldrh	r0, [r0, #4]
	cmp	r0, #0
	addeq	sp, sp, #536	; 0x218
	ldmeqia	sp!, {r4, lr}
	bxeq	lr
	cmp	r0, #8
	movne	r0, #0
	strneh	r0, [r4, #138]	; 0x8a
	add	sp, sp, #536	; 0x218
	ldmia	sp!, {r4, lr}
	bx	lr
_06007F1C:	.word	_0601A960

	arm_func_start FUN_06007F20
FUN_06007F20: ; 0x06007F20
	stmdb	sp!, {r4, lr}
	ldr	r0, _06007FD4	; =_0601A960
	ldr	r4, [r0, #1360]	; 0x550
	ldr	r0, _06007FD8	; =0x0000071C
	add	r0, r4, r0
	bl	FUN_06007158
	mov	r0, #0
	add	r1, r4, #760	; 0x2f8
	mov	r2, #1024	; 0x400
	bl	FUN_0600055C
	mov	r2, #0
_06007F4C:
	add	r0, r2, #1
	mov	r0, r0, lsl #16
	mov	r1, r0, lsr #16
	add	r0, r4, r2, lsl #5
	add	r0, r0, #512	; 0x200
	strh	r1, [r0, #248]	; 0xf8
	mov	r2, r1
	cmp	r1, #31
	bcc	_06007F4C
	ldr	r2, _06007FDC	; =0x0000FFFF
	add	r0, r4, r1, lsl #5
	add	r0, r0, #512	; 0x200
	strh	r2, [r0, #248]	; 0xf8
	mov	r3, #0
	add	r0, r4, #1536	; 0x600
	strh	r3, [r0, #248]	; 0xf8
	strh	r1, [r0, #250]	; 0xfa
_06007F90:
	add	r1, r4, r3, lsl #2
	add	r0, r1, #1792	; 0x700
	strh	r2, [r0, #12]
	strh	r2, [r0, #14]
	add	r0, r1, #1536	; 0x600
	strh	r2, [r0, #252]	; 0xfc
	strh	r2, [r0, #254]	; 0xfe
	add	r0, r3, #1
	mov	r0, r0, lsl #16
	mov	r3, r0, lsr #16
	cmp	r3, #4
	bcc	_06007F90
	ldr	r0, _06007FD8	; =0x0000071C
	add	r0, r4, r0
	bl	FUN_06007160
	ldmia	sp!, {r4, lr}
	bx	lr
_06007FD4:	.word	_0601A960
_06007FD8:	.word	0x0000071C
_06007FDC:	.word	0x0000FFFF

	arm_func_start FUN_06007FE0
FUN_06007FE0: ; 0x06007FE0
	stmdb	sp!, {r4, lr}
	sub	sp, sp, #640	; 0x280
	ldr	r1, _0600806C	; =_0601A960
	ldr	r4, [r1, #1360]	; 0x550
	ldr	r0, [r0, #4]
	strh	r0, [r4, #246]	; 0xf6
	add	r0, sp, #512	; 0x200
	add	r1, r4, #232	; 0xe8
	bl	FUN_06000564
	add	r0, sp, #0
	ldrh	r1, [r4, #236]	; 0xec
	add	r1, r1, #16
	mov	r1, r1, lsl #16
	mov	r1, r1, lsr #16
	add	r2, sp, #512	; 0x200
	bl	FUN_060023F4
	mov	r4, r0
	bl	FUN_060001E8
	mov	r1, #33	; 0x21
	strh	r1, [r0]
	ldrh	r1, [r4, #4]
	cmp	r1, #0
	moveq	r1, #0
	streqh	r1, [r0, #2]
	beq	_0600805C
	mov	r1, #1
	strh	r1, [r0, #2]
	ldr	r1, _06008070	; =0x00000245
	strh	r1, [r0, #4]
	ldrh	r1, [r4, #4]
	strh	r1, [r0, #6]
_0600805C:
	bl	FUN_060001F0
	add	sp, sp, #640	; 0x280
	ldmia	sp!, {r4, lr}
	bx	lr
_0600806C:	.word	_0601A960
_06008070:	.word	0x00000245

	arm_func_start FUN_06008074
FUN_06008074: ; 0x06008074
	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #520	; 0x208
	add	r0, r0, #4
	add	r1, sp, #0
	mov	r2, #6
	bl	FUN_06000554
	mov	r8, #0
	add	r7, sp, #8
	add	r6, sp, #0
	mov	r5, #19
	b	_060080D4
_060080A0:
	mov	r0, r7
	mov	r1, r6
	mov	r2, r5
	bl	FUN_06002C68
	mov	r4, r0
	ldrh	r0, [r4, #4]
	cmp	r0, #0
	beq	_060080DC
	cmp	r0, #7
	beq	_060080D0
	cmp	r0, #12
	bne	_060080DC
_060080D0:
	add	r8, r8, #1
_060080D4:
	cmp	r8, #2
	blt	_060080A0
_060080DC:
	bl	FUN_060001E8
	mov	r1, #34	; 0x22
	strh	r1, [r0]
	ldrh	r1, [r4, #4]
	cmp	r1, #0
	moveq	r1, #0
	streqh	r1, [r0, #2]
	beq	_06008114
	mov	r1, #1
	strh	r1, [r0, #2]
	mov	r1, #5
	strh	r1, [r0, #4]
	ldrh	r1, [r4, #4]
	strh	r1, [r0, #6]
_06008114:
	bl	FUN_060001F0
	add	sp, sp, #520	; 0x208
	ldmia	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr

	arm_func_start FUN_06008124
FUN_06008124: ; 0x06008124
	stmdb	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #4
	ldr	r0, _06008270	; =_0601A960
	ldr	r7, [r0, #1356]	; 0x54c
	ldr	r4, [r0, #1360]	; 0x550
	mov	r6, #0
	bl	FUN_060001A4
	mov	r5, r0
	ldr	r0, [r4, #12]
	cmp	r0, #1
	bne	_06008164
	mov	r0, r6
	str	r0, [r4, #12]
	mov	r6, #1
	bl	FUN_06006978
	bl	FUN_06000288
_06008164:
	mov	r1, #0
	add	r0, r4, #256	; 0x100
	strh	r1, [r0, #130]	; 0x82
	strh	r1, [r4, #134]	; 0x86
	str	r1, [r4, #20]
	str	r1, [r4, #16]
	str	r1, [r4, #28]
	strh	r1, [r4, #206]	; 0xce
	strh	r1, [r4, #194]	; 0xc2
	mov	r2, #1
	strh	r2, [r4, #88]	; 0x58
	strh	r2, [r4, #90]	; 0x5a
	mov	r2, #6
	strh	r2, [r4, #92]	; 0x5c
	strh	r1, [r4, #152]	; 0x98
	strh	r1, [r4, #146]	; 0x92
	strh	r1, [r4, #148]	; 0x94
	strh	r1, [r4, #154]	; 0x9a
	strh	r1, [r4, #156]	; 0x9c
	str	r1, [r4, #408]	; 0x198
	strh	r1, [r0, #150]	; 0x96
	add	r0, r4, #412	; 0x19c
	mov	r2, #80	; 0x50
	bl	FUN_06000D08
	bl	FUN_06000100
	mov	r0, #260	; 0x104
	strh	r0, [r4, #64]	; 0x40
	mov	r0, #240	; 0xf0
	strh	r0, [r4, #66]	; 0x42
	mov	r0, #1000	; 0x3e8
	strh	r0, [r4, #68]	; 0x44
	mov	r1, #0
	strh	r1, [r4, #70]	; 0x46
	ldr	r0, _06008274	; =0x0000020B
	str	r0, [r4, #72]	; 0x48
	str	r1, [r4, #76]	; 0x4c
	str	r1, [r4, #80]	; 0x50
	str	r1, [r4, #84]	; 0x54
	strh	r1, [r4, #198]	; 0xc6
	mov	r1, #1
	add	r0, r4, #256	; 0x100
	strh	r1, [r0, #238]	; 0xee
	mov	r0, r5
	bl	FUN_060001AC
	cmp	r6, #0
	beq	_06008224
	ldr	r0, _06008278	; =0x0000FFFF
	bl	FUN_06006F48
_06008224:
	mov	r2, #0
	mov	r1, #32768	; 0x8000
_0600822C:
	add	r0, r7, r2, lsl #4
	str	r1, [r0, #208]	; 0xd0
	add	r2, r2, #1
	cmp	r2, #32
	blt	_0600822C
	mov	r0, #1
	add	r1, r4, #504	; 0x1f8
	mov	r2, #256	; 0x100
	bl	FUN_0600055C
	bl	FUN_060009D8
	ldr	r0, _0600827C	; =0x0000071C
	add	r0, r4, r0
	bl	FUN_0600096C
	bl	FUN_0600698C
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, lr}
	bx	lr
_06008270:	.word	_0601A960
_06008274:	.word	0x0000020B
_06008278:	.word	0x0000FFFF
_0600827C:	.word	0x0000071C

	arm_func_start FUN_06008280
FUN_06008280: ; 0x06008280
	stmdb	sp!, {r4, lr}
	ldr	r4, [r0, #4]
	ldr	r1, _060082DC	; =_0601A960
	str	r4, [r1, #1356]	; 0x54c
	ldr	r2, [r0, #8]
	str	r2, [r1, #1360]	; 0x550
	str	r2, [r4]
	ldr	r0, [r0, #12]
	str	r0, [r4, #8]
	bl	FUN_06008124
	mov	r0, #15
	bl	FUN_0600301C
	mov	r1, #1
	ldr	r0, [r4]
	strh	r1, [r0]
	bl	FUN_060001E8
	mov	r1, #3
	strh	r1, [r0]
	mov	r1, #0
	strh	r1, [r0, #2]
	bl	FUN_060001F0
	ldmia	sp!, {r4, lr}
	bx	lr
_060082DC:	.word	_0601A960

	arm_func_start FUN_060082E0
FUN_060082E0: ; 0x060082E0
	stmdb	sp!, {r4, lr}
	ldr	r0, _06008344	; =_0601A960
	ldr	r4, [r0, #1360]	; 0x550
	ldrh	r0, [r4]
	cmp	r0, #1
	beq	_06008314
	bl	FUN_060001E8
	mov	r1, #4
	strh	r1, [r0]
	mov	r1, #3
	strh	r1, [r0, #2]
	bl	FUN_060001F0
	b	_0600833C
_06008314:
	mov	r0, #1
	bl	FUN_0600301C
	mov	r0, #0
	strh	r0, [r4]
	bl	FUN_060001E8
	mov	r1, #4
	strh	r1, [r0]
	mov	r1, #0
	strh	r1, [r0, #2]
	bl	FUN_060001F0
_0600833C:
	ldmia	sp!, {r4, lr}
	bx	lr
_06008344:	.word	_0601A960

	arm_func_start FUN_06008348
FUN_06008348: ; 0x06008348
	mov	r1, #200	; 0xc8
	ldr	r0, _06008370	; =0x04808124
	strh	r1, [r0]
	mov	r1, #2000	; 0x7d0
	ldr	r0, _06008374	; =0x04808128
	strh	r1, [r0]
	ldr	r1, _06008378	; =0x00000202
	ldr	r0, _0600837C	; =0x04808150
	strh	r1, [r0]
	bx	lr
_06008370:	.word	0x04808124
_06008374:	.word	0x04808128
_06008378:	.word	0x00000202
_0600837C:	.word	0x04808150

	arm_func_start FUN_06008380
FUN_06008380: ; 0x06008380
	stmdb	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #516	; 0x204
	mov	r7, r0
	mov	r6, r1
	ldr	r0, _06008550	; =_0601A960
	ldr	r5, [r0, #1360]	; 0x550
	add	r0, sp, #0
	bl	FUN_06002354
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_060083C4
	mov	r1, #772	; 0x304
	strh	r1, [r7]
	ldrh	r0, [r0, #4]
	strh	r0, [r6]
	mov	r0, #0
	b	_06008544
_060083C4:
	add	r0, sp, #0
	bl	FUN_06002380
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_060083F0
	ldr	r1, _06008554	; =0x00000302
	strh	r1, [r7]
	ldrh	r0, [r0, #4]
	strh	r0, [r6]
	mov	r0, #0
	b	_06008544
_060083F0:
	bl	FUN_06008348
	add	r0, sp, #0
	bl	FUN_060023C4
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_06008420
	ldr	r1, _06008558	; =0x00000283
	strh	r1, [r7]
	ldrh	r0, [r0, #4]
	strh	r0, [r6]
	mov	r0, #0
	b	_06008544
_06008420:
	ldrh	r1, [r0, #6]
	add	r0, r5, #256	; 0x100
	strh	r1, [r0, #244]	; 0xf4
	mov	r0, r1, lsl #15
	mov	r0, r0, lsr #16
	bl	FUN_06008570
	add	r1, r5, #256	; 0x100
	strh	r0, [r1, #246]	; 0xf6
	add	r0, sp, #0
	ldr	r1, _0600855C	; =0x0000FFFF
	mov	r2, #40	; 0x28
	mov	r3, #5
	bl	FUN_06002604
	ldr	r1, _06008560	; =0x001FF621
	mov	r0, #0
	str	r1, [r5, #1976]	; 0x7b8
	str	r0, [r5, #1980]	; 0x7bc
	mov	r1, #2
	add	r0, r5, #256	; 0x100
	strh	r1, [r0, #236]	; 0xec
	mov	r1, #1
	strh	r1, [r0, #238]	; 0xee
	add	r0, sp, #0
	bl	FUN_06002324
	mov	r4, r0
	ldrh	r0, [r4, #4]
	cmp	r0, #0
	beq	_060084A8
	ldr	r0, _06008564	; =0x00000306
	strh	r0, [r7]
	ldrh	r0, [r4, #4]
	strh	r0, [r6]
	mov	r0, #0
	b	_06008544
_060084A8:
	add	r0, r4, #6
	add	r1, r5, #32
	mov	r2, #8
	bl	FUN_06000EA0
	ldrh	r0, [r4, #14]
	strh	r0, [r5, #40]	; 0x28
	ldrh	r0, [r4, #16]
	strh	r0, [r5, #44]	; 0x2c
	ldrh	r0, [r4, #18]
	strh	r0, [r5, #46]	; 0x2e
	ldrh	r0, [r4, #20]
	strh	r0, [r5, #42]	; 0x2a
	add	r0, sp, #0
	bl	FUN_060023DC
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_06008504
	ldr	r1, _06008568	; =0x00000281
	strh	r1, [r7]
	ldrh	r0, [r0, #4]
	strh	r0, [r6]
	mov	r0, #0
	b	_06008544
_06008504:
	add	r0, r0, #6
	add	r1, r5, #224	; 0xe0
	mov	r2, #6
	bl	FUN_06000554
	add	r0, sp, #0
	mov	r1, #1
	bl	FUN_06002544
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	moveq	r0, #1
	beq	_06008544
	ldr	r1, _0600856C	; =0x00000215
	strh	r1, [r7]
	ldrh	r0, [r0, #4]
	strh	r0, [r6]
	mov	r0, #0
_06008544:
	add	sp, sp, #516	; 0x204
	ldmia	sp!, {r4, r5, r6, r7, lr}
	bx	lr
_06008550:	.word	_0601A960
_06008554:	.word	0x00000302
_06008558:	.word	0x00000283
_0600855C:	.word	0x0000FFFF
_06008560:	.word	0x001FF621
_06008564:	.word	0x00000306
_06008568:	.word	0x00000281
_0600856C:	.word	0x00000215

	arm_func_start FUN_06008570
FUN_06008570: ; 0x06008570
	ldr	pc, _06008574	; =FUN_03807408
_06008574:	.word	FUN_03807408

	arm_func_start FUN_06008578
FUN_06008578: ; 0x06008578
	stmdb	sp!, {r4, lr}
	sub	sp, sp, #8
	ldr	r0, _0600861C	; =_0601A960
	ldr	r4, [r0, #1360]	; 0x550
	ldrh	r0, [r4]
	cmp	r0, #1
	beq	_060085B0
	bl	FUN_060001E8
	mov	r1, #5
	strh	r1, [r0]
	mov	r1, #3
	strh	r1, [r0, #2]
	bl	FUN_060001F0
	b	_06008610
_060085B0:
	add	r0, sp, #0
	add	r1, sp, #2
	bl	FUN_06008380
	cmp	r0, #0
	bne	_060085F0
	bl	FUN_060001E8
	mov	r1, #5
	strh	r1, [r0]
	mov	r1, #1
	strh	r1, [r0, #2]
	ldrh	r1, [sp]
	strh	r1, [r0, #4]
	ldrh	r1, [sp, #2]
	strh	r1, [r0, #6]
	bl	FUN_060001F0
	b	_06008610
_060085F0:
	mov	r0, #2
	strh	r0, [r4]
	bl	FUN_060001E8
	mov	r1, #5
	strh	r1, [r0]
	mov	r1, #0
	strh	r1, [r0, #2]
	bl	FUN_060001F0
_06008610:
	add	sp, sp, #8
	ldmia	sp!, {r4, lr}
	bx	lr
_0600861C:	.word	_0601A960

	arm_func_start FUN_06008620
FUN_06008620: ; 0x06008620
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #516	; 0x204
	ldr	r0, _060086C8	; =_0601A960
	ldr	r5, [r0, #1360]	; 0x550
	ldrh	r0, [r5]
	cmp	r0, #2
	beq	_06008658
	bl	FUN_060001E8
	mov	r1, #6
	strh	r1, [r0]
	mov	r1, #3
	strh	r1, [r0, #2]
	bl	FUN_060001F0
	b	_060086BC
_06008658:
	add	r0, sp, #0
	bl	FUN_06002398
	mov	r4, r0
	ldrh	r0, [r4, #4]
	cmp	r0, #0
	beq	_0600869C
	bl	FUN_060001E8
	mov	r1, #6
	strh	r1, [r0]
	mov	r1, #1
	strh	r1, [r0, #2]
	ldr	r1, _060086CC	; =0x00000301
	strh	r1, [r0, #4]
	ldrh	r1, [r4, #4]
	strh	r1, [r0, #6]
	bl	FUN_060001F0
	b	_060086BC
_0600869C:
	mov	r0, #1
	strh	r0, [r5]
	bl	FUN_060001E8
	mov	r1, #6
	strh	r1, [r0]
	mov	r1, #0
	strh	r1, [r0, #2]
	bl	FUN_060001F0
_060086BC:
	add	sp, sp, #516	; 0x204
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_060086C8:	.word	_0601A960
_060086CC:	.word	0x00000301

	arm_func_start FUN_060086D0
FUN_060086D0: ; 0x060086D0
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub	sp, sp, #4
	mov	r9, r0
	mov	r8, r1
	ldr	r0, _060089C4	; =_0601A960
	ldr	r4, [r0, #1360]	; 0x550
	mov	r6, #0
	ldr	r5, [r9]
	ldrh	r1, [r4]
	ldr	r0, _060089C8	; =0x0000FFF7
	add	r0, r1, r0
	mov	r0, r0, lsl #16
	mov	r0, r0, lsr #16
	cmp	r0, #1
	bhi	_06008718
	ands	r0, r5, #11264	; 0x2c00
	movne	r6, #3
	bicne	r5, r5, #11264	; 0x2c00
_06008718:
	bl	FUN_060001A4
	mov	r7, r0
	cmp	r8, #0
	beq	_060087A0
	ldr	r0, _060089CC	; =0x00003FFF
	str	r0, [r8]
	ldrh	r0, [r4, #90]	; 0x5a
	strh	r0, [r8, #4]
	ldrh	r0, [r4, #90]	; 0x5a
	strh	r0, [r8, #6]
	ldrh	r0, [r4, #90]	; 0x5a
	strh	r0, [r8, #8]
	ldrh	r0, [r4, #48]	; 0x30
	strh	r0, [r8, #10]
	ldrh	r0, [r4, #50]	; 0x32
	strh	r0, [r8, #12]
	ldrh	r0, [r4, #68]	; 0x44
	strh	r0, [r8, #14]
	ldrh	r0, [r4, #70]	; 0x46
	strh	r0, [r8, #16]
	ldrh	r0, [r4, #64]	; 0x40
	strh	r0, [r8, #18]
	ldrh	r0, [r4, #66]	; 0x42
	strh	r0, [r8, #20]
	ldrh	r0, [r4, #152]	; 0x98
	strh	r0, [r8, #22]
	ldrh	r0, [r4, #146]	; 0x92
	strb	r0, [r8, #24]
	ldrh	r0, [r4, #148]	; 0x94
	strb	r0, [r8, #25]
	ldrh	r0, [r4, #154]	; 0x9a
	strb	r0, [r8, #26]
	ldrh	r0, [r4, #156]	; 0x9c
	strb	r0, [r8, #27]
_060087A0:
	ands	r0, r5, #1
	beq	_060087B8
	ldrh	r0, [r9, #4]
	cmp	r0, #0
	moveq	r0, #16
	strh	r0, [r4, #88]	; 0x58
_060087B8:
	ands	r0, r5, #2
	beq	_060087DC
	ldrh	r1, [r9, #6]
	cmp	r1, #0
	moveq	r1, #16
	strh	r1, [r4, #90]	; 0x5a
	ldrsh	r0, [r4, #98]	; 0x62
	cmp	r0, r1
	strgth	r1, [r4, #98]	; 0x62
_060087DC:
	ands	r0, r5, #4
	beq	_06008800
	ldrh	r1, [r9, #8]
	cmp	r1, #0
	moveq	r1, #16
	strh	r1, [r4, #92]	; 0x5c
	ldrsh	r0, [r4, #98]	; 0x62
	cmp	r0, r1
	strgth	r1, [r4, #98]	; 0x62
_06008800:
	ands	r0, r5, #8
	beq	_06008830
	ldrh	r0, [r9, #10]
	add	r1, r0, #1
	bic	r1, r1, #1
	mov	r1, r1, lsl #16
	mov	r2, r1, lsr #16
	ldrh	r1, [r4, #52]	; 0x34
	cmp	r2, r1
	movhi	r6, #6
	bhi	_06008830
	bl	FUN_06000030
_06008830:
	ands	r0, r5, #16
	beq	_06008860
	ldrh	r0, [r9, #12]
	add	r1, r0, #1
	bic	r1, r1, #1
	mov	r1, r1, lsl #16
	mov	r2, r1, lsr #16
	ldrh	r1, [r4, #54]	; 0x36
	cmp	r2, r1
	movhi	r6, #6
	bhi	_06008860
	bl	FUN_06000000
_06008860:
	ands	r0, r5, #32
	beq	_060088B4
	ldrh	r8, [r9, #14]
	ldr	r0, _060089D0	; =0x00002710
	cmp	r8, r0
	movhi	r6, #6
	bhi	_060088B4
	strh	r8, [r4, #68]	; 0x44
	mov	r1, #0
	ldr	r0, _060089D4	; =0x000082EA
	umull	r3, r2, r8, r0
	mla	r2, r8, r1, r2
	mla	r2, r1, r0, r2
	mov	r0, r2, lsr #6
	mov	r1, r3, lsr #6
	orr	r1, r1, r2, lsl #26
	mov	r2, r0, lsr #10
	mov	r1, r1, lsr #10
	orr	r1, r1, r0, lsl #22
	str	r1, [r4, #72]	; 0x48
	str	r2, [r4, #76]	; 0x4c
_060088B4:
	ands	r0, r5, #64	; 0x40
	beq	_06008908
	ldrh	r8, [r9, #16]
	ldr	r0, _060089D0	; =0x00002710
	cmp	r8, r0
	movhi	r6, #6
	bhi	_06008908
	strh	r8, [r4, #70]	; 0x46
	mov	r1, #0
	ldr	r0, _060089D4	; =0x000082EA
	umull	r3, r2, r8, r0
	mla	r2, r8, r1, r2
	mla	r2, r1, r0, r2
	mov	r0, r2, lsr #6
	mov	r1, r3, lsr #6
	orr	r1, r1, r2, lsl #26
	mov	r2, r0, lsr #10
	mov	r1, r1, lsr #10
	orr	r1, r1, r0, lsl #22
	str	r1, [r4, #80]	; 0x50
	str	r2, [r4, #84]	; 0x54
_06008908:
	ands	r0, r5, #128	; 0x80
	beq	_0600893C
	ldrh	r1, [r9, #18]
	cmp	r1, #190	; 0xbe
	bls	_06008930
	cmp	r1, #220	; 0xdc
	bcc	_06008938
	ldr	r0, _060089D8	; =0x00000106
	cmp	r1, r0
	bhi	_06008938
_06008930:
	strh	r1, [r4, #64]	; 0x40
	b	_0600893C
_06008938:
	mov	r6, #6
_0600893C:
	ands	r0, r5, #256	; 0x100
	beq	_06008970
	ldrh	r1, [r9, #20]
	cmp	r1, #190	; 0xbe
	bls	_06008964
	cmp	r1, #220	; 0xdc
	bcc	_0600896C
	ldr	r0, _060089D8	; =0x00000106
	cmp	r1, r0
	bhi	_0600896C
_06008964:
	strh	r1, [r4, #66]	; 0x42
	b	_06008970
_0600896C:
	mov	r6, #6
_06008970:
	ands	r0, r5, #512	; 0x200
	ldrneh	r0, [r9, #22]
	strneh	r0, [r4, #152]	; 0x98
	ands	r0, r5, #1024	; 0x400
	ldrneb	r0, [r9, #24]
	strneh	r0, [r4, #146]	; 0x92
	ands	r0, r5, #2048	; 0x800
	ldrneb	r0, [r9, #25]
	strneh	r0, [r4, #148]	; 0x94
	ands	r0, r5, #4096	; 0x1000
	ldrneb	r0, [r9, #26]
	strneh	r0, [r4, #154]	; 0x9a
	ands	r0, r5, #8192	; 0x2000
	ldrneb	r0, [r9, #27]
	strneh	r0, [r4, #156]	; 0x9c
	mov	r0, r7
	bl	FUN_060001AC
	mov	r0, r6
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, lr}
	bx	lr
_060089C4:	.word	_0601A960
_060089C8:	.word	0x0000FFF7
_060089CC:	.word	0x00003FFF
_060089D0:	.word	0x00002710
_060089D4:	.word	0x000082EA
_060089D8:	.word	0x00000106

	arm_func_start FUN_060089DC
FUN_060089DC: ; 0x060089DC
	stmdb	sp!, {r4, r5, r6, lr}
	sub	sp, sp, #32
	mov	r6, r0
	add	r0, r6, #4
	add	r1, sp, #0
	bl	FUN_060086D0
	mov	r5, r0
	bl	FUN_060001E8
	mov	r4, r0
	mov	r0, #35	; 0x23
	strh	r0, [r4]
	strh	r5, [r4, #2]
	ldr	r0, [r6, #4]
	str	r0, [r4, #4]
	add	r0, sp, #0
	add	r1, r4, #8
	mov	r2, #28
	bl	FUN_06000554
	mov	r0, r4
	bl	FUN_060001F0
	add	sp, sp, #32
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr

	arm_func_start FUN_06008A38
FUN_06008A38: ; 0x06008A38
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	mov	r5, r0
	mov	r4, r1
	bl	FUN_060001E8
	mov	r1, #36	; 0x24
	strh	r1, [r0]
	mov	r1, #1
	strh	r1, [r0, #2]
	strh	r5, [r0, #4]
	strh	r4, [r0, #6]
	bl	FUN_060001F0
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr

	arm_func_start FUN_06008A74
FUN_06008A74: ; 0x06008A74
	stmfd	sp!, {lr}
	sub	sp, sp, #516	; 0x204
	mov	r1, r0
	add	r0, sp, #0
	ldr	r1, [r1, #4]
	mov	r1, r1, lsl #16
	mov	r1, r1, lsr #16
	bl	FUN_06002484
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_06008AAC
	ldr	r0, _06008AD0	; =0x00000242
	bl	FUN_06008A38
	b	_06008AC4
_06008AAC:
	bl	FUN_060001E8
	mov	r1, #36	; 0x24
	strh	r1, [r0]
	mov	r1, #0
	strh	r1, [r0, #2]
	bl	FUN_060001F0
_06008AC4:
	add	sp, sp, #516	; 0x204
	ldmfd	sp!, {lr}
	bx	lr
_06008AD0:	.word	0x00000242

	arm_func_start FUN_06008AD4
FUN_06008AD4: ; 0x06008AD4
	mov	r1, #1
	mov	r2, #0
	ldr	ip, _06008AE4	; =FUN_06004D28
	bx	ip
_06008AE4:	.word	FUN_06004D28

	arm_func_start FUN_06008AE8
FUN_06008AE8: ; 0x06008AE8
	stmdb	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #564	; 0x234
	mov	r7, r0
	ldr	r0, _06008C64	; =_0601A960
	ldr	r4, [r0, #1360]	; 0x550
	add	r6, sp, #48	; 0x30
	bl	FUN_060001E8
	mov	r5, r0
	mov	r1, #40	; 0x28
	strh	r1, [r5]
	ldrh	r1, [r4]
	cmp	r1, #11
	beq	_06008B2C
	mov	r1, #3
	strh	r1, [r5, #2]
	bl	FUN_060001F0
	b	_06008C58
_06008B2C:
	ldr	r0, [r7, #4]
	cmp	r0, #1
	moveq	r1, #1
	movne	r1, #0
	mov	r0, r6
	mov	r1, r1, lsl #16
	mov	r1, r1, lsr #16
	mov	r2, #0
	mov	r3, #1
	bl	FUN_06002EB0
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_06008B80
	mov	r1, #1
	strh	r1, [r5, #2]
	strh	r1, [r5, #4]
	ldrh	r0, [r0, #4]
	strh	r0, [r5, #6]
	mov	r0, r5
	bl	FUN_060001F0
	b	_06008C58
_06008B80:
	ldr	r0, _06008C64	; =_0601A960
	ldr	r4, [r0, #1360]	; 0x550
	ldr	r0, _06008C68	; =0x0000018A
	add	r0, r4, r0
	add	r1, r4, #162	; 0xa2
	mov	r2, #6
	bl	FUN_06000554
	add	r0, sp, #48	; 0x30
	str	r0, [r4, #168]	; 0xa8
	mov	r0, #0
	strh	r0, [r4, #172]	; 0xac
	mov	r1, #1
	str	r1, [r4, #24]
	add	r1, sp, #0
	mov	r2, #48	; 0x30
	bl	FUN_0600055C
	mov	r0, #0
	strh	r0, [sp]
	strh	r0, [sp, #6]
	add	r0, r4, #256	; 0x100
	ldrh	r0, [r0, #236]	; 0xec
	cmp	r0, #2
	moveq	r0, #20
	movne	r0, #10
	strb	r0, [sp, #14]
	ldr	r0, _06008C68	; =0x0000018A
	add	r0, r4, r0
	add	r1, sp, #24
	mov	r2, #6
	bl	FUN_06000554
	add	r0, r4, #224	; 0xe0
	add	r1, sp, #30
	mov	r2, #6
	bl	FUN_06000554
	add	r0, sp, #48	; 0x30
	str	r0, [sp, #44]	; 0x2c
	add	r1, sp, #0
	bl	FUN_060029D0
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_06008C48
	mov	r1, #1
	strh	r1, [r5, #2]
	mov	r1, #256	; 0x100
	strh	r1, [r5, #4]
	ldrh	r0, [r0, #4]
	strh	r0, [r5, #6]
	mov	r0, r5
	bl	FUN_060001F0
	b	_06008C58
_06008C48:
	mov	r0, #0
	strh	r0, [r5, #2]
	mov	r0, r5
	bl	FUN_060001F0
_06008C58:
	add	sp, sp, #564	; 0x234
	ldmia	sp!, {r4, r5, r6, r7, lr}
	bx	lr
_06008C64:	.word	_0601A960
_06008C68:	.word	0x0000018A

	arm_func_start FUN_06008C6C
FUN_06008C6C: ; 0x06008C6C
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	bl	FUN_060001E8
	mov	r1, #41	; 0x29
	strh	r1, [r0]
	mov	r1, #4
	strh	r1, [r0, #2]
	bl	FUN_060001F0
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr

	arm_func_start FUN_06008C98
FUN_06008C98: ; 0x06008C98
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	bl	FUN_060001E8
	mov	r1, #42	; 0x2a
	strh	r1, [r0]
	mov	r1, #4
	strh	r1, [r0, #2]
	bl	FUN_060001F0
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr

	arm_func_start FUN_06008CC4
FUN_06008CC4: ; 0x06008CC4
	stmdb	sp!, {r4, lr}
	bl	FUN_06008D18
	mov	r4, r0
	bl	FUN_06008D08
	cmp	r0, #1
	beq	_06008D00
	mov	r0, #2
	mov	r1, #22
	bl	FUN_06009078
	mov	r0, r4
	bl	FUN_06008D10
_06008CF0:
	mov	r0, r4
	bl	FUN_06008D08
	cmp	r0, #0
	beq	_06008CF0
_06008D00:
	ldmia	sp!, {r4, lr}
	bx	lr

	arm_func_start FUN_06008D08
FUN_06008D08: ; 0x06008D08
	ldr	pc, _06008D0C	; =FUN_037F90B8
_06008D0C:	.word	FUN_037F90B8

	arm_func_start FUN_06008D10
FUN_06008D10: ; 0x06008D10
	ldr	pc, _06008D14	; =FUN_037F90CC
_06008D14:	.word	FUN_037F90CC

	arm_func_start FUN_06008D18
FUN_06008D18: ; 0x06008D18
	ldr	r0, _06008D28	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #24
	bx	lr
_06008D28:	.word	0x0380FFF4

	arm_func_start FUN_06008D2C
FUN_06008D2C: ; 0x06008D2C
	stmdb	sp!, {r4, lr}
	sub	sp, sp, #16
	mov	r4, r0
	ldr	r1, [r4]
	ldr	r0, _06008EF0	; =0x0380FFF4
	str	r1, [r0]
	mov	r0, #0
	ldr	r2, _06008EF4	; =0x00000694
	bl	FUN_06008F08
	bl	FUN_06008F10
	ldr	r2, _06008EF0	; =0x0380FFF4
	ldr	r1, [r2]
	str	r0, [r1, #788]	; 0x314
	ldr	r1, [r4, #24]
	ldr	r0, [r2]
	str	r1, [r0, #780]	; 0x30c
	ldr	r0, [r4, #28]
	mov	r1, r0, lsr #1
	ldr	r0, [r2]
	str	r1, [r0, #784]	; 0x310
	ldr	r1, [r2]
	ldr	r0, [r1, #784]	; 0x310
	cmp	r0, #0
	mvneq	r0, #0
	streq	r0, [r1, #784]	; 0x310
	add	r0, r4, #32
	bl	FUN_06009334
	bl	FUN_06018FB0
	ldr	r1, _06008EF8	; =0x04000304
	ldrh	r0, [r1]
	orr	r0, r0, #2
	strh	r0, [r1]
	mov	r1, #48	; 0x30
	ldr	r0, _06008EFC	; =0x04000206
	strh	r1, [r0]
	mov	r1, #3
	ldr	r2, _06008EF0	; =0x0380FFF4
	ldr	r0, [r2]
	str	r1, [r0, #1676]	; 0x68c
	mov	r0, #60	; 0x3c
	mov	r1, #2
	ldr	r3, [r2]
	ldr	r2, _06008F00	; =0x00000692
	add	r2, r3, r2
	bl	FUN_0601910C
	mov	r0, #62	; 0x3e
	mov	r1, #2
	ldr	r2, _06008EF0	; =0x0380FFF4
	ldr	r2, [r2]
	add	r2, r2, #1680	; 0x690
	bl	FUN_0601910C
	ldr	r1, [r4, #16]
	ldr	r2, _06008EF0	; =0x0380FFF4
	ldr	r0, [r2]
	str	r1, [r0, #776]	; 0x308
	ldr	r1, [r4, #20]
	ldr	r0, [r2]
	str	r1, [r0, #772]	; 0x304
	ldr	r0, [r4, #48]	; 0x30
	mov	r1, #28
	bl	FUN_06003B68
	mov	r1, r0
	ldr	r0, [r4, #44]	; 0x2c
	bl	FUN_0600C338
	bl	FUN_060091F8
	bl	FUN_0600F858
	bl	FUN_0600FC8C
	bl	FUN_0600EA9C
	bl	FUN_0600A0D0
	add	r0, sp, #8
	bl	FUN_060191BC
	cmp	r0, #0
	beq	_06008E6C
	ldr	r0, _06008EF0	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r1, [r0, #62]	; 0x3e
	orr	r1, r1, #128	; 0x80
	strh	r1, [r0, #62]	; 0x3e
	b	_06008E94
_06008E6C:
	bl	FUN_0600A36C
	bl	FUN_0600C834
	bl	FUN_0600B2D8
	bl	FUN_0600A334
	bl	FUN_0600A134
	bl	FUN_0600C6B0
	bl	FUN_0600C3B8
	bl	FUN_0600A2C4
	bl	FUN_0600B80C
	bl	FUN_0600B36C
_06008E94:
	ldr	r0, [r4, #8]
	str	r0, [sp]
	ldr	r0, [r4, #12]
	str	r0, [sp, #4]
	ldr	r0, _06008EF0	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #24
	ldr	r1, _06008F04	; =FUN_06009138
	mov	r2, #0
	ldr	r3, [r4, #4]
	bl	FUN_06000974
	ldr	r0, _06008EF0	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #24
	bl	FUN_0600097C
	bl	FUN_0600CA10
	ldr	r0, _06008EF0	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #62]	; 0x3e
	add	sp, sp, #16
	ldmia	sp!, {r4, lr}
	bx	lr
_06008EF0:	.word	0x0380FFF4
_06008EF4:	.word	0x00000694
_06008EF8:	.word	0x04000304
_06008EFC:	.word	0x04000206
_06008F00:	.word	0x00000692
_06008F04:	.word	FUN_06009138

	arm_func_start FUN_06008F08
FUN_06008F08: ; 0x06008F08
	ldr	pc, _06008F0C	; =FUN_037FB360
_06008F0C:	.word	FUN_037FB360

	arm_func_start FUN_06008F10
FUN_06008F10: ; 0x06008F10
	ldr	pc, _06008F14	; =FUN_037F8A24
_06008F14:	.word	FUN_037F8A24

	arm_func_start FUN_06008F18
FUN_06008F18: ; 0x06008F18
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	bl	FUN_06009E28
	bl	FUN_0600B36C
	bl	FUN_0600A334
	bl	FUN_060092D8
	bl	FUN_060091F8
	ldr	r0, _06008F68	; =0x0380FFF4
	ldr	r1, [r0]
	ldr	r0, [r1, #796]	; 0x31c
	add	r1, r1, #768	; 0x300
	ldrh	r1, [r1, #32]
	bl	FUN_0600C338
	bl	FUN_0600F858
	bl	FUN_0600FC8C
	bl	FUN_0600EA9C
	bl	FUN_0600B80C
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_06008F68:	.word	0x0380FFF4

	arm_func_start FUN_06008F6C
FUN_06008F6C: ; 0x06008F6C
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	ldr	r1, [r0]
	cmp	r1, #0
	beq	_06008F9C
	ldr	r0, _06008FA8	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #512	; 0x200
	bl	FUN_060095B4
	mov	r0, #2
	mov	r1, #11
	bl	FUN_06009078
_06008F9C:
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_06008FA8:	.word	0x0380FFF4

	arm_func_start FUN_06008FAC
FUN_06008FAC: ; 0x06008FAC
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	ldr	r0, _06008FEC	; =0x0380FFF4
	ldr	r0, [r0]
	ldr	r0, [r0, #776]	; 0x308
	add	r1, sp, #0
	mov	r2, #1
	bl	FUN_06000780
	add	r0, sp, #0
	bl	FUN_06008F6C
	mov	r0, #3
	mov	r1, #12
	bl	FUN_06009078
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_06008FEC:	.word	0x0380FFF4

	arm_func_start FUN_06008FF0
FUN_06008FF0: ; 0x06008FF0
	stmdb	sp!, {r4, r5, r6, lr}
	mov	r4, r0
	ldr	r0, _0600905C	; =0x0380FFF4
	ldr	r5, [r0]
	ldr	r0, _06009060	; =0x01000010
	bl	FUN_06009068
	mov	r6, r4, lsl #1
	ldrh	r4, [r5, r6]
	ldr	r2, _06009064	; =0x0000FFFF
	cmp	r4, r2
	beq	_0600904C
	add	lr, r5, #188	; 0xbc
	mov	ip, #0
	mov	r3, r4, lsl #3
	add	r1, lr, r4, lsl #3
	strh	ip, [r1, #2]
	ldrh	r1, [lr, r3]
	cmp	r1, r2
	streqh	r2, [r5, r6]
	addeq	r1, r5, r6
	streqh	r2, [r1, #8]
	strneh	r1, [r5, r6]
	strneh	r2, [lr, r3]
_0600904C:
	bl	FUN_06009070
	mov	r0, r4
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr
_0600905C:	.word	0x0380FFF4
_06009060:	.word	0x01000010
_06009064:	.word	0x0000FFFF

	arm_func_start FUN_06009068
FUN_06009068: ; 0x06009068
	ldr	pc, _0600906C	; =FUN_037F8858
_0600906C:	.word	FUN_037F8858

	arm_func_start FUN_06009070
FUN_06009070: ; 0x06009070
	ldr	pc, _06009074	; =FUN_037F8894
_06009074:	.word	FUN_037F8894

	arm_func_start FUN_06009078
FUN_06009078: ; 0x06009078
	stmdb	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #4
	mov	r7, r0
	mov	r6, r1
	ldr	r0, _0600912C	; =0x0380FFF4
	ldr	r5, [r0]
	add	r4, r5, #188	; 0xbc
	ldr	r0, _06009130	; =0x01000010
	bl	FUN_06009068
	mov	ip, r6, lsl #3
	add	r2, r4, r6, lsl #3
	ldrh	r1, [r2, #2]
	cmp	r1, #0
	bne	_060090F0
	mov	r1, #1
	strh	r1, [r2, #2]
	ldr	r3, _06009134	; =0x0000FFFF
	strh	r3, [r4, ip]
	mov	r2, r7, lsl #1
	add	r1, r5, r7, lsl #1
	ldrh	r1, [r1, #8]
	cmp	r1, r3
	streqh	r6, [r5, r2]
	addne	r1, r5, r1, lsl #3
	strneh	r6, [r1, #188]	; 0xbc
	add	r1, r5, r7, lsl #1
	strh	r6, [r1, #8]
	ldrh	r1, [r5, #16]
	cmp	r7, r1
	strlth	r7, [r5, #16]
_060090F0:
	bl	FUN_06009070
	cmp	r7, #3
	beq	_06009120
	ldrh	r0, [r5, #18]
	cmp	r0, #3
	bne	_06009120
	ldr	r0, _0600912C	; =0x0380FFF4
	ldr	r0, [r0]
	ldr	r0, [r0, #776]	; 0x308
	mov	r1, #0
	mov	r2, r1
	bl	FUN_060006F8
_06009120:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, lr}
	bx	lr
_0600912C:	.word	0x0380FFF4
_06009130:	.word	0x01000010
_06009134:	.word	0x0000FFFF

	arm_func_start FUN_06009138
FUN_06009138: ; 0x06009138
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}

	arm_func_start FUN_0600913C
FUN_0600913C: ; 0x0600913C
	sub	sp, sp, #8
	ldr	r8, _060091EC	; =0x0380FFF4
	ldr	r9, [r8]
	mov	r7, #0
	strh	r7, [r9, #16]
	strh	r7, [r9, #20]
	add	r6, sp, #0
	ldr	r5, _060091F0	; =0x01000010
	add	r4, r9, #16
	ldr	sl, _060091F4	; =0x0000FFFF
_06009164:
	ldr	r0, [r8]
	ldr	r0, [r0, #776]	; 0x308
	mov	r1, r6
	mov	r2, r7
	bl	FUN_06000780
	cmp	r0, #0
	beq	_06009188
	mov	r0, r6
	bl	FUN_06008F6C
_06009188:
	mov	r0, r5
	bl	FUN_06009068
	ldrh	r1, [r9, #16]
	strh	r1, [r9, #18]
	ldrh	r1, [r9, #18]
	mov	r1, r1, lsl #1
	ldrh	r1, [r9, r1]
	cmp	r1, sl
	bne	_060091C0
	ldrh	r1, [r4]
	add	r1, r1, #1
	strh	r1, [r4]
	bl	FUN_06009070
	b	_06009164
_060091C0:
	bl	FUN_06009070
	ldrh	r0, [r9, #18]
	bl	FUN_06008FF0
	strh	r0, [r9, #20]
	ldrh	r0, [r9, #20]
	add	r0, r9, r0, lsl #3
	ldr	r0, [r0, #192]	; 0xc0
	mov	lr, pc
	bx	r0
	strh	sl, [r9, #20]
	b	_06009164
_060091EC:	.word	0x0380FFF4
_060091F0:	.word	0x01000010
_060091F4:	.word	0x0000FFFF

	arm_func_start FUN_060091F8
FUN_060091F8: ; 0x060091F8
	stmdb	sp!, {r4, lr}
	ldr	r0, _06009278	; =0x0380FFF4
	ldr	r4, [r0]
	mov	r3, #0
	strh	r3, [r4, #16]
	strh	r3, [r4, #18]
	ldr	r2, _0600927C	; =0x0000FFFF
_06009214:
	mov	r1, r3, lsl #1
	add	r0, r4, r3, lsl #1
	strh	r2, [r0, #8]
	ldrh	r0, [r0, #8]
	strh	r0, [r4, r1]
	add	r3, r3, #1
	cmp	r3, #4
	bcc	_06009214
	mov	lr, #0
	ldr	ip, _0600927C	; =0x0000FFFF
	mov	r2, lr
	ldr	r1, _06009280	; =_06019320
_06009244:
	add	r3, r4, lr, lsl #3
	strh	ip, [r3, #188]	; 0xbc
	strh	r2, [r3, #190]	; 0xbe
	ldr	r0, [r1, lr, lsl #2]
	str	r0, [r3, #192]	; 0xc0
	add	lr, lr, #1
	cmp	lr, #24
	bcc	_06009244
	mov	r0, #3
	mov	r1, #12
	bl	FUN_06009078
	ldmia	sp!, {r4, lr}
	bx	lr
_06009278:	.word	0x0380FFF4
_0600927C:	.word	0x0000FFFF
_06009280:	.word	_06019320

	arm_func_start FUN_06009284
FUN_06009284: ; 0x06009284
	stmdb	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #4
	mov	r7, r0
	ldr	r6, [r7]
	ldrh	r0, [r7, #8]
	cmp	r0, #0
	beq	_060092CC
	mvn	r4, #0
	b	_060092C4
_060092A8:
	mov	r0, r6
	bl	FUN_06009434
	mov	r5, r0
	mov	r0, r7
	mov	r1, r6
	bl	FUN_060096A0
	mov	r6, r5
_060092C4:
	cmp	r6, r4
	bne	_060092A8
_060092CC:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, lr}
	bx	lr

	arm_func_start FUN_060092D8
FUN_060092D8: ; 0x060092D8
	stmdb	sp!, {r4, lr}
	ldr	r0, _06009330	; =0x0380FFF4
	ldr	r0, [r0]
	add	r4, r0, #380	; 0x17c
	add	r0, r4, #24
	bl	FUN_06009284
	add	r0, r4, #36	; 0x24
	bl	FUN_06009284
	add	r0, r4, #48	; 0x30
	bl	FUN_06009284
	add	r0, r4, #60	; 0x3c
	bl	FUN_06009284
	add	r0, r4, #72	; 0x48
	bl	FUN_06009284
	add	r0, r4, #84	; 0x54
	bl	FUN_06009284
	add	r0, r4, #96	; 0x60
	bl	FUN_06009284
	add	r0, r4, #108	; 0x6c
	bl	FUN_06009284
	ldmia	sp!, {r4, lr}
	bx	lr
_06009330:	.word	0x0380FFF4

	arm_func_start FUN_06009334
FUN_06009334: ; 0x06009334
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	ldr	r1, _06009414	; =0x0380FFF4
	ldr	r2, [r1]
	add	r5, r2, #380	; 0x17c
	add	r4, r2, #836	; 0x344
	ldr	r1, [r0]
	str	r1, [r2, #380]	; 0x17c
	ldr	r1, [r0, #4]
	str	r1, [r5, #4]
	ldr	r0, [r0, #8]
	str	r0, [r5, #8]
	add	r0, r5, #12
	mov	r1, #2
	bl	FUN_06009418
	add	r0, r5, #24
	mov	r1, #3
	bl	FUN_06009418
	add	r0, r5, #36	; 0x24
	mov	r1, #4
	bl	FUN_06009418
	add	r0, r5, #48	; 0x30
	mov	r1, #5
	bl	FUN_06009418
	add	r0, r5, #60	; 0x3c
	mov	r1, #6
	bl	FUN_06009418
	add	r0, r5, #72	; 0x48
	mov	r1, #7
	bl	FUN_06009418
	add	r0, r5, #84	; 0x54
	mov	r1, #8
	bl	FUN_06009418
	add	r0, r5, #96	; 0x60
	mov	r1, #9
	bl	FUN_06009418
	add	r0, r5, #108	; 0x6c
	mov	r1, #10
	bl	FUN_06009418
	add	r0, r5, #120	; 0x78
	mov	r1, #11
	bl	FUN_06009418
	add	r0, r5, #132	; 0x84
	mov	r1, #12
	bl	FUN_06009418
	add	r0, r5, #12
	mov	r1, #129	; 0x81
	bl	FUN_06009724
	add	r0, r0, #12
	str	r0, [r4, #156]	; 0x9c
	mov	r0, #0
	strh	r0, [r4, #160]	; 0xa0
	strh	r0, [r4, #164]	; 0xa4
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_06009414:	.word	0x0380FFF4

	arm_func_start FUN_06009418
FUN_06009418: ; 0x06009418
	mvn	r2, #0
	str	r2, [r0]
	str	r2, [r0, #4]
	mov	r2, #0
	strh	r2, [r0, #8]
	strh	r1, [r0, #10]
	bx	lr

	arm_func_start FUN_06009434
FUN_06009434: ; 0x06009434
	ldr	r0, [r0, #4]
	bx	lr

	arm_func_start FUN_0600943C
FUN_0600943C: ; 0x0600943C
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	mov	r5, r0
	mov	r4, r1
	ldrh	r1, [r4, #10]
	ldr	r0, _0600951C	; =0x0000BF1D
	cmp	r1, r0
	movne	r0, #1
	bne	_06009510
	ldrh	r1, [r4, #8]
	ldrh	r0, [r5, #10]
	cmp	r1, r0
	movne	r0, #2
	bne	_06009510
	mov	r0, #16777216	; 0x1000000
	bl	FUN_06009068
	ldrh	r1, [r5, #8]
	sub	r1, r1, #1
	strh	r1, [r5, #8]
	ldrh	r1, [r5, #8]
	cmp	r1, #0
	mvneq	r1, #0
	streq	r1, [r5]
	streq	r1, [r5, #4]
	beq	_06009500
	ldr	r1, [r5]
	cmp	r4, r1
	bne	_060094C4
	ldr	r1, [r4, #4]
	str	r1, [r5]
	mvn	r2, #0
	ldr	r1, [r5]
	str	r2, [r1]
	b	_06009500
_060094C4:
	ldr	r1, [r5, #4]
	cmp	r4, r1
	bne	_060094E8
	ldr	r1, [r4]
	str	r1, [r5, #4]
	mvn	r2, #0
	ldr	r1, [r5, #4]
	str	r2, [r1, #4]
	b	_06009500
_060094E8:
	ldr	r2, [r4]
	ldr	r1, [r4, #4]
	str	r2, [r1]
	ldr	r2, [r4, #4]
	ldr	r1, [r4]
	str	r2, [r1, #4]
_06009500:
	mov	r1, #0
	strh	r1, [r4, #8]
	bl	FUN_06009070
	mov	r0, #0
_06009510:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_0600951C:	.word	0x0000BF1D

	arm_func_start FUN_06009520
FUN_06009520: ; 0x06009520
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	mov	r5, r0
	mov	r4, r1
	ldrh	r1, [r4, #10]
	ldr	r0, _060095B0	; =0x0000BF1D
	cmp	r1, r0
	movne	r0, #1
	bne	_060095A4
	ldrh	r0, [r4, #8]
	cmp	r0, #0
	movne	r0, #2
	bne	_060095A4
	mov	r0, #16777216	; 0x1000000
	bl	FUN_06009068
	ldrh	r1, [r5, #8]
	cmp	r1, #0
	mvneq	r1, #0
	streq	r1, [r4]
	streq	r4, [r5]
	ldrne	r1, [r5, #4]
	strne	r1, [r4]
	strne	r4, [r1, #4]
	mvn	r1, #0
	str	r1, [r4, #4]
	ldrh	r1, [r5, #10]
	strh	r1, [r4, #8]
	str	r4, [r5, #4]
	ldrh	r1, [r5, #8]
	add	r1, r1, #1
	strh	r1, [r5, #8]
	bl	FUN_06009070
	mov	r0, #0
_060095A4:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_060095B0:	.word	0x0000BF1D

	arm_func_start FUN_060095B4
FUN_060095B4: ; 0x060095B4
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	mov	r5, r0
	mov	r4, r1
	mov	r0, #16777216	; 0x1000000
	bl	FUN_06009068
	ldrh	r1, [r5, #8]
	cmp	r1, #0
	mvneq	r1, #0
	streq	r1, [r4]
	streq	r4, [r5]
	ldrne	r1, [r5, #4]
	strne	r1, [r4]
	strne	r4, [r1, #4]
	mvn	r1, #0
	str	r1, [r4, #4]
	ldrh	r1, [r5, #10]
	strh	r1, [r4, #8]
	ldr	r1, _06009628	; =0x0000BF1D
	strh	r1, [r4, #10]
	str	r4, [r5, #4]
	ldrh	r1, [r5, #8]
	add	r1, r1, #1
	strh	r1, [r5, #8]
	bl	FUN_06009070
	mov	r0, #0
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_06009628:	.word	0x0000BF1D

	arm_func_start FUN_0600962C
FUN_0600962C: ; 0x0600962C
	stmdb	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #4
	mov	r5, r0
	mov	r7, r1
	mov	r6, r2
	ldrh	r1, [r6, #10]
	ldr	r0, _0600969C	; =0x0000BF1D
	cmp	r1, r0
	movne	r0, #1
	bne	_06009690
	mov	r0, #16777216	; 0x1000000
	bl	FUN_06009068
	mov	r4, r0
	mov	r0, r5
	mov	r1, r6
	bl	FUN_0600943C
	movs	r5, r0
	bne	_06009684
	mov	r0, r7
	mov	r1, r6
	bl	FUN_06009520
	mov	r5, r0
_06009684:
	mov	r0, r4
	bl	FUN_06009070
	mov	r0, r5
_06009690:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, lr}
	bx	lr
_0600969C:	.word	0x0000BF1D

	arm_func_start FUN_060096A0
FUN_060096A0: ; 0x060096A0
	stmdb	sp!, {r4, r5, r6, lr}
	mov	r4, r1
	ldr	r2, _0600971C	; =0x0380FFF4
	ldr	r2, [r2]
	add	r6, r2, #380	; 0x17c
	ldrh	r3, [r4, #10]
	ldr	r2, _06009720	; =0x0000BF1D
	cmp	r3, r2
	movne	r0, #1
	bne	_06009714
	bl	FUN_0600943C
	movs	r5, r0
	bne	_06009710
	ldr	r0, [r6]
	cmp	r0, #0
	beq	_060096EC
	cmp	r0, #1
	beq	_06009700
	b	_06009710
_060096EC:
	ldr	r0, [r6, #4]
	ldr	r1, [r6, #8]
	mov	r2, r4
	bl	FUN_06001F8C
	b	_06009710
_06009700:
	mov	r0, r4
	ldr	r1, [r6, #8]
	mov	lr, pc
	bx	r1
_06009710:
	mov	r0, r5
_06009714:
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr
_0600971C:	.word	0x0380FFF4
_06009720:	.word	0x0000BF1D

	arm_func_start FUN_06009724
FUN_06009724: ; 0x06009724
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	mov	r5, r0
	ldr	r0, _060097C4	; =0x0380FFF4
	ldr	r0, [r0]
	add	r3, r0, #380	; 0x17c
	cmp	r1, #0
	moveq	r0, #0
	beq	_060097B8
	add	r2, r1, #12
	ldr	r0, [r3]
	cmp	r0, #0
	beq	_06009764
	cmp	r0, #1
	beq	_06009778
	b	_0600978C
_06009764:
	ldr	r0, [r3, #4]
	ldr	r1, [r3, #8]
	bl	FUN_060014F4
	mov	r4, r0
	b	_0600978C
_06009778:
	mov	r0, r2
	ldr	r1, [r3, #4]
	mov	lr, pc
	bx	r1
	mov	r4, r0
_0600978C:
	cmp	r4, #0
	moveq	r0, #0
	beq	_060097B8
	ldr	r0, _060097C8	; =0x0000BF1D
	strh	r0, [r4, #10]
	mov	r0, #0
	strh	r0, [r4, #8]
	mov	r0, r5
	mov	r1, r4
	bl	FUN_06009520
	mov	r0, r4
_060097B8:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_060097C4:	.word	0x0380FFF4
_060097C8:	.word	0x0000BF1D

	arm_func_start FUN_060097CC
FUN_060097CC: ; 0x060097CC
	stmdb	sp!, {r4, lr}
	ldr	r0, _0600981C	; =0x0380FFF4
	ldr	r0, [r0]
	add	r4, r0, #380	; 0x17c
	bl	FUN_0600C9E0
	add	r0, r4, #12
	ldr	r1, _0600981C	; =0x0380FFF4
	ldr	r1, [r1]
	ldr	r1, [r1, #792]	; 0x318
	sub	r1, r1, #12
	bl	FUN_060096A0
	add	r0, r4, #12
	ldr	r1, _0600981C	; =0x0380FFF4
	ldr	r1, [r1]
	ldr	r1, [r1, #992]	; 0x3e0
	sub	r1, r1, #12
	bl	FUN_060096A0
	bl	FUN_0600217C
	ldmia	sp!, {r4, lr}
	bx	lr
_0600981C:	.word	0x0380FFF4

	arm_func_start FUN_06009820
FUN_06009820: ; 0x06009820
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	ldr	r2, _060098BC	; =0x0380FFF4
	ldr	r0, [r2]
	add	r0, r0, #768	; 0x300
	ldrh	r1, [r0, #62]	; 0x3e
	orr	r1, r1, #32768	; 0x8000
	strh	r1, [r0, #62]	; 0x3e
	ldr	r0, [r2]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #76]	; 0x4c
	cmp	r0, #0
	beq	_06009890
	bl	FUN_0600A4EC
	ldr	r2, _060098BC	; =0x0380FFF4
	ldr	r0, [r2]
	add	r0, r0, #1024	; 0x400
	ldrh	r1, [r0, #4]
	cmp	r1, #0
	beq	_0600988C
	mov	r1, #0
	strh	r1, [r0, #4]
	mov	r1, #6
	ldr	r0, [r2]
	ldr	r0, [r0, #1056]	; 0x420
	strh	r1, [r0, #4]
	bl	FUN_06010228
_0600988C:
	bl	FUN_0600B36C
_06009890:
	mov	r0, #3
	bl	FUN_06008FF0
	ldr	r1, _060098C0	; =0x0000FFFF
	cmp	r0, r1
	bne	_06009890
	mov	r0, #3
	mov	r1, #23
	bl	FUN_06009078
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_060098BC:	.word	0x0380FFF4
_060098C0:	.word	0x0000FFFF

	arm_func_start FUN_060098C4
FUN_060098C4: ; 0x060098C4
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	ldr	r0, _06009944	; =0x0380FFF4
	ldr	r1, [r0]
	add	r5, r1, #836	; 0x344
	ldrh	r0, [r5, #176]	; 0xb0
	cmp	r0, #0
	beq	_06009938
	add	r0, r1, #392	; 0x188
	mov	r1, #18
	bl	FUN_06009724
	movs	r4, r0
	beq	_06009938
	ldr	r0, _06009948	; =0x00000186
	strh	r0, [r4, #12]
	mov	r0, #1
	strh	r0, [r4, #14]
	mov	r0, #16777216	; 0x1000000
	bl	FUN_06009068
	ldrh	r1, [r5, #176]	; 0xb0
	strh	r1, [r4, #16]
	mov	r1, #0
	strh	r1, [r5, #176]	; 0xb0
	bl	FUN_06009070
	ldr	r0, _06009944	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #392	; 0x188
	mov	r1, r4
	bl	FUN_0600F8DC
_06009938:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_06009944:	.word	0x0380FFF4
_06009948:	.word	0x00000186

	arm_func_start FUN_0600994C
FUN_0600994C: ; 0x0600994C
	stmdb	sp!, {r4, lr}
	mov	r4, r0
	mov	r0, #16777216	; 0x1000000
	bl	FUN_06009068
	ldr	r1, _0600998C	; =0x0380FFF4
	ldr	r1, [r1]
	add	r1, r1, #768	; 0x300
	ldrh	r2, [r1, #244]	; 0xf4
	orr	r2, r2, r4
	strh	r2, [r1, #244]	; 0xf4
	bl	FUN_06009070
	mov	r0, #2
	mov	r1, #21
	bl	FUN_06009078
	ldmia	sp!, {r4, lr}
	bx	lr
_0600998C:	.word	0x0380FFF4

	arm_func_start FUN_06009990
FUN_06009990: ; 0x06009990
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	ldr	r0, _06009A8C	; =0x0380FFF4
	ldr	r1, [r0]
	add	r5, r1, #836	; 0x344
	ldr	r0, _06009A90	; =0x0000042C
	add	r4, r1, r0
	add	r0, r1, #768	; 0x300
	ldrh	r0, [r0, #80]	; 0x50
	cmp	r0, #1
	beq	_060099CC
	cmp	r0, #2
	beq	_06009A00
	cmp	r0, #3
	b	_06009A3C
_060099CC:
	add	r0, r4, #120	; 0x78
	bl	FUN_06009B28
	cmp	r0, #0
	beq	_060099E4
	bl	FUN_06009AE4
	bl	FUN_0601477C
_060099E4:
	add	r0, r4, #40	; 0x28
	bl	FUN_06009B28
	cmp	r0, #0
	beq	_06009A3C
	add	r0, r4, #40	; 0x28
	bl	FUN_06009A98
	b	_06009A3C
_06009A00:
	add	r0, r4, #100	; 0x64
	bl	FUN_06009B28
	add	r0, r4, #40	; 0x28
	bl	FUN_06009B28
	cmp	r0, #0
	beq	_06009A3C
	ldrh	r0, [r4, #40]	; 0x28
	cmp	r0, #0
	beq	_06009A28
	bl	FUN_06009AE4
_06009A28:
	ldrh	r0, [r5, #106]	; 0x6a
	bl	FUN_06013E48
	ldrh	r0, [r5, #184]	; 0xb8
	add	r0, r0, #1
	strh	r0, [r5, #184]	; 0xb8
_06009A3C:
	add	r0, r4, #20
	bl	FUN_06009B28
	cmp	r0, #0
	beq	_06009A54
	add	r0, r4, #20
	bl	FUN_06009A98
_06009A54:
	mov	r0, r4
	bl	FUN_06009B28
	cmp	r0, #0
	beq	_06009A6C
	mov	r0, r4
	bl	FUN_06009A98
_06009A6C:
	ldr	r1, _06009A94	; =0x04808004
	ldrh	r0, [r1]
	cmp	r0, #0
	moveq	r0, #1
	streqh	r0, [r1]
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_06009A8C:	.word	0x0380FFF4
_06009A90:	.word	0x0000042C
_06009A94:	.word	0x04808004

	arm_func_start FUN_06009A98
FUN_06009A98: ; 0x06009A98
	stmdb	sp!, {r4, lr}
	mov	r4, r0
	ldrh	r0, [r4]
	cmp	r0, #0
	beq	_06009AD8
	bl	FUN_06009AE4
	ldr	r0, [r4, #8]
	ldr	r1, [r4, #12]
	sub	r1, r1, #16
	bl	FUN_06015B0C
	ldr	r0, _06009AE0	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r1, [r0, #252]	; 0xfc
	add	r1, r1, #1
	strh	r1, [r0, #252]	; 0xfc
_06009AD8:
	ldmia	sp!, {r4, lr}
	bx	lr
_06009AE0:	.word	0x0380FFF4

	arm_func_start FUN_06009AE4
FUN_06009AE4: ; 0x06009AE4
	mov	r1, #0
	ldr	r0, _06009B20	; =0x04808004
	strh	r1, [r0]
	mov	r2, #16
	ldr	r1, _06009B24	; =0x04808214
	b	_06009B14
_06009AFC:
	ldrh	r0, [r1]
	cmp	r0, #0
	bxeq	lr
	cmp	r0, #9
	bxeq	lr
	sub	r2, r2, #1
_06009B14:
	cmp	r2, #0
	bne	_06009AFC
	bx	lr
_06009B20:	.word	0x04808004
_06009B24:	.word	0x04808214

	arm_func_start FUN_06009B28
FUN_06009B28: ; 0x06009B28
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	ldr	r3, [r0, #8]
	sub	lr, r3, #4
	ldrh	r2, [r3, #-4]
	ldr	r1, _06009BB0	; =0x0000B6B8
	cmp	r2, r1
	bne	_06009B58
	ldrh	r2, [lr, #2]
	ldr	r1, _06009BB4	; =0x00001D46
	cmp	r2, r1
	beq	_06009BA0
_06009B58:
	mov	ip, #1
	strh	ip, [r3, #10]
	ldr	r3, _06009BB0	; =0x0000B6B8
	strh	r3, [lr]
	ldr	r2, _06009BB4	; =0x00001D46
	strh	r2, [lr, #2]
	ldr	r0, [r0, #8]
	add	r1, r0, #12
	strh	r3, [r0, #12]
	strh	r2, [r1, #2]
	ldr	r0, _06009BB8	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r1, [r0, #250]	; 0xfa
	add	r1, r1, #1
	strh	r1, [r0, #250]	; 0xfa
	mov	r0, ip
	b	_06009BA4
_06009BA0:
	mov	r0, #0
_06009BA4:
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_06009BB0:	.word	0x0000B6B8
_06009BB4:	.word	0x00001D46
_06009BB8:	.word	0x0380FFF4

	arm_func_start FUN_06009BBC
FUN_06009BBC: ; 0x06009BBC
	and	r2, r1, #15
	mov	r3, r2, lsl #1
	ldr	r2, _06009C2C	; =_060193E4
	ldrh	ip, [r2, r3]
	ldr	r3, _06009C30	; =0x00000FFF
	and	r1, r3, r1, asr #4
	mov	r1, r1, lsl #16
	eor	ip, ip, r1, lsr #16
	and	r1, r0, #15
	mov	r1, r1, lsl #1
	ldrh	r1, [r2, r1]
	eor	r1, ip, r1
	mov	r1, r1, lsl #16
	mov	ip, r1, lsr #16
	and	r1, r3, ip, asr #4
	mov	r1, r1, lsl #16
	and	r3, ip, #15
	mov	r3, r3, lsl #1
	ldrh	r3, [r2, r3]
	eor	r1, r3, r1, lsr #16
	mov	r0, r0, asr #4
	and	r0, r0, #15
	mov	r0, r0, lsl #1
	ldrh	r0, [r2, r0]
	eor	r0, r1, r0
	mov	r0, r0, lsl #16
	mov	r0, r0, lsr #16
	bx	lr
_06009C2C:	.word	_060193E4
_06009C30:	.word	0x00000FFF

	arm_func_start FUN_06009C34
FUN_06009C34: ; 0x06009C34
	ldr	r0, _06009C60	; =0x0380FFF4
	ldr	r0, [r0]
	add	r3, r0, #1520	; 0x5f0
	ldrh	r2, [r3, #2]
	ldrh	r1, [r3, #4]
	add	r0, r0, #1280	; 0x500
	ldrh	r0, [r0, #240]	; 0xf0
	mla	r0, r1, r0, r2
	strh	r0, [r3, #4]
	ldrh	r0, [r3, #4]
	bx	lr
_06009C60:	.word	0x0380FFF4

	arm_func_start FUN_06009C64
FUN_06009C64: ; 0x06009C64
	ldr	r1, _06009C78	; =0x0380FFF4
	ldr	r1, [r1]
	add	r1, r1, #1280	; 0x500
	strh	r0, [r1, #244]	; 0xf4
	bx	lr
_06009C78:	.word	0x0380FFF4

	arm_func_start FUN_06009C7C
FUN_06009C7C: ; 0x06009C7C
	ldr	r2, _06009CA8	; =0x0380FFF4
	ldr	r3, [r2]
	add	ip, r3, #1520	; 0x5f0
	ldr	r2, _06009CAC	; =0x0000FFF8
	and	r0, r0, r2
	add	r2, r0, #5
	add	r0, r3, #1280	; 0x500
	strh	r2, [r0, #240]	; 0xf0
	orr	r0, r1, #1
	strh	r0, [ip, #2]
	bx	lr
_06009CA8:	.word	0x0380FFF4
_06009CAC:	.word	0x0000FFF8

	arm_func_start FUN_06009CB0
FUN_06009CB0: ; 0x06009CB0
	ands	r1, r0, #1
	ldrneh	r0, [r0, #-1]
	movne	r0, r0, asr #8
	andne	r0, r0, #255	; 0xff
	ldreqh	r0, [r0]
	andeq	r0, r0, #255	; 0xff
	and	r0, r0, #255	; 0xff
	bx	lr

	arm_func_start FUN_06009CD0
FUN_06009CD0: ; 0x06009CD0
	ands	r2, r0, #1
	ldrneh	r2, [r0, #-1]
	andne	r2, r2, #255	; 0xff
	orrne	r1, r2, r1, lsl #8
	strneh	r1, [r0, #-1]
	ldreqh	r2, [r0]
	andeq	r2, r2, #65280	; 0xff00
	andeq	r1, r1, #255	; 0xff
	orreq	r1, r2, r1
	streqh	r1, [r0]
	bx	lr

	arm_func_start FUN_06009CFC
FUN_06009CFC: ; 0x06009CFC
	stmdb	sp!, {r4, r5, r6, lr}
	mov	r6, r0
	mov	r5, r2
	mov	r4, r3
	mov	r2, #18
	bl	FUN_06009D88
	cmp	r4, #0
	beq	_06009D30
	add	r0, r6, #40	; 0x28
	mov	r1, r5
	add	r2, r4, #1
	mov	r2, r2, lsr #1
	bl	FUN_06009D88
_06009D30:
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr

	arm_func_start FUN_06009D38
FUN_06009D38: ; 0x06009D38
	stmdb	sp!, {r4, r5, r6, lr}
	mov	r6, r0
	mov	r5, r2
	mov	r4, r3
	mov	r2, #18
	bl	FUN_06009D88
	cmp	r4, #0
	beq	_06009D6C
	add	r0, r6, #36	; 0x24
	mov	r1, r5
	add	r2, r4, #1
	mov	r2, r2, lsr #1
	bl	FUN_06009D88
_06009D6C:
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr

	arm_func_start FUN_06009D74
FUN_06009D74: ; 0x06009D74
	add	r2, r2, #1
	mov	r2, r2, lsr #1
	ldr	ip, _06009D84	; =FUN_06009D88
	bx	ip
_06009D84:	.word	FUN_06009D88

	arm_func_start FUN_06009D88
FUN_06009D88: ; 0x06009D88
	mov	r3, r0
	mov	r0, r1
	mov	r1, r3
	mov	r2, r2, lsl #1
	ldr	ip, _06009DA0	; =FUN_037FB318
	bx	ip
_06009DA0:	.word	FUN_037FB318

	arm_func_start FUN_06009DA4
FUN_06009DA4: ; 0x06009DA4
	stmdb	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #4
	mov	r7, r0
	mov	r6, r1
	add	r0, r2, #1
	bic	r2, r0, #1
	add	r1, r6, r2
	ldr	r0, _06009E20	; =0x04805F60
	cmp	r1, r0
	subhi	r5, r0, r6
	subhi	r4, r2, r5
	movls	r5, r2
	movls	r4, #0
	mov	r0, r6
	mov	r1, r7
	mov	r2, r5
	bl	FUN_06000EA0
	cmp	r4, #0
	beq	_06009E14
	add	r1, r6, r5
	ldr	r0, _06009E24	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #222]	; 0xde
	sub	r0, r1, r0
	add	r1, r7, r5
	mov	r2, r4
	bl	FUN_06000EA0
_06009E14:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, lr}
	bx	lr
_06009E20:	.word	0x04805F60
_06009E24:	.word	0x0380FFF4

	arm_func_start FUN_06009E28
FUN_06009E28: ; 0x06009E28
	ldr	r0, _06009E40	; =0x0380FFF4
	ldr	r1, [r0]
	ldr	r0, _06009E44	; =0x00000634
	add	r0, r1, r0
	ldr	ip, _06009E48	; =FUN_037FA650
	bx	ip
_06009E40:	.word	0x0380FFF4
_06009E44:	.word	0x00000634
_06009E48:	.word	FUN_037FA650

	arm_func_start FUN_06009E4C
FUN_06009E4C: ; 0x06009E4C
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	mov	r5, r0
	mov	r4, r1
	ldr	r0, _06009ED0	; =0x0380FFF4
	ldr	r1, [r0]
	ldr	r0, _06009ED4	; =0x00000634
	add	r0, r1, r0
	bl	FUN_060009D0
	mov	r3, #0
	ldr	r0, _06009ED8	; =0x000082EA
	umull	ip, r2, r5, r0
	mla	r2, r5, r3, r2
	mla	r2, r3, r0, r2
	mov	r1, r2, lsr #6
	mov	r0, ip, lsr #6
	orr	r0, r0, r2, lsl #26
	mov	r2, #1000	; 0x3e8
	bl	FUN_06009EDC
	mov	r3, r0
	mov	r2, r1
	mov	r0, #0
	str	r0, [sp]
	ldr	r0, _06009ED0	; =0x0380FFF4
	ldr	r1, [r0]
	ldr	r0, _06009ED4	; =0x00000634
	add	r0, r1, r0
	mov	r1, r3
	mov	r3, r4
	bl	FUN_0600144C
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_06009ED0:	.word	0x0380FFF4
_06009ED4:	.word	0x00000634
_06009ED8:	.word	0x000082EA

	arm_func_start FUN_06009EDC
FUN_06009EDC: ; 0x06009EDC
	ldr	pc, _06009EE0	; =_ll_udiv
_06009EE0:	.word	_ll_udiv

	arm_func_start FUN_06009EE4
FUN_06009EE4: ; 0x06009EE4
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	mov	r5, r0
	mov	r4, r1
	ldr	r0, _06009F50	; =0x0380FFF4
	ldr	r1, [r0]
	ldr	r0, _06009F54	; =0x00000634
	add	r0, r1, r0
	bl	FUN_060009D0
	mov	r2, #0
	str	r2, [sp]
	ldr	r0, _06009F50	; =0x0380FFF4
	ldr	r1, [r0]
	ldr	r0, _06009F54	; =0x00000634
	add	r0, r1, r0
	ldr	r1, _06009F58	; =0x000082EA
	umull	ip, r3, r5, r1
	mla	r3, r5, r2, r3
	mla	r3, r2, r1, r3
	mov	r2, r3, lsr #6
	mov	r1, ip, lsr #6
	orr	r1, r1, r3, lsl #26
	mov	r3, r4
	bl	FUN_0600144C
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_06009F50:	.word	0x0380FFF4
_06009F54:	.word	0x00000634
_06009F58:	.word	0x000082EA

	arm_func_start FUN_06009F5C
FUN_06009F5C: ; 0x06009F5C
	stmdb	sp!, {r4, lr}
	ldr	r0, _06009FD8	; =0x0380FFF4
	ldr	r4, [r0]
	ldr	r0, [r4, #1004]	; 0x3ec
	add	r0, r0, #1
	str	r0, [r4, #1004]	; 0x3ec
	mov	r0, #1
	mov	r1, #10
	bl	FUN_06009078
	mov	r0, #2
	mov	r1, #18
	bl	FUN_06009078
	mov	r0, #1
	mov	r1, #17
	bl	FUN_06009078
	add	r0, r4, #256	; 0x100
	ldrh	r0, [r0, #252]	; 0xfc
	cmp	r0, #0
	beq	_06009FB4
	mov	r0, #2
	mov	r1, #19
	bl	FUN_06009078
_06009FB4:
	add	r0, r4, #768	; 0x300
	ldrh	r0, [r0, #244]	; 0xf4
	cmp	r0, #0
	beq	_06009FD0
	mov	r0, #2
	mov	r1, #21
	bl	FUN_06009078
_06009FD0:
	ldmia	sp!, {r4, lr}
	bx	lr
_06009FD8:	.word	0x0380FFF4

	arm_func_start FUN_06009FDC
FUN_06009FDC: ; 0x06009FDC
	ldr	r0, _06009FF4	; =0x0380FFF4
	ldr	r1, [r0]
	ldr	r0, _06009FF8	; =0x00000608
	add	r0, r1, r0
	ldr	ip, _06009FFC	; =FUN_037FA650
	bx	ip
_06009FF4:	.word	0x0380FFF4
_06009FF8:	.word	0x00000608
_06009FFC:	.word	FUN_037FA650

	arm_func_start FUN_0600A000
FUN_0600A000: ; 0x0600A000
	stmdb	sp!, {r4, r5, r6, lr}
	sub	sp, sp, #16
	mov	r5, r0
	mov	r4, r1
	ldr	r0, _0600A084	; =0x0380FFF4
	ldr	r1, [r0]
	ldr	r0, _0600A088	; =0x00000608
	add	r0, r1, r0
	bl	FUN_060009D0
	mov	r1, #0
	ldr	r0, _0600A08C	; =0x000082EA
	umull	r3, r2, r5, r0
	mla	r2, r5, r1, r2
	mla	r2, r1, r0, r2
	mov	r6, r3, lsr #6
	orr	r6, r6, r2, lsl #26
	bl	FUN_06000E98
	mov	r5, #0
	adds	ip, r6, r0
	adc	r2, r1, #0
	str	r4, [sp, #4]
	str	r5, [sp, #8]
	mov	r3, r6
	str	r5, [sp]
	ldr	r0, _0600A084	; =0x0380FFF4
	ldr	r1, [r0]
	ldr	r0, _0600A088	; =0x00000608
	add	r0, r1, r0
	mov	r1, ip
	bl	FUN_0600A090
	add	sp, sp, #16
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr
_0600A084:	.word	0x0380FFF4
_0600A088:	.word	0x00000608
_0600A08C:	.word	0x000082EA

	arm_func_start FUN_0600A090
FUN_0600A090: ; 0x0600A090
	ldr	pc, _0600A094	; =FUN_037FA6E0
_0600A094:	.word	FUN_037FA6E0

	arm_func_start FUN_0600A098
FUN_0600A098: ; 0x0600A098
	ldr	r1, _0600A0A4	; =_0600A0C4
	ldr	ip, _0600A0A8	; =FUN_0600F7A0
	bx	ip
_0600A0A4:	.word	_0600A0C4
_0600A0A8:	.word	FUN_0600F7A0

	arm_func_start FUN_0600A0AC
FUN_0600A0AC: ; 0x0600A0AC
	mov	r1, #1000	; 0x3e8
	mul	r1, r0, r1
	mov	r0, r1
	ldr	ip, _0600A0C0	; =FUN_0600A098
	bx	ip
_0600A0C0:	.word	FUN_0600A098
_0600A0C4:
	mov	r1, #0

	arm_func_start FUN_0600A0C8
FUN_0600A0C8: ; 0x0600A0C8
	str	r1, [r0]
	bx	lr

	arm_func_start FUN_0600A0D0
FUN_0600A0D0: ; 0x0600A0D0
	stmdb	sp!, {r4, lr}
	ldr	r0, _0600A120	; =0x0380FFF4
	ldr	r4, [r0]
	bl	FUN_0600A12C
	cmp	r0, #0
	addeq	r0, r4, #768	; 0x300
	ldreqh	r1, [r0, #62]	; 0x3e
	orreq	r1, r1, #64	; 0x40
	streqh	r1, [r0, #62]	; 0x3e
	beq	_0600A118
	ldr	r0, _0600A124	; =0x00000608
	add	r0, r4, r0
	bl	FUN_06000A04
	ldr	r0, _0600A128	; =0x00000634
	add	r0, r4, r0
	bl	FUN_06000A04
	add	r0, r4, #1632	; 0x660
	bl	FUN_06000A04
_0600A118:
	ldmia	sp!, {r4, lr}
	bx	lr
_0600A120:	.word	0x0380FFF4
_0600A124:	.word	0x00000608
_0600A128:	.word	0x00000634

	arm_func_start FUN_0600A12C
FUN_0600A12C: ; 0x0600A12C
	ldr	pc, _0600A130	; =FUN_037FA910
_0600A130:	.word	FUN_037FA910

	arm_func_start FUN_0600A134
FUN_0600A134: ; 0x0600A134
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub	sp, sp, #12
	ldr	r0, _0600A2B4	; =0x0380FFF4
	ldr	r1, [r0]
	ldr	r0, _0600A2B8	; =0x000005F8
	add	r7, r1, r0
	mov	r8, #0
	str	r8, [sp, #4]
	mov	r6, #2
	add	r5, sp, #4
	ldr	r4, _0600A2BC	; =_06019404
_0600A160:
	mov	r0, r8, lsl #1
	add	r0, r0, #68	; 0x44
	mov	r1, r6
	mov	r2, r5
	bl	FUN_0601910C
	ldr	r1, [sp, #4]
	mov	r0, r8, lsl #1
	ldrh	r0, [r4, r0]
	add	r0, r0, #75497472	; 0x4800000
	add	r0, r0, #32768	; 0x8000
	strh	r1, [r0]
	add	r8, r8, #1
	cmp	r8, #16
	bcc	_0600A160
	ldrh	r0, [r7, #2]
	mov	r1, r0, lsr #7
	mov	r0, r1, lsl #8
	str	r0, [sp]
	ldrh	r0, [r7, #2]
	and	r0, r0, #127	; 0x7f
	orr	r1, r0, r1, lsl #8
	str	r1, [sp]
	ldr	r0, _0600A2C0	; =0x04808184
	strh	r1, [r0]
	mov	r5, #206	; 0xce
	ldrh	r0, [r7, #2]
	and	r0, r0, #127	; 0x7f
	add	r0, r0, #7
	mov	r1, #8
	bl	FUN_06001840
	mov	r8, r0
	ldrh	r4, [r7, #4]
	ldrh	r0, [r7]
	cmp	r0, #3
	bne	_0600A250
	add	r0, r4, #206	; 0xce
	mov	r1, #1
	add	r2, r7, #8
	bl	FUN_0601910C
	mov	r9, #0
	mov	r8, r9
	mov	r7, #1
	add	r6, sp, #0
	b	_0600A244
_0600A210:
	str	r8, [sp]
	mov	r0, r5
	mov	r1, r7
	mov	r2, r6
	bl	FUN_0601910C
	ldr	r1, [sp]
	mov	r0, r9, lsl #8
	add	r0, r0, #327680	; 0x50000
	orr	r0, r1, r0
	str	r0, [sp]
	bl	FUN_0600A450
	add	r9, r9, #1
	add	r5, r5, #1
_0600A244:
	cmp	r9, r4
	bcc	_0600A210
	b	_0600A2A8
_0600A250:
	mov	r0, #0
	str	r0, [sp]
	add	r6, sp, #0
	b	_0600A2A0
_0600A260:
	mov	r0, r5
	mov	r1, r8
	mov	r2, r6
	bl	FUN_0601910C
	ldr	r0, [sp]
	bl	FUN_0600A450
	ldrh	r0, [r7]
	cmp	r0, #2
	bne	_0600A298
	ldr	r1, [sp]
	mov	r0, r1, lsr #18
	cmp	r0, #9
	biceq	r0, r1, #31744	; 0x7c00
	streq	r0, [r7, #12]
_0600A298:
	sub	r4, r4, #1
	add	r5, r5, r8
_0600A2A0:
	cmp	r4, #0
	bne	_0600A260
_0600A2A8:
	add	sp, sp, #12
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, lr}
	bx	lr
_0600A2B4:	.word	0x0380FFF4
_0600A2B8:	.word	0x000005F8
_0600A2BC:	.word	_06019404
_0600A2C0:	.word	0x04808184

	arm_func_start FUN_0600A2C4
FUN_0600A2C4: ; 0x0600A2C4
	stmdb	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #4
	mov	r1, #256	; 0x100
	ldr	r0, _0600A330	; =0x04808160
	strh	r1, [r0]
	mov	r6, #100	; 0x64
	mov	r7, #0
	str	r7, [sp]
	mov	r5, #1
	add	r4, sp, #0
_0600A2EC:
	mov	r0, r6
	mov	r1, r5
	mov	r2, r4
	bl	FUN_0601910C
	mov	r0, r7
	ldr	r1, [sp]
	bl	FUN_0600A478
	add	r6, r6, #1
	add	r7, r7, #1
	cmp	r7, #105	; 0x69
	bcc	_0600A2EC
	mov	r0, #90	; 0x5a
	mov	r1, #2
	bl	FUN_0600A478
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, lr}
	bx	lr
_0600A330:	.word	0x04808160

	arm_func_start FUN_0600A334
FUN_0600A334: ; 0x0600A334
	mov	ip, #0
	ldr	r2, _0600A368	; =_06019474
_0600A33C:
	mov	r3, ip, lsl #2
	add	r0, r2, ip, lsl #2
	ldrh	r1, [r0, #2]
	ldrh	r0, [r2, r3]
	add	r0, r0, #75497472	; 0x4800000
	add	r0, r0, #32768	; 0x8000
	strh	r1, [r0]
	add	ip, ip, #1
	cmp	ip, #25
	bcc	_0600A33C
	bx	lr
_0600A368:	.word	_06019474

	arm_func_start FUN_0600A36C
FUN_0600A36C: ; 0x0600A36C
	stmdb	sp!, {r4, lr}
	ldr	r0, _0600A3D8	; =0x0380FFF4
	ldr	r1, [r0]
	ldr	r0, _0600A3DC	; =0x000005F8
	add	r4, r1, r0
	mov	r0, #0
	mov	r1, r4
	mov	r2, #16
	bl	FUN_0600055C
	mov	r0, #64	; 0x40
	mov	r1, #1
	mov	r2, r4
	bl	FUN_0601910C
	mov	r0, #65	; 0x41
	mov	r1, #1
	add	r2, r4, #2
	bl	FUN_0601910C
	mov	r0, #66	; 0x42
	mov	r1, #1
	add	r2, r4, #4
	bl	FUN_0601910C
	mov	r0, #67	; 0x43
	mov	r1, #1
	add	r2, r4, #6
	bl	FUN_0601910C
	ldmia	sp!, {r4, lr}
	bx	lr
_0600A3D8:	.word	0x0380FFF4
_0600A3DC:	.word	0x000005F8

	arm_func_start FUN_0600A3E0
FUN_0600A3E0: ; 0x0600A3E0
	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #8
	mov	r8, #100	; 0x64
	mov	r6, #0
	str	r6, [sp]
	mov	r7, r6
	mov	r5, #1
	add	r4, sp, #0
_0600A400:
	mov	r0, r8
	mov	r1, r5
	mov	r2, r4
	bl	FUN_0601910C
	cmp	r7, #1
	ldreq	r0, [sp]
	andeq	r0, r0, #128	; 0x80
	streq	r0, [sp]
	ldr	r0, [sp]
	and	r0, r0, #255	; 0xff
	mov	r1, r6
	bl	FUN_06009BBC
	mov	r6, r0
	add	r8, r8, #1
	add	r7, r7, #1
	cmp	r7, #105	; 0x69
	bcc	_0600A400
	add	sp, sp, #8
	ldmia	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr

	arm_func_start FUN_0600A450
FUN_0600A450: ; 0x0600A450
	ldr	r1, _0600A46C	; =0x0480817E
	strh	r0, [r1]
	mov	r1, r0, lsr #16
	ldr	r0, _0600A470	; =0x0480817C
	strh	r1, [r0]
	ldr	ip, _0600A474	; =_0600F6B0
	bx	ip
_0600A46C:	.word	0x0480817E
_0600A470:	.word	0x0480817C
_0600A474:	.word	_0600F6B0

	arm_func_start FUN_0600A478
FUN_0600A478: ; 0x0600A478
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	ldr	r2, _0600A4B0	; =0x0480815A
	strh	r1, [r2]
	orr	r1, r0, #20480	; 0x5000
	ldr	r0, _0600A4B4	; =0x04808158
	strh	r1, [r0]
	bl	FUN_0600F6E4
	cmp	r0, #0
	mvnne	r0, #0
	moveq	r0, #0
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_0600A4B0:	.word	0x0480815A
_0600A4B4:	.word	0x04808158

	arm_func_start FUN_0600A4B8
FUN_0600A4B8: ; 0x0600A4B8
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	orr	r1, r0, #24576	; 0x6000
	ldr	r0, _0600A4E4	; =0x04808158
	strh	r1, [r0]
	bl	FUN_0600F6E4
	ldr	r0, _0600A4E8	; =0x0480815C
	ldrh	r0, [r0]
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_0600A4E4:	.word	0x04808158
_0600A4E8:	.word	0x0480815C

	arm_func_start FUN_0600A4EC
FUN_0600A4EC: ; 0x0600A4EC
	stmdb	sp!, {r4, lr}
	ldr	r0, _0600A57C	; =0x0380FFF4
	ldr	r0, [r0]
	add	r4, r0, #836	; 0x344
	bl	FUN_06009FDC
	bl	FUN_06009E28
	mov	r0, #32
	bl	FUN_0600AF68
	mov	r1, #0
	strh	r1, [r4, #164]	; 0xa4
	strh	r1, [r4, #18]
	ldr	r0, _0600A580	; =0x04808012
	strh	r1, [r0]
	ldr	r0, _0600A584	; =0x04808004
	strh	r1, [r0]
	ldr	r0, _0600A588	; =0x048080EA
	strh	r1, [r0]
	ldr	r0, _0600A58C	; =0x048080E8
	strh	r1, [r0]
	ldr	r0, _0600A590	; =0x04808008
	strh	r1, [r0]
	ldr	r0, _0600A594	; =0x0480800A
	strh	r1, [r0]
	ldrh	r0, [r4, #12]
	cmp	r0, #1
	bne	_0600A558
	bl	FUN_06014AE8
_0600A558:
	ldr	r1, _0600A598	; =0x0000FFFF
	ldr	r0, _0600A59C	; =0x048080AC
	strh	r1, [r0]
	ldr	r0, _0600A5A0	; =0x048080B4
	strh	r1, [r0]
	bl	FUN_06014D24
	bl	FUN_060092D8
	ldmia	sp!, {r4, lr}
	bx	lr
_0600A57C:	.word	0x0380FFF4
_0600A580:	.word	0x04808012
_0600A584:	.word	0x04808004
_0600A588:	.word	0x048080EA
_0600A58C:	.word	0x048080E8
_0600A590:	.word	0x04808008
_0600A594:	.word	0x0480800A
_0600A598:	.word	0x0000FFFF
_0600A59C:	.word	0x048080AC
_0600A5A0:	.word	0x048080B4

	arm_func_start FUN_0600A5A4
FUN_0600A5A4: ; 0x0600A5A4
	stmdb	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #12
	ldr	r0, _0600A9B8	; =0x0380FFF4
	ldr	r0, [r0]
	add	r7, r0, #836	; 0x344
	add	r4, r0, #796	; 0x31c
	bl	FUN_0600A4EC
	ldr	r2, _0600A9BC	; =0x04808044
	ldrh	r1, [r2]
	ldrh	r0, [r2]
	add	r0, r1, r0, lsl #8
	ldrh	r1, [r2]
	bl	FUN_06009C7C
	mov	r0, #1
	strh	r0, [r7, #124]	; 0x7c
	ldrh	r0, [r4, #30]
	mov	r0, r0, lsl #29
	mov	r0, r0, lsr #31
	cmp	r0, #1
	ldreqh	r0, [r7, #124]	; 0x7c
	orreq	r0, r0, #32
	streqh	r0, [r7, #124]	; 0x7c
	ldrh	r0, [r4, #24]
	cmp	r0, #0
	ldrneh	r0, [r7, #124]	; 0x7c
	orrne	r0, r0, #16
	strneh	r0, [r7, #124]	; 0x7c
	mov	r2, #0
	strh	r2, [r7, #18]
	mov	r1, #32768	; 0x8000
	ldr	r0, _0600A9C0	; =0x04808032
	strh	r1, [r0]
	ldr	r1, _0600A9C4	; =0x0000FFFF
	ldr	r0, _0600A9C8	; =0x04808134
	strh	r1, [r0]
	ldr	r0, _0600A9CC	; =0x0480802A
	strh	r2, [r0]
	ldr	r0, _0600A9D0	; =0x04808028
	strh	r2, [r0]
	mov	r1, #15
	ldr	r0, _0600A9D4	; =0x04808038
	strh	r1, [r0]
	bl	FUN_0600EA10
	bl	FUN_06018E38
	bl	FUN_0601373C
	bl	FUN_06015EC8
	mov	r1, #32768	; 0x8000
	ldr	r0, _0600A9D8	; =0x04808030
	strh	r1, [r0]
	ldr	r1, _0600A9C4	; =0x0000FFFF
	ldr	r0, _0600A9DC	; =0x04808010
	strh	r1, [r0]
	ldr	r1, _0600A9E0	; =0x00001FFF
	ldr	r0, _0600A9E4	; =0x048081AE
	strh	r1, [r0]
	ldr	r0, _0600A9B8	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #1536	; 0x600
	ldrh	r0, [r0, #144]	; 0x90
	ands	r0, r0, #8
	movne	r1, #1024	; 0x400
	ldrne	r0, _0600A9E8	; =0x048081AA
	strneh	r1, [r0]
	moveq	r1, #0
	ldreq	r0, _0600A9E8	; =0x048081AA
	streqh	r1, [r0]
	mov	r5, #0
	ldr	r0, _0600A9EC	; =0x04808008
	strh	r5, [r0]
	ldr	r3, _0600A9F0	; =0x0480800A
	strh	r5, [r3]
	ldrh	r1, [r7, #12]
	cmp	r1, #4
	addls	pc, pc, r1, lsl #2
	b	_0600A97C
	b	_0600A6E4
	b	_0600A728
	b	_0600A84C
	b	_0600A8E0
	b	_0600A958
_0600A6E4:
	mov	r2, #63	; 0x3f
	ldr	r1, _0600A9F4	; =0x04808012
	strh	r2, [r1]
	ldr	r2, _0600A9C4	; =0x0000FFFF
	ldr	r1, _0600A9F8	; =0x048080D0
	strh	r2, [r1]
	mov	r2, #8
	ldr	r1, _0600A9FC	; =0x048080E0
	strh	r2, [r1]
	strh	r5, [r0]
	strh	r5, [r3]
	ldr	r0, _0600AA00	; =0x048080E8
	strh	r5, [r0]
	mov	r1, #1
	ldr	r0, _0600AA04	; =0x04808004
	strh	r1, [r0]
	b	_0600A97C
_0600A728:
	ldr	r2, _0600AA08	; =0x0000703F
	ldr	r1, _0600A9F4	; =0x04808012
	strh	r2, [r1]
	ldr	r2, _0600A9E0	; =0x00001FFF
	ldr	r1, _0600A9E4	; =0x048081AE
	strh	r2, [r1]
	ldr	r2, _0600AA0C	; =0x00000301
	ldr	r1, _0600A9F8	; =0x048080D0
	strh	r2, [r1]
	mov	r2, #13
	ldr	r1, _0600A9FC	; =0x048080E0
	strh	r2, [r1]
	mov	r1, #57344	; 0xe000
	strh	r1, [r0]
	mov	r1, #1
	ldr	r0, _0600AA04	; =0x04808004
	strh	r1, [r0]
	add	r6, sp, #0
	ldr	r0, _0600AA10	; =0x048080F8
	ldrh	r0, [r0]
	strh	r0, [r6]
	ldr	r0, _0600AA14	; =0x048080FA
	ldrh	r0, [r0]
	strh	r0, [r6, #2]
	ldr	r0, _0600AA18	; =0x048080FC
	ldrh	r0, [r0]
	strh	r0, [r6, #4]
	ldr	r0, _0600AA1C	; =0x048080FE
	ldrh	r0, [r0]
	strh	r0, [r6, #6]
	ldrh	r0, [r7, #110]	; 0x6e
	mov	r4, r0, lsl #10
	ldr	r0, [sp]
	ldr	r1, [sp, #4]
	mov	r2, r4
	mov	r3, r5
	bl	FUN_06009EDC
	str	r0, [sp]
	str	r1, [sp, #4]
	mov	r2, #1
	adds	ip, r0, r2
	adc	r3, r1, #0
	str	ip, [sp]
	str	r3, [sp, #4]
	umull	r1, r0, ip, r4
	mla	r0, ip, r5, r0
	mla	r0, r3, r4, r0
	str	r1, [sp]
	str	r0, [sp, #4]
	ldrh	r1, [r6, #6]
	ldr	r0, _0600AA20	; =0x048080F6
	strh	r1, [r0]
	ldrh	r1, [r6, #4]
	ldr	r0, _0600AA24	; =0x048080F4
	strh	r1, [r0]
	ldrh	r1, [r6, #2]
	ldr	r0, _0600AA28	; =0x048080F2
	strh	r1, [r0]
	ldrh	r0, [r6]
	orr	r1, r0, #1
	ldr	r0, _0600AA2C	; =0x048080F0
	strh	r1, [r0]
	ldr	r0, _0600AA00	; =0x048080E8
	strh	r2, [r0]
	ldr	r0, _0600AA30	; =0x048080EA
	strh	r2, [r0]
	mov	r0, #64	; 0x40
	bl	FUN_0600AF68
	bl	FUN_06014B10
	mov	r1, #2
	ldr	r0, _0600AA34	; =0x048080AE
	strh	r1, [r0]
	b	_0600A97C
_0600A84C:
	ldr	r0, _0600AA38	; =0x0000E0BF
	ldr	r1, _0600A9F4	; =0x04808012
	strh	r0, [r1]
	ldr	r0, _0600A9B8	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #1536	; 0x600
	ldrh	r0, [r0, #144]	; 0x90
	ands	r0, r0, #32
	beq	_0600A88C
	ldrh	r0, [r1]
	orr	r0, r0, #64	; 0x40
	strh	r0, [r1]
	ldr	r1, _0600A9E8	; =0x048081AA
	ldrh	r0, [r1]
	orr	r0, r0, #104	; 0x68
	strh	r0, [r1]
_0600A88C:
	ldrh	r0, [r7, #100]	; 0x64
	ands	r0, r0, #1
	ldrne	r1, _0600AA3C	; =0x00000581
	ldrne	r0, _0600A9F8	; =0x048080D0
	strneh	r1, [r0]
	ldreq	r1, _0600AA40	; =0x00000181
	ldreq	r0, _0600A9F8	; =0x048080D0
	streqh	r1, [r0]
	mov	r1, #11
	ldr	r0, _0600A9FC	; =0x048080E0
	strh	r1, [r0]
	mov	r1, #1
	ldr	r0, _0600AA04	; =0x04808004
	strh	r1, [r0]
	ldr	r0, _0600AA00	; =0x048080E8
	strh	r1, [r0]
	ldr	r0, _0600AA30	; =0x048080EA
	strh	r1, [r0]
	mov	r0, #32
	bl	FUN_0600AF68
	b	_0600A97C
_0600A8E0:
	ldr	r1, _0600A9C4	; =0x0000FFFF
	ldr	r0, _0600A9DC	; =0x04808010
	strh	r1, [r0]
	ldr	r1, _0600AA44	; =0x0000C03F
	ldr	r0, _0600A9F4	; =0x04808012
	strh	r1, [r0]
	ldrh	r0, [r7, #100]	; 0x64
	ands	r0, r0, #1
	ldrne	r1, _0600AA48	; =0x00000401
	ldrne	r0, _0600A9F8	; =0x048080D0
	strneh	r1, [r0]
	moveq	r1, #1
	ldreq	r0, _0600A9F8	; =0x048080D0
	streqh	r1, [r0]
	mov	r1, #11
	ldr	r0, _0600A9FC	; =0x048080E0
	strh	r1, [r0]
	mov	r1, #1
	ldr	r0, _0600AA04	; =0x04808004
	strh	r1, [r0]
	ldr	r0, _0600AA00	; =0x048080E8
	strh	r1, [r0]
	ldr	r0, _0600AA30	; =0x048080EA
	strh	r1, [r0]
	mov	r1, #0
	ldr	r0, _0600AA4C	; =0x04808048
	strh	r1, [r0]
	mov	r0, #32
	bl	FUN_0600AF68
	b	_0600A97C
_0600A958:
	ldr	r0, _0600A9F4	; =0x04808012
	strh	r5, [r0]
	ldr	r0, _0600A9E4	; =0x048081AE
	strh	r5, [r0]
	mov	r1, #1
	ldr	r0, _0600AA04	; =0x04808004
	strh	r1, [r0]
	mov	r0, #32
	bl	FUN_0600AF68
_0600A97C:
	mov	r1, #0
	ldr	r0, _0600AA4C	; =0x04808048
	strh	r1, [r0]
	bl	FUN_0600B21C
	mov	r0, #2
	ldr	r1, _0600AA34	; =0x048080AE
	strh	r0, [r1]
	ldrh	r1, [r7, #14]
	cmp	r1, #1
	bne	_0600A9A8
	bl	FUN_0600B3F4
_0600A9A8:
	bl	FUN_0600F82C
	add	sp, sp, #12
	ldmia	sp!, {r4, r5, r6, r7, lr}
	bx	lr
_0600A9B8:	.word	0x0380FFF4
_0600A9BC:	.word	0x04808044
_0600A9C0:	.word	0x04808032
_0600A9C4:	.word	0x0000FFFF
_0600A9C8:	.word	0x04808134
_0600A9CC:	.word	0x0480802A
_0600A9D0:	.word	0x04808028
_0600A9D4:	.word	0x04808038
_0600A9D8:	.word	0x04808030
_0600A9DC:	.word	0x04808010
_0600A9E0:	.word	0x00001FFF
_0600A9E4:	.word	0x048081AE
_0600A9E8:	.word	0x048081AA
_0600A9EC:	.word	0x04808008
_0600A9F0:	.word	0x0480800A
_0600A9F4:	.word	0x04808012
_0600A9F8:	.word	0x048080D0
_0600A9FC:	.word	0x048080E0
_0600AA00:	.word	0x048080E8
_0600AA04:	.word	0x04808004
_0600AA08:	.word	0x0000703F
_0600AA0C:	.word	0x00000301
_0600AA10:	.word	0x048080F8
_0600AA14:	.word	0x048080FA
_0600AA18:	.word	0x048080FC
_0600AA1C:	.word	0x048080FE
_0600AA20:	.word	0x048080F6
_0600AA24:	.word	0x048080F4
_0600AA28:	.word	0x048080F2
_0600AA2C:	.word	0x048080F0
_0600AA30:	.word	0x048080EA
_0600AA34:	.word	0x048080AE
_0600AA38:	.word	0x0000E0BF
_0600AA3C:	.word	0x00000581
_0600AA40:	.word	0x00000181
_0600AA44:	.word	0x0000C03F
_0600AA48:	.word	0x00000401
_0600AA4C:	.word	0x04808048

	arm_func_start FUN_0600AA50
FUN_0600AA50: ; 0x0600AA50
	ldr	r0, _0600AA98	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r1, [r0, #48]	; 0x30
	cmp	r1, #0
	beq	_0600AA74
	cmp	r1, #1
	beq	_0600AA88
	b	_0600AA90
_0600AA74:
	ldrh	r0, [r0, #164]	; 0xa4
	ands	r0, r0, #1
	beq	_0600AA90
	mov	r0, #10
	bx	lr
_0600AA88:
	mov	r0, #10
	bx	lr
_0600AA90:
	mov	r0, #20
	bx	lr
_0600AA98:	.word	0x0380FFF4

	arm_func_start FUN_0600AA9C
FUN_0600AA9C: ; 0x0600AA9C
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	r4, r0
	mov	sl, r1
	mov	r0, #0
	strh	r0, [sl]
	strh	r0, [sl, #2]
	add	r0, r4, #1
	bl	FUN_06009CB0
	mov	r8, r0
	mov	r9, #0
	ldr	r6, _0600AB54	; =_060194D8
	add	r7, r4, #2
	add	r4, sl, #2
	mov	r5, #1
	b	_0600AB44
_0600AAD8:
	add	r0, r7, r9
	bl	FUN_06009CB0
	and	r1, r0, #127	; 0x7f
	sub	r1, r1, #1
	cmp	r1, #120	; 0x78
	bcs	_0600AB24
	mov	r1, r1, lsl #1
	ldrh	r3, [r6, r1]
	cmp	r3, #255	; 0xff
	beq	_0600AB24
	mov	r2, r5, lsl r3
	ldrh	r1, [r4]
	orr	r1, r1, r5, lsl r3
	strh	r1, [r4]
	ands	r0, r0, #128	; 0x80
	ldrneh	r0, [sl]
	orrne	r0, r0, r2
	strneh	r0, [sl]
	b	_0600AB40
_0600AB24:
	ldrh	r1, [r4]
	orr	r1, r1, #32768	; 0x8000
	strh	r1, [r4]
	ands	r0, r0, #128	; 0x80
	ldrneh	r0, [sl]
	orrne	r0, r0, #32768	; 0x8000
	strneh	r0, [sl]
_0600AB40:
	add	r9, r9, #1
_0600AB44:
	cmp	r9, r8
	bcc	_0600AAD8
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	bx	lr
_0600AB54:	.word	_060194D8

	arm_func_start FUN_0600AB58
FUN_0600AB58: ; 0x0600AB58
	mov	r2, #1
	ldr	r1, _0600AB74	; =0x0380FFF4
	ldr	r1, [r1]
	add	r1, r1, #768	; 0x300
	ldrh	r1, [r1, #44]	; 0x2c
	and	r0, r1, r2, lsl r0
	bx	lr
_0600AB74:	.word	0x0380FFF4

	arm_func_start FUN_0600AB78
FUN_0600AB78: ; 0x0600AB78
	ldrh	r3, [r0, #4]
	ldrh	r2, [r1, #4]
	cmp	r3, r2
	bne	_0600ABAC
	ldrh	r3, [r0, #2]
	ldrh	r2, [r1, #2]
	cmp	r3, r2
	bne	_0600ABAC
	ldrh	r2, [r0]
	ldrh	r0, [r1]
	cmp	r2, r0
	moveq	r0, #1
	bxeq	lr
_0600ABAC:
	mov	r0, #0
	bx	lr

	arm_func_start FUN_0600ABB4
FUN_0600ABB4: ; 0x0600ABB4
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	r9, r0
	mov	r8, r1
	ldr	r0, _0600AC80	; =0x0380FFF4
	ldr	r0, [r0]
	add	r2, r0, #836	; 0x344
	cmp	r9, #32
	movhi	r0, #0
	bhi	_0600AC78
	ldrh	r1, [r2, #30]
	cmp	r1, #0
	moveq	r0, #1
	beq	_0600AC78
	add	r0, r0, #1024	; 0x400
	ldrh	r0, [r0, #4]
	cmp	r0, #19
	bne	_0600AC0C
	cmp	r9, r1
	movcc	r0, #0
	bcc	_0600AC78
	mov	r9, r1
	b	_0600AC18
_0600AC0C:
	cmp	r9, r1
	movne	r0, #0
	bne	_0600AC78
_0600AC18:
	add	r7, r2, #32
	add	r6, r2, #64	; 0x40
	mov	r5, #0
	b	_0600AC6C
_0600AC28:
	mov	r0, r6
	bl	FUN_06009CB0
	mov	r4, r0
	add	r6, r6, #1
	mov	r0, r8
	bl	FUN_06009CB0
	mov	sl, r0
	add	r8, r8, #1
	mov	r0, r7
	bl	FUN_06009CB0
	add	r7, r7, #1
	orr	r1, sl, r4
	orr	r0, r0, r4
	cmp	r1, r0
	movne	r0, #0
	bne	_0600AC78
	add	r5, r5, #1
_0600AC6C:
	cmp	r5, r9
	bcc	_0600AC28
	mov	r0, #1
_0600AC78:
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	bx	lr
_0600AC80:	.word	0x0380FFF4

	arm_func_start FUN_0600AC84
FUN_0600AC84: ; 0x0600AC84
	ldr	r0, _0600AE7C	; =0x0380FFF4
	ldr	r1, [r0]
	ldr	r0, _0600AE80	; =0x0000053C
	add	r1, r1, r0
	ldr	r0, _0600AE84	; =0x048081B0
	ldrh	r2, [r0]
	ldr	r3, [r1, #80]	; 0x50
	and	r2, r2, #255	; 0xff
	add	r2, r3, r2
	str	r2, [r1, #80]	; 0x50
	ldrh	ip, [r0, #2]
	ldr	r2, [r1, #76]	; 0x4c
	add	r2, r2, ip, asr #8
	str	r2, [r1, #76]	; 0x4c
	ldr	r3, [r1, #92]	; 0x5c
	and	r2, ip, #255	; 0xff
	add	r2, r3, r2
	str	r2, [r1, #92]	; 0x5c
	ldrh	ip, [r0, #4]
	ldr	r2, [r1, #88]	; 0x58
	add	r2, r2, ip, asr #8
	str	r2, [r1, #88]	; 0x58
	ldr	r3, [r1, #84]	; 0x54
	and	r2, ip, #255	; 0xff
	add	r2, r3, r2
	str	r2, [r1, #84]	; 0x54
	ldrh	ip, [r0, #6]
	ldr	r2, [r1, #96]	; 0x60
	add	r2, r2, ip, asr #8
	str	r2, [r1, #96]	; 0x60
	ldr	r3, [r1, #56]	; 0x38
	and	r2, ip, #255	; 0xff
	add	r2, r3, r2
	str	r2, [r1, #56]	; 0x38
	ldrh	r2, [r0, #8]
	ldr	r3, [r1, #72]	; 0x48
	and	r2, r2, #255	; 0xff
	add	r2, r3, r2
	str	r2, [r1, #72]	; 0x48
	ldrh	r2, [r0, #10]
	ldr	r3, [r1, #32]
	and	r2, r2, #255	; 0xff
	add	r2, r3, r2
	str	r2, [r1, #32]
	ldrh	ip, [r0, #12]
	ldr	r2, [r1, #48]	; 0x30
	add	r2, r2, ip, asr #8
	str	r2, [r1, #48]	; 0x30
	ldr	r3, [r1, #68]	; 0x44
	and	r2, ip, #255	; 0xff
	add	r2, r3, r2
	str	r2, [r1, #68]	; 0x44
	ldrh	ip, [r0, #14]
	ldr	r3, [r1, #60]	; 0x3c
	and	r2, ip, #255	; 0xff
	add	r2, r3, r2
	str	r2, [r1, #60]	; 0x3c
	ldr	r2, [r1, #64]	; 0x40
	add	r2, r2, ip, asr #8
	str	r2, [r1, #64]	; 0x40
	ldrh	r2, [r0, #16]
	ldr	r3, [r1, #12]
	and	r2, r2, #255	; 0xff
	add	r2, r3, r2
	str	r2, [r1, #12]
	ldrh	r3, [r0, #32]
	ldr	r2, [r1, #120]	; 0x78
	add	r2, r2, r3, asr #8
	str	r2, [r1, #120]	; 0x78
	ldrh	ip, [r0, #34]	; 0x22
	ldr	r3, [r1, #124]	; 0x7c
	and	r2, ip, #255	; 0xff
	add	r2, r3, r2
	str	r2, [r1, #124]	; 0x7c
	ldr	r2, [r1, #128]	; 0x80
	add	r2, r2, ip, asr #8
	str	r2, [r1, #128]	; 0x80
	ldrh	ip, [r0, #36]	; 0x24
	ldr	r3, [r1, #132]	; 0x84
	and	r2, ip, #255	; 0xff
	add	r2, r3, r2
	str	r2, [r1, #132]	; 0x84
	ldr	r2, [r1, #136]	; 0x88
	add	r2, r2, ip, asr #8
	str	r2, [r1, #136]	; 0x88
	ldrh	ip, [r0, #38]	; 0x26
	ldr	r3, [r1, #140]	; 0x8c
	and	r2, ip, #255	; 0xff
	add	r2, r3, r2
	str	r2, [r1, #140]	; 0x8c
	ldr	r2, [r1, #144]	; 0x90
	add	r2, r2, ip, asr #8
	str	r2, [r1, #144]	; 0x90
	ldrh	ip, [r0, #40]	; 0x28
	ldr	r3, [r1, #148]	; 0x94
	and	r2, ip, #255	; 0xff
	add	r2, r3, r2
	str	r2, [r1, #148]	; 0x94
	ldr	r2, [r1, #152]	; 0x98
	add	r2, r2, ip, asr #8
	str	r2, [r1, #152]	; 0x98
	ldrh	ip, [r0, #42]	; 0x2a
	ldr	r3, [r1, #156]	; 0x9c
	and	r2, ip, #255	; 0xff
	add	r2, r3, r2
	str	r2, [r1, #156]	; 0x9c
	ldr	r2, [r1, #160]	; 0xa0
	add	r2, r2, ip, asr #8
	str	r2, [r1, #160]	; 0xa0
	ldrh	ip, [r0, #44]	; 0x2c
	ldr	r3, [r1, #164]	; 0xa4
	and	r2, ip, #255	; 0xff
	add	r2, r3, r2
	str	r2, [r1, #164]	; 0xa4
	ldr	r2, [r1, #168]	; 0xa8
	add	r2, r2, ip, asr #8
	str	r2, [r1, #168]	; 0xa8
	ldrh	r3, [r0, #46]	; 0x2e
	ldr	r2, [r1, #172]	; 0xac
	and	r0, r3, #255	; 0xff
	add	r0, r2, r0
	str	r0, [r1, #172]	; 0xac
	ldr	r0, [r1, #176]	; 0xb0
	add	r0, r0, r3, asr #8
	str	r0, [r1, #176]	; 0xb0
	bx	lr
_0600AE7C:	.word	0x0380FFF4
_0600AE80:	.word	0x0000053C
_0600AE84:	.word	0x048081B0

	arm_func_start FUN_0600AE88
FUN_0600AE88: ; 0x0600AE88
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	bl	FUN_0600AC84
	mov	r0, #0
	ldr	r1, _0600AEBC	; =0x0380FFF4
	ldr	r2, [r1]
	ldr	r1, _0600AEC0	; =0x0000053C
	add	r1, r2, r1
	mov	r2, #180	; 0xb4
	bl	FUN_0600AEC4
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_0600AEBC:	.word	0x0380FFF4
_0600AEC0:	.word	0x0000053C

	arm_func_start FUN_0600AEC4
FUN_0600AEC4: ; 0x0600AEC4
	ldr	pc, _0600AEC8	; =FUN_037FB334
_0600AEC8:	.word	FUN_037FB334

	arm_func_start FUN_0600AECC
FUN_0600AECC: ; 0x0600AECC
	ldrh	ip, [r1]
	strh	ip, [r0]
	ldrh	ip, [r1, #2]
	strh	ip, [r0, #2]
	ldrh	r1, [r1, #4]
	strh	r1, [r0, #4]
	ldrh	r1, [r2]
	strh	r1, [r0, #6]
	ldrh	r1, [r2, #2]
	strh	r1, [r0, #8]
	ldrh	r1, [r2, #4]
	strh	r1, [r0, #10]
	ldrh	r1, [r3]
	strh	r1, [r0, #12]
	ldrh	r1, [r3, #2]
	strh	r1, [r0, #14]
	ldrh	r1, [r3, #4]
	strh	r1, [r0, #16]
	bx	lr
_0600AF18:
	ldrh	r3, [r1]
	strh	r3, [r0]
	ldrh	r3, [r1, #2]
	strh	r3, [r0, #2]
	ldrh	r1, [r1, #4]
	strh	r1, [r0, #4]
	ldrh	r1, [r2]
	strh	r1, [r0, #6]
	ldrh	r1, [r2, #2]
	strh	r1, [r0, #8]
	ldrh	r1, [r2, #4]
	strh	r1, [r0, #10]
	bx	lr

	arm_func_start FUN_0600AF4C
FUN_0600AF4C: ; 0x0600AF4C
	ldrh	r2, [r1]
	strh	r2, [r0]
	ldrh	r2, [r1, #2]
	strh	r2, [r0, #2]
	ldrh	r1, [r1, #4]
	strh	r1, [r0, #4]
	bx	lr

	arm_func_start FUN_0600AF68
FUN_0600AF68: ; 0x0600AF68
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	mov	r5, r0
	ldr	r0, _0600AFFC	; =0x0380FFF4
	ldr	r0, [r0]
	add	r4, r0, #836	; 0x344
	ldrh	r0, [r4, #8]
	cmp	r0, r5
	beq	_0600AFF0
	cmp	r0, #64	; 0x40
	bne	_0600AF98
	bl	FUN_06009E28
_0600AF98:
	cmp	r5, #0
	beq	_0600AFB4
	cmp	r5, #16
	beq	_0600AFBC
	cmp	r5, #64	; 0x40
	beq	_0600AFD0
	b	_0600AFEC
_0600AFB4:
	bl	FUN_0600B36C
	b	_0600AFEC
_0600AFBC:
	mov	r0, #0
	bl	FUN_0600B3E0
	bl	FUN_0600A4EC
	bl	FUN_0600B2D8
	b	_0600AFEC
_0600AFD0:
	ldrh	r0, [r4, #12]
	cmp	r0, #2
	bne	_0600AFE0
	bl	FUN_0600B1EC
_0600AFE0:
	mov	r0, #100	; 0x64
	ldr	r1, _0600B000	; =FUN_06009F5C
	bl	FUN_0600A000
_0600AFEC:
	strh	r5, [r4, #8]
_0600AFF0:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_0600AFFC:	.word	0x0380FFF4
_0600B000:	.word	FUN_06009F5C

	arm_func_start FUN_0600B004
FUN_0600B004: ; 0x0600B004
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	ldr	r0, _0600B02C	; =0x04808094
	ldrh	r0, [r0]
	ands	r0, r0, #32768	; 0x8000
	bne	_0600B020
	bl	FUN_0600F718
_0600B020:
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_0600B02C:	.word	0x04808094

	arm_func_start FUN_0600B030
FUN_0600B030: ; 0x0600B030
	ldr	r0, _0600B04C	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r1, [r0, #174]	; 0xae
	ldr	r0, _0600B050	; =0x04808028
	strh	r1, [r0]
	bx	lr
_0600B04C:	.word	0x0380FFF4
_0600B050:	.word	0x04808028

	arm_func_start FUN_0600B054
FUN_0600B054: ; 0x0600B054
	stmdb	sp!, {r4, lr}
	ldr	r0, _0600B0A8	; =0x0380FFF4
	ldr	r0, [r0]
	add	r4, r0, #836	; 0x344
	mov	r0, #0
	strh	r0, [r4, #106]	; 0x6a
	bl	FUN_0600F718
	mov	r1, #0
	ldr	r0, _0600B0AC	; =0x0480802A
	strh	r1, [r0]
	ldrh	r0, [r4, #136]	; 0x88
	cmp	r0, #0
	beq	_0600B0A0
	bl	FUN_06014EB8
	ldrh	r0, [r4, #136]	; 0x88
	mov	r1, #32
	bl	FUN_0600F294
	mov	r0, #0
	strh	r0, [r4, #136]	; 0x88
_0600B0A0:
	ldmia	sp!, {r4, lr}
	bx	lr
_0600B0A8:	.word	0x0380FFF4
_0600B0AC:	.word	0x0480802A

	arm_func_start FUN_0600B0B0
FUN_0600B0B0: ; 0x0600B0B0
	ldr	r2, _0600B0E8	; =0x0380FFF4
	ldr	r1, [r2]
	add	r1, r1, #768	; 0x300
	strh	r0, [r1, #174]	; 0xae
	ldr	r1, _0600B0EC	; =0x0480802A
	strh	r0, [r1]
	ldr	r1, [r2]
	add	r1, r1, #768	; 0x300
	ldrh	r1, [r1, #58]	; 0x3a
	mov	r1, r1, lsl #24
	movs	r1, r1, lsr #31
	ldrne	r1, _0600B0F0	; =0x04808028
	strneh	r0, [r1]
	bx	lr
_0600B0E8:	.word	0x0380FFF4
_0600B0EC:	.word	0x0480802A
_0600B0F0:	.word	0x04808028

	arm_func_start FUN_0600B0F4
FUN_0600B0F4: ; 0x0600B0F4
	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r6, r0
	mov	r5, r1
	ldr	r0, _0600B19C	; =0x0380FFF4
	ldr	r0, [r0]
	add	r4, r0, #836	; 0x344
	cmp	r6, #128	; 0x80
	movhi	r0, #4
	bhi	_0600B194
	cmp	r6, #0
	beq	_0600B184
	ldrh	r0, [r4, #162]	; 0xa2
	ands	r0, r0, #1
	beq	_0600B174
	ldr	r8, [r4, #156]	; 0x9c
	mov	r0, r8
	mov	r1, #255	; 0xff
	bl	FUN_06009CD0
	add	r8, r8, #1
	mov	r7, #0
	b	_0600B168
_0600B148:
	mov	r0, r5
	bl	FUN_06009CB0
	mov	r1, r0
	mov	r0, r8
	bl	FUN_06009CD0
	add	r8, r8, #1
	add	r5, r5, #1
	add	r7, r7, #1
_0600B168:
	cmp	r7, r6
	bcc	_0600B148
	b	_0600B184
_0600B174:
	mov	r0, r5
	ldr	r1, [r4, #156]	; 0x9c
	add	r2, r6, #1
	bl	FUN_06000EA0
_0600B184:
	strh	r6, [r4, #160]	; 0xa0
	mov	r0, #1
	strh	r0, [r4, #164]	; 0xa4
	mov	r0, #0
_0600B194:
	ldmia	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
_0600B19C:	.word	0x0380FFF4

	arm_func_start FUN_0600B1A0
FUN_0600B1A0: ; 0x0600B1A0
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	mov	r5, r0
	ldr	r0, _0600B1E8	; =0x0380FFF4
	ldr	r0, [r0]
	add	r4, r0, #836	; 0x344
	cmp	r5, #128	; 0x80
	movhi	r0, #4
	bhi	_0600B1DC
	mov	r0, r1
	ldr	r1, [r4, #156]	; 0x9c
	add	r2, r5, #1
	bl	FUN_06000EA0
	strh	r5, [r4, #160]	; 0xa0
	mov	r0, #0
_0600B1DC:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_0600B1E8:	.word	0x0380FFF4

	arm_func_start FUN_0600B1EC
FUN_0600B1EC: ; 0x0600B1EC
	mov	r1, #0
	ldr	r0, _0600B214	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	strh	r1, [r0, #234]	; 0xea
	ldr	r1, _0600B218	; =0x04808038
	ldrh	r0, [r1]
	orr	r0, r0, #2
	strh	r0, [r1]
	bx	lr
_0600B214:	.word	0x0380FFF4
_0600B218:	.word	0x04808038

	arm_func_start FUN_0600B21C
FUN_0600B21C: ; 0x0600B21C
	mov	r2, #1
	ldr	r1, _0600B264	; =0x0380FFF4
	ldr	r0, [r1]
	add	r0, r0, #768	; 0x300
	strh	r2, [r0, #234]	; 0xea
	ldr	r0, [r1]
	add	r0, r0, #1024	; 0x400
	ldrh	r0, [r0, #104]	; 0x68
	cmp	r0, #0
	bxne	lr
	ldr	r1, _0600B268	; =0x04808038
	ldrh	r0, [r1]
	bic	r0, r0, #2
	strh	r0, [r1]
	mov	r1, #0
	ldr	r0, _0600B26C	; =0x04808048
	strh	r1, [r0]
	bx	lr
_0600B264:	.word	0x0380FFF4
_0600B268:	.word	0x04808038
_0600B26C:	.word	0x04808048

	arm_func_start FUN_0600B270
FUN_0600B270: ; 0x0600B270
	stmdb	sp!, {r4, r5, r6, lr}
	mov	r6, r0
	ldr	r0, _0600B2D0	; =0x0380FFF4
	ldr	r0, [r0]
	add	r5, r0, #836	; 0x344
	add	r4, r0, #796	; 0x31c
	ldr	r0, _0600B2D4	; =0x0000FFFF
	cmp	r6, r0
	moveq	r1, #255	; 0xff
	streqh	r1, [r4, #28]
	streqh	r0, [r5, #140]	; 0x8c
	beq	_0600B2C4
	ldrh	r0, [r5, #110]	; 0x6e
	mul	r0, r6, r0
	mov	r1, #100	; 0x64
	bl	FUN_06003B68
	cmp	r0, #65536	; 0x10000
	movhi	r0, #5
	bhi	_0600B2C8
	strh	r6, [r4, #28]
	strh	r0, [r5, #140]	; 0x8c
_0600B2C4:
	mov	r0, #0
_0600B2C8:
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr
_0600B2D0:	.word	0x0380FFF4
_0600B2D4:	.word	0x0000FFFF

	arm_func_start FUN_0600B2D8
FUN_0600B2D8: ; 0x0600B2D8
	stmdb	sp!, {r4, lr}
	mov	r1, #0
	ldr	r0, _0600B360	; =0x04808036
	strh	r1, [r0]
	mov	r0, #8
	bl	FUN_0600A0AC
	mov	r1, #0
	ldr	r0, _0600B364	; =0x04808168
	strh	r1, [r0]
	ldr	r0, _0600B368	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #1280	; 0x500
	ldrh	r0, [r0, #248]	; 0xf8
	cmp	r0, #2
	beq	_0600B320
	cmp	r0, #3
	beq	_0600B354
	b	_0600B358
_0600B320:
	mov	r0, #1
	bl	FUN_0600A4B8
	mov	r4, r0
	mov	r0, #1
	and	r1, r4, #127	; 0x7f
	bl	FUN_0600A478
	mov	r0, #1
	mov	r1, r4
	bl	FUN_0600A478
	mov	r0, #40	; 0x28
	bl	FUN_0600A0AC
	bl	FUN_0600A134
	b	_0600B358
_0600B354:
	bl	FUN_0600A134
_0600B358:
	ldmia	sp!, {r4, lr}
	bx	lr
_0600B360:	.word	0x04808036
_0600B364:	.word	0x04808168
_0600B368:	.word	0x0380FFF4

	arm_func_start FUN_0600B36C
FUN_0600B36C: ; 0x0600B36C
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	ldr	r0, _0600B3CC	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #1280	; 0x500
	ldrh	r0, [r0, #248]	; 0xf8
	cmp	r0, #2
	bne	_0600B394
	ldr	r0, _0600B3D0	; =0x0000C008
	bl	FUN_0600A450
_0600B394:
	mov	r0, #30
	bl	FUN_0600A4B8
	orr	r1, r0, #63	; 0x3f
	mov	r0, #30
	bl	FUN_0600A478
	ldr	r1, _0600B3D4	; =0x0000800D
	ldr	r0, _0600B3D8	; =0x04808168
	strh	r1, [r0]
	mov	r1, #1
	ldr	r0, _0600B3DC	; =0x04808036
	strh	r1, [r0]
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_0600B3CC:	.word	0x0380FFF4
_0600B3D0:	.word	0x0000C008
_0600B3D4:	.word	0x0000800D
_0600B3D8:	.word	0x04808168
_0600B3DC:	.word	0x04808036

	arm_func_start FUN_0600B3E0
FUN_0600B3E0: ; 0x0600B3E0
	ldr	r1, _0600B3F0	; =0x04808040
	strh	r0, [r1]
	mov	r0, #0
	bx	lr
_0600B3F0:	.word	0x04808040

	arm_func_start FUN_0600B3F4
FUN_0600B3F4: ; 0x0600B3F4
	mov	r2, r0, lsr #1
	ldr	r1, _0600B418	; =0x0380FFF4
	ldr	r1, [r1]
	add	r1, r1, #768	; 0x300
	strh	r2, [r1, #84]	; 0x54
	ldr	r1, _0600B41C	; =0x0480803C
	strh	r0, [r1]
	mov	r0, #0
	bx	lr
_0600B418:	.word	0x0380FFF4
_0600B41C:	.word	0x0480803C

	arm_func_start FUN_0600B420
FUN_0600B420: ; 0x0600B420
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	ldr	r1, _0600B48C	; =0x0380FFF4
	ldr	r1, [r1]
	add	r2, r1, #796	; 0x31c
	add	r1, r1, #768	; 0x300
	strh	r0, [r1, #82]	; 0x52
	cmp	r0, #0
	beq	_0600B460
	ldrh	r0, [r2, #18]
	cmp	r0, #1
	ldrne	r1, _0600B490	; =0x04808006
	ldrneh	r0, [r1]
	orrne	r0, r0, #64	; 0x40
	strneh	r0, [r1]
	bne	_0600B47C
_0600B460:
	ldr	r1, _0600B490	; =0x04808006
	ldrh	r0, [r1]
	bic	r0, r0, #64	; 0x40
	strh	r0, [r1]
	ldrh	r0, [r2, #32]
	mov	r1, #0
	bl	FUN_0600BEFC
_0600B47C:
	mov	r0, #0
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_0600B48C:	.word	0x0380FFF4
_0600B490:	.word	0x04808006

	arm_func_start FUN_0600B494
FUN_0600B494: ; 0x0600B494
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	ldr	r0, _0600B510	; =0x0000E2E2
	str	r0, [sp]
	mov	r0, #88	; 0x58
	mov	r1, #2
	add	r2, sp, #0
	bl	FUN_0601910C
	ldr	r1, [sp]
	ldr	r0, _0600B514	; =0x00000202
	add	r0, r1, r0
	str	r0, [sp]
	bl	FUN_0600AA50
	cmp	r0, #20
	bne	_0600B4F8
	ldr	r1, [sp]
	ldr	r0, _0600B518	; =0x00006161
	sub	r1, r1, r0
	str	r1, [sp]
	ldr	r0, _0600B51C	; =0x048080BC
	ldrh	r0, [r0]
	ands	r0, r0, #2
	ldrne	r0, _0600B520	; =0x00006060
	subne	r0, r1, r0
	strne	r0, [sp]
_0600B4F8:
	ldr	r1, [sp]
	ldr	r0, _0600B524	; =0x04808140
	strh	r1, [r0]
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_0600B510:	.word	0x0000E2E2
_0600B514:	.word	0x00000202
_0600B518:	.word	0x00006161
_0600B51C:	.word	0x048080BC
_0600B520:	.word	0x00006060
_0600B524:	.word	0x04808140

	arm_func_start FUN_0600B528
FUN_0600B528: ; 0x0600B528
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	ldr	r1, _0600B56C	; =0x0380FFF4
	ldr	r1, [r1]
	add	r3, r1, #932	; 0x3a4
	ldrh	r2, [r0]
	add	r1, r1, #768	; 0x300
	strh	r2, [r1, #164]	; 0xa4
	ldrh	r1, [r0, #2]
	ldrh	r0, [r0]
	orr	r0, r1, r0
	strh	r0, [r3, #2]
	bl	FUN_0600B494
	mov	r0, #0
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_0600B56C:	.word	0x0380FFF4

	arm_func_start FUN_0600B570
FUN_0600B570: ; 0x0600B570
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #12
	mov	sl, r0
	cmp	r1, #0
	ldrne	r9, _0600B7E8	; =FUN_060190BC
	ldreq	r9, _0600B7EC	; =FUN_0601910C
	mov	r0, sl
	bl	FUN_0600AB58
	cmp	r0, #0
	moveq	r0, #5
	beq	_0600B7DC
	ldr	r1, _0600B7F0	; =0x04808040
	ldrh	r8, [r1]
	ldr	r0, _0600B7F4	; =0x00008001
	strh	r0, [r1]
	ldr	r2, _0600B7F8	; =0x0480803C
	ldr	r1, _0600B7FC	; =0x04808214
_0600B5B4:
	ldrh	r0, [r2]
	mov	r3, r0, asr #8
	ldrh	r0, [r1]
	cmp	r3, #2
	bne	_0600B5B4
	cmp	r0, #0
	beq	_0600B5D8
	cmp	r0, #9
	bne	_0600B5B4
_0600B5D8:
	ldr	fp, _0600B800	; =0x0380FFF4
	ldr	r0, [fp]
	add	r0, r0, #768	; 0x300
	strh	sl, [r0, #190]	; 0xbe
	ldr	r0, [fp]
	add	r0, r0, #1280	; 0x500
	ldrh	r1, [r0, #248]	; 0xf8
	cmp	r1, #2
	beq	_0600B60C
	cmp	r1, #3
	beq	_0600B6DC
	cmp	r1, #5
	bne	_0600B7C4
_0600B60C:
	mov	r0, #0
	str	r0, [sp]
	sub	r4, sl, #1
	mov	r0, #6
	mul	r5, r4, r0
	add	r0, r5, #242	; 0xf2
	mov	r1, #3
	add	r2, sp, #0
	mov	lr, pc
	bx	r9
	ldr	r0, [sp]
	bl	FUN_0600A450
	add	r0, r5, #245	; 0xf5
	mov	r1, #3
	add	r2, sp, #0
	mov	lr, pc
	bx	r9
	ldr	r0, [sp]
	bl	FUN_0600A450
	mov	r0, #0
	str	r0, [sp]
	ldr	r0, _0600B800	; =0x0380FFF4
	ldr	r0, [r0]
	ldr	r1, [r0, #1540]	; 0x604
	ands	r0, r1, #65536	; 0x10000
	beq	_0600B6B4
	ands	r0, r1, #32768	; 0x8000
	bne	_0600B7C4
	add	r0, r4, #340	; 0x154
	mov	r1, #1
	add	r2, sp, #0
	mov	lr, pc
	bx	r9
	ldr	r0, _0600B800	; =0x0380FFF4
	ldr	r0, [r0]
	ldr	r1, [r0, #1540]	; 0x604
	ldr	r0, [sp]
	and	r0, r0, #31
	orr	r0, r1, r0, lsl #10
	str	r0, [sp]
	bl	FUN_0600A450
	b	_0600B7C4
_0600B6B4:
	ldr	r0, _0600B804	; =0x00000146
	add	r0, r4, r0
	mov	r1, #1
	add	r2, sp, #0
	mov	lr, pc
	bx	r9
	mov	r0, #30
	ldr	r1, [sp]
	bl	FUN_0600A478
	b	_0600B7C4
_0600B6DC:
	ldrh	r0, [r0, #252]	; 0xfc
	add	r7, r0, #207	; 0xcf
	mov	r6, #0
	mov	r5, r6
	mov	r4, #1
	b	_0600B738
_0600B6F4:
	str	r5, [sp]
	str	r5, [sp, #4]
	mov	r0, r7
	mov	r1, r4
	add	r2, sp, #4
	mov	lr, pc
	bx	r9
	add	r0, r7, sl
	mov	r1, r4
	add	r2, sp, #0
	mov	lr, pc
	bx	r9
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	bl	FUN_0600A478
	add	r7, r7, #15
	add	r6, r6, #1
_0600B738:
	ldr	r0, [fp]
	add	r0, r0, #1536	; 0x600
	ldrh	r0, [r0]
	cmp	r6, r0
	bcc	_0600B6F4
	mov	r6, #0
	mov	r5, r6
	mov	r4, #1
	ldr	fp, _0600B800	; =0x0380FFF4
	b	_0600B7B0
_0600B760:
	str	r5, [sp]
	mov	r0, r7
	mov	r1, r4
	add	r2, sp, #0
	mov	lr, pc
	bx	r9
	ldr	r0, [sp]
	mov	r0, r0, lsl #8
	str	r0, [sp]
	add	r0, r7, sl
	mov	r1, r4
	add	r2, sp, #0
	mov	lr, pc
	bx	r9
	ldr	r0, [sp]
	orr	r0, r0, #327680	; 0x50000
	str	r0, [sp]
	bl	FUN_0600A450
	add	r7, r7, #15
	add	r6, r6, #1
_0600B7B0:
	ldr	r0, [fp]
	add	r0, r0, #1280	; 0x500
	ldrh	r0, [r0, #254]	; 0xfe
	cmp	r6, r0
	bcc	_0600B760
_0600B7C4:
	ldr	r0, _0600B7F0	; =0x04808040
	strh	r8, [r0]
	mov	r1, #3
	ldr	r0, _0600B808	; =0x04808048
	strh	r1, [r0]
	mov	r0, #0
_0600B7DC:
	add	sp, sp, #12
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
_0600B7E8:	.word	FUN_060190BC
_0600B7EC:	.word	FUN_0601910C
_0600B7F0:	.word	0x04808040
_0600B7F4:	.word	0x00008001
_0600B7F8:	.word	0x0480803C
_0600B7FC:	.word	0x04808214
_0600B800:	.word	0x0380FFF4
_0600B804:	.word	0x00000146
_0600B808:	.word	0x04808048

	arm_func_start FUN_0600B80C
FUN_0600B80C: ; 0x0600B80C
	stmfd	sp!, {lr}
	sub	sp, sp, #12
	mov	r0, #54	; 0x36
	mov	r1, #6
	add	r2, sp, #2
	bl	FUN_0601910C
	mov	r0, #60	; 0x3c
	mov	r1, #2
	add	r2, sp, #0
	bl	FUN_0601910C
	add	r0, sp, #2
	bl	FUN_0600C2D8
	mov	r0, #7
	bl	FUN_0600C2A4
	ldrh	r1, [sp]
	ldr	r0, _0600B940	; =0x00007FFE
	and	r0, r1, r0
	mov	r0, r0, lsl #16
	mov	r0, r0, lsr #16
	bl	FUN_0600C264
	mov	r0, #2
	bl	FUN_0600C1DC
	mov	r0, #0
	bl	FUN_0600C1A0
	mov	r0, #0
	bl	FUN_0600C0EC
	mov	r0, #0
	bl	FUN_0600C0C8
	ldr	r0, _0600B944	; =_06019424
	bl	FUN_0600C064
	mov	r0, #500	; 0x1f4
	bl	FUN_0600B9DC
	mov	r0, #0
	bl	FUN_0600C02C
	mov	r0, #0
	bl	FUN_0600BFF4
	mov	r0, #16
	bl	FUN_0600BFBC
	ldr	r0, _0600B948	; =0x0000FFFF
	mov	r1, #0
	bl	FUN_0600BEFC
	ldr	r0, _0600B94C	; =_060193C4
	bl	FUN_0600BECC
	mov	r0, #1
	bl	FUN_0600BE0C
	mov	r0, #0
	bl	FUN_0600BDE8
	ldr	r0, _0600B950	; =_06019380
	bl	FUN_0600B528
	mov	r0, #0
	mov	r1, #31
	bl	FUN_0600BDA0
	mov	r0, #5
	bl	FUN_0600B270
	mov	r0, #0
	mov	r1, r0
	bl	FUN_0600BC5C
	mov	r0, #0
	bl	FUN_0600BD38
	mov	r0, #0
	bl	FUN_0600BC1C
	mov	r0, #0
	bl	FUN_0600BBC0
	ldr	r2, _0600B954	; =0x04808044
	ldrh	r1, [r2]
	ldrh	r0, [r2]
	add	r0, r1, r0, lsl #8
	ldrh	r1, [r2]
	bl	FUN_06009C7C
	mov	r1, #1
	ldr	r0, _0600B958	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	strh	r1, [r0, #88]	; 0x58
	add	sp, sp, #12
	ldmfd	sp!, {lr}
	bx	lr
_0600B940:	.word	0x00007FFE
_0600B944:	.word	_06019424
_0600B948:	.word	0x0000FFFF
_0600B94C:	.word	_060193C4
_0600B950:	.word	_06019380
_0600B954:	.word	0x04808044
_0600B958:	.word	0x0380FFF4

	arm_func_start FUN_0600B95C
FUN_0600B95C: ; 0x0600B95C
	cmp	r0, #1
	bcc	_0600B96C
	cmp	r0, #255	; 0xff
	bls	_0600B974
_0600B96C:
	mov	r0, #5
	bx	lr
_0600B974:
	ldr	r1, _0600B98C	; =0x0380FFF4
	ldr	r1, [r1]
	add	r1, r1, #768	; 0x300
	strh	r0, [r1, #180]	; 0xb4
	mov	r0, #0
	bx	lr
_0600B98C:	.word	0x0380FFF4

	arm_func_start FUN_0600B990
FUN_0600B990: ; 0x0600B990
	cmp	r0, #1
	bcc	_0600B9A0
	cmp	r0, #255	; 0xff
	bls	_0600B9A8
_0600B9A0:
	mov	r0, #5
	bx	lr
_0600B9A8:
	ldr	r1, _0600B9D0	; =0x0380FFF4
	ldr	r1, [r1]
	add	r1, r1, #768	; 0x300
	strh	r0, [r1, #184]	; 0xb8
	ldr	r1, _0600B9D4	; =0x0480808E
	strh	r0, [r1]
	mov	r0, #0
	ldr	r1, _0600B9D8	; =0x04808088
	strh	r0, [r1]
	bx	lr
_0600B9D0:	.word	0x0380FFF4
_0600B9D4:	.word	0x0480808E
_0600B9D8:	.word	0x04808088

	arm_func_start FUN_0600B9DC
FUN_0600B9DC: ; 0x0600B9DC
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	cmp	r0, #10
	bcc	_0600B9F4
	cmp	r0, #1000	; 0x3e8
	bls	_0600B9FC
_0600B9F4:
	mov	r0, #5
	b	_0600BA28
_0600B9FC:
	ldr	r2, _0600BA34	; =0x0380FFF4
	ldr	r1, [r2]
	add	r1, r1, #768	; 0x300
	strh	r0, [r1, #178]	; 0xb2
	ldr	r1, _0600BA38	; =0x0480808C
	strh	r0, [r1]
	ldr	r0, [r2]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #56]	; 0x38
	bl	FUN_0600B270
	mov	r0, #0
_0600BA28:
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_0600BA34:	.word	0x0380FFF4
_0600BA38:	.word	0x0480808C

	arm_func_start FUN_0600BA3C
FUN_0600BA3C: ; 0x0600BA3C
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub	sp, sp, #4
	mov	r8, r0
	mov	r7, r1
	ldr	r0, _0600BB54	; =0x0380FFF4
	ldr	r1, [r0]
	add	r6, r1, #836	; 0x344
	mov	r4, #0
	cmp	r8, #32
	movhi	r0, #5
	bhi	_0600BB48
	ldrh	r0, [r6, #8]
	cmp	r0, #64	; 0x40
	bne	_0600BAA0
	add	r0, r1, #768	; 0x300
	ldrh	r0, [r0, #46]	; 0x2e
	cmp	r0, #1
	bne	_0600BAA0
	ldrh	r0, [r6, #30]
	cmp	r0, r8
	movne	r0, #6
	bne	_0600BB48
	ldrh	r0, [r6, #146]	; 0x92
	cmp	r0, #0
	movne	r4, #1
_0600BAA0:
	mov	r5, #0
	add	r9, r6, #32
	b	_0600BAC8
_0600BAAC:
	mov	r0, r7
	bl	FUN_06009CB0
	mov	r1, r0
	add	r0, r9, r5
	bl	FUN_06009CD0
	add	r7, r7, #1
	add	r5, r5, #1
_0600BAC8:
	cmp	r5, r8
	bcc	_0600BAAC
	add	r9, r6, #32
	mov	r7, #0
	b	_0600BAEC
_0600BADC:
	add	r0, r9, r5
	mov	r1, r7
	bl	FUN_06009CD0
	add	r5, r5, #1
_0600BAEC:
	cmp	r5, #32
	bcc	_0600BADC
	strh	r8, [r6, #30]
	cmp	r4, #0
	beq	_0600BB44
	ldr	r0, _0600BB54	; =0x0380FFF4
	ldr	r0, [r0]
	ldr	r0, [r0, #1196]	; 0x4ac
	add	r1, r0, #38	; 0x26
	ldrh	r0, [r6, #146]	; 0x92
	add	r7, r1, r0
	mov	r5, #0
	add	r4, r6, #32
	b	_0600BB3C
_0600BB24:
	add	r0, r4, r5
	bl	FUN_06009CB0
	mov	r1, r0
	add	r0, r7, r5
	bl	FUN_06009CD0
	add	r5, r5, #1
_0600BB3C:
	cmp	r5, r8
	bcc	_0600BB24
_0600BB44:
	mov	r0, #0
_0600BB48:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, lr}
	bx	lr
_0600BB54:	.word	0x0380FFF4

	arm_func_start FUN_0600BB58
FUN_0600BB58: ; 0x0600BB58
	stmdb	sp!, {r4, lr}
	mov	r4, r0
	ldr	r0, _0600BBB4	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #936	; 0x3a8
	mov	r1, r4
	bl	FUN_0600AF4C
	ldr	r0, _0600BBB8	; =0x04808020
	mov	r1, r4
	bl	FUN_0600AF4C
	ldrh	r0, [r4]
	ands	r0, r0, #1
	ldrne	r1, _0600BBBC	; =0x048080D0
	ldrneh	r0, [r1]
	bicne	r0, r0, #1024	; 0x400
	strneh	r0, [r1]
	ldreq	r1, _0600BBBC	; =0x048080D0
	ldreqh	r0, [r1]
	orreq	r0, r0, #1024	; 0x400
	streqh	r0, [r1]
	mov	r0, #0
	ldmia	sp!, {r4, lr}
	bx	lr
_0600BBB4:	.word	0x0380FFF4
_0600BBB8:	.word	0x04808020
_0600BBBC:	.word	0x048080D0

	arm_func_start FUN_0600BBC0
FUN_0600BBC0: ; 0x0600BBC0
	cmp	r0, #1
	movhi	r0, #5
	bxhi	lr
	ldr	r1, _0600BC10	; =0x0380FFF4
	ldr	r1, [r1]
	add	r2, r1, #768	; 0x300
	ldrh	r1, [r2, #58]	; 0x3a
	bic	r3, r1, #128	; 0x80
	mov	r1, r0, lsl #16
	mov	r1, r1, lsr #16
	and	r1, r1, #1
	orr	r1, r3, r1, lsl #7
	strh	r1, [r2, #58]	; 0x3a
	cmp	r0, #1
	ldreq	r0, _0600BC14	; =0x0480802A
	ldreqh	r1, [r0]
	ldreq	r0, _0600BC18	; =0x04808028
	streqh	r1, [r0]
	mov	r0, #0
	bx	lr
_0600BC10:	.word	0x0380FFF4
_0600BC14:	.word	0x0480802A
_0600BC18:	.word	0x04808028

	arm_func_start FUN_0600BC1C
FUN_0600BC1C: ; 0x0600BC1C
	cmp	r0, #1
	movhi	r0, #5
	bxhi	lr
	ldr	r1, _0600BC58	; =0x0380FFF4
	ldr	r1, [r1]
	add	r1, r1, #768	; 0x300
	ldrh	r2, [r1, #58]	; 0x3a
	bic	r2, r2, #64	; 0x40
	mov	r0, r0, lsl #16
	mov	r0, r0, lsr #16
	and	r0, r0, #1
	orr	r0, r2, r0, lsl #6
	strh	r0, [r1, #58]	; 0x3a
	mov	r0, #0
	bx	lr
_0600BC58:	.word	0x0380FFF4

	arm_func_start FUN_0600BC5C
FUN_0600BC5C: ; 0x0600BC5C
	cmp	r0, #1
	bhi	_0600BC6C
	cmp	r1, #1
	bls	_0600BC74
_0600BC6C:
	mov	r0, #5
	bx	lr
_0600BC74:
	cmp	r0, #0
	beq	_0600BC88
	cmp	r0, #1
	beq	_0600BCB4
	b	_0600BCDC
_0600BC88:
	ldr	r2, _0600BD30	; =0x0380FFF4
	ldr	r2, [r2]
	add	r2, r2, #768	; 0x300
	ldrh	r3, [r2, #58]	; 0x3a
	bic	r3, r3, #32
	mov	r1, r1, lsl #16
	mov	r1, r1, lsr #16
	and	r1, r1, #1
	orr	r1, r3, r1, lsl #5
	strh	r1, [r2, #58]	; 0x3a
	b	_0600BCDC
_0600BCB4:
	ldr	r1, _0600BD30	; =0x0380FFF4
	ldr	r1, [r1]
	add	r1, r1, #768	; 0x300
	ldrh	r2, [r1, #46]	; 0x2e
	cmp	r2, #1
	movne	r0, #11
	bxne	lr
	ldrh	r2, [r1, #58]	; 0x3a
	bic	r2, r2, #32
	strh	r2, [r1, #58]	; 0x3a
_0600BCDC:
	ldr	r3, _0600BD30	; =0x0380FFF4
	ldr	r1, [r3]
	add	r1, r1, #768	; 0x300
	ldrh	r2, [r1, #58]	; 0x3a
	bic	r2, r2, #16
	mov	r0, r0, lsl #16
	mov	r0, r0, lsr #16
	and	r0, r0, #1
	orr	r0, r2, r0, lsl #4
	strh	r0, [r1, #58]	; 0x3a
	ldr	r0, [r3]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #58]	; 0x3a
	mov	r1, r0, lsl #26
	mov	r1, r1, lsr #31
	mov	r0, r0, lsl #28
	eor	r1, r1, r0, lsr #31
	ldr	r0, _0600BD34	; =0x04808290
	strh	r1, [r0]
	mov	r0, #0
	bx	lr
_0600BD30:	.word	0x0380FFF4
_0600BD34:	.word	0x04808290

	arm_func_start FUN_0600BD38
FUN_0600BD38: ; 0x0600BD38
	cmp	r0, #1
	movhi	r0, #5
	bxhi	lr
	ldr	r3, _0600BD98	; =0x0380FFF4
	ldr	r1, [r3]
	add	r1, r1, #768	; 0x300
	ldrh	r2, [r1, #58]	; 0x3a
	bic	r2, r2, #8
	mov	r0, r0, lsl #16
	mov	r0, r0, lsr #16
	and	r0, r0, #1
	orr	r0, r2, r0, lsl #3
	strh	r0, [r1, #58]	; 0x3a
	ldr	r0, [r3]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #58]	; 0x3a
	mov	r1, r0, lsl #26
	mov	r1, r1, lsr #31
	mov	r0, r0, lsl #28
	eor	r1, r1, r0, lsr #31
	ldr	r0, _0600BD9C	; =0x04808290
	strh	r1, [r0]
	mov	r0, #0
	bx	lr
_0600BD98:	.word	0x0380FFF4
_0600BD9C:	.word	0x04808290

	arm_func_start FUN_0600BDA0
FUN_0600BDA0: ; 0x0600BDA0
	stmdb	sp!, {r4, lr}
	mov	r2, r0
	mov	r4, r1
	cmp	r2, #3
	movhi	r0, #5
	bhi	_0600BDE0
	cmp	r4, #63	; 0x3f
	movhi	r0, #5
	bhi	_0600BDE0
	mov	r0, #19
	mov	r1, r2
	bl	FUN_0600A478
	mov	r0, #53	; 0x35
	mov	r1, r4
	bl	FUN_0600A478
	mov	r0, #0
_0600BDE0:
	ldmia	sp!, {r4, lr}
	bx	lr

	arm_func_start FUN_0600BDE8
FUN_0600BDE8: ; 0x0600BDE8
	cmp	r0, #1
	movhi	r0, #5
	ldrls	r1, _0600BE08	; =0x0380FFF4
	ldrls	r1, [r1]
	addls	r1, r1, #768	; 0x300
	strlsh	r0, [r1, #50]	; 0x32
	movls	r0, #0
	bx	lr
_0600BE08:	.word	0x0380FFF4

	arm_func_start FUN_0600BE0C
FUN_0600BE0C: ; 0x0600BE0C
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	ldr	r1, _0600BEC4	; =0x0380FFF4
	ldr	r2, [r1]
	add	r1, r2, #836	; 0x344
	cmp	r0, #1
	movhi	r0, #5
	bhi	_0600BEB8
	add	r2, r2, #768	; 0x300
	ldrh	r3, [r2, #58]	; 0x3a
	bic	ip, r3, #4
	and	r3, r0, #1
	orr	r3, ip, r3, lsl #2
	strh	r3, [r2, #58]	; 0x3a
	cmp	r0, #0
	ldreqh	r2, [r1, #124]	; 0x7c
	biceq	r2, r2, #32
	streqh	r2, [r1, #124]	; 0x7c
	ldrneh	r2, [r1, #124]	; 0x7c
	orrne	r2, r2, #32
	strneh	r2, [r1, #124]	; 0x7c
	ldrh	r2, [r1, #8]
	cmp	r2, #64	; 0x40
	bne	_0600BE8C
	ldr	r2, _0600BEC4	; =0x0380FFF4
	ldr	r3, [r2]
	add	r2, r3, #768	; 0x300
	ldrh	r2, [r2, #46]	; 0x2e
	cmp	r2, #1
	ldreqh	r2, [r1, #124]	; 0x7c
	ldreq	r1, [r3, #1196]	; 0x4ac
	streqh	r2, [r1, #46]	; 0x2e
_0600BE8C:
	cmp	r0, #0
	ldreq	r1, _0600BEC8	; =0x048080BC
	ldreqh	r0, [r1]
	biceq	r0, r0, #6
	streqh	r0, [r1]
	ldrne	r1, _0600BEC8	; =0x048080BC
	ldrneh	r0, [r1]
	orrne	r0, r0, #6
	strneh	r0, [r1]
	bl	FUN_0600B494
	mov	r0, #0
_0600BEB8:
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_0600BEC4:	.word	0x0380FFF4
_0600BEC8:	.word	0x048080BC

	arm_func_start FUN_0600BECC
FUN_0600BECC: ; 0x0600BECC
	ldr	r1, _0600BEF8	; =0x0380FFF4
	ldr	r1, [r1]
	add	r2, r1, #900	; 0x384
	mov	r3, #0
_0600BEDC:
	ldrh	r1, [r0], #2
	strh	r1, [r2], #2
	add	r3, r3, #1
	cmp	r3, #16
	bcc	_0600BEDC
	mov	r0, #0
	bx	lr
_0600BEF8:	.word	0x0380FFF4

	arm_func_start FUN_0600BEFC
FUN_0600BEFC: ; 0x0600BEFC
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	mov	r4, r0
	cmp	r4, #10
	movcc	r0, #5
	bcc	_0600BFA8
	ldr	r0, _0600BFB4	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	strh	r4, [r0, #60]	; 0x3c
	cmp	r1, #0
	ldrne	r0, _0600BFB8	; =0x04808134
	strneh	r4, [r0]
	ldr	r0, _0600BFB4	; =0x0380FFF4
	ldr	r1, [r0]
	add	r0, r1, #1024	; 0x400
	ldrh	r0, [r0, #164]	; 0xa4
	cmp	r0, #0
	beq	_0600BFA4
	ldr	r0, [r1, #1196]	; 0x4ac
	add	r2, r0, #36	; 0x24
	add	r0, r1, #768	; 0x300
	ldrh	r1, [r0, #218]	; 0xda
	add	r1, r2, r1
	add	r5, r1, #6
	ldrh	r0, [r0, #82]	; 0x52
	cmp	r0, #1
	bne	_0600BF8C
	mov	r0, r5
	and	r1, r4, #255	; 0xff
	bl	FUN_06009CD0
	add	r0, r5, #1
	mov	r1, r4, asr #8
	and	r1, r1, #255	; 0xff
	bl	FUN_06009CD0
	b	_0600BFA4
_0600BF8C:
	mov	r0, r5
	mov	r1, #255	; 0xff
	bl	FUN_06009CD0
	add	r0, r5, #1
	mov	r1, #255	; 0xff
	bl	FUN_06009CD0
_0600BFA4:
	mov	r0, #0
_0600BFA8:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_0600BFB4:	.word	0x0380FFF4
_0600BFB8:	.word	0x04808134

	arm_func_start FUN_0600BFBC
FUN_0600BFBC: ; 0x0600BFBC
	cmp	r0, #255	; 0xff
	movhi	r0, #5
	bxhi	lr
	mov	r3, #0
	ldr	r2, _0600BFF0	; =0x0380FFF4
	ldr	r1, [r2]
	add	r1, r1, #768	; 0x300
	strh	r3, [r1, #196]	; 0xc4
	ldr	r1, [r2]
	add	r1, r1, #768	; 0x300
	strh	r0, [r1, #194]	; 0xc2
	mov	r0, r3
	bx	lr
_0600BFF0:	.word	0x0380FFF4

	arm_func_start FUN_0600BFF4
FUN_0600BFF4: ; 0x0600BFF4
	cmp	r0, #1
	movhi	r0, #5
	bxhi	lr
	ldr	r1, _0600C028	; =0x0380FFF4
	ldr	r1, [r1]
	add	r1, r1, #768	; 0x300
	ldrh	r2, [r1, #58]	; 0x3a
	bic	r2, r2, #2
	and	r0, r0, #1
	orr	r0, r2, r0, lsl #1
	strh	r0, [r1, #58]	; 0x3a
	mov	r0, #0
	bx	lr
_0600C028:	.word	0x0380FFF4

	arm_func_start FUN_0600C02C
FUN_0600C02C: ; 0x0600C02C
	cmp	r0, #1
	movhi	r0, #5
	bxhi	lr
	ldr	r1, _0600C060	; =0x0380FFF4
	ldr	r1, [r1]
	add	r1, r1, #768	; 0x300
	ldrh	r2, [r1, #58]	; 0x3a
	bic	r2, r2, #1
	and	r0, r0, #1
	orr	r0, r2, r0
	strh	r0, [r1, #58]	; 0x3a
	mov	r0, #0
	bx	lr
_0600C060:	.word	0x0380FFF4

	arm_func_start FUN_0600C064
FUN_0600C064: ; 0x0600C064
	stmdb	sp!, {r4, lr}
	mov	r4, r0
	ldr	r0, _0600C0B8	; =0x04805F80
	mov	r1, r4
	mov	r2, #20
	bl	FUN_06009D74
	ldr	r0, _0600C0BC	; =0x04805FA0
	add	r1, r4, #20
	mov	r2, #20
	bl	FUN_06009D74
	ldr	r0, _0600C0C0	; =0x04805FC0
	add	r1, r4, #40	; 0x28
	mov	r2, #20
	bl	FUN_06009D74
	ldr	r0, _0600C0C4	; =0x04805FE0
	add	r1, r4, #60	; 0x3c
	mov	r2, #20
	bl	FUN_06009D74
	mov	r0, #0
	ldmia	sp!, {r4, lr}
	bx	lr
_0600C0B8:	.word	0x04805F80
_0600C0BC:	.word	0x04805FA0
_0600C0C0:	.word	0x04805FC0
_0600C0C4:	.word	0x04805FE0

	arm_func_start FUN_0600C0C8
FUN_0600C0C8: ; 0x0600C0C8
	cmp	r0, #3
	movhi	r0, #5
	ldrls	r1, _0600C0E8	; =0x0380FFF4
	ldrls	r1, [r1]
	addls	r1, r1, #768	; 0x300
	strlsh	r0, [r1, #54]	; 0x36
	movls	r0, #0
	bx	lr
_0600C0E8:	.word	0x0380FFF4

	arm_func_start FUN_0600C0EC
FUN_0600C0EC: ; 0x0600C0EC
	ldr	r1, _0600C194	; =0x0380FFF4
	ldr	r1, [r1]
	add	r2, r1, #836	; 0x344
	cmp	r0, #3
	movhi	r0, #5
	bxhi	lr
	add	r1, r1, #768	; 0x300
	strh	r0, [r1, #52]	; 0x34
	cmp	r0, #0
	bne	_0600C130
	ldrh	r1, [r2, #124]	; 0x7c
	bic	r1, r1, #16
	strh	r1, [r2, #124]	; 0x7c
	ldrh	r1, [r2, #138]	; 0x8a
	bic	r1, r1, #16384	; 0x4000
	strh	r1, [r2, #138]	; 0x8a
	b	_0600C148
_0600C130:
	ldrh	r1, [r2, #124]	; 0x7c
	orr	r1, r1, #16
	strh	r1, [r2, #124]	; 0x7c
	ldrh	r1, [r2, #138]	; 0x8a
	orr	r1, r1, #16384	; 0x4000
	strh	r1, [r2, #138]	; 0x8a
_0600C148:
	ldrh	r1, [r2, #8]
	cmp	r1, #64	; 0x40
	bne	_0600C16C
	cmp	r0, #1
	ldreqh	r2, [r2, #124]	; 0x7c
	ldreq	r1, _0600C194	; =0x0380FFF4
	ldreq	r1, [r1]
	ldreq	r1, [r1, #1196]	; 0x4ac
	streqh	r2, [r1, #46]	; 0x2e
_0600C16C:
	cmp	r0, #0
	moveq	r0, #1
	ldr	r3, _0600C198	; =0x04808006
	ldrh	r2, [r3]
	ldr	r1, _0600C19C	; =0x0000FFC7
	and	r1, r2, r1
	orr	r0, r1, r0, lsl #3
	strh	r0, [r3]
	mov	r0, #0
	bx	lr
_0600C194:	.word	0x0380FFF4
_0600C198:	.word	0x04808006
_0600C19C:	.word	0x0000FFC7

	arm_func_start FUN_0600C1A0
FUN_0600C1A0: ; 0x0600C1A0
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	cmp	r0, #2
	movhi	r0, #5
	bhi	_0600C1CC
	ldr	r1, _0600C1D8	; =0x0380FFF4
	ldr	r1, [r1]
	add	r1, r1, #768	; 0x300
	strh	r0, [r1, #48]	; 0x30
	bl	FUN_0600B494
	mov	r0, #0
_0600C1CC:
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_0600C1D8:	.word	0x0380FFF4

	arm_func_start FUN_0600C1DC
FUN_0600C1DC: ; 0x0600C1DC
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	cmp	r0, #3
	movhi	r0, #5
	bhi	_0600C24C
	ldr	ip, _0600C258	; =0x0380FFF4
	ldr	r1, [ip]
	add	r1, r1, #768	; 0x300
	strh	r0, [r1, #46]	; 0x2e
	ldr	r1, [ip]
	add	r1, r1, #768	; 0x300
	strh	r0, [r1, #80]	; 0x50
	ldr	r3, _0600C25C	; =0x04808006
	ldrh	r2, [r3]
	ldr	r1, _0600C260	; =0x0000FFF8
	and	r1, r2, r1
	orr	r0, r1, r0
	strh	r0, [r3]
	ldr	r0, [ip]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #82]	; 0x52
	bl	FUN_0600B420
	ldr	r0, _0600C258	; =0x0380FFF4
	ldr	r1, [r0]
	ldr	r0, [r1, #832]	; 0x340
	orr	r0, r0, #8
	str	r0, [r1, #832]	; 0x340
	mov	r0, #0
_0600C24C:
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_0600C258:	.word	0x0380FFF4
_0600C25C:	.word	0x04808006
_0600C260:	.word	0x0000FFF8

	arm_func_start FUN_0600C264
FUN_0600C264: ; 0x0600C264
	ldr	r1, _0600C29C	; =0x00007FFE
	ands	r1, r0, r1
	moveq	r0, #5
	bxeq	lr
	ldr	r2, _0600C2A0	; =0x0380FFF4
	ldr	r1, [r2]
	add	r1, r1, #768	; 0x300
	strh	r0, [r1, #44]	; 0x2c
	ldr	r1, [r2]
	ldr	r0, [r1, #832]	; 0x340
	orr	r0, r0, #4
	str	r0, [r1, #832]	; 0x340
	mov	r0, #0
	bx	lr
_0600C29C:	.word	0x00007FFE
_0600C2A0:	.word	0x0380FFF4

	arm_func_start FUN_0600C2A4
FUN_0600C2A4: ; 0x0600C2A4
	cmp	r0, #255	; 0xff
	movhi	r0, #5
	bxhi	lr
	ldr	r1, _0600C2D0	; =0x0380FFF4
	ldr	r1, [r1]
	add	r1, r1, #768	; 0x300
	strh	r0, [r1, #42]	; 0x2a
	ldr	r1, _0600C2D4	; =0x0480802C
	strh	r0, [r1]
	mov	r0, #0
	bx	lr
_0600C2D0:	.word	0x0380FFF4
_0600C2D4:	.word	0x0480802C

	arm_func_start FUN_0600C2D8
FUN_0600C2D8: ; 0x0600C2D8
	stmdb	sp!, {r4, lr}
	mov	r4, r0
	ldrh	r0, [r4]
	ands	r0, r0, #1
	movne	r0, #5
	bne	_0600C328
	ldr	r0, _0600C330	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #804	; 0x324
	mov	r1, r4
	bl	FUN_0600AF4C
	ldr	r0, _0600C334	; =0x04808018
	mov	r1, r4
	bl	FUN_0600AF4C
	ldr	r0, _0600C330	; =0x0380FFF4
	ldr	r1, [r0]
	ldr	r0, [r1, #832]	; 0x340
	orr	r0, r0, #2
	str	r0, [r1, #832]	; 0x340
	mov	r0, #0
_0600C328:
	ldmia	sp!, {r4, lr}
	bx	lr
_0600C330:	.word	0x0380FFF4
_0600C334:	.word	0x04808018

	arm_func_start FUN_0600C338
FUN_0600C338: ; 0x0600C338
	stmdb	sp!, {r4, r5, r6, lr}
	mov	r6, r0
	mov	r5, r1
	ldr	r0, _0600C3B4	; =0x0380FFF4
	ldr	r1, [r0]
	ldr	r4, [r1, #992]	; 0x3e0
	mov	r0, #0
	add	r1, r1, #796	; 0x31c
	mov	r2, #40	; 0x28
	bl	FUN_0600055C
	mov	r0, #0
	ldr	r1, _0600C3B4	; =0x0380FFF4
	ldr	r1, [r1]
	add	r1, r1, #836	; 0x344
	mov	r2, #192	; 0xc0
	bl	FUN_0600055C
	ldr	r2, _0600C3B4	; =0x0380FFF4
	ldr	r0, [r2]
	str	r6, [r0, #796]	; 0x31c
	mov	r0, r5, lsl #16
	mov	r1, r0, lsr #16
	ldr	r0, [r2]
	add	r0, r0, #768	; 0x300
	strh	r1, [r0, #32]
	ldr	r0, [r2]
	add	r0, r0, #768	; 0x300
	strh	r1, [r0, #34]	; 0x22
	ldr	r0, [r2]
	str	r4, [r0, #992]	; 0x3e0
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr
_0600C3B4:	.word	0x0380FFF4

	arm_func_start FUN_0600C3B8
FUN_0600C3B8: ; 0x0600C3B8
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #4
	mov	r9, #0
	ldr	r0, _0600C6A4	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #1280	; 0x500
	ldrh	r0, [r0, #248]	; 0xf8
	cmp	r0, #5
	ldreq	sl, _0600C6A8	; =_060195D0
	ldrne	sl, _0600C6AC	; =_06019604
	mov	r6, #0
	mov	r5, #255	; 0xff
	mvn	r4, #0
	b	_0600C40C
_0600C3F0:
	mov	r0, r6
	mov	r1, r5
	bl	FUN_0600A478
	cmp	r0, r4
	moveq	r9, #1
	beq	_0600C678
	add	r6, r6, #1
_0600C40C:
	cmp	r6, #105	; 0x69
	bcc	_0600C3F0
	mov	r4, #0
	mov	r5, r4
	b	_0600C45C
_0600C420:
	mov	r0, r5, lsl #1
	ldrh	r0, [sl, r0]
	cmp	r4, r0
	addeq	r5, r5, #1
	beq	_0600C458
	mov	r0, r4
	bl	FUN_0600A4B8
	mov	r0, r0, lsl #16
	mov	r0, r0, lsr #16
	cmp	r0, #255	; 0xff
	beq	_0600C458
	cmp	r9, #32
	add	r9, r9, #1
	bhi	_0600C678
_0600C458:
	add	r4, r4, #1
_0600C45C:
	cmp	r4, #105	; 0x69
	bcc	_0600C420
	mov	r5, #0
	mov	r4, r5
_0600C46C:
	mov	r0, r5
	mov	r1, r4
	bl	FUN_0600A478
	add	r5, r5, #1
	cmp	r5, #105	; 0x69
	bcc	_0600C46C
	mov	r5, #0
	mov	r4, r5
	b	_0600C4C8
_0600C490:
	mov	r0, r4, lsl #1
	ldrh	r0, [sl, r0]
	cmp	r5, r0
	addeq	r4, r4, #1
	beq	_0600C4C4
	mov	r0, r5
	bl	FUN_0600A4B8
	mov	r0, r0, lsl #16
	movs	r0, r0, lsr #16
	beq	_0600C4C4
	cmp	r9, #32
	add	r9, r9, #1
	bhi	_0600C678
_0600C4C4:
	add	r5, r5, #1
_0600C4C8:
	cmp	r5, #105	; 0x69
	bcc	_0600C490
	mov	r5, #85	; 0x55
	mov	r4, #0
_0600C4D8:
	mov	r0, r4
	mov	r1, r5
	bl	FUN_0600A478
	add	r4, r4, #1
	mvn	r0, r5
	mov	r0, r0, lsl #16
	mov	r5, r0, lsr #16
	cmp	r4, #105	; 0x69
	bcc	_0600C4D8
	mov	r5, #85	; 0x55
	mov	r6, #0
	mov	r4, r6
	b	_0600C558
_0600C50C:
	mov	r0, r4, lsl #1
	ldrh	r0, [sl, r0]
	cmp	r6, r0
	addeq	r4, r4, #1
	beq	_0600C544
	mov	r0, r6
	bl	FUN_0600A4B8
	mov	r0, r0, lsl #16
	mov	r0, r0, lsr #16
	cmp	r0, r5
	beq	_0600C544
	cmp	r9, #32
	add	r9, r9, #1
	bhi	_0600C678
_0600C544:
	add	r6, r6, #1
	mvn	r0, r5
	and	r0, r0, #255	; 0xff
	mov	r0, r0, lsl #16
	mov	r5, r0, lsr #16
_0600C558:
	cmp	r6, #105	; 0x69
	bcc	_0600C50C
	mov	r4, #255	; 0xff
	mov	r5, #0
_0600C568:
	mov	r0, r5
	mov	r1, r4
	bl	FUN_0600A478
	add	r5, r5, #1
	sub	r0, r4, #1
	mov	r0, r0, lsl #16
	mov	r4, r0, lsr #16
	cmp	r5, #105	; 0x69
	bcc	_0600C568
	mov	r5, #255	; 0xff
	mov	r6, #0
	mov	r4, r6
	b	_0600C5E4
_0600C59C:
	mov	r0, r4, lsl #1
	ldrh	r0, [sl, r0]
	cmp	r6, r0
	addeq	r4, r4, #1
	beq	_0600C5D4
	mov	r0, r6
	bl	FUN_0600A4B8
	mov	r0, r0, lsl #16
	mov	r0, r0, lsr #16
	cmp	r0, r5
	beq	_0600C5D4
	cmp	r9, #32
	add	r9, r9, #1
	bhi	_0600C678
_0600C5D4:
	add	r6, r6, #1
	sub	r0, r5, #1
	mov	r0, r0, lsl #16
	mov	r5, r0, lsr #16
_0600C5E4:
	cmp	r6, #105	; 0x69
	bcc	_0600C59C
	mov	r6, #0
	mov	r5, r6
	mov	r4, #1
	mov	fp, r6
	b	_0600C670
_0600C600:
	mov	r0, r5, lsl #1
	ldrh	r0, [sl, r0]
	cmp	r6, r0
	addeq	r5, r5, #1
	beq	_0600C66C
	mov	r7, r4
	mov	r8, fp
	b	_0600C664
_0600C620:
	mov	r0, r6
	mov	r1, r7
	bl	FUN_0600A478
	mov	r0, r6
	bl	FUN_0600A4B8
	mov	r0, r0, lsl #16
	mov	r0, r0, lsr #16
	cmp	r0, r7
	beq	_0600C650
	cmp	r9, #32
	add	r9, r9, #1
	bhi	_0600C678
_0600C650:
	mov	r0, r7, lsl #1
	and	r0, r0, #255	; 0xff
	mov	r0, r0, lsl #16
	mov	r7, r0, lsr #16
	add	r8, r8, #1
_0600C664:
	cmp	r8, #9
	bcc	_0600C620
_0600C66C:
	add	r6, r6, #1
_0600C670:
	cmp	r6, #105	; 0x69
	bcc	_0600C600
_0600C678:
	cmp	r9, #0
	beq	_0600C698
	ldr	r0, _0600C6A4	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r1, [r0, #62]	; 0x3e
	orr	r1, r1, #8
	strh	r1, [r0, #62]	; 0x3e
_0600C698:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
_0600C6A4:	.word	0x0380FFF4
_0600C6A8:	.word	_060195D0
_0600C6AC:	.word	_06019604

	arm_func_start FUN_0600C6B0
FUN_0600C6B0: ; 0x0600C6B0
	mov	r0, #0
	ldr	r3, _0600C820	; =0x04804000
	ldr	r1, _0600C824	; =0x0000FFFF
	mov	ip, r0
_0600C6C0:
	mov	r2, r1
	sub	r1, r1, #1
	mov	r1, r1, lsl #16
	mov	r1, r1, lsr #16
	strh	r2, [r3], #2
	add	ip, ip, #2
	cmp	ip, #8192	; 0x2000
	bcc	_0600C6C0
	ldr	ip, _0600C820	; =0x04804000
	ldr	r3, _0600C824	; =0x0000FFFF
	mov	r2, #0
	b	_0600C71C
_0600C6F0:
	ldrh	r1, [ip]
	cmp	r1, r3
	beq	_0600C708
	cmp	r0, #32
	add	r0, r0, #1
	bhi	_0600C7FC
_0600C708:
	add	r2, r2, #2
	add	ip, ip, #2
	sub	r1, r3, #1
	mov	r1, r1, lsl #16
	mov	r3, r1, lsr #16
_0600C71C:
	cmp	r2, #8192	; 0x2000
	bcc	_0600C6F0
	ldr	r3, _0600C820	; =0x04804000
	ldr	r1, _0600C828	; =0x00005A5A
	mov	r2, #0
_0600C730:
	strh	r1, [r3], #2
	add	r2, r2, #2
	mvn	r1, r1
	mov	r1, r1, lsl #16
	mov	r1, r1, lsr #16
	cmp	r2, #8192	; 0x2000
	bcc	_0600C730
	ldr	ip, _0600C820	; =0x04804000
	ldr	r3, _0600C828	; =0x00005A5A
	mov	r2, #0
	b	_0600C788
_0600C75C:
	ldrh	r1, [ip]
	cmp	r1, r3
	beq	_0600C774
	cmp	r0, #32
	add	r0, r0, #1
	bhi	_0600C7FC
_0600C774:
	add	r2, r2, #2
	add	ip, ip, #2
	mvn	r1, r3
	mov	r1, r1, lsl #16
	mov	r3, r1, lsr #16
_0600C788:
	cmp	r2, #8192	; 0x2000
	bcc	_0600C75C
	ldr	r3, _0600C820	; =0x04804000
	ldr	r1, _0600C82C	; =0x0000A5A5
	mov	r2, #0
_0600C79C:
	strh	r1, [r3], #2
	add	r2, r2, #2
	mvn	r1, r1
	mov	r1, r1, lsl #16
	mov	r1, r1, lsr #16
	cmp	r2, #8192	; 0x2000
	bcc	_0600C79C
	ldr	ip, _0600C820	; =0x04804000
	ldr	r3, _0600C82C	; =0x0000A5A5
	mov	r2, #0
	b	_0600C7F4
_0600C7C8:
	ldrh	r1, [ip]
	cmp	r1, r3
	beq	_0600C7E0
	cmp	r0, #32
	add	r0, r0, #1
	bhi	_0600C7FC
_0600C7E0:
	add	r2, r2, #2
	add	ip, ip, #2
	mvn	r1, r3
	mov	r1, r1, lsl #16
	mov	r3, r1, lsr #16
_0600C7F4:
	cmp	r2, #8192	; 0x2000
	bcc	_0600C7C8
_0600C7FC:
	cmp	r0, #0
	bxeq	lr
	ldr	r0, _0600C830	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r1, [r0, #62]	; 0x3e
	orr	r1, r1, #2
	strh	r1, [r0, #62]	; 0x3e
	bx	lr
_0600C820:	.word	0x04804000
_0600C824:	.word	0x0000FFFF
_0600C828:	.word	0x00005A5A
_0600C82C:	.word	0x0000A5A5
_0600C830:	.word	0x0380FFF4

	arm_func_start FUN_0600C834
FUN_0600C834: ; 0x0600C834
	stmdb	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #4
	mov	r3, #0
	mov	r2, r3
	mov	r1, r3
	ldr	r0, _0600C9D0	; =_0601963C
	ldr	r5, _0600C9D4	; =_060195C8
	b	_0600C8AC
_0600C854:
	mov	ip, r1
	mov	r6, r2, lsl #1
	b	_0600C8A0
_0600C860:
	mov	r4, ip, lsl #2
	ldrh	r7, [r0, r4]
	ldrh	r4, [r5, r6]
	add	lr, r0, ip, lsl #2
	ldrh	lr, [lr, #2]
	and	r4, r4, lr
	add	lr, r7, #75497472	; 0x4800000
	add	lr, lr, #32768	; 0x8000
	strh	r4, [lr]
	ldrh	lr, [lr]
	cmp	lr, r4
	beq	_0600C89C
	cmp	r3, #32
	add	r3, r3, #1
	bhi	_0600C9A4
_0600C89C:
	add	ip, ip, #1
_0600C8A0:
	cmp	ip, #27
	bcc	_0600C860
	add	r2, r2, #1
_0600C8AC:
	cmp	r2, #3
	bcc	_0600C854
	mov	r4, #0
	ldr	r5, _0600C9D8	; =0x00001234
	ldr	r2, _0600C9D0	; =_0601963C
	mov	r1, r5
_0600C8C4:
	mov	ip, r4, lsl #2
	add	r0, r2, r4, lsl #2
	ldrh	r0, [r0, #2]
	and	lr, r5, r0
	ldrh	r0, [r2, ip]
	add	r0, r0, #75497472	; 0x4800000
	add	r0, r0, #32768	; 0x8000
	strh	lr, [r0]
	add	r0, r5, r1
	mov	r0, r0, lsl #16
	mov	r5, r0, lsr #16
	add	r4, r4, #1
	cmp	r4, #27
	bcc	_0600C8C4
	mov	r0, #0
	ldr	r4, _0600C9D8	; =0x00001234
	ldr	lr, _0600C9D0	; =_0601963C
	mov	r1, r4
	b	_0600C954
_0600C910:
	mov	r2, r0, lsl #2
	ldrh	r2, [lr, r2]
	add	r2, r2, #75497472	; 0x4800000
	add	r2, r2, #32768	; 0x8000
	ldrh	ip, [r2]
	add	r2, lr, r0, lsl #2
	ldrh	r2, [r2, #2]
	and	r2, r4, r2
	cmp	ip, r2
	beq	_0600C944
	cmp	r3, #32
	add	r3, r3, #1
	bhi	_0600C9A4
_0600C944:
	add	r2, r4, r1
	mov	r2, r2, lsl #16
	mov	r4, r2, lsr #16
	add	r0, r0, #1
_0600C954:
	cmp	r0, #27
	bcc	_0600C910
	mov	r4, #0
	ldr	r2, _0600C9D0	; =_0601963C
	mov	r1, r4
	b	_0600C99C
_0600C96C:
	mov	r0, r4, lsl #2
	ldrh	r0, [r2, r0]
	add	r0, r0, #75497472	; 0x4800000
	add	r0, r0, #32768	; 0x8000
	strh	r1, [r0]
	ldrh	r0, [r0]
	cmp	r0, #0
	beq	_0600C998
	cmp	r3, #32
	add	r3, r3, #1
	bhi	_0600C9A4
_0600C998:
	add	r4, r4, #1
_0600C99C:
	cmp	r4, #27
	bcc	_0600C96C
_0600C9A4:
	cmp	r3, #0
	beq	_0600C9C4
	ldr	r0, _0600C9DC	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r1, [r0, #62]	; 0x3e
	orr	r1, r1, #1
	strh	r1, [r0, #62]	; 0x3e
_0600C9C4:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, lr}
	bx	lr
_0600C9D0:	.word	_0601963C
_0600C9D4:	.word	_060195C8
_0600C9D8:	.word	0x00001234
_0600C9DC:	.word	0x0380FFF4

	arm_func_start FUN_0600C9E0
FUN_0600C9E0: ; 0x0600C9E0
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	mov	r0, #16777216	; 0x1000000
	bl	FUN_06009068
	mov	r0, #16777216	; 0x1000000
	mov	r1, #0
	bl	FUN_0600CA08
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr

	arm_func_start FUN_0600CA08
FUN_0600CA08: ; 0x0600CA08
	ldr	pc, _0600CA0C	; =FUN_037F894C
_0600CA0C:	.word	FUN_037F894C

	arm_func_start FUN_0600CA10
FUN_0600CA10: ; 0x0600CA10
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	mov	r0, #16777216	; 0x1000000
	ldr	r1, _0600CA38	; =FUN_0600E000
	bl	FUN_0600CA08
	mov	r0, #16777216	; 0x1000000
	bl	FUN_06009070
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_0600CA38:	.word	FUN_0600E000

	arm_func_start FUN_0600CA3C
FUN_0600CA3C: ; 0x0600CA3C
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	ldrh	r1, [r0]
	cmp	r1, #0
	beq	_0600CA8C
	ldr	r2, [r0, #8]
	ldrh	r1, [r2]
	ands	r1, r1, #1
	beq	_0600CA8C
	ldr	r1, _0600CA9C	; =0x00003FFF
	and	r1, r2, r1
	mov	r1, r1, lsr #1
	orr	r2, r1, #32768	; 0x8000
	ldr	r1, _0600CAA0	; =0x04808098
	ldrh	r1, [r1]
	cmp	r2, r1
	beq	_0600CA8C
	bl	FUN_06015270
	mov	r0, #1
	b	_0600CA90
_0600CA8C:
	mov	r0, #0
_0600CA90:
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_0600CA9C:	.word	0x00003FFF
_0600CAA0:	.word	0x04808098

	arm_func_start FUN_0600CAA4
FUN_0600CAA4: ; 0x0600CAA4
	stmdb	sp!, {r4, lr}
	ldr	r0, _0600CAE8	; =0x0380FFF4
	ldr	r1, [r0]
	ldr	r0, _0600CAEC	; =0x0000042C
	add	r4, r1, r0
	add	r0, r4, #80	; 0x50
	bl	FUN_0600CA3C
	cmp	r0, #0
	movne	r0, #1
	bne	_0600CAE0
	add	r0, r4, #100	; 0x64
	bl	FUN_0600CA3C
	cmp	r0, #0
	movne	r0, #1
	moveq	r0, #0
_0600CAE0:
	ldmia	sp!, {r4, lr}
	bx	lr
_0600CAE8:	.word	0x0380FFF4
_0600CAEC:	.word	0x0000042C

	arm_func_start FUN_0600CAF0
FUN_0600CAF0: ; 0x0600CAF0
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	ldr	r0, _0600CB48	; =0x0380FFF4
	ldr	r1, [r0]
	ldr	r0, _0600CB4C	; =0x0000042C
	add	lr, r1, r0
	ldrh	r1, [lr, #164]	; 0xa4
	ldr	r0, _0600CB50	; =0x0000FFFF
	cmp	r1, r0
	beq	_0600CB3C
	ldr	ip, _0600CB54	; =0x04808094
	ldrh	r3, [ip]
	strh	r1, [ip]
	ldr	r2, _0600CB58	; =0x04808030
	ldrh	r1, [r2]
	orr	r1, r1, #128	; 0x80
	strh	r1, [r2]
	strh	r3, [ip]
	strh	r0, [lr, #164]	; 0xa4
_0600CB3C:
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_0600CB48:	.word	0x0380FFF4
_0600CB4C:	.word	0x0000042C
_0600CB50:	.word	0x0000FFFF
_0600CB54:	.word	0x04808094
_0600CB58:	.word	0x04808030

	arm_func_start FUN_0600CB5C
FUN_0600CB5C: ; 0x0600CB5C
	ldr	r1, _0600CB7C	; =0x04805F60
	cmp	r0, r1
	ldrcs	r1, _0600CB80	; =0x0380FFF4
	ldrcs	r1, [r1]
	addcs	r1, r1, #768	; 0x300
	ldrcsh	r1, [r1, #222]	; 0xde
	subcs	r0, r0, r1
	bx	lr
_0600CB7C:	.word	0x04805F60
_0600CB80:	.word	0x0380FFF4

	arm_func_start FUN_0600CB84
FUN_0600CB84: ; 0x0600CB84
	stmdb	sp!, {r4, lr}
	mov	r0, #16777216	; 0x1000000
	bl	FUN_06009068
	mov	r4, r0
	ldr	r2, _0600CBE8	; =0x04808210
	ldrh	r3, [r2]
	mov	r1, #4096	; 0x1000
	ldr	r0, _0600CBEC	; =0x04808244
	strh	r1, [r0]
	mov	r1, #100	; 0x64
	b	_0600CBC0
_0600CBB0:
	ldrh	r0, [r2]
	cmp	r3, r0
	bne	_0600CBC8
	sub	r1, r1, #1
_0600CBC0:
	cmp	r1, #0
	bne	_0600CBB0
_0600CBC8:
	mov	r0, #0
	ldr	r1, _0600CBEC	; =0x04808244
	strh	r0, [r1]
	bl	FUN_0600D070
	mov	r0, r4
	bl	FUN_06009070
	ldmia	sp!, {r4, lr}
	bx	lr
_0600CBE8:	.word	0x04808210
_0600CBEC:	.word	0x04808244

	arm_func_start FUN_0600CBF0
FUN_0600CBF0: ; 0x0600CBF0
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	ldr	r0, _0600CCBC	; =0x0380FFF4
	ldr	r1, [r0]
	ldr	r0, _0600CCC0	; =0x0000042C
	add	r5, r1, r0
	mov	r4, #0
	mov	r0, #2
	bl	FUN_06014FC8
	mov	r0, #1
	bl	FUN_06014FC8
	mov	r0, r4
	bl	FUN_06014FC8
	ldrh	r0, [r5, #40]	; 0x28
	cmp	r0, #0
	beq	_0600CC48
	ldr	r0, [r5, #48]	; 0x30
	ldrh	r0, [r0]
	cmp	r0, #0
	movne	r4, #1
	moveq	r0, r4
	streqh	r0, [r5, #40]	; 0x28
_0600CC48:
	ldrh	r0, [r5, #20]
	cmp	r0, #0
	beq	_0600CC6C
	ldr	r0, [r5, #28]
	ldrh	r0, [r0]
	cmp	r0, #0
	movne	r4, #1
	moveq	r0, #0
	streqh	r0, [r5, #20]
_0600CC6C:
	ldrh	r0, [r5]
	cmp	r0, #0
	beq	_0600CC90
	ldr	r0, [r5, #8]
	ldrh	r0, [r0]
	cmp	r0, #0
	movne	r4, #1
	moveq	r0, #0
	streqh	r0, [r5]
_0600CC90:
	cmp	r4, #0
	beq	_0600CCA4
	mov	r0, #0
	mov	r1, #14
	bl	FUN_06009078
_0600CCA4:
	mov	r0, #0
	mov	r1, #20
	bl	FUN_06009078
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_0600CCBC:	.word	0x0380FFF4
_0600CCC0:	.word	0x0000042C

	arm_func_start FUN_0600CCC4
FUN_0600CCC4: ; 0x0600CCC4
	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r2, _0600CEF4	; =0x0380FFF4
	ldr	r1, [r2]
	add	r5, r1, #836	; 0x344
	ldr	r0, _0600CEF8	; =0x0000042C
	add	r4, r1, r0
	mov	r1, #64	; 0x40
	ldr	r0, _0600CEFC	; =0x04808010
	strh	r1, [r0]
	ldr	r0, [r2]
	add	r0, r0, #1536	; 0x600
	ldrh	r0, [r0, #144]	; 0x90
	ands	r0, r0, #32
	beq	_0600CEEC
	ldrh	r1, [r4, #164]	; 0xa4
	ldr	r0, _0600CF00	; =0x0000FFFF
	cmp	r1, r0
	bne	_0600CEEC
	ldr	r0, _0600CF04	; =0x0480819C
	ldrh	r0, [r0]
	and	r0, r0, #3
	cmp	r0, #3
	bne	_0600CEEC
	ldr	r0, _0600CF08	; =0x04808268
	ldrh	r2, [r0]
	ldr	r0, _0600CF0C	; =0x04808050
	ldrh	r1, [r0]
	ldr	r0, _0600CF10	; =0x00000FFF
	and	r0, r0, r1, lsr #1
	cmp	r2, r0
	blt	_0600CEEC
	ldr	r0, _0600CF14	; =0x04808054
	ldrh	r6, [r0]
	ldr	r0, _0600CF18	; =0x04804000
	add	r0, r0, r6, lsl #1
	add	r0, r0, #8
	bl	FUN_0600CB5C
	add	r0, r0, #4
	bl	FUN_0600CB5C
	ldrh	r2, [r0]
	ldr	r1, _0600CF1C	; =0x0000E7FF
	and	r1, r2, r1
	cmp	r1, #552	; 0x228
	bne	_0600CEEC
	add	r0, r0, #2
	bl	FUN_0600CB5C
	ldr	r2, _0600CF20	; =0x048080F8
	ldrh	r1, [r2]
	sub	r7, r1, #65536	; 0x10000
	ldr	r1, _0600CF08	; =0x04808268
_0600CD8C:
	ldrh	r3, [r1]
	sub	r3, r3, r6
	mov	r3, r3, lsl #16
	mov	r8, r3, lsr #16
	ands	r3, r8, #32768	; 0x8000
	ldrneh	r3, [r5, #154]	; 0x9a
	addne	r3, r8, r3, lsr #1
	movne	r3, r3, lsl #16
	movne	r8, r3, lsr #16
	cmp	r8, #14
	bhi	_0600CDD4
	ldrh	r3, [r2]
	sub	r3, r3, r7
	mov	r3, r3, lsl #16
	mov	r3, r3, lsr #16
	cmp	r3, #64	; 0x40
	bls	_0600CD8C
	b	_0600CEEC
_0600CDD4:
	add	r0, r0, #8
	mov	r8, #0
	b	_0600CE04
_0600CDE0:
	bl	FUN_0600CB5C
	mov	r1, r0
	add	r0, r1, #2
	ldrh	r2, [r1]
	add	r1, r5, r8, lsl #1
	ldrh	r1, [r1, #100]	; 0x64
	cmp	r2, r1
	bne	_0600CEEC
	add	r8, r8, #1
_0600CE04:
	cmp	r8, #3
	bcc	_0600CDE0
	add	r0, r0, #10
	bl	FUN_0600CB5C
	ldr	r3, _0600CF20	; =0x048080F8
	ldr	r1, _0600CF08	; =0x04808268
_0600CE1C:
	ldrh	r2, [r1]
	sub	r2, r2, r6
	mov	r2, r2, lsl #16
	mov	r8, r2, lsr #16
	ands	r2, r8, #32768	; 0x8000
	ldrneh	r2, [r5, #154]	; 0x9a
	addne	r2, r8, r2, lsr #1
	movne	r2, r2, lsl #16
	movne	r8, r2, lsr #16
	cmp	r8, #20
	bhi	_0600CE64
	ldrh	r2, [r3]
	sub	r2, r2, r7
	mov	r2, r2, lsl #16
	mov	r2, r2, lsr #16
	cmp	r2, #112	; 0x70
	bls	_0600CE1C
	b	_0600CEEC
_0600CE64:
	ldrh	r2, [r0]
	mov	r1, #1
	ldr	r0, _0600CF24	; =0x04808028
	ldrh	r0, [r0]
	mov	r0, r1, lsl r0
	ands	r0, r2, r0
	bne	_0600CEEC
	ldr	r0, _0600CF28	; =0x04808098
	ldrh	r0, [r0]
	strh	r0, [r4, #164]	; 0xa4
	mov	r1, #64	; 0x40
	ldr	r0, _0600CF2C	; =0x048080B4
	strh	r1, [r0]
	ldrh	r0, [r5, #190]	; 0xbe
	add	r0, r0, #1
	strh	r0, [r5, #190]	; 0xbe
	ldr	r1, _0600CF04	; =0x0480819C
_0600CEA8:
	ldrh	r0, [r1]
	and	r0, r0, #3
	cmp	r0, #3
	beq	_0600CEA8
	ldr	r1, _0600CF30	; =0x04808244
	ldrh	r0, [r1]
	orr	r0, r0, #64	; 0x40
	strh	r0, [r1]
	ldrh	r0, [r1]
	bic	r0, r0, #64	; 0x40
	strh	r0, [r1]
	mov	r0, #8
	ldr	r1, _0600CF34	; =0x04808228
	strh	r0, [r1]
	mov	r0, #0
	strh	r0, [r1]
	bl	FUN_0600CAF0
_0600CEEC:
	ldmia	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
_0600CEF4:	.word	0x0380FFF4
_0600CEF8:	.word	0x0000042C
_0600CEFC:	.word	0x04808010
_0600CF00:	.word	0x0000FFFF
_0600CF04:	.word	0x0480819C
_0600CF08:	.word	0x04808268
_0600CF0C:	.word	0x04808050
_0600CF10:	.word	0x00000FFF
_0600CF14:	.word	0x04808054
_0600CF18:	.word	0x04804000
_0600CF1C:	.word	0x0000E7FF
_0600CF20:	.word	0x048080F8
_0600CF24:	.word	0x04808028
_0600CF28:	.word	0x04808098
_0600CF2C:	.word	0x048080B4
_0600CF30:	.word	0x04808244
_0600CF34:	.word	0x04808228

	arm_func_start FUN_0600CF38
FUN_0600CF38: ; 0x0600CF38
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	ldr	r3, _0600D048	; =0x0380FFF4
	ldr	r1, [r3]
	ldr	r0, _0600D04C	; =0x0000042C
	add	r0, r1, r0
	mov	r2, #128	; 0x80
	ldr	r1, _0600D050	; =0x04808010
	strh	r2, [r1]
	ldr	r1, [r3]
	add	r1, r1, #1536	; 0x600
	ldrh	r1, [r1, #144]	; 0x90
	ands	r1, r1, #32
	beq	_0600CFDC
	ldr	r1, _0600D054	; =0x04808214
	ldrh	r1, [r1]
	and	r1, r1, #255	; 0xff
	mov	r1, r1, lsl #16
	mov	r2, r1, lsr #16
	ldr	r1, _0600D058	; =0x04808268
	ldrh	r3, [r1]
	cmp	r2, #3
	bcc	_0600CFDC
	cmp	r2, #5
	bhi	_0600CFDC
	ldr	r2, [r0, #88]	; 0x58
	ldr	r1, _0600D05C	; =0x00000FFF
	and	r2, r1, r2, lsr #1
	cmp	r3, r2
	bcc	_0600CFDC
	ldr	r0, [r0, #48]	; 0x30
	and	r0, r1, r0, lsr #1
	cmp	r3, r0
	bhi	_0600CFDC
	ldr	r1, _0600D060	; =0x04808244
	ldrh	r0, [r1]
	orr	r0, r0, #128	; 0x80
	strh	r0, [r1]
	ldrh	r0, [r1]
	bic	r0, r0, #128	; 0x80
	strh	r0, [r1]
_0600CFDC:
	ldr	r0, _0600D064	; =0x04808000
	ldrh	r0, [r0]
	cmp	r0, #5184	; 0x1440
	beq	_0600D03C
	ldr	r0, _0600D068	; =0x0480819C
	ldrh	r0, [r0]
	and	r0, r0, #66	; 0x42
	cmp	r0, #66	; 0x42
	bne	_0600D03C
	ldr	r1, _0600D06C	; =0x048082B8
	ldrh	r2, [r1]
	cmp	r2, #0
	beq	_0600D03C
	mov	r3, #0
	b	_0600D030
_0600D018:
	cmp	r3, #1000	; 0x3e8
	add	r3, r3, #1
	bls	_0600D030
	mov	r0, #64	; 0x40
	bl	FUN_0600994C
	b	_0600D03C
_0600D030:
	ldrh	r0, [r1]
	cmp	r2, r0
	beq	_0600D018
_0600D03C:
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_0600D048:	.word	0x0380FFF4
_0600D04C:	.word	0x0000042C
_0600D050:	.word	0x04808010
_0600D054:	.word	0x04808214
_0600D058:	.word	0x04808268
_0600D05C:	.word	0x00000FFF
_0600D060:	.word	0x04808244
_0600D064:	.word	0x04808000
_0600D068:	.word	0x0480819C
_0600D06C:	.word	0x048082B8

	arm_func_start FUN_0600D070
FUN_0600D070: ; 0x0600D070
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	ldr	ip, _0600D168	; =0x0380FFF4
	ldr	r2, [ip]
	ldr	r1, _0600D16C	; =0x0000042C
	add	r1, r2, r1
	mov	r3, #4096	; 0x1000
	ldr	r2, _0600D170	; =0x04808010
	strh	r3, [r2]
	ldrh	r2, [r1, #60]	; 0x3c
	cmp	r2, #0
	beq	_0600D15C
	ldr	r2, [ip]
	add	r2, r2, #1536	; 0x600
	ldrh	r2, [r2, #144]	; 0x90
	ands	r2, r2, #16
	beq	_0600D150
	cmp	r0, #0
	beq	_0600D150
	ldr	r0, _0600D174	; =0x048080B6
	ldrh	r2, [r0]
	ldr	r0, _0600D178	; =0x04808214
	ldrh	r0, [r0]
	cmp	r0, #3
	beq	_0600D0DC
	cmp	r0, #5
	bne	_0600D150
_0600D0DC:
	cmp	r2, #0
	bne	_0600D150
	ldr	r2, [r1, #68]	; 0x44
	ldrh	r1, [r2, #2]
	mov	r3, #0
	b	_0600D104
_0600D0F4:
	and	r0, r1, #1
	add	r3, r3, r0
	mov	r0, r1, lsl #15
	mov	r1, r0, lsr #16
_0600D104:
	cmp	r1, #0
	bne	_0600D0F4
	ldrh	r1, [r2, #10]
	ldrh	r0, [r2, #36]	; 0x24
	add	r0, r0, #10
	mul	r0, r3, r0
	add	r0, r0, #192	; 0xc0
	add	r0, r0, r1, lsl #2
	mov	r0, r0, lsl #16
	mov	r0, r0, lsr #16
	ldr	r1, _0600D17C	; =FUN_0600CB84
	bl	FUN_06009E4C
	ldr	r0, _0600D168	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #1024	; 0x400
	ldrh	r1, [r0]
	add	r1, r1, #1
	strh	r1, [r0]
	b	_0600D15C
_0600D150:
	mov	r0, #0
	mov	r1, #16
	bl	FUN_06009078
_0600D15C:
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_0600D168:	.word	0x0380FFF4
_0600D16C:	.word	0x0000042C
_0600D170:	.word	0x04808010
_0600D174:	.word	0x048080B6
_0600D178:	.word	0x04808214
_0600D17C:	.word	FUN_0600CB84

	arm_func_start FUN_0600D180
FUN_0600D180: ; 0x0600D180
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #28
	ldr	r0, _0600D5BC	; =0x0380FFF4
	ldr	r1, [r0]
	add	sl, r1, #836	; 0x344
	ldr	r0, _0600D5C0	; =0x000004DC
	add	r9, r1, r0
	add	r0, r1, #1536	; 0x600
	ldrh	r2, [r0, #144]	; 0x90
	mov	r1, #1
	ldr	r0, _0600D5C4	; =0x04808010
	strh	r1, [r0]
	ldrh	r0, [sl, #12]
	cmp	r0, #0
	ldreq	r0, _0600D5C8	; =0x04808054
	ldreqh	r1, [r0]
	ldreq	r0, _0600D5CC	; =0x0480805A
	streqh	r1, [r0]
	and	r5, r2, #1
	mov	r0, #1000	; 0x3e8
	str	r0, [sp, #20]
	mov	r0, #0
	str	r0, [sp, #24]
_0600D1DC:
	ldrh	r7, [r9, #4]
	ldr	r0, _0600D5C8	; =0x04808054
	ldrh	r6, [r0]
	cmp	r7, r6
	beq	_0600D558
	ldr	r0, _0600D5D0	; =0x048080F8
	ldrh	r4, [r0]
	ldr	r0, _0600D5D4	; =0x048080FA
	ldrh	r3, [r0]
	ldr	r0, _0600D5D0	; =0x048080F8
	ldrh	r2, [r0]
	ldr	r0, _0600D5D4	; =0x048080FA
	ldrh	r1, [r0]
	cmp	r4, r2
	movhi	r0, r2, lsr #4
	orrhi	fp, r0, r1, lsl #12
	movls	r0, r4, lsr #4
	orrls	fp, r0, r3, lsl #12
	ldr	r0, _0600D5D8	; =0x000008C6
	cmp	r7, r0
	bcc	_0600D240
	ldr	r0, _0600D5DC	; =0x000008EF
	cmp	r7, r0
	bhi	_0600D240
	bl	FUN_0600AC84
_0600D240:
	mov	r0, r7, lsl #1
	str	r0, [sp, #8]
	ldr	r0, _0600D5E0	; =0x04804000
	add	r8, r0, r7, lsl #1
	add	r0, r8, #2
	bl	FUN_0600CB5C
	mov	r4, r0
	add	r0, r4, #2
	bl	FUN_0600CB5C
	str	r0, [sp, #12]
	add	r0, r0, #4
	bl	FUN_0600CB5C
	str	r0, [sp, #16]
	add	r0, r8, #14
	bl	FUN_0600CB5C
	str	r0, [sp, #4]
	ldr	r0, [sp, #8]
	add	r0, r0, #75497472	; 0x4800000
	add	r0, r0, #16384	; 0x4000
	ldrh	r2, [r0]
	ldrh	r1, [r4]
	mov	r1, r1, lsl #1
	and	r1, r1, #1024	; 0x400
	orr	r1, r2, r1
	strh	r1, [r0]
	ldr	r0, [sp, #12]
	strh	fp, [r0]
	ldr	r0, [sp, #16]
	ldrh	r2, [r0]
	add	r0, r2, r7, lsl #1
	add	r0, r0, #15
	mov	r0, r0, lsr #2
	mov	r7, r0, lsl #1
	cmp	r7, #4016	; 0xfb0
	ldrcsh	r0, [sl, #154]	; 0x9a
	subcs	r7, r7, r0, lsr #1
	ldr	r0, _0600D5E4	; =0x0000092C
	cmp	r2, r0
	bls	_0600D2F8
	ldr	r0, _0600D5E8	; =0x0000FFFF
	strh	r0, [r8]
	mov	r7, r6
	ldrh	r0, [sl, #180]	; 0xb4
	add	r0, r0, #1
	strh	r0, [sl, #180]	; 0xb4
	b	_0600D390
_0600D2F8:
	cmp	r5, #0
	beq	_0600D390
	cmp	r7, r6
	beq	_0600D390
	mov	r1, r7, lsl #1
	ldr	r0, _0600D5E0	; =0x04804000
	add	r0, r0, r7, lsl #1
	add	r1, r1, #75497472	; 0x4800000
	add	r1, r1, #16384	; 0x4000
	ldrh	r1, [r1]
	ldr	r3, _0600D5EC	; =0x04805F5A
	cmp	r0, r3
	ldrcch	r0, [r0, #6]
	andcc	r0, r0, #255	; 0xff
	movcc	r0, r0, lsl #16
	movcc	r3, r0, lsr #16
	ldrcsh	r3, [sl, #154]	; 0x9a
	subcs	r0, r0, r3
	ldrcsh	r3, [r0, #6]
	ands	r0, r1, #31744	; 0x7c00
	bne	_0600D368
	cmp	r3, #10
	beq	_0600D35C
	cmp	r3, #20
	bne	_0600D368
_0600D35C:
	ldr	r0, _0600D5F0	; =0x00000FFF
	cmp	r2, r0
	bls	_0600D390
_0600D368:
	ldrh	r0, [sl, #180]	; 0xb4
	add	r0, r0, #1
	strh	r0, [sl, #180]	; 0xb4
	ldr	r0, _0600D5E8	; =0x0000FFFF
	strh	r0, [r8]
	mov	r0, r6, lsl #16
	mov	r0, r0, lsr #16
	strh	r0, [r9, #4]
	strh	r0, [r4]
	b	_0600D558
_0600D390:
	ldrh	r0, [r8]
	and	r0, r0, #15
	cmp	r0, #12
	bne	_0600D4EC
	add	r0, r8, #12
	bl	FUN_0600CB5C
	ldrh	fp, [r0]
	add	r0, r8, #34	; 0x22
	bl	FUN_0600CB5C
	ldrh	r6, [r0]
	ldrh	r0, [r9]
	cmp	r0, r6
	bne	_0600D3EC
	ands	r0, fp, #2048	; 0x800
	beq	_0600D3EC
	ldr	r0, _0600D5BC	; =0x0380FFF4
	ldr	r1, [r0]
	ldr	r0, [r1, #1404]	; 0x57c
	add	r0, r0, #1
	str	r0, [r1, #1404]	; 0x57c
	ldr	r0, _0600D5E8	; =0x0000FFFF
	strh	r0, [r8]
	b	_0600D4C4
_0600D3EC:
	ldr	r0, _0600D5BC	; =0x0380FFF4
	ldr	r0, [r0]
	add	r1, r0, #768	; 0x300
	ldrh	r2, [r1, #58]	; 0x3a
	mov	r2, r2, lsl #24
	movs	r2, r2, lsr #31
	bne	_0600D4C4
	ldrh	r1, [r1, #76]	; 0x4c
	cmp	r1, #64	; 0x40
	bne	_0600D4C4
	ldr	r1, _0600D5F4	; =0x04808028
	ldrh	r1, [r1]
	cmp	r1, #0
	beq	_0600D49C
	ldr	r1, _0600D5F8	; =0x04808098
	ldrh	r1, [r1]
	ands	r1, r1, #32768	; 0x8000
	beq	_0600D49C
	add	r0, r0, #1632	; 0x660
	bl	FUN_060009D0
	ldr	r0, [sp, #4]
	ldrh	r2, [r0]
	mov	r1, #0
	ldr	r0, _0600D5FC	; =0x000082EA
	umull	r8, r3, r2, r0
	mla	r3, r2, r1, r3
	mla	r3, r1, r0, r3
	mov	r1, r3, lsr #6
	mov	r0, r8, lsr #6
	orr	r0, r0, r3, lsl #26
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #24]
	bl	FUN_06009EDC
	mov	r3, r0
	mov	r2, r1
	ldr	r0, [sp, #24]
	str	r0, [sp]
	ldr	r0, _0600D5BC	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #1632	; 0x660
	mov	r1, r3
	ldr	r3, _0600D600	; =FUN_0600B004
	bl	FUN_0600144C
	b	_0600D4C4
_0600D49C:
	ldr	r6, _0600D5E8	; =0x0000FFFF
	mov	r1, r6
	ldr	r0, _0600D604	; =0x04805F7E
	strh	r1, [r0]
	ldr	r0, _0600D608	; =0x0480824C
	strh	r1, [r0]
	ldr	r0, _0600D60C	; =0x0480824E
	strh	r1, [r0]
	mov	r0, r6
	strh	r0, [r8]
_0600D4C4:
	strh	r6, [r9]
	bl	FUN_0600CAA4
	cmp	r0, #0
	bne	_0600D544
	ldr	r0, _0600D5BC	; =0x0380FFF4
	ldr	r1, [r0]
	ldr	r0, [r1, #1448]	; 0x5a8
	add	r0, r0, #1
	str	r0, [r1, #1448]	; 0x5a8
	b	_0600D544
_0600D4EC:
	cmp	r0, #13
	bne	_0600D544
	ldr	r0, _0600D5BC	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r1, [r0, #58]	; 0x3a
	mov	r1, r1, lsl #24
	movs	r1, r1, lsr #31
	bne	_0600D544
	ldrh	r0, [r0, #76]	; 0x4c
	cmp	r0, #64	; 0x40
	bne	_0600D544
	ldr	r0, _0600D5F4	; =0x04808028
	ldrh	r0, [r0]
	cmp	r0, #0
	beq	_0600D53C
	ldr	r0, _0600D5F8	; =0x04808098
	ldrh	r0, [r0]
	ands	r0, r0, #32768	; 0x8000
	bne	_0600D544
_0600D53C:
	ldr	r0, _0600D5E8	; =0x0000FFFF
	strh	r0, [r8]
_0600D544:
	mov	r0, r7, lsl #16
	mov	r0, r0, lsr #16
	strh	r0, [r9, #4]
	strh	r0, [r4]
	b	_0600D1DC
_0600D558:
	cmp	r5, #0
	beq	_0600D58C
	ldr	r0, _0600D5C8	; =0x04808054
	ldrh	r4, [r0]
	bl	FUN_0600CAA4
	cmp	r0, #0
	beq	_0600D58C
	ldr	r0, _0600D5C8	; =0x04808054
	ldrh	r0, [r0]
	cmp	r4, r0
	bne	_0600D58C
	mov	r0, #32
	bl	FUN_0600994C
_0600D58C:
	ldr	r0, _0600D5CC	; =0x0480805A
	ldrh	r1, [r0]
	ldr	r0, _0600D5C8	; =0x04808054
	ldrh	r0, [r0]
	cmp	r1, r0
	beq	_0600D5B0
	mov	r0, #0
	mov	r1, #15
	bl	FUN_06009078
_0600D5B0:
	add	sp, sp, #28
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
_0600D5BC:	.word	0x0380FFF4
_0600D5C0:	.word	0x000004DC
_0600D5C4:	.word	0x04808010
_0600D5C8:	.word	0x04808054
_0600D5CC:	.word	0x0480805A
_0600D5D0:	.word	0x048080F8
_0600D5D4:	.word	0x048080FA
_0600D5D8:	.word	0x000008C6
_0600D5DC:	.word	0x000008EF
_0600D5E0:	.word	0x04804000
_0600D5E4:	.word	0x0000092C
_0600D5E8:	.word	0x0000FFFF
_0600D5EC:	.word	0x04805F5A
_0600D5F0:	.word	0x00000FFF
_0600D5F4:	.word	0x04808028
_0600D5F8:	.word	0x04808098
_0600D5FC:	.word	0x000082EA
_0600D600:	.word	FUN_0600B004
_0600D604:	.word	0x04805F7E
_0600D608:	.word	0x0480824C
_0600D60C:	.word	0x0480824E

	arm_func_start FUN_0600D610
FUN_0600D610: ; 0x0600D610
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	ldr	r2, _0600D87C	; =0x0380FFF4
	ldr	r1, [r2]
	ldr	r0, _0600D880	; =0x0000042C
	add	r5, r1, r0
	mov	r0, #2
	ldr	r1, _0600D884	; =0x04808010
	strh	r0, [r1]
	ldr	r1, [r2]
	add	r1, r1, #768	; 0x300
	ldrh	r1, [r1, #76]	; 0x4c
	cmp	r1, #18
	bne	_0600D650
	bl	FUN_0601269C
	b	_0600D870
_0600D650:
	ldr	r1, _0600D888	; =0x048080B8
	ldrh	r1, [r1]
	and	r4, r1, #3840	; 0xf00
	cmp	r4, #768	; 0x300
	beq	_0600D678
	cmp	r4, #2048	; 0x800
	beq	_0600D6AC
	cmp	r4, #2816	; 0xb00
	beq	_0600D6EC
	b	_0600D7F0
_0600D678:
	ldr	r0, [r5, #140]	; 0x8c
	ands	r0, r0, #2
	beq	_0600D688
	bl	FUN_0600CBF0
_0600D688:
	ldr	r0, _0600D87C	; =0x0380FFF4
	ldr	r1, [r0]
	ldr	r0, [r1, #1368]	; 0x558
	add	r0, r0, #1
	str	r0, [r1, #1368]	; 0x558
	mov	r0, #0
	mov	r1, #8
	bl	FUN_06009078
	b	_0600D7F0
_0600D6AC:
	ldrh	r2, [r5, #158]	; 0x9e
	ldr	r1, [r5, #68]	; 0x44
	ldrh	r1, [r1, #4]
	and	r1, r1, #255	; 0xff
	mov	r1, r1, lsl #16
	cmp	r2, r1, lsr #16
	ldrls	r1, _0600D88C	; =0x048080AC
	strlsh	r0, [r1]
	ldrlsh	r0, [r5, #168]	; 0xa8
	addls	r0, r0, #1
	strlsh	r0, [r5, #168]	; 0xa8
	ldr	r1, [r5, #144]	; 0x90
	ldrh	r0, [r1, #24]
	add	r0, r0, #1
	strh	r0, [r1, #24]
	b	_0600D7F0
_0600D6EC:
	ldr	r2, _0600D890	; =0x0000FFFF
	ldr	r0, _0600D894	; =0x04805F70
	strh	r2, [r0]
	ldr	r0, _0600D898	; =0x04805F72
	strh	r2, [r0]
	ldr	r0, _0600D89C	; =0x0480824C
	strh	r2, [r0]
	ldr	r0, _0600D8A0	; =0x0480824E
	strh	r2, [r0]
	ldrh	r0, [r5, #60]	; 0x3c
	cmp	r0, #0
	beq	_0600D748
	ldr	r1, [r5, #68]	; 0x44
	ldrh	r0, [r1, #34]	; 0x22
	cmp	r0, r2
	bne	_0600D748
	ldrh	r0, [r1, #4]
	cmp	r0, #0
	movne	r0, #0
	strneh	r0, [r1, #4]
	ldrneh	r1, [r5, #152]	; 0x98
	ldrne	r0, [r5, #68]	; 0x44
	strneh	r1, [r0, #2]
_0600D748:
	ldrh	r2, [r5, #152]	; 0x98
	ldr	r0, [r5, #68]	; 0x44
	ldrh	r1, [r0, #2]
	ldr	r0, [r5, #144]	; 0x90
	add	r0, r0, #26
	cmp	r1, #1
	bls	_0600D79C
	ldr	r3, _0600D87C	; =0x0380FFF4
	ldr	r3, [r3]
	add	r3, r3, #768	; 0x300
	ldrh	r3, [r3, #58]	; 0x3a
	mov	r3, r3, lsl #27
	movs	r3, r3, lsr #31
	beq	_0600D79C
	ldr	r3, _0600D8A4	; =0x0480819C
	ldrh	r3, [r3]
	ands	r3, r3, #1
	ldreq	ip, _0600D8A8	; =0x04808290
	ldreqh	r3, [ip]
	eoreq	r3, r3, #1
	streqh	r3, [ip]
_0600D79C:
	ldr	r3, _0600D87C	; =0x0380FFF4
	ldr	r3, [r3]
	add	r3, r3, #1536	; 0x600
	ldrh	r3, [r3, #144]	; 0x90
	ands	r3, r3, #64	; 0x40
	beq	_0600D7F0
	b	_0600D7E8
_0600D7B8:
	mov	r1, r1, lsl #15
	mov	r1, r1, lsr #16
	ands	r3, r1, #1
	ldrneh	r3, [r0, #6]
	addne	r3, r3, #1
	strneh	r3, [r0, #6]
	mov	r2, r2, lsl #15
	mov	r2, r2, lsr #16
	ands	r3, r2, #1
	ldrne	r3, [r5, #144]	; 0x90
	ldrneh	r3, [r3, #22]
	addne	r0, r0, r3
_0600D7E8:
	cmp	r1, #1
	bhi	_0600D7B8
_0600D7F0:
	cmp	r4, #2048	; 0x800
	beq	_0600D864
	ldr	r0, _0600D8AC	; =0x048080B0
	ldrh	r0, [r0]
	ands	r0, r0, #2
	bne	_0600D864
	ldrh	r0, [r5, #60]	; 0x3c
	cmp	r0, #0
	beq	_0600D858
	mov	r0, #2
	ldr	r1, _0600D8B0	; =0x048080B4
	strh	r0, [r1]
	mov	r2, #0
	ldr	r1, _0600D8B4	; =0x04808048
	strh	r2, [r1]
	ldr	r1, _0600D884	; =0x04808010
	ldrh	r1, [r1]
	ands	r1, r1, #4096	; 0x1000
	ldrneh	r0, [r5, #172]	; 0xac
	addne	r0, r0, #1
	strneh	r0, [r5, #172]	; 0xac
	bne	_0600D84C
	bl	FUN_0600D070
_0600D84C:
	ldrh	r0, [r5, #170]	; 0xaa
	add	r0, r0, #1
	strh	r0, [r5, #170]	; 0xaa
_0600D858:
	mov	r1, #2
	ldr	r0, _0600D8B8	; =0x048080AE
	strh	r1, [r0]
_0600D864:
	mov	r0, #0
	mov	r1, #14
	bl	FUN_06009078
_0600D870:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_0600D87C:	.word	0x0380FFF4
_0600D880:	.word	0x0000042C
_0600D884:	.word	0x04808010
_0600D888:	.word	0x048080B8
_0600D88C:	.word	0x048080AC
_0600D890:	.word	0x0000FFFF
_0600D894:	.word	0x04805F70
_0600D898:	.word	0x04805F72
_0600D89C:	.word	0x0480824C
_0600D8A0:	.word	0x0480824E
_0600D8A4:	.word	0x0480819C
_0600D8A8:	.word	0x04808290
_0600D8AC:	.word	0x048080B0
_0600D8B0:	.word	0x048080B4
_0600D8B4:	.word	0x04808048
_0600D8B8:	.word	0x048080AE

	arm_func_start FUN_0600D8BC
FUN_0600D8BC: ; 0x0600D8BC
	stmdb	sp!, {r4, lr}
	ldr	r4, _0600DA44	; =0x0380FFF4
	ldr	r1, [r4]
	ldr	r0, _0600DA48	; =0x000004DC
	add	r2, r1, r0
	ldr	r0, _0600DA4C	; =0x0000042C
	add	r1, r1, r0
	mov	r3, #4
	ldr	r0, _0600DA50	; =0x04808010
	strh	r3, [r0]
	ldr	r0, _0600DA54	; =0x048081A8
	ldrh	r0, [r0]
	ldr	r3, [r4]
	add	r3, r3, #1536	; 0x600
	ldrh	r3, [r3, #144]	; 0x90
	ands	r3, r3, #8
	beq	_0600D9BC
	ands	r3, r0, #1024	; 0x400
	beq	_0600D9BC
	ldr	r3, _0600DA58	; =0x048080B0
	ldrh	r4, [r3]
	ands	r3, r4, #1
	beq	_0600D924
	ldrh	r3, [r1]
	cmp	r3, #0
	bne	_0600D978
_0600D924:
	ands	r3, r4, #4
	beq	_0600D938
	ldrh	r3, [r1, #20]
	cmp	r3, #0
	bne	_0600D978
_0600D938:
	ands	r3, r4, #8
	beq	_0600D94C
	ldrh	r1, [r1, #40]	; 0x28
	cmp	r1, #0
	bne	_0600D978
_0600D94C:
	ldr	r1, _0600DA5C	; =0x0480819C
	ldrh	r1, [r1]
	ands	r1, r1, #1
	bne	_0600D978
	mov	r4, #0
	ldr	r3, _0600DA60	; =0x04808032
	strh	r4, [r3]
	mov	r1, #32768	; 0x8000
	strh	r1, [r3]
	strh	r4, [r2, #2]
	b	_0600D9BC
_0600D978:
	ldrh	r3, [r2, #2]
	add	r1, r3, #1
	strh	r1, [r2, #2]
	cmp	r3, #12
	bls	_0600D9BC
	mov	r1, #0
	strh	r1, [r2, #2]
	ldr	r2, _0600DA60	; =0x04808032
	strh	r1, [r2]
	mov	r1, #32768	; 0x8000
	strh	r1, [r2]
	ldr	r1, _0600DA44	; =0x0380FFF4
	ldr	r1, [r1]
	add	r1, r1, #768	; 0x300
	ldrh	r2, [r1, #254]	; 0xfe
	add	r2, r2, #1
	strh	r2, [r1, #254]	; 0xfe
_0600D9BC:
	ldr	r1, _0600DA44	; =0x0380FFF4
	ldr	r1, [r1]
	add	r1, r1, #1536	; 0x600
	ldrh	r1, [r1, #144]	; 0x90
	ands	r1, r1, #1
	beq	_0600DA3C
	ands	r0, r0, #96	; 0x60
	beq	_0600DA3C
	ldr	r0, _0600DA64	; =0x04808054
	ldrh	r4, [r0]
	ldr	r0, _0600DA68	; =0x04808052
	ldrh	r0, [r0]
	sub	r0, r0, #16384	; 0x4000
	mov	r1, #2
	bl	FUN_06001840
	cmp	r4, r0
	bge	_0600DA1C
	ldr	r0, _0600DA6C	; =0x04808050
	ldrh	r0, [r0]
	sub	r0, r0, #16384	; 0x4000
	mov	r1, #2
	bl	FUN_06001840
	cmp	r4, r0
	bge	_0600DA38
_0600DA1C:
	ldr	r0, _0600DA70	; =0x0480805A
	ldrh	r1, [r0]
	ldr	r0, _0600DA74	; =0x04808056
	strh	r1, [r0]
	ldr	r1, _0600DA78	; =0x00008001
	ldr	r0, _0600DA7C	; =0x04808030
	strh	r1, [r0]
_0600DA38:
	bl	FUN_06009990
_0600DA3C:
	ldmia	sp!, {r4, lr}
	bx	lr
_0600DA44:	.word	0x0380FFF4
_0600DA48:	.word	0x000004DC
_0600DA4C:	.word	0x0000042C
_0600DA50:	.word	0x04808010
_0600DA54:	.word	0x048081A8
_0600DA58:	.word	0x048080B0
_0600DA5C:	.word	0x0480819C
_0600DA60:	.word	0x04808032
_0600DA64:	.word	0x04808054
_0600DA68:	.word	0x04808052
_0600DA6C:	.word	0x04808050
_0600DA70:	.word	0x0480805A
_0600DA74:	.word	0x04808056
_0600DA78:	.word	0x00008001
_0600DA7C:	.word	0x04808030

	arm_func_start FUN_0600DA80
FUN_0600DA80: ; 0x0600DA80
	stmdb	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #4
	mov	r1, #8
	ldr	r0, _0600DB94	; =0x04808010
	strh	r1, [r0]
	ldr	r0, _0600DB98	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #58]	; 0x3a
	mov	r0, r0, lsl #27
	movs	r0, r0, lsr #31
	beq	_0600DACC
	ldr	r0, _0600DB9C	; =0x0480819C
	ldrh	r0, [r0]
	ands	r0, r0, #1
	ldreq	r1, _0600DBA0	; =0x04808290
	ldreqh	r0, [r1]
	eoreq	r0, r0, #1
	streqh	r0, [r1]
_0600DACC:
	ldr	r0, _0600DB98	; =0x0380FFF4
	ldr	r1, [r0]
	add	r0, r1, #1536	; 0x600
	ldrh	r0, [r0, #144]	; 0x90
	ands	r0, r0, #8
	beq	_0600DB88
	add	r3, r1, #836	; 0x344
	ldr	r0, _0600DBA4	; =0x0000042C
	add	r1, r1, r0
	mov	r2, #0
	mov	r5, r2
	ldr	r4, _0600DBA8	; =0x04808032
	mov	lr, #32768	; 0x8000
	add	ip, r3, #186	; 0xba
	mov	r3, #20
_0600DB08:
	mul	r0, r2, r3
	add	r6, r1, r0
	ldrh	r0, [r1, r0]
	cmp	r0, #0
	beq	_0600DB7C
	ldr	r0, [r6, #8]
	ldrh	r6, [r0, #12]
	ands	r6, r6, #16384	; 0x4000
	beq	_0600DB7C
	ldrh	r6, [r0, #4]
	ands	r6, r6, #255	; 0xff
	beq	_0600DB7C
	add	r7, r0, #12
	ldrh	r6, [r0, #10]
	add	r6, r7, r6
	sub	r6, r6, #7
	bic	r7, r6, #1
	ldrh	r6, [r7]
	cmp	r6, #0
	bne	_0600DB7C
	ldrh	r6, [r7, #2]
	cmp	r6, #0
	bne	_0600DB7C
	strh	r5, [r0, #4]
	strh	r5, [r4]
	strh	lr, [r4]
	ldrh	r0, [ip]
	add	r0, r0, #1
	strh	r0, [ip]
_0600DB7C:
	add	r2, r2, #1
	cmp	r2, #3
	bcc	_0600DB08
_0600DB88:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, lr}
	bx	lr
_0600DB94:	.word	0x04808010
_0600DB98:	.word	0x0380FFF4
_0600DB9C:	.word	0x0480819C
_0600DBA0:	.word	0x04808290
_0600DBA4:	.word	0x0000042C
_0600DBA8:	.word	0x04808032

	arm_func_start FUN_0600DBAC
FUN_0600DBAC: ; 0x0600DBAC
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	bl	FUN_0600AC84
	ldr	r1, _0600DBDC	; =0x0000FFFF
	ldr	r0, _0600DBE0	; =0x048081AC
	strh	r1, [r0]
	mov	r1, #48	; 0x30
	ldr	r0, _0600DBE4	; =0x04808010
	strh	r1, [r0]
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_0600DBDC:	.word	0x0000FFFF
_0600DBE0:	.word	0x048081AC
_0600DBE4:	.word	0x04808010

	arm_func_start FUN_0600DBE8
FUN_0600DBE8: ; 0x0600DBE8
	mov	r1, #2048	; 0x800
	ldr	r0, _0600DBF8	; =0x04808010
	strh	r1, [r0]
	bx	lr
_0600DBF8:	.word	0x04808010

	arm_func_start FUN_0600DBFC
FUN_0600DBFC: ; 0x0600DBFC
	ldr	r0, _0600DC68	; =0x0380FFF4
	ldr	r0, [r0]
	add	r2, r0, #836	; 0x344
	mov	r1, #8192	; 0x2000
	ldr	r0, _0600DC6C	; =0x04808010
	strh	r1, [r0]
	mov	r1, #13
	ldr	r0, _0600DC70	; =0x048080AC
	strh	r1, [r0]
	ldrh	r0, [r2, #26]
	cmp	r0, #1
	moveq	r0, #2
	streqh	r0, [r2, #26]
	bxeq	lr
	cmp	r0, #2
	moveq	r0, #0
	streqh	r0, [r2, #26]
	bxeq	lr
	ldrh	r0, [r2, #12]
	cmp	r0, #2
	bxne	lr
	ldrh	r0, [r2, #8]
	cmp	r0, #64	; 0x40
	movne	r1, #0
	ldrne	r0, _0600DC74	; =0x04808048
	strneh	r1, [r0]
	bx	lr
_0600DC68:	.word	0x0380FFF4
_0600DC6C:	.word	0x04808010
_0600DC70:	.word	0x048080AC
_0600DC74:	.word	0x04808048

	arm_func_start FUN_0600DC78
FUN_0600DC78: ; 0x0600DC78
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #4
	ldr	r0, _0600DF48	; =0x0380FFF4
	ldr	r1, [r0]
	add	sl, r1, #836	; 0x344
	add	r4, r1, #796	; 0x31c
	ldr	r0, _0600DF4C	; =0x0000042C
	add	r9, r1, r0
	mov	r1, #16384	; 0x4000
	ldr	r0, _0600DF50	; =0x04808010
	strh	r1, [r0]
	ldrh	r0, [sl, #12]
	cmp	r0, #1
	beq	_0600DCC4
	cmp	r0, #2
	beq	_0600DD80
	cmp	r0, #3
	beq	_0600DDC4
	b	_0600DF3C
_0600DCC4:
	ldr	r0, [r9, #128]	; 0x80
	add	r1, r0, #36	; 0x24
	ldrh	r0, [sl, #150]	; 0x96
	add	r0, r1, r0
	add	r6, r0, #8
	ldr	r0, _0600DF54	; =0x0380FFF0
	ldrh	r5, [r0]
	mov	r0, r6
	and	r1, r5, #255	; 0xff
	bl	FUN_06009CD0
	add	r0, r6, #1
	mov	r1, r5, lsr #8
	and	r1, r1, #255	; 0xff
	bl	FUN_06009CD0
	ldrh	r0, [sl, #14]
	cmp	r0, #1
	bne	_0600DD20
	ldrh	r2, [r4, #32]
	ldr	r1, _0600DF58	; =0x04808134
	ldrh	r0, [r1]
	add	r0, r2, r0
	add	r0, r0, #1
	strh	r0, [r1]
_0600DD20:
	ldr	r0, _0600DF48	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #1280	; 0x500
	ldrh	r1, [r0, #46]	; 0x2e
	mvn	r2, r1
	ldrh	r1, [r0, #50]	; 0x32
	orr	r1, r2, r1
	strh	r1, [r0, #48]	; 0x30
	ldr	r0, _0600DF5C	; =0x048080B6
	ldrh	r1, [r0]
	ands	r0, r1, #24
	bne	_0600DD5C
	and	r0, r1, #6
	cmp	r0, #2
	bne	_0600DD70
_0600DD5C:
	ldr	r0, [r9, #140]	; 0x8c
	bic	r0, r0, #2
	str	r0, [r9, #140]	; 0x8c
	bl	FUN_0600CBF0
	b	_0600DF3C
_0600DD70:
	ldr	r0, [r9, #140]	; 0x8c
	orr	r0, r0, #2
	str	r0, [r9, #140]	; 0x8c
	b	_0600DF3C
_0600DD80:
	ldrh	r0, [sl, #18]
	cmp	r0, #0
	ldreq	r1, _0600DF60	; =0x0000FFFF
	ldreq	r0, _0600DF58	; =0x04808134
	streqh	r1, [r0]
	beq	_0600DDB0
	ldrh	r2, [r4, #32]
	ldr	r1, _0600DF58	; =0x04808134
	ldrh	r0, [r1]
	add	r0, r2, r0
	add	r0, r0, #1
	strh	r0, [r1]
_0600DDB0:
	ldrh	r0, [sl, #26]
	cmp	r0, #2
	bne	_0600DDC4
	mov	r0, #2
	bl	FUN_0600B3F4
_0600DDC4:
	ldrh	r0, [sl, #8]
	cmp	r0, #64	; 0x40
	movne	r1, #1
	bne	_0600DE14
	mov	r1, #0
	ldrh	r0, [sl, #114]	; 0x72
	cmp	r0, #1
	moveq	r1, #1
	ldrh	r0, [sl, #20]
	cmp	r0, #0
	beq	_0600DE14
	ldrh	r0, [sl, #118]	; 0x76
	cmp	r0, #1
	beq	_0600DE10
	cmp	r0, #0
	bne	_0600DE14
	ldrh	r0, [sl, #116]	; 0x74
	cmp	r0, #1
	bne	_0600DE14
_0600DE10:
	mov	r1, #1
_0600DE14:
	cmp	r1, #0
	ldrne	r1, _0600DF64	; =0x04808038
	ldrneh	r0, [r1]
	orrne	r0, r0, #1
	strneh	r0, [r1]
	ldreq	r1, _0600DF64	; =0x04808038
	ldreqh	r0, [r1]
	biceq	r0, r0, #1
	streqh	r0, [r1]
	ldr	r0, _0600DF68	; =0x04808118
	ldrh	r0, [r0]
	cmp	r0, #10
	movhi	r1, #0
	ldrhi	r0, _0600DF6C	; =0x04808048
	strhih	r1, [r0]
	ldrh	r0, [sl, #114]	; 0x72
	sub	r0, r0, #1
	strh	r0, [sl, #114]	; 0x72
	ldrh	r0, [sl, #114]	; 0x72
	cmp	r0, #0
	ldreqh	r0, [sl, #112]	; 0x70
	streqh	r0, [sl, #114]	; 0x72
	ldrh	r1, [sl, #118]	; 0x76
	sub	r0, r1, #1
	strh	r0, [sl, #118]	; 0x76
	cmp	r1, #0
	ldreqh	r0, [sl, #116]	; 0x74
	subeq	r0, r0, #1
	streqh	r0, [sl, #118]	; 0x76
	mov	r8, #0
	mov	r6, #2
	mov	fp, r8
	mov	r5, #14
	mov	r4, #20
_0600DE9C:
	mul	r0, r8, r4
	add	r7, r9, r0
	ldrh	r0, [r9, r0]
	cmp	r0, #0
	beq	_0600DF24
	ldr	r2, [r7, #12]
	ldrh	r0, [r2, #8]
	cmp	r0, #0
	bne	_0600DF24
	ldr	r1, [sl, #168]	; 0xa8
	ldrh	r0, [r2, #4]
	sub	r0, r1, r0
	mov	r0, r0, lsl #16
	mov	r1, r0, lsr #16
	ldrh	r0, [sl, #140]	; 0x8c
	cmp	r1, r0
	bls	_0600DEF4
	ldr	r2, [r7, #8]
	ldrh	r2, [r2, #12]
	mov	r2, r2, lsl #28
	movs	r2, r2, lsr #30
	bne	_0600DEFC
_0600DEF4:
	cmp	r1, r0, lsl #3
	bls	_0600DF24
_0600DEFC:
	mov	r0, r8
	bl	FUN_06014FC8
	ldr	r0, [r7, #8]
	strh	r6, [r0]
	mov	r0, fp
	mov	r1, r5
	bl	FUN_06009078
	ldrh	r0, [r9, #174]	; 0xae
	add	r0, r0, #1
	strh	r0, [r9, #174]	; 0xae
_0600DF24:
	add	r8, r8, #1
	cmp	r8, #2
	bcc	_0600DE9C
	mov	r1, #13
	ldr	r0, _0600DF70	; =0x048080AE
	strh	r1, [r0]
_0600DF3C:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
_0600DF48:	.word	0x0380FFF4
_0600DF4C:	.word	0x0000042C
_0600DF50:	.word	0x04808010
_0600DF54:	.word	0x0380FFF0
_0600DF58:	.word	0x04808134
_0600DF5C:	.word	0x048080B6
_0600DF60:	.word	0x0000FFFF
_0600DF64:	.word	0x04808038
_0600DF68:	.word	0x04808118
_0600DF6C:	.word	0x04808048
_0600DF70:	.word	0x048080AE

	arm_func_start FUN_0600DF74
FUN_0600DF74: ; 0x0600DF74
	stmdb	sp!, {r4, lr}
	ldr	r0, _0600DFF8	; =0x0380FFF4
	ldr	r0, [r0]
	add	r4, r0, #836	; 0x344
	mov	r1, #32768	; 0x8000
	ldr	r0, _0600DFFC	; =0x04808010
	strh	r1, [r0]
	ldrh	r0, [r4, #8]
	cmp	r0, #64	; 0x40
	bne	_0600DFE8
	ldrh	r0, [r4, #126]	; 0x7e
	cmp	r0, #0
	beq	_0600DFE8
	ldrh	r1, [r4, #114]	; 0x72
	ldrh	r0, [r4, #112]	; 0x70
	cmp	r1, r0
	bne	_0600DFE8
	ldrh	r0, [r4, #128]	; 0x80
	add	r0, r0, #1
	strh	r0, [r4, #128]	; 0x80
	ldrh	r1, [r4, #128]	; 0x80
	ldrh	r0, [r4, #126]	; 0x7e
	cmp	r1, r0
	bls	_0600DFE8
	mov	r0, #0
	strh	r0, [r4, #128]	; 0x80
	mov	r0, #1
	mov	r1, #13
	bl	FUN_06009078
_0600DFE8:
	mov	r0, #1
	strh	r0, [r4, #16]
	ldmia	sp!, {r4, lr}
	bx	lr
_0600DFF8:	.word	0x0380FFF4
_0600DFFC:	.word	0x04808010

	arm_func_start FUN_0600E000
FUN_0600E000: ; 0x0600E000
	stmdb	sp!, {r4, r5, r6, r7, lr}

	arm_func_start FUN_0600E004
FUN_0600E004: ; 0x0600E004
	sub	sp, sp, #4
	mov	r7, #1
	ldr	r5, _0600E0D8	; =0x04808010
	ldr	r4, _0600E0DC	; =0x04808012
_0600E014:
	ldrh	r1, [r5]
	ldrh	r0, [r4]
	ands	r6, r1, r0
	beq	_0600E0BC
	ands	r0, r6, #128	; 0x80
	beq	_0600E030
	bl	FUN_0600CF38
_0600E030:
	ands	r0, r6, #64	; 0x40
	beq	_0600E03C
	bl	FUN_0600CCC4
_0600E03C:
	ands	r0, r6, #32768	; 0x8000
	beq	_0600E048
	bl	FUN_0600DF74
_0600E048:
	ands	r0, r6, #16384	; 0x4000
	beq	_0600E054
	bl	FUN_0600DC78
_0600E054:
	ands	r0, r6, #8192	; 0x2000
	beq	_0600E060
	bl	FUN_0600DBFC
_0600E060:
	ands	r0, r6, #2048	; 0x800
	beq	_0600E06C
	bl	FUN_0600DBE8
_0600E06C:
	ands	r0, r6, #8
	beq	_0600E078
	bl	FUN_0600DA80
_0600E078:
	ands	r0, r6, #4
	beq	_0600E084
	bl	FUN_0600D8BC
_0600E084:
	ands	r0, r6, #1
	beq	_0600E090
	bl	FUN_0600D180
_0600E090:
	ands	r0, r6, #48	; 0x30
	beq	_0600E09C
	bl	FUN_0600DBAC
_0600E09C:
	ands	r0, r6, #2
	beq	_0600E0A8
	bl	FUN_0600D610
_0600E0A8:
	ands	r0, r6, #4096	; 0x1000
	beq	_0600E014
	mov	r0, r7
	bl	FUN_0600D070
	b	_0600E014
_0600E0BC:
	ldr	r1, _0600E0E0	; =0x0380FFF8
	ldr	r0, [r1]
	orr	r0, r0, #16777216	; 0x1000000
	str	r0, [r1]
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, lr}
	bx	lr
_0600E0D8:	.word	0x04808010
_0600E0DC:	.word	0x04808012
_0600E0E0:	.word	0x0380FFF8

	arm_func_start FUN_0600E0E4
FUN_0600E0E4: ; 0x0600E0E4
	stmdb	sp!, {r4, r5, r6, lr}
	mov	r6, r0
	mov	r5, r1
	ldr	r0, _0600E154	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #392	; 0x188
	add	r1, r5, #34	; 0x22
	bl	FUN_06009724
	cmp	r0, #0
	moveq	r0, #0
	beq	_0600E14C
	add	r4, r0, #16
	add	r0, r4, #8
	mov	r1, r6
	add	r2, r5, #12
	bl	FUN_06009DA4
	sub	r0, r5, #24
	strh	r0, [r4, #6]
	ldrh	r0, [r4, #14]
	and	r1, r0, #255	; 0xff
	ldrh	r0, [r4, #18]
	and	r0, r0, #255	; 0xff
	mov	r0, r0, lsl #16
	orr	r0, r1, r0, lsr #8
	strh	r0, [r4, #14]
	mov	r0, r4
_0600E14C:
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr
_0600E154:	.word	0x0380FFF4

	arm_func_start FUN_0600E158
FUN_0600E158: ; 0x0600E158
	stmdb	sp!, {r4, lr}
	ldr	r0, _0600E210	; =0x0380FFF4
	ldr	r1, [r0]
	add	r4, r1, #380	; 0x17c
	ldr	r0, _0600E214	; =0x04808088
	ldrh	r0, [r0]
	cmp	r0, #0
	bne	_0600E19C
	ldrh	r0, [r4, #56]	; 0x38
	cmp	r0, #0
	beq	_0600E19C
	mov	r1, #8
	ldr	r0, _0600E218	; =0x048080AE
	strh	r1, [r0]
	mov	r0, #2
	bl	FUN_06015C78
	b	_0600E208
_0600E19C:
	add	r0, r1, #1280	; 0x500
	ldrh	r1, [r0, #46]	; 0x2e
	ldrh	r0, [r0, #50]	; 0x32
	mvn	r0, r0
	ands	r0, r1, r0
	bne	_0600E1D4
	mov	r1, #8
	ldr	r0, _0600E218	; =0x048080AE
	strh	r1, [r0]
	ldrh	r0, [r4, #56]	; 0x38
	cmp	r0, #0
	beq	_0600E1D4
	mov	r0, #2
	bl	FUN_06015C78
_0600E1D4:
	mov	r1, #5
	ldr	r0, _0600E218	; =0x048080AE
	strh	r1, [r0]
	ldrh	r0, [r4, #44]	; 0x2c
	cmp	r0, #0
	beq	_0600E1F4
	mov	r0, #1
	bl	FUN_06015C78
_0600E1F4:
	ldrh	r0, [r4, #32]
	cmp	r0, #0
	beq	_0600E208
	mov	r0, #0
	bl	FUN_06015C78
_0600E208:
	ldmia	sp!, {r4, lr}
	bx	lr
_0600E210:	.word	0x0380FFF4
_0600E214:	.word	0x04808088
_0600E218:	.word	0x048080AE

	arm_func_start FUN_0600E21C
FUN_0600E21C: ; 0x0600E21C
	stmdb	sp!, {r4, lr}
	ldr	r0, _0600E300	; =0x0380FFF4
	ldr	r1, [r0]
	ldr	r0, _0600E304	; =0x0000042C
	add	r4, r1, r0
	ldrh	r0, [r4, #60]	; 0x3c
	cmp	r0, #0
	beq	_0600E2F8
	ldr	r0, [r4, #144]	; 0x90
	ldrh	r1, [r0, #16]
	ldr	r0, [r4, #68]	; 0x44
	ldrh	r0, [r0, #2]
	cmp	r1, r0
	beq	_0600E258
	bl	FUN_0600E308
_0600E258:
	ldr	r0, [r4, #68]	; 0x44
	ldrh	r0, [r0, #4]
	ands	r2, r0, #255	; 0xff
	ldreq	r0, _0600E300	; =0x0380FFF4
	ldreq	r1, [r0]
	ldreq	r0, [r1, #1440]	; 0x5a0
	addeq	r0, r0, #1
	streq	r0, [r1, #1440]	; 0x5a0
	beq	_0600E290
	ldr	r0, _0600E300	; =0x0380FFF4
	ldr	r1, [r0]
	ldr	r0, [r1, #1440]	; 0x5a0
	add	r0, r0, r2
	str	r0, [r1, #1440]	; 0x5a0
_0600E290:
	ldrh	r0, [r4, #64]	; 0x40
	add	r0, r0, #1
	strh	r0, [r4, #64]	; 0x40
	ldr	r2, [r4, #144]	; 0x90
	ldrh	r1, [r2, #16]
	ldr	r0, [r4, #68]	; 0x44
	ldrh	r0, [r0, #2]
	eor	r0, r1, r0
	strh	r0, [r2, #18]
	ldr	r0, [r4, #144]	; 0x90
	ldrh	r0, [r0, #16]
	strh	r0, [r4, #160]	; 0xa0
	mov	r0, #0
	strh	r0, [r4, #60]	; 0x3c
	ldr	r0, _0600E300	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #234]	; 0xea
	cmp	r0, #0
	beq	_0600E2E4
	bl	FUN_0600B21C
_0600E2E4:
	ldr	r0, _0600E300	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #392	; 0x188
	ldr	r1, [r4, #144]	; 0x90
	bl	FUN_0600F8DC
_0600E2F8:
	ldmia	sp!, {r4, lr}
	bx	lr
_0600E300:	.word	0x0380FFF4
_0600E304:	.word	0x0000042C

	arm_func_start FUN_0600E308
FUN_0600E308: ; 0x0600E308
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #52	; 0x34
	ldr	sl, _0600E6B8	; =0x0380FFF4
	ldr	r1, [sl]
	ldr	r0, _0600E6BC	; =0x000004DC
	add	r7, r1, r0
	add	r6, r1, #380	; 0x17c
	mov	r0, #0
	str	r0, [sp]
	str	r0, [sp, #12]
	mov	r8, #1
	str	r0, [sp, #40]	; 0x28
	mov	r0, #7
	str	r0, [sp, #36]	; 0x24
	ldr	r0, [sp]
	str	r0, [sp, #32]
	str	r0, [sp, #24]
	mov	fp, #2
	mov	r0, #6
	str	r0, [sp, #28]
	ldr	r0, [sp]
	str	r0, [sp, #16]
	mov	r0, #9
	str	r0, [sp, #20]
	ldr	r0, [sp]
	str	r0, [sp, #44]	; 0x2c
	mov	r0, #8
	str	r0, [sp, #8]
	mov	r0, #16
	str	r0, [sp, #4]
_0600E380:
	ldr	r0, _0600E6C0	; =0x0480805A
	ldrh	r5, [r0]
	ldrh	r0, [r7, #4]
	cmp	r5, r0
	beq	_0600E6AC
	ldr	r0, _0600E6C4	; =0x000008C6
	cmp	r5, r0
	bcc	_0600E3A4
	bl	FUN_0600AC84
_0600E3A4:
	mov	r4, r5, lsl #1
	ldr	r0, _0600E6C8	; =0x04804000
	add	r5, r0, r5, lsl #1
	add	r0, r5, #2
	bl	FUN_0600CB5C
	ldrh	r9, [r0]
	add	r0, r4, #75497472	; 0x4800000
	add	r0, r0, #16384	; 0x4000
	ldrh	r1, [r0]
	ldr	r0, _0600E6CC	; =0x0000FFFF
	cmp	r1, r0
	ldreq	r0, _0600E6C0	; =0x0480805A
	streqh	r9, [r0]
	beq	_0600E69C
	add	r0, r5, #8
	bl	FUN_0600CB5C
	ldrh	r1, [r0]
	mov	r0, r5
	bl	FUN_0600E0E4
	movs	r4, r0
	ldr	r0, _0600E6C0	; =0x0480805A
	strh	r9, [r0]
	bne	_0600E428
	ldrh	r0, [r5]
	and	r0, r0, #15
	cmp	r0, #12
	bne	_0600E41C
	ldr	r0, [sp, #4]
	bl	FUN_0600994C
	b	_0600E69C
_0600E41C:
	ldr	r0, [sp, #8]
	bl	FUN_0600994C
	b	_0600E69C
_0600E428:
	ldr	r0, [sl]
	add	r0, r0, #1536	; 0x600
	ldrh	r0, [r0, #144]	; 0x90
	ands	r0, r0, #8
	beq	_0600E44C
	ldrh	r0, [r4, #20]
	ands	r0, r0, #16384	; 0x4000
	ldrne	r0, [sp, #12]
	strneh	r0, [r7, #2]
_0600E44C:
	ldrh	r1, [r4, #8]
	mov	r9, r8
	ands	r0, r1, #512	; 0x200
	beq	_0600E4A4
	ldrh	r0, [r4, #20]
	mov	r0, r0, lsl #21
	mov	r0, r0, lsr #31
	cmp	r0, #1
	beq	_0600E480
	ldrh	r0, [r4, #42]	; 0x2a
	mov	r0, r0, lsl #28
	movs	r0, r0, lsr #28
	beq	_0600E644
_0600E480:
	ldr	r9, [sp, #16]
	add	r0, r6, #12
	add	r1, r6, #108	; 0x6c
	sub	r2, r4, #16
	bl	FUN_0600962C
	mov	r0, fp
	ldr	r1, [sp, #20]
	bl	FUN_06009078
	b	_0600E644
_0600E4A4:
	and	r0, r1, #15
	cmp	r0, #15
	addls	pc, pc, r0, lsl #2
	b	_0600E644
	b	_0600E540
	b	_0600E528
	b	_0600E644
	b	_0600E644
	b	_0600E644
	b	_0600E570
	b	_0600E644
	b	_0600E644
	b	_0600E4F4
	b	_0600E644
	b	_0600E644
	b	_0600E644
	b	_0600E5C8
	b	_0600E614
	b	_0600E5A8
	b	_0600E5A8
_0600E4F4:
	ldrh	r0, [r4, #20]
	and	r0, r0, #15
	cmp	r0, #8
	bne	_0600E644
	ldr	r9, [sp, #24]
	add	r0, r6, #12
	add	r1, r6, #72	; 0x48
	sub	r2, r4, #16
	bl	FUN_0600962C
	mov	r0, fp
	ldr	r1, [sp, #28]
	bl	FUN_06009078
	b	_0600E644
_0600E528:
	ldrh	r0, [r4, #20]
	cmp	r0, #128	; 0x80
	bne	_0600E644
	mov	r0, r4
	bl	FUN_06017FDC
	b	_0600E644
_0600E540:
	ldrh	r0, [r4, #20]
	ands	r0, r0, #15
	bne	_0600E644
	ldr	r9, [sp, #32]
	add	r0, r6, #12
	add	r1, r6, #96	; 0x60
	sub	r2, r4, #16
	bl	FUN_0600962C
	mov	r0, r8
	ldr	r1, [sp, #36]	; 0x24
	bl	FUN_06009078
	b	_0600E644
_0600E570:
	ldrh	r1, [r4, #20]
	ldr	r0, _0600E6D0	; =0x0000E7FF
	and	r0, r1, r0
	cmp	r0, #164	; 0xa4
	bne	_0600E644
	ldr	r9, [sp, #40]	; 0x28
	add	r0, r6, #12
	add	r1, r6, #96	; 0x60
	sub	r2, r4, #16
	bl	FUN_0600962C
	mov	r0, r8
	ldr	r1, [sp, #36]	; 0x24
	bl	FUN_06009078
	b	_0600E644
_0600E5A8:
	ldrh	r1, [r4, #20]
	ldr	r0, _0600E6D4	; =0x0000E7BF
	and	r0, r1, r0
	cmp	r0, #280	; 0x118
	bne	_0600E644
	mov	r0, r4
	bl	FUN_06018780
	b	_0600E644
_0600E5C8:
	ldrh	r1, [r4, #20]
	ldr	r0, _0600E6D0	; =0x0000E7FF
	and	r0, r1, r0
	cmp	r0, #552	; 0x228
	bne	_0600E644
	ldr	r0, [sl]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #84]	; 0x54
	cmp	r0, #0
	ldreq	r0, _0600E6D8	; =0x0480803C
	streqh	r8, [r0]
	ldr	r1, [sl]
	ldr	r0, [r1, #1452]	; 0x5ac
	add	r0, r0, #1
	str	r0, [r1, #1452]	; 0x5ac
	mov	r0, r4
	bl	FUN_06018944
	mov	r9, r0
	b	_0600E644
_0600E614:
	ldrh	r1, [r4, #20]
	ldr	r0, _0600E6D0	; =0x0000E7FF
	and	r0, r1, r0
	cmp	r0, #536	; 0x218
	bne	_0600E644
	ldr	r1, [sl]
	ldr	r0, [r1, #1456]	; 0x5b0
	add	r0, r0, #1
	str	r0, [r1, #1456]	; 0x5b0
	mov	r0, r4
	bl	FUN_0601869C
	mov	r9, r0
_0600E644:
	cmp	r9, #0
	beq	_0600E658
	add	r0, r6, #12
	sub	r1, r4, #16
	bl	FUN_060096A0
_0600E658:
	ldr	r0, [sl]
	add	r0, r0, #1536	; 0x600
	ldrh	r0, [r0, #144]	; 0x90
	ands	r0, r0, #1
	beq	_0600E69C
	ldr	r1, [sp, #44]	; 0x2c
_0600E670:
	ldr	r0, _0600E6DC	; =0x04805F60
	cmp	r5, r0
	ldrcs	r0, [sl]
	addcs	r0, r0, #768	; 0x300
	ldrcsh	r0, [r0, #222]	; 0xde
	subcs	r5, r5, r0
	ldr	r0, _0600E6CC	; =0x0000FFFF
	strh	r0, [r5], #2
	add	r1, r1, #1
	cmp	r1, #7
	bcc	_0600E670
_0600E69C:
	ldr	r0, [sp]
	add	r0, r0, #1
	str	r0, [sp]
	b	_0600E380
_0600E6AC:
	add	sp, sp, #52	; 0x34
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
_0600E6B8:	.word	0x0380FFF4
_0600E6BC:	.word	0x000004DC
_0600E6C0:	.word	0x0480805A
_0600E6C4:	.word	0x000008C6
_0600E6C8:	.word	0x04804000
_0600E6CC:	.word	0x0000FFFF
_0600E6D0:	.word	0x0000E7FF
_0600E6D4:	.word	0x0000E7BF
_0600E6D8:	.word	0x0480803C
_0600E6DC:	.word	0x04805F60

	arm_func_start FUN_0600E6E0
FUN_0600E6E0: ; 0x0600E6E0
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #4
	ldr	r0, _0600E8D8	; =0x0380FFF4
	ldr	r1, [r0]
	add	sl, r1, #836	; 0x344
	ldr	r0, _0600E8DC	; =0x0000042C
	add	r9, r1, r0
	mov	r8, #2
	mov	r7, #0
	mov	r6, #32768	; 0x8000
	mov	fp, #3
	str	r8, [sp]
	mov	r5, r8
	mov	r4, #1
_0600E718:
	mov	r0, #20
	mla	r2, r8, r0, r9
	mov	r3, r8, lsl #2
	ldr	r0, _0600E8E0	; =0x048080A0
	add	r1, r0, r8, lsl #2
	add	r0, r3, #75497472	; 0x4800000
	add	r0, r0, #32768	; 0x8000
	ldrh	r0, [r0, #160]	; 0xa0
	ands	r0, r0, #32768	; 0x8000
	bne	_0600E8C4
	ldrh	r0, [r2]
	cmp	r0, #0
	beq	_0600E8C4
	ldr	r3, [r2, #12]
	cmp	r3, #0
	beq	_0600E8A4
	ldr	r0, [r2, #8]
	ldrh	r0, [r0]
	strh	r0, [r3, #8]
	ldr	r0, [r2, #8]
	ldrh	r3, [r0, #12]
	ldr	r0, [r2, #12]
	strh	r3, [r0, #20]
	ldr	r3, [r2, #8]
	ldrh	r0, [r3, #12]
	ands	r0, r0, #16384	; 0x4000
	beq	_0600E870
	ldr	r0, _0600E8D8	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #1536	; 0x600
	ldrh	r0, [r0, #144]	; 0x90
	ands	r0, r0, #8
	beq	_0600E854
	add	ip, r3, #12
	ldrh	r0, [r3, #10]
	add	r0, ip, r0
	sub	r0, r0, #7
	bic	ip, r0, #1
	ldrh	r0, [ip]
	cmp	r0, #0
	bne	_0600E854
	ldrh	r0, [ip, #2]
	cmp	r0, #0
	bne	_0600E854
	ldr	r3, [sl, #168]	; 0xa8
	ldr	r0, [r2, #12]
	ldrh	r0, [r0, #4]
	sub	r0, r3, r0
	mov	r0, r0, lsl #16
	mov	r0, r0, lsr #16
	ldr	r3, _0600E8E4	; =0x04808032
	strh	r7, [r3]
	strh	r6, [r3]
	ldrh	r3, [sl, #186]	; 0xba
	add	r3, r3, #1
	strh	r3, [sl, #186]	; 0xba
	ldrh	r3, [sl, #140]	; 0x8c
	cmp	r0, r3
	bls	_0600E83C
	ldr	r0, [r2, #12]
	strh	r5, [r0, #8]
	ldrh	r0, [r2, #4]
	add	r0, r0, #1
	strh	r0, [r2, #4]
	ldrh	r0, [r9, #174]	; 0xae
	add	r0, r0, #1
	strh	r0, [r9, #174]	; 0xae
	ldr	r0, [r2, #12]
	mov	r1, r4
	ldr	r2, [r2, #16]
	mov	lr, pc
	bx	r2
	b	_0600E8C4
_0600E83C:
	ldr	r0, [r2, #12]
	strh	r7, [r0, #12]
	ldrh	r0, [r1]
	orr	r0, r0, #32768	; 0x8000
	strh	r0, [r1]
	b	_0600E8C4
_0600E854:
	ldr	r1, [r2, #12]
	ldrh	r0, [r1, #12]
	ldrh	r3, [r3, #4]
	and	r3, r3, #255	; 0xff
	add	r0, r0, r3
	strh	r0, [r1, #12]
	b	_0600E880
_0600E870:
	ldrh	r0, [r3, #4]
	and	r1, r0, #255	; 0xff
	ldr	r0, [r2, #12]
	strh	r1, [r0, #12]
_0600E880:
	ldrh	r0, [r2, #4]
	add	r0, r0, #1
	strh	r0, [r2, #4]
	ldr	r0, [r2, #12]
	ldr	r1, [sp]
	ldr	r2, [r2, #16]
	mov	lr, pc
	bx	r2
	b	_0600E8C4
_0600E8A4:
	ldrh	r0, [r2, #4]
	add	r0, r0, #1
	strh	r0, [r2, #4]
	ldr	r0, [r2, #8]
	mov	r1, fp
	ldr	r2, [r2, #16]
	mov	lr, pc
	bx	r2
_0600E8C4:
	subs	r8, r8, #1
	bpl	_0600E718
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
_0600E8D8:	.word	0x0380FFF4
_0600E8DC:	.word	0x0000042C
_0600E8E0:	.word	0x048080A0
_0600E8E4:	.word	0x04808032

	arm_func_start FUN_0600E8E8
FUN_0600E8E8: ; 0x0600E8E8
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	ldr	r0, _0600E938	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #232]	; 0xe8
	cmp	r0, #0
	beq	_0600E90C
	bl	FUN_06014670
_0600E90C:
	ldr	r0, _0600E938	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #58]	; 0x3a
	mov	r0, r0, lsl #25
	movs	r0, r0, lsr #31
	beq	_0600E92C
	bl	FUN_0600FDE4
_0600E92C:
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_0600E938:	.word	0x0380FFF4

	arm_func_start FUN_0600E93C
FUN_0600E93C: ; 0x0600E93C
	stmdb	sp!, {r4, r5, r6, lr}
	mov	r6, r0
	mov	r5, r1
	ldr	r0, _0600EA08	; =0x0380FFF4
	ldr	r2, [r0]
	ldr	r1, [r2, #796]	; 0x31c
	mov	r0, #28
	mul	r0, r6, r0
	add	r4, r1, r0
	ldrh	r0, [r1, r0]
	cmp	r0, #0
	addeq	r0, r2, #1280	; 0x500
	ldreqh	r1, [r0, #44]	; 0x2c
	addeq	r1, r1, #1
	streqh	r1, [r0, #44]	; 0x2c
	mov	r0, #0
	mov	r1, r4
	mov	r2, #26
	bl	FUN_0600055C
	ldr	r0, _0600EA08	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #1280	; 0x500
	ldrh	r2, [r0, #52]	; 0x34
	mov	r1, #1
	mvn	r1, r1, lsl r6
	and	r1, r2, r1
	strh	r1, [r0, #52]	; 0x34
	mov	r0, r6, lsl #16
	mov	r0, r0, lsr #16
	mov	r1, #0
	bl	FUN_0600F218
	mov	r0, r6
	bl	FUN_0600F1B4
	add	r0, r4, #4
	mov	r1, r5
	bl	FUN_0600AF4C
	ldr	r0, _0600EA0C	; =0x0000FFFF
	strh	r0, [r4, #20]
	ldr	r0, _0600EA08	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #166]	; 0xa6
	strh	r0, [r4, #16]
	ldrh	r0, [r4, #26]
	strh	r0, [r4, #24]
	mov	r0, r6, lsl #16
	mov	r0, r0, lsr #16
	mov	r1, #32
	bl	FUN_0600F294
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr
_0600EA08:	.word	0x0380FFF4
_0600EA0C:	.word	0x0000FFFF

	arm_func_start FUN_0600EA10
FUN_0600EA10: ; 0x0600EA10
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	r0, _0600EA90	; =0x0380FFF4
	ldr	r1, [r0]
	ldr	r5, [r1, #796]	; 0x31c
	ldr	r0, _0600EA94	; =0x0000052C
	add	r4, r1, r0
	add	r0, r1, #768	; 0x300
	ldrh	r9, [r0, #34]	; 0x22
	mov	sl, #1
	mov	r8, #0
	mov	r7, #26
	mov	r6, #28
	b	_0600EA58
_0600EA44:
	mov	r0, r8
	mla	r1, sl, r6, r5
	mov	r2, r7
	bl	FUN_0600055C
	add	sl, sl, #1
_0600EA58:
	cmp	sl, r9
	bcc	_0600EA44
	mov	r2, #1
	strh	r2, [r4]
	mov	r1, #0
	strh	r1, [r4, #2]
	strh	r2, [r4, #4]
	ldr	r0, _0600EA98	; =0x0000FFFE
	strh	r0, [r4, #6]
	strh	r1, [r4, #12]
	strh	r1, [r4, #8]
	strh	r2, [r4, #14]
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	bx	lr
_0600EA90:	.word	0x0380FFF4
_0600EA94:	.word	0x0000052C
_0600EA98:	.word	0x0000FFFE

	arm_func_start FUN_0600EA9C
FUN_0600EA9C: ; 0x0600EA9C
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	ldr	r0, _0600EB34	; =0x0380FFF4
	ldr	r0, [r0]
	ldr	r5, [r0, #796]	; 0x31c
	add	r0, r0, #768	; 0x300
	ldrh	r4, [r0, #34]	; 0x22
	mov	r0, #0
	mov	r1, r5
	mov	r2, #28
	mul	r2, r4, r2
	bl	FUN_0600055C
	mov	r0, #0
	ldr	r1, _0600EB34	; =0x0380FFF4
	ldr	r2, [r1]
	ldr	r1, _0600EB38	; =0x0000052C
	add	r1, r2, r1
	mov	r2, #16
	bl	FUN_0600055C
	ldr	r2, _0600EB3C	; =0x0000FFFF
	strh	r2, [r5, #26]
	mov	r3, #1
	mov	r0, #28
	b	_0600EB08
_0600EAFC:
	mla	r1, r3, r0, r5
	strh	r2, [r1, #26]
	add	r3, r3, #1
_0600EB08:
	cmp	r3, r4
	bcc	_0600EAFC
	mov	r0, #0
	ldr	r1, _0600EB40	; =_06019384
	bl	FUN_0600E93C
	mov	r0, #0
	mov	r1, #64	; 0x40
	bl	FUN_0600F294
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_0600EB34:	.word	0x0380FFF4
_0600EB38:	.word	0x0000052C
_0600EB3C:	.word	0x0000FFFF
_0600EB40:	.word	_06019384

	arm_func_start FUN_0600EB44
FUN_0600EB44: ; 0x0600EB44
	stmdb	sp!, {r4, lr}
	mov	r4, r0
	bl	FUN_06014EB8
	mov	r3, #0
	ldr	r2, _0600EB88	; =0x0380FFF4
	ldr	r0, [r2]
	ldr	r1, [r0, #796]	; 0x31c
	mov	r0, #28
	mul	r0, r4, r0
	strh	r3, [r1, r0]
	ldr	r0, [r2]
	add	r0, r0, #1280	; 0x500
	ldrh	r1, [r0, #44]	; 0x2c
	sub	r1, r1, #1
	strh	r1, [r0, #44]	; 0x2c
	ldmia	sp!, {r4, lr}
	bx	lr
_0600EB88:	.word	0x0380FFF4

	arm_func_start FUN_0600EB8C
FUN_0600EB8C: ; 0x0600EB8C
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #44	; 0x2c
	ldr	r0, _0600ED6C	; =0x0380FFF4
	ldr	sl, [r0]
	ldr	r0, [sl, #796]	; 0x31c
	add	r9, r0, #28
	add	r0, sl, #1280	; 0x500
	ldrh	r6, [r0, #44]	; 0x2c
	mov	r7, #0
	mov	r8, #1
	mov	fp, r8
	str	r7, [sp]
	str	r8, [sp, #4]
	str	r7, [sp, #8]
	mov	r4, #32
	str	r8, [sp, #20]
	str	r7, [sp, #24]
	str	r8, [sp, #32]
	str	r8, [sp, #16]
	str	r7, [sp, #36]	; 0x24
	str	r8, [sp, #28]
	str	r8, [sp, #12]
	b	_0600ED50
_0600EBE8:
	ldrh	r0, [r9]
	cmp	r0, #0
	beq	_0600ED40
	ldrh	r1, [r9, #24]
	cmp	r1, #0
	beq	_0600ED3C
	ldr	r0, _0600ED70	; =0x0000FFFF
	cmp	r1, r0
	beq	_0600ED3C
	sub	r0, r1, #1
	strh	r0, [r9, #24]
	ldrh	r0, [r9, #24]
	cmp	r0, #0
	bne	_0600ED3C
	ldrh	r0, [r9]
	cmp	r0, #32
	bcc	_0600ED24
	mov	r0, r8
	bl	FUN_0600EFF0
	mov	r5, r0
	mov	r0, r8, lsl #16
	mov	r0, r0, lsr #16
	mov	r1, r4
	bl	FUN_0600F294
	mov	r0, r8
	bl	FUN_06014EB8
	add	r0, sl, #768	; 0x300
	ldrh	r1, [r0, #80]	; 0x50
	cmp	r1, #1
	bne	_0600ECD4
	cmp	r5, #32
	bls	_0600ED24
	ldr	r0, _0600ED6C	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #1280	; 0x500
	ldrh	r1, [r0, #52]	; 0x34
	orr	r1, r1, fp, lsl r8
	strh	r1, [r0, #52]	; 0x34
	mov	r0, r8, lsl #16
	mov	r0, r0, lsr #16
	ldr	r1, [sp]
	bl	FUN_0600F218
	mov	r0, r8
	bl	FUN_0600F1B4
	add	r0, r9, #4
	ldr	r1, [sp, #4]
	ldr	r2, [sp, #8]
	bl	FUN_06013E9C
	cmp	r0, #0
	beq	_0600ECC4
	ldr	r1, [sp, #12]
	strh	r1, [r0]
	bl	FUN_06014C6C
	add	r7, r7, #1
	b	_0600ED48
_0600ECC4:
	add	r0, r9, #4
	ldr	r1, [sp, #16]
	bl	FUN_06010130
	b	_0600ED24
_0600ECD4:
	ldrh	r0, [r0, #204]	; 0xcc
	cmp	r8, r0
	bne	_0600ED24
	add	r0, r9, #4
	ldr	r1, [sp, #20]
	ldr	r2, [sp, #24]
	bl	FUN_06013E9C
	cmp	r0, #0
	beq	_0600ED0C
	ldr	r1, [sp, #28]
	strh	r1, [r0]
	bl	FUN_06014C6C
	add	r7, r7, #1
	b	_0600ED48
_0600ED0C:
	mov	r0, r4
	bl	FUN_0600AF68
	bl	FUN_0600B054
	add	r0, r9, #4
	ldr	r1, [sp, #32]
	bl	FUN_06010130
_0600ED24:
	ldr	r0, [sp, #36]	; 0x24
	strh	r0, [r9]
	add	r0, sl, #1280	; 0x500
	ldrh	r1, [r0, #44]	; 0x2c
	sub	r1, r1, #1
	strh	r1, [r0, #44]	; 0x2c
_0600ED3C:
	add	r7, r7, #1
_0600ED40:
	cmp	r7, r6
	bcs	_0600ED60
_0600ED48:
	add	r8, r8, #1
	add	r9, r9, #28
_0600ED50:
	add	r0, sl, #768	; 0x300
	ldrh	r0, [r0, #34]	; 0x22
	cmp	r8, r0
	bcc	_0600EBE8
_0600ED60:
	add	sp, sp, #44	; 0x2c
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
_0600ED6C:	.word	0x0380FFF4
_0600ED70:	.word	0x0000FFFF

	arm_func_start FUN_0600ED74
FUN_0600ED74: ; 0x0600ED74
	stmdb	sp!, {r4, r5, r6, lr}
	mov	r5, r0
	bl	FUN_0600EFF0
	cmp	r0, #64	; 0x40
	bne	_0600EE10
	ldr	r0, _0600EE18	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r1, [r0, #216]	; 0xd8
	ldr	r0, _0600EE1C	; =0x0480425C
	add	r6, r1, r0
	mov	r0, #16777216	; 0x1000000
	bl	FUN_06009068
	mov	r4, r0
	cmp	r5, #0
	bne	_0600EDD0
	add	r0, r6, #4
	bl	FUN_06009CB0
	and	r1, r0, #254	; 0xfe
	add	r0, r6, #4
	and	r1, r1, #255	; 0xff
	bl	FUN_06009CD0
	b	_0600EE08
_0600EDD0:
	mov	r0, r5
	bl	FUN_0600EF18
	mov	r5, r0
	add	r0, r6, #5
	add	r6, r0, r5, lsr #3
	mov	r0, r6
	bl	FUN_06009CB0
	mov	r2, #1
	and	r1, r5, #7
	mvn	r1, r2, lsl r1
	and	r1, r1, r0
	mov	r0, r6
	and	r1, r1, #255	; 0xff
	bl	FUN_06009CD0
_0600EE08:
	mov	r0, r4
	bl	FUN_06009070
_0600EE10:
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr
_0600EE18:	.word	0x0380FFF4
_0600EE1C:	.word	0x0480425C

	arm_func_start FUN_0600EE20
FUN_0600EE20: ; 0x0600EE20
	stmdb	sp!, {r4, r5, r6, lr}
	mov	r5, r0
	bl	FUN_0600EFF0
	cmp	r0, #64	; 0x40
	bne	_0600EED0
	ldr	r0, _0600EED8	; =0x0380FFF4
	ldr	r2, [r0]
	add	r0, r2, #1280	; 0x500
	ldrh	r1, [r0, #52]	; 0x34
	mov	r0, #1
	mov	r0, r0, lsl r5
	ands	r0, r1, r0
	bne	_0600EED0
	add	r0, r2, #768	; 0x300
	ldrh	r1, [r0, #216]	; 0xd8
	ldr	r0, _0600EEDC	; =0x0480425C
	add	r6, r1, r0
	mov	r0, #16777216	; 0x1000000
	bl	FUN_06009068
	mov	r4, r0
	cmp	r5, #0
	bne	_0600EE94
	add	r0, r6, #4
	bl	FUN_06009CB0
	orr	r1, r0, #1
	add	r0, r6, #4
	and	r1, r1, #255	; 0xff
	bl	FUN_06009CD0
	b	_0600EEC8
_0600EE94:
	mov	r0, r5
	bl	FUN_0600EF18
	mov	r5, r0
	add	r0, r6, #5
	add	r6, r0, r5, lsr #3
	mov	r0, r6
	bl	FUN_06009CB0
	mov	r2, #1
	and	r1, r5, #7
	orr	r1, r0, r2, lsl r1
	mov	r0, r6
	and	r1, r1, #255	; 0xff
	bl	FUN_06009CD0
_0600EEC8:
	mov	r0, r4
	bl	FUN_06009070
_0600EED0:
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr
_0600EED8:	.word	0x0380FFF4
_0600EEDC:	.word	0x0480425C

	arm_func_start FUN_0600EEE0
FUN_0600EEE0: ; 0x0600EEE0
	ldr	r1, _0600EEF8	; =0x0380FFF4
	ldr	r1, [r1]
	ldr	r2, [r1, #796]	; 0x31c
	mov	r1, #28
	mla	r0, r1, r0, r2
	bx	lr
_0600EEF8:	.word	0x0380FFF4

	arm_func_start FUN_0600EEFC
FUN_0600EEFC: ; 0x0600EEFC
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	bl	FUN_0600EEE0
	ldrh	r0, [r0, #22]
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr

	arm_func_start FUN_0600EF18
FUN_0600EF18: ; 0x0600EF18
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	bl	FUN_0600EEE0
	ldrh	r0, [r0, #2]
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr

	arm_func_start FUN_0600EF34
FUN_0600EF34: ; 0x0600EF34
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	bl	FUN_0600EEE0
	ldrh	r0, [r0, #16]
	ands	r0, r0, #2
	movne	r0, #20
	moveq	r0, #10
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr

	arm_func_start FUN_0600EF5C
FUN_0600EF5C: ; 0x0600EF5C
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	bl	FUN_0600EEE0
	ldrh	r0, [r0, #20]
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr

	arm_func_start FUN_0600EF78
FUN_0600EF78: ; 0x0600EF78
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	bl	FUN_0600EEE0
	ldrh	r0, [r0, #14]
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr

	arm_func_start FUN_0600EF94
FUN_0600EF94: ; 0x0600EF94
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	bl	FUN_0600EEE0
	add	r0, r0, #4
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr

	arm_func_start FUN_0600EFB0
FUN_0600EFB0: ; 0x0600EFB0
	ldr	r1, _0600EFCC	; =0x0380FFF4
	ldr	r1, [r1]
	add	r1, r1, #1280	; 0x500
	ldrh	r1, [r1, #46]	; 0x2e
	mov	r0, r1, asr r0
	and	r0, r0, #1
	bx	lr
_0600EFCC:	.word	0x0380FFF4

	arm_func_start FUN_0600EFD0
FUN_0600EFD0: ; 0x0600EFD0
	ldr	r1, _0600EFEC	; =0x0380FFF4
	ldr	r1, [r1]
	add	r1, r1, #1280	; 0x500
	ldrh	r1, [r1, #48]	; 0x30
	mov	r0, r1, asr r0
	and	r0, r0, #1
	bx	lr
_0600EFEC:	.word	0x0380FFF4

	arm_func_start FUN_0600EFF0
FUN_0600EFF0: ; 0x0600EFF0
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	bl	FUN_0600EEE0
	ldrh	r0, [r0]
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr

	arm_func_start FUN_0600F00C
FUN_0600F00C: ; 0x0600F00C
	stmdb	sp!, {r4, r5, r6, lr}
	mov	r6, r0
	ldr	r1, _0600F07C	; =0x0380FFF4
	ldr	r5, [r1]
	bl	FUN_0600ED74
	mov	r0, r6
	bl	FUN_0600EF18
	movs	r4, r0
	beq	_0600F074
	mov	r0, r6
	bl	FUN_0600EEE0
	mov	r1, #0
	strh	r1, [r0, #2]
	add	r0, r5, #1280	; 0x500
	ldrh	r2, [r0, #58]	; 0x3a
	mov	r1, #1
	mvn	r1, r1, lsl r4
	and	r1, r2, r1
	strh	r1, [r0, #58]	; 0x3a
	ldrh	r1, [r0, #56]	; 0x38
	sub	r1, r1, #1
	strh	r1, [r0, #56]	; 0x38
	ldrh	r0, [r0, #56]	; 0x38
	cmp	r0, #0
	bne	_0600F074
	bl	FUN_0600B21C
_0600F074:
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr
_0600F07C:	.word	0x0380FFF4

	arm_func_start FUN_0600F080
FUN_0600F080: ; 0x0600F080
	stmdb	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #4
	mov	r7, r0
	ldr	r0, _0600F128	; =0x0380FFF4
	ldr	r1, [r0]
	ldr	r0, _0600F12C	; =0x0000052C
	add	r6, r1, r0
	mov	r0, #16777216	; 0x1000000
	bl	FUN_06009068
	mov	r4, r0
	mov	r5, #1
	mov	r2, #2
	b	_0600F108
_0600F0B4:
	ldrh	r0, [r6, #14]
	ands	r1, r0, r2
	bne	_0600F100
	orr	r0, r0, r2
	strh	r0, [r6, #14]
	ldrh	r0, [r6, #12]
	add	r0, r0, #1
	strh	r0, [r6, #12]
	ldrh	r0, [r6, #12]
	cmp	r0, #1
	bne	_0600F0E4
	bl	FUN_0600B1EC
_0600F0E4:
	mov	r0, r7
	bl	FUN_0600EEE0
	strh	r5, [r0, #2]
	mov	r0, r4
	bl	FUN_06009070
	mov	r0, r5
	b	_0600F11C
_0600F100:
	add	r5, r5, #1
	mov	r2, r2, lsl #1
_0600F108:
	cmp	r5, #16
	bcc	_0600F0B4
	mov	r0, r4
	bl	FUN_06009070
	mov	r0, #0
_0600F11C:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, lr}
	bx	lr
_0600F128:	.word	0x0380FFF4
_0600F12C:	.word	0x0000052C

	arm_func_start FUN_0600F130
FUN_0600F130: ; 0x0600F130
	mov	r1, #28
	ldr	r2, _0600F150	; =0x0380FFF4
	ldr	r2, [r2]
	ldr	r2, [r2, #796]	; 0x31c
	mla	r1, r0, r1, r2
	ldrh	r0, [r1, #26]
	strh	r0, [r1, #24]
	bx	lr
_0600F150:	.word	0x0380FFF4

	arm_func_start FUN_0600F154
FUN_0600F154: ; 0x0600F154
	stmdb	sp!, {r4, lr}
	mov	r4, r1
	bl	FUN_0600EEE0
	strh	r4, [r0, #14]
	ldmia	sp!, {r4, lr}
	bx	lr

	arm_func_start FUN_0600F16C
FUN_0600F16C: ; 0x0600F16C
	stmdb	sp!, {r4, lr}
	mov	r4, r1
	bl	FUN_0600EEE0
	strh	r4, [r0, #20]
	ldmia	sp!, {r4, lr}
	bx	lr

	arm_func_start FUN_0600F184
FUN_0600F184: ; 0x0600F184
	stmdb	sp!, {r4, lr}
	mov	r4, r1
	bl	FUN_0600EEE0
	strh	r4, [r0, #16]
	ldmia	sp!, {r4, lr}
	bx	lr

	arm_func_start FUN_0600F19C
FUN_0600F19C: ; 0x0600F19C
	stmdb	sp!, {r4, lr}
	mov	r4, r1
	bl	FUN_0600EEE0
	strh	r4, [r0, #12]
	ldmia	sp!, {r4, lr}
	bx	lr

	arm_func_start FUN_0600F1B4
FUN_0600F1B4: ; 0x0600F1B4
	ldr	r1, _0600F1D4	; =0x0380FFF4
	ldr	r1, [r1]
	add	r1, r1, #1280	; 0x500
	ldrh	r3, [r1, #48]	; 0x30
	mov	r2, #1
	orr	r0, r3, r2, lsl r0
	strh	r0, [r1, #48]	; 0x30
	bx	lr
_0600F1D4:	.word	0x0380FFF4

	arm_func_start FUN_0600F1D8
FUN_0600F1D8: ; 0x0600F1D8
	stmdb	sp!, {r4, lr}
	mov	r4, r0
	bl	FUN_0600EFF0
	cmp	r0, #64	; 0x40
	bne	_0600F20C
	ldr	r0, _0600F214	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #1280	; 0x500
	ldrh	r2, [r0, #48]	; 0x30
	mov	r1, #1
	mvn	r1, r1, lsl r4
	and	r1, r2, r1
	strh	r1, [r0, #48]	; 0x30
_0600F20C:
	ldmia	sp!, {r4, lr}
	bx	lr
_0600F214:	.word	0x0380FFF4

	arm_func_start FUN_0600F218
FUN_0600F218: ; 0x0600F218
	ldr	r2, _0600F26C	; =0x0380FFF4
	ldr	r3, [r2]
	ldr	r2, _0600F270	; =0x0000052C
	add	ip, r3, r2
	ldrh	r3, [ip, #2]
	mov	r2, #1
	mvn	r2, r2, lsl r0
	and	r2, r3, r2
	orr	r0, r2, r1, lsl r0
	strh	r0, [ip, #2]
	ldrh	r1, [ip, #2]
	ldrh	r0, [ip, #6]
	mvn	r0, r0
	ands	r0, r1, r0
	movne	r1, #8
	ldrne	r0, _0600F274	; =0x048080AC
	strneh	r1, [r0]
	moveq	r1, #8
	ldreq	r0, _0600F278	; =0x048080AE
	streqh	r1, [r0]
	bx	lr
_0600F26C:	.word	0x0380FFF4
_0600F270:	.word	0x0000052C
_0600F274:	.word	0x048080AC
_0600F278:	.word	0x048080AE

	arm_func_start FUN_0600F27C
FUN_0600F27C: ; 0x0600F27C
	stmdb	sp!, {r4, lr}
	mov	r4, r1
	bl	FUN_0600EEE0
	strh	r4, [r0, #10]
	ldmia	sp!, {r4, lr}
	bx	lr

	arm_func_start FUN_0600F294
FUN_0600F294: ; 0x0600F294
	stmdb	sp!, {r4, r5, r6, lr}
	mov	r6, r0
	mov	r5, r1
	mov	r0, #16777216	; 0x1000000
	bl	FUN_06009068
	mov	r4, r0
	cmp	r5, #64	; 0x40
	bcs	_0600F308
	mov	r0, r6
	bl	FUN_0600F1B4
	ldr	r3, _0600F35C	; =0x0380FFF4
	ldr	r0, [r3]
	add	r0, r0, #1280	; 0x500
	ldrh	r2, [r0, #50]	; 0x32
	mov	r1, #1
	orr	r1, r2, r1, lsl r6
	strh	r1, [r0, #50]	; 0x32
	ldr	r0, [r3]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #80]	; 0x50
	cmp	r0, #1
	bne	_0600F340
	mov	r0, r6
	bl	FUN_0600EF18
	cmp	r0, #0
	beq	_0600F340
	mov	r0, r6
	bl	FUN_0600F00C
	b	_0600F340
_0600F308:
	ldr	r0, _0600F35C	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #1280	; 0x500
	ldrh	r2, [r0, #50]	; 0x32
	mov	r1, #1
	mvn	r1, r1, lsl r6
	and	r1, r2, r1
	strh	r1, [r0, #50]	; 0x32
	mov	r0, r6
	bl	FUN_0600EFB0
	cmp	r0, #0
	beq	_0600F340
	mov	r0, r6
	bl	FUN_0600F1D8
_0600F340:
	mov	r0, r6
	bl	FUN_0600EEE0
	strh	r5, [r0]
	mov	r0, r4
	bl	FUN_06009070
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr
_0600F35C:	.word	0x0380FFF4

	arm_func_start FUN_0600F360
FUN_0600F360: ; 0x0600F360
	stmdb	sp!, {r4, r5, r6, lr}
	ldrh	r4, [r0, #2]
	mov	r0, r4
	bl	FUN_0600EEE0
	mov	r6, r0
	mov	r0, #16777216	; 0x1000000
	bl	FUN_06009068
	mov	r5, r0
	ldr	r0, _0600F3C8	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #80]	; 0x50
	cmp	r0, #1
	bne	_0600F3AC
	ldrh	r0, [r6, #22]
	cmp	r0, #1
	bne	_0600F3AC
	mov	r0, r4
	bl	FUN_0600ED74
_0600F3AC:
	ldrh	r0, [r6, #22]
	sub	r0, r0, #1
	strh	r0, [r6, #22]
	mov	r0, r5
	bl	FUN_06009070
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr
_0600F3C8:	.word	0x0380FFF4

	arm_func_start FUN_0600F3CC
FUN_0600F3CC: ; 0x0600F3CC
	stmdb	sp!, {r4, r5, r6, lr}
	ldrh	r4, [r0, #2]
	mov	r0, r4
	bl	FUN_0600EEE0
	mov	r6, r0
	mov	r0, #16777216	; 0x1000000
	bl	FUN_06009068
	mov	r5, r0
	ldr	r0, _0600F458	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #80]	; 0x50
	cmp	r0, #1
	bne	_0600F418
	ldrh	r0, [r6, #22]
	cmp	r0, #0
	bne	_0600F418
	mov	r0, r4
	bl	FUN_0600EE20
_0600F418:
	ldrh	r0, [r6, #22]
	add	r0, r0, #1
	strh	r0, [r6, #22]
	mov	r0, r5
	bl	FUN_06009070
	ldr	r0, _0600F458	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #1280	; 0x500
	ldrh	r1, [r0, #52]	; 0x34
	mov	r0, #1
	mov	r0, r0, lsl r4
	ands	r0, r1, r0
	ldreqh	r0, [r6, #26]
	streqh	r0, [r6, #24]
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr
_0600F458:	.word	0x0380FFF4

	arm_func_start FUN_0600F45C
FUN_0600F45C: ; 0x0600F45C
	stmdb	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #4
	mov	r7, r0
	mov	r6, r1
	ldr	r0, _0600F4BC	; =0x0380FFF4
	ldr	r0, [r0]
	add	r5, r0, #428	; 0x1ac
	mov	r0, #16777216	; 0x1000000
	bl	FUN_06009068
	mov	r4, r0
	ldrh	r0, [r5, #8]
	cmp	r0, #0
	bne	_0600F498
	mov	r0, #0
	bl	FUN_0600EE20
_0600F498:
	mov	r0, r7
	mov	r1, r5
	mov	r2, r6
	bl	FUN_0600962C
	mov	r0, r4
	bl	FUN_06009070
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, lr}
	bx	lr
_0600F4BC:	.word	0x0380FFF4

	arm_func_start FUN_0600F4C0
FUN_0600F4C0: ; 0x0600F4C0
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	r9, r0
	ldr	sl, _0600F604	; =0x0380FFF4
	ldr	r0, [sl]
	add	r8, r0, #796	; 0x31c
	ldrh	r1, [r9]
	ands	r1, r1, #1
	movne	r0, #0
	bne	_0600F5FC
	add	r1, r0, #1280	; 0x500
	ldrh	r1, [r1, #44]	; 0x2c
	cmp	r1, #1
	bls	_0600F574
	ldr	r1, [r8]
	add	r7, r1, #28
	mov	r4, #0
	mov	r5, r4
	mov	r6, #1
	b	_0600F55C
_0600F50C:
	ldrh	r1, [r7]
	cmp	r1, #0
	beq	_0600F54C
	add	r0, r7, #4
	mov	r1, r9
	bl	FUN_0600AB78
	cmp	r0, #0
	movne	r0, r6
	bne	_0600F5FC
	add	r5, r5, #1
	ldr	r0, [sl]
	add	r1, r0, #1280	; 0x500
	ldrh	r1, [r1, #44]	; 0x2c
	cmp	r5, r1
	bcc	_0600F554
	b	_0600F568
_0600F54C:
	cmp	r4, #0
	moveq	r4, r6
_0600F554:
	add	r6, r6, #1
	add	r7, r7, #28
_0600F55C:
	ldrh	r1, [r8, #6]
	cmp	r6, r1
	bcc	_0600F50C
_0600F568:
	cmp	r4, #0
	movne	r6, r4
	b	_0600F578
_0600F574:
	mov	r6, #1
_0600F578:
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #34]	; 0x22
	cmp	r6, r0
	bcc	_0600F5EC
	ldr	r4, [r8]
	mov	r7, #65536	; 0x10000
	mov	r3, #1
	mov	r6, #0
	ldrh	r5, [r8, #6]
	mov	r0, #28
	b	_0600F5D8
_0600F5A4:
	mul	r1, r3, r0
	add	r2, r4, r1
	ldrh	r1, [r4, r1]
	cmp	r1, #48	; 0x30
	bcs	_0600F5D4
	ldrh	r1, [r2, #22]
	cmp	r1, #0
	bne	_0600F5D4
	ldrh	r1, [r2, #24]
	cmp	r7, r1
	movhi	r7, r1
	movhi	r6, r3
_0600F5D4:
	add	r3, r3, #1
_0600F5D8:
	cmp	r3, r5
	bcc	_0600F5A4
	cmp	r6, #0
	moveq	r0, #255	; 0xff
	beq	_0600F5FC
_0600F5EC:
	mov	r0, r6
	mov	r1, r9
	bl	FUN_0600E93C
	mov	r0, r6
_0600F5FC:
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	bx	lr
_0600F604:	.word	0x0380FFF4

	arm_func_start FUN_0600F608
FUN_0600F608: ; 0x0600F608
	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r8, r0
	ldrh	r0, [r8]
	ands	r0, r0, #1
	movne	r0, #0
	bne	_0600F6A4
	ldr	r4, _0600F6AC	; =0x0380FFF4
	ldr	r0, [r4]
	add	r1, r0, #1280	; 0x500
	ldrh	r1, [r1, #44]	; 0x2c
	cmp	r1, #1
	bls	_0600F6A0
	ldr	r1, [r0, #796]	; 0x31c
	add	r7, r1, #28
	mov	r5, #0
	mov	r6, #1
	b	_0600F690
_0600F64C:
	ldrh	r1, [r7]
	cmp	r1, #0
	beq	_0600F688
	add	r0, r7, #4
	mov	r1, r8
	bl	FUN_0600AB78
	cmp	r0, #0
	movne	r0, r6
	bne	_0600F6A4
	add	r5, r5, #1
	ldr	r0, [r4]
	add	r1, r0, #1280	; 0x500
	ldrh	r1, [r1, #44]	; 0x2c
	cmp	r5, r1
	bcs	_0600F6A0
_0600F688:
	add	r6, r6, #1
	add	r7, r7, #28
_0600F690:
	add	r1, r0, #768	; 0x300
	ldrh	r1, [r1, #34]	; 0x22
	cmp	r6, r1
	bcc	_0600F64C
_0600F6A0:
	mov	r0, #255	; 0xff
_0600F6A4:
	ldmia	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
_0600F6AC:	.word	0x0380FFF4
_0600F6B0:
	mov	r2, #0

	arm_func_start FUN_0600F6B4
FUN_0600F6B4: ; 0x0600F6B4
	ldr	r1, _0600F6E0	; =0x04808180
	b	_0600F6D0
_0600F6BC:
	ldrh	r0, [r1]
	ands	r0, r0, #1
	moveq	r0, #0
	bxeq	lr
	add	r2, r2, #1
_0600F6D0:
	cmp	r2, #10240	; 0x2800
	bcc	_0600F6BC
	mov	r0, #1
	bx	lr
_0600F6E0:	.word	0x04808180

	arm_func_start FUN_0600F6E4
FUN_0600F6E4: ; 0x0600F6E4
	mov	r2, #0
	ldr	r1, _0600F714	; =0x0480815E
	b	_0600F704
_0600F6F0:
	ldrh	r0, [r1]
	ands	r0, r0, #1
	moveq	r0, #0
	bxeq	lr
	add	r2, r2, #1
_0600F704:
	cmp	r2, #10240	; 0x2800
	bcc	_0600F6F0
	mov	r0, #1
	bx	lr
_0600F714:	.word	0x0480815E

	arm_func_start FUN_0600F718
FUN_0600F718: ; 0x0600F718
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	mov	r4, #1
	ldr	r1, _0600F790	; =0x04808028
	ldr	r2, _0600F794	; =0x04808214
	ldr	lr, _0600F798	; =0x04000208
	mov	ip, #0
	ldr	r3, _0600F79C	; =0x0480819C
	b	_0600F77C
_0600F73C:
	ldrh	r5, [lr]
	strh	ip, [lr]
	ldrh	r0, [r3]
	and	r0, r0, #3
	cmp	r0, #3
	beq	_0600F774
	ldrh	r0, [r2]
	cmp	r0, #5
	beq	_0600F774
	cmp	r0, #7
	beq	_0600F774
	cmp	r0, #8
	strneh	ip, [r1]
	movne	r4, ip
_0600F774:
	ldrh	r0, [lr]
	strh	r5, [lr]
_0600F77C:
	cmp	r4, #0
	bne	_0600F73C
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_0600F790:	.word	0x04808028
_0600F794:	.word	0x04808214
_0600F798:	.word	0x04000208
_0600F79C:	.word	0x0480819C

	arm_func_start FUN_0600F7A0
FUN_0600F7A0: ; 0x0600F7A0
	stmdb	sp!, {r4, lr}

	arm_func_start FUN_0600F7A4
FUN_0600F7A4: ; 0x0600F7A4
	sub	sp, sp, #8
	mov	r4, r1
	mov	r1, #1
	str	r1, [sp, #4]
	mov	r3, #0
	ldr	r1, _0600F820	; =0x000082EA
	umull	ip, r2, r0, r1
	mla	r2, r0, r3, r2
	mla	r2, r3, r1, r2
	mov	r1, r2, lsr #6
	mov	r0, ip, lsr #6
	orr	r0, r0, r2, lsl #26
	mov	r2, #1000	; 0x3e8
	bl	FUN_06009EDC
	mov	r3, r0
	mov	r2, r1
	add	r0, sp, #4
	str	r0, [sp]
	ldr	r0, _0600F824	; =0x0380FFF4
	ldr	r1, [r0]
	ldr	r0, _0600F828	; =0x00000634
	add	r0, r1, r0
	mov	r1, r3
	mov	r3, r4
	bl	FUN_0600144C
_0600F808:
	ldr	r0, [sp, #4]
	cmp	r0, #0
	bne	_0600F808
	add	sp, sp, #8
	ldmia	sp!, {r4, lr}
	bx	lr
_0600F820:	.word	0x000082EA
_0600F824:	.word	0x0380FFF4
_0600F828:	.word	0x00000634

	arm_func_start FUN_0600F82C
FUN_0600F82C: ; 0x0600F82C
	mov	r2, #4000	; 0xfa0
	ldr	r1, _0600F854	; =0x0480819C
	b	_0600F848
_0600F838:
	ldrh	r0, [r1]
	ands	r0, r0, #128	; 0x80
	bxne	lr
	sub	r2, r2, #1
_0600F848:
	cmp	r2, #0
	bne	_0600F838
	bx	lr
_0600F854:	.word	0x0480819C

	arm_func_start FUN_0600F858
FUN_0600F858: ; 0x0600F858
	mov	r1, #0
	ldr	r0, _0600F870	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #1024	; 0x400
	strh	r1, [r0, #40]	; 0x28
	bx	lr
_0600F870:	.word	0x0380FFF4

	arm_func_start FUN_0600F874
FUN_0600F874: ; 0x0600F874
	stmdb	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #4
	ldr	r6, _0600F8D8	; =0x0380FFF4
	ldr	r0, [r6]
	ldr	r7, [r0, #500]	; 0x1f4
	mov	r5, #0
	mvn	r4, #0
	b	_0600F8C4
_0600F894:
	ldr	r0, [r0, #772]	; 0x304
	mov	r1, r7
	mov	r2, r5
	bl	FUN_060006F8
	cmp	r0, #0
	beq	_0600F8CC
	ldr	r0, [r6]
	add	r0, r0, #500	; 0x1f4
	mov	r1, r7
	bl	FUN_0600943C
	ldr	r0, [r6]
	ldr	r7, [r0, #500]	; 0x1f4
_0600F8C4:
	cmp	r7, r4
	bne	_0600F894
_0600F8CC:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, lr}
	bx	lr
_0600F8D8:	.word	0x0380FFF4

	arm_func_start FUN_0600F8DC
FUN_0600F8DC: ; 0x0600F8DC
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	mov	r5, r0
	mov	r4, r1
	ldr	r2, _0600F968	; =0x0380FFF4
	ldr	r3, [r2]
	add	r2, r3, #256	; 0x100
	ldrh	r2, [r2, #252]	; 0xfc
	cmp	r2, #0
	beq	_0600F920
	add	r1, r3, #500	; 0x1f4
	mov	r2, r4
	bl	FUN_0600962C
	mov	r0, #2
	mov	r1, #19
	bl	FUN_06009078
	b	_0600F95C
_0600F920:
	ldr	r0, [r3, #772]	; 0x304
	mov	r2, #0
	bl	FUN_060006F8
	cmp	r0, #0
	beq	_0600F944
	mov	r0, r5
	mov	r1, r4
	bl	FUN_0600943C
	b	_0600F95C
_0600F944:
	mov	r0, r5
	ldr	r1, _0600F968	; =0x0380FFF4
	ldr	r1, [r1]
	add	r1, r1, #500	; 0x1f4
	mov	r2, r4
	bl	FUN_0600962C
_0600F95C:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_0600F968:	.word	0x0380FFF4

	arm_func_start FUN_0600F96C
FUN_0600F96C: ; 0x0600F96C
	mov	r0, #3
	bx	lr

	arm_func_start FUN_0600F974
FUN_0600F974: ; 0x0600F974
	stmdb	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #4
	ldr	r1, _0600FC68	; =0x0380FFF4
	ldr	r3, [r1]
	ldr	r0, _0600FC6C	; =0x00000424
	add	r6, r3, r0
	mov	r2, #0
	mov	r4, r2
	ldrh	r0, [r6, #4]
	cmp	r0, #0
	bne	_0600FC5C
	ldr	r0, [r3, #512]	; 0x200
	str	r0, [r6]
	ldr	r0, [r6]
	mvn	r3, #0
	cmp	r0, r3
	beq	_0600FC5C
	ldrh	r3, [r0, #14]
	add	r3, r0, r3, lsl #1
	add	r5, r3, #16
	ldr	r1, [r1]
	add	lr, r1, #768	; 0x300
	ldrh	r1, [lr, #62]	; 0x3e
	cmp	r1, #0
	movne	r0, #1
	strneh	r0, [r5, #2]
	movne	r0, #6
	strneh	r0, [r5, #4]
	bne	_0600FC14
	ldrh	r3, [r0, #12]
	ldrh	r1, [r5]
	cmp	r3, r1
	movne	r0, #13
	strneh	r0, [r5, #4]
	bne	_0600FC14
	and	r1, r3, #65280	; 0xff00
	cmp	r1, #256	; 0x100
	bgt	_0600FA20
	cmp	r1, #256	; 0x100
	bge	_0600FA78
	cmp	r1, #0
	beq	_0600FA40
	b	_0600FB74
_0600FA20:
	cmp	r1, #512	; 0x200
	bgt	_0600FA34
	cmp	r1, #512	; 0x200
	beq	_0600FAA0
	b	_0600FB74
_0600FA34:
	cmp	r1, #768	; 0x300
	beq	_0600FB58
	b	_0600FB74
_0600FA40:
	mov	r4, #1
	ldr	ip, _0600FC70	; =_06019730
	and	r1, r3, #255	; 0xff
	mov	r1, r1, lsl #16
	mov	r3, r1, lsr #16
	mov	r7, #11
	ldrh	r1, [r6, #4]
	ands	r1, r1, #1
	movne	r2, #2
	bne	_0600FB7C
	ldrh	r1, [lr, #76]	; 0x4c
	cmp	r1, #32
	movcc	r2, r4
	b	_0600FB7C
_0600FA78:
	mov	r4, #2
	ldr	ip, _0600FC74	; =_060196A8
	and	r1, r3, #255	; 0xff
	mov	r1, r1, lsl #16
	mov	r3, r1, lsr #16
	mov	r7, #5
	ldrh	r1, [lr, #76]	; 0x4c
	cmp	r1, #64	; 0x40
	movne	r2, #1
	b	_0600FB7C
_0600FAA0:
	and	r1, r3, #255	; 0xff
	mov	r1, r1, lsl #16
	mov	r3, r1, lsr #16
	cmp	r3, #64	; 0x40
	bcs	_0600FAD0
	ldrh	r1, [lr, #76]	; 0x4c
	cmp	r1, #16
	movcc	r2, #1
	mov	r4, #4
	ldr	ip, _0600FC78	; =_06019898
	mov	r7, #23
	b	_0600FB7C
_0600FAD0:
	cmp	r3, #128	; 0x80
	bcs	_0600FB00
	ldrh	r1, [lr, #76]	; 0x4c
	cmp	r1, #64	; 0x40
	movne	r2, #1
	mov	r4, #8
	ldr	ip, _0600FC7C	; =_06019700
	sub	r1, r3, #64	; 0x40
	mov	r1, r1, lsl #16
	mov	r3, r1, lsr #16
	mov	r7, #6
	b	_0600FB7C
_0600FB00:
	cmp	r3, #192	; 0xc0
	bcs	_0600FB30
	ldrh	r1, [lr, #76]	; 0x4c
	cmp	r1, #16
	movcc	r2, #1
	mov	r4, #16
	ldr	ip, _0600FC80	; =_060197E0
	sub	r1, r3, #128	; 0x80
	mov	r1, r1, lsl #16
	mov	r3, r1, lsr #16
	mov	r7, #23
	b	_0600FB7C
_0600FB30:
	ldrh	r1, [lr, #76]	; 0x4c
	cmp	r1, #16
	movcc	r2, #1
	mov	r4, #32
	ldr	ip, _0600FC84	; =_060196D0
	sub	r1, r3, #192	; 0xc0
	mov	r1, r1, lsl #16
	mov	r3, r1, lsr #16
	mov	r7, #6
	b	_0600FB7C
_0600FB58:
	mov	r4, #64	; 0x40
	ldr	ip, _0600FC88	; =_06019788
	and	r1, r3, #255	; 0xff
	mov	r1, r1, lsl #16
	mov	r3, r1, lsr #16
	mov	r7, #11
	b	_0600FB7C
_0600FB74:
	mov	r3, #1
	mov	r7, #0
_0600FB7C:
	cmp	r3, r7
	movhi	r2, #3
	bhi	_0600FBB4
	ldrh	lr, [r0, #14]
	mov	r7, r3, lsl #3
	ldrh	r1, [ip, r7]
	cmp	lr, r1
	bcc	_0600FBB0
	ldrh	lr, [r5, #2]
	add	r1, ip, r7
	ldrh	r1, [r1, #2]
	cmp	lr, r1
	bcs	_0600FBB4
_0600FBB0:
	mov	r2, #4
_0600FBB4:
	cmp	r2, #0
	movne	r0, #1
	strneh	r0, [r5, #2]
	strneh	r2, [r5, #4]
	bne	_0600FC14
	ldrh	r1, [r6, #4]
	orr	r1, r1, r4
	strh	r1, [r6, #4]
	mov	r1, r5
	add	r2, ip, r3, lsl #3
	ldr	r2, [r2, #4]
	mov	lr, pc
	bx	r2
	strh	r0, [r5, #4]
	ldrh	r0, [r5, #4]
	cmp	r0, #128	; 0x80
	beq	_0600FC5C
	cmp	r0, #129	; 0x81
	bne	_0600FC14
	ldrh	r1, [r6, #4]
	mvn	r0, r4
	and	r0, r1, r0
	strh	r0, [r6, #4]
	b	_0600FC38
_0600FC14:
	ldrh	r1, [r6, #4]
	mvn	r0, r4
	and	r0, r1, r0
	strh	r0, [r6, #4]
	ldr	r0, _0600FC68	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #512	; 0x200
	ldr	r1, [r6]
	bl	FUN_0600F8DC
_0600FC38:
	ldr	r0, _0600FC68	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #512	; 0x200
	ldrh	r0, [r0, #8]
	cmp	r0, #0
	beq	_0600FC5C
	mov	r0, #2
	mov	r1, #11
	bl	FUN_06009078
_0600FC5C:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, lr}
	bx	lr
_0600FC68:	.word	0x0380FFF4
_0600FC6C:	.word	0x00000424
_0600FC70:	.word	_06019730
_0600FC74:	.word	_060196A8
_0600FC78:	.word	_06019898
_0600FC7C:	.word	_06019700
_0600FC80:	.word	_060197E0
_0600FC84:	.word	_060196D0
_0600FC88:	.word	_06019788

	arm_func_start FUN_0600FC8C
FUN_0600FC8C: ; 0x0600FC8C
	mov	r0, #0
	ldr	r1, _0600FCAC	; =0x0380FFF4
	ldr	r2, [r1]
	ldr	r1, _0600FCB0	; =0x00000404
	add	r1, r2, r1
	mov	r2, #32
	ldr	ip, _0600FCB4	; =FUN_037FB300
	bx	ip
_0600FCAC:	.word	0x0380FFF4
_0600FCB0:	.word	0x00000404
_0600FCB4:	.word	FUN_037FB300

	arm_func_start FUN_0600FCB8
FUN_0600FCB8: ; 0x0600FCB8
	stmdb	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #4
	mov	r6, r0
	ldr	r0, _0600FDE0	; =0x0380FFF4
	ldr	r1, [r0]
	add	r5, r1, #836	; 0x344
	add	r0, r1, #392	; 0x188
	add	r1, r1, #768	; 0x300
	ldrh	r1, [r1, #228]	; 0xe4
	add	r1, r1, #62	; 0x3e
	bl	FUN_06009724
	movs	r4, r0
	bne	_0600FCFC
	mov	r0, #1
	bl	FUN_0600994C
	mov	r0, #0
	b	_0600FDD4
_0600FCFC:
	mov	r0, #141	; 0x8d
	strh	r0, [r4, #12]
	ldrh	r0, [r5, #160]	; 0xa0
	add	r0, r0, #1
	mov	r1, #2
	bl	FUN_06001840
	add	r0, r0, #22
	strh	r0, [r4, #14]
	add	r0, r4, #31
	ldrh	r1, [r6, #18]
	and	r1, r1, #255	; 0xff
	bl	FUN_06009CD0
	add	r0, r4, #30
	ldrh	r1, [r6, #14]
	and	r1, r1, #255	; 0xff
	bl	FUN_06009CD0
	add	r0, r4, #46	; 0x2e
	add	r1, r6, #30
	bl	FUN_0600AF4C
	ldrh	r0, [r5, #160]	; 0xa0
	strh	r0, [r4, #22]
	ldrh	r2, [r4, #22]
	cmp	r2, #0
	beq	_0600FDBC
	ldrh	r0, [r5, #162]	; 0xa2
	ands	r0, r0, #1
	beq	_0600FDAC
	ldr	r0, [r5, #156]	; 0x9c
	add	r6, r0, #1
	add	r5, r4, #60	; 0x3c
	mov	r7, #0
	b	_0600FD9C
_0600FD7C:
	mov	r0, r6
	bl	FUN_06009CB0
	mov	r1, r0
	mov	r0, r5
	bl	FUN_06009CD0
	add	r6, r6, #1
	add	r5, r5, #1
	add	r7, r7, #1
_0600FD9C:
	ldrh	r0, [r4, #22]
	cmp	r7, r0
	bcc	_0600FD7C
	b	_0600FDBC
_0600FDAC:
	ldr	r0, [r5, #156]	; 0x9c
	add	r1, r4, #60	; 0x3c
	add	r2, r2, #1
	bl	FUN_06000EA0
_0600FDBC:
	ldr	r0, _0600FDE0	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #392	; 0x188
	mov	r1, r4
	bl	FUN_0600F8DC
	mov	r0, #1
_0600FDD4:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, lr}
	bx	lr
_0600FDE0:	.word	0x0380FFF4

	arm_func_start FUN_0600FDE4
FUN_0600FDE4: ; 0x0600FDE4
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	ldr	r0, _0600FE48	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #392	; 0x188
	mov	r1, #16
	bl	FUN_06009724
	movs	r1, r0
	bne	_0600FE18
	mov	r0, #1
	bl	FUN_0600994C
	mov	r0, #0
	b	_0600FE3C
_0600FE18:
	mov	r0, #140	; 0x8c
	strh	r0, [r1, #12]
	mov	r0, #0
	strh	r0, [r1, #14]
	ldr	r0, _0600FE48	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #392	; 0x188
	bl	FUN_0600F8DC
	mov	r0, #1
_0600FE3C:
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_0600FE48:	.word	0x0380FFF4

	arm_func_start FUN_0600FE4C
FUN_0600FE4C: ; 0x0600FE4C
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	mov	r5, r0
	ldr	r0, _0600FEC4	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #392	; 0x188
	mov	r1, #22
	bl	FUN_06009724
	movs	r4, r0
	bne	_0600FE84
	mov	r0, #1
	bl	FUN_0600994C
	mov	r0, #0
	b	_0600FEB8
_0600FE84:
	mov	r0, #139	; 0x8b
	strh	r0, [r4, #12]
	mov	r0, #3
	strh	r0, [r4, #14]
	add	r0, r4, #16
	mov	r1, r5
	bl	FUN_0600AF4C
	ldr	r0, _0600FEC4	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #392	; 0x188
	mov	r1, r4
	bl	FUN_0600F8DC
	mov	r0, #1
_0600FEB8:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_0600FEC4:	.word	0x0380FFF4

	arm_func_start FUN_0600FEC8
FUN_0600FEC8: ; 0x0600FEC8
	stmdb	sp!, {r4, r5, r6, lr}
	mov	r6, r0
	mov	r5, r1
	ldr	r0, _0600FF40	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #392	; 0x188
	mov	r1, #24
	bl	FUN_06009724
	movs	r4, r0
	bne	_0600FF00
	mov	r0, #1
	bl	FUN_0600994C
	mov	r0, #0
	b	_0600FF38
_0600FF00:
	mov	r0, #136	; 0x88
	strh	r0, [r4, #12]
	mov	r0, #4
	strh	r0, [r4, #14]
	add	r0, r4, #16
	mov	r1, r6
	bl	FUN_0600AF4C
	strh	r5, [r4, #22]
	ldr	r0, _0600FF40	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #392	; 0x188
	mov	r1, r4
	bl	FUN_0600F8DC
	mov	r0, #1
_0600FF38:
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr
_0600FF40:	.word	0x0380FFF4

	arm_func_start FUN_0600FF44
FUN_0600FF44: ; 0x0600FF44
	stmdb	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #4
	mov	r7, r0
	mov	r6, r1
	mov	r5, r2
	ldr	r0, _06010030	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #392	; 0x188
	mov	r1, #58	; 0x3a
	bl	FUN_06009724
	movs	r4, r0
	bne	_0600FF84
	mov	r0, #1
	bl	FUN_0600994C
	mov	r0, #0
	b	_06010024
_0600FF84:
	mov	r0, #135	; 0x87
	strh	r0, [r4, #12]
	mov	r0, #21
	strh	r0, [r4, #14]
	add	r0, r4, #16
	mov	r1, r7
	bl	FUN_0600AF4C
	strh	r6, [r4, #22]
	add	r0, r5, #1
	bl	FUN_06009CB0
	strh	r0, [r4, #24]
	mov	r7, #0
	add	r6, r5, #2
	add	r5, r4, #26
	b	_0600FFE0
_0600FFC0:
	cmp	r7, #32
	bcs	_06010004
	add	r0, r6, r7
	bl	FUN_06009CB0
	mov	r1, r0
	add	r0, r5, r7
	bl	FUN_06009CD0
	add	r7, r7, #1
_0600FFE0:
	ldrh	r0, [r4, #24]
	cmp	r7, r0
	bcc	_0600FFC0
	b	_06010004
_0600FFF0:
	add	r0, r4, #26
	add	r0, r0, r7
	mov	r1, #0
	bl	FUN_06009CD0
	add	r7, r7, #1
_06010004:
	cmp	r7, #32
	bcc	_0600FFF0
	ldr	r0, _06010030	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #392	; 0x188
	mov	r1, r4
	bl	FUN_0600F8DC
	mov	r0, #1
_06010024:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, lr}
	bx	lr
_06010030:	.word	0x0380FFF4

	arm_func_start FUN_06010034
FUN_06010034: ; 0x06010034
	stmdb	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #4
	mov	r7, r0
	mov	r6, r1
	mov	r5, r2
	ldr	r0, _06010128	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #392	; 0x188
	mov	r1, #58	; 0x3a
	bl	FUN_06009724
	movs	r4, r0
	bne	_06010074
	mov	r0, #1
	bl	FUN_0600994C
	mov	r0, #0
	b	_0601011C
_06010074:
	mov	r0, #134	; 0x86
	strh	r0, [r4, #12]
	mov	r0, #21
	strh	r0, [r4, #14]
	add	r0, r4, #16
	mov	r1, r7
	bl	FUN_0600AF4C
	ldr	r0, _0601012C	; =0x00000FFF
	and	r0, r6, r0
	strh	r0, [r4, #22]
	add	r0, r5, #1
	bl	FUN_06009CB0
	strh	r0, [r4, #24]
	mov	r7, #0
	add	r6, r5, #2
	add	r5, r4, #26
	b	_060100D8
_060100B8:
	cmp	r7, #32
	bcs	_060100FC
	add	r0, r6, r7
	bl	FUN_06009CB0
	mov	r1, r0
	add	r0, r5, r7
	bl	FUN_06009CD0
	add	r7, r7, #1
_060100D8:
	ldrh	r0, [r4, #24]
	cmp	r7, r0
	bcc	_060100B8
	b	_060100FC
_060100E8:
	add	r0, r4, #26
	add	r0, r0, r7
	mov	r1, #0
	bl	FUN_06009CD0
	add	r7, r7, #1
_060100FC:
	cmp	r7, #32
	bcc	_060100E8
	ldr	r0, _06010128	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #392	; 0x188
	mov	r1, r4
	bl	FUN_0600F8DC
	mov	r0, #1
_0601011C:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, lr}
	bx	lr
_06010128:	.word	0x0380FFF4
_0601012C:	.word	0x00000FFF

	arm_func_start FUN_06010130
FUN_06010130: ; 0x06010130
	stmdb	sp!, {r4, r5, r6, lr}
	mov	r6, r0
	mov	r5, r1
	ldr	r0, _060101A8	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #392	; 0x188
	mov	r1, #24
	bl	FUN_06009724
	movs	r4, r0
	bne	_06010168
	mov	r0, #1
	bl	FUN_0600994C
	mov	r0, #0
	b	_060101A0
_06010168:
	mov	r0, #133	; 0x85
	strh	r0, [r4, #12]
	mov	r0, #4
	strh	r0, [r4, #14]
	add	r0, r4, #16
	mov	r1, r6
	bl	FUN_0600AF4C
	strh	r5, [r4, #22]
	ldr	r0, _060101A8	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #392	; 0x188
	mov	r1, r4
	bl	FUN_0600F8DC
	mov	r0, #1
_060101A0:
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr
_060101A8:	.word	0x0380FFF4

	arm_func_start FUN_060101AC
FUN_060101AC: ; 0x060101AC
	stmdb	sp!, {r4, r5, r6, lr}
	mov	r6, r0
	mov	r5, r1
	ldr	r0, _06010224	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #392	; 0x188
	mov	r1, #24
	bl	FUN_06009724
	movs	r4, r0
	bne	_060101E4
	mov	r0, #1
	bl	FUN_0600994C
	mov	r0, #0
	b	_0601021C
_060101E4:
	mov	r0, #132	; 0x84
	strh	r0, [r4, #12]
	mov	r0, #4
	strh	r0, [r4, #14]
	add	r0, r4, #16
	mov	r1, r6
	bl	FUN_0600AF4C
	strh	r5, [r4, #22]
	ldr	r0, _06010224	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #392	; 0x188
	mov	r1, r4
	bl	FUN_0600F8DC
	mov	r0, #1
_0601021C:
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr
_06010224:	.word	0x0380FFF4

	arm_func_start FUN_06010228
FUN_06010228: ; 0x06010228
	stmdb	sp!, {r4, lr}
	ldr	r0, _06010278	; =0x0380FFF4
	ldr	r2, [r0]
	add	r4, r2, #380	; 0x17c
	ldr	r0, _0601027C	; =0x00000424
	add	r1, r2, r0
	ldrh	r0, [r1, #4]
	bic	r0, r0, #1
	strh	r0, [r1, #4]
	add	r0, r4, #132	; 0x84
	ldr	r1, [r2, #1060]	; 0x424
	bl	FUN_0600F8DC
	ldrh	r0, [r4, #140]	; 0x8c
	cmp	r0, #0
	beq	_06010270
	mov	r0, #2
	mov	r1, #11
	bl	FUN_06009078
_06010270:
	ldmia	sp!, {r4, lr}
	bx	lr
_06010278:	.word	0x0380FFF4
_0601027C:	.word	0x00000424

	arm_func_start FUN_06010280
FUN_06010280: ; 0x06010280
	ldr	r0, _06010298	; =0x0380FFF4
	ldr	r1, [r0]
	ldr	r0, _0601029C	; =0x000003C6
	add	r0, r1, r0
	ldr	ip, _060102A0	; =FUN_0600FE4C
	bx	ip
_06010298:	.word	0x0380FFF4
_0601029C:	.word	0x000003C6
_060102A0:	.word	FUN_0600FE4C

	arm_func_start FUN_060102A4
FUN_060102A4: ; 0x060102A4
	mov	r1, #131	; 0x83
	ldr	r0, _060102C8	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #1024	; 0x400
	strh	r1, [r0, #4]
	mov	r0, #2
	mov	r1, #5
	ldr	ip, _060102CC	; =FUN_06009078
	bx	ip
_060102C8:	.word	0x0380FFF4
_060102CC:	.word	FUN_06009078

	arm_func_start FUN_060102D0
FUN_060102D0: ; 0x060102D0
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	ldr	r0, _06010544	; =0x0380FFF4
	ldr	r1, [r0]
	add	r5, r1, #836	; 0x344
	ldr	r0, _06010548	; =0x00000404
	add	r4, r1, r0
	add	r0, r1, #1024	; 0x400
	ldrh	r0, [r0, #4]
	sub	r0, r0, #128	; 0x80
	cmp	r0, #4
	addls	pc, pc, r0, lsl #2
	b	_06010520
	b	_06010318
	b	_06010358
	b	_06010418
	b	_06010440
	b	_060104B0
_06010318:
	mov	r0, #0
	strh	r0, [r4, #20]
	mov	r0, #19
	bl	FUN_0600A4B8
	strh	r0, [r4, #14]
	mov	r0, #53	; 0x35
	bl	FUN_0600A4B8
	strh	r0, [r4, #16]
	ldr	r1, [r4, #24]
	ldrh	r0, [r1, #18]
	ldrh	r1, [r1, #20]
	bl	FUN_0600BDA0
	mov	r0, #4
	strh	r0, [r5, #12]
	mov	r0, #0
	strh	r0, [r4, #22]
_06010358:
	mov	r0, #0
	str	r0, [r4, #4]
	str	r0, [r4, #8]
	ldr	r0, [r4, #24]
	add	r1, r0, #24
	ldrh	r0, [r4, #20]
	add	r0, r1, r0
	bl	FUN_06009CB0
	movs	r5, r0
	beq	_0601038C
	ldrh	r0, [r4, #20]
	cmp	r0, #16
	bcc	_06010398
_0601038C:
	mov	r0, #132	; 0x84
	strh	r0, [r4]
	b	_06010520
_06010398:
	mov	r0, #0
	bl	FUN_060191BC
	cmp	r0, #0
	movne	r0, #14
	strneh	r0, [r4, #22]
	movne	r0, #132	; 0x84
	strneh	r0, [r4]
	bne	_06010520
	ldrh	r0, [r4]
	cmp	r0, #128	; 0x80
	bne	_060103F0
	mov	r0, r5, lsl #16
	mov	r0, r0, lsr #16
	mov	r1, #0
	bl	FUN_0600B570
	bl	FUN_0600A5A4
	ldr	r0, _0601054C	; =0x04808040
	ldrh	r0, [r0]
	strh	r0, [r4, #12]
	mov	r0, #32768	; 0x8000
	bl	FUN_0600B3E0
	b	_06010400
_060103F0:
	mov	r0, r5, lsl #16
	mov	r0, r0, lsr #16
	mov	r1, #0
	bl	FUN_0600B570
_06010400:
	mov	r0, #130	; 0x82
	strh	r0, [r4]
	ldr	r0, [r4, #24]
	ldrh	r0, [r0, #22]
	ldr	r1, _06010550	; =FUN_060102A4
	bl	FUN_06009EE4
_06010418:
	ldr	r0, [r4, #4]
	add	r0, r0, #1
	str	r0, [r4, #4]
	ldr	r0, _06010554	; =0x0480819C
	ldrh	r0, [r0]
	ands	r0, r0, #1
	ldrne	r0, [r4, #8]
	addne	r0, r0, #100	; 0x64
	strne	r0, [r4, #8]
	b	_06010520
_06010440:
	ldr	r0, [r4, #24]
	add	r1, r0, #24
	ldrh	r0, [r4, #20]
	add	r0, r1, r0
	bl	FUN_06009CB0
	mov	r5, r0
	mov	r2, #0
	ldr	r1, [r4, #4]
	cmp	r1, #0
	beq	_06010484
	ldr	r0, [r4, #8]
	cmp	r0, #0
	beq	_06010484
	bl	FUN_06003B68
	add	r2, r0, #1
	cmp	r2, #100	; 0x64
	movhi	r2, #100	; 0x64
_06010484:
	orr	r2, r5, r2, lsl #8
	ldr	r1, [r4, #28]
	ldrh	r0, [r4, #20]
	add	r0, r1, r0, lsl #1
	strh	r2, [r0, #8]
	ldrh	r0, [r4, #20]
	add	r0, r0, #1
	strh	r0, [r4, #20]
	mov	r0, #129	; 0x81
	strh	r0, [r4]
	b	_06010520
_060104B0:
	bl	FUN_0600A4EC
	ldr	r0, _06010544	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #46]	; 0x2e
	strh	r0, [r5, #12]
	mov	r0, #19
	ldrh	r1, [r4, #14]
	bl	FUN_0600A478
	mov	r0, #53	; 0x35
	ldrh	r1, [r4, #16]
	bl	FUN_0600A478
	ldrh	r0, [r4, #12]
	bl	FUN_0600B3E0
	ldrh	r1, [r4, #22]
	ldr	r0, [r4, #28]
	strh	r1, [r0, #4]
	mov	r1, #0
	strh	r1, [r4]
	ldrh	r2, [r4, #20]
	b	_06010514
_06010504:
	ldr	r0, [r4, #28]
	add	r0, r0, r2, lsl #1
	strh	r1, [r0, #8]
	add	r2, r2, #1
_06010514:
	cmp	r2, #16
	bcc	_06010504
	bl	FUN_06010228
_06010520:
	ldrh	r0, [r4]
	cmp	r0, #0
	beq	_06010538
	mov	r0, #2
	mov	r1, #5
	bl	FUN_06009078
_06010538:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_06010544:	.word	0x0380FFF4
_06010548:	.word	0x00000404
_0601054C:	.word	0x04808040
_06010550:	.word	FUN_060102A4
_06010554:	.word	0x0480819C

	arm_func_start FUN_06010558
FUN_06010558: ; 0x06010558
	ldr	r0, _06010590	; =0x0380FFF4
	ldr	r2, [r0]
	ldr	r0, _06010594	; =0x00000404
	add	r0, r2, r0
	mov	r1, #7
	ldr	r0, [r0, #28]
	strh	r1, [r0, #4]
	mov	r1, #99	; 0x63
	add	r0, r2, #1024	; 0x400
	strh	r1, [r0, #4]
	mov	r0, #2
	mov	r1, #4
	ldr	ip, _06010598	; =FUN_06009078
	bx	ip
_06010590:	.word	0x0380FFF4
_06010594:	.word	0x00000404
_06010598:	.word	FUN_06009078

	arm_func_start FUN_0601059C
FUN_0601059C: ; 0x0601059C
	stmdb	sp!, {r4, lr}
	ldr	r0, _0601064C	; =0x0380FFF4
	ldr	r1, [r0]
	ldr	r0, _06010650	; =0x00000404
	add	r4, r1, r0
	add	r0, r1, #1024	; 0x400
	ldrh	r0, [r0, #4]
	cmp	r0, #96	; 0x60
	beq	_060105CC
	cmp	r0, #99	; 0x63
	beq	_06010624
	b	_06010644
_060105CC:
	ldr	r0, [r4, #24]
	add	r0, r0, #16
	bl	FUN_06014458
	cmp	r0, #0
	bne	_06010604
	mov	r1, #8
	ldr	r0, [r4, #28]
	strh	r1, [r0, #4]
	mov	r0, #99	; 0x63
	strh	r0, [r4]
	mov	r0, #2
	mov	r1, #4
	bl	FUN_06009078
	b	_06010644
_06010604:
	mov	r1, #97	; 0x61
	strh	r1, [r4]
	bl	FUN_06014C6C
	ldr	r0, [r4, #24]
	ldrh	r0, [r0, #24]
	ldr	r1, _06010654	; =FUN_06010558
	bl	FUN_06009EE4
	b	_06010644
_06010624:
	mov	r0, #1
	bl	FUN_06015060
	mov	r0, #1
	mov	r1, #0
	bl	FUN_06014C8C
	mov	r0, #0
	strh	r0, [r4]
	bl	FUN_06010228
_06010644:
	ldmia	sp!, {r4, lr}
	bx	lr
_0601064C:	.word	0x0380FFF4
_06010650:	.word	0x00000404
_06010654:	.word	FUN_06010558

	arm_func_start FUN_06010658
FUN_06010658: ; 0x06010658
	ldr	r0, _06010690	; =0x0380FFF4
	ldr	r2, [r0]
	ldr	r0, _06010694	; =0x00000404
	add	r0, r2, r0
	mov	r1, #7
	ldr	r0, [r0, #28]
	strh	r1, [r0, #4]
	mov	r1, #83	; 0x53
	add	r0, r2, #1024	; 0x400
	strh	r1, [r0, #4]
	mov	r0, #2
	mov	r1, #3
	ldr	ip, _06010698	; =FUN_06009078
	bx	ip
_06010690:	.word	0x0380FFF4
_06010694:	.word	0x00000404
_06010698:	.word	FUN_06009078

	arm_func_start FUN_0601069C
FUN_0601069C: ; 0x0601069C
	stmdb	sp!, {r4, lr}
	ldr	r0, _06010754	; =0x0380FFF4
	ldr	r1, [r0]
	ldr	r0, _06010758	; =0x00000404
	add	r4, r1, r0
	add	r0, r1, #1024	; 0x400
	ldrh	r0, [r0, #4]
	cmp	r0, #80	; 0x50
	beq	_060106CC
	cmp	r0, #83	; 0x53
	beq	_06010724
	b	_0601074C
_060106CC:
	ldr	r0, [r4, #24]
	add	r0, r0, #16
	bl	FUN_06014510
	cmp	r0, #0
	bne	_06010704
	mov	r1, #8
	ldr	r0, [r4, #28]
	strh	r1, [r0, #4]
	mov	r0, #83	; 0x53
	strh	r0, [r4]
	mov	r0, #2
	mov	r1, #3
	bl	FUN_06009078
	b	_0601074C
_06010704:
	mov	r1, #81	; 0x51
	strh	r1, [r4]
	bl	FUN_06014C6C
	ldr	r0, [r4, #24]
	ldrh	r0, [r0, #24]
	ldr	r1, _0601075C	; =FUN_06010658
	bl	FUN_06009EE4
	b	_0601074C
_06010724:
	mov	r0, #1
	bl	FUN_06014FC8
	mov	r0, #1
	bl	FUN_06015060
	mov	r0, #1
	mov	r1, #0
	bl	FUN_06014C8C
	mov	r0, #0
	strh	r0, [r4]
	bl	FUN_06010228
_0601074C:
	ldmia	sp!, {r4, lr}
	bx	lr
_06010754:	.word	0x0380FFF4
_06010758:	.word	0x00000404
_0601075C:	.word	FUN_06010658

	arm_func_start FUN_06010760
FUN_06010760: ; 0x06010760
	ldr	r0, _06010798	; =0x0380FFF4
	ldr	r2, [r0]
	ldr	r0, _0601079C	; =0x00000404
	add	r0, r2, r0
	mov	r1, #7
	ldr	r0, [r0, #28]
	strh	r1, [r0, #4]
	mov	r1, #53	; 0x35
	add	r0, r2, #1024	; 0x400
	strh	r1, [r0, #4]
	mov	r0, #2
	mov	r1, r0
	ldr	ip, _060107A0	; =FUN_06009078
	bx	ip
_06010798:	.word	0x0380FFF4
_0601079C:	.word	0x00000404
_060107A0:	.word	FUN_06009078

	arm_func_start FUN_060107A4
FUN_060107A4: ; 0x060107A4
	stmdb	sp!, {r4, lr}
	ldr	r0, _06010880	; =0x0380FFF4
	ldr	r1, [r0]
	ldr	r0, _06010884	; =0x00000404
	add	r4, r1, r0
	add	r0, r1, #1024	; 0x400
	ldrh	r0, [r0, #4]
	cmp	r0, #48	; 0x30
	beq	_060107D4
	cmp	r0, #53	; 0x35
	beq	_06010850
	b	_06010878
_060107D4:
	ldr	r0, [r4, #24]
	add	r0, r0, #16
	mov	r1, #0
	mov	r2, r1
	bl	FUN_06013F38
	cmp	r0, #0
	bne	_06010814
	mov	r1, #8
	ldr	r0, [r4, #28]
	strh	r1, [r0, #4]
	mov	r0, #53	; 0x35
	strh	r0, [r4]
	mov	r0, #2
	mov	r1, r0
	bl	FUN_06009078
	b	_06010878
_06010814:
	ldr	r1, [r4, #24]
	ldrh	r1, [r1, #22]
	strh	r1, [r0, #44]	; 0x2c
	mov	r1, #1
	strh	r1, [r0, #46]	; 0x2e
	mov	r1, #0
	strh	r1, [r0, #48]	; 0x30
	mov	r1, #49	; 0x31
	strh	r1, [r4]
	bl	FUN_06014C6C
	ldr	r0, [r4, #24]
	ldrh	r0, [r0, #24]
	ldr	r1, _06010888	; =FUN_06010760
	bl	FUN_06009EE4
	b	_06010878
_06010850:
	mov	r0, #1
	bl	FUN_06014FC8
	mov	r0, #1
	bl	FUN_06015060
	mov	r0, #1
	mov	r1, #0
	bl	FUN_06014C8C
	mov	r0, #0
	strh	r0, [r4]
	bl	FUN_06010228
_06010878:
	ldmia	sp!, {r4, lr}
	bx	lr
_06010880:	.word	0x0380FFF4
_06010884:	.word	0x00000404
_06010888:	.word	FUN_06010760

	arm_func_start FUN_0601088C
FUN_0601088C: ; 0x0601088C
	ldr	r0, _060108C0	; =0x0380FFF4
	ldr	r2, [r0]
	ldr	r0, _060108C4	; =0x00000404
	add	r1, r2, r0
	mov	r0, #7
	strh	r0, [r1, #4]
	mov	r1, #37	; 0x25
	add	r0, r2, #1024	; 0x400
	strh	r1, [r0, #4]
	mov	r0, #2
	mov	r1, #1
	ldr	ip, _060108C8	; =FUN_06009078
	bx	ip
_060108C0:	.word	0x0380FFF4
_060108C4:	.word	0x00000404
_060108C8:	.word	FUN_06009078

	arm_func_start FUN_060108CC
FUN_060108CC: ; 0x060108CC
	stmdb	sp!, {r4, lr}
	ldr	r0, _06010964	; =0x0380FFF4
	ldr	r1, [r0]
	ldr	r0, _06010968	; =0x00000404
	add	r4, r1, r0
	add	r0, r1, #1024	; 0x400
	ldrh	r0, [r0, #4]
	cmp	r0, #32
	beq	_060108FC
	cmp	r0, #37	; 0x25
	beq	_06010928
	b	_0601095C
_060108FC:
	bl	FUN_0600A5A4
	mov	r0, #0
	strh	r0, [r4, #4]
	strh	r0, [r4, #6]
	mov	r0, #33	; 0x21
	strh	r0, [r4]
	ldr	r0, [r4, #24]
	ldrh	r0, [r0, #16]
	ldr	r1, _0601096C	; =FUN_0601088C
	bl	FUN_06009EE4
	b	_0601095C
_06010928:
	ldrh	r1, [r4, #4]
	ldr	r0, [r4, #28]
	strh	r1, [r0, #4]
	ldrh	r1, [r4, #6]
	ldr	r0, [r4, #28]
	strh	r1, [r0, #6]
	ldrh	r0, [r4, #4]
	cmp	r0, #0
	beq	_06010950
	bl	FUN_0600A4EC
_06010950:
	mov	r0, #0
	strh	r0, [r4]
	bl	FUN_06010228
_0601095C:
	ldmia	sp!, {r4, lr}
	bx	lr
_06010964:	.word	0x0380FFF4
_06010968:	.word	0x00000404
_0601096C:	.word	FUN_0601088C

	arm_func_start FUN_06010970
FUN_06010970: ; 0x06010970
	ldr	r0, _060109CC	; =0x0380FFF4
	ldr	r1, [r0]
	ldr	r0, _060109D0	; =0x00000404
	add	r2, r1, r0
	ldrh	r1, [r2, #10]
	ldrh	r0, [r2, #12]
	add	r0, r1, r0
	strh	r0, [r2, #10]
	ldrh	r1, [r2, #10]
	ldr	r0, [r2, #24]
	ldrh	r0, [r0, #74]	; 0x4a
	cmp	r1, r0
	bcc	_060109BC
	ldrh	r0, [r2, #6]
	cmp	r0, #16
	movcc	r0, #17
	strcch	r0, [r2]
	movcs	r0, #21
	strcsh	r0, [r2]
_060109BC:
	mov	r0, #2
	mov	r1, #0
	ldr	ip, _060109D4	; =FUN_06009078
	bx	ip
_060109CC:	.word	0x0380FFF4
_060109D0:	.word	0x00000404
_060109D4:	.word	FUN_06009078

	arm_func_start FUN_060109D8
FUN_060109D8: ; 0x060109D8
	stmdb	sp!, {r4, r5, r6, lr}
	ldr	r0, _06010BC8	; =0x0380FFF4
	ldr	r1, [r0]
	ldr	r0, _06010BCC	; =0x00000404
	add	r6, r1, r0
	add	r5, r1, #836	; 0x344
	mov	r4, #0
	add	r0, r1, #1024	; 0x400
	ldrh	r0, [r0, #4]
	sub	r0, r0, #16
	cmp	r0, #5
	addls	pc, pc, r0, lsl #2
	b	_06010BAC
	b	_06010A24
	b	_06010A9C
	b	_06010B34
	b	_06010B34
	b	_06010BAC
	b	_06010B8C
_06010A24:
	mov	r0, #32
	bl	FUN_0600AF68
	mov	r0, #2
	strh	r0, [r5, #12]
	mov	r1, r4
	ldr	r0, [r6, #28]
	strh	r1, [r0, #8]
	ldr	r0, [r6, #28]
	strh	r1, [r0, #6]
	strh	r1, [r6, #6]
	strh	r1, [r6, #8]
	ldr	r1, [r6, #24]
	ldrh	r0, [r1, #56]	; 0x38
	cmp	r0, #0
	bne	_06010A88
	ldrh	r0, [r1, #74]	; 0x4a
	add	r0, r0, #3
	mov	r1, #4
	bl	FUN_06001840
	strh	r0, [r6, #12]
	ldrh	r0, [r6, #12]
	cmp	r0, #10
	movcc	r0, #10
	strcch	r0, [r6, #12]
	b	_06010A90
_06010A88:
	ldrh	r0, [r1, #74]	; 0x4a
	strh	r0, [r6, #12]
_06010A90:
	mov	r1, #0
	ldr	r0, [r6, #28]
	strh	r1, [r0, #4]
_06010A9C:
	ldr	r0, [r6, #24]
	add	r1, r0, #58	; 0x3a
	ldrh	r0, [r6, #6]
	add	r0, r1, r0
	bl	FUN_06009CB0
	movs	r5, r0
	moveq	r0, #21
	streqh	r0, [r6]
	moveq	r4, #1
	beq	_06010BAC
	ldrh	r0, [r6, #6]
	add	r0, r0, #1
	strh	r0, [r6, #6]
	mov	r0, #0
	strh	r0, [r6, #10]
	bl	FUN_060191BC
	cmp	r0, #0
	beq	_06010B00
	mov	r1, #14
	ldr	r0, [r6, #28]
	strh	r1, [r0, #4]
	mov	r0, #21
	strh	r0, [r6]
	mov	r4, #1
	b	_06010BAC
_06010B00:
	ldrh	r0, [r6]
	cmp	r0, #16
	bne	_06010B20
	mov	r0, r5
	mov	r1, #0
	bl	FUN_0600B570
	bl	FUN_0600A5A4
	b	_06010B2C
_06010B20:
	mov	r0, r5
	mov	r1, #0
	bl	FUN_0600B570
_06010B2C:
	mov	r0, #18
	strh	r0, [r6]
_06010B34:
	mov	r0, #19
	strh	r0, [r6]
	ldr	r1, [r6, #24]
	ldrh	r0, [r1, #56]	; 0x38
	cmp	r0, #0
	bne	_06010B7C
	add	r0, r1, #16
	bl	FUN_060140E4
	cmp	r0, #0
	bne	_06010B78
	mov	r1, #8
	ldr	r0, [r6, #28]
	strh	r1, [r0, #4]
	mov	r0, #21
	strh	r0, [r6]
	mov	r4, #1
	b	_06010BAC
_06010B78:
	bl	FUN_06014C6C
_06010B7C:
	ldrh	r0, [r6, #12]
	ldr	r1, _06010BD0	; =FUN_06010970
	bl	FUN_06009EE4
	b	_06010BAC
_06010B8C:
	strh	r4, [r6]
	bl	FUN_0600A4EC
	ldr	r0, _06010BC8	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #46]	; 0x2e
	strh	r0, [r5, #12]
	bl	FUN_06010228
_06010BAC:
	cmp	r4, #0
	beq	_06010BC0
	mov	r0, #2
	mov	r1, #0
	bl	FUN_06009078
_06010BC0:
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr
_06010BC8:	.word	0x0380FFF4
_06010BCC:	.word	0x00000404
_06010BD0:	.word	FUN_06010970

	arm_func_start FUN_06010BD4
FUN_06010BD4: ; 0x06010BD4
	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r6, r0
	mov	r5, r1
	ldr	r2, _06010CB4	; =0x0380FFF4
	ldr	r1, [r2]
	ldr	r0, _06010CB8	; =0x00000404
	add	r4, r1, r0
	mov	r0, #18
	strh	r0, [r5, #2]
	ldr	r0, [r2]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #76]	; 0x4c
	cmp	r0, #32
	movne	r0, #1
	bne	_06010CAC
	ldrh	r0, [r6, #18]
	cmp	r0, #3
	movhi	r0, #5
	bhi	_06010CAC
	ldrh	r0, [r6, #20]
	cmp	r0, #63	; 0x3f
	movhi	r0, #5
	bhi	_06010CAC
	ldrh	r0, [r6, #22]
	cmp	r0, #0
	moveq	r0, #5
	beq	_06010CAC
	cmp	r0, #1000	; 0x3e8
	movhi	r0, #5
	bhi	_06010CAC
	mov	r8, #0
	add	r7, r6, #24
	b	_06010C7C
_06010C58:
	add	r0, r7, r8
	bl	FUN_06009CB0
	cmp	r0, #0
	beq	_06010C84
	bl	FUN_0600AB58
	cmp	r0, #0
	moveq	r0, #5
	beq	_06010CAC
	add	r8, r8, #1
_06010C7C:
	cmp	r8, #16
	bcc	_06010C58
_06010C84:
	cmp	r8, #0
	moveq	r0, #5
	beq	_06010CAC
	str	r6, [r4, #24]
	str	r5, [r4, #28]
	mov	r0, #128	; 0x80
	strh	r0, [r4]
	strh	r0, [r5, #4]
	bl	FUN_060102D0
	mov	r0, #128	; 0x80
_06010CAC:
	ldmia	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
_06010CB4:	.word	0x0380FFF4
_06010CB8:	.word	0x00000404

	arm_func_start FUN_06010CBC
FUN_06010CBC: ; 0x06010CBC
	stmdb	sp!, {r4, r5, r6, lr}
	mov	r6, r0
	ldr	r0, _06010E54	; =0x0380FFF4
	ldr	r0, [r0]
	add	r5, r0, #836	; 0x344
	add	r4, r0, #796	; 0x31c
	mov	r0, #1
	strh	r0, [r1, #2]
	ldrh	r0, [r4, #18]
	cmp	r0, #1
	beq	_06010CF4
	cmp	r0, #0
	movne	r0, #11
	bne	_06010E4C
_06010CF4:
	ldrh	r0, [r5, #8]
	cmp	r0, #32
	movne	r0, #1
	bne	_06010E4C
	ldrh	r0, [r6, #16]
	cmp	r0, #32
	movhi	r0, #5
	bhi	_06010E4C
	cmp	r0, #0
	moveq	r0, #5
	beq	_06010E4C
	ldrh	r0, [r6, #50]	; 0x32
	cmp	r0, #10
	movcc	r0, #5
	bcc	_06010E4C
	cmp	r0, #1000	; 0x3e8
	movhi	r0, #5
	bhi	_06010E4C
	ldrh	r0, [r6, #52]	; 0x34
	cmp	r0, #0
	moveq	r0, #5
	beq	_06010E4C
	cmp	r0, #255	; 0xff
	movhi	r0, #5
	bhi	_06010E4C
	ldrh	r0, [r6, #54]	; 0x36
	ldr	r1, _06010E58	; =0x0000FFF0
	ands	r1, r0, r1
	movne	r0, #5
	bne	_06010E4C
	bl	FUN_0600AB58
	cmp	r0, #0
	moveq	r0, #5
	beq	_06010E4C
	ldrh	r1, [r6, #56]	; 0x38
	cmp	r1, #0
	moveq	r0, #5
	beq	_06010E4C
	mov	r0, #4096	; 0x1000
	rsb	r0, r0, #0
	ands	r1, r1, r0
	movne	r0, #5
	bne	_06010E4C
	ldrh	r1, [r6, #58]	; 0x3a
	cmp	r1, #0
	moveq	r0, #5
	beq	_06010E4C
	ands	r0, r1, r0
	movne	r0, #5
	bne	_06010E4C
	ldrh	r0, [r6, #60]	; 0x3c
	cmp	r0, #128	; 0x80
	movhi	r0, #5
	bhi	_06010E4C
	mov	r0, #0
	bl	FUN_060191BC
	cmp	r0, #0
	movne	r0, #14
	bne	_06010E4C
	ldrh	r0, [r4, #18]
	cmp	r0, #0
	bne	_06010DF8
	ldr	r0, _06010E5C	; =_06019384
	bl	FUN_0600BB58
	b	_06010E00
_06010DF8:
	add	r0, r4, #8
	bl	FUN_0600BB58
_06010E00:
	ldrh	r0, [r6, #16]
	add	r1, r6, #18
	bl	FUN_0600BA3C
	ldrh	r0, [r6, #50]	; 0x32
	bl	FUN_0600B9DC
	ldrh	r0, [r6, #52]	; 0x34
	bl	FUN_0600B990
	ldrh	r0, [r6, #54]	; 0x36
	mov	r1, #0
	bl	FUN_0600B570
	add	r0, r6, #56	; 0x38
	bl	FUN_0600B528
	ldrh	r0, [r6, #60]	; 0x3c
	add	r1, r6, #62	; 0x3e
	bl	FUN_0600B1A0
	mov	r0, #0
	strh	r0, [r5, #164]	; 0xa4
	bl	FUN_0600A5A4
	mov	r0, #0
_06010E4C:
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr
_06010E54:	.word	0x0380FFF4
_06010E58:	.word	0x0000FFF0
_06010E5C:	.word	_06019384

	arm_func_start FUN_06010E60
FUN_06010E60: ; 0x06010E60
	stmdb	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #4
	mov	r7, r0
	mov	r6, r1
	ldr	r2, _06010F70	; =0x0380FFF4
	ldr	r1, [r2]
	ldr	r0, _06010F74	; =0x00000404
	add	r5, r1, r0
	mov	r0, #1
	strh	r0, [r6, #2]
	ldr	r1, [r2]
	add	r0, r1, #768	; 0x300
	ldrh	r0, [r0, #46]	; 0x2e
	cmp	r0, #0
	moveq	r0, #11
	beq	_06010F64
	cmp	r0, #1
	beq	_06010EB8
	ldrh	r0, [r7, #16]
	ands	r0, r0, #1
	movne	r0, #5
	bne	_06010F64
_06010EB8:
	add	r0, r1, #768	; 0x300
	ldrh	r0, [r0, #76]	; 0x4c
	cmp	r0, #64	; 0x40
	movne	r0, #1
	bne	_06010F64
	add	r0, r7, #16
	ldrh	r1, [r7, #22]
	bl	FUN_060145BC
	movs	r4, r0
	moveq	r0, #8
	beq	_06010F64
	str	r7, [r5, #24]
	str	r6, [r5, #28]
	str	r4, [r5, #4]
	mov	r0, #113	; 0x71
	strh	r0, [r5]
	ldrh	r0, [r7, #16]
	ands	r0, r0, #1
	beq	_06010F50
	ldr	r1, _06010F70	; =0x0380FFF4
	ldr	r0, [r1]
	ldr	r0, [r0, #1004]	; 0x3ec
	strh	r0, [r4, #4]
	ldr	r0, [r1]
	add	r0, r0, #392	; 0x188
	sub	r1, r4, #16
	bl	FUN_0600F45C
	ldr	r0, _06010F70	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #1280	; 0x500
	ldrh	r1, [r0, #46]	; 0x2e
	ldrh	r0, [r0, #50]	; 0x32
	mvn	r0, r0
	ands	r0, r1, r0
	bne	_06010F60
	mov	r0, #2
	bl	FUN_06015C78
	b	_06010F60
_06010F50:
	add	r0, r7, #16
	bl	FUN_06014E14
	mov	r0, r4
	bl	FUN_06014C6C
_06010F60:
	mov	r0, #128	; 0x80
_06010F64:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, lr}
	bx	lr
_06010F70:	.word	0x0380FFF4
_06010F74:	.word	0x00000404

	arm_func_start FUN_06010F78
FUN_06010F78: ; 0x06010F78
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	ldr	r2, _06011040	; =0x0380FFF4
	ldr	lr, [r2]
	add	r3, lr, #836	; 0x344
	ldr	r2, _06011044	; =0x00000404
	add	r2, lr, r2
	mov	ip, #3
	strh	ip, [r1, #2]
	add	ip, lr, #768	; 0x300
	ldrh	ip, [ip, #46]	; 0x2e
	cmp	ip, #3
	beq	_06010FB8
	cmp	ip, #2
	movne	r0, #11
	bne	_06011034
_06010FB8:
	ldrh	ip, [r3, #8]
	cmp	ip, #48	; 0x30
	movcc	r0, #1
	bcc	_06011034
	ldrh	ip, [r0, #16]
	ands	ip, ip, #1
	movne	r0, #5
	bne	_06011034
	ldrh	lr, [r0, #22]
	cmp	lr, #1
	movcc	r0, #5
	bcc	_06011034
	cmp	lr, #255	; 0xff
	movhi	r0, #5
	bhi	_06011034
	ldrh	ip, [r0, #24]
	cmp	ip, #2000	; 0x7d0
	movhi	r0, #5
	bhi	_06011034
	cmp	ip, #10
	movcc	r0, #5
	bcc	_06011034
	strh	lr, [r3, #112]	; 0x70
	ldrh	ip, [r0, #22]
	strh	ip, [r3, #114]	; 0x72
	str	r0, [r2, #24]
	str	r1, [r2, #28]
	mov	r0, #96	; 0x60
	strh	r0, [r2]
	bl	FUN_0601059C
	mov	r0, #128	; 0x80
_06011034:
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_06011040:	.word	0x0380FFF4
_06011044:	.word	0x00000404

	arm_func_start FUN_06011048
FUN_06011048: ; 0x06011048
	stmdb	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #4
	mov	r7, r0
	mov	r6, r1
	ldr	r0, _06011128	; =0x0380FFF4
	ldr	r1, [r0]
	add	r5, r1, #836	; 0x344
	ldr	r0, _0601112C	; =0x00000404
	add	r4, r1, r0
	mov	r0, #3
	strh	r0, [r6, #2]
	add	r0, r1, #768	; 0x300
	ldrh	r0, [r0, #46]	; 0x2e
	cmp	r0, #3
	beq	_06011090
	cmp	r0, #2
	movne	r0, #11
	bne	_0601111C
_06011090:
	ldrh	r0, [r5, #8]
	cmp	r0, #48	; 0x30
	movcc	r0, #1
	bcc	_0601111C
	ldrh	r0, [r7, #16]
	ands	r0, r0, #1
	movne	r0, #5
	bne	_0601111C
	ldrh	r0, [r7, #22]
	cmp	r0, #0
	moveq	r0, #5
	beq	_0601111C
	cmp	r0, #255	; 0xff
	movhi	r0, #5
	bhi	_0601111C
	ldrh	r0, [r7, #24]
	cmp	r0, #2000	; 0x7d0
	movhi	r0, #5
	bhi	_0601111C
	cmp	r0, #10
	movcc	r0, #5
	bcc	_0601111C
	mov	r0, #48	; 0x30
	bl	FUN_0600AF68
	bl	FUN_0600B054
	ldrh	r0, [r7, #22]
	strh	r0, [r5, #112]	; 0x70
	ldrh	r0, [r7, #22]
	strh	r0, [r5, #114]	; 0x72
	str	r7, [r4, #24]
	str	r6, [r4, #28]
	mov	r0, #80	; 0x50
	strh	r0, [r4]
	bl	FUN_0601069C
	mov	r0, #128	; 0x80
_0601111C:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, lr}
	bx	lr
_06011128:	.word	0x0380FFF4
_0601112C:	.word	0x00000404

	arm_func_start FUN_06011130
FUN_06011130: ; 0x06011130
	stmdb	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #4
	mov	r7, r0
	mov	r6, r1
	ldr	r2, _06011270	; =0x0380FFF4
	ldr	r1, [r2]
	ldr	r0, _06011274	; =0x00000404
	add	r5, r1, r0
	mov	r0, #4
	strh	r0, [r6, #2]
	ldr	r2, [r2]
	add	r0, r2, #768	; 0x300
	ldrh	r1, [r0, #46]	; 0x2e
	cmp	r1, #3
	beq	_06011180
	cmp	r1, #2
	beq	_06011180
	cmp	r1, #1
	movne	r0, #11
	bne	_06011264
_06011180:
	add	r0, r2, #768	; 0x300
	ldrh	r0, [r0, #76]	; 0x4c
	cmp	r0, #48	; 0x30
	movcc	r0, #1
	bcc	_06011264
	ldr	r0, _06011278	; =0x0000FFFE
	add	r0, r1, r0
	mov	r0, r0, lsl #16
	mov	r0, r0, lsr #16
	cmp	r0, #1
	bhi	_060111BC
	ldrh	r0, [r7, #16]
	ands	r0, r0, #1
	movne	r0, #5
	bne	_06011264
_060111BC:
	add	r0, r6, #6
	add	r1, r7, #16
	bl	FUN_0600AF4C
	add	r0, r6, #6
	ldrh	r1, [r7, #22]
	mov	r2, #0
	bl	FUN_06013E9C
	movs	r4, r0
	moveq	r0, #8
	beq	_06011264
	str	r7, [r5, #24]
	str	r6, [r5, #28]
	str	r4, [r5, #4]
	mov	r0, #65	; 0x41
	strh	r0, [r5]
	ldrh	r0, [r7, #16]
	ands	r0, r0, #1
	beq	_06011250
	ldr	r1, _06011270	; =0x0380FFF4
	ldr	r0, [r1]
	ldr	r0, [r0, #1004]	; 0x3ec
	strh	r0, [r4, #4]
	ldr	r0, [r1]
	add	r0, r0, #392	; 0x188
	sub	r1, r4, #16
	bl	FUN_0600F45C
	ldr	r0, _06011270	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #1280	; 0x500
	ldrh	r1, [r0, #46]	; 0x2e
	ldrh	r0, [r0, #50]	; 0x32
	mvn	r0, r0
	ands	r0, r1, r0
	bne	_06011260
	mov	r0, #2
	bl	FUN_06015C78
	b	_06011260
_06011250:
	add	r0, r7, #16
	bl	FUN_06014E14
	mov	r0, r4
	bl	FUN_06014C6C
_06011260:
	mov	r0, #128	; 0x80
_06011264:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, lr}
	bx	lr
_06011270:	.word	0x0380FFF4
_06011274:	.word	0x00000404
_06011278:	.word	0x0000FFFE

	arm_func_start FUN_0601127C
FUN_0601127C: ; 0x0601127C
	stmdb	sp!, {r4, r5, r6, lr}
	mov	r6, r0
	mov	r5, r1
	ldr	r0, _06011350	; =0x0380FFF4
	ldr	r1, [r0]
	add	r2, r1, #836	; 0x344
	ldr	r0, _06011354	; =0x00000404
	add	r4, r1, r0
	mov	r0, #6
	strh	r0, [r5, #2]
	add	r0, r1, #768	; 0x300
	ldrh	r0, [r0, #46]	; 0x2e
	cmp	r0, #3
	beq	_060112C0
	cmp	r0, #2
	movne	r0, #11
	bne	_06011348
_060112C0:
	ldrh	r0, [r2, #8]
	cmp	r0, #32
	movcc	r0, #1
	bcc	_06011348
	ldrh	r0, [r6, #16]
	ands	r0, r0, #1
	movne	r0, #5
	bne	_06011348
	ldrh	r0, [r6, #22]
	cmp	r0, #1
	movhi	r0, #5
	bhi	_06011348
	ldrh	r0, [r6, #24]
	cmp	r0, #2000	; 0x7d0
	movhi	r0, #5
	bhi	_06011348
	cmp	r0, #10
	movcc	r0, #5
	bcc	_06011348
	mov	r0, #32
	bl	FUN_0600AF68
	str	r6, [r4, #24]
	str	r5, [r4, #28]
	mov	r0, #48	; 0x30
	strh	r0, [r4]
	ldr	r0, [r4, #24]
	ldrh	r0, [r0, #22]
	strh	r0, [r5, #14]
	add	r0, r5, #8
	ldr	r1, [r4, #24]
	add	r1, r1, #16
	bl	FUN_0600AF4C
	bl	FUN_060107A4
	mov	r0, #128	; 0x80
_06011348:
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr
_06011350:	.word	0x0380FFF4
_06011354:	.word	0x00000404

	arm_func_start FUN_06011358
FUN_06011358: ; 0x06011358
	stmdb	sp!, {r4, r5, r6, lr}
	mov	r6, r0
	mov	r5, r1
	ldr	r0, _0601150C	; =0x0380FFF4
	ldr	r1, [r0]
	add	r2, r1, #836	; 0x344
	ldr	r0, _06011510	; =0x00000404
	add	r4, r1, r0
	mov	r0, #5
	strh	r0, [r5, #2]
	add	r0, r1, #768	; 0x300
	ldrh	r0, [r0, #46]	; 0x2e
	cmp	r0, #3
	beq	_0601139C
	cmp	r0, #2
	movne	r0, #11
	bne	_06011504
_0601139C:
	ldrh	r0, [r2, #8]
	cmp	r0, #32
	movcc	r0, #1
	bcc	_06011504
	mov	r0, #32
	bl	FUN_0600AF68
	ldrh	r0, [r6, #24]
	ands	r0, r0, #1
	movne	r0, #5
	bne	_06011504
	ldrh	r0, [r6, #30]
	cmp	r0, #0
	moveq	r0, #5
	beq	_06011504
	cmp	r0, #32
	movhi	r0, #5
	bhi	_06011504
	ldrh	r0, [r6, #70]	; 0x46
	cmp	r0, #10
	movcc	r0, #5
	bcc	_06011504
	cmp	r0, #1000	; 0x3e8
	movhi	r0, #5
	bhi	_06011504
	ldrh	r0, [r6, #72]	; 0x48
	cmp	r0, #255	; 0xff
	movhi	r0, #5
	bhi	_06011504
	ldrh	r0, [r6, #74]	; 0x4a
	ldr	r1, _06011514	; =0x0000FFF0
	ands	r1, r0, r1
	movne	r0, #5
	bne	_06011504
	bl	FUN_0600AB58
	cmp	r0, #0
	moveq	r0, #5
	beq	_06011504
	ldrh	r2, [r6, #66]	; 0x42
	mov	r0, #4096	; 0x1000
	rsb	r0, r0, #0
	ands	r1, r2, r0
	movne	r0, #5
	bne	_06011504
	ldrh	r1, [r6, #68]	; 0x44
	ands	r0, r1, r0
	movne	r0, #5
	bne	_06011504
	cmp	r2, #0
	moveq	r0, #5
	beq	_06011504
	orrs	r0, r1, r2
	moveq	r0, #5
	beq	_06011504
	ldrh	r0, [r6, #16]
	cmp	r0, #2000	; 0x7d0
	movhi	r0, #5
	bhi	_06011504
	mov	r0, #0
	bl	FUN_060191BC
	cmp	r0, #0
	movne	r0, #14
	bne	_06011504
	ldrh	r0, [r6, #64]	; 0x40
	ands	r0, r0, #32
	beq	_060114AC
	mov	r0, #1
	bl	FUN_0600BE0C
	b	_060114B4
_060114AC:
	mov	r0, #0
	bl	FUN_0600BE0C
_060114B4:
	add	r0, r6, #24
	bl	FUN_0600BB58
	ldrh	r0, [r6, #30]
	add	r1, r6, #32
	bl	FUN_0600BA3C
	ldrh	r0, [r6, #70]	; 0x46
	bl	FUN_0600B9DC
	ldrh	r0, [r6, #74]	; 0x4a
	mov	r1, #0
	bl	FUN_0600B570
	add	r0, r6, #66	; 0x42
	bl	FUN_0600B528
	str	r6, [r4, #24]
	str	r5, [r4, #28]
	mov	r0, #32
	strh	r0, [r4]
	mov	r0, #2
	mov	r1, #1
	bl	FUN_06009078
	mov	r0, #128	; 0x80
_06011504:
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr
_0601150C:	.word	0x0380FFF4
_06011510:	.word	0x00000404
_06011514:	.word	0x0000FFF0

	arm_func_start FUN_06011518
FUN_06011518: ; 0x06011518
	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r6, r0
	mov	r5, r1
	ldr	r0, _0601165C	; =0x0380FFF4
	ldr	r1, [r0]
	ldr	r0, _06011660	; =0x00000404
	add	r4, r1, r0
	ldrh	r0, [r5, #2]
	sub	r0, r0, #3
	strh	r0, [r4, #4]
	mov	r0, #3
	strh	r0, [r5, #2]
	add	r0, r1, #768	; 0x300
	ldrh	r0, [r0, #46]	; 0x2e
	cmp	r0, #1
	beq	_0601156C
	cmp	r0, #3
	beq	_0601156C
	cmp	r0, #2
	movne	r0, #11
	bne	_06011654
_0601156C:
	ldr	r0, _0601165C	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #76]	; 0x4c
	cmp	r0, #32
	movcc	r0, #1
	bcc	_06011654
	ldrh	r0, [r6, #22]
	cmp	r0, #32
	movhi	r0, #5
	bhi	_06011654
	ldrh	r0, [r6, #56]	; 0x38
	cmp	r0, #1
	movhi	r0, #5
	bhi	_06011654
	add	r0, r6, #58	; 0x3a
	bl	FUN_06009CB0
	cmp	r0, #0
	moveq	r0, #5
	beq	_06011654
	ldrh	r0, [r6, #74]	; 0x4a
	cmp	r0, #1000	; 0x3e8
	movhi	r0, #5
	bhi	_06011654
	cmp	r0, #10
	movcc	r0, #5
	bcc	_06011654
	ldrh	r0, [r6, #76]	; 0x4c
	cmp	r0, #16
	movhi	r0, #5
	bhi	_06011654
	mov	r8, #0
	add	r7, r6, #58	; 0x3a
	b	_06011618
_060115F4:
	add	r0, r7, r8
	bl	FUN_06009CB0
	cmp	r0, #0
	beq	_06011620
	bl	FUN_0600AB58
	cmp	r0, #0
	moveq	r0, #5
	beq	_06011654
	add	r8, r8, #1
_06011618:
	cmp	r8, #16
	bcc	_060115F4
_06011620:
	add	r0, r6, #16
	bl	FUN_0600BB58
	ldrh	r0, [r6, #22]
	add	r1, r6, #24
	bl	FUN_0600BA3C
	str	r6, [r4, #24]
	str	r5, [r4, #28]
	mov	r0, #16
	strh	r0, [r4]
	mov	r0, #2
	mov	r1, #0
	bl	FUN_06009078
	mov	r0, #128	; 0x80
_06011654:
	ldmia	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
_0601165C:	.word	0x0380FFF4
_06011660:	.word	0x00000404

	arm_func_start FUN_06011664
FUN_06011664: ; 0x06011664
	stmdb	sp!, {r4, lr}
	mov	r4, r0
	mov	r0, #9
	strh	r0, [r1, #2]
	ldrh	r0, [r4, #16]
	cmp	r0, #1
	movhi	r0, #5
	bhi	_06011700
	ldrh	r1, [r4, #18]
	cmp	r1, #1
	movhi	r0, #5
	bhi	_06011700
	ldrh	r1, [r4, #20]
	cmp	r1, #1
	movhi	r0, #5
	bhi	_06011700
	bl	FUN_0600B420
	ldrh	r0, [r4, #16]
	cmp	r0, #1
	bne	_060116EC
	ldrh	r0, [r4, #18]
	cmp	r0, #1
	bne	_060116CC
	ldr	r0, _06011708	; =0x00008001
	bl	FUN_0600B3E0
	b	_060116D4
_060116CC:
	mov	r0, #0
	bl	FUN_0600B3E0
_060116D4:
	ldrh	r1, [r4, #20]
	ldr	r0, _0601170C	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	strh	r1, [r0, #88]	; 0x58
	b	_060116FC
_060116EC:
	mov	r0, #32768	; 0x8000
	bl	FUN_0600B3E0
	mov	r0, #2
	bl	FUN_0600B3F4
_060116FC:
	mov	r0, #0
_06011700:
	ldmia	sp!, {r4, lr}
	bx	lr
_06011708:	.word	0x00008001
_0601170C:	.word	0x0380FFF4

	arm_func_start FUN_06011710
FUN_06011710: ; 0x06011710
	stmdb	sp!, {r4, lr}
	mov	r4, r0
	mov	r0, #1
	strh	r0, [r1, #2]
	ldrh	r0, [r4, #16]
	cmp	r0, #1
	movhi	r0, #5
	bhi	_06011748
	bl	FUN_0600A4EC
	ldrh	r0, [r4, #16]
	cmp	r0, #1
	bne	_06011744
	bl	FUN_0600AE88
_06011744:
	mov	r0, #0
_06011748:
	ldmia	sp!, {r4, lr}
	bx	lr

	arm_func_start FUN_06011750
FUN_06011750: ; 0x06011750
	stmdb	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #4
	mov	r4, r1
	ldrh	r0, [r4, #2]
	cmp	r0, #1
	ldrhi	r0, _06011830	; =0x0380FFF4
	ldrhi	r0, [r0]
	addhi	r0, r0, #768	; 0x300
	ldrhih	r0, [r0, #228]	; 0xe4
	strhih	r0, [r4, #6]
	ldr	r0, _06011830	; =0x0380FFF4
	ldr	r3, [r0]
	add	r0, r3, #768	; 0x300
	ldrh	r2, [r0, #228]	; 0xe4
	ldrh	r1, [r4, #2]
	sub	r1, r1, #2
	cmp	r2, r1, lsl #1
	movgt	r0, #4
	bgt	_06011824
	ldrh	r2, [r4, #6]
	cmp	r2, #0
	beq	_06011808
	ldrh	r0, [r0, #230]	; 0xe6
	ands	r0, r0, #1
	beq	_060117F8
	ldr	r0, [r3, #992]	; 0x3e0
	add	r7, r0, #1
	add	r6, r4, #8
	mov	r5, #0
	b	_060117E8
_060117C8:
	mov	r0, r7
	bl	FUN_06009CB0
	mov	r1, r0
	mov	r0, r6
	bl	FUN_06009CD0
	add	r6, r6, #1
	add	r7, r7, #1
	add	r5, r5, #1
_060117E8:
	ldrh	r0, [r4, #6]
	cmp	r5, r0
	bcc	_060117C8
	b	_06011808
_060117F8:
	ldr	r0, [r3, #992]	; 0x3e0
	add	r1, r4, #8
	add	r2, r2, #1
	bl	FUN_06000EA0
_06011808:
	ldrh	r0, [r4, #6]
	add	r0, r0, #1
	mov	r1, #2
	bl	FUN_06001840
	add	r0, r0, #2
	strh	r0, [r4, #2]
	mov	r0, #0
_06011824:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, lr}
	bx	lr
_06011830:	.word	0x0380FFF4

	arm_func_start FUN_06011834
FUN_06011834: ; 0x06011834
	mov	r0, #2
	strh	r0, [r1, #2]
	ldr	r0, _06011858	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #180]	; 0xb4
	strh	r0, [r1, #6]
	mov	r0, #0
	bx	lr
_06011858:	.word	0x0380FFF4

	arm_func_start FUN_0601185C
FUN_0601185C: ; 0x0601185C
	mov	r0, #2
	strh	r0, [r1, #2]
	ldr	r0, _06011880	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #184]	; 0xb8
	strh	r0, [r1, #6]
	mov	r0, #0
	bx	lr
_06011880:	.word	0x0380FFF4

	arm_func_start FUN_06011884
FUN_06011884: ; 0x06011884
	mov	r0, #2
	strh	r0, [r1, #2]
	ldr	r0, _060118A8	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #178]	; 0xb2
	strh	r0, [r1, #6]
	mov	r0, #0
	bx	lr
_060118A8:	.word	0x0380FFF4

	arm_func_start FUN_060118AC
FUN_060118AC: ; 0x060118AC
	mov	r0, #18
	strh	r0, [r1, #2]
	ldr	r2, _060118F4	; =0x0380FFF4
	ldr	r0, [r2]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #98]	; 0x62
	strh	r0, [r1, #6]
	add	r3, r1, #8
	ldr	r0, [r2]
	add	r1, r0, #868	; 0x364
	mov	r2, #0
_060118D8:
	ldrh	r0, [r1], #2
	strh	r0, [r3], #2
	add	r2, r2, #2
	cmp	r2, #32
	bcc	_060118D8
	mov	r0, #0
	bx	lr
_060118F4:	.word	0x0380FFF4

	arm_func_start FUN_060118F8
FUN_060118F8: ; 0x060118F8
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	mov	r0, #4
	strh	r0, [r1, #2]
	add	r0, r1, #6
	ldr	r1, _0601192C	; =0x0380FFF4
	ldr	r1, [r1]
	add	r1, r1, #936	; 0x3a8
	bl	FUN_0600AF4C
	mov	r0, #0
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_0601192C:	.word	0x0380FFF4

	arm_func_start FUN_06011930
FUN_06011930: ; 0x06011930
	mov	r0, #2
	strh	r0, [r1, #2]
	ldr	r0, _06011968	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r2, [r0, #76]	; 0x4c
	cmp	r2, #16
	movcc	r0, #1
	ldrcsh	r0, [r0, #58]	; 0x3a
	movcs	r0, r0, lsl #24
	movcs	r0, r0, lsr #31
	strcsh	r0, [r1, #6]
	movcs	r0, #0
	bx	lr
_06011968:	.word	0x0380FFF4

	arm_func_start FUN_0601196C
FUN_0601196C: ; 0x0601196C
	mov	r0, #2
	strh	r0, [r1, #2]
	ldr	r0, _060119A4	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r2, [r0, #76]	; 0x4c
	cmp	r2, #16
	movcc	r0, #1
	ldrcsh	r0, [r0, #58]	; 0x3a
	movcs	r0, r0, lsl #25
	movcs	r0, r0, lsr #31
	strcsh	r0, [r1, #6]
	movcs	r0, #0
	bx	lr
_060119A4:	.word	0x0380FFF4

	arm_func_start FUN_060119A8
FUN_060119A8: ; 0x060119A8
	mov	r0, #3
	strh	r0, [r1, #2]
	ldr	r3, _06011A04	; =0x0380FFF4
	ldr	r0, [r3]
	add	r0, r0, #768	; 0x300
	ldrh	r2, [r0, #76]	; 0x4c
	cmp	r2, #16
	movcc	r0, #1
	bxcc	lr
	ldrh	r0, [r0, #58]	; 0x3a
	mov	r0, r0, lsl #27
	mov	r0, r0, lsr #31
	strh	r0, [r1, #6]
	ldr	r0, [r3]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #58]	; 0x3a
	mov	r2, r0, lsl #26
	mov	r2, r2, lsr #31
	mov	r0, r0, lsl #28
	eor	r0, r2, r0, lsr #31
	strh	r0, [r1, #8]
	mov	r0, #0
	bx	lr
_06011A04:	.word	0x0380FFF4

	arm_func_start FUN_06011A08
FUN_06011A08: ; 0x06011A08
	mov	r0, #2
	strh	r0, [r1, #2]
	ldr	r0, _06011A40	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r2, [r0, #76]	; 0x4c
	cmp	r2, #16
	movcc	r0, #1
	ldrcsh	r0, [r0, #58]	; 0x3a
	movcs	r0, r0, lsl #28
	movcs	r0, r0, lsr #31
	strcsh	r0, [r1, #6]
	movcs	r0, #0
	bx	lr
_06011A40:	.word	0x0380FFF4

	arm_func_start FUN_06011A44
FUN_06011A44: ; 0x06011A44
	mov	r0, #2
	strh	r0, [r1, #2]
	ldr	r0, _06011A6C	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #34]	; 0x22
	sub	r0, r0, #1
	strh	r0, [r1, #6]
	mov	r0, #0
	bx	lr
_06011A6C:	.word	0x0380FFF4

	arm_func_start FUN_06011A70
FUN_06011A70: ; 0x06011A70
	stmdb	sp!, {r4, lr}
	mov	r4, r1
	mov	r0, #4
	strh	r0, [r4, #2]
	mov	r0, #19
	bl	FUN_0600A4B8
	strh	r0, [r4, #6]
	mov	r0, #53	; 0x35
	bl	FUN_0600A4B8
	strh	r0, [r4, #8]
	mov	r0, #46	; 0x2e
	bl	FUN_0600A4B8
	strh	r0, [r4, #10]
	mov	r0, #0
	ldmia	sp!, {r4, lr}
	bx	lr
	mov	r0, #2
	strh	r0, [r1, #2]
	ldr	r0, _06011AD4	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #50]	; 0x32
	strh	r0, [r1, #6]
	mov	r0, #0
	bx	lr
_06011AD4:	.word	0x0380FFF4

	arm_func_start FUN_06011AD8
FUN_06011AD8: ; 0x06011AD8
	mov	r0, #2
	strh	r0, [r1, #2]
	ldr	r0, _06011B04	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #58]	; 0x3a
	mov	r0, r0, lsl #29
	mov	r0, r0, lsr #31
	strh	r0, [r1, #6]
	mov	r0, #0
	bx	lr
_06011B04:	.word	0x0380FFF4

	arm_func_start FUN_06011B08
FUN_06011B08: ; 0x06011B08
	mov	r0, #17
	strh	r0, [r1, #2]
	add	r2, r1, #6
	ldr	r0, _06011B40	; =0x0380FFF4
	ldr	r0, [r0]
	add	r1, r0, #900	; 0x384
	mov	r3, #0
_06011B24:
	ldrh	r0, [r1], #2
	strh	r0, [r2], #2
	add	r3, r3, #1
	cmp	r3, #16
	bcc	_06011B24
	mov	r0, #0
	bx	lr
_06011B40:	.word	0x0380FFF4

	arm_func_start FUN_06011B44
FUN_06011B44: ; 0x06011B44
	mov	r0, #2
	strh	r0, [r1, #2]
	ldr	r0, _06011B68	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #60]	; 0x3c
	strh	r0, [r1, #6]
	mov	r0, #0
	bx	lr
_06011B68:	.word	0x0380FFF4

	arm_func_start FUN_06011B6C
FUN_06011B6C: ; 0x06011B6C
	mov	r0, #2
	strh	r0, [r1, #2]
	ldr	r0, _06011B90	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #194]	; 0xc2
	strh	r0, [r1, #6]
	mov	r0, #0
	bx	lr
_06011B90:	.word	0x0380FFF4

	arm_func_start FUN_06011B94
FUN_06011B94: ; 0x06011B94
	mov	r0, #2
	strh	r0, [r1, #2]
	ldr	r0, _06011BC0	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #58]	; 0x3a
	mov	r0, r0, lsl #30
	mov	r0, r0, lsr #31
	strh	r0, [r1, #6]
	mov	r0, #0
	bx	lr
_06011BC0:	.word	0x0380FFF4

	arm_func_start FUN_06011BC4
FUN_06011BC4: ; 0x06011BC4
	mov	r0, #2
	strh	r0, [r1, #2]
	ldr	r0, _06011BF0	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #58]	; 0x3a
	mov	r0, r0, lsl #31
	mov	r0, r0, lsr #31
	strh	r0, [r1, #6]
	mov	r0, #0
	bx	lr
_06011BF0:	.word	0x0380FFF4

	arm_func_start FUN_06011BF4
FUN_06011BF4: ; 0x06011BF4
	mov	r0, #2
	strh	r0, [r1, #2]
	ldr	r0, _06011C18	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #54]	; 0x36
	strh	r0, [r1, #6]
	mov	r0, #0
	bx	lr
_06011C18:	.word	0x0380FFF4

	arm_func_start FUN_06011C1C
FUN_06011C1C: ; 0x06011C1C
	mov	r0, #2
	strh	r0, [r1, #2]
	ldr	r0, _06011C40	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #52]	; 0x34
	strh	r0, [r1, #6]
	mov	r0, #0
	bx	lr
_06011C40:	.word	0x0380FFF4

	arm_func_start FUN_06011C44
FUN_06011C44: ; 0x06011C44
	mov	r0, #2
	strh	r0, [r1, #2]
	ldr	r0, _06011C68	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #48]	; 0x30
	strh	r0, [r1, #6]
	mov	r0, #0
	bx	lr
_06011C68:	.word	0x0380FFF4

	arm_func_start FUN_06011C6C
FUN_06011C6C: ; 0x06011C6C
	mov	r0, #2
	strh	r0, [r1, #2]
	ldr	r0, _06011C90	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #46]	; 0x2e
	strh	r0, [r1, #6]
	mov	r0, #0
	bx	lr
_06011C90:	.word	0x0380FFF4

	arm_func_start FUN_06011C94
FUN_06011C94: ; 0x06011C94
	mov	r0, #3
	strh	r0, [r1, #2]
	ldr	r2, _06011CC8	; =0x0380FFF4
	ldr	r0, [r2]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #44]	; 0x2c
	strh	r0, [r1, #6]
	ldr	r0, [r2]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #190]	; 0xbe
	strh	r0, [r1, #8]
	mov	r0, #0
	bx	lr
_06011CC8:	.word	0x0380FFF4

	arm_func_start FUN_06011CCC
FUN_06011CCC: ; 0x06011CCC
	mov	r0, #2
	strh	r0, [r1, #2]
	ldr	r0, _06011CF0	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #42]	; 0x2a
	strh	r0, [r1, #6]
	mov	r0, #0
	bx	lr
_06011CF0:	.word	0x0380FFF4

	arm_func_start FUN_06011CF4
FUN_06011CF4: ; 0x06011CF4
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	mov	r0, #4
	strh	r0, [r1, #2]
	add	r0, r1, #6
	ldr	r1, _06011D28	; =0x0380FFF4
	ldr	r1, [r1]
	add	r1, r1, #804	; 0x324
	bl	FUN_0600AF4C
	mov	r0, #0
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_06011D28:	.word	0x0380FFF4

	arm_func_start FUN_06011D2C
FUN_06011D2C: ; 0x06011D2C
	stmdb	sp!, {r4, lr}
	mov	r4, r1
	mov	r0, #33	; 0x21
	strh	r0, [r4, #2]
	add	r0, r4, #6
	ldr	r1, _06011E60	; =0x0380FFF4
	ldr	r1, [r1]
	add	r1, r1, #804	; 0x324
	bl	FUN_0600AF4C
	ldr	r0, _06011E60	; =0x0380FFF4
	ldr	r1, [r0]
	add	r1, r1, #768	; 0x300
	ldrh	r1, [r1, #42]	; 0x2a
	strh	r1, [r4, #12]
	ldr	r1, [r0]
	add	r1, r1, #768	; 0x300
	ldrh	r1, [r1, #44]	; 0x2c
	strh	r1, [r4, #14]
	ldr	r1, [r0]
	add	r1, r1, #768	; 0x300
	ldrh	r1, [r1, #190]	; 0xbe
	strh	r1, [r4, #16]
	ldr	r1, [r0]
	add	r1, r1, #768	; 0x300
	ldrh	r1, [r1, #46]	; 0x2e
	strh	r1, [r4, #18]
	ldr	r1, [r0]
	add	r1, r1, #768	; 0x300
	ldrh	r1, [r1, #48]	; 0x30
	strh	r1, [r4, #20]
	ldr	r1, [r0]
	add	r1, r1, #768	; 0x300
	ldrh	r1, [r1, #52]	; 0x34
	strh	r1, [r4, #22]
	ldr	r1, [r0]
	add	r1, r1, #768	; 0x300
	ldrh	r1, [r1, #54]	; 0x36
	strh	r1, [r4, #24]
	ldr	r1, [r0]
	add	r1, r1, #768	; 0x300
	ldrh	r1, [r1, #58]	; 0x3a
	mov	r1, r1, lsl #31
	mov	r1, r1, lsr #31
	strh	r1, [r4, #26]
	ldr	r1, [r0]
	add	r1, r1, #768	; 0x300
	ldrh	r1, [r1, #58]	; 0x3a
	mov	r1, r1, lsl #30
	mov	r1, r1, lsr #31
	strh	r1, [r4, #28]
	ldr	r1, [r0]
	add	r1, r1, #768	; 0x300
	ldrh	r1, [r1, #194]	; 0xc2
	strh	r1, [r4, #30]
	ldr	r1, [r0]
	add	r1, r1, #768	; 0x300
	ldrh	r1, [r1, #60]	; 0x3c
	strh	r1, [r4, #32]
	ldr	r0, [r0]
	add	r0, r0, #900	; 0x384
	add	r1, r4, #34	; 0x22
	mov	r2, #32
	bl	FUN_06000EA0
	ldr	r1, _06011E60	; =0x0380FFF4
	ldr	r0, [r1]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #58]	; 0x3a
	mov	r0, r0, lsl #29
	mov	r0, r0, lsr #31
	strh	r0, [r4, #66]	; 0x42
	ldr	r0, [r1]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #50]	; 0x32
	strh	r0, [r4, #68]	; 0x44
	mov	r0, #0
	ldmia	sp!, {r4, lr}
	bx	lr
_06011E60:	.word	0x0380FFF4

	arm_func_start FUN_06011E64
FUN_06011E64: ; 0x06011E64
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	mov	r4, r0
	mov	r0, #1
	strh	r0, [r1, #2]
	ldr	r0, _06011ED0	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #46]	; 0x2e
	cmp	r0, #1
	movne	r0, #11
	bne	_06011EC4
	ldrh	r5, [r4, #16]
	add	r0, r5, #1
	mov	r1, #2
	bl	FUN_06001840
	ldrh	r1, [r4, #14]
	add	r0, r0, #1
	cmp	r1, r0
	movlt	r0, #4
	blt	_06011EC4
	mov	r0, r5
	add	r1, r4, #18
	bl	FUN_0600B0F4
_06011EC4:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_06011ED0:	.word	0x0380FFF4

	arm_func_start FUN_06011ED4
FUN_06011ED4: ; 0x06011ED4
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	mov	r2, #1
	strh	r2, [r1, #2]
	ldr	r1, _06011F1C	; =0x0380FFF4
	ldr	r1, [r1]
	add	r1, r1, #768	; 0x300
	ldrh	r1, [r1, #46]	; 0x2e
	cmp	r1, #2
	beq	_06011F08
	cmp	r1, #3
	movne	r0, #11
	bne	_06011F10
_06011F08:
	ldrh	r0, [r0, #16]
	bl	FUN_0600B95C
_06011F10:
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_06011F1C:	.word	0x0380FFF4

	arm_func_start FUN_06011F20
FUN_06011F20: ; 0x06011F20
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	mov	r2, #1
	strh	r2, [r1, #2]
	ldr	r1, _06011F60	; =0x0380FFF4
	ldr	r1, [r1]
	add	r1, r1, #768	; 0x300
	ldrh	r1, [r1, #46]	; 0x2e
	cmp	r1, #1
	movne	r0, #11
	bne	_06011F54
	ldrh	r0, [r0, #16]
	bl	FUN_0600B990
_06011F54:
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_06011F60:	.word	0x0380FFF4

	arm_func_start FUN_06011F64
FUN_06011F64: ; 0x06011F64
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	mov	r2, #1
	strh	r2, [r1, #2]
	ldr	r1, _06011FA4	; =0x0380FFF4
	ldr	r1, [r1]
	add	r1, r1, #768	; 0x300
	ldrh	r1, [r1, #46]	; 0x2e
	cmp	r1, #1
	movne	r0, #11
	bne	_06011F98
	ldrh	r0, [r0, #16]
	bl	FUN_0600B9DC
_06011F98:
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_06011FA4:	.word	0x0380FFF4

	arm_func_start FUN_06011FA8
FUN_06011FA8: ; 0x06011FA8
	mov	r2, r0
	mov	r0, #1
	strh	r0, [r1, #2]
	ldrh	r0, [r2, #16]
	add	r1, r2, #18
	ldr	ip, _06011FC4	; =FUN_0600BA3C
	bx	ip
_06011FC4:	.word	FUN_0600BA3C

	arm_func_start FUN_06011FC8
FUN_06011FC8: ; 0x06011FC8
	mov	r2, #1
	strh	r2, [r1, #2]
	add	r0, r0, #16
	ldr	ip, _06011FDC	; =FUN_0600BB58
	bx	ip
_06011FDC:	.word	FUN_0600BB58

	arm_func_start FUN_06011FE0
FUN_06011FE0: ; 0x06011FE0
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	mov	r2, #1
	strh	r2, [r1, #2]
	ldr	r1, _06012024	; =0x0380FFF4
	ldr	r1, [r1]
	add	r1, r1, #768	; 0x300
	ldrh	r1, [r1, #76]	; 0x4c
	cmp	r1, #16
	bcc	_06012014
	ldrh	r0, [r0, #16]
	bl	FUN_0600BBC0
	mov	r2, r0
_06012014:
	mov	r0, r2
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_06012024:	.word	0x0380FFF4

	arm_func_start FUN_06012028
FUN_06012028: ; 0x06012028
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	mov	r2, #1
	strh	r2, [r1, #2]
	ldr	r1, _0601206C	; =0x0380FFF4
	ldr	r1, [r1]
	add	r1, r1, #768	; 0x300
	ldrh	r1, [r1, #76]	; 0x4c
	cmp	r1, #16
	bcc	_0601205C
	ldrh	r0, [r0, #16]
	bl	FUN_0600BC1C
	mov	r2, r0
_0601205C:
	mov	r0, r2
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_0601206C:	.word	0x0380FFF4

	arm_func_start FUN_06012070
FUN_06012070: ; 0x06012070
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	mov	r2, r0
	mov	r0, #1
	strh	r0, [r1, #2]
	ldr	r1, _060120B4	; =0x0380FFF4
	ldr	r1, [r1]
	add	r1, r1, #768	; 0x300
	ldrh	r1, [r1, #76]	; 0x4c
	cmp	r1, #16
	bcc	_060120A8
	ldrh	r0, [r2, #16]
	ldrh	r1, [r2, #18]
	bl	FUN_0600BC5C
_060120A8:
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_060120B4:	.word	0x0380FFF4

	arm_func_start FUN_060120B8
FUN_060120B8: ; 0x060120B8
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	mov	r2, #1
	strh	r2, [r1, #2]
	ldr	r1, _060120FC	; =0x0380FFF4
	ldr	r1, [r1]
	add	r1, r1, #768	; 0x300
	ldrh	r1, [r1, #76]	; 0x4c
	cmp	r1, #16
	bcc	_060120EC
	ldrh	r0, [r0, #16]
	bl	FUN_0600BD38
	mov	r2, r0
_060120EC:
	mov	r0, r2
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_060120FC:	.word	0x0380FFF4

	arm_func_start FUN_06012100
FUN_06012100: ; 0x06012100
	mov	r3, #1
	strh	r3, [r1, #2]
	ldr	r2, _06012154	; =0x0380FFF4
	ldr	r1, [r2]
	add	r1, r1, #768	; 0x300
	ldrh	r1, [r1, #76]	; 0x4c
	cmp	r1, #32
	movhi	r0, r3
	bxhi	lr
	ldrh	r1, [r0, #16]
	add	r1, r1, #1
	strh	r1, [r0, #16]
	ldr	r1, [r2]
	ldrh	r2, [r0, #16]
	add	r0, r1, #768	; 0x300
	ldrh	r1, [r0, #32]
	cmp	r2, r1
	movhi	r0, #5
	strlsh	r2, [r0, #34]	; 0x22
	movls	r0, #0
	bx	lr
_06012154:	.word	0x0380FFF4

	arm_func_start FUN_06012158
FUN_06012158: ; 0x06012158
	stmdb	sp!, {r4, lr}
	ldr	ip, _0601225C	; =0x0380FFF4
	ldr	r2, [ip]
	ldr	r2, [r2, #796]	; 0x31c
	mov	r3, #1
	strh	r3, [r1, #2]
	ldrh	r1, [r0, #16]
	ldr	r3, [ip]
	add	r3, r3, #768	; 0x300
	ldrh	r3, [r3, #34]	; 0x22
	cmp	r1, r3
	bcc	_06012198
	ldr	r3, _06012260	; =0x0000FFFF
	cmp	r1, r3
	movne	r0, #5
	bne	_06012254
_06012198:
	ldrh	ip, [r0, #20]
	cmp	ip, #63	; 0x3f
	bls	_060121B4
	ldr	r3, _06012260	; =0x0000FFFF
	cmp	ip, r3
	movne	r0, #5
	bne	_06012254
_060121B4:
	ldr	r3, _06012260	; =0x0000FFFF
	cmp	r1, r3
	bne	_06012208
	mov	r4, #1
	ldr	ip, _0601225C	; =0x0380FFF4
	mov	r3, #28
	b	_060121F0
_060121D0:
	mla	lr, r4, r3, r2
	ldrh	r1, [r0, #18]
	strh	r1, [lr, #26]
	ldrh	r1, [lr, #24]
	cmp	r1, #0
	ldrneh	r1, [r0, #18]
	strneh	r1, [lr, #24]
	add	r4, r4, #1
_060121F0:
	ldr	r1, [ip]
	add	r1, r1, #768	; 0x300
	ldrh	r1, [r1, #34]	; 0x22
	cmp	r4, r1
	bcc	_060121D0
	b	_06012240
_06012208:
	cmp	r1, #0
	beq	_06012240
	ldrh	lr, [r0, #18]
	mov	r3, #28
	mla	ip, r1, r3, r2
	strh	lr, [ip, #26]
	add	ip, r2, #24
	ldrh	r1, [r0, #16]
	mul	r2, r1, r3
	add	r3, ip, r2
	ldrh	r1, [ip, r2]
	cmp	r1, #0
	ldrneh	r1, [r0, #18]
	strneh	r1, [r3]
_06012240:
	ldrh	r0, [r0, #20]
	cmp	r0, #0
	beq	_06012250
	bl	FUN_0600B270
_06012250:
	mov	r0, #0
_06012254:
	ldmia	sp!, {r4, lr}
	bx	lr
_0601225C:	.word	0x0380FFF4
_06012260:	.word	0x0000FFFF

	arm_func_start FUN_06012264
FUN_06012264: ; 0x06012264
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	mov	r5, r0
	mov	r0, #1
	strh	r0, [r1, #2]
	ldrh	r0, [r5, #20]
	cmp	r0, #63	; 0x3f
	movhi	r0, #5
	bhi	_060122AC
	ldrh	r0, [r5, #16]
	ldrh	r1, [r5, #18]
	bl	FUN_0600BDA0
	movs	r4, r0
	bne	_060122A8
	mov	r0, #46	; 0x2e
	ldrh	r1, [r5, #20]
	bl	FUN_0600A478
_060122A8:
	mov	r0, r4
_060122AC:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr
	mov	r2, #1
	strh	r2, [r1, #2]
	ldrh	r0, [r0, #16]
	ldr	ip, _060122CC	; =FUN_0600BDE8
	bx	ip
_060122CC:	.word	FUN_0600BDE8

	arm_func_start FUN_060122D0
FUN_060122D0: ; 0x060122D0
	mov	r2, #1
	strh	r2, [r1, #2]
	ldrh	r0, [r0, #16]
	ldr	ip, _060122E4	; =FUN_0600BE0C
	bx	ip
_060122E4:	.word	FUN_0600BE0C

	arm_func_start FUN_060122E8
FUN_060122E8: ; 0x060122E8
	mov	r2, #1
	strh	r2, [r1, #2]
	add	r0, r0, #16
	ldr	ip, _060122FC	; =FUN_0600BECC
	bx	ip
_060122FC:	.word	FUN_0600BECC

	arm_func_start FUN_06012300
FUN_06012300: ; 0x06012300
	mov	r2, #1
	strh	r2, [r1, #2]
	ldrh	r0, [r0, #16]
	mov	r1, #0
	ldr	ip, _06012318	; =FUN_0600BEFC
	bx	ip
_06012318:	.word	FUN_0600BEFC

	arm_func_start FUN_0601231C
FUN_0601231C: ; 0x0601231C
	mov	r2, #1
	strh	r2, [r1, #2]
	ldrh	r0, [r0, #16]
	ldr	ip, _06012330	; =FUN_0600BFBC
	bx	ip
_06012330:	.word	FUN_0600BFBC

	arm_func_start FUN_06012334
FUN_06012334: ; 0x06012334
	mov	r2, #1
	strh	r2, [r1, #2]
	ldrh	r0, [r0, #16]
	ldr	ip, _06012348	; =FUN_0600BFF4
	bx	ip
_06012348:	.word	FUN_0600BFF4

	arm_func_start FUN_0601234C
FUN_0601234C: ; 0x0601234C
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	mov	r2, #1
	strh	r2, [r1, #2]
	ldr	r1, _06012390	; =0x0380FFF4
	ldr	r1, [r1]
	add	r1, r1, #768	; 0x300
	ldrh	r1, [r1, #76]	; 0x4c
	cmp	r1, #32
	bhi	_06012380
	ldrh	r0, [r0, #16]
	bl	FUN_0600C02C
	mov	r2, r0
_06012380:
	mov	r0, r2
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_06012390:	.word	0x0380FFF4

	arm_func_start FUN_06012394
FUN_06012394: ; 0x06012394
	mov	r2, #1
	strh	r2, [r1, #2]
	add	r0, r0, #16
	ldr	ip, _060123A8	; =FUN_0600C064
	bx	ip
_060123A8:	.word	FUN_0600C064

	arm_func_start FUN_060123AC
FUN_060123AC: ; 0x060123AC
	mov	r2, #1
	strh	r2, [r1, #2]
	ldrh	r0, [r0, #16]
	ldr	ip, _060123C0	; =FUN_0600C0C8
	bx	ip
_060123C0:	.word	FUN_0600C0C8

	arm_func_start FUN_060123C4
FUN_060123C4: ; 0x060123C4
	mov	r2, #1
	strh	r2, [r1, #2]
	ldrh	r0, [r0, #16]
	ldr	ip, _060123D8	; =FUN_0600C0EC
	bx	ip
_060123D8:	.word	FUN_0600C0EC

	arm_func_start FUN_060123DC
FUN_060123DC: ; 0x060123DC
	mov	r2, #1
	strh	r2, [r1, #2]
	ldrh	r0, [r0, #16]
	ldr	ip, _060123F0	; =FUN_0600C1A0
	bx	ip
_060123F0:	.word	FUN_0600C1A0

	arm_func_start FUN_060123F4
FUN_060123F4: ; 0x060123F4
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	mov	r3, #1
	strh	r3, [r1, #2]
	ldr	r1, _0601244C	; =0x0380FFF4
	ldr	r1, [r1]
	add	r1, r1, #768	; 0x300
	ldrh	r2, [r1, #76]	; 0x4c
	cmp	r2, #32
	movhi	r0, r3
	bhi	_06012440
	cmp	r2, #32
	bne	_06012438
	ldrh	r1, [r1, #86]	; 0x56
	cmp	r1, #0
	movne	r0, r3
	bne	_06012440
_06012438:
	ldrh	r0, [r0, #16]
	bl	FUN_0600C1DC
_06012440:
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_0601244C:	.word	0x0380FFF4

	arm_func_start FUN_06012450
FUN_06012450: ; 0x06012450
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	mov	r2, #1
	strh	r2, [r1, #2]
	ldr	r1, _06012494	; =0x0380FFF4
	ldr	r1, [r1]
	add	r1, r1, #768	; 0x300
	ldrh	r1, [r1, #76]	; 0x4c
	cmp	r1, #16
	bne	_06012484
	ldrh	r0, [r0, #16]
	bl	FUN_0600C264
	mov	r2, r0
_06012484:
	mov	r0, r2
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_06012494:	.word	0x0380FFF4

	arm_func_start FUN_06012498
FUN_06012498: ; 0x06012498
	mov	r2, #1
	strh	r2, [r1, #2]
	ldrh	r0, [r0, #16]
	ldr	ip, _060124AC	; =FUN_0600C2A4
	bx	ip
_060124AC:	.word	FUN_0600C2A4

	arm_func_start FUN_060124B0
FUN_060124B0: ; 0x060124B0
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	mov	r2, #1
	strh	r2, [r1, #2]
	ldr	r1, _060124F4	; =0x0380FFF4
	ldr	r1, [r1]
	add	r1, r1, #768	; 0x300
	ldrh	r1, [r1, #76]	; 0x4c
	cmp	r1, #16
	bne	_060124E4
	add	r0, r0, #16
	bl	FUN_0600C2D8
	mov	r2, r0
_060124E4:
	mov	r0, r2
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_060124F4:	.word	0x0380FFF4

	arm_func_start FUN_060124F8
FUN_060124F8: ; 0x060124F8
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	mov	r5, r0
	mov	r0, #1
	strh	r0, [r1, #2]
	ldr	r1, _060125E8	; =0x0380FFF4
	ldr	r1, [r1]
	add	r1, r1, #768	; 0x300
	ldrh	r1, [r1, #76]	; 0x4c
	cmp	r1, #16
	bne	_060125DC
	add	r0, r5, #16
	bl	FUN_0600C2D8
	mov	r4, r0
	ldrh	r0, [r5, #22]
	bl	FUN_0600C2A4
	orr	r4, r4, r0
	ldrh	r0, [r5, #24]
	bl	FUN_0600C264
	orr	r4, r4, r0
	ldrh	r0, [r5, #28]
	bl	FUN_0600C1DC
	orr	r4, r4, r0
	ldrh	r0, [r5, #30]
	bl	FUN_0600C1A0
	orr	r4, r4, r0
	ldrh	r0, [r5, #32]
	bl	FUN_0600C0EC
	orr	r4, r4, r0
	ldrh	r0, [r5, #34]	; 0x22
	bl	FUN_0600C0C8
	orr	r4, r4, r0
	add	r0, r5, #36	; 0x24
	bl	FUN_0600C064
	orr	r4, r4, r0
	ldrh	r0, [r5, #116]	; 0x74
	bl	FUN_0600C02C
	orr	r4, r4, r0
	ldrh	r0, [r5, #118]	; 0x76
	bl	FUN_0600BFF4
	orr	r4, r4, r0
	ldrh	r0, [r5, #120]	; 0x78
	bl	FUN_0600BFBC
	orr	r4, r4, r0
	ldrh	r0, [r5, #122]	; 0x7a
	mov	r1, #0
	bl	FUN_0600BEFC
	orr	r4, r4, r0
	add	r0, r5, #124	; 0x7c
	bl	FUN_0600BECC
	orr	r4, r4, r0
	ldrh	r0, [r5, #156]	; 0x9c
	bl	FUN_0600BE0C
	orr	r4, r4, r0
	ldrh	r0, [r5, #158]	; 0x9e
	bl	FUN_0600BDE8
	orr	r0, r4, r0
_060125DC:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_060125E8:	.word	0x0380FFF4

	arm_func_start FUN_060125EC
FUN_060125EC: ; 0x060125EC
	stmdb	sp!, {r4, lr}
	ldr	r2, _06012698	; =0x0380FFF4
	ldr	r2, [r2]
	add	r4, r2, #836	; 0x344
	mov	r3, #1
	strh	r3, [r1, #2]
	ldrh	r2, [r4, #8]
	and	r1, r2, #240	; 0xf0
	cmp	r1, #16
	movne	r0, r3
	bne	_06012690
	ldrh	r1, [r0, #16]
	cmp	r1, #0
	beq	_06012664
	cmp	r1, #1
	bne	_0601268C
	cmp	r2, #16
	movne	r0, r3
	bne	_06012690
	ldrh	r0, [r0, #18]
	mov	r1, r3
	bl	FUN_0600B570
	mov	r0, #0
	strh	r0, [r4, #12]
	bl	FUN_0600A5A4
	mov	r0, #32768	; 0x8000
	bl	FUN_0600B3E0
	mov	r0, #17
	strh	r0, [r4, #8]
	b	_0601268C
_06012664:
	cmp	r2, #17
	bne	_0601267C
	mov	r0, #0
	bl	FUN_0600B3E0
	bl	FUN_0600A4EC
	b	_06012684
_0601267C:
	mov	r0, r3
	b	_06012690
_06012684:
	mov	r0, #16
	strh	r0, [r4, #8]
_0601268C:
	mov	r0, #0
_06012690:
	ldmia	sp!, {r4, lr}
	bx	lr
_06012698:	.word	0x0380FFF4

	arm_func_start FUN_0601269C
FUN_0601269C: ; 0x0601269C
	ldr	r0, _0601271C	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #92]	; 0x5c
	cmp	r0, #0
	beq	_060126D8
	mov	r1, #0
	ldr	r0, _06012720	; =0x04804000
	strh	r1, [r0]
	strh	r1, [r0, #4]
	ldr	r1, _06012724	; =0x048080A0
	ldrh	r0, [r1]
	orr	r0, r0, #32768	; 0x8000
	strh	r0, [r1]
	bx	lr
_060126D8:
	mov	r1, #1
	ldr	r0, _06012728	; =0x048080AC
	strh	r1, [r0]
	mov	r2, #0
	ldr	r0, _0601272C	; =0x04808004
	strh	r2, [r0]
	mov	r1, #2
	ldr	r0, _06012730	; =0x04808012
	strh	r1, [r0]
	ldr	r1, _06012734	; =0x0000FFFF
	ldr	r0, _06012738	; =0x04808010
	strh	r1, [r0]
	ldr	r0, _0601273C	; =0x04808194
	strh	r2, [r0]
	ldr	r0, _06012740	; =0x04808040
	strh	r2, [r0]
	bx	lr
_0601271C:	.word	0x0380FFF4
_06012720:	.word	0x04804000
_06012724:	.word	0x048080A0
_06012728:	.word	0x048080AC
_0601272C:	.word	0x04808004
_06012730:	.word	0x04808012
_06012734:	.word	0x0000FFFF
_06012738:	.word	0x04808010
_0601273C:	.word	0x04808194
_06012740:	.word	0x04808040

	arm_func_start FUN_06012744
FUN_06012744: ; 0x06012744
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	mov	r5, r0
	ldr	r0, _0601285C	; =0x0380FFF4
	ldr	r0, [r0]
	add	r4, r0, #836	; 0x344
	bl	FUN_0600A5A4
	bl	FUN_0600A4EC
	mov	r0, #6
	bl	FUN_0600A4B8
	strh	r0, [r4, #172]	; 0xac
	ldrh	r0, [r5, #18]
	cmp	r0, #4
	bne	_06012788
	mov	r0, #6
	mov	r1, #0
	bl	FUN_0600A478
_06012788:
	mov	r0, #0
	ldr	r1, _06012860	; =0x04804000
	mov	r2, #12
	bl	FUN_0600055C
	mov	r0, #20
	ldr	r1, _06012860	; =0x04804000
	strh	r0, [r1, #8]
	mov	r0, #2000	; 0x7d0
	strh	r0, [r1, #10]
	add	r2, r1, #12
	mov	r3, #0
	ldr	r1, _06012864	; =0x00005555
	ldr	r0, _06012868	; =0x000007EC
_060127BC:
	strh	r1, [r2], #2
	add	r3, r3, #2
	cmp	r3, r0
	bcc	_060127BC
	mov	r1, #8
	ldr	r0, _06012860	; =0x04804000
	strh	r1, [r0, #12]
	mov	r1, #6
	ldr	r0, _0601286C	; =0x04808194
	strh	r1, [r0]
	mov	r0, #18
	strh	r0, [r4, #8]
	mov	r1, #1
	strh	r1, [r4, #24]
	ldrh	r0, [r5, #22]
	bl	FUN_0600B570
	mov	r1, #32768	; 0x8000
	ldr	r0, _06012870	; =0x04808040
	strh	r1, [r0]
	ldr	r0, _06012874	; =0x000005DC
	bl	FUN_0600A098
	mov	r1, #2
	ldr	r0, _06012878	; =0x04808012
	strh	r1, [r0]
	mov	r1, #1
	ldr	r0, _0601287C	; =0x04808004
	strh	r1, [r0]
	ldr	r0, _06012880	; =0x048080AE
	strh	r1, [r0]
	ldr	r1, _06012860	; =0x04804000
	ldr	r0, _06012884	; =0x00003FFF
	and	r0, r1, r0
	mov	r0, r0, lsl #15
	mov	r0, r0, lsr #16
	orr	r1, r0, #32768	; 0x8000
	ldr	r0, _06012888	; =0x048080A0
	strh	r1, [r0]
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_0601285C:	.word	0x0380FFF4
_06012860:	.word	0x04804000
_06012864:	.word	0x00005555
_06012868:	.word	0x000007EC
_0601286C:	.word	0x04808194
_06012870:	.word	0x04808040
_06012874:	.word	0x000005DC
_06012878:	.word	0x04808012
_0601287C:	.word	0x04808004
_06012880:	.word	0x048080AE
_06012884:	.word	0x00003FFF
_06012888:	.word	0x048080A0

	arm_func_start FUN_0601288C
FUN_0601288C: ; 0x0601288C
	stmdb	sp!, {r4, r5, r6, lr}
	sub	sp, sp, #8
	mov	r5, r0
	ldr	r0, _06012ADC	; =0x0380FFF4
	ldr	r0, [r0]
	add	r4, r0, #836	; 0x344
	mov	r0, #1
	strh	r0, [r1, #2]
	ldrh	r1, [r4, #8]
	and	r1, r1, #240	; 0xf0
	cmp	r1, #16
	bne	_06012AD0
	ldrh	r0, [r5, #16]
	cmp	r0, #1
	movhi	r0, #5
	bhi	_06012AD0
	ldrh	r0, [r5, #20]
	cmp	r0, #10
	beq	_060128E4
	cmp	r0, #20
	movne	r0, #5
	bne	_06012AD0
_060128E4:
	ldrh	r0, [r5, #18]
	cmp	r0, #4
	movhi	r0, #5
	bhi	_06012AD0
	mov	r0, #0
	bl	FUN_060191BC
	cmp	r0, #0
	movne	r0, #14
	bne	_06012AD0
	ldrh	r0, [r5, #16]
	cmp	r0, #0
	beq	_06012A3C
	cmp	r0, #1
	bne	_06012ACC
	ldrh	r0, [r4, #8]
	cmp	r0, #16
	movne	r0, #1
	bne	_06012AD0
	mov	r0, #0
	str	r0, [sp]
	mov	r0, #101	; 0x65
	mov	r1, #1
	add	r2, sp, #0
	bl	FUN_060190BC
	ldr	r6, [sp]
	mov	r0, #1
	bl	FUN_0600A4B8
	cmp	r6, r0
	beq	_0601296C
	mov	r0, #1
	mov	r1, r6
	bl	FUN_0600A478
	ldr	r0, _06012AE0	; =0x00001388
	bl	FUN_0600A098
_0601296C:
	ldrh	r0, [r5, #18]
	cmp	r0, #4
	addls	pc, pc, r0, lsl #2
	b	_06012ACC
	b	_06012990
	b	_06012990
	b	_06012990
	b	_06012A30
	b	_06012A30
_06012990:
	mov	r0, #17
	strh	r0, [r4, #8]
	ldrh	r0, [r5, #22]
	mov	r1, #1
	bl	FUN_0600B570
	mov	r1, #32768	; 0x8000
	ldr	r0, _06012AE4	; =0x04808040
	strh	r1, [r0]
	ldr	r0, _06012AE8	; =0x000005DC
	bl	FUN_0600A098
	ldrh	r0, [r5, #20]
	strh	r0, [r4, #22]
	mov	r0, #2
	bl	FUN_0600A4B8
	str	r0, [sp]
	ldrh	r1, [r5, #18]
	cmp	r1, #1
	orrls	r0, r0, #16
	strls	r0, [sp]
	ldrh	r1, [r5, #20]
	ldr	r0, _06012AEC	; =0x048081A4
	strh	r1, [r0]
	ldrh	r1, [r5, #18]
	cmp	r1, #1
	ldrne	r0, _06012AF0	; =0x048081A2
	strneh	r1, [r0]
	bne	_06012A14
	ldr	r0, [sp]
	orr	r0, r0, #32
	str	r0, [sp]
	mov	r1, #3
	ldr	r0, _06012AF0	; =0x048081A2
	strh	r1, [r0]
_06012A14:
	mov	r0, #2
	ldr	r1, [sp]
	bl	FUN_0600A478
	ldr	r1, _06012AF4	; =0x00000823
	ldr	r0, _06012AF8	; =0x048081A0
	strh	r1, [r0]
	b	_06012ACC
_06012A30:
	mov	r0, r5
	bl	FUN_06012744
	b	_06012ACC
_06012A3C:
	ldrh	r0, [r4, #8]
	cmp	r0, #17
	bne	_06012A8C
	bl	FUN_06009FDC
	mov	r2, #0
	ldr	r0, _06012AF8	; =0x048081A0
	strh	r2, [r0]
	mov	r1, #1
	ldr	r0, _06012AF0	; =0x048081A2
	strh	r1, [r0]
	ldr	r0, _06012AE4	; =0x04808040
	strh	r2, [r0]
	mov	r0, #2
	bl	FUN_0600A4B8
	str	r0, [sp]
	bic	r1, r0, #48	; 0x30
	str	r1, [sp]
	mov	r0, #2
	bl	FUN_0600A478
	b	_06012AC4
_06012A8C:
	cmp	r0, #18
	bne	_06012ABC
	mov	r0, #0
	strh	r0, [r4, #24]
	ldr	r1, _06012AFC	; =0x04808004
_06012AA0:
	ldrh	r0, [r1]
	cmp	r0, #0
	bne	_06012AA0
	mov	r0, #6
	ldrh	r1, [r4, #172]	; 0xac
	bl	FUN_0600A478
	b	_06012AC4
_06012ABC:
	mov	r0, #1
	b	_06012AD0
_06012AC4:
	mov	r0, #16
	strh	r0, [r4, #8]
_06012ACC:
	mov	r0, #0
_06012AD0:
	add	sp, sp, #8
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr
_06012ADC:	.word	0x0380FFF4
_06012AE0:	.word	0x00001388
_06012AE4:	.word	0x04808040
_06012AE8:	.word	0x000005DC
_06012AEC:	.word	0x048081A4
_06012AF0:	.word	0x048081A2
_06012AF4:	.word	0x00000823
_06012AF8:	.word	0x048081A0
_06012AFC:	.word	0x04808004

	arm_func_start FUN_06012B00
FUN_06012B00: ; 0x06012B00
	mov	r0, #2
	strh	r0, [r1, #2]
	ldr	r0, _06012B24	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #76]	; 0x4c
	strh	r0, [r1, #6]
	mov	r0, #0
	bx	lr
_06012B24:	.word	0x0380FFF4

	arm_func_start FUN_06012B28
FUN_06012B28: ; 0x06012B28
	stmdb	sp!, {r4, lr}
	mov	r4, r1
	ldr	r0, _06012B80	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #76]	; 0x4c
	cmp	r0, #0
	moveq	r0, #1
	beq	_06012B78
	mov	r0, #92	; 0x5c
	strh	r0, [r4, #2]
	bl	FUN_0600AC84
	ldr	r0, _06012B80	; =0x0380FFF4
	ldr	r1, [r0]
	ldr	r0, _06012B84	; =0x0000053C
	add	r0, r1, r0
	add	r1, r4, #8
	mov	r2, #180	; 0xb4
	bl	FUN_06012B88
	mov	r0, #0
_06012B78:
	ldmia	sp!, {r4, lr}
	bx	lr
_06012B80:	.word	0x0380FFF4
_06012B84:	.word	0x0000053C

	arm_func_start FUN_06012B88
FUN_06012B88: ; 0x06012B88
	ldr	pc, _06012B8C	; =FUN_037FB348
_06012B8C:	.word	FUN_037FB348

	arm_func_start FUN_06012B90
FUN_06012B90: ; 0x06012B90
	stmdb	sp!, {r4, lr}
	mov	r4, r1
	mov	r0, #9
	strh	r0, [r4, #2]
	ldr	r0, _06012C2C	; =_06019950
	add	r1, r4, #6
	mov	r2, #8
	bl	FUN_06000EA0
	ldr	r0, _06012C30	; =0x04808000
	ldrh	r0, [r0]
	strh	r0, [r4, #14]
	ldr	r0, _06012C34	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #1536	; 0x600
	ldrh	r0, [r0, #144]	; 0x90
	ands	r0, r0, #32768	; 0x8000
	moveq	r0, #109	; 0x6d
	streqh	r0, [r4, #16]
	ldreq	r0, _06012C38	; =0x0000933D
	streqh	r0, [r4, #18]
	beq	_06012BF8
	mov	r0, #0
	bl	FUN_0600A4B8
	strh	r0, [r4, #16]
	bl	FUN_0600A3E0
	strh	r0, [r4, #18]
_06012BF8:
	ldr	r0, _06012C34	; =0x0380FFF4
	ldr	r1, [r0]
	add	r0, r1, #1536	; 0x600
	ldrh	r0, [r0, #144]	; 0x90
	ands	r0, r0, #16384	; 0x4000
	addne	r0, r1, #1280	; 0x500
	ldrneh	r0, [r0, #248]	; 0xf8
	strneh	r0, [r4, #20]
	moveq	r0, #2
	streqh	r0, [r4, #20]
	mov	r0, #0
	ldmia	sp!, {r4, lr}
	bx	lr
_06012C2C:	.word	_06019950
_06012C30:	.word	0x04808000
_06012C34:	.word	0x0380FFF4
_06012C38:	.word	0x0000933D

	arm_func_start FUN_06012C3C
FUN_06012C3C: ; 0x06012C3C
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	ldr	r0, _06012C7C	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #76]	; 0x4c
	cmp	r0, #0
	moveq	r0, #1
	beq	_06012C70
	mov	r0, #1
	strh	r0, [r1, #2]
	bl	FUN_0600AE88
	mov	r0, #0
_06012C70:
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_06012C7C:	.word	0x0380FFF4

	arm_func_start FUN_06012C80
FUN_06012C80: ; 0x06012C80
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	mov	r0, #1
	strh	r0, [r1, #2]
	ldr	r0, _06012CC0	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #76]	; 0x4c
	cmp	r0, #32
	bcc	_06012CAC
	bl	FUN_0600A4EC
_06012CAC:
	bl	FUN_06008F18
	mov	r0, #0
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_06012CC0:	.word	0x0380FFF4

	arm_func_start FUN_06012CC4
FUN_06012CC4: ; 0x06012CC4
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	mov	r0, #1
	strh	r0, [r1, #2]
	ldr	r0, _06012D20	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r1, [r0, #76]	; 0x4c
	cmp	r1, #16
	beq	_06012D00
	cmp	r1, #32
	bne	_06012D10
	ldrh	r0, [r0, #86]	; 0x56
	cmp	r0, #0
	bne	_06012D10
_06012D00:
	mov	r0, #32
	bl	FUN_0600AF68
	mov	r0, #0
	b	_06012D14
_06012D10:
	mov	r0, #1
_06012D14:
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_06012D20:	.word	0x0380FFF4

	arm_func_start FUN_06012D24
FUN_06012D24: ; 0x06012D24
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	mov	r0, #1
	strh	r0, [r1, #2]
	ldr	r1, _06012D84	; =0x0380FFF4
	ldr	r1, [r1]
	add	r1, r1, #768	; 0x300
	ldrh	r2, [r1, #76]	; 0x4c
	cmp	r2, #32
	bhi	_06012D78
	ldrh	r1, [r1, #86]	; 0x56
	cmp	r1, #0
	bne	_06012D78
	mov	r0, #0
	bl	FUN_060191BC
	cmp	r0, #0
	movne	r0, #14
	bne	_06012D78
	mov	r0, #16
	bl	FUN_0600AF68
	mov	r0, #0
_06012D78:
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_06012D84:	.word	0x0380FFF4

	arm_func_start FUN_06012D88
FUN_06012D88: ; 0x06012D88
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	mov	r0, #1
	strh	r0, [r1, #2]
	ldr	r1, _06012DD0	; =0x0380FFF4
	ldr	r1, [r1]
	add	r1, r1, #768	; 0x300
	ldrh	r1, [r1, #76]	; 0x4c
	cmp	r1, #0
	beq	_06012DB8
	cmp	r1, #16
	bne	_06012DC4
_06012DB8:
	mov	r0, #0
	bl	FUN_0600AF68
	mov	r0, #0
_06012DC4:
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_06012DD0:	.word	0x0380FFF4

	arm_func_start FUN_06012DD4
FUN_06012DD4: ; 0x06012DD4
	ldrh	r2, [r1, #14]
	add	r2, r1, r2, lsl #1
	add	r3, r2, #16
	ldrh	r2, [r2, #16]
	strh	r2, [r1, #12]
	mov	r2, #2
	strh	r2, [r3, #2]
	mov	r2, #0
	strh	r2, [r3, #4]
	ldrh	r2, [r1, #24]
	strh	r2, [r3, #6]
	ldr	ip, _06012E08	; =FUN_0600F8DC
	bx	ip
_06012E08:	.word	FUN_0600F8DC

	arm_func_start FUN_06012E0C
FUN_06012E0C: ; 0x06012E0C
	stmdb	sp!, {r4, lr}
	mov	r4, r0
	mov	r0, #1
	strh	r0, [r1, #2]
	ldrh	r0, [r4, #16]
	ands	r0, r0, #1
	beq	_06012E2C
	bl	FUN_060151F0
_06012E2C:
	ldrh	r0, [r4, #16]
	ands	r0, r0, #2
	beq	_06012E3C
	bl	FUN_06015190
_06012E3C:
	ldrh	r0, [r4, #16]
	ands	r0, r0, #4
	beq	_06012E4C
	bl	FUN_060150D8
_06012E4C:
	mov	r0, #0
	ldmia	sp!, {r4, lr}
	bx	lr

	arm_func_start FUN_06012E58
FUN_06012E58: ; 0x06012E58
	stmdb	sp!, {r4, lr}
	mov	r4, r0
	mov	r0, #1
	strh	r0, [r1, #2]
	ldr	r0, _06012EB4	; =0x0000FFFF
	strh	r0, [r4, #12]
	add	r0, r4, #16
	mov	r1, #0
	strh	r1, [r0, #2]
	ldrh	r1, [r0, #6]
	strh	r1, [r0, #18]
	bl	FUN_0600F3CC
	ldr	r0, _06012EB8	; =0x0380FFF4
	ldr	r1, [r0]
	add	r0, r1, #512	; 0x200
	add	r1, r1, #404	; 0x194
	mov	r2, r4
	bl	FUN_0600962C
	mov	r0, #0
	bl	FUN_06015C78
	mov	r0, #0
	ldmia	sp!, {r4, lr}
	bx	lr
_06012EB4:	.word	0x0000FFFF
_06012EB8:	.word	0x0380FFF4

	arm_func_start FUN_06012EBC
FUN_06012EBC: ; 0x06012EBC
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #12
	mov	r5, r0
	ldr	r0, _06013378	; =0x0380FFF4
	ldr	r2, [r0]
	add	r0, r2, #836	; 0x344
	str	r0, [sp]
	add	r7, r2, #796	; 0x31c
	add	sl, r2, #380	; 0x17c
	ldr	r0, _0601337C	; =0x0000042C
	add	r9, r2, r0
	add	r0, r2, #1536	; 0x600
	ldrh	r8, [r0, #144]	; 0x90
	mov	r0, #1
	str	r0, [sp, #4]
	strh	r0, [r1, #2]
	ldrh	r0, [r7, #18]
	cmp	r0, #1
	movne	r0, #11
	bne	_0601336C
	ldrh	r0, [r9, #60]	; 0x3c
	cmp	r0, #0
	movne	r0, #8
	bne	_0601336C
	ldr	r4, [r9, #68]	; 0x44
	ldrh	r1, [r5, #16]
	ands	r0, r1, #32768	; 0x8000
	beq	_06012F70
	ands	r0, r1, #2
	ldreqh	r0, [r9, #148]	; 0x94
	streqh	r0, [r5, #20]
	ldrh	r0, [r5, #16]
	ands	r0, r0, #4
	ldreqh	r0, [r9, #160]	; 0xa0
	streqh	r0, [r5, #22]
	ldrh	r0, [r5, #16]
	ands	r0, r0, #8
	ldreqh	r0, [r9, #150]	; 0x96
	streqh	r0, [r5, #24]
	ldrh	r0, [r5, #16]
	ands	r0, r0, #16
	ldreqh	r0, [r9, #156]	; 0x9c
	streqh	r0, [r5, #28]
	moveq	r0, #0
	streq	r0, [sp, #4]
_06012F70:
	ldrh	r0, [r5, #28]
	cmp	r0, #516	; 0x204
	movhi	r0, #5
	bhi	_0601336C
	mov	r1, #2
	mov	r6, #0
	b	_06012FA0
_06012F8C:
	ldrh	r0, [r5, #22]
	ands	r0, r0, r1
	addne	r6, r6, #1
	mov	r0, r1, lsl #17
	mov	r1, r0, lsr #16
_06012FA0:
	cmp	r1, #0
	bne	_06012F8C
	ldrh	r0, [r5, #20]
	strh	r0, [r9, #148]	; 0x94
	ldrh	r2, [r5, #20]
	ands	r0, r2, #32768	; 0x8000
	beq	_06012FEC
	ldr	r0, _06013380	; =0x00007FFF
	and	r0, r2, r0
	strh	r0, [r5, #20]
	ldrh	r0, [r5, #20]
	sub	r0, r0, #208	; 0xd0
	mov	r2, r0, lsr #2
	mov	r0, #234	; 0xea
	strh	r0, [r4, #14]
	cmp	r2, #65536	; 0x10000
	bls	_06013038
	mov	r0, #5
	b	_0601336C
_06012FEC:
	ands	r0, r8, #2
	movne	fp, #1
	movne	r1, #2
	movne	r0, #6
	moveq	fp, #0
	moveq	r1, fp
	moveq	r0, fp
	add	r2, r2, fp
	ldr	r3, _06013384	; =0x00000206
	add	r3, fp, r3
	cmp	r2, r3
	movhi	r0, #5
	bhi	_0601336C
	mov	r3, r2, lsl #2
	add	r3, r3, #208	; 0xd0
	add	r1, r1, r3
	strh	r1, [r5, #20]
	add	r0, r0, #234	; 0xea
	strh	r0, [r4, #14]
_06013038:
	add	r0, r2, #9
	bic	fp, r0, #1
	mul	r0, fp, r6
	str	r0, [sp, #8]
	add	r0, sl, #12
	ldr	r1, [sp, #8]
	add	r1, r1, #26
	bl	FUN_06009724
	str	r0, [r9, #144]	; 0x90
	ldr	r0, [r9, #144]	; 0x90
	cmp	r0, #0
	moveq	r0, #8
	beq	_0601336C
	mov	r0, #1
	strh	r0, [r9, #60]	; 0x3c
	ldrh	r0, [r9, #62]	; 0x3e
	add	r0, r0, #1
	strh	r0, [r9, #62]	; 0x3e
	ldrh	r0, [r5, #24]
	strh	r0, [r9, #150]	; 0x96
	ldrh	r0, [r5, #22]
	strh	r0, [r9, #152]	; 0x98
	mov	r1, #0
	strh	r1, [r9, #154]	; 0x9a
	ldrh	r0, [r5, #28]
	strh	r0, [r9, #156]	; 0x9c
	ldrh	r0, [r5, #18]
	strh	r0, [r9, #158]	; 0x9e
	strh	r1, [r4]
	ldrh	r0, [r5, #22]
	strh	r0, [r4, #2]
	strh	r1, [r4, #4]
	mov	r0, #20
	strh	r0, [r4, #8]
	ldrh	r0, [r5, #28]
	add	r0, r0, #34	; 0x22
	strh	r0, [r4, #10]
	mov	r0, #552	; 0x228
	strh	r0, [r4, #12]
	ldrh	r1, [r4, #14]
	ldrh	r0, [r5, #20]
	add	r0, r0, #10
	mla	r1, r0, r6, r1
	strh	r1, [r4, #14]
	add	r0, r4, #16
	ldr	r1, _06013388	; =_0601939C
	ldr	r2, [sp]
	add	r2, r2, #100	; 0x64
	add	r3, r7, #8
	bl	FUN_0600AECC
	ldrh	r0, [r5, #16]
	ands	r0, r0, #32768	; 0x8000
	beq	_06013120
	ldrh	r1, [r4, #34]	; 0x22
	ldr	r0, _0601338C	; =0x0000FFFF
	cmp	r1, r0
	movne	r7, #16384	; 0x4000
	bne	_0601312C
_06013120:
	mov	r7, #0
	ldr	r0, _0601338C	; =0x0000FFFF
	strh	r0, [r4, #34]	; 0x22
_0601312C:
	ldrh	r0, [r5, #20]
	strh	r0, [r4, #36]	; 0x24
	ldrh	r0, [r5, #22]
	strh	r0, [r4, #38]	; 0x26
	ldrh	r0, [r5, #30]
	strh	r0, [r4, #40]	; 0x28
	ldr	r0, [sp, #4]
	cmp	r0, #0
	beq	_06013170
	ldrh	r0, [r5, #28]
	cmp	r0, #0
	beq	_06013170
	bl	FUN_0600AC84
	add	r0, r4, #42	; 0x2a
	ldr	r1, [r5, #32]
	ldrh	r2, [r5, #28]
	bl	FUN_06009D74
_06013170:
	ands	r0, r8, #4
	beq	_060131A0
	add	r1, r4, #40	; 0x28
	ldrh	r0, [r5, #28]
	add	r0, r0, #2
	add	r0, r1, r0
	add	r0, r0, #3
	bic	r1, r0, #3
	ldr	r0, _06013390	; =0x0000B6B8
	strh	r0, [r1]
	ldr	r0, _06013394	; =0x00001D46
	strh	r0, [r1, #2]
_060131A0:
	mov	r1, #388	; 0x184
	ldr	r0, [r9, #144]	; 0x90
	strh	r1, [r0, #12]
	ldr	r0, [sp, #8]
	add	r0, r0, #11
	mov	r1, r0, lsr #1
	ldr	r0, [r9, #144]	; 0x90
	strh	r1, [r0, #14]
	ldrh	r1, [r5, #22]
	ldr	r0, [r9, #144]	; 0x90
	strh	r1, [r0, #16]
	ldr	r0, [r9, #144]	; 0x90
	strh	r6, [r0, #20]
	ldr	r0, [r9, #144]	; 0x90
	strh	fp, [r0, #22]
	mov	r0, #0
	ldr	r1, [r9, #144]	; 0x90
	strh	r0, [r1, #24]
	ldr	r1, [r9, #144]	; 0x90
	add	r3, r1, #26
	mov	r2, #1
	mov	r1, #2
	ldr	r8, _0601338C	; =0x0000FFFF
	b	_06013228
_06013200:
	ldrh	ip, [r5, #22]
	ands	ip, ip, r1
	strneh	r8, [r3]
	strneh	r0, [r3, #2]
	strneh	r0, [r3, #6]
	strneh	r2, [r3, #4]
	addne	r3, r3, fp
	mov	r1, r1, lsl #17
	mov	r1, r1, lsr #16
	add	r2, r2, #1
_06013228:
	cmp	r1, #0
	bne	_06013200
	ldrh	r1, [r5, #20]
	ldr	r0, _06013398	; =0x048080C4
	strh	r1, [r0]
	ldrh	r1, [r4, #14]
	ldr	r0, _0601339C	; =0x048080C0
	strh	r1, [r0]
	ldrh	r0, [r5, #26]
	rsb	r8, r0, #65536	; 0x10000
	ldrh	r0, [r5, #24]
	cmp	r0, #0
	bne	_060132CC
	ldrh	r0, [r5, #28]
	add	r0, r0, #34	; 0x22
	mov	r0, r0, lsl #2
	add	r2, r0, #96	; 0x60
	ldr	r0, _060133A0	; =0x04808000
	ldrh	r0, [r0]
	cmp	r0, #5184	; 0x1440
	addne	r2, r2, #1000	; 0x3e8
	ldrh	r0, [r5, #20]
	mul	r1, r0, r6
	add	r0, r1, #904	; 0x388
	add	r0, r2, r0
	add	r0, r0, #50	; 0x32
	mov	r1, #10
	bl	FUN_06003B68
	mov	r5, r0
	bl	FUN_060001A4
	ldr	r1, _060133A4	; =0x04808118
	strh	r5, [r1]
	ldr	r1, _060133A8	; =0x00003FFF
	and	r1, r4, r1
	mov	r1, r1, lsr #1
	orr	r1, r1, #32768	; 0x8000
	orr	r2, r1, r7
	ldr	r1, _060133AC	; =0x04808090
	strh	r2, [r1]
	bl	FUN_060001AC
	b	_06013368
_060132CC:
	bl	FUN_060001A4
	mov	r6, r0
	ldr	r0, _060133B0	; =0x048080F8
	ldrh	r0, [r0]
	add	r1, r8, r0
	ldr	r0, _0601338C	; =0x0000FFFF
	and	r0, r1, r0
	mov	r1, #10
	bl	FUN_06003B68
	ldrh	r2, [r5, #24]
	add	r1, r0, #3
	cmp	r1, r2
	bcs	_06013338
	sub	r0, r2, r0
	sub	r1, r0, #1
	ldr	r0, _060133A4	; =0x04808118
	strh	r1, [r0]
	ldr	r0, _060133A8	; =0x00003FFF
	and	r0, r4, r0
	mov	r0, r0, lsr #1
	orr	r0, r0, #32768	; 0x8000
	orr	r1, r0, r7
	ldr	r0, _060133AC	; =0x04808090
	strh	r1, [r0]
	mov	r0, r6
	bl	FUN_060001AC
	b	_06013368
_06013338:
	mov	r0, r6
	bl	FUN_060001AC
	add	r0, sl, #12
	ldr	r1, [r9, #144]	; 0x90
	bl	FUN_060096A0
	mov	r0, #0
	strh	r0, [r9, #60]	; 0x3c
	ldrh	r0, [r9, #62]	; 0x3e
	sub	r0, r0, #1
	strh	r0, [r9, #62]	; 0x3e
	mov	r0, #5
	b	_0601336C
_06013368:
	mov	r0, #0
_0601336C:
	add	sp, sp, #12
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
_06013378:	.word	0x0380FFF4
_0601337C:	.word	0x0000042C
_06013380:	.word	0x00007FFF
_06013384:	.word	0x00000206
_06013388:	.word	_0601939C
_0601338C:	.word	0x0000FFFF
_06013390:	.word	0x0000B6B8
_06013394:	.word	0x00001D46
_06013398:	.word	0x048080C4
_0601339C:	.word	0x048080C0
_060133A0:	.word	0x04808000
_060133A4:	.word	0x04808118
_060133A8:	.word	0x00003FFF
_060133AC:	.word	0x04808090
_060133B0:	.word	0x048080F8

	arm_func_start FUN_060133B4
FUN_060133B4: ; 0x060133B4
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #4
	mov	sl, r0
	ldr	r0, _0601353C	; =0x0380FFF4
	ldr	r3, [r0]
	add	r2, r3, #836	; 0x344
	add	r8, r3, #796	; 0x31c
	ldr	r0, _06013540	; =0x0000042C
	add	r7, r3, r0
	add	r0, r3, #1536	; 0x600
	ldrh	r6, [r0, #144]	; 0x90
	mov	r9, #1
	strh	r9, [r1, #2]
	ldrh	r0, [r8, #18]
	cmp	r0, #2
	movne	r0, #11
	bne	_06013530
	ldrh	r0, [sl, #16]
	cmp	r0, #516	; 0x204
	movhi	r0, #5
	bhi	_06013530
	ldrh	r0, [r7, #80]	; 0x50
	cmp	r0, #0
	moveq	r9, #0
	mov	r0, #20
	mul	r4, r9, r0
	add	r1, r7, #80	; 0x50
	add	fp, r1, r4
	ldrh	r1, [r1, r4]
	cmp	r1, #0
	movne	r0, #8
	bne	_06013530
	ldr	r1, _06013544	; =0x04808094
	ldrh	r1, [r1]
	ands	r1, r1, #32768	; 0x8000
	movne	r0, #8
	bne	_06013530
	add	r1, r7, r4
	ldr	r5, [r1, #88]	; 0x58
	mov	r1, #0
	strh	r1, [r5]
	strh	r1, [r5, #4]
	strh	r0, [r5, #8]
	ldrh	r0, [sl, #16]
	add	r0, r0, #30
	strh	r0, [r5, #10]
	mov	r0, #280	; 0x118
	strh	r0, [r5, #12]
	add	r0, r5, #16
	add	r1, r2, #100	; 0x64
	add	r2, r8, #8
	ldr	r3, _06013548	; =_0601938C
	bl	FUN_0600AECC
	ldrh	r0, [sl, #18]
	strh	r0, [r5, #36]	; 0x24
	ldrh	r0, [sl, #16]
	cmp	r0, #0
	beq	_060134B8
	cmp	r9, #0
	bne	_060134A8
	bl	FUN_0600AC84
_060134A8:
	add	r0, r5, #38	; 0x26
	ldr	r1, [sl, #20]
	ldrh	r2, [sl, #16]
	bl	FUN_06009D74
_060134B8:
	ands	r0, r6, #4
	beq	_060134E8
	add	r1, r5, #36	; 0x24
	ldrh	r0, [sl, #16]
	add	r0, r0, #2
	add	r0, r1, r0
	add	r0, r0, #3
	bic	r1, r0, #3
	ldr	r0, _0601354C	; =0x0000B6B8
	strh	r0, [r1]
	ldr	r0, _06013550	; =0x00001D46
	strh	r0, [r1, #2]
_060134E8:
	mov	r0, #1
	strh	r0, [fp]
	add	r1, r7, #82	; 0x52
	ldrh	r0, [r1, r4]
	add	r0, r0, #1
	strh	r0, [r1, r4]
	ldr	r0, _06013554	; =0x00003FFF
	and	r0, r5, r0
	mov	r0, r0, lsr #1
	orr	r1, r0, #32768	; 0x8000
	ldr	r0, _06013544	; =0x04808094
	strh	r1, [r0]
	ldrh	r0, [r8, #30]
	mov	r0, r0, lsl #24
	movs	r0, r0, lsr #31
	bne	_0601352C
	bl	FUN_0600B030
_0601352C:
	mov	r0, #0
_06013530:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
_0601353C:	.word	0x0380FFF4
_06013540:	.word	0x0000042C
_06013544:	.word	0x04808094
_06013548:	.word	_0601938C
_0601354C:	.word	0x0000B6B8
_06013550:	.word	0x00001D46
_06013554:	.word	0x00003FFF

	arm_func_start FUN_06013558
FUN_06013558: ; 0x06013558
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub	sp, sp, #4
	mov	r9, r0
	ldr	r0, _06013734	; =0x0380FFF4
	ldr	r0, [r0]
	add	r8, r0, #836	; 0x344
	add	r7, r0, #796	; 0x31c
	add	r6, r0, #380	; 0x17c
	add	r5, r9, #16
	ldrh	r1, [r9, #22]
	ldr	r0, _06013738	; =0x000005E4
	cmp	r1, r0
	movhi	r0, #5
	bhi	_06013728
	ldrh	r0, [r7, #18]
	cmp	r0, #1
	bne	_060135C4
	add	r0, r5, #24
	bl	FUN_0600F608
	mov	r4, r0
	cmp	r4, #255	; 0xff
	beq	_060135BC
	bl	FUN_0600EFF0
	cmp	r0, #64	; 0x40
	beq	_060135C8
_060135BC:
	mov	r0, #10
	b	_06013728
_060135C4:
	ldrh	r4, [r8, #136]	; 0x88
_060135C8:
	strh	r4, [r5, #2]
	ldr	r0, _06013734	; =0x0380FFF4
	ldr	r0, [r0]
	ldr	r0, [r0, #1004]	; 0x3ec
	strh	r0, [r5, #4]
	ldrh	r1, [r5, #14]
	ands	r0, r1, #255	; 0xff
	strneh	r1, [r5, #16]
	movne	r0, #0
	strneh	r0, [r5, #14]
	bne	_06013600
	mov	r0, r4
	bl	FUN_0600EF34
	strh	r0, [r5, #16]
_06013600:
	ldrh	r0, [r5, #6]
	cmp	r0, #0
	bne	_06013628
	ldrh	r0, [r8, #138]	; 0x8a
	orr	r0, r0, #64	; 0x40
	bic	r0, r0, #16384	; 0x4000
	strh	r0, [r5, #20]
	mov	r0, #28
	strh	r0, [r5, #18]
	b	_06013650
_06013628:
	ldrh	r0, [r8, #138]	; 0x8a
	strh	r0, [r5, #20]
	ldrh	r0, [r7, #24]
	cmp	r0, #0
	ldreqh	r0, [r5, #6]
	addeq	r0, r0, #28
	streqh	r0, [r5, #18]
	ldrneh	r0, [r5, #6]
	addne	r0, r0, #36	; 0x24
	strneh	r0, [r5, #18]
_06013650:
	ldrh	r0, [r7, #18]
	cmp	r0, #1
	beq	_06013670
	cmp	r0, #2
	beq	_060136EC
	cmp	r0, #3
	beq	_060136EC
	b	_06013724
_06013670:
	add	r0, r5, #36	; 0x24
	add	r1, r5, #30
	bl	FUN_0600AF4C
	add	r0, r5, #30
	add	r1, r8, #100	; 0x64
	bl	FUN_0600AF4C
	cmp	r4, #0
	bne	_060136C8
	add	r0, r6, #132	; 0x84
	mov	r1, r9
	bl	FUN_0600F45C
	ldr	r0, _06013734	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #1280	; 0x500
	ldrh	r1, [r0, #46]	; 0x2e
	ldrh	r0, [r0, #50]	; 0x32
	mvn	r0, r0
	ands	r0, r1, r0
	bne	_06013724
	mov	r0, #2
	bl	FUN_06015C78
	b	_06013724
_060136C8:
	mov	r0, r5
	bl	FUN_0600F3CC
	add	r0, r6, #132	; 0x84
	add	r1, r6, #24
	mov	r2, r9
	bl	FUN_0600962C
	mov	r0, #0
	bl	FUN_06015C78
	b	_06013724
_060136EC:
	add	r0, r5, #36	; 0x24
	add	r1, r5, #24
	bl	FUN_0600AF4C
	add	r0, r5, #24
	add	r1, r8, #100	; 0x64
	bl	FUN_0600AF4C
	mov	r0, r5
	bl	FUN_0600F3CC
	add	r0, r6, #132	; 0x84
	add	r1, r6, #24
	mov	r2, r9
	bl	FUN_0600962C
	mov	r0, #0
	bl	FUN_06015C78
_06013724:
	mov	r0, #129	; 0x81
_06013728:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, lr}
	bx	lr
_06013734:	.word	0x0380FFF4
_06013738:	.word	0x000005E4

	arm_func_start FUN_0601373C
FUN_0601373C: ; 0x0601373C
	stmdb	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #4
	ldr	r0, _06013A30	; =0x0380FFF4
	ldr	r7, [r0]
	ldr	r0, _06013A34	; =0x0000042C
	add	r6, r7, r0
	add	r5, r7, #836	; 0x344
	add	r4, r7, #796	; 0x31c
	mov	r0, #0
	mov	r1, r6
	mov	r2, #176	; 0xb0
	bl	FUN_0600AEC4
	mov	r1, #0
	add	r0, r7, #1024	; 0x400
	strh	r1, [r0, #44]	; 0x2c
	str	r1, [r6, #12]
	strh	r1, [r6, #20]
	str	r1, [r6, #32]
	strh	r1, [r6, #40]	; 0x28
	str	r1, [r6, #52]	; 0x34
	ldr	r0, _06013A38	; =0x0000FFFF
	strh	r0, [r6, #162]	; 0xa2
	strh	r0, [r6, #164]	; 0xa4
	ldrh	r0, [r5, #12]
	cmp	r0, #3
	addls	pc, pc, r0, lsl #2
	b	_06013A10
	b	_060137B8
	b	_06013838
	b	_060138E4
	b	_06013994
_060137B8:
	ldr	r0, _06013A3C	; =0x04804170
	str	r0, [r6, #8]
	ldr	r0, _06013A40	; =0x04804028
	str	r0, [r6, #28]
	ldr	r0, _06013A44	; =0x04804000
	str	r0, [r6, #48]	; 0x30
	ldr	r0, _06013A48	; =FUN_06015974
	str	r0, [r6, #16]
	ldr	r0, _06013A4C	; =FUN_06015458
	str	r0, [r6, #36]	; 0x24
	ldr	r0, _06013A50	; =_060153E4
	str	r0, [r6, #56]	; 0x38
	ldr	r2, _06013A54	; =0x0000B6B8
	ldr	r0, _06013A58	; =0x04804024
	strh	r2, [r0]
	ldr	r1, _06013A5C	; =0x00001D46
	ldr	r0, _06013A60	; =0x04804026
	strh	r1, [r0]
	ldr	r0, _06013A64	; =0x0480416C
	strh	r2, [r0]
	ldr	r0, _06013A68	; =0x0480416E
	strh	r1, [r0]
	ldr	r0, _06013A6C	; =0x04804790
	strh	r2, [r0]
	ldr	r0, _06013A70	; =0x04804792
	strh	r1, [r0]
	mov	r0, #8
	strh	r0, [r5, #138]	; 0x8a
	mov	r1, #1
	ldr	r0, _06013A74	; =0x048080AE
	strh	r1, [r0]
	b	_06013A10
_06013838:
	ldr	r0, _06013A78	; =0x04804AA0
	str	r0, [r6, #8]
	ldr	r0, _06013A7C	; =0x04804958
	str	r0, [r6, #28]
	ldr	r0, _06013A80	; =0x04804334
	str	r0, [r6, #48]	; 0x30
	ldr	r0, _06013A48	; =FUN_06015974
	str	r0, [r6, #16]
	ldr	r0, _06013A4C	; =FUN_06015458
	str	r0, [r6, #36]	; 0x24
	ldr	r0, _06013A84	; =FUN_060152C4
	str	r0, [r6, #56]	; 0x38
	ldr	r2, _06013A88	; =0x04804238
	str	r2, [r6, #128]	; 0x80
	ldr	r0, _06013A44	; =0x04804000
	str	r0, [r6, #68]	; 0x44
	ldr	r1, _06013A54	; =0x0000B6B8
	ldr	r0, _06013A8C	; =0x04804234
	strh	r1, [r0]
	ldr	r0, _06013A5C	; =0x00001D46
	ldr	r3, _06013A90	; =0x04804236
	strh	r0, [r3]
	ldr	r3, _06013A94	; =0x04804330
	strh	r1, [r3]
	ldr	r3, _06013A98	; =0x04804332
	strh	r0, [r3]
	ldr	r3, _06013A9C	; =0x04804954
	strh	r1, [r3]
	ldr	r3, _06013AA0	; =0x04804956
	strh	r0, [r3]
	ldr	r3, _06013AA4	; =0x04804A9C
	strh	r1, [r3]
	ldr	r3, _06013AA8	; =0x04804A9E
	strh	r0, [r3]
	ldr	r3, _06013AAC	; =0x048050C0
	strh	r1, [r3]
	ldr	r1, _06013AB0	; =0x048050C2
	strh	r0, [r1]
	mov	r0, #520	; 0x208
	strh	r0, [r5, #138]	; 0x8a
	str	r2, [r6, #128]	; 0x80
	bl	FUN_0601477C
	b	_06013A10
_060138E4:
	ldr	r0, _06013AB4	; =0x048045D8
	str	r0, [r6, #8]
	ldr	r0, _06013AB8	; =0x04804490
	str	r0, [r6, #28]
	ldr	r0, _06013ABC	; =0x04804468
	str	r0, [r6, #48]	; 0x30
	ldr	r0, _06013A48	; =FUN_06015974
	str	r0, [r6, #16]
	ldr	r0, _06013A4C	; =FUN_06015458
	str	r0, [r6, #36]	; 0x24
	ldr	r0, _06013A50	; =_060153E4
	str	r0, [r6, #56]	; 0x38
	ldr	r0, _06013A44	; =0x04804000
	str	r0, [r6, #88]	; 0x58
	ldr	r0, _06013A8C	; =0x04804234
	str	r0, [r6, #108]	; 0x6c
	ldr	r2, _06013A54	; =0x0000B6B8
	ldr	r0, _06013AC0	; =0x04804230
	strh	r2, [r0]
	ldr	r1, _06013A5C	; =0x00001D46
	ldr	r0, _06013AC4	; =0x04804232
	strh	r1, [r0]
	ldr	r0, _06013AC8	; =0x04804464
	strh	r2, [r0]
	ldr	r0, _06013ACC	; =0x04804466
	strh	r1, [r0]
	ldr	r0, _06013AD0	; =0x0480448C
	strh	r2, [r0]
	ldr	r0, _06013AD4	; =0x0480448E
	strh	r1, [r0]
	ldr	r0, _06013AD8	; =0x048045D4
	strh	r2, [r0]
	ldr	r0, _06013ADC	; =0x048045D6
	strh	r1, [r0]
	ldr	r0, _06013AE0	; =0x04804BF8
	strh	r2, [r0]
	ldr	r0, _06013AE4	; =0x04804BFA
	strh	r1, [r0]
	mov	r0, #264	; 0x108
	strh	r0, [r5, #138]	; 0x8a
	mov	r1, #13
	ldr	r0, _06013A74	; =0x048080AE
	strh	r1, [r0]
	b	_06013A10
_06013994:
	ldr	r0, _06013A3C	; =0x04804170
	str	r0, [r6, #8]
	ldr	r0, _06013A40	; =0x04804028
	str	r0, [r6, #28]
	ldr	r0, _06013A44	; =0x04804000
	str	r0, [r6, #48]	; 0x30
	ldr	r0, _06013A48	; =FUN_06015974
	str	r0, [r6, #16]
	ldr	r0, _06013A4C	; =FUN_06015458
	str	r0, [r6, #36]	; 0x24
	ldr	r0, _06013A50	; =_060153E4
	str	r0, [r6, #56]	; 0x38
	ldr	r2, _06013A54	; =0x0000B6B8
	ldr	r0, _06013A58	; =0x04804024
	strh	r2, [r0]
	ldr	r1, _06013A5C	; =0x00001D46
	ldr	r0, _06013A60	; =0x04804026
	strh	r1, [r0]
	ldr	r0, _06013A64	; =0x0480416C
	strh	r2, [r0]
	ldr	r0, _06013A68	; =0x0480416E
	strh	r1, [r0]
	ldr	r0, _06013A6C	; =0x04804790
	strh	r2, [r0]
	ldr	r0, _06013A70	; =0x04804792
	strh	r1, [r0]
	mov	r0, #264	; 0x108
	strh	r0, [r5, #138]	; 0x8a
	mov	r1, #13
	ldr	r0, _06013A74	; =0x048080AE
	strh	r1, [r0]
_06013A10:
	ldrh	r0, [r4, #24]
	cmp	r0, #0
	ldrneh	r0, [r5, #138]	; 0x8a
	orrne	r0, r0, #16384	; 0x4000
	strneh	r0, [r5, #138]	; 0x8a
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, lr}
	bx	lr
_06013A30:	.word	0x0380FFF4
_06013A34:	.word	0x0000042C
_06013A38:	.word	0x0000FFFF
_06013A3C:	.word	0x04804170
_06013A40:	.word	0x04804028
_06013A44:	.word	0x04804000
_06013A48:	.word	FUN_06015974
_06013A4C:	.word	FUN_06015458
_06013A50:	.word	_060153E4
_06013A54:	.word	0x0000B6B8
_06013A58:	.word	0x04804024
_06013A5C:	.word	0x00001D46
_06013A60:	.word	0x04804026
_06013A64:	.word	0x0480416C
_06013A68:	.word	0x0480416E
_06013A6C:	.word	0x04804790
_06013A70:	.word	0x04804792
_06013A74:	.word	0x048080AE
_06013A78:	.word	0x04804AA0
_06013A7C:	.word	0x04804958
_06013A80:	.word	0x04804334
_06013A84:	.word	FUN_060152C4
_06013A88:	.word	0x04804238
_06013A8C:	.word	0x04804234
_06013A90:	.word	0x04804236
_06013A94:	.word	0x04804330
_06013A98:	.word	0x04804332
_06013A9C:	.word	0x04804954
_06013AA0:	.word	0x04804956
_06013AA4:	.word	0x04804A9C
_06013AA8:	.word	0x04804A9E
_06013AAC:	.word	0x048050C0
_06013AB0:	.word	0x048050C2
_06013AB4:	.word	0x048045D8
_06013AB8:	.word	0x04804490
_06013ABC:	.word	0x04804468
_06013AC0:	.word	0x04804230
_06013AC4:	.word	0x04804232
_06013AC8:	.word	0x04804464
_06013ACC:	.word	0x04804466
_06013AD0:	.word	0x0480448C
_06013AD4:	.word	0x0480448E
_06013AD8:	.word	0x048045D4
_06013ADC:	.word	0x048045D6
_06013AE0:	.word	0x04804BF8
_06013AE4:	.word	0x04804BFA

	arm_func_start FUN_06013AE8
FUN_06013AE8: ; 0x06013AE8
	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r7, r0
	ldr	r1, _06013C04	; =0x0380FFF4
	ldr	r1, [r1]
	add	r6, r1, #836	; 0x344
	add	r5, r1, #796	; 0x31c
	mov	r4, #0
	mov	r1, #221	; 0xdd
	bl	FUN_06009CD0
	add	r0, r7, #1
	ldr	r1, _06013C04	; =0x0380FFF4
	ldr	r1, [r1]
	add	r1, r1, #768	; 0x300
	ldrh	r1, [r1, #228]	; 0xe4
	add	r1, r1, #8
	and	r1, r1, #255	; 0xff
	bl	FUN_06009CD0
	add	r0, r7, #2
	mov	r1, r4
	bl	FUN_06009CD0
	add	r0, r7, #3
	mov	r1, #9
	bl	FUN_06009CD0
	add	r0, r7, #4
	mov	r1, #191	; 0xbf
	bl	FUN_06009CD0
	add	r0, r7, #5
	mov	r1, r4
	bl	FUN_06009CD0
	add	r0, r7, #6
	ldrh	r1, [r5, #32]
	and	r1, r1, #255	; 0xff
	bl	FUN_06009CD0
	add	r0, r7, #7
	ldrh	r1, [r5, #32]
	mov	r1, r1, asr #8
	and	r1, r1, #255	; 0xff
	bl	FUN_06009CD0
	ldr	r0, _06013C08	; =0x0380FFF0
	ldrh	r5, [r0]
	add	r0, r7, #8
	and	r1, r5, #255	; 0xff
	bl	FUN_06009CD0
	add	r0, r7, #9
	mov	r1, r5, lsr #8
	and	r1, r1, #255	; 0xff
	bl	FUN_06009CD0
	add	r4, r4, #10
	ldrh	r0, [r6, #160]	; 0xa0
	cmp	r0, #0
	beq	_06013BF8
	ldr	r5, [r6, #156]	; 0x9c
	ldrh	r0, [r6, #162]	; 0xa2
	ands	r0, r0, #1
	addne	r5, r5, #1
	mov	r8, #0
	b	_06013BEC
_06013BCC:
	mov	r0, r5
	bl	FUN_06009CB0
	mov	r1, r0
	add	r0, r7, r4
	bl	FUN_06009CD0
	add	r4, r4, #1
	add	r5, r5, #1
	add	r8, r8, #1
_06013BEC:
	ldrh	r0, [r6, #160]	; 0xa0
	cmp	r8, r0
	bcc	_06013BCC
_06013BF8:
	mov	r0, r4
	ldmia	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
_06013C04:	.word	0x0380FFF4
_06013C08:	.word	0x0380FFF0

	arm_func_start FUN_06013C0C
FUN_06013C0C: ; 0x06013C0C
	stmdb	sp!, {r4, lr}
	mov	r4, r0
	mov	r1, #3
	bl	FUN_06009CD0
	add	r0, r4, #1
	mov	r1, #1
	bl	FUN_06009CD0
	add	r0, r4, #2
	ldr	r1, _06013C50	; =0x0380FFF4
	ldr	r1, [r1]
	add	r1, r1, #768	; 0x300
	ldrh	r1, [r1, #190]	; 0xbe
	and	r1, r1, #255	; 0xff
	bl	FUN_06009CD0
	mov	r0, #3
	ldmia	sp!, {r4, lr}
	bx	lr
_06013C50:	.word	0x0380FFF4

	arm_func_start FUN_06013C54
FUN_06013C54: ; 0x06013C54
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub	sp, sp, #4
	mov	r9, r0
	ldr	r1, _06013D04	; =0x0380FFF4
	ldr	r1, [r1]
	add	r8, r1, #836	; 0x344
	mov	r7, #0
	mov	r1, #1
	bl	FUN_06009CD0
	add	r7, r7, #2
	mov	r6, #0
	ldr	r4, _06013D08	; =_060193A4
	mov	r5, #1
_06013C88:
	mov	r1, r5, lsl r6
	ldrh	r0, [r8, #98]	; 0x62
	ands	r0, r0, r1
	beq	_06013CD8
	ldrh	r0, [r8, #96]	; 0x60
	ands	r0, r0, r1
	beq	_06013CC0
	add	r0, r9, r7
	mov	r1, r6, lsl #1
	ldrh	r1, [r4, r1]
	orr	r1, r1, #128	; 0x80
	and	r1, r1, #255	; 0xff
	bl	FUN_06009CD0
	b	_06013CD4
_06013CC0:
	add	r0, r9, r7
	mov	r1, r6, lsl #1
	ldrh	r1, [r4, r1]
	and	r1, r1, #255	; 0xff
	bl	FUN_06009CD0
_06013CD4:
	add	r7, r7, #1
_06013CD8:
	add	r6, r6, #1
	cmp	r6, #16
	bcc	_06013C88
	add	r0, r9, #1
	sub	r1, r7, #2
	and	r1, r1, #255	; 0xff
	bl	FUN_06009CD0
	mov	r0, r7
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, lr}
	bx	lr
_06013D04:	.word	0x0380FFF4
_06013D08:	.word	_060193A4

	arm_func_start FUN_06013D0C
FUN_06013D0C: ; 0x06013D0C
	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	ldr	r1, _06013D7C	; =0x0380FFF4
	ldr	r1, [r1]
	add	r5, r1, #836	; 0x344
	mov	r8, #0
	ldrh	r7, [r5, #30]
	mov	r1, r8
	bl	FUN_06009CD0
	add	r0, r4, #1
	and	r1, r7, #255	; 0xff
	bl	FUN_06009CD0
	add	r8, r8, #2
	mov	r6, #0
	add	r5, r5, #32
	b	_06013D68
_06013D4C:
	add	r0, r5, r6
	bl	FUN_06009CB0
	mov	r1, r0
	add	r0, r4, r8
	bl	FUN_06009CD0
	add	r8, r8, #1
	add	r6, r6, #1
_06013D68:
	cmp	r6, r7
	bcc	_06013D4C
	mov	r0, r8
	ldmia	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
_06013D7C:	.word	0x0380FFF4

	arm_func_start FUN_06013D80
FUN_06013D80: ; 0x06013D80
	stmdb	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #4
	mov	r5, r0
	mov	r4, r1
	ldr	r0, _06013DF0	; =0x0380FFF4
	ldr	r0, [r0]
	ldr	r7, [r0, #416]	; 0x1a0
	mvn	r6, #0
	b	_06013DD8
_06013DA4:
	add	r1, r7, #16
	ldrh	r0, [r1, #20]
	cmp	r0, r4
	bne	_06013DCC
	add	r0, r1, #24
	mov	r1, r5
	bl	FUN_0600AB78
	cmp	r0, #0
	movne	r0, #1
	bne	_06013DE4
_06013DCC:
	mov	r0, r7
	bl	FUN_06009434
	mov	r7, r0
_06013DD8:
	cmp	r7, r6
	bne	_06013DA4
	mov	r0, #0
_06013DE4:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, lr}
	bx	lr
_06013DF0:	.word	0x0380FFF4

	arm_func_start FUN_06013DF4
FUN_06013DF4: ; 0x06013DF4
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	mov	r5, r0
	mov	r4, r1
	mov	r0, #0
	mov	r1, r5
	mov	r2, #44	; 0x2c
	bl	FUN_0600055C
	bl	FUN_0600AA50
	strh	r0, [r5, #16]
	ldr	r0, _06013E44	; =0x0380FFF4
	ldr	r3, [r0]
	add	r0, r5, #24
	mov	r1, r4
	add	r2, r3, #804	; 0x324
	add	r3, r3, #936	; 0x3a8
	bl	FUN_0600AECC
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_06013E44:	.word	0x0380FFF4

	arm_func_start FUN_06013E48
FUN_06013E48: ; 0x06013E48
	ldr	r2, _06013E94	; =0x0380FFF4
	ldr	r1, [r2]
	ldr	r3, [r1, #1116]	; 0x45c
	mov	r1, #0
	strh	r1, [r3]
	strh	r1, [r3, #2]
	strh	r1, [r3, #4]
	mov	r1, #20
	strh	r1, [r3, #10]
	mov	r1, #164	; 0xa4
	strh	r1, [r3, #12]
	orr	r0, r0, #49152	; 0xc000
	strh	r0, [r3, #14]
	ldr	r2, [r2]
	add	r0, r3, #16
	add	r1, r2, #936	; 0x3a8
	add	r2, r2, #804	; 0x324
	ldr	ip, _06013E98	; =_0600AF18
	bx	ip
_06013E94:	.word	0x0380FFF4
_06013E98:	.word	_0600AF18

	arm_func_start FUN_06013E9C
FUN_06013E9C: ; 0x06013E9C
	stmdb	sp!, {r4, r5, r6, lr}
	mov	r6, r0
	mov	r5, r1
	cmp	r2, #0
	bne	_06013EC0
	bl	FUN_06014640
	cmp	r0, #0
	moveq	r0, #0
	beq	_06013F28
_06013EC0:
	ldr	r0, _06013F30	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #392	; 0x188
	mov	r1, #54	; 0x36
	bl	FUN_06009724
	movs	r4, r0
	bne	_06013EEC
	mov	r0, #2
	bl	FUN_0600994C
	mov	r0, r4
	b	_06013F28
_06013EEC:
	ldr	r0, _06013F34	; =0x0000FFFF
	strh	r0, [r4, #12]
	add	r4, r4, #16
	mov	r0, r4
	mov	r1, r6
	bl	FUN_06013DF4
	strh	r5, [r4, #44]	; 0x2c
	mov	r0, #2
	strh	r0, [r4, #6]
	ldrh	r0, [r4, #6]
	add	r0, r0, #28
	strh	r0, [r4, #18]
	mov	r0, #192	; 0xc0
	strh	r0, [r4, #20]
	mov	r0, r4
_06013F28:
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr
_06013F30:	.word	0x0380FFF4
_06013F34:	.word	0x0000FFFF

	arm_func_start FUN_06013F38
FUN_06013F38: ; 0x06013F38
	stmdb	sp!, {r4, r5, r6, lr}
	mov	r6, r0
	mov	r5, r1
	cmp	r2, #0
	beq	_06013F5C
	bl	FUN_06014640
	cmp	r0, #0
	moveq	r0, #0
	beq	_06013FEC
_06013F5C:
	ldr	r0, _06013FF4	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #392	; 0x188
	add	r1, r5, #61	; 0x3d
	bl	FUN_06009724
	movs	r4, r0
	bne	_06013F88
	mov	r0, #2
	bl	FUN_0600994C
	mov	r0, r4
	b	_06013FEC
_06013F88:
	ldr	r0, _06013FF8	; =0x0000FFFF
	strh	r0, [r4, #12]
	add	r4, r4, #16
	mov	r0, r4
	mov	r1, r6
	bl	FUN_06013DF4
	cmp	r5, #0
	beq	_06013FCC
	add	r0, r4, #50	; 0x32
	mov	r1, #16
	bl	FUN_06009CD0
	add	r0, r4, #51	; 0x33
	and	r1, r5, #255	; 0xff
	bl	FUN_06009CD0
	add	r0, r5, #2
	mov	r0, r0, lsl #16
	mov	r5, r0, lsr #16
_06013FCC:
	add	r0, r5, #6
	strh	r0, [r4, #6]
	ldrh	r0, [r4, #6]
	add	r0, r0, #28
	strh	r0, [r4, #18]
	mov	r0, #176	; 0xb0
	strh	r0, [r4, #20]
	mov	r0, r4
_06013FEC:
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr
_06013FF4:	.word	0x0380FFF4
_06013FF8:	.word	0x0000FFFF

	arm_func_start FUN_06013FFC
FUN_06013FFC: ; 0x06013FFC
	stmdb	sp!, {r4, r5, r6, lr}
	mov	r6, r0
	ldr	r0, _060140DC	; =0x0380FFF4
	ldr	r0, [r0]
	add	r5, r0, #836	; 0x344
	bl	FUN_06014640
	cmp	r0, #0
	moveq	r0, #0
	beq	_060140D4
	ldr	r0, _060140DC	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #392	; 0x188
	ldrh	r1, [r5, #160]	; 0xa0
	add	r1, r1, #120	; 0x78
	bl	FUN_06009724
	movs	r4, r0
	bne	_06014050
	mov	r0, #2
	bl	FUN_0600994C
	mov	r0, r4
	b	_060140D4
_06014050:
	ldr	r0, _060140E0	; =0x0000FFFF
	strh	r0, [r4, #12]
	add	r4, r4, #16
	mov	r0, r4
	mov	r1, r6
	bl	FUN_06013DF4
	ldrh	r0, [r5, #110]	; 0x6e
	strh	r0, [r4, #52]	; 0x34
	ldrh	r0, [r5, #124]	; 0x7c
	strh	r0, [r4, #54]	; 0x36
	add	r0, r4, #56	; 0x38
	bl	FUN_06013D0C
	mov	r5, r0
	add	r0, r4, #56	; 0x38
	add	r0, r0, r5
	bl	FUN_06013C54
	add	r5, r5, r0
	add	r0, r4, #56	; 0x38
	add	r0, r0, r5
	bl	FUN_06013C0C
	add	r5, r5, r0
	add	r0, r4, #56	; 0x38
	add	r0, r0, r5
	bl	FUN_06013AE8
	add	r0, r5, r0
	add	r0, r0, #12
	strh	r0, [r4, #6]
	ldrh	r0, [r4, #6]
	add	r0, r0, #28
	strh	r0, [r4, #18]
	mov	r0, #80	; 0x50
	strh	r0, [r4, #20]
	mov	r0, r4
_060140D4:
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr
_060140DC:	.word	0x0380FFF4
_060140E0:	.word	0x0000FFFF

	arm_func_start FUN_060140E4
FUN_060140E4: ; 0x060140E4
	stmdb	sp!, {r4, r5, r6, lr}
	mov	r6, r0
	ldr	r0, _0601416C	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #392	; 0x188
	mov	r1, #90	; 0x5a
	bl	FUN_06009724
	movs	r4, r0
	bne	_06014118
	mov	r0, #2
	bl	FUN_0600994C
	mov	r0, r4
	b	_06014164
_06014118:
	ldr	r0, _06014170	; =0x0000FFFF
	strh	r0, [r4, #12]
	add	r5, r4, #16
	mov	r0, r5
	mov	r1, r6
	bl	FUN_06013DF4
	add	r0, r5, #44	; 0x2c
	bl	FUN_06013D0C
	mov	r4, r0
	add	r0, r5, #44	; 0x2c
	add	r0, r0, r4
	bl	FUN_06013C54
	add	r0, r4, r0
	strh	r0, [r5, #6]
	add	r0, r0, #28
	strh	r0, [r5, #18]
	mov	r0, #64	; 0x40
	strh	r0, [r5, #20]
	mov	r0, r5
_06014164:
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr
_0601416C:	.word	0x0380FFF4
_06014170:	.word	0x0000FFFF

	arm_func_start FUN_06014174
FUN_06014174: ; 0x06014174
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub	sp, sp, #4
	mov	r8, r0
	mov	r7, r1
	mov	r6, r2
	ldr	r0, _060142D8	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #392	; 0x188
	mov	r1, #96	; 0x60
	bl	FUN_06009724
	movs	r4, r0
	bne	_060141B4
	mov	r0, #2
	bl	FUN_0600994C
	mov	r0, r4
	b	_060142CC
_060141B4:
	ldr	r0, _060142DC	; =0x0000FFFF
	strh	r0, [r4, #12]
	add	r5, r4, #16
	cmp	r7, #0
	bne	_060141DC
	mov	r0, r8
	bl	FUN_0600F080
	movs	r4, r0
	moveq	r7, #19
	b	_060141E0
_060141DC:
	mov	r4, #0
_060141E0:
	mov	r0, r8
	bl	FUN_0600EF94
	mov	r1, r0
	mov	r0, r5
	bl	FUN_06013DF4
	ldr	r0, _060142D8	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #192]	; 0xc0
	strh	r0, [r5, #44]	; 0x2c
	strh	r7, [r5, #46]	; 0x2e
	orr	r0, r4, #49152	; 0xc000
	strh	r0, [r5, #48]	; 0x30
	add	r0, r5, #50	; 0x32
	bl	FUN_06013C54
	add	r0, r0, #6
	strh	r0, [r5, #6]
	ldrh	r0, [r5, #6]
	add	r0, r0, #28
	strh	r0, [r5, #18]
	mov	r0, #48	; 0x30
	strh	r0, [r5, #20]
	add	r1, r5, #20
	ldrh	r0, [r5, #18]
	add	r8, r1, r0
	cmp	r6, #0
	beq	_060142B0
	add	r0, r6, #1
	bl	FUN_06009CB0
	mov	r7, r0
	mov	r0, r6
	bl	FUN_06009CB0
	mov	r1, r0
	mov	r0, r8
	bl	FUN_06009CD0
	add	r0, r8, #1
	and	r1, r7, #255	; 0xff
	bl	FUN_06009CD0
	add	r8, r8, #2
	mov	r9, #0
	add	r4, r6, #2
	b	_060142A4
_06014288:
	add	r0, r4, r9
	bl	FUN_06009CB0
	mov	r1, r0
	mov	r0, r8
	bl	FUN_06009CD0
	add	r8, r8, #1
	add	r9, r9, #1
_060142A4:
	cmp	r9, r7
	bcc	_06014288
	b	_060142C8
_060142B0:
	mov	r0, r8
	mov	r1, #0
	bl	FUN_06009CD0
	add	r0, r8, #1
	mov	r1, #0
	bl	FUN_06009CD0
_060142C8:
	mov	r0, r5
_060142CC:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, lr}
	bx	lr
_060142D8:	.word	0x0380FFF4
_060142DC:	.word	0x0000FFFF

	arm_func_start FUN_060142E0
FUN_060142E0: ; 0x060142E0
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub	sp, sp, #4
	mov	r8, r0
	mov	r7, r1
	mov	r6, r2
	ldr	r0, _06014450	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #392	; 0x188
	mov	r1, #96	; 0x60
	bl	FUN_06009724
	movs	r4, r0
	bne	_06014320
	mov	r0, #2
	bl	FUN_0600994C
	mov	r0, r4
	b	_06014444
_06014320:
	ldr	r0, _06014454	; =0x0000FFFF
	strh	r0, [r4, #12]
	add	r5, r4, #16
	cmp	r7, #0
	bne	_06014348
	mov	r0, r8
	bl	FUN_0600F080
	movs	r4, r0
	moveq	r7, #19
	b	_0601434C
_06014348:
	mov	r4, #0
_0601434C:
	mov	r0, r8
	bl	FUN_0600EF94
	mov	r1, r0
	mov	r0, r5
	bl	FUN_06013DF4
	ldr	r0, _06014450	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #192]	; 0xc0
	strh	r0, [r5, #44]	; 0x2c
	strh	r7, [r5, #46]	; 0x2e
	strh	r4, [r5, #48]	; 0x30
	cmp	r4, #0
	ldrneh	r0, [r5, #48]	; 0x30
	orrne	r0, r0, #49152	; 0xc000
	strneh	r0, [r5, #48]	; 0x30
	add	r0, r5, #50	; 0x32
	bl	FUN_06013C54
	add	r0, r0, #6
	strh	r0, [r5, #6]
	ldrh	r0, [r5, #6]
	add	r0, r0, #28
	strh	r0, [r5, #18]
	mov	r0, #16
	strh	r0, [r5, #20]
	add	r1, r5, #20
	ldrh	r0, [r5, #18]
	add	r8, r1, r0
	cmp	r6, #0
	beq	_06014428
	add	r0, r6, #1
	bl	FUN_06009CB0
	mov	r7, r0
	mov	r0, r6
	bl	FUN_06009CB0
	mov	r1, r0
	mov	r0, r8
	bl	FUN_06009CD0
	add	r0, r8, #1
	add	r8, r8, #2
	and	r1, r7, #255	; 0xff
	bl	FUN_06009CD0
	mov	r9, #0
	add	r4, r6, #2
	b	_0601441C
_06014400:
	add	r0, r4, r9
	bl	FUN_06009CB0
	mov	r1, r0
	mov	r0, r8
	bl	FUN_06009CD0
	add	r9, r9, #1
	add	r8, r8, #1
_0601441C:
	cmp	r9, r7
	bcc	_06014400
	b	_06014440
_06014428:
	mov	r0, r8
	mov	r1, #0
	bl	FUN_06009CD0
	add	r0, r8, #1
	mov	r1, #0
	bl	FUN_06009CD0
_06014440:
	mov	r0, r5
_06014444:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, lr}
	bx	lr
_06014450:	.word	0x0380FFF4
_06014454:	.word	0x0000FFFF

	arm_func_start FUN_06014458
FUN_06014458: ; 0x06014458
	stmdb	sp!, {r4, r5, r6, lr}
	mov	r6, r0
	ldr	r0, _06014508	; =0x0380FFF4
	ldr	r0, [r0]
	add	r5, r0, #836	; 0x344
	add	r0, r0, #392	; 0x188
	mov	r1, #100	; 0x64
	bl	FUN_06009724
	movs	r4, r0
	bne	_06014490
	mov	r0, #2
	bl	FUN_0600994C
	mov	r0, r4
	b	_06014500
_06014490:
	ldr	r0, _0601450C	; =0x0000FFFF
	strh	r0, [r4, #12]
	add	r4, r4, #16
	mov	r0, r4
	mov	r1, r6
	bl	FUN_06013DF4
	ldrh	r0, [r5, #124]	; 0x7c
	strh	r0, [r4, #44]	; 0x2c
	ldrh	r0, [r5, #112]	; 0x70
	strh	r0, [r4, #46]	; 0x2e
	add	r0, r4, #48	; 0x30
	add	r1, r5, #130	; 0x82
	bl	FUN_0600AF4C
	add	r0, r4, #54	; 0x36
	bl	FUN_06013D0C
	mov	r5, r0
	add	r0, r4, #54	; 0x36
	add	r0, r0, r5
	bl	FUN_06013C54
	add	r0, r5, r0
	add	r0, r0, #10
	strh	r0, [r4, #6]
	ldrh	r0, [r4, #6]
	add	r0, r0, #28
	strh	r0, [r4, #18]
	mov	r0, #32
	strh	r0, [r4, #20]
	mov	r0, r4
_06014500:
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr
_06014508:	.word	0x0380FFF4
_0601450C:	.word	0x0000FFFF

	arm_func_start FUN_06014510
FUN_06014510: ; 0x06014510
	stmdb	sp!, {r4, r5, r6, lr}
	mov	r6, r0
	ldr	r0, _060145B4	; =0x0380FFF4
	ldr	r0, [r0]
	add	r5, r0, #836	; 0x344
	add	r0, r0, #392	; 0x188
	mov	r1, #94	; 0x5e
	bl	FUN_06009724
	movs	r4, r0
	bne	_06014548
	mov	r0, #2
	bl	FUN_0600994C
	mov	r0, r4
	b	_060145AC
_06014548:
	ldr	r0, _060145B8	; =0x0000FFFF
	strh	r0, [r4, #12]
	add	r4, r4, #16
	mov	r0, r4
	mov	r1, r6
	bl	FUN_06013DF4
	ldrh	r0, [r5, #124]	; 0x7c
	strh	r0, [r4, #44]	; 0x2c
	ldrh	r0, [r5, #112]	; 0x70
	strh	r0, [r4, #46]	; 0x2e
	add	r0, r4, #48	; 0x30
	bl	FUN_06013D0C
	mov	r5, r0
	add	r0, r4, #48	; 0x30
	add	r0, r0, r5
	bl	FUN_06013C54
	add	r0, r5, r0
	add	r0, r0, #4
	strh	r0, [r4, #6]
	ldrh	r0, [r4, #6]
	add	r0, r0, #28
	strh	r0, [r4, #18]
	mov	r0, #0
	strh	r0, [r4, #20]
	mov	r0, r4
_060145AC:
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr
_060145B4:	.word	0x0380FFF4
_060145B8:	.word	0x0000FFFF

	arm_func_start FUN_060145BC
FUN_060145BC: ; 0x060145BC
	stmdb	sp!, {r4, r5, r6, lr}
	mov	r6, r0
	mov	r5, r1
	ldr	r0, _06014638	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #392	; 0x188
	mov	r1, #54	; 0x36
	bl	FUN_06009724
	movs	r4, r0
	bne	_060145F4
	mov	r0, #2
	bl	FUN_0600994C
	mov	r0, r4
	b	_06014630
_060145F4:
	ldr	r0, _0601463C	; =0x0000FFFF
	strh	r0, [r4, #12]
	add	r4, r4, #16
	mov	r0, r4
	mov	r1, r6
	bl	FUN_06013DF4
	strh	r5, [r4, #44]	; 0x2c
	mov	r0, #2
	strh	r0, [r4, #6]
	ldrh	r0, [r4, #6]
	add	r0, r0, #28
	strh	r0, [r4, #18]
	mov	r0, #160	; 0xa0
	strh	r0, [r4, #20]
	mov	r0, r4
_06014630:
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr
_06014638:	.word	0x0380FFF4
_0601463C:	.word	0x0000FFFF

	arm_func_start FUN_06014640
FUN_06014640: ; 0x06014640
	ldr	r0, _0601466C	; =0x0380FFF4
	ldr	r2, [r0]
	add	r0, r2, #256	; 0x100
	ldrh	r1, [r0, #168]	; 0xa8
	add	r0, r2, #1280	; 0x500
	ldrh	r0, [r0, #56]	; 0x38
	rsb	r0, r0, #24
	cmp	r1, r0
	movlt	r0, #1
	movge	r0, #0
	bx	lr
_0601466C:	.word	0x0380FFF4

	arm_func_start FUN_06014670
FUN_06014670: ; 0x06014670
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	ldr	r0, _0601476C	; =0x0380FFF4
	ldr	r0, [r0]
	add	r5, r0, #836	; 0x344
	ldr	r0, [r0, #1196]	; 0x4ac
	add	r1, r0, #36	; 0x24
	ldrh	r0, [r5, #150]	; 0x96
	add	r4, r1, r0
	ldrh	r2, [r5, #160]	; 0xa0
	cmp	r2, #0
	beq	_060146EC
	ldrh	r0, [r5, #162]	; 0xa2
	ands	r0, r0, #1
	beq	_060146DC
	add	r0, r4, #10
	sub	r0, r0, #1
	ldr	r1, [r5, #156]	; 0x9c
	add	r2, r2, #2
	bl	FUN_06009D74
	add	r0, r4, #9
	ldr	r1, _06014770	; =0x0380FFF0
	ldrh	r1, [r1]
	mov	r1, r1, asr #8
	and	r1, r1, #255	; 0xff
	bl	FUN_06009CD0
	b	_060146EC
_060146DC:
	add	r0, r4, #10
	ldr	r1, [r5, #156]	; 0x9c
	add	r2, r2, #1
	bl	FUN_06009D74
_060146EC:
	ldrh	r0, [r5, #150]	; 0x96
	add	r1, r0, #38	; 0x26
	ldrh	r0, [r5, #160]	; 0xa0
	add	r1, r1, r0
	ldr	r0, _0601476C	; =0x0380FFF4
	ldr	r0, [r0]
	ldr	r0, [r0, #1196]	; 0x4ac
	strh	r1, [r0, #10]
	add	r0, r4, #1
	ldrh	r1, [r5, #160]	; 0xa0
	add	r1, r1, #8
	and	r1, r1, #255	; 0xff
	bl	FUN_06009CD0
	ldr	r0, _0601476C	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #1536	; 0x600
	ldrh	r0, [r0, #144]	; 0x90
	ands	r0, r0, #4
	beq	_06014758
	add	r1, r4, #13
	ldrh	r0, [r5, #160]	; 0xa0
	add	r0, r1, r0
	bic	r1, r0, #3
	ldr	r0, _06014774	; =0x0000B6B8
	strh	r0, [r1]
	ldr	r0, _06014778	; =0x00001D46
	strh	r0, [r1, #2]
_06014758:
	mov	r0, #0
	strh	r0, [r5, #164]	; 0xa4
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_0601476C:	.word	0x0380FFF4
_06014770:	.word	0x0380FFF0
_06014774:	.word	0x0000B6B8
_06014778:	.word	0x00001D46

	arm_func_start FUN_0601477C
FUN_0601477C: ; 0x0601477C
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	r0, _06014AD0	; =0x0380FFF4
	ldr	r0, [r0]
	ldr	sl, [r0, #1196]	; 0x4ac
	add	r9, r0, #796	; 0x31c
	add	r8, r0, #836	; 0x344
	mov	r0, #0
	strh	r0, [sl]
	strh	r0, [sl, #2]
	strh	r0, [sl, #4]
	strh	r0, [sl, #6]
	bl	FUN_0600AA50
	strh	r0, [sl, #8]
	mov	r0, #128	; 0x80
	strh	r0, [sl, #12]
	mov	r0, #0
	strh	r0, [sl, #14]
	add	r0, sl, #16
	ldr	r1, _06014AD4	; =_06019384
	add	r2, r9, #8
	mov	r3, r2
	bl	FUN_0600AECC
	mov	r1, #0
	strh	r1, [sl, #34]	; 0x22
	add	r7, sl, #36	; 0x24
	str	r1, [sl, #36]	; 0x24
	str	r1, [r7, #4]
	ldrh	r0, [r8, #110]	; 0x6e
	strh	r0, [r7, #8]
	ldrh	r0, [r8, #124]	; 0x7c
	strh	r0, [r7, #10]
	add	r6, r7, #12
	ldrh	r0, [r9, #30]
	mov	r0, r0, lsl #31
	movs	r0, r0, lsr #31
	bne	_0601487C
	sub	r0, r6, r7
	strh	r0, [r8, #146]	; 0x92
	mov	r0, r6
	bl	FUN_06009CD0
	add	r0, r6, #1
	add	r6, r6, #2
	ldrh	r1, [r8, #30]
	and	r1, r1, #255	; 0xff
	bl	FUN_06009CD0
	mov	r5, #0
	add	r4, r8, #32
	b	_06014858
_0601483C:
	add	r0, r4, r5
	bl	FUN_06009CB0
	mov	r1, r0
	mov	r0, r6
	bl	FUN_06009CD0
	add	r6, r6, #1
	add	r5, r5, #1
_06014858:
	ldrh	r0, [r8, #30]
	cmp	r5, r0
	bcc	_0601483C
	mvn	r0, #0
	sub	r0, r0, r5
	add	r0, r6, r0
	and	r1, r5, #255	; 0xff
	bl	FUN_06009CD0
	b	_06014880
_0601487C:
	strh	r1, [r8, #146]	; 0x92
_06014880:
	mov	r0, r6
	bl	FUN_06013C54
	add	r6, r6, r0
	mov	r0, r6
	mov	r1, #3
	bl	FUN_06009CD0
	add	r0, r6, #1
	mov	r1, #1
	bl	FUN_06009CD0
	add	r0, r6, #2
	ldrh	r1, [r8, #122]	; 0x7a
	and	r1, r1, #255	; 0xff
	bl	FUN_06009CD0
	add	r0, r6, #3
	sub	r1, r0, r7
	strh	r1, [r8, #148]	; 0x94
	ldrh	r1, [r8, #148]	; 0x94
	add	r2, r1, #2
	ldr	r1, _06014AD8	; =0x04808084
	strh	r2, [r1]
	mov	r1, #5
	bl	FUN_06009CD0
	add	r0, r6, #4
	mov	r1, #5
	bl	FUN_06009CD0
	add	r0, r6, #5
	mov	r1, #0
	bl	FUN_06009CD0
	add	r0, r6, #6
	ldrh	r1, [r8, #116]	; 0x74
	and	r1, r1, #255	; 0xff
	bl	FUN_06009CD0
	add	r0, r6, #7
	mov	r1, #0
	bl	FUN_06009CD0
	add	r0, r6, #8
	mov	r1, #0
	bl	FUN_06009CD0
	add	r0, r6, #9
	mov	r1, #0
	bl	FUN_06009CD0
	add	r0, r6, #10
	sub	r1, r0, r7
	strh	r1, [r8, #150]	; 0x96
	ldrh	r1, [r8, #150]	; 0x96
	and	r1, r1, #1
	strh	r1, [r8, #162]	; 0xa2
	mov	r1, #221	; 0xdd
	bl	FUN_06009CD0
	add	r0, r6, #11
	ldrh	r1, [r8, #160]	; 0xa0
	add	r1, r1, #8
	and	r1, r1, #255	; 0xff
	bl	FUN_06009CD0
	add	r0, r6, #12
	mov	r1, #0
	bl	FUN_06009CD0
	add	r0, r6, #13
	mov	r1, #9
	bl	FUN_06009CD0
	add	r0, r6, #14
	mov	r1, #191	; 0xbf
	bl	FUN_06009CD0
	add	r0, r6, #15
	mov	r1, #0
	bl	FUN_06009CD0
	ldrh	r0, [r8, #14]
	cmp	r0, #1
	bne	_060149C0
	add	r0, r6, #16
	ldrh	r1, [r9, #32]
	and	r1, r1, #255	; 0xff
	bl	FUN_06009CD0
	add	r0, r6, #17
	add	r6, r6, #18
	ldrh	r1, [r9, #32]
	mov	r1, r1, asr #8
	and	r1, r1, #255	; 0xff
	bl	FUN_06009CD0
	b	_060149DC
_060149C0:
	add	r0, r6, #16
	mov	r1, #255	; 0xff
	bl	FUN_06009CD0
	add	r0, r6, #17
	add	r6, r6, #18
	mov	r1, #255	; 0xff
	bl	FUN_06009CD0
_060149DC:
	ldr	r0, _06014ADC	; =0x0380FFF0
	ldrh	r4, [r0]
	mov	r0, r6
	and	r1, r4, #255	; 0xff
	bl	FUN_06009CD0
	add	r0, r6, #1
	add	r6, r6, #2
	mov	r1, r4, lsr #8
	and	r1, r1, #255	; 0xff
	bl	FUN_06009CD0
	ldr	r5, [r8, #156]	; 0x9c
	mov	r4, #0
	b	_06014A30
_06014A10:
	mov	r0, r5
	bl	FUN_06009CB0
	mov	r1, r0
	mov	r0, r6
	bl	FUN_06009CD0
	add	r6, r6, #1
	add	r5, r5, #1
	add	r4, r4, #1
_06014A30:
	ldrh	r1, [r8, #160]	; 0xa0
	cmp	r4, r1
	bcc	_06014A10
	ldrh	r0, [r8, #162]	; 0xa2
	cmp	r0, #0
	beq	_06014A84
	ldr	r0, [r8, #156]	; 0x9c
	add	r0, r0, r1
	sub	r4, r0, #1
	mov	r5, #0
	b	_06014A78
_06014A5C:
	mov	r0, r4
	bl	FUN_06009CB0
	mov	r1, r0
	add	r0, r4, #1
	bl	FUN_06009CD0
	add	r5, r5, #1
	sub	r4, r4, #1
_06014A78:
	ldrh	r0, [r8, #160]	; 0xa0
	cmp	r5, r0
	bcc	_06014A5C
_06014A84:
	ldr	r0, _06014AD0	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #1536	; 0x600
	ldrh	r0, [r0, #144]	; 0x90
	ands	r0, r0, #4
	beq	_06014AB4
	add	r0, r6, #3
	bic	r1, r0, #3
	ldr	r0, _06014AE0	; =0x0000B6B8
	strh	r0, [r1]
	ldr	r0, _06014AE4	; =0x00001D46
	strh	r0, [r1, #2]
_06014AB4:
	mov	r0, #0
	strh	r0, [r8, #164]	; 0xa4
	add	r0, r6, #28
	sub	r0, r0, r7
	strh	r0, [sl, #10]
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	bx	lr
_06014AD0:	.word	0x0380FFF4
_06014AD4:	.word	_06019384
_06014AD8:	.word	0x04808084
_06014ADC:	.word	0x0380FFF0
_06014AE0:	.word	0x0000B6B8
_06014AE4:	.word	0x00001D46

	arm_func_start FUN_06014AE8
FUN_06014AE8: ; 0x06014AE8
	ldr	r0, _06014B08	; =0x0380FFF4
	ldr	r2, [r0]
	mov	r1, #0
	ldr	r0, _06014B0C	; =0x04808080
	strh	r1, [r0]
	add	r0, r2, #1024	; 0x400
	strh	r1, [r0, #164]	; 0xa4
	bx	lr
_06014B08:	.word	0x0380FFF4
_06014B0C:	.word	0x04808080

	arm_func_start FUN_06014B10
FUN_06014B10: ; 0x06014B10
	ldr	r0, _06014B4C	; =0x0380FFF4
	ldr	r2, [r0]
	ldr	r0, _06014B50	; =0x000004A4
	add	r3, r2, r0
	mov	r1, #1
	add	r0, r2, #1024	; 0x400
	strh	r1, [r0, #164]	; 0xa4
	ldr	r1, [r3, #8]
	ldr	r0, _06014B54	; =0x00003FFF
	and	r0, r1, r0
	mov	r0, r0, lsr #1
	orr	r1, r0, #32768	; 0x8000
	ldr	r0, _06014B58	; =0x04808080
	strh	r1, [r0]
	bx	lr
_06014B4C:	.word	0x0380FFF4
_06014B50:	.word	0x000004A4
_06014B54:	.word	0x00003FFF
_06014B58:	.word	0x04808080

	arm_func_start FUN_06014B5C
FUN_06014B5C: ; 0x06014B5C
	stmdb	sp!, {r4, lr}
	ldr	r0, _06014BE8	; =0x0380FFF4
	ldr	r1, [r0]
	ldr	r0, _06014BEC	; =0x00000454
	add	r4, r1, r0
	ldrh	r0, [r4, #2]
	add	r0, r0, #1
	strh	r0, [r4, #2]
	add	r0, r1, #1024	; 0x400
	ldrh	r0, [r0, #84]	; 0x54
	cmp	r0, #0
	movne	r1, #0
	ldrne	r0, [r4, #8]
	strneh	r1, [r0, #4]
	bne	_06014BE0
	mov	r0, #1
	strh	r0, [r4]
	mov	r1, #0
	ldr	r0, [r4, #8]
	strh	r1, [r0]
	ldr	r0, [r4, #8]
	strh	r1, [r0, #4]
	bl	FUN_0600AA50
	ldr	r1, [r4, #8]
	strh	r0, [r1, #8]
	ldr	r1, [r4, #8]
	ldr	r0, _06014BF0	; =0x00003FFF
	and	r0, r1, r0
	mov	r0, r0, lsl #15
	mov	r0, r0, lsr #16
	orr	r1, r0, #32768	; 0x8000
	ldr	r0, _06014BF4	; =0x048080A8
	strh	r1, [r0]
_06014BE0:
	ldmia	sp!, {r4, lr}
	bx	lr
_06014BE8:	.word	0x0380FFF4
_06014BEC:	.word	0x00000454
_06014BF0:	.word	0x00003FFF
_06014BF4:	.word	0x048080A8

	arm_func_start FUN_06014BF8
FUN_06014BF8: ; 0x06014BF8
	stmdb	sp!, {r4, lr}
	mov	r4, r0
	add	r0, r4, #24
	bl	FUN_0600F608
	strh	r0, [r4, #2]
	ldrh	r0, [r4, #2]
	cmp	r0, #255	; 0xff
	moveq	r0, #0
	streqh	r0, [r4, #2]
	ldr	r0, _06014C68	; =0x0380FFF4
	ldr	r0, [r0]
	ldr	r0, [r0, #1004]	; 0x3ec
	strh	r0, [r4, #4]
	ldrh	r0, [r4, #20]
	ands	r0, r0, #16384	; 0x4000
	ldrneh	r0, [r4, #18]
	addne	r0, r0, #8
	strneh	r0, [r4, #18]
	mov	r0, r4
	bl	FUN_0600F3CC
	ldr	r0, _06014C68	; =0x0380FFF4
	ldr	r1, [r0]
	add	r0, r1, #392	; 0x188
	add	r1, r1, #416	; 0x1a0
	sub	r2, r4, #16
	bl	FUN_0600962C
	ldmia	sp!, {r4, lr}
	bx	lr
_06014C68:	.word	0x0380FFF4

	arm_func_start FUN_06014C6C
FUN_06014C6C: ; 0x06014C6C
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	bl	FUN_06014BF8
	mov	r0, #1
	bl	FUN_06015C78
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr

	arm_func_start FUN_06014C8C
FUN_06014C8C: ; 0x06014C8C
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #4
	mov	sl, r0
	mov	r9, r1
	mov	r0, #12
	mul	r6, sl, r0
	ldr	r0, _06014D20	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, r6
	ldr	r8, [r0, #404]	; 0x194
	mvn	r4, #0
	cmp	r8, r4
	beq	_06014D14
	mov	r5, #2
_06014CC4:
	mov	r0, r8
	bl	FUN_06009434
	mov	fp, r0
	add	r7, r8, #16
	cmp	sl, #2
	beq	_06014CE4
	mov	r0, r7
	bl	FUN_0600F360
_06014CE4:
	strh	r5, [r7, #8]
	cmp	r9, #0
	beq	_06014D08
	ldr	r0, _06014D20	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #404	; 0x194
	add	r0, r0, r6
	mov	r1, r8
	bl	FUN_06012DD4
_06014D08:
	mov	r8, fp
	cmp	fp, r4
	bne	_06014CC4
_06014D14:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
_06014D20:	.word	0x0380FFF4

	arm_func_start FUN_06014D24
FUN_06014D24: ; 0x06014D24
	stmdb	sp!, {r4, lr}
	ldr	r0, _06014E0C	; =0x0380FFF4
	ldr	r1, [r0]
	ldr	r0, _06014E10	; =0x0000042C
	add	r4, r1, r0
	add	r0, r1, #768	; 0x300
	ldrh	r0, [r0, #80]	; 0x50
	cmp	r0, #1
	beq	_06014D5C
	cmp	r0, #2
	beq	_06014DB8
	cmp	r0, #3
	beq	_06014DB8
	b	_06014DE0
_06014D5C:
	mov	r0, #0
	mov	r1, #1
	bl	FUN_06014C8C
	mov	r0, #1
	mov	r1, #0
	bl	FUN_06014C8C
	mov	r0, #2
	mov	r1, #1
	bl	FUN_06014C8C
	ldrh	r0, [r4, #60]	; 0x3c
	cmp	r0, #0
	beq	_06014E04
	mov	r0, #0
	strh	r0, [r4, #60]	; 0x3c
	ldrh	r0, [r4, #62]	; 0x3e
	sub	r0, r0, #1
	strh	r0, [r4, #62]	; 0x3e
	ldr	r0, _06014E0C	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #392	; 0x188
	ldr	r1, [r4, #144]	; 0x90
	bl	FUN_060096A0
	b	_06014E04
_06014DB8:
	mov	r0, #0
	mov	r1, #1
	bl	FUN_06014C8C
	mov	r0, #1
	mov	r1, #0
	bl	FUN_06014C8C
	mov	r0, #2
	mov	r1, #0
	bl	FUN_06014C8C
	b	_06014E04
_06014DE0:
	mov	r0, #0
	mov	r1, r0
	bl	FUN_06014C8C
	mov	r0, #1
	mov	r1, #0
	bl	FUN_06014C8C
	mov	r0, #2
	mov	r1, #0
	bl	FUN_06014C8C
_06014E04:
	ldmia	sp!, {r4, lr}
	bx	lr
_06014E0C:	.word	0x0380FFF4
_06014E10:	.word	0x0000042C

	arm_func_start FUN_06014E14
FUN_06014E14: ; 0x06014E14
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	ldrh	r1, [r0]
	ands	r1, r1, #1
	beq	_06014E58
	mov	r5, #1
	ldr	r4, _06014EB4	; =0x0380FFF4
	b	_06014E40
_06014E34:
	mov	r0, r5
	bl	FUN_06014EB8
	add	r5, r5, #1
_06014E40:
	ldr	r0, [r4]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #34]	; 0x22
	cmp	r5, r0
	bcc	_06014E34
	b	_06014EA8
_06014E58:
	bl	FUN_0600F608
	mov	r4, r0
	cmp	r4, #255	; 0xff
	beq	_06014E6C
	bl	FUN_06014EB8
_06014E6C:
	ldr	r0, _06014EB4	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #46]	; 0x2e
	cmp	r0, #1
	bne	_06014EA8
	mov	r0, r4
	bl	FUN_0600EFF0
	cmp	r0, #64	; 0x40
	bne	_06014EA8
	mov	r0, r4, lsl #16
	mov	r0, r0, lsr #16
	mov	r1, #32
	bl	FUN_0600F294
	bl	FUN_060151F0
_06014EA8:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_06014EB4:	.word	0x0380FFF4

	arm_func_start FUN_06014EB8
FUN_06014EB8: ; 0x06014EB8
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #12
	mov	fp, r0
	mov	r8, #0
	bl	FUN_0600EEFC
	cmp	r0, #0
	beq	_06014FB8
	mov	r7, r8
	mov	r0, #1
	str	r0, [sp, #8]
	mov	r4, #2
	str	r7, [sp, #4]
_06014EE8:
	mov	r0, #12
	mul	r5, r7, r0
	ldr	r0, _06014FC4	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, r5
	ldr	sl, [r0, #404]	; 0x194
	mvn	r0, #0
	cmp	sl, r0
	beq	_06014FAC
	mov	r0, #20
	mul	r6, r7, r0
_06014F14:
	mov	r0, sl
	bl	FUN_06009434
	str	r0, [sp]
	add	r9, sl, #16
	ldrh	r0, [r9, #2]
	cmp	r0, fp
	bne	_06014F98
	cmp	r7, #1
	beq	_06014F50
	ldr	r0, _06014FC4	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r6, r0
	ldr	r0, [r0, #1080]	; 0x438
	cmp	r9, r0
	bne	_06014F6C
_06014F50:
	mov	r0, r9
	bl	FUN_0600F360
	ldr	r0, [sp, #4]
	strh	r0, [r9, #2]
	mov	r0, r9
	bl	FUN_0600F3CC
	b	_06014F98
_06014F6C:
	strh	r4, [r9, #8]
	mov	r0, r9
	bl	FUN_0600F360
	ldr	r0, _06014FC4	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #404	; 0x194
	add	r0, r0, r5
	mov	r1, sl
	bl	FUN_06012DD4
	cmp	r8, #0
	ldreq	r8, [sp, #8]
_06014F98:
	ldr	sl, [sp]
	mvn	r1, #0
	mov	r0, sl
	cmp	r0, r1
	bne	_06014F14
_06014FAC:
	add	r7, r7, #1
	cmp	r7, #3
	bcc	_06014EE8
_06014FB8:
	add	sp, sp, #12
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
_06014FC4:	.word	0x0380FFF4

	arm_func_start FUN_06014FC8
FUN_06014FC8: ; 0x06014FC8
	stmdb	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #4
	mov	r7, r0
	ldr	r0, _06015050	; =0x0380FFF4
	ldr	r1, [r0]
	ldr	r0, _06015054	; =0x0000042C
	add	r5, r1, r0
	mov	r0, #20
	mul	r4, r7, r0
	add	r6, r5, r4
	mov	r0, #16777216	; 0x1000000
	bl	FUN_06009068
	mov	r2, r7, lsl #1
	ldr	r1, _06015058	; =_06019958
	ldrh	r2, [r1, r2]
	ldr	r1, _0601505C	; =0x048080B4
	strh	r2, [r1]
	ldrh	r1, [r5, r4]
	cmp	r1, #0
	beq	_06015040
	ldr	r2, [r6, #12]
	ldrh	r1, [r2, #20]
	ands	r1, r1, #16384	; 0x4000
	ldreq	r1, [r6, #8]
	ldreqh	r1, [r1, #4]
	streqh	r1, [r2, #12]
	ldr	r1, [r6, #8]
	ldrh	r2, [r1, #34]	; 0x22
	ldr	r1, [r6, #12]
	strh	r2, [r1, #42]	; 0x2a
_06015040:
	bl	FUN_06009070
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, lr}
	bx	lr
_06015050:	.word	0x0380FFF4
_06015054:	.word	0x0000042C
_06015058:	.word	_06019958
_0601505C:	.word	0x048080B4

	arm_func_start FUN_06015060
FUN_06015060: ; 0x06015060
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	ldr	r1, _060150D0	; =0x0380FFF4
	ldr	r2, [r1]
	ldr	r1, _060150D4	; =0x0000042C
	add	r2, r2, r1
	mov	r1, #20
	mul	r1, r0, r1
	add	r3, r2, r1
	ldrh	r0, [r2, r1]
	cmp	r0, #0
	beq	_060150C4
	ldr	r0, [r3, #8]
	ldrh	r1, [r0]
	cmp	r1, #0
	moveq	r1, #2
	ldreq	r0, [r3, #12]
	streqh	r1, [r0, #8]
	ldrne	r0, [r3, #12]
	strneh	r1, [r0, #8]
	ldr	r0, [r3, #12]
	mov	r1, #0
	ldr	r2, [r3, #16]
	mov	lr, pc
	bx	r2
_060150C4:
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_060150D0:	.word	0x0380FFF4
_060150D4:	.word	0x0000042C

	arm_func_start FUN_060150D8
FUN_060150D8: ; 0x060150D8
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	ldr	r0, _06015184	; =0x0380FFF4
	ldr	r1, [r0]
	ldr	r0, _06015188	; =0x0000042C
	add	r5, r1, r0
	mov	r0, #16777216	; 0x1000000
	bl	FUN_06009068
	mov	r4, r0
	ldr	r0, _06015184	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #80]	; 0x50
	cmp	r0, #1
	bne	_06015144
	mov	r1, #9
	ldr	r0, _0601518C	; =0x048080B4
	strh	r1, [r0]
	ldrh	r0, [r5, #40]	; 0x28
	cmp	r0, #0
	beq	_06015134
	mov	r0, #2
	bl	FUN_06015060
_06015134:
	mov	r0, #2
	mov	r1, #1
	bl	FUN_06014C8C
	b	_06015150
_06015144:
	mov	r1, #1
	ldr	r0, _0601518C	; =0x048080B4
	strh	r1, [r0]
_06015150:
	ldrh	r0, [r5]
	cmp	r0, #0
	beq	_06015164
	mov	r0, #0
	bl	FUN_06015060
_06015164:
	mov	r0, #0
	mov	r1, #1
	bl	FUN_06014C8C
	mov	r0, r4
	bl	FUN_06009070
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_06015184:	.word	0x0380FFF4
_06015188:	.word	0x0000042C
_0601518C:	.word	0x048080B4

	arm_func_start FUN_06015190
FUN_06015190: ; 0x06015190
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	ldr	r0, _060151E4	; =0x0380FFF4
	ldr	r1, [r0]
	ldr	r0, _060151E8	; =0x0000042C
	add	r5, r1, r0
	mov	r0, #16777216	; 0x1000000
	bl	FUN_06009068
	mov	r4, r0
	mov	r1, #2
	ldr	r0, _060151EC	; =0x048080B4
	strh	r1, [r0]
	ldrh	r0, [r5, #60]	; 0x3c
	cmp	r0, #0
	beq	_060151D0
	bl	FUN_0600E21C
_060151D0:
	mov	r0, r4
	bl	FUN_06009070
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_060151E4:	.word	0x0380FFF4
_060151E8:	.word	0x0000042C
_060151EC:	.word	0x048080B4

	arm_func_start FUN_060151F0
FUN_060151F0: ; 0x060151F0
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	ldr	r0, _06015264	; =0x0380FFF4
	ldr	r1, [r0]
	ldr	r0, _06015268	; =0x0000042C
	add	r5, r1, r0
	mov	r0, #16777216	; 0x1000000
	bl	FUN_06009068
	mov	r4, r0
	ldr	r0, _06015264	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #58]	; 0x3a
	mov	r0, r0, lsl #24
	movs	r0, r0, lsr #31
	bne	_06015238
	mov	r0, #0
	bl	FUN_0600B004
_06015238:
	mov	r1, #192	; 0xc0
	ldr	r0, _0601526C	; =0x048080B4
	strh	r1, [r0]
	mov	r0, #0
	strh	r0, [r5, #80]	; 0x50
	strh	r0, [r5, #100]	; 0x64
	mov	r0, r4
	bl	FUN_06009070
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_06015264:	.word	0x0380FFF4
_06015268:	.word	0x0000042C
_0601526C:	.word	0x048080B4

	arm_func_start FUN_06015270
FUN_06015270: ; 0x06015270
	ldr	r1, [r0, #8]
	ldrh	r1, [r1, #4]
	ands	r3, r1, #255	; 0xff
	ldr	r1, _060152BC	; =0x0380FFF4
	ldr	r2, [r1]
	ldr	r1, _060152C0	; =0x0000053C
	add	r2, r2, r1
	ldreq	r1, [r2, #108]	; 0x6c
	addeq	r1, r1, #1
	streq	r1, [r2, #108]	; 0x6c
	ldrne	r1, [r2, #104]	; 0x68
	addne	r1, r1, r3
	strne	r1, [r2, #104]	; 0x68
	ldrh	r1, [r0, #4]
	add	r1, r1, #1
	strh	r1, [r0, #4]
	mov	r1, #0
	strh	r1, [r0]
	bx	lr
_060152BC:	.word	0x0380FFF4
_060152C0:	.word	0x0000053C

	arm_func_start FUN_060152C4
FUN_060152C4: ; 0x060152C4
	stmdb	sp!, {r4, r5, r6, r7, lr}

	arm_func_start FUN_060152C8
FUN_060152C8: ; 0x060152C8
	sub	sp, sp, #4
	mov	r7, r0
	mov	r6, r1
	ldr	r1, _060153D8	; =0x0380FFF4
	ldr	r2, [r1]
	add	r5, r2, #380	; 0x17c
	add	r4, r5, #48	; 0x30
	ldr	r1, [r2, #1360]	; 0x550
	add	r1, r1, #1
	str	r1, [r2, #1360]	; 0x550
	ldrh	r1, [r7, #20]
	mov	r1, r1, lsl #28
	movs	r1, r1, lsr #30
	bne	_06015324
	bl	FUN_0600F3CC
	mov	r0, r4
	add	r1, r5, #36	; 0x24
	sub	r2, r7, #16
	bl	FUN_0600962C
	mov	r0, r7
	mov	r1, #0
	bl	FUN_06015458
	b	_06015330
_06015324:
	mov	r0, r4
	sub	r1, r7, #16
	bl	FUN_06012DD4
_06015330:
	mov	r2, #0
	ldr	r1, _060153D8	; =0x0380FFF4
	ldr	r0, [r1]
	add	r0, r0, #1024	; 0x400
	strh	r2, [r0, #84]	; 0x54
	ldr	r0, [r1]
	ldr	r0, [r0, #1116]	; 0x45c
	ldrh	r0, [r0, #12]
	mov	r0, r0, lsl #18
	movs	r0, r0, lsr #31
	bne	_060153A4
	mov	r1, #8
	ldr	r0, _060153DC	; =0x048080AC
	strh	r1, [r0]
	mov	r1, #5
	ldr	r0, _060153E0	; =0x048080AE
	strh	r1, [r0]
	cmp	r6, #0
	beq	_060153A4
	ldrh	r0, [r5, #44]	; 0x2c
	cmp	r0, #0
	beq	_06015390
	mov	r0, #1
	bl	FUN_06015C78
_06015390:
	ldrh	r0, [r5, #32]
	cmp	r0, #0
	beq	_060153A4
	mov	r0, #0
	bl	FUN_06015C78
_060153A4:
	ldrh	r0, [r4, #8]
	cmp	r0, #0
	beq	_060153C4
	cmp	r6, #0
	beq	_060153CC
	mov	r0, #2
	bl	FUN_06015C78
	b	_060153CC
_060153C4:
	mov	r0, #0
	bl	FUN_0600ED74
_060153CC:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, lr}
	bx	lr
_060153D8:	.word	0x0380FFF4
_060153DC:	.word	0x048080AC
_060153E0:	.word	0x048080AE
_060153E4:
	ldr	r1, _06015450	; =0x0380FFF4

	arm_func_start FUN_060153E8
FUN_060153E8: ; 0x060153E8
	ldr	r2, [r1]
	ldr	r1, _06015454	; =0x0000053C
	add	r3, r2, r1
	ldr	r2, [r3, #8]
	ldrh	r1, [r0, #4]
	and	r1, r1, #255	; 0xff
	add	r1, r2, r1
	str	r1, [r3, #8]
	ldrh	r0, [r0]
	ands	r0, r0, #2
	ldrne	r0, [r3, #4]
	addne	r0, r0, #1
	strne	r0, [r3, #4]
	bne	_06015438
	ldr	r0, [r3]
	add	r0, r0, #1
	str	r0, [r3]
	ldr	r0, [r3, #16]
	add	r0, r0, #1
	str	r0, [r3, #16]
_06015438:
	mov	r1, #0
	ldr	r0, _06015450	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #1024	; 0x400
	strh	r1, [r0, #84]	; 0x54
	bx	lr
_06015450:	.word	0x0380FFF4
_06015454:	.word	0x0000053C

	arm_func_start FUN_06015458
FUN_06015458: ; 0x06015458
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}

	arm_func_start FUN_0601545C
FUN_0601545C: ; 0x0601545C
	sub	sp, sp, #4
	mov	sl, r0
	mov	r9, r1
	ldr	r0, _06015968	; =0x0380FFF4
	ldr	r1, [r0]
	add	r4, r1, #836	; 0x344
	ldr	r0, _0601596C	; =0x00000404
	add	r8, r1, r0
	ldr	r0, _06015970	; =0x0000053C
	add	r5, r1, r0
	add	r7, r1, #416	; 0x1a0
	ldrh	r6, [sl, #2]
	ldrh	r0, [sl, #8]
	ands	r0, r0, #2
	bne	_060154EC
	ldr	r0, [r5]
	add	r0, r0, #1
	str	r0, [r5]
	ldrh	r0, [sl, #24]
	ands	r0, r0, #1
	ldrne	r0, [r5, #20]
	addne	r0, r0, #1
	strne	r0, [r5, #20]
	ldreq	r0, [r5, #16]
	addeq	r0, r0, #1
	streq	r0, [r5, #16]
	mov	r0, r6
	bl	FUN_0600EFB0
	cmp	r0, #0
	beq	_060154F8
	ldrh	r0, [sl, #20]
	ands	r0, r0, #8192	; 0x2000
	bne	_060154F8
	mov	r0, r6
	bl	FUN_0600F1D8
	b	_060154F8
_060154EC:
	ldr	r0, [r5, #4]
	add	r0, r0, #1
	str	r0, [r5, #4]
_060154F8:
	ldrh	r0, [sl, #20]
	mov	r0, r0, lsl #17
	movs	r0, r0, lsr #31
	ldrne	r0, [r5, #24]
	addne	r0, r0, #1
	strne	r0, [r5, #24]
	ldr	r1, [r5, #8]
	ldrh	r0, [sl, #12]
	and	r0, r0, #255	; 0xff
	add	r0, r1, r0
	str	r0, [r5, #8]
	ldrh	r0, [sl, #20]
	and	r5, r0, #252	; 0xfc
	cmp	r5, #160	; 0xa0
	bhi	_0601555C
	cmp	r5, #160	; 0xa0
	bcs	_060156D8
	cmp	r5, #16
	bhi	_06015550
	cmp	r5, #16
	beq	_06015614
	b	_06015918
_06015550:
	cmp	r5, #48	; 0x30
	beq	_06015614
	b	_06015918
_0601555C:
	cmp	r5, #176	; 0xb0
	bhi	_06015570
	cmp	r5, #176	; 0xb0
	beq	_0601557C
	b	_06015918
_06015570:
	cmp	r5, #192	; 0xc0
	beq	_060157C8
	b	_06015918
_0601557C:
	cmp	r6, #0
	beq	_06015918
	ldrh	r0, [sl, #8]
	ands	r0, r0, #2
	bne	_06015918
	ldrh	r1, [sl, #44]	; 0x2c
	cmp	r1, #0
	bne	_060155D4
	ldrh	r0, [sl, #46]	; 0x2e
	cmp	r0, #2
	bne	_060155D4
	ldrh	r0, [sl, #48]	; 0x30
	cmp	r0, #0
	bne	_060155D4
	mov	r0, r6, lsl #16
	mov	r0, r0, lsr #16
	mov	r1, #48	; 0x30
	bl	FUN_0600F294
	add	r0, sl, #24
	ldrh	r1, [sl, #44]	; 0x2c
	bl	FUN_060101AC
	b	_06015918
_060155D4:
	cmp	r1, #1
	bne	_06015918
	ldrh	r0, [sl, #46]	; 0x2e
	cmp	r0, #4
	bne	_06015918
	ldrh	r0, [sl, #48]	; 0x30
	cmp	r0, #0
	bne	_06015918
	mov	r0, r6, lsl #16
	mov	r0, r0, lsr #16
	mov	r1, #48	; 0x30
	bl	FUN_0600F294
	add	r0, sl, #24
	ldrh	r1, [sl, #44]	; 0x2c
	bl	FUN_060101AC
	b	_06015918
_06015614:
	cmp	r6, #0
	beq	_06015918
	ldrh	r0, [sl, #8]
	ands	r0, r0, #2
	bne	_06015694
	ldrh	r0, [sl, #46]	; 0x2e
	cmp	r0, #0
	bne	_06015918
	mov	r0, r6
	bl	FUN_0600EFF0
	cmp	r0, #48	; 0x30
	bne	_06015918
	mov	r0, r6, lsl #16
	mov	r0, r0, lsr #16
	mov	r1, #64	; 0x40
	bl	FUN_0600F294
	cmp	r5, #16
	bne	_06015678
	add	r0, sl, #24
	ldrh	r1, [sl, #48]	; 0x30
	add	r3, sl, #20
	ldrh	r2, [sl, #18]
	add	r2, r3, r2
	bl	FUN_06010034
	b	_06015918
_06015678:
	add	r0, sl, #24
	ldrh	r1, [sl, #48]	; 0x30
	add	r3, sl, #20
	ldrh	r2, [sl, #18]
	add	r2, r3, r2
	bl	FUN_0600FF44
	b	_06015918
_06015694:
	mov	r0, r6, lsl #16
	mov	r0, r0, lsr #16
	bl	FUN_0600F00C
	add	r0, sl, #24
	mov	r1, #1
	mov	r2, #0
	bl	FUN_06013E9C
	cmp	r0, #0
	beq	_06015918
	mov	r1, #2
	strh	r1, [r0]
	cmp	r9, #0
	beq	_060156D0
	bl	FUN_06014C6C
	b	_06015918
_060156D0:
	bl	FUN_06014BF8
	b	_06015918
_060156D8:
	ldrh	r0, [r4, #12]
	cmp	r0, #1
	bne	_06015768
	cmp	r6, #0
	beq	_06015710
	mov	r0, r6
	bl	FUN_0600EFF0
	cmp	r0, #48	; 0x30
	bls	_06015780
	mov	r0, r6, lsl #16
	mov	r0, r0, lsr #16
	mov	r1, #48	; 0x30
	bl	FUN_0600F294
	b	_06015780
_06015710:
	ldrh	r0, [sl, #24]
	ands	r0, r0, #1
	beq	_06015780
	mov	r6, #1
	mov	r5, #48	; 0x30
	ldr	r4, _06015968	; =0x0380FFF4
	b	_06015750
_0601572C:
	mov	r0, r6
	bl	FUN_0600EFF0
	cmp	r0, #48	; 0x30
	bls	_0601574C
	mov	r0, r6, lsl #16
	mov	r0, r0, lsr #16
	mov	r1, r5
	bl	FUN_0600F294
_0601574C:
	add	r6, r6, #1
_06015750:
	ldr	r0, [r4]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #34]	; 0x22
	cmp	r6, r0
	bcc	_0601572C
	b	_06015780
_06015768:
	ldrh	r0, [r4, #8]
	cmp	r0, #48	; 0x30
	bls	_06015780
	mov	r0, #48	; 0x30
	bl	FUN_0600AF68
	bl	FUN_0600B054
_06015780:
	ldrh	r0, [r8]
	cmp	r0, #113	; 0x71
	bne	_06015918
	ldr	r0, [r8, #4]
	cmp	sl, r0
	bne	_06015918
	ldrh	r0, [sl, #8]
	ands	r0, r0, #2
	moveq	r1, #0
	ldreq	r0, [r8, #28]
	streqh	r1, [r0, #4]
	movne	r1, #12
	ldrne	r0, [r8, #28]
	strneh	r1, [r0, #4]
	mov	r0, #0
	strh	r0, [r8]
	bl	FUN_06010228
	b	_06015918
_060157C8:
	ldrh	r0, [r4, #12]
	cmp	r0, #1
	bne	_06015858
	cmp	r6, #0
	beq	_06015800
	mov	r0, r6
	bl	FUN_0600EFF0
	cmp	r0, #32
	bls	_06015870
	mov	r0, r6, lsl #16
	mov	r0, r0, lsr #16
	mov	r1, #32
	bl	FUN_0600F294
	b	_06015870
_06015800:
	ldrh	r0, [sl, #24]
	ands	r0, r0, #1
	beq	_06015870
	mov	r5, #1
	mov	r4, #32
	ldr	fp, _06015968	; =0x0380FFF4
	b	_06015840
_0601581C:
	mov	r0, r5
	bl	FUN_0600EFF0
	cmp	r0, #32
	bls	_0601583C
	mov	r0, r5, lsl #16
	mov	r0, r0, lsr #16
	mov	r1, r4
	bl	FUN_0600F294
_0601583C:
	add	r5, r5, #1
_06015840:
	ldr	r0, [fp]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #34]	; 0x22
	cmp	r5, r0
	bcc	_0601581C
	b	_06015870
_06015858:
	ldrh	r0, [r4, #8]
	cmp	r0, #32
	bls	_06015870
	mov	r0, #32
	bl	FUN_0600AF68
	bl	FUN_0600B054
_06015870:
	ldrh	r0, [r8]
	cmp	r0, #65	; 0x41
	bne	_060158B4
	ldr	r0, [r8, #4]
	cmp	sl, r0
	bne	_060158B4
	ldrh	r0, [sl, #8]
	ands	r0, r0, #2
	moveq	r1, #0
	ldreq	r0, [r8, #28]
	streqh	r1, [r0, #4]
	movne	r1, #12
	ldrne	r0, [r8, #28]
	strneh	r1, [r0, #4]
	mov	r0, #0
	strh	r0, [r8]
	bl	FUN_06010228
_060158B4:
	ldrh	r0, [sl]
	cmp	r0, #1
	bne	_06015904
	cmp	r6, #0
	beq	_060158F4
	ldr	r0, _06015968	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #1280	; 0x500
	ldrh	r2, [r0, #52]	; 0x34
	mov	r1, #1
	mvn	r1, r1, lsl r6
	and	r1, r2, r1
	strh	r1, [r0, #52]	; 0x34
	mov	r0, r6, lsl #16
	mov	r0, r0, lsr #16
	bl	FUN_0600EB44
_060158F4:
	add	r0, sl, #24
	mov	r1, #1
	bl	FUN_06010130
	b	_06015918
_06015904:
	cmp	r0, #2
	bne	_06015918
	add	r0, sl, #24
	ldrh	r1, [sl, #44]	; 0x2c
	bl	FUN_06010130
_06015918:
	mov	r0, sl
	bl	FUN_0600F360
	mov	r0, r7
	sub	r1, sl, #16
	bl	FUN_060096A0
	mov	r1, #0
	ldr	r0, _06015968	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #1024	; 0x400
	strh	r1, [r0, #64]	; 0x40
	cmp	r9, #0
	beq	_0601595C
	ldrh	r0, [r7, #8]
	cmp	r0, #0
	beq	_0601595C
	mov	r0, #1
	bl	FUN_06015C78
_0601595C:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
_06015968:	.word	0x0380FFF4
_0601596C:	.word	0x00000404
_06015970:	.word	0x0000053C

	arm_func_start FUN_06015974
FUN_06015974: ; 0x06015974
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}

	arm_func_start FUN_06015978
FUN_06015978: ; 0x06015978
	sub	sp, sp, #4
	mov	r9, r0
	mov	r8, r1
	ldr	r1, _06015B00	; =0x0380FFF4
	ldr	r2, [r1]
	add	r7, r2, #404	; 0x194
	add	r6, r2, #836	; 0x344
	ldr	r1, _06015B04	; =0x0000053C
	add	r5, r2, r1
	sub	r4, r9, #16
	bl	FUN_0600F360
	ldrh	r0, [r9, #8]
	ands	r0, r0, #2
	bne	_06015A14
	ldr	r0, [r5]
	add	r0, r0, #1
	str	r0, [r5]
	ldrh	r0, [r9, #20]
	mov	r0, r0, lsl #23
	movs	r0, r0, lsr #31
	beq	_060159F0
	ldrh	r0, [r9, #36]	; 0x24
	ands	r0, r0, #1
	ldrne	r0, [r5, #20]
	addne	r0, r0, #1
	strne	r0, [r5, #20]
	ldreq	r0, [r5, #16]
	addeq	r0, r0, #1
	streq	r0, [r5, #16]
	b	_06015A20
_060159F0:
	ldrh	r0, [r9, #24]
	ands	r0, r0, #1
	ldrne	r0, [r5, #20]
	addne	r0, r0, #1
	strne	r0, [r5, #20]
	ldreq	r0, [r5, #16]
	addeq	r0, r0, #1
	streq	r0, [r5, #16]
	b	_06015A20
_06015A14:
	ldr	r0, [r5, #4]
	add	r0, r0, #1
	str	r0, [r5, #4]
_06015A20:
	ldrh	r0, [r9, #20]
	mov	r0, r0, lsl #17
	movs	r0, r0, lsr #31
	ldrne	r0, [r5, #24]
	addne	r0, r0, #1
	strne	r0, [r5, #24]
	mov	r0, r7
	mov	r1, r4
	bl	FUN_06012DD4
	mov	r1, #0
	ldr	r0, _06015B00	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #1024	; 0x400
	strh	r1, [r0, #44]	; 0x2c
	ldrh	r0, [r9, #2]
	bl	FUN_0600EFB0
	cmp	r0, #0
	beq	_06015A7C
	ldrh	r0, [r9, #20]
	ands	r0, r0, #8192	; 0x2000
	bne	_06015A7C
	ldrh	r0, [r9, #2]
	bl	FUN_0600F1D8
_06015A7C:
	cmp	r8, #0
	beq	_06015AF4
	ldrh	r0, [r7, #8]
	cmp	r0, #0
	beq	_06015A9C
	mov	r0, #0
	bl	FUN_06015C78
	b	_06015AF4
_06015A9C:
	ldrh	r1, [r6, #12]
	ldr	r0, _06015B08	; =0x0000FFFE
	add	r0, r1, r0
	mov	r0, r0, lsl #16
	mov	r0, r0, lsr #16
	cmp	r0, #1
	bhi	_06015AF4
	ldrh	r0, [r6, #8]
	cmp	r0, #64	; 0x40
	bne	_06015AF4
	ldrh	r0, [r6, #14]
	cmp	r0, #0
	beq	_06015AF4
	ldrh	r0, [r6, #136]	; 0x88
	bl	FUN_0600EEFC
	cmp	r0, #0
	bne	_06015AF4
	ldrh	r0, [r6, #142]	; 0x8e
	cmp	r0, #0
	bne	_06015AF4
	mov	r0, #1
	bl	FUN_0600B3F4
_06015AF4:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, lr}
	bx	lr
_06015B00:	.word	0x0380FFF4
_06015B04:	.word	0x0000053C
_06015B08:	.word	0x0000FFFE

	arm_func_start FUN_06015B0C
FUN_06015B0C: ; 0x06015B0C
	stmdb	sp!, {r4, r5, r6, lr}
	mov	r6, r0
	mov	r5, r1
	add	r4, r5, #16
	ldrh	r1, [r4, #20]
	ands	r1, r1, #16384	; 0x4000
	beq	_06015BEC
	ldr	r0, _06015C64	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #80]	; 0x50
	cmp	r0, #3
	bne	_06015B44
	bl	FUN_0600AC84
_06015B44:
	ldrh	r1, [r5, #12]
	ldr	r0, _06015C68	; =0x0000FFFF
	cmp	r1, r0
	bne	_06015B6C
	mov	r0, r6
	add	r1, r4, #8
	add	r2, r4, #44	; 0x2c
	ldrh	r3, [r4, #6]
	bl	FUN_06009CFC
	b	_06015B80
_06015B6C:
	mov	r0, r6
	add	r1, r4, #8
	ldr	r2, [r4, #44]	; 0x2c
	ldrh	r3, [r4, #6]
	bl	FUN_06009CFC
_06015B80:
	ldr	r2, _06015C6C	; =0x04808044
	ldrh	r1, [r2]
	ldrh	r0, [r2]
	add	r0, r1, r0, lsl #8
	strh	r0, [r6, #36]	; 0x24
	ldrh	r0, [r2]
	and	r2, r0, #255	; 0xff
	ldr	r1, _06015C64	; =0x0380FFF4
	ldr	r0, [r1]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #54]	; 0x36
	orr	r0, r2, r0, lsl #14
	strh	r0, [r6, #38]	; 0x26
	ldr	r0, [r1]
	add	r0, r0, #1536	; 0x600
	ldrh	r0, [r0, #144]	; 0x90
	ands	r0, r0, #8
	beq	_06015C20
	add	r1, r6, #12
	ldrh	r0, [r4, #18]
	add	r0, r1, r0
	sub	r0, r0, #7
	bic	r1, r0, #1
	mov	r0, #0
	strh	r0, [r1]
	strh	r0, [r1, #2]
	b	_06015C20
_06015BEC:
	ldrh	r2, [r5, #12]
	ldr	r1, _06015C68	; =0x0000FFFF
	cmp	r2, r1
	bne	_06015C10
	add	r1, r4, #8
	ldrh	r2, [r4, #6]
	add	r2, r2, #36	; 0x24
	bl	FUN_06009D74
	b	_06015C20
_06015C10:
	add	r1, r4, #8
	ldr	r2, [r4, #44]	; 0x2c
	ldrh	r3, [r4, #6]
	bl	FUN_06009D38
_06015C20:
	ldr	r0, _06015C64	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #1536	; 0x600
	ldrh	r0, [r0, #144]	; 0x90
	ands	r0, r0, #4
	beq	_06015C5C
	add	r1, r6, #12
	ldrh	r0, [r4, #18]
	add	r0, r1, r0
	sub	r0, r0, #1
	bic	r1, r0, #3
	ldr	r0, _06015C70	; =0x0000B6B8
	strh	r0, [r1]
	ldr	r0, _06015C74	; =0x00001D46
	strh	r0, [r1, #2]
_06015C5C:
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr
_06015C64:	.word	0x0380FFF4
_06015C68:	.word	0x0000FFFF
_06015C6C:	.word	0x04808044
_06015C70:	.word	0x0000B6B8
_06015C74:	.word	0x00001D46

	arm_func_start FUN_06015C78
FUN_06015C78: ; 0x06015C78
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #20
	mov	sl, r0
	ldr	r0, _06015EB8	; =0x0380FFF4
	ldr	r1, [r0]
	add	r9, r1, #836	; 0x344
	ldr	r0, _06015EBC	; =0x0000042C
	add	r8, r1, r0
	mov	r0, #20
	mla	r7, sl, r0, r8
	add	r1, r1, #404	; 0x194
	mov	r0, #12
	mla	fp, sl, r0, r1
	ldrh	r0, [fp, #8]
	cmp	r0, #0
	beq	_06015EAC
	mov	r0, #16777216	; 0x1000000
	bl	FUN_06009068
	str	r0, [sp, #8]
	ldrh	r1, [r7]
	cmp	r1, #0
	beq	_06015CD8
	bl	FUN_06009070
	b	_06015EAC
_06015CD8:
	ldr	r0, [fp]
	str	r0, [sp, #4]
	mov	r4, #2
	mov	r0, #0
	str	r0, [sp, #12]
_06015CEC:
	mvn	r1, #0
	ldr	r0, [sp, #4]
	cmp	r0, r1
	bne	_06015D08
	ldr	r0, [sp, #8]
	bl	FUN_06009070
	b	_06015EAC
_06015D08:
	str	r0, [sp]
	bl	FUN_06009434
	str	r0, [sp, #4]
	ldr	r0, [sp]
	add	r6, r0, #16
	ldrh	r5, [r6, #2]
	ldr	r1, [r9, #168]	; 0xa8
	ldrh	r0, [r6, #4]
	sub	r0, r1, r0
	mov	r0, r0, lsl #16
	mov	r2, r0, lsr #16
	ldrh	r1, [r9, #140]	; 0x8c
	cmp	r2, r1
	bls	_06015D50
	ldrh	r0, [r6, #20]
	mov	r0, r0, lsl #28
	movs	r0, r0, lsr #30
	bne	_06015D58
_06015D50:
	cmp	r2, r1, lsl #3
	bls	_06015D8C
_06015D58:
	ldrh	r0, [r8, #174]	; 0xae
	add	r0, r0, #1
	strh	r0, [r8, #174]	; 0xae
	strh	r4, [r6, #8]
	ldrh	r0, [r7, #4]
	add	r0, r0, #1
	strh	r0, [r7, #4]
	mov	r0, r6
	ldr	r1, [sp, #12]
	ldr	r2, [r7, #16]
	mov	lr, pc
	bx	r2
	b	_06015CEC
_06015D8C:
	cmp	sl, #0
	beq	_06015DAC
	cmp	sl, #1
	bne	_06015DE8
	mov	r0, r5
	bl	FUN_0600EFF0
	cmp	r0, #64	; 0x40
	bne	_06015DE8
_06015DAC:
	mov	r0, r5
	bl	FUN_0600EFD0
	cmp	r0, #0
	beq	_06015CEC
	mov	r0, r5
	bl	FUN_0600EFF0
	cmp	r0, #64	; 0x40
	beq	_06015DE8
	strh	r4, [r6, #8]
	mov	r0, fp
	sub	r1, r6, #16
	bl	FUN_06012DD4
	mov	r0, r6
	bl	FUN_0600F360
	b	_06015CEC
_06015DE8:
	mov	r0, #1
	strh	r0, [r7]
	ldrh	r0, [r7, #2]
	add	r0, r0, #1
	strh	r0, [r7, #2]
	str	r6, [r7, #12]
	ldr	r4, [r7, #8]
	ldrh	r0, [r9, #16]
	cmp	r0, #0
	bne	_06015E18
	mov	r0, #2
	bl	FUN_0600B3F4
_06015E18:
	mov	r0, r4
	ldr	r1, [sp]
	bl	FUN_06015B0C
	ldrh	r0, [r9, #12]
	cmp	r0, #1
	bne	_06015E48
	mov	r0, r5
	bl	FUN_0600EEFC
	cmp	r0, #1
	ldrhih	r0, [r4, #12]
	orrhi	r0, r0, #8192	; 0x2000
	strhih	r0, [r4, #12]
_06015E48:
	ldrh	r3, [r6, #20]
	ldr	r0, _06015EC0	; =0x048080A0
	add	r0, r0, sl, lsl #2
	ldr	r1, _06015EC4	; =0x00003FFF
	and	r1, r4, r1
	mov	r2, r1, lsr #1
	and	r1, r3, #12
	cmp	r1, #4
	moveq	r1, r2, lsl #16
	moveq	r1, r1, lsr #16
	orreq	r1, r1, #40960	; 0xa000
	streqh	r1, [r0]
	beq	_06015EA4
	and	r1, r3, #252	; 0xfc
	cmp	r1, #80	; 0x50
	moveq	r1, r2, lsl #16
	moveq	r1, r1, lsr #16
	orreq	r1, r1, #36864	; 0x9000
	streqh	r1, [r0]
	movne	r1, r2, lsl #16
	movne	r1, r1, lsr #16
	orrne	r1, r1, #32768	; 0x8000
	strneh	r1, [r0]
_06015EA4:
	ldr	r0, [sp, #8]
	bl	FUN_06009070
_06015EAC:
	add	sp, sp, #20
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
_06015EB8:	.word	0x0380FFF4
_06015EBC:	.word	0x0000042C
_06015EC0:	.word	0x048080A0
_06015EC4:	.word	0x00003FFF

	arm_func_start FUN_06015EC8
FUN_06015EC8: ; 0x06015EC8
	stmdb	sp!, {r4, r5, r6, lr}
	ldr	r0, _06015FE0	; =0x0380FFF4
	ldr	r1, [r0]
	add	r6, r1, #836	; 0x344
	ldr	r0, _06015FE4	; =0x000004DC
	add	r5, r1, r0
	mov	r0, #0
	mov	r1, r5
	mov	r2, #80	; 0x50
	bl	FUN_0600AEC4
	mov	r1, #32768	; 0x8000
	ldr	r0, _06015FE8	; =0x04808030
	strh	r1, [r0]
	ldr	r0, _06015FE0	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #80]	; 0x50
	cmp	r0, #3
	addls	pc, pc, r0, lsl #2
	b	_06015F44
	b	_06015F28
	b	_06015F30
	b	_06015F38
	b	_06015F40
_06015F28:
	ldr	r4, _06015FEC	; =0x00000794
	b	_06015F44
_06015F30:
	ldr	r4, _06015FF0	; =0x000010C4
	b	_06015F44
_06015F38:
	ldr	r4, _06015FF4	; =0x00000BFC
	b	_06015F44
_06015F40:
	ldr	r4, _06015FEC	; =0x00000794
_06015F44:
	ldr	r0, _06015FF8	; =0x04804000
	add	r1, r4, r0
	ldr	r0, _06015FFC	; =0x04808050
	strh	r1, [r0]
	mov	r0, r4, lsl #15
	mov	r2, r0, lsr #16
	ldr	r0, _06016000	; =0x04808056
	strh	r2, [r0]
	ldr	r1, _06016004	; =0x00005F60
	ldr	r0, _06016008	; =0x04808052
	strh	r1, [r0]
	ldr	r0, _0601600C	; =0x0480805A
	strh	r2, [r0]
	strh	r2, [r5, #4]
	ldr	r0, _06016010	; =0x0000FFFF
	strh	r0, [r5]
	ldr	r1, _06016014	; =0x00001F60
	sub	r1, r1, r4
	strh	r1, [r6, #154]	; 0x9a
	ldr	r2, _06016018	; =0x00005F5E
	ldr	r1, _0601601C	; =0x04808062
	strh	r2, [r1]
	ldr	r2, _06016020	; =0x00008001
	ldr	r1, _06015FE8	; =0x04808030
	strh	r2, [r1]
	ldr	r1, _06016024	; =0x0480824C
	strh	r0, [r1]
	ldr	r1, _06016028	; =0x0480824E
	strh	r0, [r1]
	ldr	r1, _0601602C	; =0x04805F70
	strh	r0, [r1]
	ldr	r1, _06016030	; =0x04805F72
	strh	r0, [r1]
	ldr	r1, _06016034	; =0x04805F7E
	strh	r0, [r1]
	ldr	r1, _06016038	; =0x04805F76
	strh	r0, [r1]
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr
_06015FE0:	.word	0x0380FFF4
_06015FE4:	.word	0x000004DC
_06015FE8:	.word	0x04808030
_06015FEC:	.word	0x00000794
_06015FF0:	.word	0x000010C4
_06015FF4:	.word	0x00000BFC
_06015FF8:	.word	0x04804000
_06015FFC:	.word	0x04808050
_06016000:	.word	0x04808056
_06016004:	.word	0x00005F60
_06016008:	.word	0x04808052
_0601600C:	.word	0x0480805A
_06016010:	.word	0x0000FFFF
_06016014:	.word	0x00001F60
_06016018:	.word	0x00005F5E
_0601601C:	.word	0x04808062
_06016020:	.word	0x00008001
_06016024:	.word	0x0480824C
_06016028:	.word	0x0480824E
_0601602C:	.word	0x04805F70
_06016030:	.word	0x04805F72
_06016034:	.word	0x04805F7E
_06016038:	.word	0x04805F76

	arm_func_start FUN_0601603C
FUN_0601603C: ; 0x0601603C
	stmdb	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #4
	ldr	r4, _060160AC	; =0x0380FFF4
	ldr	r1, [r4]
	ldr	r0, _060160B0	; =0x000004E4
	add	r6, r1, r0
	mov	r5, #0
	mov	r7, #24
_0601605C:
	mul	r0, r5, r7
	add	r1, r6, r0
	ldrh	r0, [r6, r0]
	cmp	r0, #0
	beq	_06016094
	sub	r0, r0, #1
	strh	r0, [r1]
	ldrh	r0, [r1]
	cmp	r0, #0
	bne	_06016094
	ldr	r0, [r4]
	add	r0, r0, #392	; 0x188
	ldr	r1, [r1, #20]
	bl	FUN_060096A0
_06016094:
	add	r5, r5, #1
	cmp	r5, #3
	bcc	_0601605C
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, lr}
	bx	lr
_060160AC:	.word	0x0380FFF4
_060160B0:	.word	0x000004E4

	arm_func_start FUN_060160B4
FUN_060160B4: ; 0x060160B4
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #12
	mov	sl, r0
	mov	r9, r1
	ldr	r0, _060162E8	; =0x0380FFF4
	ldr	r1, [r0]
	add	r8, r1, #380	; 0x17c
	ldr	r0, _060162EC	; =0x000004E4
	add	r7, r1, r0
	ldrh	r0, [sl, #8]
	sub	r0, r0, #24
	strh	r0, [sl, #8]
	mov	r6, #0
	b	_0601618C
_060160EC:
	mov	r0, #24
	mul	r0, r6, r0
	str	r0, [sp, #4]
	add	r4, r7, r0
	ldrh	r0, [r7, r0]
	cmp	r0, #0
	beq	_06016188
	add	r0, r4, #4
	mov	r1, r9
	bl	FUN_0600AB78
	cmp	r0, #0
	beq	_06016188
	add	r0, r4, #10
	add	r1, r9, #6
	bl	FUN_0600AB78
	cmp	r0, #0
	beq	_06016188
	ldrh	r0, [r9, #12]
	mov	r1, r0, lsl #16
	mov	r2, r1, lsr #20
	ldrh	r1, [r4, #16]
	mov	r1, r1, lsl #16
	cmp	r2, r1, lsr #20
	bne	_06016188
	ldr	r1, [sp, #4]
	add	r2, r7, r1
	ldrh	r1, [r2, #16]
	sub	fp, r1, r0
	ands	r0, fp, #-2147483648	; 0x80000000
	bne	_060162DC
	ldrh	r0, [r2, #2]
	mul	r0, fp, r0
	str	r0, [sp]
	ldrh	r1, [sl, #8]
	subs	r5, r1, r0
	beq	_060162DC
	ands	r0, r5, #-2147483648	; 0x80000000
	beq	_06016194
	b	_060162DC
_06016188:
	add	r6, r6, #1
_0601618C:
	cmp	r6, #3
	bcc	_060160EC
_06016194:
	cmp	r6, #3
	beq	_060162DC
	mov	r0, #24
	mul	r4, r6, r0
	add	r0, r7, r4
	ldr	r0, [r0, #20]
	add	r6, r0, #16
	ldrh	r1, [r6, #16]
	add	r9, r1, r5
	ldr	r0, _060162F0	; =0x000005E4
	cmp	r9, r0
	bls	_060161DC
	add	r0, r8, #12
	sub	r1, r6, #16
	bl	FUN_060096A0
	mov	r0, #0
	strh	r0, [r7, r4]
	b	_060162DC
_060161DC:
	add	r2, sl, #36	; 0x24
	ldr	r0, [sp]
	add	r0, r2, r0
	add	r2, r6, #44	; 0x2c
	add	r1, r2, r1
	add	r2, r5, #1
	bl	FUN_06000EA0
	strh	r9, [r6, #16]
	ldrh	r0, [sl]
	and	r0, r0, #240	; 0xf0
	mov	r1, #16
	bl	FUN_06001840
	add	r2, r7, r4
	ldrh	r3, [r2, #16]
	bic	r1, r3, #15
	mov	r4, r3, lsl #28
	sub	r3, r0, fp
	add	r3, r3, r4, lsr #28
	mov	r3, r3, lsl #16
	mov	r3, r3, lsr #16
	and	r3, r3, #15
	orr	r1, r1, r3
	strh	r1, [r2, #16]
	ldr	r1, _060162E8	; =0x0380FFF4
	ldr	r3, [r1]
	ldr	r1, [r3, #1376]	; 0x560
	add	r0, r1, r0
	str	r0, [r3, #1376]	; 0x560
	ldrh	r0, [sl]
	ands	r0, r0, #256	; 0x100
	bne	_060162DC
	mov	r0, #0
	strh	r0, [r2]
	ldrh	r0, [r6, #8]
	bic	r0, r0, #240	; 0xf0
	add	r0, r0, #16
	strh	r0, [r6, #8]
	ldrh	r0, [r6, #16]
	add	r0, r0, #24
	strh	r0, [r6, #16]
	ldrh	r0, [r6, #8]
	ands	r0, r0, #15
	beq	_060162B0
	cmp	r0, #8
	bne	_060162D0
	add	r0, r8, #12
	add	r1, r8, #72	; 0x48
	sub	r2, r6, #16
	bl	FUN_0600962C
	mov	r0, #2
	mov	r1, #6
	bl	FUN_06009078
	b	_060162DC
_060162B0:
	add	r0, r8, #12
	add	r1, r8, #96	; 0x60
	sub	r2, r6, #16
	bl	FUN_0600962C
	mov	r0, #1
	mov	r1, #7
	bl	FUN_06009078
	b	_060162DC
_060162D0:
	add	r0, r8, #12
	sub	r1, r6, #16
	bl	FUN_060096A0
_060162DC:
	add	sp, sp, #12
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
_060162E8:	.word	0x0380FFF4
_060162EC:	.word	0x000004E4
_060162F0:	.word	0x000005E4

	arm_func_start FUN_060162F4
FUN_060162F4: ; 0x060162F4
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #4
	mov	sl, r0
	mov	r9, r1
	ldr	r0, _06016538	; =0x0380FFF4
	ldr	r1, [r0]
	ldr	r0, _0601653C	; =0x000004E4
	add	r8, r1, r0
	mvn	r6, #0
	mov	r7, #0
	add	r0, r9, #6
	str	r0, [sp]
	mov	fp, #24
	b	_0601643C
_0601632C:
	mul	r5, r7, fp
	add	r4, r8, r5
	ldrh	r0, [r8, r5]
	cmp	r0, #0
	beq	_06016434
	add	r0, r4, #4
	mov	r1, r9
	bl	FUN_0600AB78
	cmp	r0, #0
	beq	_06016438
	add	r0, r4, #10
	ldr	r1, [sp]
	bl	FUN_0600AB78
	cmp	r0, #0
	beq	_06016438
	ldrh	r0, [r9, #12]
	mov	r0, r0, lsl #16
	mov	r1, r0, lsr #20
	ldrh	r0, [r4, #16]
	mov	r0, r0, lsl #16
	cmp	r1, r0, lsr #20
	bne	_06016438
	ldrh	r0, [sl]
	and	r0, r0, #240	; 0xf0
	mov	r1, #16
	bl	FUN_06001840
	mov	r6, r0
	ldrh	r0, [r4, #16]
	mov	r0, r0, lsl #28
	mov	r0, r0, lsr #28
	subs	r0, r6, r0
	beq	_0601652C
	ands	r0, r0, #-2147483648	; 0x80000000
	bne	_0601652C
	mov	r0, r4
	ldr	r0, [r0, #20]
	add	r7, r0, #16
	ldrh	r2, [r7, #16]
	ldrh	r0, [sl, #8]
	sub	r0, r0, r2
	subs	r5, r0, #24
	beq	_0601652C
	ands	r0, r5, #-2147483648	; 0x80000000
	bne	_0601652C
	add	r0, sl, #36	; 0x24
	add	r0, r0, r2
	add	r1, r7, #44	; 0x2c
	add	r1, r1, r2
	mov	r2, r5
	bl	FUN_06000EA0
	ldrh	r0, [r7, #16]
	add	r0, r0, r5
	strh	r0, [r7, #16]
	ldrh	r0, [r4, #16]
	bic	r1, r0, #15
	mov	r0, r6, lsl #16
	mov	r0, r0, lsr #16
	and	r0, r0, #15
	orr	r0, r1, r0
	strh	r0, [r4, #16]
	ldr	r0, _06016538	; =0x0380FFF4
	ldr	r1, [r0]
	ldr	r0, [r1, #1376]	; 0x560
	add	r0, r0, r6
	str	r0, [r1, #1376]	; 0x560
	b	_0601652C
_06016434:
	mov	r6, r7
_06016438:
	add	r7, r7, #1
_0601643C:
	cmp	r7, #3
	bcc	_0601632C
	mvn	r0, #0
	cmp	r6, r0
	beq	_0601652C
	ldr	r0, _06016538	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #392	; 0x188
	ldr	r1, _06016540	; =0x00000622
	bl	FUN_06009724
	movs	r5, r0
	beq	_06016524
	mov	r0, #24
	mul	r4, r6, r0
	add	r6, r8, r4
	mov	r0, r9
	add	r1, r6, #4
	mov	r2, #16
	bl	FUN_06000EA0
	mov	r0, #5
	strh	r0, [r8, r4]
	mov	r0, r6
	str	r5, [r0, #20]
	add	r5, r5, #16
	mov	r0, sl
	add	r1, r5, #8
	ldrh	r2, [sl, #8]
	add	r2, r2, #12
	bl	FUN_06000EA0
	ldr	r0, _06016538	; =0x0380FFF4
	ldr	r0, [r0]
	ldr	r0, [r0, #780]	; 0x30c
	bl	FUN_06016544
	ldrh	r0, [r5, #8]
	and	r0, r0, #240	; 0xf0
	mov	r1, #16
	bl	FUN_06001840
	mov	r1, r0
	ldrh	r0, [r6, #16]
	bic	r2, r0, #15
	mov	r0, r1, lsl #16
	mov	r0, r0, lsr #16
	and	r0, r0, #15
	orr	r0, r2, r0
	strh	r0, [r6, #16]
	ldr	r0, _06016538	; =0x0380FFF4
	ldr	r2, [r0]
	ldr	r0, [r2, #1376]	; 0x560
	add	r0, r0, r1
	str	r0, [r2, #1376]	; 0x560
	ldrh	r0, [sl, #8]
	sub	r0, r0, #24
	strh	r0, [r5, #16]
	ldrh	r0, [r5, #16]
	bl	FUN_06003B68
	mov	r1, r6
	strh	r0, [r1, #2]
	b	_0601652C
_06016524:
	mov	r0, #4
	bl	FUN_0600994C
_0601652C:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
_06016538:	.word	0x0380FFF4
_0601653C:	.word	0x000004E4
_06016540:	.word	0x00000622

	arm_func_start FUN_06016544
FUN_06016544: ; 0x06016544
	ldr	pc, _06016548	; =FUN_037FB290
_06016548:	.word	FUN_037FB290

	arm_func_start FUN_0601654C
FUN_0601654C: ; 0x0601654C
	stmdb	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #20
	ldr	r0, _06016660	; =0x0380FFF4
	ldr	r1, [r0]
	add	r7, r1, #380	; 0x17c
	ldr	r6, [r7, #108]	; 0x6c
	mvn	r0, #0
	cmp	r6, r0
	beq	_06016654
	add	r5, r6, #16
	add	r0, r1, #768	; 0x300
	ldrh	r0, [r0, #76]	; 0x4c
	cmp	r0, #64	; 0x40
	bne	_06016630
	ldrh	r1, [r5, #16]
	ldr	r0, _06016664	; =0x000005FC
	cmp	r1, r0
	bhi	_06016630
	ldrh	r4, [r5, #20]
	ands	r0, r4, #256	; 0x100
	beq	_060165C4
	add	r0, sp, #0
	add	r1, r5, #36	; 0x24
	bl	FUN_0600AF4C
	ands	r0, r4, #512	; 0x200
	bne	_06016630
	add	r0, sp, #6
	add	r1, r5, #30
	bl	FUN_0600AF4C
	b	_060165F4
_060165C4:
	add	r0, sp, #0
	add	r1, r5, #24
	bl	FUN_0600AF4C
	ands	r0, r4, #512	; 0x200
	beq	_060165E8
	add	r0, sp, #6
	add	r1, r5, #36	; 0x24
	bl	FUN_0600AF4C
	b	_060165F4
_060165E8:
	add	r0, sp, #6
	add	r1, r5, #30
	bl	FUN_0600AF4C
_060165F4:
	ldrh	r0, [r5, #42]	; 0x2a
	strh	r0, [sp, #12]
	ands	r0, r4, #1024	; 0x400
	beq	_06016624
	ldrh	r0, [r5, #42]	; 0x2a
	mov	r0, r0, lsl #28
	movs	r0, r0, lsr #28
	bne	_06016624
	add	r0, r5, #8
	add	r1, sp, #0
	bl	FUN_060162F4
	b	_06016630
_06016624:
	add	r0, r5, #8
	add	r1, sp, #0
	bl	FUN_060160B4
_06016630:
	add	r0, r7, #108	; 0x6c
	mov	r1, r6
	bl	FUN_060096A0
	ldrh	r0, [r7, #116]	; 0x74
	cmp	r0, #0
	beq	_06016654
	mov	r0, #2
	mov	r1, #9
	bl	FUN_06009078
_06016654:
	add	sp, sp, #20
	ldmia	sp!, {r4, r5, r6, r7, lr}
	bx	lr
_06016660:	.word	0x0380FFF4
_06016664:	.word	0x000005FC

	arm_func_start FUN_06016668
FUN_06016668: ; 0x06016668
	stmdb	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #4
	mov	r4, r0
	ldrh	r0, [r4, #2]
	bl	FUN_0600EF78
	bl	FUN_06009C64
	add	r5, r4, #52	; 0x34
	add	r0, r4, #51	; 0x33
	bl	FUN_06009CB0
	mov	r6, r0
	mov	r7, #0
	mov	r4, r6, lsr #1
	b	_060166B4
_0601669C:
	bl	FUN_06009C34
	ldrh	r1, [r5], #2
	cmp	r1, r0
	movne	r0, #0
	bne	_060166E4
	add	r7, r7, #1
_060166B4:
	cmp	r7, r4
	bcc	_0601669C
	ands	r0, r6, #1
	beq	_060166E0
	bl	FUN_06009C34
	ldrh	r1, [r5]
	and	r1, r1, #255	; 0xff
	and	r0, r0, #255	; 0xff
	cmp	r1, r0
	movne	r0, #0
	bne	_060166E4
_060166E0:
	mov	r0, #1
_060166E4:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, lr}
	bx	lr

	arm_func_start FUN_060166F0
FUN_060166F0: ; 0x060166F0
	stmdb	sp!, {r4, r5, r6, lr}
	mov	r5, r0
	mov	r4, r1
	ldr	r0, _06016760	; =0x04808044
	ldrh	r1, [r0]
	ldrh	r0, [r0]
	add	r0, r1, r0, lsl #8
	mov	r0, r0, lsl #16
	movs	r6, r0, lsr #16
	moveq	r6, #1
	mov	r0, r6
	bl	FUN_06009C64
	mov	r0, r5
	mov	r1, r6
	bl	FUN_0600F154
	add	r5, r4, #52	; 0x34
	add	r0, r4, #51	; 0x33
	bl	FUN_06009CB0
	mov	r4, r0
	mov	r6, #0
	b	_06016750
_06016744:
	bl	FUN_06009C34
	strh	r0, [r5], #2
	add	r6, r6, #2
_06016750:
	cmp	r6, r4
	bcc	_06016744
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr
_06016760:	.word	0x04808044

	arm_func_start FUN_06016764
FUN_06016764: ; 0x06016764
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #12
	ldr	r0, _06016AA8	; =0x0380FFF4
	ldr	r1, [r0]
	add	r9, r1, #380	; 0x17c
	ldr	r0, _06016AAC	; =0x0000053C
	add	r8, r1, r0
	add	r0, r1, #768	; 0x300
	ldrh	r7, [r0, #80]	; 0x50
	ldr	r0, [r9, #96]	; 0x60
	str	r0, [sp]
	mvn	r1, #0
	cmp	r0, r1
	beq	_06016A9C
	add	r6, r0, #16
	add	sl, r6, #20
	ldrh	r0, [r6, #24]
	ands	r0, r0, #1
	ldrne	r0, [r8, #44]	; 0x2c
	addne	r0, r0, #1
	strne	r0, [r8, #44]	; 0x2c
	ldreq	r0, [r8, #40]	; 0x28
	addeq	r0, r0, #1
	streq	r0, [r8, #40]	; 0x28
	ldrh	r0, [r6, #8]
	and	r0, r0, #240	; 0xf0
	mov	r1, #16
	bl	FUN_06001840
	ldr	r1, [r8, #36]	; 0x24
	sub	r0, r0, #1
	add	r0, r1, r0
	str	r0, [r8, #36]	; 0x24
	ldrh	r0, [sl]
	mov	r1, r0, lsl #28
	mov	r5, r1, lsr #30
	mov	r0, r0, lsl #24
	mov	r4, r0, lsr #28
	add	r0, sl, #10
	bl	FUN_0600F4C0
	mov	fp, r0
	strh	fp, [r6, #2]
	cmp	fp, #255	; 0xff
	bne	_06016864
	mov	r0, #0
	strh	r0, [r6, #2]
	cmp	r7, #1
	bne	_06016A78
	cmp	r5, #0
	bne	_06016A78
	cmp	r4, #0
	beq	_06016858
	cmp	r4, #4
	beq	_0601684C
	cmp	r4, #11
	bne	_06016A78
	mov	r0, r6
	bl	FUN_06016F18
	b	_06016A78
_0601684C:
	mov	r0, r6
	bl	FUN_0601784C
	b	_06016A78
_06016858:
	mov	r0, r6
	bl	FUN_06017D0C
	b	_06016A78
_06016864:
	bl	FUN_0600F130
	mov	r0, fp, lsl #16
	mov	r0, r0, lsr #16
	ldrh	r1, [r6, #18]
	and	r1, r1, #255	; 0xff
	mov	r1, r1, lsl #16
	mov	r1, r1, lsr #16
	bl	FUN_0600F27C
	cmp	r5, #0
	bne	_060168BC
	ldrh	r0, [r6, #42]	; 0x2a
	str	r0, [sp, #4]
	mov	r0, fp
	bl	FUN_0600EF5C
	ldr	r1, [sp, #4]
	cmp	r1, r0
	ldreq	r0, [r8, #60]	; 0x3c
	addeq	r0, r0, #1
	streq	r0, [r8, #60]	; 0x3c
	beq	_06016A78
	mov	r0, fp
	bl	FUN_0600F16C
_060168BC:
	cmp	r7, #1
	beq	_060168D8
	cmp	r7, #2
	beq	_060169B8
	cmp	r7, #3
	beq	_060169B8
	b	_06016A78
_060168D8:
	mov	r0, fp, lsl #16
	mov	r0, r0, lsr #16
	ldrh	r1, [sl]
	mov	r1, r1, lsl #19
	mov	r1, r1, lsr #31
	bl	FUN_0600F218
	cmp	r5, #0
	bne	_0601699C
	cmp	r4, #12
	addls	pc, pc, r4, lsl #2
	b	_06016A78
	b	_06016944
	b	_06016A78
	b	_06016950
	b	_06016A78
	b	_0601695C
	b	_06016968
	b	_06016A78
	b	_06016A78
	b	_06016938
	b	_06016A78
	b	_06016978
	b	_06016984
	b	_06016990
_06016938:
	mov	r0, r6
	bl	FUN_06017FDC
	b	_06016A78
_06016944:
	mov	r0, r6
	bl	FUN_06017D0C
	b	_06016A78
_06016950:
	mov	r0, r6
	bl	FUN_06017A34
	b	_06016A78
_0601695C:
	mov	r0, r6
	bl	FUN_0601784C
	b	_06016A78
_06016968:
	mov	r0, r6
	mov	r1, #0
	bl	FUN_0601745C
	b	_06016A78
_06016978:
	mov	r0, r6
	bl	FUN_06017EE8
	b	_06016A78
_06016984:
	mov	r0, r6
	bl	FUN_06016F18
	b	_06016A78
_06016990:
	mov	r0, r6
	bl	FUN_06016E5C
	b	_06016A78
_0601699C:
	cmp	r5, #1
	bne	_06016A78
	cmp	r4, #10
	bne	_06016A78
	mov	r0, r6
	bl	FUN_06016DF4
	b	_06016A78
_060169B8:
	cmp	r5, #0
	bne	_06016A58
	cmp	r4, #12
	addls	pc, pc, r4, lsl #2
	b	_06016A78
	b	_06016A78
	b	_06016A0C
	b	_06016A78
	b	_06016A18
	b	_06016A78
	b	_06016A24
	b	_06016A78
	b	_06016A78
	b	_06016A00
	b	_06016A78
	b	_06016A34
	b	_06016A40
	b	_06016A4C
_06016A00:
	mov	r0, r6
	bl	FUN_06017FDC
	b	_06016A78
_06016A0C:
	mov	r0, r6
	bl	FUN_06017BE0
	b	_06016A78
_06016A18:
	mov	r0, r6
	bl	FUN_06017900
	b	_06016A78
_06016A24:
	mov	r0, r6
	mov	r1, #0
	bl	FUN_0601745C
	b	_06016A78
_06016A34:
	mov	r0, r6
	bl	FUN_06017EE8
	b	_06016A78
_06016A40:
	mov	r0, r6
	bl	FUN_06016F18
	b	_06016A78
_06016A4C:
	mov	r0, r6
	bl	FUN_06016E5C
	b	_06016A78
_06016A58:
	cmp	r5, #1
	bne	_06016A78
	cmp	r4, #14
	beq	_06016A70
	cmp	r4, #15
	bne	_06016A78
_06016A70:
	mov	r0, r6
	bl	FUN_06016DF0
_06016A78:
	add	r0, r9, #96	; 0x60
	ldr	r1, [sp]
	bl	FUN_060096A0
	ldrh	r0, [r9, #104]	; 0x68
	cmp	r0, #0
	beq	_06016A9C
	mov	r0, #1
	mov	r1, #7
	bl	FUN_06009078
_06016A9C:
	add	sp, sp, #12
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
_06016AA8:	.word	0x0380FFF4
_06016AAC:	.word	0x0000053C

	arm_func_start FUN_06016AB0
FUN_06016AB0: ; 0x06016AB0
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #4
	mov	r9, r0
	ldr	r0, _06016DEC	; =0x0380FFF4
	ldr	r0, [r0]
	add	r8, r0, #836	; 0x344
	ldr	r7, [r9]
	ldrh	r0, [r8, #122]	; 0x7a
	strh	r0, [r9, #18]
	ldrh	r0, [r9, #12]
	ands	r0, r0, #2048	; 0x800
	ldrneh	r0, [r9, #10]
	orrne	r0, r0, #1
	strneh	r0, [r9, #10]
	ldrh	r6, [r9, #8]
	add	r4, r9, #12
	add	fp, r9, #20
	b	_06016D5C
_06016AF8:
	mov	r0, r7
	bl	FUN_06009CB0
	mov	sl, r0
	add	r0, r7, #1
	add	r7, r7, #2
	bl	FUN_06009CB0
	mov	r5, r0
	cmp	sl, #6
	addls	pc, pc, sl, lsl #2
	b	_06016B3C
	b	_06016B48
	b	_06016BB4
	b	_06016D50
	b	_06016C20
	b	_06016C94
	b	_06016C74
	b	_06016D50
_06016B3C:
	cmp	sl, #221	; 0xdd
	beq	_06016CB4
	b	_06016D34
_06016B48:
	cmp	r5, #32
	bhi	_06016D50
	ldrh	r0, [r4]
	orr	r0, r0, #1
	strh	r0, [r4]
	sub	r0, r7, #2
	str	r0, [r9, #28]
	cmp	r5, #0
	bne	_06016B84
	ldrh	r0, [r9, #12]
	ands	r0, r0, #2048	; 0x800
	ldrneh	r0, [r9, #10]
	orrne	r0, r0, #1
	strneh	r0, [r9, #10]
	bne	_06016D50
_06016B84:
	ldrh	r0, [r9, #10]
	bic	r0, r0, #1
	strh	r0, [r9, #10]
	mov	r0, r5, lsl #16
	mov	r0, r0, lsr #16
	mov	r1, r7
	bl	FUN_0600ABB4
	cmp	r0, #0
	ldrneh	r0, [r9, #10]
	orrne	r0, r0, #1
	strneh	r0, [r9, #10]
	b	_06016D50
_06016BB4:
	cmp	r5, #1
	bcc	_06016D50
	ldrh	r0, [r4]
	orr	r0, r0, #4
	strh	r0, [r4]
	sub	r0, r7, #2
	mov	r1, fp
	bl	FUN_0600AA9C
	ldrh	r1, [r9, #20]
	ldrh	r0, [r8, #96]	; 0x60
	ldrh	r2, [r8, #98]	; 0x62
	orr	r2, r0, r2
	mvn	r2, r2
	ands	r2, r1, r2
	bne	_06016C10
	ldrh	r2, [r9, #22]
	orr	r1, r1, r2
	and	r1, r0, r1
	cmp	r0, r1
	ldreqh	r0, [r9, #10]
	orreq	r0, r0, #4
	streqh	r0, [r9, #10]
	beq	_06016D50
_06016C10:
	ldrh	r0, [r9, #10]
	bic	r0, r0, #4
	strh	r0, [r9, #10]
	b	_06016D50
_06016C20:
	cmp	r5, #1
	bcc	_06016D50
	ldrh	r0, [r4]
	orr	r0, r0, #2
	strh	r0, [r4]
	mov	r0, r7
	bl	FUN_06009CB0
	strh	r0, [r9, #18]
	ldrh	r1, [r9, #18]
	ldr	r0, _06016DEC	; =0x0380FFF4
	ldr	r0, [r0]
	ldr	r0, [r0, #1052]	; 0x41c
	ldrh	r0, [r0, #74]	; 0x4a
	cmp	r1, r0
	ldreqh	r0, [r9, #10]
	orreq	r0, r0, #2
	streqh	r0, [r9, #10]
	ldrneh	r0, [r9, #10]
	bicne	r0, r0, #2
	strneh	r0, [r9, #10]
	b	_06016D50
_06016C74:
	cmp	r5, #3
	bcc	_06016D50
	ldrh	r0, [r9, #12]
	orr	r0, r0, #256	; 0x100
	strh	r0, [r9, #12]
	sub	r0, r7, #2
	str	r0, [r9, #36]	; 0x24
	b	_06016D50
_06016C94:
	cmp	r5, #6
	bcc	_06016D50
	ldrh	r0, [r9, #12]
	orr	r0, r0, #512	; 0x200
	strh	r0, [r9, #12]
	sub	r0, r7, #2
	str	r0, [r9, #32]
	b	_06016D50
_06016CB4:
	cmp	r5, #8
	bcc	_06016CFC
	mov	r0, r7
	bl	FUN_06009CB0
	cmp	r0, #0
	bne	_06016CFC
	add	r0, r7, #1
	bl	FUN_06009CB0
	cmp	r0, #9
	bne	_06016CFC
	add	r0, r7, #2
	bl	FUN_06009CB0
	cmp	r0, #191	; 0xbf
	bne	_06016CFC
	add	r0, r7, #3
	bl	FUN_06009CB0
	cmp	r0, #0
	beq	_06016D1C
_06016CFC:
	ldrh	r0, [r9, #24]
	add	r0, r0, #1
	strh	r0, [r9, #24]
	ldrh	r1, [r9, #26]
	add	r0, r5, #2
	add	r0, r1, r0
	strh	r0, [r9, #26]
	b	_06016D50
_06016D1C:
	ldrh	r0, [r9, #12]
	orr	r0, r0, #1024	; 0x400
	strh	r0, [r9, #12]
	sub	r0, r7, #2
	str	r0, [r9, #40]	; 0x28
	b	_06016D50
_06016D34:
	ldrh	r0, [r9, #24]
	add	r0, r0, #1
	strh	r0, [r9, #24]
	ldrh	r1, [r9, #26]
	add	r0, r5, #2
	add	r0, r1, r0
	strh	r0, [r9, #26]
_06016D50:
	add	r7, r7, r5
	add	r0, r5, #2
	sub	r6, r6, r0
_06016D5C:
	cmp	r6, #0
	bgt	_06016AF8
	ldrh	r0, [r9, #12]
	ands	r0, r0, #8
	beq	_06016D94
	ldrh	r0, [r8, #100]	; 0x64
	ands	r0, r0, #1
	bne	_06016D88
	ldrh	r0, [r9, #4]
	ands	r0, r0, #32768	; 0x8000
	beq	_06016D94
_06016D88:
	ldrh	r0, [r9, #10]
	orr	r0, r0, #8
	strh	r0, [r9, #10]
_06016D94:
	ldrh	r0, [r9, #12]
	ands	r0, r0, #48	; 0x30
	beq	_06016DE0
	ldrh	r0, [r9, #6]
	and	r1, r0, #3
	ldrh	r0, [r8, #124]	; 0x7c
	and	r0, r0, #3
	cmp	r1, r0
	ldreqh	r0, [r9, #10]
	orreq	r0, r0, #16
	streqh	r0, [r9, #10]
	ldrh	r0, [r9, #6]
	and	r1, r0, #16
	ldrh	r0, [r8, #124]	; 0x7c
	and	r0, r0, #16
	cmp	r1, r0
	ldreqh	r0, [r9, #10]
	orreq	r0, r0, #32
	streqh	r0, [r9, #10]
_06016DE0:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
_06016DEC:	.word	0x0380FFF4

	arm_func_start FUN_06016DF0
FUN_06016DF0: ; 0x06016DF0
	bx	lr

	arm_func_start FUN_06016DF4
FUN_06016DF4: ; 0x06016DF4
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	ldr	r1, _06016E58	; =0x0380FFF4
	ldr	r1, [r1]
	add	r5, r1, #380	; 0x17c
	ldrh	r4, [r0, #2]
	mov	r0, r4
	bl	FUN_0600EFF0
	cmp	r0, #64	; 0x40
	bne	_06016E4C
	mov	r0, r4
	bl	FUN_0600F1B4
	ldrh	r0, [r5, #44]	; 0x2c
	cmp	r0, #0
	beq	_06016E38
	mov	r0, #1
	bl	FUN_06015C78
_06016E38:
	ldrh	r0, [r5, #32]
	cmp	r0, #0
	beq	_06016E4C
	mov	r0, #0
	bl	FUN_06015C78
_06016E4C:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_06016E58:	.word	0x0380FFF4

	arm_func_start FUN_06016E5C
FUN_06016E5C: ; 0x06016E5C
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	mov	r4, r0
	ldr	r0, _06016F14	; =0x0380FFF4
	ldr	r0, [r0]
	add	r1, r0, #836	; 0x344
	ldrh	r5, [r4, #2]
	ldrh	r0, [r1, #12]
	cmp	r0, #1
	beq	_06016E98
	cmp	r0, #2
	beq	_06016ED0
	cmp	r0, #3
	beq	_06016ED0
	b	_06016F08
_06016E98:
	mov	r0, r5
	bl	FUN_0600EFF0
	cmp	r0, #32
	bls	_06016F08
	mov	r0, r5, lsl #16
	mov	r0, r0, lsr #16
	mov	r1, #32
	bl	FUN_0600F294
	add	r0, r4, #30
	ldrh	r1, [r4, #44]	; 0x2c
	bl	FUN_06010130
	mov	r0, r5
	bl	FUN_06014EB8
	b	_06016F08
_06016ED0:
	ldrh	r0, [r1, #8]
	cmp	r0, #32
	bls	_06016F08
	add	r0, r4, #30
	add	r1, r1, #130	; 0x82
	bl	FUN_0600AB78
	cmp	r0, #0
	beq	_06016F08
	mov	r0, #32
	bl	FUN_0600AF68
	bl	FUN_0600B054
	add	r0, r4, #30
	ldrh	r1, [r4, #44]	; 0x2c
	bl	FUN_06010130
_06016F08:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_06016F14:	.word	0x0380FFF4

	arm_func_start FUN_06016F18
FUN_06016F18: ; 0x06016F18
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #4
	mov	sl, r0
	ldr	r0, _06017444	; =0x0380FFF4
	ldr	r1, [r0]
	add	r9, r1, #836	; 0x344
	ldr	r0, _06017448	; =0x00000404
	add	r8, r1, r0
	add	r7, sl, #44	; 0x2c
	add	r0, r1, #1536	; 0x600
	ldrh	r0, [r0, #144]	; 0x90
	ands	r0, r0, #8
	beq	_06016FCC
	ldr	r0, _0601744C	; =0x0000042C
	add	r2, r1, r0
	ldr	r0, _06017450	; =0x048080B0
	ldrh	r1, [r0]
	ands	r0, r1, #1
	beq	_06016F70
	ldrh	r0, [r2]
	cmp	r0, #0
	bne	_06016FCC
_06016F70:
	ands	r0, r1, #4
	beq	_06016F84
	ldrh	r0, [r2, #20]
	cmp	r0, #0
	bne	_06016FCC
_06016F84:
	ands	r0, r1, #8
	beq	_06016F98
	ldrh	r0, [r2, #40]	; 0x28
	cmp	r0, #0
	bne	_06016FCC
_06016F98:
	ldr	r0, _06017454	; =0x0480819C
	ldrh	r0, [r0]
	ands	r0, r0, #1
	bne	_06016FCC
	mov	r2, #0
	ldr	r1, _06017458	; =0x04808032
	strh	r2, [r1]
	mov	r0, #32768	; 0x8000
	strh	r0, [r1]
	ldr	r0, _06017444	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #1024	; 0x400
	strh	r2, [r0, #222]	; 0xde
_06016FCC:
	add	r0, sl, #30
	mov	r1, #176	; 0xb0
	bl	FUN_06013D80
	cmp	r0, #0
	bne	_06017438
	mov	r5, #0
	ldrh	r0, [r7, #2]
	add	r0, r0, #1
	mov	r0, r0, lsl #16
	mov	fp, r0, lsr #16
	ldrh	r6, [sl, #2]
	cmp	r6, #0
	moveq	r4, #19
	moveq	r5, #1
	beq	_060173FC
	ldrh	r0, [r9, #12]
	cmp	r0, #1
	bne	_0601707C
	mov	r0, r6
	bl	FUN_0600EFF0
	cmp	r0, #32
	bls	_06017040
	mov	r0, r6, lsl #16
	mov	r0, r0, lsr #16
	mov	r1, #32
	bl	FUN_0600F294
	add	r0, sl, #30
	mov	r1, #1
	bl	FUN_06010130
_06017040:
	ldrh	r0, [sl, #8]
	ands	r0, r0, #1024	; 0x400
	beq	_0601707C
	mov	r0, r6
	bl	FUN_0600EF78
	cmp	r0, #0
	beq	_0601707C
	mov	r5, #1
	strh	r5, [r7]
	mov	r4, #15
	mov	fp, #4
	mov	r0, r6
	mov	r1, #0
	bl	FUN_0600F154
	b	_060173FC
_0601707C:
	ldrh	r0, [r7]
	cmp	r0, #0
	beq	_06017094
	cmp	r0, #1
	beq	_0601718C
	b	_060173EC
_06017094:
	ldrh	r1, [r9, #12]
	cmp	r1, #1
	bne	_060170C0
	ldr	r0, _06017444	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #50]	; 0x32
	cmp	r0, #1
	moveq	r4, #13
	moveq	r5, #1
	beq	_060173FC
_060170C0:
	cmp	r1, #1
	bne	_060170E8
	ldrh	r0, [r7, #2]
	cmp	r0, #1
	moveq	r4, #0
	moveq	r5, #1
	movne	r4, #14
	movne	fp, #2
	movne	r5, #1
	b	_060173FC
_060170E8:
	cmp	r1, #1
	beq	_060173FC
	ldrh	r0, [r7, #2]
	cmp	r0, #2
	bne	_060173FC
	ldr	r1, [r8, #24]
	ldrh	r0, [r1, #22]
	cmp	r0, #0
	bne	_060173FC
	add	r0, r1, #16
	add	r1, sl, #30
	bl	FUN_0600AB78
	cmp	r0, #0
	beq	_060173FC
	ldrh	r0, [r8]
	cmp	r0, #49	; 0x31
	bne	_060173FC
	bl	FUN_06009E28
	ldrh	r0, [r7, #4]
	cmp	r0, #0
	bne	_0601715C
	mov	r0, #48	; 0x30
	bl	FUN_0600AF68
	mov	r1, #0
	ldr	r0, [r8, #28]
	strh	r1, [r0, #4]
	ldr	r0, [r8, #28]
	strh	r1, [r0, #6]
	b	_06017174
_0601715C:
	mov	r1, #12
	ldr	r0, [r8, #28]
	strh	r1, [r0, #4]
	ldrh	r1, [r7, #4]
	ldr	r0, [r8, #28]
	strh	r1, [r0, #6]
_06017174:
	mov	r0, #53	; 0x35
	strh	r0, [r8]
	mov	r0, #2
	mov	r1, r0
	bl	FUN_06009078
	b	_060173FC
_0601718C:
	ldrh	r0, [r9, #12]
	cmp	r0, #1
	bne	_06017288
	mov	r0, r6, lsl #16
	mov	r0, r0, lsr #16
	mov	r1, #32
	bl	FUN_0600F294
	ldrh	r0, [r7, #2]
	cmp	r0, #1
	bne	_060171F8
	add	r0, sl, #30
	mov	r1, #128	; 0x80
	mov	r2, #1
	bl	FUN_06013F38
	movs	r8, r0
	beq	_060173FC
	ldrh	r0, [r7]
	strh	r0, [r8, #44]	; 0x2c
	strh	fp, [r8, #46]	; 0x2e
	mov	r0, #0
	strh	r0, [r8, #48]	; 0x30
	mov	r0, r6
	mov	r1, r8
	bl	FUN_060166F0
	mov	r0, r8
	bl	FUN_06014C6C
	b	_060173FC
_060171F8:
	cmp	r0, #3
	bne	_0601726C
	mov	r0, r6
	bl	FUN_0600EFF0
	cmp	r0, #32
	bne	_06017220
	mov	r0, r6
	bl	FUN_0600EF78
	cmp	r0, #0
	bne	_0601722C
_06017220:
	mov	r4, #1
	mov	r5, r4
	b	_060173FC
_0601722C:
	mov	r0, sl
	bl	FUN_06016668
	cmp	r0, #0
	bne	_06017254
	mov	r4, #15
	mov	r5, #1
	mov	r0, r6
	mov	r1, #0
	bl	FUN_0600F154
	b	_060173FC
_06017254:
	mov	r0, r6
	mov	r1, #0
	bl	FUN_0600F154
	mov	r4, #0
	mov	r5, #1
	b	_060173FC
_0601726C:
	mov	r0, r6
	mov	r1, #0
	bl	FUN_0600F154
	mov	r4, #14
	mov	fp, #2
	mov	r5, #1
	b	_060173FC
_06017288:
	ldr	r1, [r8, #24]
	ldrh	r0, [r1, #22]
	cmp	r0, #1
	bne	_060173FC
	add	r0, r1, #16
	add	r1, sl, #30
	bl	FUN_0600AB78
	cmp	r0, #0
	beq	_060173FC
	ldrh	r0, [r7, #2]
	cmp	r0, #2
	bne	_06017378
	ldrh	r0, [r8]
	cmp	r0, #49	; 0x31
	bne	_060173FC
	ldrh	r0, [r7, #4]
	cmp	r0, #0
	beq	_0601730C
	bl	FUN_06009E28
	mov	r0, #53	; 0x35
	strh	r0, [r8]
	mov	r1, #12
	ldr	r0, [r8, #28]
	strh	r1, [r0, #4]
	ldrh	r1, [r7, #4]
	ldr	r0, [r8, #28]
	strh	r1, [r0, #6]
	mov	r0, #2
	mov	r1, r0
	bl	FUN_06009078
	mov	r0, #32
	bl	FUN_0600AF68
	b	_060173FC
_0601730C:
	mov	r0, #51	; 0x33
	strh	r0, [r8]
	add	r0, sl, #51	; 0x33
	bl	FUN_06009CB0
	mov	r1, r0
	add	r0, sl, #30
	mov	r2, #1
	bl	FUN_06013F38
	movs	r6, r0
	beq	_060173FC
	ldrh	r0, [r6, #20]
	orr	r0, r0, #16384	; 0x4000
	strh	r0, [r6, #20]
	add	r0, sl, #44	; 0x2c
	add	r1, r6, #44	; 0x2c
	ldrh	r2, [sl, #6]
	add	r2, r2, #1
	bl	FUN_06000EA0
	ldrh	r0, [r7]
	strh	r0, [r6, #44]	; 0x2c
	mov	r0, #3
	strh	r0, [r6, #46]	; 0x2e
	mov	r0, #0
	strh	r0, [r6, #48]	; 0x30
	mov	r0, r6
	bl	FUN_06014C6C
	b	_060173FC
_06017378:
	cmp	r0, #4
	bne	_060173FC
	ldrh	r0, [r8]
	cmp	r0, #51	; 0x33
	bne	_060173FC
	bl	FUN_06009E28
	ldrh	r0, [r7, #4]
	cmp	r0, #0
	bne	_060173BC
	mov	r0, #48	; 0x30
	bl	FUN_0600AF68
	mov	r1, #0
	ldr	r0, [r8, #28]
	strh	r1, [r0, #4]
	ldr	r0, [r8, #28]
	strh	r1, [r0, #6]
	b	_060173D4
_060173BC:
	mov	r1, #12
	ldr	r0, [r8, #28]
	strh	r1, [r0, #4]
	ldrh	r1, [r7, #4]
	ldr	r0, [r8, #28]
	strh	r1, [r0, #6]
_060173D4:
	mov	r0, #53	; 0x35
	strh	r0, [r8]
	mov	r0, #2
	mov	r1, r0
	bl	FUN_06009078
	b	_060173FC
_060173EC:
	ldrh	r0, [r9, #12]
	cmp	r0, #1
	moveq	r4, #13
	moveq	r5, #1
_060173FC:
	cmp	r5, #0
	beq	_06017438
	cmp	r4, #0
	movne	r2, #1
	moveq	r2, #0
	add	r0, sl, #30
	mov	r1, #0
	bl	FUN_06013F38
	cmp	r0, #0
	beq	_06017438
	ldrh	r1, [r7]
	strh	r1, [r0, #44]	; 0x2c
	strh	fp, [r0, #46]	; 0x2e
	strh	r4, [r0, #48]	; 0x30
	bl	FUN_06014C6C
_06017438:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
_06017444:	.word	0x0380FFF4
_06017448:	.word	0x00000404
_0601744C:	.word	0x0000042C
_06017450:	.word	0x048080B0
_06017454:	.word	0x0480819C
_06017458:	.word	0x04808032

	arm_func_start FUN_0601745C
FUN_0601745C: ; 0x0601745C
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #52	; 0x34
	mov	r5, r0
	mov	sl, r1
	ldr	r0, _06017840	; =0x0380FFF4
	ldr	r1, [r0]
	ldr	r0, _06017844	; =0x00000404
	add	r9, r1, r0
	add	r0, r1, #1024	; 0x400
	ldrh	r0, [r0, #4]
	cmp	r0, #19
	bne	_06017834
	ldr	r8, [r9, #28]
	add	r4, r5, #44	; 0x2c
	ldr	r0, [r9, #24]
	add	r6, r0, #78	; 0x4e
	mov	r7, #0
	add	fp, r5, #36	; 0x24
	b	_060174D4
_060174A8:
	mov	r0, r6
	mov	r1, fp
	bl	FUN_0600AB78
	cmp	r0, #0
	ldrneh	r1, [r8, #6]
	movne	r0, #1
	orrne	r0, r1, r0, lsl r7
	strneh	r0, [r8, #6]
	bne	_06017834
	add	r6, r6, #6
	add	r7, r7, #1
_060174D4:
	ldr	r0, [r9, #24]
	ldrh	r0, [r0, #76]	; 0x4c
	cmp	r7, r0
	bcc	_060174A8
	add	r7, r8, #10
	mov	r6, #0
	add	fp, r5, #36	; 0x24
	b	_06017514
_060174F4:
	mov	r0, fp
	add	r1, r7, #4
	bl	FUN_0600AB78
	cmp	r0, #0
	bne	_06017834
	ldrh	r0, [r7]
	add	r7, r7, r0, lsl #1
	add	r6, r6, #1
_06017514:
	ldrh	r0, [r8, #8]
	cmp	r6, r0
	bcc	_060174F4
	mov	r0, #0
	mov	r1, r7
	mov	r2, #64	; 0x40
	bl	FUN_0600055C
	ldrh	r6, [r5, #6]
	cmp	r6, #12
	bls	_06017834
	cmp	sl, #0
	bne	_06017590
	mov	r0, #0
	add	r1, sp, #8
	mov	r2, #44	; 0x2c
	bl	FUN_0600AEC4
	add	r0, r4, #12
	str	r0, [sp, #8]
	sub	r0, r6, #12
	strh	r0, [sp, #16]
	mov	r0, #3
	strh	r0, [sp, #18]
	mov	r0, #56	; 0x38
	strh	r0, [sp, #20]
	ldrh	r0, [r5, #8]
	strh	r0, [sp, #12]
	ldrh	r0, [r4, #10]
	strh	r0, [sp, #14]
	add	r0, sp, #8
	bl	FUN_06016AB0
	add	sl, sp, #8
_06017590:
	ldr	r0, [sl, #40]	; 0x28
	cmp	r0, #0
	ldreqh	r0, [sl, #26]
	addeq	r0, r0, #65	; 0x41
	moveq	r0, r0, lsr #1
	streqh	r0, [r7]
	beq	_060175CC
	add	r0, r0, #1
	bl	FUN_06009CB0
	sub	r0, r0, #8
	strh	r0, [r7, #60]	; 0x3c
	ldrh	r0, [r7, #60]	; 0x3c
	add	r0, r0, #65	; 0x41
	mov	r0, r0, lsr #1
	strh	r0, [r7]
_060175CC:
	ldrh	r0, [sl, #10]
	and	r0, r0, #1
	cmp	r0, #1
	bne	_06017828
	ldr	r0, _06017840	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #1024	; 0x400
	ldrh	r1, [r0, #8]
	ldrh	r0, [r7]
	cmp	r1, r0
	bcc	_06017828
	ldrh	r0, [r4, #10]
	strh	r0, [r7, #44]	; 0x2c
	add	r0, r7, #4
	add	r1, r5, #36	; 0x24
	bl	FUN_0600AF4C
	ldrh	r0, [r4, #8]
	strh	r0, [r7, #50]	; 0x32
	ldrh	r0, [r5, #18]
	and	r0, r0, #255	; 0xff
	strh	r0, [r7, #2]
	ldr	r0, [sl, #40]	; 0x28
	cmp	r0, #0
	beq	_06017668
	mov	r4, #0
	add	r5, r7, #64	; 0x40
	b	_06017658
_06017638:
	ldr	r0, [sl, #40]	; 0x28
	add	r0, r0, #10
	add	r0, r0, r4
	bl	FUN_06009CB0
	mov	r1, r0
	add	r0, r5, r4
	bl	FUN_06009CD0
	add	r4, r4, #1
_06017658:
	ldrh	r0, [r7, #60]	; 0x3c
	cmp	r4, r0
	bcc	_06017638
	b	_06017710
_06017668:
	ldrh	r0, [sl, #24]
	strh	r0, [r7, #62]	; 0x3e
	ldrh	r0, [sl, #24]
	cmp	r0, #0
	beq	_06017710
	add	r6, r4, #12
	add	fp, r7, #64	; 0x40
	mov	r5, #0
	str	r5, [sp]
	b	_06017704
_06017690:
	mov	r0, r6
	bl	FUN_06009CB0
	mov	r4, r0
	add	r0, r6, #1
	bl	FUN_06009CB0
	cmp	r4, #6
	bls	_060176FC
	ldr	r1, [sl, #40]	; 0x28
	cmp	r6, r1
	beq	_060176FC
	ldr	r4, [sp]
	add	r0, r0, #2
	str	r0, [sp, #4]
	b	_060176E8
_060176C8:
	mov	r0, r6
	bl	FUN_06009CB0
	mov	r1, r0
	mov	r0, fp
	bl	FUN_06009CD0
	add	fp, fp, #1
	add	r6, r6, #1
	add	r4, r4, #1
_060176E8:
	ldr	r0, [sp, #4]
	cmp	r4, r0
	bcc	_060176C8
	add	r5, r5, #1
	b	_06017704
_060176FC:
	add	r0, r0, #2
	add	r6, r6, r0
_06017704:
	ldrh	r0, [sl, #24]
	cmp	r5, r0
	bcc	_06017690
_06017710:
	ldr	r0, [sl, #28]
	cmp	r0, #0
	beq	_06017764
	add	r0, r0, #1
	bl	FUN_06009CB0
	strh	r0, [r7, #10]
	mov	r4, #0
	add	r5, r7, #12
	b	_06017754
_06017734:
	ldr	r0, [sl, #28]
	add	r0, r0, #2
	add	r0, r0, r4
	bl	FUN_06009CB0
	mov	r1, r0
	add	r0, r5, r4
	bl	FUN_06009CD0
	add	r4, r4, #1
_06017754:
	ldrh	r0, [r7, #10]
	cmp	r4, r0
	bcc	_06017734
	b	_0601778C
_06017764:
	mov	r6, #0
	strh	r6, [r7, #10]
	add	r5, r7, #12
	mov	r4, r6
_06017774:
	add	r0, r5, r6
	mov	r1, r4
	bl	FUN_06009CD0
	add	r6, r6, #1
	cmp	r6, #32
	bcc	_06017774
_0601778C:
	ldrh	r0, [sl, #20]
	strh	r0, [r7, #46]	; 0x2e
	ldrh	r0, [sl, #22]
	strh	r0, [r7, #48]	; 0x30
	ldrh	r0, [sl, #18]
	strh	r0, [r7, #54]	; 0x36
	ldr	r0, [sl, #32]
	cmp	r0, #0
	beq	_060177BC
	add	r0, r0, #3
	bl	FUN_06009CB0
	strh	r0, [r7, #56]	; 0x38
_060177BC:
	ldr	r0, [sl, #36]	; 0x24
	cmp	r0, #0
	beq	_060177D4
	add	r0, r0, #3
	bl	FUN_06009CB0
	strh	r0, [r7, #52]	; 0x34
_060177D4:
	ldrh	r1, [r8, #2]
	ldrh	r0, [r7]
	add	r0, r1, r0
	strh	r0, [r8, #2]
	ldrh	r0, [r8, #8]
	add	r0, r0, #1
	strh	r0, [r8, #8]
	ldrh	r1, [r9, #4]
	ldrh	r0, [r7]
	sub	r0, r1, r0
	strh	r0, [r9, #4]
	ldrh	r0, [r9, #4]
	cmp	r0, #32
	bcs	_06017834
	bl	FUN_06009E28
	mov	r0, #21
	strh	r0, [r9]
	mov	r0, #2
	mov	r1, #0
	bl	FUN_06009078
	b	_06017834
_06017828:
	add	r0, r7, #4
	ldr	r1, _06017848	; =_06019394
	bl	FUN_0600AF4C
_06017834:
	add	sp, sp, #52	; 0x34
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
_06017840:	.word	0x0380FFF4
_06017844:	.word	0x00000404
_06017848:	.word	_06019394

	arm_func_start FUN_0601784C
FUN_0601784C: ; 0x0601784C
	stmdb	sp!, {r4, lr}
	sub	sp, sp, #48	; 0x30
	mov	r4, r0
	add	r0, r4, #30
	mov	r1, #80	; 0x50
	bl	FUN_06013D80
	cmp	r0, #0
	bne	_060178F0
	ldrh	r0, [r4, #36]	; 0x24
	ands	r0, r0, #1
	bne	_06017884
	ldrh	r0, [r4, #8]
	ands	r0, r0, #32768	; 0x8000
	beq	_060178F0
_06017884:
	mov	r0, #0
	add	r1, sp, #0
	mov	r2, #44	; 0x2c
	bl	FUN_0600AEC4
	add	r0, r4, #44	; 0x2c
	str	r0, [sp]
	ldrh	r0, [r4, #6]
	strh	r0, [sp, #8]
	ldr	r0, _060178FC	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #58]	; 0x3a
	mov	r0, r0, lsl #30
	movs	r0, r0, lsr #31
	moveq	r0, #2048	; 0x800
	streqh	r0, [sp, #12]
	add	r0, sp, #0
	bl	FUN_06016AB0
	ldrh	r0, [sp, #10]
	and	r0, r0, #1
	cmp	r0, #1
	bne	_060178F0
	add	r0, r4, #30
	bl	FUN_06013FFC
	cmp	r0, #0
	beq	_060178F0
	bl	FUN_06014C6C
_060178F0:
	add	sp, sp, #48	; 0x30
	ldmia	sp!, {r4, lr}
	bx	lr
_060178FC:	.word	0x0380FFF4

	arm_func_start FUN_06017900
FUN_06017900: ; 0x06017900
	stmdb	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #4
	mov	r7, r0
	ldr	r0, _06017A28	; =0x0380FFF4
	ldr	r1, [r0]
	add	r6, r1, #836	; 0x344
	ldr	r0, _06017A2C	; =0x00000404
	add	r5, r1, r0
	add	r4, r7, #44	; 0x2c
	ldrh	r0, [r6, #12]
	cmp	r0, #2
	beq	_06017938
	cmp	r0, #3
	bne	_06017A1C
_06017938:
	ldrh	r0, [r5]
	cmp	r0, #97	; 0x61
	bne	_06017A1C
	ldr	r0, [r5, #24]
	add	r0, r0, #16
	add	r1, r7, #30
	bl	FUN_0600AB78
	cmp	r0, #0
	beq	_06017A1C
	bl	FUN_06009E28
	ldrh	r0, [r4, #2]
	cmp	r0, #0
	bne	_060179B8
	ldrh	r1, [r4, #4]
	ldr	r0, _06017A30	; =0x00000FFF
	and	r0, r1, r0
	mov	r0, r0, lsl #16
	mov	r0, r0, lsr #16
	bl	FUN_0600B0B0
	ldrh	r0, [r6, #106]	; 0x6a
	bl	FUN_06013E48
	add	r0, r6, #130	; 0x82
	add	r1, r7, #30
	bl	FUN_0600AF4C
	add	r0, r7, #30
	bl	FUN_0600F608
	strh	r0, [r6, #136]	; 0x88
	ldrh	r0, [r6, #136]	; 0x88
	mov	r1, #64	; 0x40
	bl	FUN_0600F294
	mov	r0, #64	; 0x40
	bl	FUN_0600AF68
_060179B8:
	ldrh	r0, [r4, #2]
	cmp	r0, #0
	bne	_060179E4
	mov	r1, #0
	ldr	r0, [r5, #28]
	strh	r1, [r0, #4]
	ldr	r0, [r5, #28]
	strh	r1, [r0, #6]
	mov	r0, #64	; 0x40
	bl	FUN_0600AF68
	b	_060179FC
_060179E4:
	mov	r1, #12
	ldr	r0, [r5, #28]
	strh	r1, [r0, #4]
	ldrh	r1, [r4, #2]
	ldr	r0, [r5, #28]
	strh	r1, [r0, #6]
_060179FC:
	ldrh	r1, [r6, #106]	; 0x6a
	ldr	r0, [r5, #28]
	strh	r1, [r0, #8]
	mov	r0, #99	; 0x63
	strh	r0, [r5]
	mov	r0, #2
	mov	r1, #4
	bl	FUN_06009078
_06017A1C:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, lr}
	bx	lr
_06017A28:	.word	0x0380FFF4
_06017A2C:	.word	0x00000404
_06017A30:	.word	0x00000FFF

	arm_func_start FUN_06017A34
FUN_06017A34: ; 0x06017A34
	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #48	; 0x30
	mov	r8, r0
	ldr	r0, _06017BD8	; =0x0380FFF4
	ldr	r7, [r0]
	ldrh	r5, [r8, #6]
	add	r6, r8, #44	; 0x2c
	cmp	r5, #10
	bls	_06017BCC
	add	r0, r7, #768	; 0x300
	ldrh	r0, [r0, #80]	; 0x50
	cmp	r0, #1
	bne	_06017BCC
	add	r0, r8, #30
	mov	r1, #48	; 0x30
	bl	FUN_06013D80
	cmp	r0, #0
	bne	_06017BCC
	ldrh	r4, [r8, #2]
	mov	r0, r4
	bl	FUN_0600EFF0
	cmp	r0, #48	; 0x30
	bcs	_06017AC4
	add	r0, r8, #30
	mov	r1, #192	; 0xc0
	bl	FUN_06013D80
	cmp	r0, #0
	bne	_06017BCC
	add	r0, r8, #30
	mov	r1, #6
	mov	r2, #1
	bl	FUN_06013E9C
	cmp	r0, #0
	beq	_06017BCC
	bl	FUN_06014C6C
	b	_06017BCC
_06017AC4:
	mov	r0, r4
	bl	FUN_0600EFF0
	cmp	r0, #64	; 0x40
	bne	_06017AF0
	mov	r0, r4
	mov	r1, #48	; 0x30
	bl	FUN_0600F294
	add	r0, r8, #30
	mov	r1, #1
	bl	FUN_0600FEC8
	b	_06017B00
_06017AF0:
	mov	r0, r4
	bl	FUN_0600EF18
	cmp	r0, #0
	bne	_06017BCC
_06017B00:
	mov	r0, #0
	add	r1, sp, #0
	mov	r2, #44	; 0x2c
	bl	FUN_0600AEC4
	add	r0, r6, #10
	str	r0, [sp]
	sub	r0, r5, #10
	strh	r0, [sp, #8]
	mov	r0, #2048	; 0x800
	strh	r0, [sp, #12]
	add	r0, sp, #0
	bl	FUN_06016AB0
	ldrh	r1, [r6]
	ldr	r0, _06017BDC	; =0x0000FFC2
	ands	r0, r1, r0
	bne	_06017B78
	add	r0, r7, #768	; 0x300
	ldrh	r2, [r0, #52]	; 0x34
	cmp	r2, #0
	bne	_06017B60
	mov	r0, r1, lsl #27
	mov	r0, r0, lsr #31
	cmp	r0, #1
	beq	_06017B78
_06017B60:
	cmp	r2, #0
	beq	_06017B80
	ldrh	r0, [r6]
	mov	r0, r0, lsl #27
	movs	r0, r0, lsr #31
	bne	_06017B80
_06017B78:
	mov	r1, #10
	b	_06017BB4
_06017B80:
	mov	r0, r4
	bl	FUN_0600F19C
	ldrh	r1, [sp, #10]
	ands	r0, r1, #1
	moveq	r1, #1
	beq	_06017BB4
	ands	r0, r1, #4
	moveq	r1, #18
	beq	_06017BB4
	mov	r0, r4
	ldrh	r1, [sp, #22]
	bl	FUN_0600F184
	mov	r1, #0
_06017BB4:
	mov	r0, r4
	ldr	r2, [sp, #28]
	bl	FUN_06014174
	cmp	r0, #0
	beq	_06017BCC
	bl	FUN_06014C6C
_06017BCC:
	add	sp, sp, #48	; 0x30
	ldmia	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
_06017BD8:	.word	0x0380FFF4
_06017BDC:	.word	0x0000FFC2

	arm_func_start FUN_06017BE0
FUN_06017BE0: ; 0x06017BE0
	stmdb	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #4
	mov	r7, r0
	ldr	r0, _06017D00	; =0x0380FFF4
	ldr	r1, [r0]
	add	r6, r1, #836	; 0x344
	ldr	r0, _06017D04	; =0x00000404
	add	r5, r1, r0
	add	r4, r7, #44	; 0x2c
	ldrh	r0, [r6, #12]
	cmp	r0, #2
	beq	_06017C18
	cmp	r0, #3
	bne	_06017CF4
_06017C18:
	ldrh	r0, [r5]
	cmp	r0, #81	; 0x51
	bne	_06017CF4
	ldr	r0, [r5, #24]
	add	r0, r0, #16
	add	r1, r7, #30
	bl	FUN_0600AB78
	cmp	r0, #0
	beq	_06017CF4
	bl	FUN_06009E28
	ldrh	r0, [r4, #2]
	cmp	r0, #0
	bne	_06017C90
	ldrh	r1, [r4, #4]
	ldr	r0, _06017D08	; =0x00000FFF
	and	r0, r1, r0
	mov	r0, r0, lsl #16
	mov	r0, r0, lsr #16
	bl	FUN_0600B0B0
	ldrh	r0, [r6, #106]	; 0x6a
	bl	FUN_06013E48
	add	r0, r6, #130	; 0x82
	add	r1, r7, #30
	bl	FUN_0600AF4C
	add	r0, r7, #30
	bl	FUN_0600F608
	strh	r0, [r6, #136]	; 0x88
	ldrh	r0, [r6, #136]	; 0x88
	mov	r1, #64	; 0x40
	bl	FUN_0600F294
_06017C90:
	ldrh	r0, [r4, #2]
	cmp	r0, #0
	bne	_06017CBC
	mov	r1, #0
	ldr	r0, [r5, #28]
	strh	r1, [r0, #4]
	ldr	r0, [r5, #28]
	strh	r1, [r0, #6]
	mov	r0, #64	; 0x40
	bl	FUN_0600AF68
	b	_06017CD4
_06017CBC:
	mov	r1, #12
	ldr	r0, [r5, #28]
	strh	r1, [r0, #4]
	ldrh	r1, [r4, #2]
	ldr	r0, [r5, #28]
	strh	r1, [r0, #6]
_06017CD4:
	ldrh	r1, [r6, #106]	; 0x6a
	ldr	r0, [r5, #28]
	strh	r1, [r0, #8]
	mov	r0, #83	; 0x53
	strh	r0, [r5]
	mov	r0, #2
	mov	r1, #3
	bl	FUN_06009078
_06017CF4:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, lr}
	bx	lr
_06017D00:	.word	0x0380FFF4
_06017D04:	.word	0x00000404
_06017D08:	.word	0x00000FFF

	arm_func_start FUN_06017D0C
FUN_06017D0C: ; 0x06017D0C
	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #48	; 0x30
	mov	r8, r0
	ldr	r0, _06017EE0	; =0x0380FFF4
	ldr	r0, [r0]
	add	r7, r0, #796	; 0x31c
	ldrh	r5, [r8, #6]
	add	r6, r8, #44	; 0x2c
	cmp	r5, #4
	bls	_06017ED4
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #80]	; 0x50
	cmp	r0, #1
	bne	_06017ED4
	add	r0, r8, #30
	mov	r1, #16
	bl	FUN_06013D80
	cmp	r0, #0
	bne	_06017ED4
	ldrh	r4, [r8, #2]
	cmp	r4, #0
	beq	_06017D74
	mov	r0, r4
	bl	FUN_0600EFF0
	cmp	r0, #48	; 0x30
	bcs	_06017DA8
_06017D74:
	add	r0, r8, #30
	mov	r1, #192	; 0xc0
	bl	FUN_06013D80
	cmp	r0, #0
	bne	_06017ED4
	add	r0, r8, #30
	mov	r1, #6
	mov	r2, #1
	bl	FUN_06013E9C
	cmp	r0, #0
	beq	_06017ED4
	bl	FUN_06014C6C
	b	_06017ED4
_06017DA8:
	mov	r0, r4
	bl	FUN_0600EFF0
	cmp	r0, #64	; 0x40
	bne	_06017DD4
	mov	r0, r4
	mov	r1, #48	; 0x30
	bl	FUN_0600F294
	add	r0, r8, #30
	mov	r1, #1
	bl	FUN_0600FEC8
	b	_06017DE4
_06017DD4:
	mov	r0, r4
	bl	FUN_0600EF18
	cmp	r0, #0
	bne	_06017ED4
_06017DE4:
	mov	r0, #0
	add	r1, sp, #0
	mov	r2, #44	; 0x2c
	bl	FUN_0600AEC4
	add	r0, r6, #4
	str	r0, [sp]
	sub	r0, r5, #4
	strh	r0, [sp, #8]
	add	r0, sp, #0
	bl	FUN_06016AB0
	ldrh	r1, [r6]
	ldr	r0, _06017EE4	; =0x0000FFC2
	ands	r0, r1, r0
	bne	_06017E80
	mov	r0, r1, lsl #31
	movs	r0, r0, lsr #31
	beq	_06017E80
	ldrh	r2, [r7, #24]
	cmp	r2, #0
	bne	_06017E44
	mov	r0, r1, lsl #27
	mov	r0, r0, lsr #31
	cmp	r0, #1
	beq	_06017E80
_06017E44:
	cmp	r2, #0
	beq	_06017E5C
	ldrh	r0, [r6]
	mov	r0, r0, lsl #27
	movs	r0, r0, lsr #31
	beq	_06017E80
_06017E5C:
	ldrh	r0, [r7, #30]
	mov	r0, r0, lsl #29
	mov	r0, r0, lsr #31
	cmp	r0, #1
	bne	_06017E88
	ldrh	r0, [r6]
	mov	r0, r0, lsl #26
	movs	r0, r0, lsr #31
	bne	_06017E88
_06017E80:
	mov	r1, #10
	b	_06017EBC
_06017E88:
	mov	r0, r4
	bl	FUN_0600F19C
	ldrh	r1, [sp, #10]
	ands	r0, r1, #1
	moveq	r1, #1
	beq	_06017EBC
	ands	r0, r1, #4
	moveq	r1, #18
	beq	_06017EBC
	mov	r0, r4
	ldrh	r1, [sp, #22]
	bl	FUN_0600F184
	mov	r1, #0
_06017EBC:
	mov	r0, r4
	ldr	r2, [sp, #28]
	bl	FUN_060142E0
	cmp	r0, #0
	beq	_06017ED4
	bl	FUN_06014C6C
_06017ED4:
	add	sp, sp, #48	; 0x30
	ldmia	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
_06017EE0:	.word	0x0380FFF4
_06017EE4:	.word	0x0000FFC2

	arm_func_start FUN_06017EE8
FUN_06017EE8: ; 0x06017EE8
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	mov	r4, r0
	ldr	r0, _06017FD8	; =0x0380FFF4
	ldr	r0, [r0]
	add	r1, r0, #836	; 0x344
	ldrh	r5, [r4, #2]
	ldrh	r0, [r1, #12]
	cmp	r0, #1
	beq	_06017F24
	cmp	r0, #2
	beq	_06017F94
	cmp	r0, #3
	beq	_06017F94
	b	_06017FCC
_06017F24:
	mov	r0, r5
	bl	FUN_0600EFF0
	cmp	r0, #64	; 0x40
	bne	_06017F5C
	mov	r0, r5, lsl #16
	mov	r0, r0, lsr #16
	mov	r1, #48	; 0x30
	bl	FUN_0600F294
	add	r0, r4, #30
	ldrh	r1, [r4, #44]	; 0x2c
	bl	FUN_0600FEC8
	mov	r0, r5
	bl	FUN_06014EB8
	b	_06017FCC
_06017F5C:
	cmp	r0, #48	; 0x30
	bne	_06017F74
	add	r0, r4, #30
	mov	r1, #7
	bl	FUN_060145BC
	b	_06017F84
_06017F74:
	add	r0, r4, #30
	mov	r1, #7
	mov	r2, #1
	bl	FUN_06013E9C
_06017F84:
	cmp	r0, #0
	beq	_06017FCC
	bl	FUN_06014C6C
	b	_06017FCC
_06017F94:
	ldrh	r0, [r1, #8]
	cmp	r0, #64	; 0x40
	bne	_06017FCC
	add	r0, r4, #30
	add	r1, r1, #130	; 0x82
	bl	FUN_0600AB78
	cmp	r0, #0
	beq	_06017FCC
	mov	r0, #48	; 0x30
	bl	FUN_0600AF68
	bl	FUN_0600B054
	add	r0, r4, #30
	ldrh	r1, [r4, #44]	; 0x2c
	bl	FUN_0600FEC8
_06017FCC:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_06017FD8:	.word	0x0380FFF4

	arm_func_start FUN_06017FDC
FUN_06017FDC: ; 0x06017FDC
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #68	; 0x44
	mov	sl, r0
	ldr	r0, _0601865C	; =0x0380FFF4
	ldr	r1, [r0]
	add	r8, r1, #836	; 0x344
	ldr	r0, _06018660	; =0x00000404
	add	r7, r1, r0
	add	r6, r1, #796	; 0x31c
	add	r5, r1, #380	; 0x17c
	ldr	r0, [r1, #1392]	; 0x570
	add	r0, r0, #1
	str	r0, [r1, #1392]	; 0x570
	add	r0, sl, #30
	bl	FUN_0600F4C0
	mov	r4, r0
	mov	r0, r4, lsl #16
	mov	r0, r0, lsr #16
	strh	r0, [sl, #2]
	cmp	r4, #255	; 0xff
	beq	_06018650
	ldrh	r1, [sl, #18]
	bl	FUN_0600F27C
	add	r9, sl, #44	; 0x2c
	ldrh	fp, [sl, #6]
	cmp	fp, #12
	bls	_06018650
	mov	r0, #0
	add	r1, sp, #24
	mov	r2, #44	; 0x2c
	bl	FUN_0600AEC4
	add	r0, r9, #12
	str	r0, [sp, #24]
	sub	r0, fp, #12
	strh	r0, [sp, #32]
	mov	r0, #2
	strh	r0, [sp, #34]	; 0x22
	ldrh	r0, [r8, #30]
	cmp	r0, #0
	ldreqh	r0, [sp, #34]	; 0x22
	orreq	r0, r0, #1
	streqh	r0, [sp, #34]	; 0x22
	mov	r0, #56	; 0x38
	strh	r0, [sp, #36]	; 0x24
	ldrh	r0, [sl, #8]
	strh	r0, [sp, #28]
	ldrh	r0, [r9, #10]
	strh	r0, [sp, #30]
	add	r0, sp, #24
	bl	FUN_06016AB0
	ldr	r9, [sp, #56]	; 0x38
	cmp	r9, #0
	beq	_060180DC
	ldrh	r0, [sl, #22]
	ands	r0, r0, #32768	; 0x8000
	beq	_060180DC
	add	r0, r9, #6
	bl	FUN_06009CB0
	mov	fp, r0
	add	r0, r9, #7
	bl	FUN_06009CB0
	add	r1, fp, r0, lsl #8
	ldr	r0, _06018664	; =0x0480810C
	strh	r1, [r0]
_060180DC:
	ldrh	r1, [r7]
	cmp	r1, #19
	bne	_06018118
	ldr	r0, [r7, #24]
	ldrh	r0, [r0, #56]	; 0x38
	cmp	r0, #1
	bne	_06018118
	ldrh	r0, [sp, #34]	; 0x22
	and	r0, r0, #9
	cmp	r0, #9
	bne	_06018638
	mov	r0, sl
	add	r1, sp, #24
	bl	FUN_0601745C
	b	_06018638
_06018118:
	ldrh	r0, [sp, #34]	; 0x22
	ands	r0, r0, #8
	beq	_06018638
	cmp	r1, #33	; 0x21
	bne	_060182A0
	bl	FUN_06009E28
	ldrh	r0, [sp, #34]	; 0x22
	and	r0, r0, #48	; 0x30
	cmp	r0, #48	; 0x30
	movne	r0, #12
	strneh	r0, [r7, #4]
	movne	r0, #10
	strneh	r0, [r7, #6]
	bne	_0601827C
	ldrh	r0, [sl, #52]	; 0x34
	cmp	r0, #1000	; 0x3e8
	movhi	r0, #12
	strhih	r0, [r7, #4]
	movhi	r0, #1
	strhih	r0, [r7, #6]
	bhi	_0601827C
	mov	r1, #0
	strh	r1, [r7, #4]
	ldrh	r0, [sp, #36]	; 0x24
	ands	r0, r0, #2
	beq	_06018194
	ldrh	r0, [sp, #34]	; 0x22
	ands	r0, r0, #2
	bne	_06018194
	ldrh	r0, [sp, #42]	; 0x2a
	bl	FUN_0600B570
_06018194:
	mov	r0, r4
	ldrh	r1, [sp, #46]	; 0x2e
	bl	FUN_0600F184
	ldrh	r0, [r8, #12]
	cmp	r0, #2
	bne	_06018224
	ldr	r9, [sp, #64]	; 0x40
	cmp	r9, #0
	beq	_0601820C
	add	r0, r9, #6
	bl	FUN_06009CB0
	mov	fp, r0
	add	r0, r9, #7
	bl	FUN_06009CB0
	add	r0, fp, r0, lsl #8
	mov	r0, r0, lsl #16
	mov	r0, r0, lsr #16
	mov	r1, #1
	bl	FUN_0600BEFC
	ldr	r0, [sp, #64]	; 0x40
	add	r0, r0, #8
	bl	FUN_06009CB0
	mov	r9, r0
	ldr	r0, [sp, #64]	; 0x40
	add	r0, r0, #9
	bl	FUN_06009CB0
	add	r1, r9, r0, lsl #8
	ldr	r0, _06018668	; =0x0380FFF0
	strh	r1, [r0]
	b	_06018224
_0601820C:
	ldr	r0, _0601866C	; =0x0000FFFF
	mov	r1, #1
	bl	FUN_0600BEFC
	mov	r1, #0
	ldr	r0, _06018668	; =0x0380FFF0
	strh	r1, [r0]
_06018224:
	ldr	r0, [sp, #60]	; 0x3c
	add	r0, r0, #3
	bl	FUN_06009CB0
	bl	FUN_0600B990
	ldr	r0, [sp, #60]	; 0x3c
	add	r0, r0, #2
	bl	FUN_06009CB0
	strh	r0, [r8, #118]	; 0x76
	ldrh	r0, [sl, #52]	; 0x34
	bl	FUN_0600B9DC
	mov	r0, #1
	strh	r0, [r8, #18]
	strh	r0, [r8, #26]
	ldrh	r0, [r8, #12]
	cmp	r0, #2
	moveq	r1, #3
	ldreq	r0, _06018670	; =0x04808048
	streqh	r1, [r0]
	ldr	r1, _06018674	; =0x04808038
	ldrh	r0, [r1]
	orr	r0, r0, #1
	strh	r0, [r1]
_0601827C:
	ldr	r0, [r7, #28]
	add	r0, r0, #8
	add	r1, sl, #30
	bl	FUN_0600AF4C
	mov	r0, #37	; 0x25
	strh	r0, [r7]
	mov	r0, #2
	mov	r1, #1
	bl	FUN_06009078
_060182A0:
	ldrh	r0, [r8, #12]
	cmp	r0, #2
	beq	_060182B8
	cmp	r0, #3
	beq	_06018374
	b	_06018620
_060182B8:
	ldr	r9, [sp, #64]	; 0x40
	cmp	r9, #0
	beq	_06018374
	add	r0, r9, #6
	bl	FUN_06009CB0
	mov	r7, r0
	add	r0, r9, #7
	bl	FUN_06009CB0
	add	r0, r7, r0, lsl #8
	mov	r0, r0, lsl #16
	mov	r0, r0, lsr #16
	mov	r1, #0
	bl	FUN_0600BEFC
	ldr	r0, [sp, #64]	; 0x40
	add	r0, r0, #8
	bl	FUN_06009CB0
	mov	r7, r0
	ldr	r0, [sp, #64]	; 0x40
	add	r0, r0, #9
	bl	FUN_06009CB0
	add	r1, r7, r0, lsl #8
	ldr	r0, _06018668	; =0x0380FFF0
	strh	r1, [r0]
	ldr	r0, [sp, #64]	; 0x40
	add	r0, r0, #1
	bl	FUN_06009CB0
	sub	r0, r0, #8
	strh	r0, [r8, #160]	; 0xa0
	ldrh	r2, [r8, #160]	; 0xa0
	cmp	r2, #0
	beq	_06018374
	ldr	r1, [sp, #64]	; 0x40
	ands	r0, r1, #1
	beq	_0601835C
	add	r0, r1, #9
	ldr	r1, [r8, #156]	; 0x9c
	add	r2, r2, #2
	bl	FUN_06000EA0
	mov	r0, #1
	strh	r0, [r8, #162]	; 0xa2
	b	_06018374
_0601835C:
	add	r0, r1, #10
	ldr	r1, [r8, #156]	; 0x9c
	add	r2, r2, #1
	bl	FUN_06000EA0
	mov	r0, #0
	strh	r0, [r8, #162]	; 0xa2
_06018374:
	mov	r0, #0
	strh	r0, [r8, #128]	; 0x80
	mov	r0, r4
	bl	FUN_0600F130
	add	r0, sl, #44	; 0x2c
	ldmia	r0, {r2, r3}
	add	r0, sp, #0
	stmia	r0, {r2, r3}
	ldrh	r0, [r8, #110]	; 0x6e
	mov	r7, r0, lsl #10
	mov	r4, #0
	ldr	r0, [sp]
	ldr	r1, [sp, #4]
	mov	r2, r7
	mov	r3, r4
	bl	FUN_06009EDC
	str	r0, [sp]
	str	r1, [sp, #4]
	mov	r2, #1
	adds	r3, r0, r2
	adc	r2, r1, #0
	str	r3, [sp]
	str	r2, [sp, #4]
	umull	r1, r0, r3, r7
	mla	r0, r3, r4, r0
	mla	r0, r2, r7, r0
	str	r1, [sp]
	str	r0, [sp, #4]
	add	r2, sp, #0
	ldrh	r1, [r2, #6]
	ldr	r0, _06018678	; =0x048080F6
	strh	r1, [r0]
	ldrh	r1, [r2, #4]
	ldr	r0, _0601867C	; =0x048080F4
	strh	r1, [r0]
	ldrh	r1, [r2, #2]
	ldr	r0, _06018680	; =0x048080F2
	strh	r1, [r0]
	ldrh	r0, [r2]
	orr	r1, r0, #1
	ldr	r0, _06018684	; =0x048080F0
	strh	r1, [r0]
	ldrh	r0, [r8, #12]
	cmp	r0, #2
	bne	_06018518
	ldrh	r0, [r8, #26]
	cmp	r0, #0
	beq	_06018518
	ldr	r1, [sp]
	ldr	r0, [sp, #4]
	subs	r1, r1, r7
	sbc	r0, r0, r4
	str	r1, [sp]
	str	r0, [sp, #4]
	bl	FUN_060001A4
	ldr	r7, _06018688	; =0x048080F8
	ldrh	r1, [r7]
	strh	r1, [sp, #8]
	ldr	r4, _0601868C	; =0x048080FA
	ldrh	r1, [r4]
	strh	r1, [sp, #10]
	ldr	r3, _06018690	; =0x048080FC
	ldrh	r1, [r3]
	strh	r1, [sp, #12]
	ldr	r2, _06018694	; =0x048080FE
	ldrh	r1, [r2]
	strh	r1, [sp, #14]
	ldrh	r1, [r7]
	strh	r1, [sp, #16]
	ldrh	r1, [r4]
	strh	r1, [sp, #18]
	ldrh	r1, [r3]
	strh	r1, [sp, #20]
	ldrh	r1, [r2]
	strh	r1, [sp, #22]
	bl	FUN_060001AC
	ldrh	r1, [sp, #8]
	ldrh	r0, [sp, #16]
	cmp	r1, r0
	bcs	_060184D8
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #12]
	ldr	r1, [sp]
	ldr	r0, [sp, #4]
	subs	r1, r3, r1
	sbc	r0, r2, r0
	mov	r1, r1, lsr #10
	orr	r1, r1, r0, lsl #22
	b	_060184F8
_060184D8:
	ldr	r3, [sp, #16]
	ldr	r2, [sp, #20]
	ldr	r1, [sp]
	ldr	r0, [sp, #4]
	subs	r1, r3, r1
	sbc	r0, r2, r0
	mov	r1, r1, lsr #10
	orr	r1, r1, r0, lsl #22
_060184F8:
	ldrh	r0, [r6, #32]
	cmp	r1, r0
	subcc	r1, r0, r1
	ldrcc	r0, _06018698	; =0x04808134
	strcch	r1, [r0]
	movcs	r1, #0
	ldrcs	r0, _06018698	; =0x04808134
	strcsh	r1, [r0]
_06018518:
	ldrh	r0, [r8, #8]
	cmp	r0, #64	; 0x40
	bne	_06018620
	ldr	r1, [sp, #60]	; 0x3c
	cmp	r1, #0
	beq	_06018620
	ldrh	r0, [r8, #14]
	cmp	r0, #1
	bne	_06018620
	add	r0, r1, #2
	bl	FUN_06009CB0
	ldrh	r1, [r8, #118]	; 0x76
	cmp	r1, r0
	strneh	r0, [r8, #118]	; 0x76
	mov	r1, #0
	strh	r1, [r8, #142]	; 0x8e
	cmp	r0, #0
	bne	_0601857C
	ldr	r0, [sp, #60]	; 0x3c
	add	r0, r0, #4
	bl	FUN_06009CB0
	ands	r0, r0, #1
	ldrneh	r0, [r8, #142]	; 0x8e
	orrne	r0, r0, #1
	strneh	r0, [r8, #142]	; 0x8e
_0601857C:
	ldr	r0, [sp, #60]	; 0x3c
	add	r0, r0, #4
	bl	FUN_06009CB0
	and	r7, r0, #254	; 0xfe
	mov	r4, r7, lsl #3
	ldr	r0, [sp, #60]	; 0x3c
	add	r0, r0, #1
	bl	FUN_06009CB0
	add	r0, r7, r0
	sub	r0, r0, #3
	mov	r1, r0, lsl #3
	ldrh	r0, [r8, #106]	; 0x6a
	cmp	r4, r0
	bhi	_060185F4
	cmp	r0, r1
	bhi	_060185F4
	sub	r4, r0, r4
	ldr	r0, [sp, #60]	; 0x3c
	add	r0, r0, #5
	add	r0, r0, r4, lsr #3
	bl	FUN_06009CB0
	mov	r2, #1
	and	r1, r4, #7
	mov	r1, r2, lsl r1
	ands	r0, r1, r0
	beq	_060185F4
	ldrh	r0, [r8, #142]	; 0x8e
	orr	r0, r0, #2
	strh	r0, [r8, #142]	; 0x8e
	bl	FUN_06014B5C
_060185F4:
	ldrh	r0, [r5, #32]
	cmp	r0, #0
	bne	_06018620
	ldrh	r0, [r5, #44]	; 0x2c
	cmp	r0, #0
	bne	_06018620
	ldrh	r0, [r8, #142]	; 0x8e
	cmp	r0, #0
	bne	_06018620
	mov	r0, #1
	bl	FUN_0600B3F4
_06018620:
	ldrh	r0, [r6, #30]
	mov	r0, r0, lsl #25
	movs	r0, r0, lsr #31
	beq	_06018638
	mov	r0, sl
	bl	FUN_0600FCB8
_06018638:
	ldr	r2, [sp, #52]	; 0x34
	cmp	r2, #0
	beq	_06018650
	ldrh	r0, [sp, #42]	; 0x2a
	mov	r1, sl
	bl	FUN_06018E5C
_06018650:
	add	sp, sp, #68	; 0x44
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
_0601865C:	.word	0x0380FFF4
_06018660:	.word	0x00000404
_06018664:	.word	0x0480810C
_06018668:	.word	0x0380FFF0
_0601866C:	.word	0x0000FFFF
_06018670:	.word	0x04808048
_06018674:	.word	0x04808038
_06018678:	.word	0x048080F6
_0601867C:	.word	0x048080F4
_06018680:	.word	0x048080F2
_06018684:	.word	0x048080F0
_06018688:	.word	0x048080F8
_0601868C:	.word	0x048080FA
_06018690:	.word	0x048080FC
_06018694:	.word	0x048080FE
_06018698:	.word	0x04808134

	arm_func_start FUN_0601869C
FUN_0601869C: ; 0x0601869C
	stmdb	sp!, {r4, r5, lr}
	sub	sp, sp, #4
	mov	r4, r0
	ldr	r0, _06018770	; =0x0380FFF4
	ldr	r0, [r0]
	add	r5, r0, #836	; 0x344
	add	r0, r0, #768	; 0x300
	ldrh	r0, [r0, #76]	; 0x4c
	cmp	r0, #64	; 0x40
	movne	r0, #1
	bne	_06018764
	add	r0, r4, #30
	add	r1, r5, #100	; 0x64
	bl	FUN_0600AB78
	cmp	r0, #0
	beq	_060186F0
	add	r0, r4, #36	; 0x24
	add	r1, r5, #130	; 0x82
	bl	FUN_0600AB78
	cmp	r0, #0
	bne	_060186F8
_060186F0:
	mov	r0, #1
	b	_06018764
_060186F8:
	ldrh	r0, [r4, #16]
	sub	r0, r0, #28
	strh	r0, [r4, #6]
	sub	r1, r4, #16
	ldr	r0, _06018774	; =0x00000185
	strh	r0, [r1, #12]
	mov	r0, #24
	strh	r0, [r1, #14]
	ldrh	r0, [r1, #24]
	ldr	r2, _06018778	; =0x04808094
	ldrh	r2, [r2]
	and	ip, r2, #32768	; 0x8000
	ldr	r4, _06018770	; =0x0380FFF4
	ldr	r2, [r4]
	add	r2, r2, #1024	; 0x400
	ldrh	r3, [r2, #226]	; 0xe2
	ldr	r2, _0601877C	; =0x04808098
	ldrh	r2, [r2]
	and	r2, r2, #32768	; 0x8000
	orr	r2, r3, r2, asr #4
	orr	r2, r2, ip, asr #3
	orr	r0, r0, r2
	strh	r0, [r1, #24]
	ldr	r0, [r4]
	add	r0, r0, #392	; 0x188
	bl	FUN_0600F8DC
	mov	r0, #0
_06018764:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, lr}
	bx	lr
_06018770:	.word	0x0380FFF4
_06018774:	.word	0x00000185
_06018778:	.word	0x04808094
_0601877C:	.word	0x04808098

	arm_func_start FUN_06018780
FUN_06018780: ; 0x06018780
	stmdb	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #4
	mov	r7, r0
	ldr	r0, _0601893C	; =0x0380FFF4
	ldr	r1, [r0]
	ldr	r0, _06018940	; =0x0000042C
	add	r6, r1, r0
	ldr	r0, [r6, #144]	; 0x90
	add	r5, r0, #16
	ldrh	r0, [r6, #60]	; 0x3c
	cmp	r0, #0
	beq	_06018930
	add	r0, r7, #24
	add	r1, r1, #936	; 0x3a8
	bl	FUN_0600AB78
	cmp	r0, #0
	beq	_06018930
	ldrh	r0, [r7, #16]
	sub	r1, r0, #24
	ldrh	r0, [r5, #6]
	sub	r0, r0, #8
	cmp	r1, r0
	bgt	_06018930
	add	r0, r7, #30
	bl	FUN_0600F608
	mov	r4, r0
	cmp	r4, #255	; 0xff
	beq	_06018804
	cmp	r4, #0
	beq	_06018840
	bl	FUN_0600EFF0
	cmp	r0, #64	; 0x40
	beq	_06018840
_06018804:
	add	r0, r7, #30
	mov	r1, #192	; 0xc0
	bl	FUN_06013D80
	cmp	r0, #0
	bne	_06018930
	add	r0, r7, #30
	mov	r1, #7
	mov	r2, #0
	bl	FUN_06013E9C
	cmp	r0, #0
	beq	_06018930
	mov	r1, #2
	strh	r1, [r0]
	bl	FUN_06014C6C
	b	_06018930
_06018840:
	cmp	r4, #0
	beq	_06018930
	mov	r0, r4, lsl #16
	mov	r0, r0, lsr #16
	ldrh	r1, [r7, #20]
	mov	r1, r1, lsl #19
	mov	r1, r1, lsr #31
	bl	FUN_0600F218
	mov	r0, r4
	bl	FUN_0600F130
	mov	r0, r4
	bl	FUN_0600EF18
	mov	r1, #1
	mov	r0, r1, lsl r0
	mov	r0, r0, lsl #16
	mov	r2, r0, lsr #16
	ldrh	r1, [r6, #154]	; 0x9a
	ands	r0, r2, r1
	bne	_06018930
	ldrh	r0, [r6, #152]	; 0x98
	ands	r0, r2, r0
	beq	_06018930
	orr	r0, r1, r2
	strh	r0, [r6, #154]	; 0x9a
	ldrh	r1, [r5]
	mvn	r0, r2
	and	r0, r1, r0
	strh	r0, [r5]
	add	r4, r5, #10
	mov	r0, r2, lsl #15
	mov	r1, r0, lsr #16
	b	_060188D8
_060188C0:
	ldrh	r0, [r6, #152]	; 0x98
	ands	r0, r1, r0
	ldrneh	r0, [r5, #6]
	addne	r4, r4, r0
	mov	r0, r1, lsl #15
	mov	r1, r0, lsr #16
_060188D8:
	cmp	r1, #1
	bne	_060188C0
	ldrh	r0, [r7, #16]
	sub	r0, r0, #24
	strh	r0, [r4]
	add	r0, r4, #3
	ldrh	r1, [r7, #18]
	and	r1, r1, #255	; 0xff
	and	r1, r1, #255	; 0xff
	bl	FUN_06009CD0
	add	r0, r4, #2
	ldrh	r1, [r7, #14]
	and	r1, r1, #255	; 0xff
	and	r1, r1, #255	; 0xff
	bl	FUN_06009CD0
	ldrh	r2, [r4]
	cmp	r2, #0
	beq	_06018930
	add	r0, r7, #44	; 0x2c
	add	r1, r4, #8
	add	r2, r2, #1
	bl	FUN_06000EA0
_06018930:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, lr}
	bx	lr
_0601893C:	.word	0x0380FFF4
_06018940:	.word	0x0000042C

	arm_func_start FUN_06018944
FUN_06018944: ; 0x06018944
	stmdb	sp!, {r4, r5, r6, lr}
	mov	r6, r0
	ldr	r0, _06018AC0	; =0x0380FFF4
	ldr	r1, [r0]
	add	r5, r1, #836	; 0x344
	ldr	r0, _06018AC4	; =0x000004DC
	add	r4, r1, r0
	ldrh	r0, [r5, #8]
	cmp	r0, #64	; 0x40
	movne	r0, #1
	bne	_06018AB8
	add	r0, r6, #30
	add	r1, r5, #100	; 0x64
	bl	FUN_0600AB78
	cmp	r0, #0
	beq	_06018998
	add	r0, r6, #36	; 0x24
	add	r1, r5, #130	; 0x82
	bl	FUN_0600AB78
	cmp	r0, #0
	bne	_060189A0
_06018998:
	mov	r0, #1
	b	_06018AB8
_060189A0:
	mov	r1, #1
	ldrh	r0, [r5, #106]	; 0x6a
	mov	r0, r1, lsl r0
	mov	r0, r0, lsl #16
	mov	r1, r0, lsr #16
	ldrh	r0, [r6, #46]	; 0x2e
	ands	r0, r1, r0
	moveq	r0, #0
	streqh	r0, [r4, #6]
	movne	r0, #8192	; 0x2000
	strneh	r0, [r4, #6]
	ldr	r0, _06018AC8	; =0x04808098
	ldrh	r1, [r0]
	ands	r0, r1, #32768	; 0x8000
	beq	_06018A04
	ldr	r0, _06018ACC	; =0x00007FFF
	and	r0, r1, r0
	mov	r0, r0, lsl #1
	add	r0, r0, #75497472	; 0x4800000
	add	r0, r0, #16384	; 0x4000
	ldrh	r0, [r0, #4]
	cmp	r0, #0
	ldrneh	r0, [r4, #6]
	orrne	r0, r0, #16384	; 0x4000
	strneh	r0, [r4, #6]
_06018A04:
	ldrh	r0, [r5, #136]	; 0x88
	bl	FUN_0600F130
	ldrh	r0, [r6, #16]
	sub	r0, r0, #28
	strh	r0, [r6, #6]
	sub	r1, r6, #16
	ldr	r0, _06018AD0	; =0x00000182
	strh	r0, [r1, #12]
	ldrh	r0, [r6, #6]
	add	r0, r0, #49	; 0x31
	mov	r0, r0, lsr #1
	strh	r0, [r1, #14]
	ldrh	r3, [r1, #62]	; 0x3e
	mov	r0, #0
	b	_06018A50
_06018A40:
	ands	r2, r3, #1
	addne	r0, r0, #1
	mov	r2, r3, lsl #15
	mov	r3, r2, lsr #16
_06018A50:
	cmp	r3, #0
	bne	_06018A40
	ldrh	r6, [r1, #24]
	ldr	r2, _06018AD4	; =0x04808094
	ldrh	r2, [r2]
	and	r5, r2, #32768	; 0x8000
	ldrh	r3, [r4, #6]
	ldr	r2, _06018AC8	; =0x04808098
	ldrh	r2, [r2]
	and	r2, r2, #32768	; 0x8000
	orr	r2, r3, r2, asr #4
	orr	r2, r2, r5, asr #3
	orr	r2, r6, r2
	strh	r2, [r1, #24]
	ldrh	r3, [r1, #28]
	ldrh	r2, [r1, #60]	; 0x3c
	add	r2, r2, #10
	mul	r2, r0, r2
	add	r0, r2, #252	; 0xfc
	add	r0, r3, r0, lsr #4
	strh	r0, [r1, #26]
	ldr	r0, _06018AC0	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #392	; 0x188
	bl	FUN_0600F8DC
	mov	r0, #0
_06018AB8:
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr
_06018AC0:	.word	0x0380FFF4
_06018AC4:	.word	0x000004DC
_06018AC8:	.word	0x04808098
_06018ACC:	.word	0x00007FFF
_06018AD0:	.word	0x00000182
_06018AD4:	.word	0x04808094

	arm_func_start FUN_06018AD8
FUN_06018AD8: ; 0x06018AD8
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	r0, _06018DE0	; =0x0380FFF4
	ldr	r1, [r0]
	add	r8, r1, #836	; 0x344
	add	r7, r1, #380	; 0x17c
	ldr	r0, _06018DE4	; =0x0000053C
	add	r6, r1, r0
	ldr	sl, [r7, #72]	; 0x48
	mvn	r0, #0
	cmp	sl, r0
	beq	_06018DD8
	ldrh	r0, [r8, #8]
	cmp	r0, #64	; 0x40
	beq	_06018B20
	add	r0, r7, #72	; 0x48
	mov	r1, sl
	bl	FUN_060096A0
	b	_06018DD8
_06018B20:
	add	r9, sl, #16
	ldrh	r0, [r9, #20]
	mov	r0, r0, lsl #23
	movs	r0, r0, lsr #31
	beq	_06018B58
	ldrh	r0, [r9, #36]	; 0x24
	ands	r0, r0, #1
	ldrne	r0, [r6, #44]	; 0x2c
	addne	r0, r0, #1
	strne	r0, [r6, #44]	; 0x2c
	ldreq	r0, [r6, #40]	; 0x28
	addeq	r0, r0, #1
	streq	r0, [r6, #40]	; 0x28
	b	_06018B78
_06018B58:
	ldrh	r0, [r9, #24]
	ands	r0, r0, #1
	ldrne	r0, [r6, #44]	; 0x2c
	addne	r0, r0, #1
	strne	r0, [r6, #44]	; 0x2c
	ldreq	r0, [r6, #40]	; 0x28
	addeq	r0, r0, #1
	streq	r0, [r6, #40]	; 0x28
_06018B78:
	ldrh	r0, [r9, #8]
	and	r0, r0, #240	; 0xf0
	mov	r1, #16
	bl	FUN_06001840
	ldr	r1, [r6, #36]	; 0x24
	sub	r0, r0, #1
	add	r0, r1, r0
	str	r0, [r6, #36]	; 0x24
	mov	r4, #1
	ldrh	r0, [r8, #12]
	cmp	r0, #1
	beq	_06018BBC
	cmp	r0, #2
	beq	_06018C9C
	cmp	r0, #3
	beq	_06018C9C
	b	_06018D44
_06018BBC:
	ldrh	r0, [r9, #20]
	ands	r0, r0, #1
	bne	_06018D44
	add	r0, r9, #30
	bl	FUN_0600F608
	mov	r5, r0
	cmp	r5, #255	; 0xff
	beq	_06018BE8
	bl	FUN_0600EFF0
	cmp	r0, #64	; 0x40
	beq	_06018C50
_06018BE8:
	mov	r0, r5
	bl	FUN_0600EFF0
	cmp	r0, #48	; 0x30
	bne	_06018C1C
	add	r0, r9, #30
	mov	r1, #160	; 0xa0
	bl	FUN_06013D80
	cmp	r0, #0
	bne	_06018D44
	add	r0, r9, #30
	mov	r1, #7
	bl	FUN_060145BC
	b	_06018C40
_06018C1C:
	add	r0, r9, #30
	mov	r1, #192	; 0xc0
	bl	FUN_06013D80
	cmp	r0, #0
	bne	_06018D44
	add	r0, r9, #30
	mov	r1, #7
	mov	r2, #1
	bl	FUN_06013E9C
_06018C40:
	cmp	r0, #0
	beq	_06018D44
	bl	FUN_06014C6C
	b	_06018D44
_06018C50:
	mov	r0, r5, lsl #16
	mov	r0, r0, lsr #16
	ldrh	r1, [r9, #20]
	mov	r1, r1, lsl #19
	mov	r1, r1, lsr #31
	bl	FUN_0600F218
	mov	r0, r5
	bl	FUN_0600EF5C
	ldrh	r1, [r9, #42]	; 0x2a
	cmp	r1, r0
	ldreq	r0, [r6, #60]	; 0x3c
	addeq	r0, r0, #1
	streq	r0, [r6, #60]	; 0x3c
	beq	_06018D44
	add	r0, r9, #24
	add	r1, r9, #36	; 0x24
	bl	FUN_0600AF4C
	mov	r4, #0
	b	_06018D44
_06018C9C:
	ldrh	r2, [r9, #20]
	ands	r1, r2, #1
	bne	_06018D44
	ldrh	r1, [r8, #14]
	cmp	r1, #0
	beq	_06018D10
	ands	r1, r2, #8192	; 0x2000
	bne	_06018D10
	ldrh	r1, [r9, #24]
	ands	r1, r1, #1
	ldrneh	r0, [r8, #142]	; 0x8e
	bicne	r0, r0, #1
	strneh	r0, [r8, #142]	; 0x8e
	bne	_06018CE4
	cmp	r0, #3
	ldrneh	r0, [r8, #142]	; 0x8e
	bicne	r0, r0, #2
	strneh	r0, [r8, #142]	; 0x8e
_06018CE4:
	ldrh	r0, [r8, #142]	; 0x8e
	cmp	r0, #0
	bne	_06018D10
	ldrh	r0, [r7, #32]
	cmp	r0, #0
	bne	_06018D10
	ldrh	r0, [r7, #44]	; 0x2c
	cmp	r0, #0
	bne	_06018D10
	mov	r0, #1
	bl	FUN_0600B3F4
_06018D10:
	ldrh	r5, [r8, #136]	; 0x88
	mov	r0, r5
	bl	FUN_0600EF5C
	ldrh	r1, [r9, #42]	; 0x2a
	cmp	r1, r0
	ldreq	r0, [r6, #60]	; 0x3c
	addeq	r0, r0, #1
	streq	r0, [r6, #60]	; 0x3c
	beq	_06018D44
	add	r0, r9, #30
	add	r1, r9, #36	; 0x24
	bl	FUN_0600AF4C
	mov	r4, #0
_06018D44:
	cmp	r4, #0
	bne	_06018DB4
	mov	r0, r5, lsl #16
	mov	r0, r0, lsr #16
	strh	r0, [r9, #2]
	ldrh	r1, [r9, #18]
	and	r1, r1, #255	; 0xff
	mov	r1, r1, lsl #16
	mov	r1, r1, lsr #16
	bl	FUN_0600F27C
	mov	r0, r5
	ldrh	r1, [r9, #42]	; 0x2a
	bl	FUN_0600F16C
	mov	r0, r5
	bl	FUN_0600F130
	ldrh	r0, [r9, #16]
	sub	r0, r0, #24
	strh	r0, [r9, #6]
	mov	r0, #384	; 0x180
	strh	r0, [sl, #12]
	ldrh	r0, [r9, #6]
	add	r0, r0, #45	; 0x2d
	mov	r0, r0, lsr #1
	strh	r0, [sl, #14]
	add	r0, r7, #72	; 0x48
	mov	r1, sl
	bl	FUN_0600F8DC
	b	_06018DC0
_06018DB4:
	add	r0, r7, #72	; 0x48
	mov	r1, sl
	bl	FUN_060096A0
_06018DC0:
	ldrh	r0, [r7, #80]	; 0x50
	cmp	r0, #0
	beq	_06018DD8
	mov	r0, #2
	mov	r1, #6
	bl	FUN_06009078
_06018DD8:
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	bx	lr
_06018DE0:	.word	0x0380FFF4
_06018DE4:	.word	0x0000053C

	arm_func_start FUN_06018DE8
FUN_06018DE8: ; 0x06018DE8
	ldr	r0, _06018E34	; =0x0380FFF4
	ldr	r0, [r0]
	add	ip, r0, #572	; 0x23c
	mov	r3, #0
	mov	r0, r3
	add	r2, ip, #48	; 0x30
_06018E00:
	ldrh	r1, [ip, #48]	; 0x30
	cmp	r1, #0
	beq	_06018E24
	ldrh	r1, [r2]
	sub	r1, r1, #1
	strh	r1, [r2]
	ldrh	r1, [ip, #48]	; 0x30
	cmp	r1, #0
	streqh	r0, [ip]
_06018E24:
	add	r3, r3, #1
	cmp	r3, #4
	bcc	_06018E00
	bx	lr
_06018E34:	.word	0x0380FFF4

	arm_func_start FUN_06018E38
FUN_06018E38: ; 0x06018E38
	mov	r0, #0
	ldr	r1, _06018E54	; =0x0380FFF4
	ldr	r1, [r1]
	add	r1, r1, #572	; 0x23c
	mov	r2, #200	; 0xc8
	ldr	ip, _06018E58	; =FUN_037FB300
	bx	ip
_06018E54:	.word	0x0380FFF4
_06018E58:	.word	FUN_037FB300

	arm_func_start FUN_06018E5C
FUN_06018E5C: ; 0x06018E5C
	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #4
	mov	fp, r0
	mov	sl, r1
	mov	r9, r2
	ldr	r0, _06018FAC	; =0x0380FFF4
	ldr	r0, [r0]
	add	r8, r0, #572	; 0x23c
	add	r0, r9, #1
	bl	FUN_06009CB0
	cmp	r0, #32
	bhi	_06018FA0
	mov	r6, #4
	mov	r5, r6
	mov	r4, #1024	; 0x400
	mov	r7, #0
	add	r0, sl, #36	; 0x24
	str	r0, [sp]
	b	_06018EE8
_06018EA8:
	ldrh	r0, [r8]
	cmp	r0, #0
	beq	_06018EDC
	add	r0, r8, #6
	ldr	r1, [sp]
	bl	FUN_0600AB78
	cmp	r0, #0
	bne	_06018F08
	ldrh	r0, [r8, #48]	; 0x30
	cmp	r0, r4
	movcc	r4, r0
	movcc	r5, r7
	b	_06018EE0
_06018EDC:
	mov	r6, r7
_06018EE0:
	add	r7, r7, #1
	add	r8, r8, #50	; 0x32
_06018EE8:
	cmp	r7, #4
	bcc	_06018EA8
	cmp	r6, #4
	movne	r7, r6
	bne	_06018F08
	cmp	r5, #4
	movne	r7, r5
	beq	_06018FA0
_06018F08:
	ldr	r0, _06018FAC	; =0x0380FFF4
	ldr	r0, [r0]
	add	r5, r0, #572	; 0x23c
	mov	r2, #50	; 0x32
	mul	r4, r7, r2
	add	r6, r5, r4
	mov	r0, #0
	mov	r1, r6
	bl	FUN_0600055C
	mov	r0, #1024	; 0x400
	strh	r0, [r6, #48]	; 0x30
	ldrh	r0, [sl, #18]
	and	r0, r0, #255	; 0xff
	strh	r0, [r5, r4]
	strh	fp, [r6, #2]
	add	r0, r6, #6
	add	r1, sl, #36	; 0x24
	bl	FUN_0600AF4C
	add	r0, r9, #1
	bl	FUN_06009CB0
	strh	r0, [r6, #12]
	mov	r7, #0
	add	r5, r9, #2
	add	r4, r6, #14
	b	_06018F84
_06018F6C:
	add	r0, r5, r7
	bl	FUN_06009CB0
	mov	r1, r0
	add	r0, r4, r7
	bl	FUN_06009CD0
	add	r7, r7, #1
_06018F84:
	ldrh	r0, [r6, #12]
	cmp	r7, r0
	bcc	_06018F6C
	ldrh	r0, [sl, #52]	; 0x34
	strh	r0, [r6, #46]	; 0x2e
	ldrh	r0, [sl, #54]	; 0x36
	strh	r0, [r6, #4]
_06018FA0:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
_06018FAC:	.word	0x0380FFF4

	arm_func_start FUN_06018FB0
FUN_06018FB0: ; 0x06018FB0
	stmfd	sp!, {lr}
	sub	sp, sp, #4
	ldr	r0, _0601909C	; =0x0380FFF4
	ldr	r0, [r0]
	ldr	r0, [r0, #788]	; 0x314
	bl	FUN_060190A4
	bl	FUN_0601916C
	mov	r0, #0
	str	r0, [sp]
	mov	r0, #44	; 0x2c
	mov	r1, #2
	add	r2, sp, #0
	bl	FUN_060190AC
	ldr	r0, _0601909C	; =0x0380FFF4
	ldr	r0, [r0]
	ldr	r0, [r0, #788]	; 0x314
	bl	FUN_060190B4
	ldr	r1, [sp]
	cmp	r1, #164	; 0xa4
	bcc	_0601900C
	ldr	r0, _060190A0	; =0x000001D6
	cmp	r1, r0
	bls	_06019014
_0601900C:
	mov	r0, #0
	b	_06019090
_06019014:
	add	r1, r1, #2
	str	r1, [sp]
	ldr	r0, _0601909C	; =0x0380FFF4
	ldr	r0, [r0]
	add	r0, r0, #392	; 0x188
	bl	FUN_06009724
	ldr	r2, _0601909C	; =0x0380FFF4
	ldr	r1, [r2]
	str	r0, [r1, #792]	; 0x318
	ldr	r1, [r2]
	ldr	r0, [r1, #792]	; 0x318
	cmp	r0, #0
	moveq	r0, #0
	beq	_06019090
	add	r0, r0, #12
	str	r0, [r1, #792]	; 0x318
	ldr	r0, [r2]
	ldr	r0, [r0, #788]	; 0x314
	bl	FUN_060190A4
	bl	FUN_0601916C
	mov	r0, #42	; 0x2a
	ldr	r1, [sp]
	ldr	r2, _0601909C	; =0x0380FFF4
	ldr	r2, [r2]
	ldr	r2, [r2, #792]	; 0x318
	bl	FUN_060190AC
	ldr	r0, _0601909C	; =0x0380FFF4
	ldr	r0, [r0]
	ldr	r0, [r0, #788]	; 0x314
	bl	FUN_060190B4
	mov	r0, #1
_06019090:
	add	sp, sp, #4
	ldmfd	sp!, {lr}
	bx	lr
_0601909C:	.word	0x0380FFF4
_060190A0:	.word	0x000001D6

	arm_func_start FUN_060190A4
FUN_060190A4: ; 0x060190A4
	ldr	pc, _060190A8	; =FUN_038014E0
_060190A8:	.word	FUN_038014E0

	arm_func_start FUN_060190AC
FUN_060190AC: ; 0x060190AC
	ldr	pc, _060190B0	; =FUN_03804E50
_060190B0:	.word	FUN_03804E50

	arm_func_start FUN_060190B4
FUN_060190B4: ; 0x060190B4
	ldr	pc, _060190B8	; =FUN_03801474
_060190B8:	.word	FUN_03801474

	arm_func_start FUN_060190BC
FUN_060190BC: ; 0x060190BC
	stmdb	sp!, {r4, r5, r6, lr}

	arm_func_start FUN_060190C0
FUN_060190C0: ; 0x060190C0
	mov	r6, r0
	mov	r5, r1
	mov	r4, r2
	ldr	r0, _06019108	; =0x0380FFF4
	ldr	r0, [r0]
	ldr	r0, [r0, #788]	; 0x314
	bl	FUN_060190A4
	bl	FUN_0601916C
	mov	r0, r6
	mov	r1, r5
	mov	r2, r4
	bl	FUN_060190AC
	ldr	r0, _06019108	; =0x0380FFF4
	ldr	r0, [r0]
	ldr	r0, [r0, #788]	; 0x314
	bl	FUN_060190B4
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr
_06019108:	.word	0x0380FFF4

	arm_func_start FUN_0601910C
FUN_0601910C: ; 0x0601910C
	stmdb	sp!, {r4, r5, r6, lr}
	mov	r6, r1
	mov	r5, r2
	ldr	r1, _06019168	; =0x0380FFF4
	ldr	r1, [r1]
	ldr	r1, [r1, #792]	; 0x318
	cmp	r1, #0
	beq	_06019160
	add	r0, r1, r0
	sub	r4, r0, #42	; 0x2a
	b	_06019158
_06019138:
	mov	r0, r4
	bl	FUN_06009CB0
	add	r4, r4, #1
	mov	r1, r0
	mov	r0, r5
	bl	FUN_06009CD0
	add	r5, r5, #1
	sub	r6, r6, #1
_06019158:
	cmp	r6, #0
	bne	_06019138
_06019160:
	ldmia	sp!, {r4, r5, r6, lr}
	bx	lr
_06019168:	.word	0x0380FFF4

	arm_func_start FUN_0601916C
FUN_0601916C: ; 0x0601916C
	stmdb	sp!, {r4, lr}
	sub	sp, sp, #8
	add	r4, sp, #0
_06019178:
	mov	r0, r4
	bl	FUN_060191AC
	ldr	r0, [sp]
	ands	r0, r0, #32
	beq	_06019194
	bl	FUN_060191B4
	b	_06019178
_06019194:
	ldr	r0, [sp]
	ands	r0, r0, #1
	bne	_06019178
	add	sp, sp, #8
	ldmia	sp!, {r4, lr}
	bx	lr

	arm_func_start FUN_060191AC
FUN_060191AC: ; 0x060191AC
	ldr	pc, _060191B0	; =FUN_03804F70
_060191B0:	.word	FUN_03804F70

	arm_func_start FUN_060191B4
FUN_060191B4: ; 0x060191B4
	ldr	pc, _060191B8	; =FUN_03804798
_060191B8:	.word	FUN_03804798

	arm_func_start FUN_060191BC
FUN_060191BC: ; 0x060191BC
	stmdb	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #4
	mov	r5, r0
	ldr	r0, _06019260	; =0x0380FFF4
	ldr	r0, [r0]
	ldr	r1, [r0, #792]	; 0x318
	ldrh	r6, [r1, #2]
	cmp	r6, #164	; 0xa4
	bcc	_060191EC
	ldr	r0, _06019264	; =0x000001D6
	cmp	r6, r0
	bls	_060191F4
_060191EC:
	mov	r0, #2
	b	_06019254
_060191F4:
	add	r7, r1, #2
	mov	r4, #0
	b	_06019224
_06019200:
	mov	r0, r7
	bl	FUN_06009CB0
	add	r7, r7, #1
	and	r0, r0, #255	; 0xff
	mov	r1, r4, lsl #16
	mov	r1, r1, lsr #16
	bl	FUN_06009BBC
	mov	r4, r0
	sub	r6, r6, #1
_06019224:
	cmp	r6, #0
	bne	_06019200
	ldr	r0, _06019260	; =0x0380FFF4
	ldr	r0, [r0]
	ldr	r0, [r0, #792]	; 0x318
	ldrh	r1, [r0]
	cmp	r5, #0
	orrne	r0, r1, r4, lsl #16
	strne	r0, [r5]
	cmp	r4, r1
	movne	r0, #1
	moveq	r0, #0
_06019254:
	add	sp, sp, #4
	ldmia	sp!, {r4, r5, r6, r7, lr}
	bx	lr
_06019260:	.word	0x0380FFF4
_06019264:	.word	0x000001D6
_06019268:
	.word	FUN_06002F6C

_0601926C: ; 0x0601926C
	.word	FUN_0600305C
	.word	FUN_060034A4
	.word	FUN_06008280
	.word	FUN_060082E0
	.word	FUN_06008578
	.word	FUN_06008620
	.word	FUN_06003578
	.word	FUN_06003664
	.word	FUN_06003924
	.word	FUN_060040F4
	.word	FUN_060044CC
	.word	FUN_060045DC
	.word	FUN_06005328
	.word	FUN_06005380
	.word	FUN_06005644
	.word	FUN_060057C8
	.word	FUN_060058E8
	.word	FUN_06005974
	.word	FUN_06005AA8
	.word	FUN_06005C68
	.word	FUN_06002184
	.word	FUN_06002184
	.word	FUN_06002184
	.word	FUN_06005D1C
	.word	FUN_06005E4C
	.word	FUN_06005EAC
	.word	FUN_06005ED8
	.word	FUN_06006A48
	.word	FUN_06005F40
	.word	FUN_0600609C
	.word	FUN_0600628C
	.word	FUN_06006318
	.word	FUN_06007FE0
	.word	FUN_06008074
	.word	FUN_060089DC
	.word	FUN_06008A74
	.word	FUN_06008AD4
	.word	FUN_06003BBC
	.word	FUN_06005B84
	.word	FUN_06008AE8
	.word	FUN_06008C6C
	.word	FUN_06008C98
	.word	FUN_06006A0C
	.word	FUN_060069DC
	.word	FUN_060069A0
_06019320:
	.word	FUN_060109D8
	.word	FUN_060108CC
	.word	FUN_060107A4
	.word	FUN_0601069C
	.word	FUN_0601059C
	.word	FUN_060102D0
	.word	FUN_06018AD8
	.word	FUN_06016764
	.word	FUN_0600E8E8
	.word	FUN_0601654C
	.word	FUN_0600EB8C
	.word	FUN_0600F974
	.word	FUN_06008FAC
	.word	FUN_06010280
	.word	FUN_0600E6E0
	.word	FUN_0600E308
	.word	FUN_0600E21C
	.word	FUN_0601603C
	.word	FUN_06018DE8
	.word	FUN_0600F874
	.word	FUN_0600E158
	.word	FUN_060098C4
	.word	FUN_06009820
	.word	FUN_060097CC
_06019380:
	.word	0x00030003
_06019384:
	.word	0xFFFFFFFF
	.word	0x0000FFFF
_0601938C:
	.word	0x00BF0903
	.word	0x00001000
_06019394:
	.word	0x00000000
	.word	0x00000000
_0601939C:
	.word	0x00BF0903
	.word	0x00000000
_060193A4:
	.word	0x00040002
	.word	0x000C000B
	.word	0x00160012
	.word	0x00240018
	.word	0x00480030
	.word	0x006C0060
	.word	0x00000000
	.word	0x00000000
_060193C4:
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
_060193E4:
	.word	0xCC010000
	.word	0x1400D801
	.word	0x3C00F001
	.word	0xE4012800
	.word	0x6C00A001
	.word	0xB4017800
	.word	0x9C015000
	.word	0x44008801
_06019404:
	.word	0x01480146
	.word	0x014C014A
	.word	0x01220120
	.word	0x01440154
	.word	0x01320132
	.word	0x01420140
	.word	0x01240038
	.word	0x01500128
_06019424:
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
	.word	0x00000000
_06019474:
	.word	0x00000004
	.word	0x00000008
	.word	0x0000000A
	.word	0x00000012
	.word	0xFFFF0010
	.word	0x00000254
	.word	0xFFFF00B4
	.word	0x00000080
	.word	0x0001008E
	.word	0x00000088
	.word	0x0000002A
	.word	0x00000028
	.word	0x000000E8
	.word	0x000000EA
	.word	0x000100EE
	.word	0x3F0300EC
	.word	0x000101A2
	.word	0x000001A0
	.word	0x08000110
	.word	0x000100BC
	.word	0x000300D4
	.word	0x000400D8
	.word	0x060200DA
	.word	0x00000076
	.word	0x01460130
_060194D8:
	.word	0x000000FF
	.word	0x000100FF
	.word	0x00FF00FF
	.word	0x00FF00FF
	.word	0x00FF00FF
	.word	0x00030002
	.word	0x00FF00FF
	.word	0x00FF00FF
	.word	0x000400FF
	.word	0x00FF00FF
	.word	0x000500FF
	.word	0x000600FF
	.word	0x00FF00FF
	.word	0x00FF00FF
	.word	0x00FF00FF
	.word	0x00FF00FF
	.word	0x00FF00FF
	.word	0x000700FF
	.word	0x00FF00FF
	.word	0x00FF00FF
	.word	0x00FF00FF
	.word	0x00FF00FF
	.word	0x00FF00FF
	.word	0x000800FF
	.word	0x00FF00FF
	.word	0x00FF00FF
	.word	0x00FF00FF
	.word	0x00FF00FF
	.word	0x00FF00FF
	.word	0x00FF00FF
	.word	0x00FF00FF
	.word	0x00FF00FF
	.word	0x00FF00FF
	.word	0x00FF00FF
	.word	0x00FF00FF
	.word	0x000900FF
	.word	0x00FF00FF
	.word	0x00FF00FF
	.word	0x00FF00FF
	.word	0x00FF00FF
	.word	0x00FF00FF
	.word	0x00FF00FF
	.word	0x00FF00FF
	.word	0x00FF00FF
	.word	0x00FF00FF
	.word	0x00FF00FF
	.word	0x00FF00FF
	.word	0x000A00FF
	.word	0x00FF00FF
	.word	0x00FF00FF
	.word	0x00FF00FF
	.word	0x00FF00FF
	.word	0x00FF00FF
	.word	0x000B00FF
	.word	0x00FF00FF
	.word	0x00FF00FF
	.word	0x00FF00FF
	.word	0x00FF00FF
	.word	0x00FF00FF
	.word	0x00FF00FF
_060195C8:
	.word	0x5A5AFFFF
	.word	0x0000A5A5
_060195D0:
	.word	0x00040002
	.word	0x00060005
	.word	0x001C0007
	.word	0x001E001D
	.word	0x0020001F
	.word	0x00260021
	.word	0x002C0029
	.word	0x002E002D
	.word	0x0030002F
	.word	0x00340033
	.word	0x00360035
	.word	0x00650037
	.word	0x00000000
_06019604:
	.word	0x00090000
	.word	0x000B000A
	.word	0x000D000C
	.word	0x000F000E
	.word	0x00110010
	.word	0x00140012
	.word	0x00160015
	.word	0x00180017
	.word	0x001A0019
	.word	0x004D0027
	.word	0x005E005D
	.word	0x0060005F
	.word	0x00640061
	.word	0x00000066
_0601963C:
	.word	0x003F0006
	.word	0xFFFF0018
	.word	0xFFFF001A
	.word	0xFFFF001C
	.word	0xFFFF0020
	.word	0xFFFF0022
	.word	0xFFFF0024
	.word	0x07FF002A
	.word	0xFFFF0050
	.word	0xFFFF0052
	.word	0x0FFE0056
	.word	0x1FFE0058
	.word	0x0FFE005A
	.word	0x0FFF005C
	.word	0x1FFE0062
	.word	0x0FFF0064
	.word	0x1FFE0068
	.word	0x0FFF006C
	.word	0x1FFE0074
	.word	0xFFFF0122
	.word	0xFFFF0124
	.word	0xFFFF0128
	.word	0x0FFF0130
	.word	0x8FFF0132
	.word	0xFFFF0134
	.word	0xFFFF0140
	.word	0xFFFF0142
_060196A8:
	.word	0x00020018
	.word	FUN_06013558
	.word	0x00010004
	.word	FUN_060133B4
	.word	0x0001000A
	.word	FUN_06012EBC
	.word	0x0001000C
	.word	FUN_06012E58
	.word	0x00010001
	.word	FUN_06012E0C
_060196D0:
	.word	0x00040000
	.word	FUN_060118F8
	.word	0x00120000
	.word	FUN_060118AC
	.word	0x00020000
	.word	FUN_06011884
	.word	0x00020000
	.word	FUN_0601185C
	.word	0x00020000
	.word	FUN_06011834
	.word	0x00010000
	.word	FUN_06011750
_06019700:
	.word	0x00010003
	.word	FUN_06011FC8
	.word	0x00010011
	.word	FUN_06011FA8
	.word	0x00010001
	.word	FUN_06011F64
	.word	0x00010001
	.word	FUN_06011F20
	.word	0x00010001
	.word	FUN_06011ED4
	.word	0x00010000
	.word	FUN_06011E64
_06019730:
	.word	0x00010001
	.word	FUN_06011710
	.word	0x00010003
	.word	FUN_06011664
	.word	0x0023001F
	.word	FUN_06011518
	.word	0x00050022
	.word	FUN_06011358
	.word	0x00060005
	.word	FUN_0601127C
	.word	0x00040004
	.word	FUN_06011130
	.word	0x00030005
	.word	FUN_06011048
	.word	0x00030005
	.word	FUN_06010F78
	.word	0x00010004
	.word	FUN_06010E60
	.word	0x00010017
	.word	FUN_06010CBC
	.word	0x0012000C
	.word	FUN_06010BD4
_06019788:
	.word	0x00010000
	.word	FUN_0600F96C
	.word	0x00010000
	.word	FUN_06012D88
	.word	0x00010000
	.word	FUN_06012D24
	.word	0x00010000
	.word	FUN_06012CC4
	.word	0x00010000
	.word	FUN_06012C80
	.word	0x00010000
	.word	FUN_06012C3C
	.word	0x00090000
	.word	FUN_06012B90
	.word	0x005C0000
	.word	FUN_06012B28
	.word	0x00020000
	.word	FUN_06012B00
	.word	0x00010004
	.word	FUN_0601288C
	.word	0x00010002
	.word	FUN_060125EC
_060197E0:
	.word	0x00210000
	.word	FUN_06011D2C
	.word	0x00040000
	.word	FUN_06011CF4
	.word	0x00020000
	.word	FUN_06011CCC
	.word	0x00030000
	.word	FUN_06011C94
	.word	0x00020000
	.word	FUN_06011C6C
	.word	0x00020000
	.word	FUN_06011C44
	.word	0x00020000
	.word	FUN_06011C1C
	.word	0x00020000
	.word	FUN_06011BF4
	.word	0x00010000
	.word	FUN_0600F96C
	.word	0x00020000
	.word	FUN_06011BC4
	.word	0x00020000
	.word	FUN_06011B94
	.word	0x00020000
	.word	FUN_06011B6C
	.word	0x00020000
	.word	FUN_06011B44
	.word	0x00110000
	.word	FUN_06011B08
	.word	0x00020000
	.word	FUN_06011AD8
	.word	0x00020000
	.word	0x06011AB0
	.word	0x00040000
	.word	FUN_06011A70
	.word	0x00010000
	.word	FUN_0600F96C
	.word	0x00020000
	.word	FUN_06011A44
	.word	0x00020000
	.word	FUN_06011A08
	.word	0x00030000
	.word	FUN_060119A8
	.word	0x00020000
	.word	FUN_0601196C
	.word	0x00020000
	.word	FUN_06011930
_06019898:
	.word	0x00010048
	.word	FUN_060124F8
	.word	0x00010003
	.word	FUN_060124B0
	.word	0x00010001
	.word	FUN_06012498
	.word	0x00010001
	.word	FUN_06012450
	.word	0x00010001
	.word	FUN_060123F4
	.word	0x00010001
	.word	FUN_060123DC
	.word	0x00010001
	.word	FUN_060123C4
	.word	0x00010001
	.word	FUN_060123AC
	.word	0x00010028
	.word	FUN_06012394
	.word	0x00010001
	.word	FUN_0601234C
	.word	0x00010001
	.word	FUN_06012334
	.word	0x00010001
	.word	FUN_0601231C
	.word	0x00010001
	.word	FUN_06012300
	.word	0x00010010
	.word	FUN_060122E8
	.word	0x00010001
	.word	FUN_060122D0
	.word	0x00010001
	.word	0x060122B8
	.word	0x00010003
	.word	FUN_06012264
	.word	0x00010003
	.word	FUN_06012158
	.word	0x00010001
	.word	FUN_06012100
	.word	0x00010001
	.word	FUN_060120B8
	.word	0x00010002
	.word	FUN_06012070
	.word	0x00010001
	.word	FUN_06012028
	.word	0x00010001
	.word	FUN_06011FE0
_06019950:
	.word	0x38372E32
	.word	0x0030302E
_06019958:
	.word	0x00040001
	.word	0x00000008

; 	.section .bss
; 	.balign 16, 0
; _06019980:
; 	.space 8
; _06019988:
; 	.space 32
; _060199A8:
; 	.space 16
; _060199B8:
; 	.space 32
; _060199D8:
; 	.space 16
; _060199E8:
; 	.space 32
; _06019A08:
; 	.space 16
; _0601AA88:
; 	.space 1068
; _0601AEB4:
; 	.space 92