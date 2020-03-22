	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"game.c"
	.text
	.align	2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawApple.part.0, %function
drawApple.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #16
	mov	r0, #1
	push	{r4, lr}
	mov	r2, #40
	mov	lr, #4
	mov	r4, #30
	mov	ip, #8
	ldr	r3, .L4
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r0, [r3, #28]
	ldr	r1, .L4+4
	ldr	r0, .L4+8
	str	r4, [r3, #4]
	str	lr, [r3, #24]
	str	r2, [r3]
	ldr	r4, .L4+12
	strh	r2, [r1, #16]	@ movhi
	strh	r0, [r1, #18]	@ movhi
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	strh	ip, [r1, #20]	@ movhi
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	apple
	.word	shadowOAM
	.word	16414
	.word	DMANow
	.size	drawApple.part.0, .-drawApple.part.0
	.align	2
	.global	initSnake
	.syntax unified
	.arm
	.fpu softvfp
	.type	initSnake, %function
initSnake:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #16
	push	{r4, r5, r6, lr}
	mov	r1, #4
	mov	r6, #1
	mov	r5, #112
	mov	ip, #62
	mov	r4, #116
	mov	lr, #3
	mov	r0, #0
	ldr	r3, .L8
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	ldr	r2, .L8+4
	str	r6, [r3, #36]
	str	r5, [r3, #4]
	str	r4, [r2, #4]
	str	lr, [r2, #28]
	str	ip, [r3]
	str	ip, [r2]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	str	r1, [r2, #16]
	str	r1, [r2, #20]
	str	r0, [r3, #24]
	str	r0, [r3, #28]
	pop	{r4, r5, r6, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	snakeHead
	.word	snakeBody
	.size	initSnake, .-initSnake
	.align	2
	.global	updateSnake
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateSnake, %function
updateSnake:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #1
	ldr	r3, .L31
	ldr	r2, [r3, #28]
	ldr	r1, .L31+4
	cmp	r2, #5
	push	{r4, r5, r6, lr}
	str	r0, [r1, #28]
	movne	r1, #5
	strne	r2, [r3, #32]
	ldr	r2, .L31+8
	ldrh	r2, [r2, #48]
	strne	r1, [r3, #28]
	tst	r2, #64
	moveq	ip, #2
	streq	ip, [r3, #28]
	ldr	ip, .L31+8
	ldr	r2, [r3]
	ldreq	r0, .L31+12
	ldreq	lr, [r3, #8]
	ldr	r1, [r3, #4]
	ldrh	ip, [ip, #48]
	streq	r2, [r0]
	subeq	r2, r2, lr
	ldrne	r0, .L31+12
	streq	r1, [r0, #4]
	streq	r2, [r3]
	tst	ip, #128
	bne	.L13
	mov	ip, #1
	ldr	lr, [r3, #8]
	str	r2, [r0]
	add	r2, r2, lr
	str	r1, [r0, #4]
	str	r2, [r3]
	str	ip, [r3, #28]
.L13:
	ldr	ip, .L31+8
	ldrh	lr, [ip, #48]
	tst	lr, #32
	bne	.L14
	mov	lr, #1
	ldrh	r4, [ip, #48]
	ldr	ip, [r3, #12]
	tst	r4, #16
	sub	ip, r1, ip
	str	r1, [r0, #4]
	str	r2, [r0]
	str	ip, [r3, #4]
	str	lr, [r3, #28]
	bne	.L29
.L15:
	mov	lr, #2
	mov	r5, r2
	str	lr, [r3, #28]
	mov	lr, #4
	stm	r0, {r2, ip}
	str	r1, [r3, #4]
.L16:
	ldr	r4, [r3, #24]
	add	r4, r4, #1
	str	r4, [r3, #24]
.L19:
	ldr	r3, [r0, #28]
	ldr	r4, .L31+16
	lsl	r3, r3, #1
	orr	r1, r1, #16384
	orr	ip, ip, #16384
	strh	lr, [r4, #4]	@ movhi
	strh	r3, [r4, #12]	@ movhi
	strh	r2, [r4]	@ movhi
	strh	r1, [r4, #2]	@ movhi
	strh	r5, [r4, #8]	@ movhi
	strh	ip, [r4, #10]	@ movhi
	ldr	r0, .L31+20
	mov	lr, pc
	bx	r0
	mov	r1, r4
	mov	r3, #512
	ldr	r4, .L31+24
	mov	r2, #117440512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L14:
	ldrh	ip, [ip, #48]
	tst	ip, #16
	beq	.L30
	ldr	lr, [r3, #28]
	cmp	lr, #5
	lslne	lr, lr, #17
	ldm	r0, {r5, ip}
	lsrne	lr, lr, #16
	bne	.L16
	mov	lr, #0
	str	lr, [r3, #28]
	b	.L19
.L29:
	mov	r4, r1
	mov	r5, r2
	mov	r1, ip
	mov	lr, #2
	mov	ip, r4
	b	.L16
.L30:
	ldr	lr, [r3, #12]
	mov	ip, r1
	add	r1, r1, lr
	b	.L15
.L32:
	.align	2
.L31:
	.word	snakeHead
	.word	apple
	.word	67109120
	.word	snakeBody
	.word	shadowOAM
	.word	waitForVBlank
	.word	DMANow
	.size	updateSnake, .-updateSnake
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r4, .L45
	ldr	r3, [r4, #28]
	cmp	r3, #0
	sub	sp, sp, #20
	bne	.L43
.L34:
	bl	updateSnake
	ldr	r0, .L45+4
	ldr	r5, [r4, #20]
	ldr	ip, [r4, #16]
	add	r2, r0, #16
	ldr	r1, [r0]
	ldr	lr, [r4]
	ldm	r2, {r2, r3}
	ldr	r0, [r0, #4]
	str	r5, [sp, #12]
	str	ip, [sp, #8]
	ldr	ip, [r4, #4]
	ldr	r5, .L45+8
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L44
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L43:
	bl	drawApple.part.0
	b	.L34
.L44:
	mov	ip, #0
	ldr	r3, .L45+12
	ldm	r4, {r0, r2}
	ldr	r3, [r3, #28]
	ldr	r1, .L45+16
	lsl	r3, r3, #1
	orr	r2, r2, #16384
	strh	r3, [r1, #20]	@ movhi
	strh	r0, [r1, #16]	@ movhi
	strh	r2, [r1, #18]	@ movhi
	mov	r3, #512
	str	ip, [r4, #28]
	mov	r2, #117440512
	mov	r0, #3
	ldr	r4, .L45+20
	mov	lr, pc
	bx	r4
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L46:
	.align	2
.L45:
	.word	apple
	.word	snakeHead
	.word	collision
	.word	snakeBody
	.word	shadowOAM
	.word	DMANow
	.size	updateGame, .-updateGame
	.align	2
	.global	drawApple
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawApple, %function
drawApple:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L49
	ldr	r3, [r3, #28]
	cmp	r3, #0
	bxeq	lr
	b	drawApple.part.0
.L50:
	.align	2
.L49:
	.word	apple
	.size	drawApple, .-drawApple
	.comm	apple,32,4
	.comm	snakeBody,40,4
	.comm	snakeHead,40,4
	.comm	SNAKELENGTH,4,4
	.comm	snake,1120,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
