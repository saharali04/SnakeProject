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
	.file	"main.c"
	.text
	.align	2
	.global	initialize
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L4
	mov	r0, #3
	ldr	r2, .L4+4
	ldr	r1, .L4+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L4+12
	ldr	r1, .L4+16
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+20
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #4096
	ldr	r3, .L4+24
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r3, #0
	ldr	r2, .L4+28
	ldr	r0, .L4+32
	ldrh	ip, [r2, #48]
	ldr	r1, .L4+36
	ldr	r2, .L4+40
	strh	ip, [r0]	@ movhi
	str	r3, [r1]
	str	r3, [r2]
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	83886592
	.word	spriteSheetPal
	.word	100728832
	.word	spriteSheetTiles
	.word	hideSprites
	.word	initSnake
	.word	67109120
	.word	buttons
	.word	state
	.word	seed
	.size	initialize, .-initialize
	.align	2
	.global	goToStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	ldr	r1, .L7
	ldr	r2, .L7+4
	str	r3, [r1]
	str	r3, [r2]
	bx	lr
.L8:
	.align	2
.L7:
	.word	state
	.word	seed
	.size	goToStart, .-goToStart
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #4608
	mov	r6, #67108864
	ldr	r5, .L20
	ldr	r3, [r5]
	add	r3, r3, #1
	str	r3, [r5]
	ldr	r4, .L20+4
	strh	r2, [r6]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L20+8
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r3, #384
	strh	r2, [r6, #10]	@ movhi
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L20+12
	ldr	r6, .L20+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L20+20
	ldr	r1, .L20+24
	mov	lr, pc
	bx	r4
	ldrh	r3, [r6]
	tst	r3, #8
	beq	.L10
	ldr	r2, .L20+28
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L19
.L10:
	tst	r3, #32
	beq	.L9
	ldr	r3, .L20+28
	ldrh	r3, [r3]
	tst	r3, #32
	moveq	r2, #4
	ldreq	r3, .L20+32
	streq	r2, [r3]
.L9:
	pop	{r4, r5, r6, lr}
	bx	lr
.L19:
	mov	r1, #1
	ldr	r2, .L20+32
	ldr	r3, .L20+36
	ldr	r0, [r5]
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldrh	r3, [r6]
	b	.L10
.L21:
	.align	2
.L20:
	.word	seed
	.word	DMANow
	.word	startScreenPal
	.word	startScreenTiles
	.word	oldButtons
	.word	100726784
	.word	startScreenMap
	.word	buttons
	.word	state
	.word	srand
	.size	start, .-start
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #1
	ldr	r3, .L23
	str	r2, [r3]
	bx	lr
.L24:
	.align	2
.L23:
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L31
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L31+4
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #7936
	mov	r3, #16
	strh	r1, [r2, #10]	@ movhi
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L31+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L31+12
	ldr	r1, .L31+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L31+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L31+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L25
	ldr	r3, .L31+28
	ldrh	r3, [r3]
	tst	r3, #8
	moveq	r2, #2
	ldreq	r3, .L31+32
	streq	r2, [r3]
.L25:
	pop	{r4, lr}
	bx	lr
.L32:
	.align	2
.L31:
	.word	DMANow
	.word	gameScreenPal
	.word	gameScreenTiles
	.word	100726784
	.word	gameScreenMap
	.word	updateGame
	.word	oldButtons
	.word	buttons
	.word	state
	.size	game, .-game
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #2
	ldr	r3, .L34
	str	r2, [r3]
	bx	lr
.L35:
	.align	2
.L34:
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L42
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L42+4
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #7936
	mov	r3, #96
	strh	r1, [r2, #10]	@ movhi
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L42+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L42+12
	ldr	r1, .L42+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L42+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L36
	ldr	r3, .L42+24
	ldrh	r3, [r3]
	tst	r3, #8
	moveq	r2, #1
	ldreq	r3, .L42+28
	streq	r2, [r3]
.L36:
	pop	{r4, lr}
	bx	lr
.L43:
	.align	2
.L42:
	.word	DMANow
	.word	pauseScreenPal
	.word	pauseScreenTiles
	.word	100726784
	.word	pauseScreenMap
	.word	oldButtons
	.word	buttons
	.word	state
	.size	pause, .-pause
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #3
	ldr	r3, .L45
	str	r2, [r3]
	bx	lr
.L46:
	.align	2
.L45:
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L49
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L49+4
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #7936
	mov	r3, #256
	strh	r1, [r2, #10]	@ movhi
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L49+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L49+12
	ldr	r1, .L49+16
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L50:
	.align	2
.L49:
	.word	DMANow
	.word	winScreenPal
	.word	winScreenTiles
	.word	100726784
	.word	winScreenMap
	.size	win, .-win
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #4
	ldr	r3, .L52
	str	r2, [r3]
	bx	lr
.L53:
	.align	2
.L52:
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L56
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L56+4
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #7936
	mov	r3, #176
	strh	r1, [r2, #10]	@ movhi
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L56+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L56+12
	ldr	r1, .L56+16
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L57:
	.align	2
.L56:
	.word	DMANow
	.word	loseScreenPal
	.word	loseScreenTiles
	.word	100726784
	.word	loseScreenMap
	.size	lose, .-lose
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r6, .L68
	push	{r4, r7, fp, lr}
	ldr	r3, .L68+4
	mov	lr, pc
	bx	r3
	ldr	fp, .L68+8
	ldr	r3, [r6]
	ldr	r10, .L68+12
	ldr	r9, .L68+16
	ldr	r8, .L68+20
	ldr	r5, .L68+24
	ldr	r7, .L68+28
	ldr	r4, .L68+32
.L66:
	cmp	r3, #4
	ldrls	pc, [pc, r3, asl #2]
	b	.L59
.L61:
	.word	.L65
	.word	.L64
	.word	.L63
	.word	.L62
	.word	.L60
.L60:
	ldr	r3, .L68+36
	mov	lr, pc
	bx	r3
	ldr	r3, [r6]
.L59:
	ldrh	r1, [r7]
	strh	r1, [r5]	@ movhi
	ldrh	r1, [r4, #48]
	strh	r1, [r7]	@ movhi
	b	.L66
.L62:
	mov	lr, pc
	bx	r8
	ldr	r3, [r6]
	b	.L59
.L63:
	mov	lr, pc
	bx	r9
	ldr	r3, [r6]
	b	.L59
.L65:
	mov	lr, pc
	bx	fp
	ldr	r3, [r6]
	b	.L59
.L64:
	mov	lr, pc
	bx	r10
	ldr	r3, [r6]
	b	.L59
.L69:
	.align	2
.L68:
	.word	state
	.word	initialize
	.word	start
	.word	game
	.word	pause
	.word	win
	.word	oldButtons
	.word	buttons
	.word	67109120
	.word	lose
	.size	main, .-main
	.comm	state,4,4
	.comm	seed,4,4
	.comm	shadowOAM,1024,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	apple,32,4
	.comm	snakeBody,40,4
	.comm	snakeHead,40,4
	.comm	SNAKELENGTH,4,4
	.comm	snake,1120,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
