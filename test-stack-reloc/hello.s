
hello:     file format elf64-littleaarch64


Disassembly of section .init:

0000000000400120 <_init>:
  400120:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  400124:	910003fd 	mov	x29, sp
  400128:	a8c17bfd 	ldp	x29, x30, [sp], #16
  40012c:	d65f03c0 	ret

Disassembly of section .text:

0000000000400130 <exit>:
  400130:	a9bf7bf3 	stp	x19, x30, [sp, #-16]!
  400134:	2a0003f3 	mov	w19, w0
  400138:	940001d6 	bl	400890 <__funcs_on_exit>
  40013c:	940001d6 	bl	400894 <__libc_exit_fini>
  400140:	94000cd2 	bl	403488 <__stdio_exit>
  400144:	2a1303e0 	mov	w0, w19
  400148:	94000a0e 	bl	402980 <_Exit>

000000000040014c <_start>:
  40014c:	d280001d 	mov	x29, #0x0                   	// #0
  400150:	d280001e 	mov	x30, #0x0                   	// #0
  400154:	910003e0 	mov	x0, sp
  400158:	90000001 	adrp	x1, 400000 <_init-0x120>
  40015c:	91000021 	add	x1, x1, #0x0
  400160:	927cec1f 	and	sp, x0, #0xfffffffffffffff0
  400164:	14000001 	b	400168 <_start_c>

0000000000400168 <_start_c>:
  400168:	a9bc53f3 	stp	x19, x20, [sp, #-64]!
  40016c:	d2801bc8 	mov	x8, #0xde                  	// #222
  400170:	d2a02001 	mov	x1, #0x1000000             	// #16777216
  400174:	d2800062 	mov	x2, #0x3                   	// #3
  400178:	a9015bf5 	stp	x21, x22, [sp, #16]
  40017c:	aa0003f5 	mov	x21, x0
  400180:	a90263f7 	stp	x23, x24, [sp, #32]
  400184:	aa0003f6 	mov	x22, x0
  400188:	f9001bfe 	str	x30, [sp, #48]
  40018c:	d2800643 	mov	x3, #0x32                  	// #50
  400190:	92800004 	mov	x4, #0xffffffffffffffff    	// #-1
  400194:	d2800005 	mov	x5, #0x0                   	// #0
  400198:	f84086b7 	ldr	x23, [x21], #8
  40019c:	8b37cea0 	add	x0, x21, w23, sxtw #3
  4001a0:	91002014 	add	x20, x0, #0x8
  4001a4:	b2685be0 	mov	x0, #0x7fffff000000        	// #140737471578112
  4001a8:	d4000001 	svc	#0x0
  4001ac:	eb04001f 	cmp	x0, x4
  4001b0:	54000c40 	b.eq	400338 <_task_switch+0xa8>  // b.none
  4001b4:	d2800002 	mov	x2, #0x0                   	// #0
  4001b8:	2a1703f8 	mov	w24, w23
  4001bc:	940008cf 	bl	4024f8 <memset>

00000000004001c0 <_get_stack_addr>:
  4001c0:	910003e6 	mov	x6, sp
  4001c4:	d2800000 	mov	x0, #0x0                   	// #0
  4001c8:	91000400 	add	x0, x0, #0x1
  4001cc:	51000401 	sub	w1, w0, #0x1
  4001d0:	6b01031f 	cmp	w24, w1
  4001d4:	5400078c 	b.gt	4002c4 <_task_switch+0x34>
  4001d8:	d2800000 	mov	x0, #0x0                   	// #0
  4001dc:	91000400 	add	x0, x0, #0x1
  4001e0:	8b000e81 	add	x1, x20, x0, lsl #3
  4001e4:	f85f8022 	ldur	x2, [x1, #-8]
  4001e8:	b5000762 	cbnz	x2, 4002d4 <_task_switch+0x44>
  4001ec:	aa0103e0 	mov	x0, x1
  4001f0:	f8410402 	ldr	x2, [x0], #16
  4001f4:	b5000762 	cbnz	x2, 4002e0 <_task_switch+0x50>
  4001f8:	9274ce73 	and	x19, x19, #0xfffffffffffff000
  4001fc:	d2800000 	mov	x0, #0x0                   	// #0
  400200:	91400673 	add	x19, x19, #0x1, lsl #12
  400204:	d2d00004 	mov	x4, #0x800000000000        	// #140737488355328
  400208:	cb060263 	sub	x3, x19, x6
  40020c:	91000400 	add	x0, x0, #0x1
  400210:	51000402 	sub	w2, w0, #0x1
  400214:	6b02031f 	cmp	w24, w2
  400218:	540006cc 	b.gt	4002f0 <_task_switch+0x60>
  40021c:	d2d00004 	mov	x4, #0x800000000000        	// #140737488355328
  400220:	aa1403e0 	mov	x0, x20
  400224:	cb130084 	sub	x4, x4, x19
  400228:	f9400002 	ldr	x2, [x0]
  40022c:	b50006c2 	cbnz	x2, 400304 <_task_switch+0x74>
  400230:	d2d00002 	mov	x2, #0x800000000000        	// #140737488355328
  400234:	b2714be7 	mov	x7, #0x3ffff8000           	// #17179836416
  400238:	91002020 	add	x0, x1, #0x8
  40023c:	cb130042 	sub	x2, x2, x19
  400240:	d2800025 	mov	x5, #0x1                   	// #1
  400244:	f2b06007 	movk	x7, #0x8300, lsl #16
  400248:	f85f8001 	ldur	x1, [x0, #-8]
  40024c:	b5000621 	cbnz	x1, 400310 <_task_switch+0x80>
  400250:	d2d00002 	mov	x2, #0x800000000000        	// #140737488355328
  400254:	cb030041 	sub	x1, x2, x3

0000000000400258 <_copia>:
  400258:	d2800004 	mov	x4, #0x0                   	// #0
  40025c:	eb04007f 	cmp	x3, x4
  400260:	540000cd 	b.le	400278 <_memcpy_exit>

0000000000400264 <_memcpy_copy>:
  400264:	386468c5 	ldrb	w5, [x6, x4]
  400268:	38246825 	strb	w5, [x1, x4]
  40026c:	91000484 	add	x4, x4, #0x1
  400270:	eb04007f 	cmp	x3, x4
  400274:	54ffff8c 	b.gt	400264 <_memcpy_copy>

0000000000400278 <_memcpy_exit>:
  400278:	aa0403e1 	mov	x1, x4
  40027c:	d2800020 	mov	x0, #0x1                   	// #1
  400280:	f2d00000 	movk	x0, #0x8000, lsl #32
  400284:	cb030000 	sub	x0, x0, x3
  400288:	eb00003f 	cmp	x1, x0
  40028c:	54000561 	b.ne	400338 <_task_switch+0xa8>  // b.any

0000000000400290 <_task_switch>:
  400290:	cb030043 	sub	x3, x2, x3
  400294:	9100007f 	mov	sp, x3
  400298:	d00000a4 	adrp	x4, 416000 <__FRAME_END__+0xf770>
  40029c:	d00000a3 	adrp	x3, 416000 <__FRAME_END__+0xf770>
  4002a0:	d00000a0 	adrp	x0, 416000 <__FRAME_END__+0xf770>
  4002a4:	8b0202a2 	add	x2, x21, x2
  4002a8:	cb130042 	sub	x2, x2, x19
  4002ac:	2a1703e1 	mov	w1, w23
  4002b0:	f947e484 	ldr	x4, [x4, #4040]
  4002b4:	d2800005 	mov	x5, #0x0                   	// #0
  4002b8:	f947c863 	ldr	x3, [x3, #3984]
  4002bc:	f947dc00 	ldr	x0, [x0, #4024]
  4002c0:	94000163 	bl	40084c <__libc_start_main>
  4002c4:	f8607ac1 	ldr	x1, [x22, x0, lsl #3]
  4002c8:	eb13003f 	cmp	x1, x19
  4002cc:	9a93c033 	csel	x19, x1, x19, gt
  4002d0:	17ffffbe 	b	4001c8 <_get_stack_addr+0x8>
  4002d4:	eb13005f 	cmp	x2, x19
  4002d8:	9a93c053 	csel	x19, x2, x19, gt
  4002dc:	17ffffc0 	b	4001dc <_get_stack_addr+0x1c>
  4002e0:	f85f8002 	ldur	x2, [x0, #-8]
  4002e4:	eb02027f 	cmp	x19, x2
  4002e8:	9a82a273 	csel	x19, x19, x2, ge  // ge = tcont
  4002ec:	17ffffc1 	b	4001f0 <_get_stack_addr+0x30>
  4002f0:	f8607ac2 	ldr	x2, [x22, x0, lsl #3]
  4002f4:	8b040042 	add	x2, x2, x4
  4002f8:	cb130042 	sub	x2, x2, x19
  4002fc:	f8207ac2 	str	x2, [x22, x0, lsl #3]
  400300:	17ffffc3 	b	40020c <_get_stack_addr+0x4c>
  400304:	8b040042 	add	x2, x2, x4
  400308:	f8008402 	str	x2, [x0], #8
  40030c:	17ffffc7 	b	400228 <_get_stack_addr+0x68>
  400310:	f100843f 	cmp	x1, #0x21
  400314:	540000e8 	b.hi	400330 <_task_switch+0xa0>  // b.pmore
  400318:	9ac120a1 	lsl	x1, x5, x1
  40031c:	ea07003f 	tst	x1, x7
  400320:	54000080 	b.eq	400330 <_task_switch+0xa0>  // b.none
  400324:	f9400004 	ldr	x4, [x0]
  400328:	8b020084 	add	x4, x4, x2
  40032c:	f9000004 	str	x4, [x0]
  400330:	91004000 	add	x0, x0, #0x10
  400334:	17ffffc5 	b	400248 <_get_stack_addr+0x88>
  400338:	d2800bc8 	mov	x8, #0x5e                  	// #94
  40033c:	d2800020 	mov	x0, #0x1                   	// #1
  400340:	d4000001 	svc	#0x0
  400344:	d2800ba8 	mov	x8, #0x5d                  	// #93
  400348:	17fffffd 	b	40033c <_task_switch+0xac>
  40034c:	00000000 	.inst	0x00000000 ; undefined

0000000000400350 <deregister_tm_clones>:
  400350:	f00000a1 	adrp	x1, 417000 <__dso_handle>
  400354:	f00000a0 	adrp	x0, 417000 <__dso_handle>
  400358:	91040021 	add	x1, x1, #0x100
  40035c:	91040000 	add	x0, x0, #0x100
  400360:	91001c21 	add	x1, x1, #0x7
  400364:	cb000021 	sub	x1, x1, x0
  400368:	f100383f 	cmp	x1, #0xe
  40036c:	540000a9 	b.ls	400380 <deregister_tm_clones+0x30>  // b.plast
  400370:	d00000a1 	adrp	x1, 416000 <__FRAME_END__+0xf770>
  400374:	f947d421 	ldr	x1, [x1, #4008]
  400378:	b4000041 	cbz	x1, 400380 <deregister_tm_clones+0x30>
  40037c:	d61f0020 	br	x1
  400380:	d65f03c0 	ret
  400384:	d503201f 	nop

0000000000400388 <register_tm_clones>:
  400388:	f00000a1 	adrp	x1, 417000 <__dso_handle>
  40038c:	f00000a0 	adrp	x0, 417000 <__dso_handle>
  400390:	91040021 	add	x1, x1, #0x100
  400394:	91040000 	add	x0, x0, #0x100
  400398:	cb000021 	sub	x1, x1, x0
  40039c:	9343fc21 	asr	x1, x1, #3
  4003a0:	8b41fc21 	add	x1, x1, x1, lsr #63
  4003a4:	9341fc21 	asr	x1, x1, #1
  4003a8:	b40000c1 	cbz	x1, 4003c0 <register_tm_clones+0x38>
  4003ac:	d00000a2 	adrp	x2, 416000 <__FRAME_END__+0xf770>
  4003b0:	f947cc42 	ldr	x2, [x2, #3992]
  4003b4:	b4000062 	cbz	x2, 4003c0 <register_tm_clones+0x38>
  4003b8:	d61f0040 	br	x2
  4003bc:	d503201f 	nop
  4003c0:	d65f03c0 	ret
  4003c4:	d503201f 	nop

00000000004003c8 <__do_global_dtors_aux>:
  4003c8:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  4003cc:	910003fd 	mov	x29, sp
  4003d0:	f9000bf3 	str	x19, [sp, #16]
  4003d4:	f00000b3 	adrp	x19, 417000 <__dso_handle>
  4003d8:	39440260 	ldrb	w0, [x19, #256]
  4003dc:	35000140 	cbnz	w0, 400404 <__do_global_dtors_aux+0x3c>
  4003e0:	d00000a0 	adrp	x0, 416000 <__FRAME_END__+0xf770>
  4003e4:	f947bc00 	ldr	x0, [x0, #3960]
  4003e8:	b4000080 	cbz	x0, 4003f8 <__do_global_dtors_aux+0x30>
  4003ec:	f00000a0 	adrp	x0, 417000 <__dso_handle>
  4003f0:	f9400000 	ldr	x0, [x0]
  4003f4:	d503201f 	nop
  4003f8:	97ffffd6 	bl	400350 <deregister_tm_clones>
  4003fc:	52800020 	mov	w0, #0x1                   	// #1
  400400:	39040260 	strb	w0, [x19, #256]
  400404:	f9400bf3 	ldr	x19, [sp, #16]
  400408:	a8c27bfd 	ldp	x29, x30, [sp], #32
  40040c:	d65f03c0 	ret

0000000000400410 <frame_dummy>:
  400410:	d00000a0 	adrp	x0, 416000 <__FRAME_END__+0xf770>
  400414:	913d6000 	add	x0, x0, #0xf58
  400418:	f9400001 	ldr	x1, [x0]
  40041c:	b5000061 	cbnz	x1, 400428 <frame_dummy+0x18>
  400420:	17ffffda 	b	400388 <register_tm_clones>
  400424:	d503201f 	nop
  400428:	d00000a1 	adrp	x1, 416000 <__FRAME_END__+0xf770>
  40042c:	f947ec21 	ldr	x1, [x1, #4056]
  400430:	b4ffff81 	cbz	x1, 400420 <frame_dummy+0x10>
  400434:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  400438:	910003fd 	mov	x29, sp
  40043c:	d63f0020 	blr	x1
  400440:	a8c17bfd 	ldp	x29, x30, [sp], #16
  400444:	17ffffd1 	b	400388 <register_tm_clones>

0000000000400448 <main>:
  400448:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
  40044c:	910003fd 	mov	x29, sp
  400450:	b9002fa0 	str	w0, [x29, #44]
  400454:	f90013a1 	str	x1, [x29, #32]
  400458:	f9000fa2 	str	x2, [x29, #24]
  40045c:	b9402fa1 	ldr	w1, [x29, #44]
  400460:	9100b3a2 	add	x2, x29, #0x2c
  400464:	b0000020 	adrp	x0, 405000 <__subtf3+0x370>
  400468:	91370000 	add	x0, x0, #0xdc0
  40046c:	aa0203e3 	mov	x3, x2
  400470:	f94013a2 	ldr	x2, [x29, #32]
  400474:	94000118 	bl	4008d4 <printf>
  400478:	b9003fbf 	str	wzr, [x29, #60]
  40047c:	14000013 	b	4004c8 <main+0x80>
  400480:	b9803fa0 	ldrsw	x0, [x29, #60]
  400484:	d37df000 	lsl	x0, x0, #3
  400488:	f94013a1 	ldr	x1, [x29, #32]
  40048c:	8b000020 	add	x0, x1, x0
  400490:	f9400002 	ldr	x2, [x0]
  400494:	b9803fa0 	ldrsw	x0, [x29, #60]
  400498:	d37df000 	lsl	x0, x0, #3
  40049c:	f94013a1 	ldr	x1, [x29, #32]
  4004a0:	8b000020 	add	x0, x1, x0
  4004a4:	f9400001 	ldr	x1, [x0]
  4004a8:	b0000020 	adrp	x0, 405000 <__subtf3+0x370>
  4004ac:	91378000 	add	x0, x0, #0xde0
  4004b0:	aa0103e3 	mov	x3, x1
  4004b4:	b9403fa1 	ldr	w1, [x29, #60]
  4004b8:	94000107 	bl	4008d4 <printf>
  4004bc:	b9403fa0 	ldr	w0, [x29, #60]
  4004c0:	11000400 	add	w0, w0, #0x1
  4004c4:	b9003fa0 	str	w0, [x29, #60]
  4004c8:	b9402fa0 	ldr	w0, [x29, #44]
  4004cc:	b9403fa1 	ldr	w1, [x29, #60]
  4004d0:	6b00003f 	cmp	w1, w0
  4004d4:	54fffd6b 	b.lt	400480 <main+0x38>  // b.tstop
  4004d8:	b9003fbf 	str	wzr, [x29, #60]
  4004dc:	14000014 	b	40052c <main+0xe4>
  4004e0:	b9403fa0 	ldr	w0, [x29, #60]
  4004e4:	51000404 	sub	w4, w0, #0x1
  4004e8:	b9803fa0 	ldrsw	x0, [x29, #60]
  4004ec:	d37df000 	lsl	x0, x0, #3
  4004f0:	d1002000 	sub	x0, x0, #0x8
  4004f4:	f9400fa1 	ldr	x1, [x29, #24]
  4004f8:	8b000020 	add	x0, x1, x0
  4004fc:	f9400002 	ldr	x2, [x0]
  400500:	b9803fa0 	ldrsw	x0, [x29, #60]
  400504:	d37df000 	lsl	x0, x0, #3
  400508:	d1002000 	sub	x0, x0, #0x8
  40050c:	f9400fa1 	ldr	x1, [x29, #24]
  400510:	8b000020 	add	x0, x1, x0
  400514:	f9400001 	ldr	x1, [x0]
  400518:	b0000020 	adrp	x0, 405000 <__subtf3+0x370>
  40051c:	9137e000 	add	x0, x0, #0xdf8
  400520:	aa0103e3 	mov	x3, x1
  400524:	2a0403e1 	mov	w1, w4
  400528:	940000eb 	bl	4008d4 <printf>
  40052c:	b9403fa0 	ldr	w0, [x29, #60]
  400530:	11000401 	add	w1, w0, #0x1
  400534:	b9003fa1 	str	w1, [x29, #60]
  400538:	93407c00 	sxtw	x0, w0
  40053c:	d37df000 	lsl	x0, x0, #3
  400540:	f9400fa1 	ldr	x1, [x29, #24]
  400544:	8b000020 	add	x0, x1, x0
  400548:	f9400000 	ldr	x0, [x0]
  40054c:	f100001f 	cmp	x0, #0x0
  400550:	54fffc81 	b.ne	4004e0 <main+0x98>  // b.any
  400554:	b9803fa0 	ldrsw	x0, [x29, #60]
  400558:	d37df000 	lsl	x0, x0, #3
  40055c:	f9400fa1 	ldr	x1, [x29, #24]
  400560:	8b000020 	add	x0, x1, x0
  400564:	f9001ba0 	str	x0, [x29, #48]
  400568:	1400001d 	b	4005dc <main+0x194>
  40056c:	f9401ba0 	ldr	x0, [x29, #48]
  400570:	f9400000 	ldr	x0, [x0]
  400574:	f100601f 	cmp	x0, #0x18
  400578:	540000a0 	b.eq	40058c <main+0x144>  // b.none
  40057c:	f1007c1f 	cmp	x0, #0x1f
  400580:	54000060 	b.eq	40058c <main+0x144>  // b.none
  400584:	f1003c1f 	cmp	x0, #0xf
  400588:	54000161 	b.ne	4005b4 <main+0x16c>  // b.any
  40058c:	f9401ba0 	ldr	x0, [x29, #48]
  400590:	f9400001 	ldr	x1, [x0]
  400594:	f9401ba0 	ldr	x0, [x29, #48]
  400598:	f9400402 	ldr	x2, [x0, #8]
  40059c:	f9401ba0 	ldr	x0, [x29, #48]
  4005a0:	f9400403 	ldr	x3, [x0, #8]
  4005a4:	b0000020 	adrp	x0, 405000 <__subtf3+0x370>
  4005a8:	91384000 	add	x0, x0, #0xe10
  4005ac:	940000ca 	bl	4008d4 <printf>
  4005b0:	14000008 	b	4005d0 <main+0x188>
  4005b4:	f9401ba0 	ldr	x0, [x29, #48]
  4005b8:	f9400001 	ldr	x1, [x0]
  4005bc:	f9401ba0 	ldr	x0, [x29, #48]
  4005c0:	f9400402 	ldr	x2, [x0, #8]
  4005c4:	b0000020 	adrp	x0, 405000 <__subtf3+0x370>
  4005c8:	9138c000 	add	x0, x0, #0xe30
  4005cc:	940000c2 	bl	4008d4 <printf>
  4005d0:	f9401ba0 	ldr	x0, [x29, #48]
  4005d4:	91004000 	add	x0, x0, #0x10
  4005d8:	f9001ba0 	str	x0, [x29, #48]
  4005dc:	f9401ba0 	ldr	x0, [x29, #48]
  4005e0:	f9400000 	ldr	x0, [x0]
  4005e4:	f100001f 	cmp	x0, #0x0
  4005e8:	54fffc21 	b.ne	40056c <main+0x124>  // b.any
  4005ec:	528003c0 	mov	w0, #0x1e                  	// #30
  4005f0:	94000809 	bl	402614 <sleep>
  4005f4:	52800000 	mov	w0, #0x0                   	// #0
  4005f8:	a8c47bfd 	ldp	x29, x30, [sp], #64
  4005fc:	d65f03c0 	ret

0000000000400600 <dummy>:
  400600:	d65f03c0 	ret

0000000000400604 <__init_ssp>:
  400604:	d65f03c0 	ret

0000000000400608 <__init_libc>:
  400608:	a9a853f3 	stp	x19, x20, [sp, #-384]!
  40060c:	aa0003f4 	mov	x20, x0
  400610:	aa0103f3 	mov	x19, x1
  400614:	d2802602 	mov	x2, #0x130                 	// #304
  400618:	a9017bf5 	stp	x21, x30, [sp, #16]
  40061c:	910143f5 	add	x21, sp, #0x50
  400620:	aa1503e0 	mov	x0, x21
  400624:	52800001 	mov	w1, #0x0                   	// #0
  400628:	940007b4 	bl	4024f8 <memset>
  40062c:	d00000a0 	adrp	x0, 416000 <__FRAME_END__+0xf770>
  400630:	f947c400 	ldr	x0, [x0, #3976]
  400634:	f9000014 	str	x20, [x0]
  400638:	d2800000 	mov	x0, #0x0                   	// #0
  40063c:	f8607a81 	ldr	x1, [x20, x0, lsl #3]
  400640:	91000400 	add	x0, x0, #0x1
  400644:	b5ffffc1 	cbnz	x1, 40063c <__init_libc+0x34>
  400648:	8b000e80 	add	x0, x20, x0, lsl #3
  40064c:	f00000b4 	adrp	x20, 417000 <__dso_handle>
  400650:	911ba281 	add	x1, x20, #0x6e8
  400654:	f9000820 	str	x0, [x1, #16]
  400658:	f9400001 	ldr	x1, [x0]
  40065c:	b5000301 	cbnz	x1, 4006bc <__init_libc+0xb4>
  400660:	f00000a0 	adrp	x0, 417000 <__dso_handle>
  400664:	f9406be1 	ldr	x1, [sp, #208]
  400668:	f9037001 	str	x1, [x0, #1760]
  40066c:	f940abe0 	ldr	x0, [sp, #336]
  400670:	b4000060 	cbz	x0, 40067c <__init_libc+0x74>
  400674:	f00000a1 	adrp	x1, 417000 <__dso_handle>
  400678:	f9036c20 	str	x0, [x1, #1752]
  40067c:	911ba280 	add	x0, x20, #0x6e8
  400680:	f94043e1 	ldr	x1, [sp, #128]
  400684:	f9001c01 	str	x1, [x0, #56]
  400688:	b50000d3 	cbnz	x19, 4006a0 <__init_libc+0x98>
  40068c:	f940a7f3 	ldr	x19, [sp, #328]
  400690:	b0000020 	adrp	x0, 405000 <__subtf3+0x370>
  400694:	913c7400 	add	x0, x0, #0xf1d
  400698:	f100027f 	cmp	x19, #0x0
  40069c:	9a930013 	csel	x19, x0, x19, eq  // eq = none
  4006a0:	d00000a0 	adrp	x0, 416000 <__FRAME_END__+0xf770>
  4006a4:	f947f000 	ldr	x0, [x0, #4064]
  4006a8:	f9000013 	str	x19, [x0]
  4006ac:	d00000a0 	adrp	x0, 416000 <__FRAME_END__+0xf770>
  4006b0:	f947d000 	ldr	x0, [x0, #4000]
  4006b4:	f9000013 	str	x19, [x0]
  4006b8:	14000009 	b	4006dc <__init_libc+0xd4>
  4006bc:	f100943f 	cmp	x1, #0x25
  4006c0:	54000068 	b.hi	4006cc <__init_libc+0xc4>  // b.pmore
  4006c4:	f9400402 	ldr	x2, [x0, #8]
  4006c8:	f8217aa2 	str	x2, [x21, x1, lsl #3]
  4006cc:	91004000 	add	x0, x0, #0x10
  4006d0:	17ffffe2 	b	400658 <__init_libc+0x50>
  4006d4:	7100bc3f 	cmp	w1, #0x2f
  4006d8:	54fffee0 	b.eq	4006b4 <__init_libc+0xac>  // b.none
  4006dc:	91000673 	add	x19, x19, #0x1
  4006e0:	385ff261 	ldurb	w1, [x19, #-1]
  4006e4:	35ffff81 	cbnz	w1, 4006d4 <__init_libc+0xcc>
  4006e8:	aa1503e0 	mov	x0, x21
  4006ec:	94000821 	bl	402770 <__init_tls>
  4006f0:	f9408fe0 	ldr	x0, [sp, #280]
  4006f4:	97ffffc4 	bl	400604 <__init_ssp>
  4006f8:	a94a83e1 	ldp	x1, x0, [sp, #168]
  4006fc:	eb00003f 	cmp	x1, x0
  400700:	540000c1 	b.ne	400718 <__init_libc+0x110>  // b.any
  400704:	a94b83e1 	ldp	x1, x0, [sp, #184]
  400708:	eb00003f 	cmp	x1, x0
  40070c:	54000061 	b.ne	400718 <__init_libc+0x110>  // b.any
  400710:	f94087e0 	ldr	x0, [sp, #264]
  400714:	b4000540 	cbz	x0, 4007bc <__init_libc+0x1b4>
  400718:	9100e3e0 	add	x0, sp, #0x38
  40071c:	f90027ff 	str	xzr, [sp, #72]
  400720:	9100e3e5 	add	x5, sp, #0x38
  400724:	d2800928 	mov	x8, #0x49                  	// #73
  400728:	d2800061 	mov	x1, #0x3                   	// #3
  40072c:	9100a3e2 	add	x2, sp, #0x28
  400730:	a9007c1f 	stp	xzr, xzr, [x0]
  400734:	52800020 	mov	w0, #0x1                   	// #1
  400738:	d2800003 	mov	x3, #0x0                   	// #0
  40073c:	d2800104 	mov	x4, #0x8                   	// #8
  400740:	b90043e0 	str	w0, [sp, #64]
  400744:	52800040 	mov	w0, #0x2                   	// #2
  400748:	b9004be0 	str	w0, [sp, #72]
  40074c:	9100a3e0 	add	x0, sp, #0x28
  400750:	a9007c1f 	stp	xzr, xzr, [x0]
  400754:	aa0503e0 	mov	x0, x5
  400758:	d4000001 	svc	#0x0
  40075c:	36f80080 	tbz	w0, #31, 40076c <__init_libc+0x164>
  400760:	d2800000 	mov	x0, #0x0                   	// #0
  400764:	3900001f 	strb	wzr, [x0]
  400768:	d4207d00 	brk	#0x3e8
  40076c:	b0000024 	adrp	x4, 405000 <__subtf3+0x370>
  400770:	910018a3 	add	x3, x5, #0x6
  400774:	d2800046 	mov	x6, #0x2                   	// #2
  400778:	910078a5 	add	x5, x5, #0x1e
  40077c:	91392084 	add	x4, x4, #0xe48
  400780:	f2a00046 	movk	x6, #0x2, lsl #16
  400784:	79400060 	ldrh	w0, [x3]
  400788:	362800e0 	tbz	w0, #5, 4007a4 <__init_libc+0x19c>
  40078c:	d2800708 	mov	x8, #0x38                  	// #56
  400790:	92800c60 	mov	x0, #0xffffffffffffff9c    	// #-100
  400794:	aa0403e1 	mov	x1, x4
  400798:	aa0603e2 	mov	x2, x6
  40079c:	d4000001 	svc	#0x0
  4007a0:	b7fffe00 	tbnz	x0, #63, 400760 <__init_libc+0x158>
  4007a4:	91002063 	add	x3, x3, #0x8
  4007a8:	eb0300bf 	cmp	x5, x3
  4007ac:	54fffec1 	b.ne	400784 <__init_libc+0x17c>  // b.any
  4007b0:	911ba294 	add	x20, x20, #0x6e8
  4007b4:	52800020 	mov	w0, #0x1                   	// #1
  4007b8:	b9000a80 	str	w0, [x20, #8]
  4007bc:	a9417bf5 	ldp	x21, x30, [sp, #16]
  4007c0:	a8d853f3 	ldp	x19, x20, [sp], #384
  4007c4:	d65f03c0 	ret

00000000004007c8 <__libc_start_init>:
  4007c8:	a9be53f3 	stp	x19, x20, [sp, #-32]!
  4007cc:	d00000b3 	adrp	x19, 416000 <__FRAME_END__+0xf770>
  4007d0:	f9000bfe 	str	x30, [sp, #16]
  4007d4:	97fffe53 	bl	400120 <_init>
  4007d8:	d00000a0 	adrp	x0, 416000 <__FRAME_END__+0xf770>
  4007dc:	f947e273 	ldr	x19, [x19, #4032]
  4007e0:	f947e800 	ldr	x0, [x0, #4048]
  4007e4:	91002000 	add	x0, x0, #0x8
  4007e8:	91002014 	add	x20, x0, #0x8
  4007ec:	d1002000 	sub	x0, x0, #0x8
  4007f0:	eb13001f 	cmp	x0, x19
  4007f4:	54000083 	b.cc	400804 <__libc_start_init+0x3c>  // b.lo, b.ul, b.last
  4007f8:	f9400bfe 	ldr	x30, [sp, #16]
  4007fc:	a8c253f3 	ldp	x19, x20, [sp], #32
  400800:	d65f03c0 	ret
  400804:	f85f0280 	ldur	x0, [x20, #-16]
  400808:	d63f0000 	blr	x0
  40080c:	aa1403e0 	mov	x0, x20
  400810:	17fffff6 	b	4007e8 <__libc_start_init+0x20>

0000000000400814 <libc_start_main_stage2>:
  400814:	a9bd53f3 	stp	x19, x20, [sp, #-48]!
  400818:	8b21cc53 	add	x19, x2, w1, sxtw #3
  40081c:	2a0103f4 	mov	w20, w1
  400820:	91002273 	add	x19, x19, #0x8
  400824:	a9015bf5 	stp	x21, x22, [sp, #16]
  400828:	aa0203f5 	mov	x21, x2
  40082c:	aa0003f6 	mov	x22, x0
  400830:	f90013fe 	str	x30, [sp, #32]
  400834:	97ffffe5 	bl	4007c8 <__libc_start_init>
  400838:	aa1303e2 	mov	x2, x19
  40083c:	aa1503e1 	mov	x1, x21
  400840:	2a1403e0 	mov	w0, w20
  400844:	d63f02c0 	blr	x22
  400848:	97fffe3a 	bl	400130 <exit>

000000000040084c <__libc_start_main>:
  40084c:	a9be53f3 	stp	x19, x20, [sp, #-32]!
  400850:	2a0103f4 	mov	w20, w1
  400854:	aa0203f3 	mov	x19, x2
  400858:	a9017bf5 	stp	x21, x30, [sp, #16]
  40085c:	aa0003f5 	mov	x21, x0
  400860:	8b21cc40 	add	x0, x2, w1, sxtw #3
  400864:	f9400041 	ldr	x1, [x2]
  400868:	91002000 	add	x0, x0, #0x8
  40086c:	97ffff67 	bl	400608 <__init_libc>
  400870:	90000003 	adrp	x3, 400000 <_init-0x120>
  400874:	aa1303e2 	mov	x2, x19
  400878:	2a1403e1 	mov	w1, w20
  40087c:	aa1503e0 	mov	x0, x21
  400880:	91205063 	add	x3, x3, #0x814
  400884:	a9417bf5 	ldp	x21, x30, [sp, #16]
  400888:	a8c253f3 	ldp	x19, x20, [sp], #32
  40088c:	d61f0060 	br	x3

0000000000400890 <__funcs_on_exit>:
  400890:	d65f03c0 	ret

0000000000400894 <__libc_exit_fini>:
  400894:	a9be53f3 	stp	x19, x20, [sp, #-32]!
  400898:	d00000b3 	adrp	x19, 416000 <__FRAME_END__+0xf770>
  40089c:	d00000b4 	adrp	x20, 416000 <__FRAME_END__+0xf770>
  4008a0:	f9000bfe 	str	x30, [sp, #16]
  4008a4:	f947c273 	ldr	x19, [x19, #3968]
  4008a8:	f947da94 	ldr	x20, [x20, #4016]
  4008ac:	d1002273 	sub	x19, x19, #0x8
  4008b0:	91002260 	add	x0, x19, #0x8
  4008b4:	eb14001f 	cmp	x0, x20
  4008b8:	54000088 	b.hi	4008c8 <__libc_exit_fini+0x34>  // b.pmore
  4008bc:	f9400bfe 	ldr	x30, [sp, #16]
  4008c0:	a8c253f3 	ldp	x19, x20, [sp], #32
  4008c4:	1400153a 	b	405dac <_fini>
  4008c8:	f85f8660 	ldr	x0, [x19], #-8
  4008cc:	d63f0000 	blr	x0
  4008d0:	17fffff8 	b	4008b0 <__libc_exit_fini+0x1c>

00000000004008d4 <printf>:
  4008d4:	d10443ff 	sub	sp, sp, #0x110
  4008d8:	a90d8be1 	stp	x1, x2, [sp, #216]
  4008dc:	910443e1 	add	x1, sp, #0x110
  4008e0:	a90307e1 	stp	x1, x1, [sp, #48]
  4008e4:	910343e1 	add	x1, sp, #0xd0
  4008e8:	f90023e1 	str	x1, [sp, #64]
  4008ec:	128006e1 	mov	w1, #0xffffffc8            	// #-56
  4008f0:	a90e93e3 	stp	x3, x4, [sp, #232]
  4008f4:	b9004be1 	str	w1, [sp, #72]
  4008f8:	12800fe1 	mov	w1, #0xffffff80            	// #-128
  4008fc:	a9430fe2 	ldp	x2, x3, [sp, #48]
  400900:	b9004fe1 	str	w1, [sp, #76]
  400904:	a9010fe2 	stp	x2, x3, [sp, #16]
  400908:	aa0003e1 	mov	x1, x0
  40090c:	a9440fe2 	ldp	x2, x3, [sp, #64]
  400910:	f00000a0 	adrp	x0, 417000 <__dso_handle>
  400914:	a9020fe2 	stp	x2, x3, [sp, #32]
  400918:	91002000 	add	x0, x0, #0x8
  40091c:	910043e2 	add	x2, sp, #0x10
  400920:	f90003fe 	str	x30, [sp]
  400924:	3d8017e0 	str	q0, [sp, #80]
  400928:	3d801be1 	str	q1, [sp, #96]
  40092c:	3d801fe2 	str	q2, [sp, #112]
  400930:	3d8023e3 	str	q3, [sp, #128]
  400934:	3d8027e4 	str	q4, [sp, #144]
  400938:	3d802be5 	str	q5, [sp, #160]
  40093c:	3d802fe6 	str	q6, [sp, #176]
  400940:	3d8033e7 	str	q7, [sp, #192]
  400944:	a90f9be5 	stp	x5, x6, [sp, #248]
  400948:	f90087e7 	str	x7, [sp, #264]
  40094c:	9400068f 	bl	402388 <vfprintf>
  400950:	f94003fe 	ldr	x30, [sp]
  400954:	910443ff 	add	sp, sp, #0x110
  400958:	d65f03c0 	ret

000000000040095c <pop_arg>:
  40095c:	51002421 	sub	w1, w1, #0x9
  400960:	7100443f 	cmp	w1, #0x11
  400964:	540011c8 	b.hi	400b9c <pop_arg+0x240>  // b.pmore
  400968:	b0000024 	adrp	x4, 405000 <__subtf3+0x370>
  40096c:	f9400043 	ldr	x3, [x2]
  400970:	91395084 	add	x4, x4, #0xe54
  400974:	38614881 	ldrb	w1, [x4, w1, uxtw]
  400978:	10000064 	adr	x4, 400984 <pop_arg+0x28>
  40097c:	8b218881 	add	x1, x4, w1, sxtb #2
  400980:	d61f0020 	br	x1
  400984:	b9401841 	ldr	w1, [x2, #24]
  400988:	37f800e1 	tbnz	w1, #31, 4009a4 <pop_arg+0x48>
  40098c:	91002c61 	add	x1, x3, #0xb
  400990:	927df021 	and	x1, x1, #0xfffffffffffffff8
  400994:	f9000041 	str	x1, [x2]
  400998:	b9800061 	ldrsw	x1, [x3]
  40099c:	f9000001 	str	x1, [x0]
  4009a0:	d65f03c0 	ret
  4009a4:	11002024 	add	w4, w1, #0x8
  4009a8:	7100009f 	cmp	w4, #0x0
  4009ac:	b9001844 	str	w4, [x2, #24]
  4009b0:	54fffeec 	b.gt	40098c <pop_arg+0x30>
  4009b4:	f9400443 	ldr	x3, [x2, #8]
  4009b8:	8b21c063 	add	x3, x3, w1, sxtw
  4009bc:	17fffff7 	b	400998 <pop_arg+0x3c>
  4009c0:	b9401841 	ldr	w1, [x2, #24]
  4009c4:	37f800c1 	tbnz	w1, #31, 4009dc <pop_arg+0x80>
  4009c8:	91002c61 	add	x1, x3, #0xb
  4009cc:	927df021 	and	x1, x1, #0xfffffffffffffff8
  4009d0:	f9000041 	str	x1, [x2]
  4009d4:	b9400061 	ldr	w1, [x3]
  4009d8:	17fffff1 	b	40099c <pop_arg+0x40>
  4009dc:	11002024 	add	w4, w1, #0x8
  4009e0:	7100009f 	cmp	w4, #0x0
  4009e4:	b9001844 	str	w4, [x2, #24]
  4009e8:	54ffff0c 	b.gt	4009c8 <pop_arg+0x6c>
  4009ec:	f9400443 	ldr	x3, [x2, #8]
  4009f0:	8b21c063 	add	x3, x3, w1, sxtw
  4009f4:	17fffff8 	b	4009d4 <pop_arg+0x78>
  4009f8:	b9401841 	ldr	w1, [x2, #24]
  4009fc:	37f800c1 	tbnz	w1, #31, 400a14 <pop_arg+0xb8>
  400a00:	91002c61 	add	x1, x3, #0xb
  400a04:	927df021 	and	x1, x1, #0xfffffffffffffff8
  400a08:	f9000041 	str	x1, [x2]
  400a0c:	79800061 	ldrsh	x1, [x3]
  400a10:	17ffffe3 	b	40099c <pop_arg+0x40>
  400a14:	11002024 	add	w4, w1, #0x8
  400a18:	7100009f 	cmp	w4, #0x0
  400a1c:	b9001844 	str	w4, [x2, #24]
  400a20:	54ffff0c 	b.gt	400a00 <pop_arg+0xa4>
  400a24:	f9400443 	ldr	x3, [x2, #8]
  400a28:	8b21c063 	add	x3, x3, w1, sxtw
  400a2c:	17fffff8 	b	400a0c <pop_arg+0xb0>
  400a30:	b9401841 	ldr	w1, [x2, #24]
  400a34:	37f800c1 	tbnz	w1, #31, 400a4c <pop_arg+0xf0>
  400a38:	91002c61 	add	x1, x3, #0xb
  400a3c:	927df021 	and	x1, x1, #0xfffffffffffffff8
  400a40:	f9000041 	str	x1, [x2]
  400a44:	79400061 	ldrh	w1, [x3]
  400a48:	17ffffd5 	b	40099c <pop_arg+0x40>
  400a4c:	11002024 	add	w4, w1, #0x8
  400a50:	7100009f 	cmp	w4, #0x0
  400a54:	b9001844 	str	w4, [x2, #24]
  400a58:	54ffff0c 	b.gt	400a38 <pop_arg+0xdc>
  400a5c:	f9400443 	ldr	x3, [x2, #8]
  400a60:	8b21c063 	add	x3, x3, w1, sxtw
  400a64:	17fffff8 	b	400a44 <pop_arg+0xe8>
  400a68:	b9401841 	ldr	w1, [x2, #24]
  400a6c:	37f800c1 	tbnz	w1, #31, 400a84 <pop_arg+0x128>
  400a70:	91002c61 	add	x1, x3, #0xb
  400a74:	927df021 	and	x1, x1, #0xfffffffffffffff8
  400a78:	f9000041 	str	x1, [x2]
  400a7c:	39800061 	ldrsb	x1, [x3]
  400a80:	17ffffc7 	b	40099c <pop_arg+0x40>
  400a84:	11002024 	add	w4, w1, #0x8
  400a88:	7100009f 	cmp	w4, #0x0
  400a8c:	b9001844 	str	w4, [x2, #24]
  400a90:	54ffff0c 	b.gt	400a70 <pop_arg+0x114>
  400a94:	f9400443 	ldr	x3, [x2, #8]
  400a98:	8b21c063 	add	x3, x3, w1, sxtw
  400a9c:	17fffff8 	b	400a7c <pop_arg+0x120>
  400aa0:	b9401841 	ldr	w1, [x2, #24]
  400aa4:	37f800c1 	tbnz	w1, #31, 400abc <pop_arg+0x160>
  400aa8:	91002c61 	add	x1, x3, #0xb
  400aac:	927df021 	and	x1, x1, #0xfffffffffffffff8
  400ab0:	f9000041 	str	x1, [x2]
  400ab4:	39400061 	ldrb	w1, [x3]
  400ab8:	17ffffb9 	b	40099c <pop_arg+0x40>
  400abc:	11002024 	add	w4, w1, #0x8
  400ac0:	7100009f 	cmp	w4, #0x0
  400ac4:	b9001844 	str	w4, [x2, #24]
  400ac8:	54ffff0c 	b.gt	400aa8 <pop_arg+0x14c>
  400acc:	f9400443 	ldr	x3, [x2, #8]
  400ad0:	8b21c063 	add	x3, x3, w1, sxtw
  400ad4:	17fffff8 	b	400ab4 <pop_arg+0x158>
  400ad8:	b9401841 	ldr	w1, [x2, #24]
  400adc:	37f800c1 	tbnz	w1, #31, 400af4 <pop_arg+0x198>
  400ae0:	91003c61 	add	x1, x3, #0xf
  400ae4:	927df021 	and	x1, x1, #0xfffffffffffffff8
  400ae8:	f9000041 	str	x1, [x2]
  400aec:	f9400061 	ldr	x1, [x3]
  400af0:	17ffffab 	b	40099c <pop_arg+0x40>
  400af4:	11002024 	add	w4, w1, #0x8
  400af8:	7100009f 	cmp	w4, #0x0
  400afc:	b9001844 	str	w4, [x2, #24]
  400b00:	54ffff0c 	b.gt	400ae0 <pop_arg+0x184>
  400b04:	f9400443 	ldr	x3, [x2, #8]
  400b08:	8b21c063 	add	x3, x3, w1, sxtw
  400b0c:	17fffff8 	b	400aec <pop_arg+0x190>
  400b10:	b9401c41 	ldr	w1, [x2, #28]
  400b14:	a9bf7bf3 	stp	x19, x30, [sp, #-16]!
  400b18:	37f80141 	tbnz	w1, #31, 400b40 <pop_arg+0x1e4>
  400b1c:	91003c61 	add	x1, x3, #0xf
  400b20:	927df021 	and	x1, x1, #0xfffffffffffffff8
  400b24:	f9000041 	str	x1, [x2]
  400b28:	fd400060 	ldr	d0, [x3]
  400b2c:	aa0003f3 	mov	x19, x0
  400b30:	9400143e 	bl	405c28 <__extenddftf2>
  400b34:	3d800260 	str	q0, [x19]
  400b38:	a8c17bf3 	ldp	x19, x30, [sp], #16
  400b3c:	d65f03c0 	ret
  400b40:	11004024 	add	w4, w1, #0x10
  400b44:	7100009f 	cmp	w4, #0x0
  400b48:	b9001c44 	str	w4, [x2, #28]
  400b4c:	54fffe8c 	b.gt	400b1c <pop_arg+0x1c0>
  400b50:	f9400843 	ldr	x3, [x2, #16]
  400b54:	8b21c063 	add	x3, x3, w1, sxtw
  400b58:	17fffff4 	b	400b28 <pop_arg+0x1cc>
  400b5c:	b9401c41 	ldr	w1, [x2, #28]
  400b60:	37f80101 	tbnz	w1, #31, 400b80 <pop_arg+0x224>
  400b64:	91003c63 	add	x3, x3, #0xf
  400b68:	927cec63 	and	x3, x3, #0xfffffffffffffff0
  400b6c:	91004061 	add	x1, x3, #0x10
  400b70:	f9000041 	str	x1, [x2]
  400b74:	3dc00060 	ldr	q0, [x3]
  400b78:	3d800000 	str	q0, [x0]
  400b7c:	d65f03c0 	ret
  400b80:	11004024 	add	w4, w1, #0x10
  400b84:	7100009f 	cmp	w4, #0x0
  400b88:	b9001c44 	str	w4, [x2, #28]
  400b8c:	54fffecc 	b.gt	400b64 <pop_arg+0x208>
  400b90:	f9400843 	ldr	x3, [x2, #16]
  400b94:	8b21c063 	add	x3, x3, w1, sxtw
  400b98:	17fffff7 	b	400b74 <pop_arg+0x218>
  400b9c:	d65f03c0 	ret

0000000000400ba0 <fmt_u>:
  400ba0:	d2800143 	mov	x3, #0xa                   	// #10
  400ba4:	b5000060 	cbnz	x0, 400bb0 <fmt_u+0x10>
  400ba8:	aa0103e0 	mov	x0, x1
  400bac:	d65f03c0 	ret
  400bb0:	9ac30804 	udiv	x4, x0, x3
  400bb4:	9b038082 	msub	x2, x4, x3, x0
  400bb8:	aa0403e0 	mov	x0, x4
  400bbc:	1100c042 	add	w2, w2, #0x30
  400bc0:	381ffc22 	strb	w2, [x1, #-1]!
  400bc4:	17fffff8 	b	400ba4 <fmt_u+0x4>

0000000000400bc8 <getint>:
  400bc8:	52999986 	mov	w6, #0xcccc                	// #52428
  400bcc:	aa0003e4 	mov	x4, x0
  400bd0:	72a19986 	movk	w6, #0xccc, lsl #16
  400bd4:	52800000 	mov	w0, #0x0                   	// #0
  400bd8:	12800127 	mov	w7, #0xfffffff6            	// #-10
  400bdc:	12b00008 	mov	w8, #0x7fffffff            	// #2147483647
  400be0:	52800149 	mov	w9, #0xa                   	// #10
  400be4:	f9400083 	ldr	x3, [x4]
  400be8:	39400062 	ldrb	w2, [x3]
  400bec:	5100c042 	sub	w2, w2, #0x30
  400bf0:	7100245f 	cmp	w2, #0x9
  400bf4:	54000049 	b.ls	400bfc <getint+0x34>  // b.plast
  400bf8:	d65f03c0 	ret
  400bfc:	6b06001f 	cmp	w0, w6
  400c00:	54000108 	b.hi	400c20 <getint+0x58>  // b.pmore
  400c04:	1b072005 	madd	w5, w0, w7, w8
  400c08:	1b090801 	madd	w1, w0, w9, w2
  400c0c:	6b05005f 	cmp	w2, w5
  400c10:	5a9fd020 	csinv	w0, w1, wzr, le
  400c14:	91000463 	add	x3, x3, #0x1
  400c18:	f9000083 	str	x3, [x4]
  400c1c:	17fffff2 	b	400be4 <getint+0x1c>
  400c20:	12800000 	mov	w0, #0xffffffff            	// #-1
  400c24:	17fffffc 	b	400c14 <getint+0x4c>

0000000000400c28 <out>:
  400c28:	aa0103e3 	mov	x3, x1
  400c2c:	aa0203e1 	mov	x1, x2
  400c30:	b9400002 	ldr	w2, [x0]
  400c34:	37280082 	tbnz	w2, #5, 400c44 <out+0x1c>
  400c38:	aa0003e2 	mov	x2, x0
  400c3c:	aa0303e0 	mov	x0, x3
  400c40:	1400081e 	b	402cb8 <__fwritex>
  400c44:	d65f03c0 	ret

0000000000400c48 <pad>:
  400c48:	52840005 	mov	w5, #0x2000                	// #8192
  400c4c:	72a00025 	movk	w5, #0x1, lsl #16
  400c50:	6a05009f 	tst	w4, w5
  400c54:	7a420060 	ccmp	w3, w2, #0x0, eq  // eq = none
  400c58:	540003ca 	b.ge	400cd0 <pad+0x88>  // b.tcont
  400c5c:	a9ad53f3 	stp	x19, x20, [sp, #-304]!
  400c60:	4b030053 	sub	w19, w2, w3
  400c64:	7104027f 	cmp	w19, #0x100
  400c68:	52802002 	mov	w2, #0x100                 	// #256
  400c6c:	a9015bf5 	stp	x21, x22, [sp, #16]
  400c70:	9100c3f5 	add	x21, sp, #0x30
  400c74:	aa0003f4 	mov	x20, x0
  400c78:	53001c21 	uxtb	w1, w1
  400c7c:	1a829262 	csel	w2, w19, w2, ls  // ls = plast
  400c80:	aa1503e0 	mov	x0, x21
  400c84:	2a1303f6 	mov	w22, w19
  400c88:	f90013fe 	str	x30, [sp, #32]
  400c8c:	9400061b 	bl	4024f8 <memset>
  400c90:	7103fe7f 	cmp	w19, #0xff
  400c94:	54000128 	b.hi	400cb8 <pad+0x70>  // b.pmore
  400c98:	53001ec2 	uxtb	w2, w22
  400c9c:	aa1503e1 	mov	x1, x21
  400ca0:	aa1403e0 	mov	x0, x20
  400ca4:	97ffffe1 	bl	400c28 <out>
  400ca8:	f94013fe 	ldr	x30, [sp, #32]
  400cac:	a9415bf5 	ldp	x21, x22, [sp, #16]
  400cb0:	a8d353f3 	ldp	x19, x20, [sp], #304
  400cb4:	d65f03c0 	ret
  400cb8:	aa1503e1 	mov	x1, x21
  400cbc:	aa1403e0 	mov	x0, x20
  400cc0:	d2802002 	mov	x2, #0x100                 	// #256
  400cc4:	51040273 	sub	w19, w19, #0x100
  400cc8:	97ffffd8 	bl	400c28 <out>
  400ccc:	17fffff1 	b	400c90 <pad+0x48>
  400cd0:	d65f03c0 	ret
	...

0000000000400ce0 <fmt_fp>:
  400ce0:	9e660006 	fmov	x6, d0
  400ce4:	d14007ff 	sub	sp, sp, #0x1, lsl #12
  400ce8:	9eae0007 	fmov	x7, v0.d[1]
  400cec:	d13583ff 	sub	sp, sp, #0xd60
  400cf0:	a9ba53f3 	stp	x19, x20, [sp, #-96]!
  400cf4:	aa0003f4 	mov	x20, x0
  400cf8:	2a0203f3 	mov	w19, w2
  400cfc:	9e6700c0 	fmov	d0, x6
  400d00:	a9036bf9 	stp	x25, x26, [sp, #48]
  400d04:	aa0703f9 	mov	x25, x7
  400d08:	a9015bf5 	stp	x21, x22, [sp, #16]
  400d0c:	2a0403fa 	mov	w26, w4
  400d10:	a90263f7 	stp	x23, x24, [sp, #32]
  400d14:	2a0103f6 	mov	w22, w1
  400d18:	a90473fb 	stp	x27, x28, [sp, #64]
  400d1c:	2a0303f8 	mov	w24, w3
  400d20:	f9002bfe 	str	x30, [sp, #80]
  400d24:	aa0603fc 	mov	x28, x6
  400d28:	9eaf00e0 	fmov	v0.d[1], x7
  400d2c:	b900bfff 	str	wzr, [sp, #188]
  400d30:	94000734 	bl	402a00 <__signbitl>
  400d34:	340007a0 	cbz	w0, 400e28 <fmt_fp+0x148>
  400d38:	b0000037 	adrp	x23, 405000 <__subtf3+0x370>
  400d3c:	d2410339 	eor	x25, x25, #0x8000000000000000
  400d40:	913ba2e0 	add	x0, x23, #0xee8
  400d44:	52800035 	mov	w21, #0x1                   	// #1
  400d48:	9e670380 	fmov	d0, x28
  400d4c:	f90037e0 	str	x0, [sp, #104]
  400d50:	9eaf0320 	fmov	v0.d[1], x25
  400d54:	94000717 	bl	4029b0 <__fpclassifyl>
  400d58:	7100041f 	cmp	w0, #0x1
  400d5c:	5400082c 	b.gt	400e60 <fmt_fp+0x180>
  400d60:	9e670381 	fmov	d1, x28
  400d64:	b0000020 	adrp	x0, 405000 <__subtf3+0x370>
  400d68:	9e670380 	fmov	d0, x28
  400d6c:	721b035a 	ands	w26, w26, #0x20
  400d70:	913bec00 	add	x0, x0, #0xefb
  400d74:	b0000033 	adrp	x19, 405000 <__subtf3+0x370>
  400d78:	913bfe73 	add	x19, x19, #0xeff
  400d7c:	9a800273 	csel	x19, x19, x0, eq  // eq = none
  400d80:	9eaf0321 	fmov	v1.d[1], x25
  400d84:	9eaf0320 	fmov	v0.d[1], x25
  400d88:	94000d9a 	bl	4043f0 <__eqtf2>
  400d8c:	340000e0 	cbz	w0, 400da8 <fmt_fp+0xc8>
  400d90:	b0000033 	adrp	x19, 405000 <__subtf3+0x370>
  400d94:	b0000020 	adrp	x0, 405000 <__subtf3+0x370>
  400d98:	7100035f 	cmp	w26, #0x0
  400d9c:	913c0e73 	add	x19, x19, #0xf03
  400da0:	913c1c00 	add	x0, x0, #0xf07
  400da4:	9a800273 	csel	x19, x19, x0, eq  // eq = none
  400da8:	11000eb9 	add	w25, w21, #0x3
  400dac:	120f7b04 	and	w4, w24, #0xfffeffff
  400db0:	2a1903e3 	mov	w3, w25
  400db4:	2a1603e2 	mov	w2, w22
  400db8:	aa1403e0 	mov	x0, x20
  400dbc:	52800401 	mov	w1, #0x20                  	// #32
  400dc0:	97ffffa2 	bl	400c48 <pad>
  400dc4:	f94037e1 	ldr	x1, [sp, #104]
  400dc8:	93407ea2 	sxtw	x2, w21
  400dcc:	aa1403e0 	mov	x0, x20
  400dd0:	97ffff96 	bl	400c28 <out>
  400dd4:	aa1303e1 	mov	x1, x19
  400dd8:	aa1403e0 	mov	x0, x20
  400ddc:	d2800062 	mov	x2, #0x3                   	// #3
  400de0:	97ffff92 	bl	400c28 <out>
  400de4:	aa1403e0 	mov	x0, x20
  400de8:	52130304 	eor	w4, w24, #0x2000
  400dec:	2a1903e3 	mov	w3, w25
  400df0:	2a1603e2 	mov	w2, w22
  400df4:	52800401 	mov	w1, #0x20                  	// #32
  400df8:	97ffff94 	bl	400c48 <pad>
  400dfc:	6b16033f 	cmp	w25, w22
  400e00:	1a96a320 	csel	w0, w25, w22, ge  // ge = tcont
  400e04:	a9415bf5 	ldp	x21, x22, [sp, #16]
  400e08:	a94263f7 	ldp	x23, x24, [sp, #32]
  400e0c:	a9436bf9 	ldp	x25, x26, [sp, #48]
  400e10:	a94473fb 	ldp	x27, x28, [sp, #64]
  400e14:	f9402bfe 	ldr	x30, [sp, #80]
  400e18:	a8c653f3 	ldp	x19, x20, [sp], #96
  400e1c:	914007ff 	add	sp, sp, #0x1, lsl #12
  400e20:	913583ff 	add	sp, sp, #0xd60
  400e24:	d65f03c0 	ret
  400e28:	375800d8 	tbnz	w24, #11, 400e40 <fmt_fp+0x160>
  400e2c:	36000138 	tbz	w24, #0, 400e50 <fmt_fp+0x170>
  400e30:	b0000037 	adrp	x23, 405000 <__subtf3+0x370>
  400e34:	52800035 	mov	w21, #0x1                   	// #1
  400e38:	913bbae0 	add	x0, x23, #0xeee
  400e3c:	17ffffc3 	b	400d48 <fmt_fp+0x68>
  400e40:	b0000037 	adrp	x23, 405000 <__subtf3+0x370>
  400e44:	52800035 	mov	w21, #0x1                   	// #1
  400e48:	913baee0 	add	x0, x23, #0xeeb
  400e4c:	17ffffbf 	b	400d48 <fmt_fp+0x68>
  400e50:	b0000037 	adrp	x23, 405000 <__subtf3+0x370>
  400e54:	2a0003f5 	mov	w21, w0
  400e58:	913ba6e0 	add	x0, x23, #0xee9
  400e5c:	17ffffbb 	b	400d48 <fmt_fp+0x68>
  400e60:	9e670380 	fmov	d0, x28
  400e64:	9102f3e0 	add	x0, sp, #0xbc
  400e68:	9eaf0320 	fmov	v0.d[1], x25
  400e6c:	940006e9 	bl	402a10 <frexpl>
  400e70:	4ea01c01 	mov	v1.16b, v0.16b
  400e74:	94000a35 	bl	403748 <__addtf3>
  400e78:	9e660000 	fmov	x0, d0
  400e7c:	9eae0001 	fmov	x1, v0.d[1]
  400e80:	6f00e401 	movi	v1.2d, #0x0
  400e84:	9e670000 	fmov	d0, x0
  400e88:	aa0003f7 	mov	x23, x0
  400e8c:	aa0103fc 	mov	x28, x1
  400e90:	9eaf0020 	fmov	v0.d[1], x1
  400e94:	94000d57 	bl	4043f0 <__eqtf2>
  400e98:	34000080 	cbz	w0, 400ea8 <fmt_fp+0x1c8>
  400e9c:	b940bfe0 	ldr	w0, [sp, #188]
  400ea0:	51000400 	sub	w0, w0, #0x1
  400ea4:	b900bfe0 	str	w0, [sp, #188]
  400ea8:	321b0359 	orr	w25, w26, #0x20
  400eac:	7101873f 	cmp	w25, #0x61
  400eb0:	540018a1 	b.ne	4011c4 <fmt_fp+0x4e4>  // b.any
  400eb4:	721b0341 	ands	w1, w26, #0x20
  400eb8:	f94037e0 	ldr	x0, [sp, #104]
  400ebc:	b9008be1 	str	w1, [sp, #136]
  400ec0:	f94037e1 	ldr	x1, [sp, #104]
  400ec4:	91002400 	add	x0, x0, #0x9
  400ec8:	9a811000 	csel	x0, x0, x1, ne  // ne = any
  400ecc:	71006a7f 	cmp	w19, #0x1a
  400ed0:	f90037e0 	str	x0, [sp, #104]
  400ed4:	11000aa0 	add	w0, w21, #0x2
  400ed8:	b90083e0 	str	w0, [sp, #128]
  400edc:	54000348 	b.hi	400f44 <fmt_fp+0x264>  // b.pmore
  400ee0:	9c005b82 	ldr	q2, 401a50 <fmt_fp+0xd70>
  400ee4:	52800379 	mov	w25, #0x1b                  	// #27
  400ee8:	4b130339 	sub	w25, w25, w19
  400eec:	4ea21c44 	mov	v4.16b, v2.16b
  400ef0:	51000739 	sub	w25, w25, #0x1
  400ef4:	3100073f 	cmn	w25, #0x1
  400ef8:	54000d41 	b.ne	4010a0 <fmt_fp+0x3c0>  // b.any
  400efc:	f94037e0 	ldr	x0, [sp, #104]
  400f00:	39400000 	ldrb	w0, [x0]
  400f04:	7100b41f 	cmp	w0, #0x2d
  400f08:	54000da1 	b.ne	4010bc <fmt_fp+0x3dc>  // b.any
  400f0c:	9e6702e0 	fmov	d0, x23
  400f10:	d2410382 	eor	x2, x28, #0x8000000000000000
  400f14:	4ea21c41 	mov	v1.16b, v2.16b
  400f18:	3d801fe2 	str	q2, [sp, #112]
  400f1c:	9eaf0040 	fmov	v0.d[1], x2
  400f20:	94000f5c 	bl	404c90 <__subtf3>
  400f24:	4ea01c01 	mov	v1.16b, v0.16b
  400f28:	3dc01fe2 	ldr	q2, [sp, #112]
  400f2c:	4ea21c40 	mov	v0.16b, v2.16b
  400f30:	94000a06 	bl	403748 <__addtf3>
  400f34:	9e660000 	fmov	x0, d0
  400f38:	9eae0001 	fmov	x1, v0.d[1]
  400f3c:	aa0003f7 	mov	x23, x0
  400f40:	d241003c 	eor	x28, x1, #0x8000000000000000
  400f44:	b940bfe0 	ldr	w0, [sp, #188]
  400f48:	910303f9 	add	x25, sp, #0xc0
  400f4c:	91003325 	add	x5, x25, #0xc
  400f50:	7100001f 	cmp	w0, #0x0
  400f54:	aa0503e1 	mov	x1, x5
  400f58:	5a80a400 	cneg	w0, w0, lt  // lt = tstop
  400f5c:	93407c00 	sxtw	x0, w0
  400f60:	97ffff10 	bl	400ba0 <fmt_u>
  400f64:	eb05001f 	cmp	x0, x5
  400f68:	54000081 	b.ne	400f78 <fmt_fp+0x298>  // b.any
  400f6c:	52800600 	mov	w0, #0x30                  	// #48
  400f70:	39032fe0 	strb	w0, [sp, #203]
  400f74:	91002f20 	add	x0, x25, #0xb
  400f78:	b940bfe1 	ldr	w1, [sp, #188]
  400f7c:	528005a4 	mov	w4, #0x2d                  	// #45
  400f80:	11003f5a 	add	w26, w26, #0xf
  400f84:	910343f5 	add	x21, sp, #0xd0
  400f88:	7100003f 	cmp	w1, #0x0
  400f8c:	52800561 	mov	w1, #0x2b                  	// #43
  400f90:	1a84a021 	csel	w1, w1, w4, ge  // ge = tcont
  400f94:	381fe01a 	sturb	w26, [x0, #-2]
  400f98:	381ff001 	sturb	w1, [x0, #-1]
  400f9c:	d1000801 	sub	x1, x0, #0x2
  400fa0:	d0000020 	adrp	x0, 406000 <states+0xe0>
  400fa4:	aa1503fb 	mov	x27, x21
  400fa8:	9103c000 	add	x0, x0, #0xf0
  400fac:	f9003be1 	str	x1, [sp, #112]
  400fb0:	f9004be0 	str	x0, [sp, #144]
  400fb4:	121d0300 	and	w0, w24, #0x8
  400fb8:	b9009be0 	str	w0, [sp, #152]
  400fbc:	9e6702e0 	fmov	d0, x23
  400fc0:	910006ba 	add	x26, x21, #0x1
  400fc4:	9eaf0380 	fmov	v0.d[1], x28
  400fc8:	94001260 	bl	405948 <__fixtfsi>
  400fcc:	f9404be1 	ldr	x1, [sp, #144]
  400fd0:	3860c824 	ldrb	w4, [x1, w0, sxtw]
  400fd4:	b9408be1 	ldr	w1, [sp, #136]
  400fd8:	2a040024 	orr	w4, w1, w4
  400fdc:	390002a4 	strb	w4, [x21]
  400fe0:	940012d6 	bl	405b38 <__floatsitf>
  400fe4:	4ea01c01 	mov	v1.16b, v0.16b
  400fe8:	9e6702e0 	fmov	d0, x23
  400fec:	9eaf0380 	fmov	v0.d[1], x28
  400ff0:	94000f28 	bl	404c90 <__subtf3>
  400ff4:	9c0052e1 	ldr	q1, 401a50 <fmt_fp+0xd70>
  400ff8:	94000d42 	bl	404500 <__multf3>
  400ffc:	9e660002 	fmov	x2, d0
  401000:	9eae0003 	fmov	x3, v0.d[1]
  401004:	aa0203e0 	mov	x0, x2
  401008:	aa0003f7 	mov	x23, x0
  40100c:	cb1b0340 	sub	x0, x26, x27
  401010:	f100041f 	cmp	x0, #0x1
  401014:	aa0303fc 	mov	x28, x3
  401018:	54000201 	b.ne	401058 <fmt_fp+0x378>  // b.any
  40101c:	6f00e401 	movi	v1.2d, #0x0
  401020:	9e6702e0 	fmov	d0, x23
  401024:	9eaf0060 	fmov	v0.d[1], x3
  401028:	94000cf2 	bl	4043f0 <__eqtf2>
  40102c:	7100001f 	cmp	w0, #0x0
  401030:	1a9f07e4 	cset	w4, ne  // ne = any
  401034:	7100027f 	cmp	w19, #0x0
  401038:	1a9fd7e0 	cset	w0, gt
  40103c:	2a040000 	orr	w0, w0, w4
  401040:	37000060 	tbnz	w0, #0, 40104c <fmt_fp+0x36c>
  401044:	b9409be0 	ldr	w0, [sp, #152]
  401048:	34000080 	cbz	w0, 401058 <fmt_fp+0x378>
  40104c:	528005c0 	mov	w0, #0x2e                  	// #46
  401050:	91000aba 	add	x26, x21, #0x2
  401054:	390006a0 	strb	w0, [x21, #1]
  401058:	6f00e401 	movi	v1.2d, #0x0
  40105c:	9e6702e0 	fmov	d0, x23
  401060:	9eaf0380 	fmov	v0.d[1], x28
  401064:	94000ce3 	bl	4043f0 <__eqtf2>
  401068:	35000440 	cbnz	w0, 4010f0 <fmt_fp+0x410>
  40106c:	f9403be0 	ldr	x0, [sp, #112]
  401070:	91003339 	add	x25, x25, #0xc
  401074:	b98083f7 	ldrsw	x23, [sp, #128]
  401078:	93407e61 	sxtw	x1, w19
  40107c:	cb000339 	sub	x25, x25, x0
  401080:	d29fffa0 	mov	x0, #0xfffd                	// #65533
  401084:	f2afffe0 	movk	x0, #0x7fff, lsl #16
  401088:	cb190000 	sub	x0, x0, x25
  40108c:	cb170000 	sub	x0, x0, x23
  401090:	eb00003f 	cmp	x1, x0
  401094:	5400032d 	b.le	4010f8 <fmt_fp+0x418>
  401098:	12800000 	mov	w0, #0xffffffff            	// #-1
  40109c:	17ffff5a 	b	400e04 <fmt_fp+0x124>
  4010a0:	4ea41c81 	mov	v1.16b, v4.16b
  4010a4:	4ea21c40 	mov	v0.16b, v2.16b
  4010a8:	3d801fe4 	str	q4, [sp, #112]
  4010ac:	94000d15 	bl	404500 <__multf3>
  4010b0:	4ea01c02 	mov	v2.16b, v0.16b
  4010b4:	3dc01fe4 	ldr	q4, [sp, #112]
  4010b8:	17ffff8e 	b	400ef0 <fmt_fp+0x210>
  4010bc:	9e6702e1 	fmov	d1, x23
  4010c0:	4ea21c40 	mov	v0.16b, v2.16b
  4010c4:	3d801fe2 	str	q2, [sp, #112]
  4010c8:	9eaf0381 	fmov	v1.d[1], x28
  4010cc:	9400099f 	bl	403748 <__addtf3>
  4010d0:	3dc01fe2 	ldr	q2, [sp, #112]
  4010d4:	4ea21c41 	mov	v1.16b, v2.16b
  4010d8:	94000eee 	bl	404c90 <__subtf3>
  4010dc:	9e660000 	fmov	x0, d0
  4010e0:	9eae0001 	fmov	x1, v0.d[1]
  4010e4:	aa0003f7 	mov	x23, x0
  4010e8:	aa0103fc 	mov	x28, x1
  4010ec:	17ffff96 	b	400f44 <fmt_fp+0x264>
  4010f0:	aa1a03f5 	mov	x21, x26
  4010f4:	17ffffb2 	b	400fbc <fmt_fp+0x2dc>
  4010f8:	cb1b035a 	sub	x26, x26, x27
  4010fc:	34000613 	cbz	w19, 4011bc <fmt_fp+0x4dc>
  401100:	d1000740 	sub	x0, x26, #0x1
  401104:	eb00003f 	cmp	x1, x0
  401108:	540005ab 	b.lt	4011bc <fmt_fp+0x4dc>  // b.tstop
  40110c:	11000a73 	add	w19, w19, #0x2
  401110:	0b190273 	add	w19, w19, w25
  401114:	b94083e0 	ldr	w0, [sp, #128]
  401118:	2a1803e4 	mov	w4, w24
  40111c:	2a1603e2 	mov	w2, w22
  401120:	52800401 	mov	w1, #0x20                  	// #32
  401124:	0b000275 	add	w21, w19, w0
  401128:	aa1403e0 	mov	x0, x20
  40112c:	2a1503e3 	mov	w3, w21
  401130:	4b190273 	sub	w19, w19, w25
  401134:	97fffec5 	bl	400c48 <pad>
  401138:	f94037e1 	ldr	x1, [sp, #104]
  40113c:	aa1703e2 	mov	x2, x23
  401140:	aa1403e0 	mov	x0, x20
  401144:	97fffeb9 	bl	400c28 <out>
  401148:	52100304 	eor	w4, w24, #0x10000
  40114c:	2a1503e3 	mov	w3, w21
  401150:	2a1603e2 	mov	w2, w22
  401154:	aa1403e0 	mov	x0, x20
  401158:	52800601 	mov	w1, #0x30                  	// #48
  40115c:	97fffebb 	bl	400c48 <pad>
  401160:	aa1a03e2 	mov	x2, x26
  401164:	aa1b03e1 	mov	x1, x27
  401168:	aa1403e0 	mov	x0, x20
  40116c:	97fffeaf 	bl	400c28 <out>
  401170:	4b1a0262 	sub	w2, w19, w26
  401174:	aa1403e0 	mov	x0, x20
  401178:	52800004 	mov	w4, #0x0                   	// #0
  40117c:	52800003 	mov	w3, #0x0                   	// #0
  401180:	52800601 	mov	w1, #0x30                  	// #48
  401184:	97fffeb1 	bl	400c48 <pad>
  401188:	f9403be1 	ldr	x1, [sp, #112]
  40118c:	aa1903e2 	mov	x2, x25
  401190:	aa1403e0 	mov	x0, x20
  401194:	97fffea5 	bl	400c28 <out>
  401198:	aa1403e0 	mov	x0, x20
  40119c:	52130304 	eor	w4, w24, #0x2000
  4011a0:	2a1503e3 	mov	w3, w21
  4011a4:	2a1603e2 	mov	w2, w22
  4011a8:	52800401 	mov	w1, #0x20                  	// #32
  4011ac:	97fffea7 	bl	400c48 <pad>
  4011b0:	6b1502df 	cmp	w22, w21
  4011b4:	1a95a2c0 	csel	w0, w22, w21, ge  // ge = tcont
  4011b8:	17ffff13 	b	400e04 <fmt_fp+0x124>
  4011bc:	0b190353 	add	w19, w26, w25
  4011c0:	17ffffd5 	b	401114 <fmt_fp+0x434>
  4011c4:	9e6702e0 	fmov	d0, x23
  4011c8:	7100027f 	cmp	w19, #0x0
  4011cc:	6f00e401 	movi	v1.2d, #0x0
  4011d0:	528000c0 	mov	w0, #0x6                   	// #6
  4011d4:	1a80a273 	csel	w19, w19, w0, ge  // ge = tcont
  4011d8:	9eaf0380 	fmov	v0.d[1], x28
  4011dc:	94000c85 	bl	4043f0 <__eqtf2>
  4011e0:	34000180 	cbz	w0, 401210 <fmt_fp+0x530>
  4011e4:	9e6702e0 	fmov	d0, x23
  4011e8:	9c0043c1 	ldr	q1, 401a60 <fmt_fp+0xd80>
  4011ec:	9eaf0380 	fmov	v0.d[1], x28
  4011f0:	94000cc4 	bl	404500 <__multf3>
  4011f4:	9e660000 	fmov	x0, d0
  4011f8:	9eae0001 	fmov	x1, v0.d[1]
  4011fc:	aa0003f7 	mov	x23, x0
  401200:	b940bfe0 	ldr	w0, [sp, #188]
  401204:	aa0103fc 	mov	x28, x1
  401208:	51007000 	sub	w0, w0, #0x1c
  40120c:	b900bfe0 	str	w0, [sp, #188]
  401210:	b940bfe5 	ldr	w5, [sp, #188]
  401214:	d2837f03 	mov	x3, #0x1bf8                	// #7160
  401218:	9103e3e0 	add	x0, sp, #0xf8
  40121c:	8b2363e7 	add	x7, sp, x3
  401220:	710000bf 	cmp	w5, #0x0
  401224:	9a80a0e7 	csel	x7, x7, x0, ge  // ge = tcont
  401228:	aa0703fb 	mov	x27, x7
  40122c:	9e6702e0 	fmov	d0, x23
  401230:	f9003be7 	str	x7, [sp, #112]
  401234:	b9008be5 	str	w5, [sp, #136]
  401238:	9eaf0380 	fmov	v0.d[1], x28
  40123c:	94001203 	bl	405a48 <__fixunstfsi>
  401240:	b8004760 	str	w0, [x27], #4
  401244:	9400125d 	bl	405bb8 <__floatunsitf>
  401248:	4ea01c01 	mov	v1.16b, v0.16b
  40124c:	9e6702e0 	fmov	d0, x23
  401250:	9eaf0380 	fmov	v0.d[1], x28
  401254:	94000e8f 	bl	404c90 <__subtf3>
  401258:	9c0040c1 	ldr	q1, 401a70 <fmt_fp+0xd90>
  40125c:	94000ca9 	bl	404500 <__multf3>
  401260:	9e660000 	fmov	x0, d0
  401264:	9eae0001 	fmov	x1, v0.d[1]
  401268:	6f00e401 	movi	v1.2d, #0x0
  40126c:	9e670000 	fmov	d0, x0
  401270:	aa0003f7 	mov	x23, x0
  401274:	aa0103fc 	mov	x28, x1
  401278:	9eaf0020 	fmov	v0.d[1], x1
  40127c:	94000c5d 	bl	4043f0 <__eqtf2>
  401280:	b9408be5 	ldr	w5, [sp, #136]
  401284:	f9403be7 	ldr	x7, [sp, #112]
  401288:	35fffd20 	cbnz	w0, 40122c <fmt_fp+0x54c>
  40128c:	d2994004 	mov	x4, #0xca00                	// #51712
  401290:	aa0703e6 	mov	x6, x7
  401294:	528003a9 	mov	w9, #0x1d                  	// #29
  401298:	f2a77344 	movk	x4, #0x3b9a, lsl #16
  40129c:	710000bf 	cmp	w5, #0x0
  4012a0:	54001dcc 	b.gt	401658 <fmt_fp+0x978>
  4012a4:	34000040 	cbz	w0, 4012ac <fmt_fp+0x5cc>
  4012a8:	b900bfe5 	str	w5, [sp, #188]
  4012ac:	1100b661 	add	w1, w19, #0x2d
  4012b0:	52800122 	mov	w2, #0x9                   	// #9
  4012b4:	b940bfe0 	ldr	w0, [sp, #188]
  4012b8:	5299400e 	mov	w14, #0xca00                	// #51712
  4012bc:	52800003 	mov	w3, #0x0                   	// #0
  4012c0:	5280002d 	mov	w13, #0x1                   	// #1
  4012c4:	1ac20821 	udiv	w1, w1, w2
  4012c8:	72a7734e 	movk	w14, #0x3b9a, lsl #16
  4012cc:	11000421 	add	w1, w1, #0x1
  4012d0:	d37ef42c 	lsl	x12, x1, #2
  4012d4:	37f81f60 	tbnz	w0, #31, 4016c0 <fmt_fp+0x9e0>
  4012d8:	34000043 	cbz	w3, 4012e0 <fmt_fp+0x600>
  4012dc:	b900bfe0 	str	w0, [sp, #188]
  4012e0:	eb1b00df 	cmp	x6, x27
  4012e4:	52800003 	mov	w3, #0x0                   	// #0
  4012e8:	54000122 	b.cs	40130c <fmt_fp+0x62c>  // b.hs, b.nlast
  4012ec:	cb0600e3 	sub	x3, x7, x6
  4012f0:	52800140 	mov	w0, #0xa                   	// #10
  4012f4:	b94000c1 	ldr	w1, [x6]
  4012f8:	2a0003e2 	mov	w2, w0
  4012fc:	9342fc63 	asr	x3, x3, #2
  401300:	0b030c63 	add	w3, w3, w3, lsl #3
  401304:	6b00003f 	cmp	w1, w0
  401308:	540021c2 	b.cs	401740 <fmt_fp+0xa60>  // b.hs, b.nlast
  40130c:	71019b3f 	cmp	w25, #0x66
  401310:	1a9f1060 	csel	w0, w3, wzr, ne  // ne = any
  401314:	71019f3f 	cmp	w25, #0x67
  401318:	7a400a64 	ccmp	w19, #0x0, #0x4, eq  // eq = none
  40131c:	4b000260 	sub	w0, w19, w0
  401320:	1a9f07e1 	cset	w1, ne  // ne = any
  401324:	4b010000 	sub	w0, w0, w1
  401328:	cb070361 	sub	x1, x27, x7
  40132c:	9342fc21 	asr	x1, x1, #2
  401330:	d1000421 	sub	x1, x1, #0x1
  401334:	8b010c21 	add	x1, x1, x1, lsl #3
  401338:	eb20c03f 	cmp	x1, w0, sxtw
  40133c:	540009ad 	b.le	401470 <fmt_fp+0x790>
  401340:	11409000 	add	w0, w0, #0x24, lsl #12
  401344:	52800121 	mov	w1, #0x9                   	// #9
  401348:	929fff62 	mov	x2, #0xffffffffffff0004    	// #-65532
  40134c:	1ac10c01 	sdiv	w1, w0, w1
  401350:	8b21c8fc 	add	x28, x7, w1, sxtw #2
  401354:	0b010c21 	add	w1, w1, w1, lsl #3
  401358:	4b010000 	sub	w0, w0, w1
  40135c:	52800141 	mov	w1, #0xa                   	// #10
  401360:	8b02039c 	add	x28, x28, x2
  401364:	11000400 	add	w0, w0, #0x1
  401368:	2a0103e2 	mov	w2, w1
  40136c:	7100241f 	cmp	w0, #0x9
  401370:	54001ee1 	b.ne	40174c <fmt_fp+0xa6c>  // b.any
  401374:	b9400380 	ldr	w0, [x28]
  401378:	1ac10804 	udiv	w4, w0, w1
  40137c:	1b018082 	msub	w2, w4, w1, w0
  401380:	35000082 	cbnz	w2, 401390 <fmt_fp+0x6b0>
  401384:	91001388 	add	x8, x28, #0x4
  401388:	eb08037f 	cmp	x27, x8
  40138c:	540006c0 	b.eq	401464 <fmt_fp+0x784>  // b.none
  401390:	37001e44 	tbnz	w4, #0, 401758 <fmt_fp+0xa78>
  401394:	52994004 	mov	w4, #0xca00                	// #51712
  401398:	72a77344 	movk	w4, #0x3b9a, lsl #16
  40139c:	6b04003f 	cmp	w1, w4
  4013a0:	d2800004 	mov	x4, #0x0                   	// #0
  4013a4:	fa5c00c2 	ccmp	x6, x28, #0x2, eq  // eq = none
  4013a8:	54000062 	b.cs	4013b4 <fmt_fp+0x6d4>  // b.hs, b.nlast
  4013ac:	b85fc384 	ldur	w4, [x28, #-4]
  4013b0:	92400084 	and	x4, x4, #0x1
  4013b4:	13017c28 	asr	w8, w1, #1
  4013b8:	d2e80e0b 	mov	x11, #0x4070000000000000    	// #4643211215818981376
  4013bc:	6b08005f 	cmp	w2, w8
  4013c0:	d2e7ffca 	mov	x10, #0x3ffe000000000000    	// #4611123068473966592
  4013c4:	540000e3 	b.cc	4013e0 <fmt_fp+0x700>  // b.lo, b.ul, b.last
  4013c8:	b2513bea 	mov	x10, #0x3fff800000000000    	// #4611545280939032576
  4013cc:	540000a1 	b.ne	4013e0 <fmt_fp+0x700>  // b.any
  4013d0:	91001388 	add	x8, x28, #0x4
  4013d4:	eb08037f 	cmp	x27, x8
  4013d8:	d2e7ffe8 	mov	x8, #0x3fff000000000000    	// #4611404543450677248
  4013dc:	9a8a010a 	csel	x10, x8, x10, eq  // eq = none
  4013e0:	340000f5 	cbz	w21, 4013fc <fmt_fp+0x71c>
  4013e4:	f94037e5 	ldr	x5, [sp, #104]
  4013e8:	394000a8 	ldrb	w8, [x5]
  4013ec:	7100b51f 	cmp	w8, #0x2d
  4013f0:	54000061 	b.ne	4013fc <fmt_fp+0x71c>  // b.any
  4013f4:	d241014a 	eor	x10, x10, #0x8000000000000000
  4013f8:	d2f80e0b 	mov	x11, #0xc070000000000000    	// #-4580160821035794432
  4013fc:	d2800008 	mov	x8, #0x0                   	// #0
  401400:	9e670080 	fmov	d0, x4
  401404:	4b020002 	sub	w2, w0, w2
  401408:	f9004fe6 	str	x6, [sp, #152]
  40140c:	9e670101 	fmov	d1, x8
  401410:	b90093e2 	str	w2, [sp, #144]
  401414:	291407e3 	stp	w3, w1, [sp, #160]
  401418:	f90057e7 	str	x7, [sp, #168]
  40141c:	9eaf0160 	fmov	v0.d[1], x11
  401420:	f9003beb 	str	x11, [sp, #112]
  401424:	9eaf0141 	fmov	v1.d[1], x10
  401428:	f90047e4 	str	x4, [sp, #136]
  40142c:	940008c7 	bl	403748 <__addtf3>
  401430:	4ea01c01 	mov	v1.16b, v0.16b
  401434:	f94047e4 	ldr	x4, [sp, #136]
  401438:	f9403beb 	ldr	x11, [sp, #112]
  40143c:	9e670080 	fmov	d0, x4
  401440:	9eaf0160 	fmov	v0.d[1], x11
  401444:	94000beb 	bl	4043f0 <__eqtf2>
  401448:	b94093e2 	ldr	w2, [sp, #144]
  40144c:	b940a7e1 	ldr	w1, [sp, #164]
  401450:	f9404fe6 	ldr	x6, [sp, #152]
  401454:	f94057e7 	ldr	x7, [sp, #168]
  401458:	35001840 	cbnz	w0, 401760 <fmt_fp+0xa80>
  40145c:	b940a3e3 	ldr	w3, [sp, #160]
  401460:	b9000382 	str	w2, [x28]
  401464:	9100139c 	add	x28, x28, #0x4
  401468:	eb1c037f 	cmp	x27, x28
  40146c:	9a9c937b 	csel	x27, x27, x28, ls  // ls = plast
  401470:	eb06037f 	cmp	x27, x6
  401474:	54000069 	b.ls	401480 <fmt_fp+0x7a0>  // b.plast
  401478:	b85fc360 	ldur	w0, [x27, #-4]
  40147c:	34001a80 	cbz	w0, 4017cc <fmt_fp+0xaec>
  401480:	71019f3f 	cmp	w25, #0x67
  401484:	54000441 	b.ne	40150c <fmt_fp+0x82c>  // b.any
  401488:	7100027f 	cmp	w19, #0x0
  40148c:	1a9f1673 	csinc	w19, w19, wzr, ne  // ne = any
  401490:	6b03027f 	cmp	w19, w3
  401494:	3a44c861 	ccmn	w3, #0x4, #0x1, gt
  401498:	540019eb 	b.lt	4017d4 <fmt_fp+0xaf4>  // b.tstop
  40149c:	11000460 	add	w0, w3, #0x1
  4014a0:	5100075a 	sub	w26, w26, #0x1
  4014a4:	4b000273 	sub	w19, w19, w0
  4014a8:	37180338 	tbnz	w24, #3, 40150c <fmt_fp+0x82c>
  4014ac:	eb06037f 	cmp	x27, x6
  4014b0:	52800120 	mov	w0, #0x9                   	// #9
  4014b4:	54000129 	b.ls	4014d8 <fmt_fp+0x7f8>  // b.plast
  4014b8:	b85fc364 	ldur	w4, [x27, #-4]
  4014bc:	340000e4 	cbz	w4, 4014d8 <fmt_fp+0x7f8>
  4014c0:	52800141 	mov	w1, #0xa                   	// #10
  4014c4:	52800000 	mov	w0, #0x0                   	// #0
  4014c8:	2a0103e8 	mov	w8, w1
  4014cc:	1ac10882 	udiv	w2, w4, w1
  4014d0:	1b019042 	msub	w2, w2, w1, w4
  4014d4:	34001862 	cbz	w2, 4017e0 <fmt_fp+0xb00>
  4014d8:	321b0341 	orr	w1, w26, #0x20
  4014dc:	93407c04 	sxtw	x4, w0
  4014e0:	7101983f 	cmp	w1, #0x66
  4014e4:	cb070361 	sub	x1, x27, x7
  4014e8:	93407e73 	sxtw	x19, w19
  4014ec:	9342fc20 	asr	x0, x1, #2
  4014f0:	d1000400 	sub	x0, x0, #0x1
  4014f4:	8b000c00 	add	x0, x0, x0, lsl #3
  4014f8:	540017a1 	b.ne	4017ec <fmt_fp+0xb0c>  // b.any
  4014fc:	eb040000 	subs	x0, x0, x4
  401500:	9a9f5000 	csel	x0, x0, xzr, pl  // pl = nfrst
  401504:	eb13001f 	cmp	x0, x19
  401508:	9a93d013 	csel	x19, x0, x19, le
  40150c:	d3430f00 	ubfx	x0, x24, #3, #1
  401510:	7100027f 	cmp	w19, #0x0
  401514:	52800039 	mov	w25, #0x1                   	// #1
  401518:	9a990019 	csel	x25, x0, x25, eq  // eq = none
  40151c:	321f77e0 	mov	w0, #0x7ffffffe            	// #2147483646
  401520:	4b190000 	sub	w0, w0, w25
  401524:	6b00027f 	cmp	w19, w0
  401528:	54ffdb8c 	b.gt	401098 <fmt_fp+0x3b8>
  40152c:	321b035c 	orr	w28, w26, #0x20
  401530:	11000660 	add	w0, w19, #0x1
  401534:	71019b9f 	cmp	w28, #0x66
  401538:	0b190019 	add	w25, w0, w25
  40153c:	540015c1 	b.ne	4017f4 <fmt_fp+0xb14>  // b.any
  401540:	12b00000 	mov	w0, #0x7fffffff            	// #2147483647
  401544:	4b190000 	sub	w0, w0, w25
  401548:	6b00007f 	cmp	w3, w0
  40154c:	54ffda6c 	b.gt	401098 <fmt_fp+0x3b8>
  401550:	0b030320 	add	w0, w25, w3
  401554:	7100007f 	cmp	w3, #0x0
  401558:	1a99c019 	csel	w25, w0, w25, gt
  40155c:	12b00000 	mov	w0, #0x7fffffff            	// #2147483647
  401560:	f9003be6 	str	x6, [sp, #112]
  401564:	4b150000 	sub	w0, w0, w21
  401568:	f90047e7 	str	x7, [sp, #136]
  40156c:	6b00033f 	cmp	w25, w0
  401570:	54ffd94c 	b.gt	401098 <fmt_fp+0x3b8>
  401574:	0b150339 	add	w25, w25, w21
  401578:	2a1803e4 	mov	w4, w24
  40157c:	2a1903e3 	mov	w3, w25
  401580:	2a1603e2 	mov	w2, w22
  401584:	aa1403e0 	mov	x0, x20
  401588:	52800401 	mov	w1, #0x20                  	// #32
  40158c:	97fffdaf 	bl	400c48 <pad>
  401590:	f94037e1 	ldr	x1, [sp, #104]
  401594:	93407ea2 	sxtw	x2, w21
  401598:	aa1403e0 	mov	x0, x20
  40159c:	97fffda3 	bl	400c28 <out>
  4015a0:	52100304 	eor	w4, w24, #0x10000
  4015a4:	2a1903e3 	mov	w3, w25
  4015a8:	2a1603e2 	mov	w2, w22
  4015ac:	aa1403e0 	mov	x0, x20
  4015b0:	52800601 	mov	w1, #0x30                  	// #48
  4015b4:	97fffda5 	bl	400c48 <pad>
  4015b8:	71019b9f 	cmp	w28, #0x66
  4015bc:	f9403be6 	ldr	x6, [sp, #112]
  4015c0:	f94047e7 	ldr	x7, [sp, #136]
  4015c4:	54001b01 	b.ne	401924 <fmt_fp+0xc44>  // b.any
  4015c8:	eb0700df 	cmp	x6, x7
  4015cc:	910343fa 	add	x26, sp, #0xd0
  4015d0:	9a8790d7 	csel	x23, x6, x7, ls  // ls = plast
  4015d4:	9100275c 	add	x28, x26, #0x9
  4015d8:	aa1703f5 	mov	x21, x23
  4015dc:	f90037fc 	str	x28, [sp, #104]
  4015e0:	eb0702bf 	cmp	x21, x7
  4015e4:	540014a9 	b.ls	401878 <fmt_fp+0xb98>  // b.plast
  4015e8:	35000053 	cbnz	w19, 4015f0 <fmt_fp+0x910>
  4015ec:	36180198 	tbz	w24, #3, 40161c <fmt_fp+0x93c>
  4015f0:	90000021 	adrp	x1, 405000 <__subtf3+0x370>
  4015f4:	910343f7 	add	x23, sp, #0xd0
  4015f8:	913c2c21 	add	x1, x1, #0xf0b
  4015fc:	aa1403e0 	mov	x0, x20
  401600:	910026fa 	add	x26, x23, #0x9
  401604:	d2800022 	mov	x2, #0x1                   	// #1
  401608:	5280061c 	mov	w28, #0x30                  	// #48
  40160c:	97fffd87 	bl	400c28 <out>
  401610:	7100027f 	cmp	w19, #0x0
  401614:	fa5bc2a2 	ccmp	x21, x27, #0x2, gt
  401618:	54001643 	b.cc	4018e0 <fmt_fp+0xc00>  // b.lo, b.ul, b.last
  40161c:	52800123 	mov	w3, #0x9                   	// #9
  401620:	aa1403e0 	mov	x0, x20
  401624:	0b030262 	add	w2, w19, w3
  401628:	52800004 	mov	w4, #0x0                   	// #0
  40162c:	52800601 	mov	w1, #0x30                  	// #48
  401630:	97fffd86 	bl	400c48 <pad>
  401634:	aa1403e0 	mov	x0, x20
  401638:	52130304 	eor	w4, w24, #0x2000
  40163c:	2a1903e3 	mov	w3, w25
  401640:	2a1603e2 	mov	w2, w22
  401644:	52800401 	mov	w1, #0x20                  	// #32
  401648:	97fffd80 	bl	400c48 <pad>
  40164c:	6b1902df 	cmp	w22, w25
  401650:	1a99a2c0 	csel	w0, w22, w25, ge  // ge = tcont
  401654:	17fffdec 	b	400e04 <fmt_fp+0x124>
  401658:	710074bf 	cmp	w5, #0x1d
  40165c:	d1001363 	sub	x3, x27, #0x4
  401660:	1a89d0a8 	csel	w8, w5, w9, le
  401664:	52800001 	mov	w1, #0x0                   	// #0
  401668:	eb0300df 	cmp	x6, x3
  40166c:	54000169 	b.ls	401698 <fmt_fp+0x9b8>  // b.plast
  401670:	34000061 	cbz	w1, 40167c <fmt_fp+0x99c>
  401674:	b81fc0c1 	stur	w1, [x6, #-4]
  401678:	d10010c6 	sub	x6, x6, #0x4
  40167c:	eb06037f 	cmp	x27, x6
  401680:	54000069 	b.ls	40168c <fmt_fp+0x9ac>  // b.plast
  401684:	b85fc360 	ldur	w0, [x27, #-4]
  401688:	34000180 	cbz	w0, 4016b8 <fmt_fp+0x9d8>
  40168c:	4b0800a5 	sub	w5, w5, w8
  401690:	52800020 	mov	w0, #0x1                   	// #1
  401694:	17ffff02 	b	40129c <fmt_fp+0x5bc>
  401698:	b9400060 	ldr	w0, [x3]
  40169c:	9ac82000 	lsl	x0, x0, x8
  4016a0:	8b214000 	add	x0, x0, w1, uxtw
  4016a4:	9ac40802 	udiv	x2, x0, x4
  4016a8:	9b048041 	msub	x1, x2, x4, x0
  4016ac:	b81fc461 	str	w1, [x3], #-4
  4016b0:	2a0203e1 	mov	w1, w2
  4016b4:	17ffffed 	b	401668 <fmt_fp+0x988>
  4016b8:	d100137b 	sub	x27, x27, #0x4
  4016bc:	17fffff0 	b	40167c <fmt_fp+0x99c>
  4016c0:	3100241f 	cmn	w0, #0x9
  4016c4:	aa0603e8 	mov	x8, x6
  4016c8:	5a80b443 	csneg	w3, w2, w0, lt  // lt = tstop
  4016cc:	52800004 	mov	w4, #0x0                   	// #0
  4016d0:	1ac321aa 	lsl	w10, w13, w3
  4016d4:	1ac329cf 	asr	w15, w14, w3
  4016d8:	5100054a 	sub	w10, w10, #0x1
  4016dc:	eb1b011f 	cmp	x8, x27
  4016e0:	54000223 	b.cc	401724 <fmt_fp+0xa44>  // b.lo, b.ul, b.last
  4016e4:	aa0603e8 	mov	x8, x6
  4016e8:	b8404509 	ldr	w9, [x8], #4
  4016ec:	7100013f 	cmp	w9, #0x0
  4016f0:	9a860106 	csel	x6, x8, x6, eq  // eq = none
  4016f4:	34000064 	cbz	w4, 401700 <fmt_fp+0xa20>
  4016f8:	b9000364 	str	w4, [x27]
  4016fc:	9100137b 	add	x27, x27, #0x4
  401700:	71019b3f 	cmp	w25, #0x66
  401704:	0b030000 	add	w0, w0, w3
  401708:	9a8710c4 	csel	x4, x6, x7, ne  // ne = any
  40170c:	52800023 	mov	w3, #0x1                   	// #1
  401710:	cb040368 	sub	x8, x27, x4
  401714:	8b0c0084 	add	x4, x4, x12
  401718:	eb88083f 	cmp	x1, x8, asr #2
  40171c:	9a9bb09b 	csel	x27, x4, x27, lt  // lt = tstop
  401720:	17fffeed 	b	4012d4 <fmt_fp+0x5f4>
  401724:	b9400109 	ldr	w9, [x8]
  401728:	1ac3252b 	lsr	w11, w9, w3
  40172c:	0b040164 	add	w4, w11, w4
  401730:	b8004504 	str	w4, [x8], #4
  401734:	0a0a0124 	and	w4, w9, w10
  401738:	1b0f7c84 	mul	w4, w4, w15
  40173c:	17ffffe8 	b	4016dc <fmt_fp+0x9fc>
  401740:	1b027c00 	mul	w0, w0, w2
  401744:	11000463 	add	w3, w3, #0x1
  401748:	17fffeef 	b	401304 <fmt_fp+0x624>
  40174c:	1b027c21 	mul	w1, w1, w2
  401750:	11000400 	add	w0, w0, #0x1
  401754:	17ffff06 	b	40136c <fmt_fp+0x68c>
  401758:	d2800024 	mov	x4, #0x1                   	// #1
  40175c:	17ffff16 	b	4013b4 <fmt_fp+0x6d4>
  401760:	0b020021 	add	w1, w1, w2
  401764:	b9000381 	str	w1, [x28]
  401768:	52993fe1 	mov	w1, #0xc9ff                	// #51711
  40176c:	72a77341 	movk	w1, #0x3b9a, lsl #16
  401770:	b9400380 	ldr	w0, [x28]
  401774:	6b01001f 	cmp	w0, w1
  401778:	54000188 	b.hi	4017a8 <fmt_fp+0xac8>  // b.pmore
  40177c:	cb0600e3 	sub	x3, x7, x6
  401780:	52800140 	mov	w0, #0xa                   	// #10
  401784:	b94000c1 	ldr	w1, [x6]
  401788:	2a0003e2 	mov	w2, w0
  40178c:	9342fc63 	asr	x3, x3, #2
  401790:	0b030c63 	add	w3, w3, w3, lsl #3
  401794:	6b00003f 	cmp	w1, w0
  401798:	54ffe663 	b.cc	401464 <fmt_fp+0x784>  // b.lo, b.ul, b.last
  40179c:	1b027c00 	mul	w0, w0, w2
  4017a0:	11000463 	add	w3, w3, #0x1
  4017a4:	17fffffc 	b	401794 <fmt_fp+0xab4>
  4017a8:	b81fc79f 	str	wzr, [x28], #-4
  4017ac:	eb1c00df 	cmp	x6, x28
  4017b0:	54000069 	b.ls	4017bc <fmt_fp+0xadc>  // b.plast
  4017b4:	b81fc0df 	stur	wzr, [x6, #-4]
  4017b8:	d10010c6 	sub	x6, x6, #0x4
  4017bc:	b9400380 	ldr	w0, [x28]
  4017c0:	11000400 	add	w0, w0, #0x1
  4017c4:	b9000380 	str	w0, [x28]
  4017c8:	17ffffea 	b	401770 <fmt_fp+0xa90>
  4017cc:	d100137b 	sub	x27, x27, #0x4
  4017d0:	17ffff28 	b	401470 <fmt_fp+0x790>
  4017d4:	51000b5a 	sub	w26, w26, #0x2
  4017d8:	51000673 	sub	w19, w19, #0x1
  4017dc:	17ffff33 	b	4014a8 <fmt_fp+0x7c8>
  4017e0:	1b087c21 	mul	w1, w1, w8
  4017e4:	11000400 	add	w0, w0, #0x1
  4017e8:	17ffff39 	b	4014cc <fmt_fp+0x7ec>
  4017ec:	8b23c000 	add	x0, x0, w3, sxtw
  4017f0:	17ffff43 	b	4014fc <fmt_fp+0x81c>
  4017f4:	7100007f 	cmp	w3, #0x0
  4017f8:	910333e8 	add	x8, sp, #0xcc
  4017fc:	5a83a460 	cneg	w0, w3, lt  // lt = tstop
  401800:	aa0803e1 	mov	x1, x8
  401804:	f9003be6 	str	x6, [sp, #112]
  401808:	93407c00 	sxtw	x0, w0
  40180c:	b90083e3 	str	w3, [sp, #128]
  401810:	f90047e7 	str	x7, [sp, #136]
  401814:	97fffce3 	bl	400ba0 <fmt_u>
  401818:	b94083e3 	ldr	w3, [sp, #128]
  40181c:	52800602 	mov	w2, #0x30                  	// #48
  401820:	f9403be6 	ldr	x6, [sp, #112]
  401824:	f94047e7 	ldr	x7, [sp, #136]
  401828:	cb000101 	sub	x1, x8, x0
  40182c:	f100043f 	cmp	x1, #0x1
  401830:	5400020d 	b.le	401870 <fmt_fp+0xb90>
  401834:	7100007f 	cmp	w3, #0x0
  401838:	528005a2 	mov	w2, #0x2d                  	// #45
  40183c:	52800561 	mov	w1, #0x2b                  	// #43
  401840:	381fe01a 	sturb	w26, [x0, #-2]
  401844:	1a82a021 	csel	w1, w1, w2, ge  // ge = tcont
  401848:	381ff001 	sturb	w1, [x0, #-1]
  40184c:	d1000801 	sub	x1, x0, #0x2
  401850:	12b00000 	mov	w0, #0x7fffffff            	// #2147483647
  401854:	cb010108 	sub	x8, x8, x1
  401858:	4b190000 	sub	w0, w0, w25
  40185c:	f90043e1 	str	x1, [sp, #128]
  401860:	eb20c11f 	cmp	x8, w0, sxtw
  401864:	54ffc1ac 	b.gt	401098 <fmt_fp+0x3b8>
  401868:	0b080339 	add	w25, w25, w8
  40186c:	17ffff3c 	b	40155c <fmt_fp+0x87c>
  401870:	381ffc02 	strb	w2, [x0, #-1]!
  401874:	17ffffed 	b	401828 <fmt_fp+0xb48>
  401878:	b94002a0 	ldr	w0, [x21]
  40187c:	aa1c03e1 	mov	x1, x28
  401880:	f90043e7 	str	x7, [sp, #128]
  401884:	97fffcc7 	bl	400ba0 <fmt_u>
  401888:	eb1702bf 	cmp	x21, x23
  40188c:	52800601 	mov	w1, #0x30                  	// #48
  401890:	f94043e7 	ldr	x7, [sp, #128]
  401894:	54000101 	b.ne	4018b4 <fmt_fp+0xbd4>  // b.any
  401898:	eb1c001f 	cmp	x0, x28
  40189c:	54000101 	b.ne	4018bc <fmt_fp+0xbdc>  // b.any
  4018a0:	52800600 	mov	w0, #0x30                  	// #48
  4018a4:	390363e0 	strb	w0, [sp, #216]
  4018a8:	91002340 	add	x0, x26, #0x8
  4018ac:	14000004 	b	4018bc <fmt_fp+0xbdc>
  4018b0:	381ffc01 	strb	w1, [x0, #-1]!
  4018b4:	eb1a001f 	cmp	x0, x26
  4018b8:	54ffffc8 	b.hi	4018b0 <fmt_fp+0xbd0>  // b.pmore
  4018bc:	f94037e1 	ldr	x1, [sp, #104]
  4018c0:	910012b5 	add	x21, x21, #0x4
  4018c4:	f90043e7 	str	x7, [sp, #128]
  4018c8:	cb000022 	sub	x2, x1, x0
  4018cc:	aa0003e1 	mov	x1, x0
  4018d0:	aa1403e0 	mov	x0, x20
  4018d4:	97fffcd5 	bl	400c28 <out>
  4018d8:	f94043e7 	ldr	x7, [sp, #128]
  4018dc:	17ffff41 	b	4015e0 <fmt_fp+0x900>
  4018e0:	b94002a0 	ldr	w0, [x21]
  4018e4:	aa1a03e1 	mov	x1, x26
  4018e8:	97fffcae 	bl	400ba0 <fmt_u>
  4018ec:	eb17001f 	cmp	x0, x23
  4018f0:	54000168 	b.hi	40191c <fmt_fp+0xc3c>  // b.pmore
  4018f4:	7100267f 	cmp	w19, #0x9
  4018f8:	52800122 	mov	w2, #0x9                   	// #9
  4018fc:	1a82d262 	csel	w2, w19, w2, le
  401900:	aa0003e1 	mov	x1, x0
  401904:	aa1403e0 	mov	x0, x20
  401908:	910012b5 	add	x21, x21, #0x4
  40190c:	93407c42 	sxtw	x2, w2
  401910:	51002673 	sub	w19, w19, #0x9
  401914:	97fffcc5 	bl	400c28 <out>
  401918:	17ffff3e 	b	401610 <fmt_fp+0x930>
  40191c:	381ffc1c 	strb	w28, [x0, #-1]!
  401920:	17fffff3 	b	4018ec <fmt_fp+0xc0c>
  401924:	910010c0 	add	x0, x6, #0x4
  401928:	eb06037f 	cmp	x27, x6
  40192c:	910343f7 	add	x23, sp, #0xd0
  401930:	9a9b901b 	csel	x27, x0, x27, ls  // ls = plast
  401934:	910026fa 	add	x26, x23, #0x9
  401938:	aa0603f5 	mov	x21, x6
  40193c:	f90037fa 	str	x26, [sp, #104]
  401940:	7100027f 	cmp	w19, #0x0
  401944:	fa5ba2a2 	ccmp	x21, x27, #0x2, ge  // ge = tcont
  401948:	540001c3 	b.cc	401980 <fmt_fp+0xca0>  // b.lo, b.ul, b.last
  40194c:	52800243 	mov	w3, #0x12                  	// #18
  401950:	aa1403e0 	mov	x0, x20
  401954:	0b030262 	add	w2, w19, w3
  401958:	52800004 	mov	w4, #0x0                   	// #0
  40195c:	52800601 	mov	w1, #0x30                  	// #48
  401960:	97fffcba 	bl	400c48 <pad>
  401964:	f94043e0 	ldr	x0, [sp, #128]
  401968:	910333e2 	add	x2, sp, #0xcc
  40196c:	cb000042 	sub	x2, x2, x0
  401970:	aa0003e1 	mov	x1, x0
  401974:	aa1403e0 	mov	x0, x20
  401978:	97fffcac 	bl	400c28 <out>
  40197c:	17ffff2e 	b	401634 <fmt_fp+0x954>
  401980:	b94002a0 	ldr	w0, [x21]
  401984:	aa1a03e1 	mov	x1, x26
  401988:	f9003be6 	str	x6, [sp, #112]
  40198c:	97fffc85 	bl	400ba0 <fmt_u>
  401990:	eb1a001f 	cmp	x0, x26
  401994:	f9403be6 	ldr	x6, [sp, #112]
  401998:	54000081 	b.ne	4019a8 <fmt_fp+0xcc8>  // b.any
  40199c:	52800600 	mov	w0, #0x30                  	// #48
  4019a0:	390363e0 	strb	w0, [sp, #216]
  4019a4:	910022e0 	add	x0, x23, #0x8
  4019a8:	eb0602bf 	cmp	x21, x6
  4019ac:	540002c0 	b.eq	401a04 <fmt_fp+0xd24>  // b.none
  4019b0:	aa0003fc 	mov	x28, x0
  4019b4:	52800600 	mov	w0, #0x30                  	// #48
  4019b8:	eb17039f 	cmp	x28, x23
  4019bc:	54000208 	b.hi	4019fc <fmt_fp+0xd1c>  // b.pmore
  4019c0:	f94037e0 	ldr	x0, [sp, #104]
  4019c4:	93407e62 	sxtw	x2, w19
  4019c8:	aa1c03e1 	mov	x1, x28
  4019cc:	f90047e6 	str	x6, [sp, #136]
  4019d0:	cb1c0004 	sub	x4, x0, x28
  4019d4:	aa1403e0 	mov	x0, x20
  4019d8:	eb04005f 	cmp	x2, x4
  4019dc:	f9003be4 	str	x4, [sp, #112]
  4019e0:	9a84d042 	csel	x2, x2, x4, le
  4019e4:	910012b5 	add	x21, x21, #0x4
  4019e8:	97fffc90 	bl	400c28 <out>
  4019ec:	f9403be4 	ldr	x4, [sp, #112]
  4019f0:	f94047e6 	ldr	x6, [sp, #136]
  4019f4:	4b040273 	sub	w19, w19, w4
  4019f8:	17ffffd2 	b	401940 <fmt_fp+0xc60>
  4019fc:	381fff80 	strb	w0, [x28, #-1]!
  401a00:	17ffffee 	b	4019b8 <fmt_fp+0xcd8>
  401a04:	aa0003e1 	mov	x1, x0
  401a08:	9100041c 	add	x28, x0, #0x1
  401a0c:	aa1403e0 	mov	x0, x20
  401a10:	d2800022 	mov	x2, #0x1                   	// #1
  401a14:	f9003be6 	str	x6, [sp, #112]
  401a18:	97fffc84 	bl	400c28 <out>
  401a1c:	f9403be6 	ldr	x6, [sp, #112]
  401a20:	35000053 	cbnz	w19, 401a28 <fmt_fp+0xd48>
  401a24:	361ffcf8 	tbz	w24, #3, 4019c0 <fmt_fp+0xce0>
  401a28:	90000021 	adrp	x1, 405000 <__subtf3+0x370>
  401a2c:	aa1403e0 	mov	x0, x20
  401a30:	913c2c21 	add	x1, x1, #0xf0b
  401a34:	d2800022 	mov	x2, #0x1                   	// #1
  401a38:	f9003be6 	str	x6, [sp, #112]
  401a3c:	97fffc7b 	bl	400c28 <out>
  401a40:	f9403be6 	ldr	x6, [sp, #112]
  401a44:	17ffffdf 	b	4019c0 <fmt_fp+0xce0>
  401a48:	d503201f 	nop
  401a4c:	d503201f 	nop
	...
  401a5c:	40030000 	.word	0x40030000
	...
  401a6c:	401b0000 	.word	0x401b0000
	...
  401a78:	50000000 	.word	0x50000000
  401a7c:	401cdcd6 	.word	0x401cdcd6

0000000000401a80 <printf_core>:
  401a80:	a9af53f3 	stp	x19, x20, [sp, #-272]!
  401a84:	52800013 	mov	w19, #0x0                   	// #0
  401a88:	a9015bf5 	stp	x21, x22, [sp, #16]
  401a8c:	aa0003f6 	mov	x22, x0
  401a90:	910363e0 	add	x0, sp, #0xd8
  401a94:	a90263f7 	stp	x23, x24, [sp, #32]
  401a98:	aa0203f7 	mov	x23, x2
  401a9c:	9100dc18 	add	x24, x0, #0x37
  401aa0:	a9036bf9 	stp	x25, x26, [sp, #48]
  401aa4:	52800015 	mov	w21, #0x0                   	// #0
  401aa8:	a90473fb 	stp	x27, x28, [sp, #64]
  401aac:	f9002bfe 	str	x30, [sp, #80]
  401ab0:	b9006fff 	str	wzr, [sp, #108]
  401ab4:	a90703e4 	stp	x4, x0, [sp, #112]
  401ab8:	f90043e3 	str	x3, [sp, #128]
  401abc:	f9005be1 	str	x1, [sp, #176]
  401ac0:	12b00000 	mov	w0, #0x7fffffff            	// #2147483647
  401ac4:	4b150000 	sub	w0, w0, w21
  401ac8:	6b00027f 	cmp	w19, w0
  401acc:	5400048c 	b.gt	401b5c <printf_core+0xdc>
  401ad0:	f9405bfb 	ldr	x27, [sp, #176]
  401ad4:	0b1302b5 	add	w21, w21, w19
  401ad8:	39400360 	ldrb	w0, [x27]
  401adc:	35000220 	cbnz	w0, 401b20 <printf_core+0xa0>
  401ae0:	b5001cf6 	cbnz	x22, 401e7c <printf_core+0x3fc>
  401ae4:	b9406fe0 	ldr	w0, [sp, #108]
  401ae8:	d2800033 	mov	x19, #0x1                   	// #1
  401aec:	34001c60 	cbz	w0, 401e78 <printf_core+0x3f8>
  401af0:	f9403be0 	ldr	x0, [sp, #112]
  401af4:	b8737801 	ldr	w1, [x0, x19, lsl #2]
  401af8:	35004361 	cbnz	w1, 402364 <printf_core+0x8e4>
  401afc:	f9403be0 	ldr	x0, [sp, #112]
  401b00:	b8737800 	ldr	w0, [x0, x19, lsl #2]
  401b04:	350012c0 	cbnz	w0, 401d5c <printf_core+0x2dc>
  401b08:	91000673 	add	x19, x19, #0x1
  401b0c:	f1002a7f 	cmp	x19, #0xa
  401b10:	54ffff61 	b.ne	401afc <printf_core+0x7c>  // b.any
  401b14:	1400021b 	b	402380 <printf_core+0x900>
  401b18:	91000463 	add	x3, x3, #0x1
  401b1c:	f9005be3 	str	x3, [sp, #176]
  401b20:	f9405be3 	ldr	x3, [sp, #176]
  401b24:	39400060 	ldrb	w0, [x3]
  401b28:	7100941f 	cmp	w0, #0x25
  401b2c:	7a401804 	ccmp	w0, #0x0, #0x4, ne  // ne = any
  401b30:	54ffff41 	b.ne	401b18 <printf_core+0x98>  // b.any
  401b34:	f9405be0 	ldr	x0, [sp, #176]
  401b38:	39400001 	ldrb	w1, [x0]
  401b3c:	7100943f 	cmp	w1, #0x25
  401b40:	54000140 	b.eq	401b68 <printf_core+0xe8>  // b.none
  401b44:	12b00000 	mov	w0, #0x7fffffff            	// #2147483647
  401b48:	cb1b007c 	sub	x28, x3, x27
  401b4c:	4b150000 	sub	w0, w0, w21
  401b50:	b9008be0 	str	w0, [sp, #136]
  401b54:	eb20c39f 	cmp	x28, w0, sxtw
  401b58:	5400016d 	b.le	401b84 <printf_core+0x104>
  401b5c:	94000370 	bl	40291c <__errno_location>
  401b60:	52800961 	mov	w1, #0x4b                  	// #75
  401b64:	14000080 	b	401d64 <printf_core+0x2e4>
  401b68:	39400401 	ldrb	w1, [x0, #1]
  401b6c:	7100943f 	cmp	w1, #0x25
  401b70:	54fffea1 	b.ne	401b44 <printf_core+0xc4>  // b.any
  401b74:	91000800 	add	x0, x0, #0x2
  401b78:	91000463 	add	x3, x3, #0x1
  401b7c:	f9005be0 	str	x0, [sp, #176]
  401b80:	17ffffed 	b	401b34 <printf_core+0xb4>
  401b84:	2a1c03f3 	mov	w19, w28
  401b88:	b40000b6 	cbz	x22, 401b9c <printf_core+0x11c>
  401b8c:	93407f82 	sxtw	x2, w28
  401b90:	aa1b03e1 	mov	x1, x27
  401b94:	aa1603e0 	mov	x0, x22
  401b98:	97fffc24 	bl	400c28 <out>
  401b9c:	35fff93c 	cbnz	w28, 401ac0 <printf_core+0x40>
  401ba0:	f9405be0 	ldr	x0, [sp, #176]
  401ba4:	3940040a 	ldrb	w10, [x0, #1]
  401ba8:	5100c14a 	sub	w10, w10, #0x30
  401bac:	7100255f 	cmp	w10, #0x9
  401bb0:	54000b88 	b.hi	401d20 <printf_core+0x2a0>  // b.pmore
  401bb4:	39400801 	ldrb	w1, [x0, #2]
  401bb8:	7100903f 	cmp	w1, #0x24
  401bbc:	54000b21 	b.ne	401d20 <printf_core+0x2a0>  // b.any
  401bc0:	91000c00 	add	x0, x0, #0x3
  401bc4:	f9005be0 	str	x0, [sp, #176]
  401bc8:	52800020 	mov	w0, #0x1                   	// #1
  401bcc:	b9006fe0 	str	w0, [sp, #108]
  401bd0:	52800019 	mov	w25, #0x0                   	// #0
  401bd4:	52800025 	mov	w5, #0x1                   	// #1
  401bd8:	f9405be0 	ldr	x0, [sp, #176]
  401bdc:	39400002 	ldrb	w2, [x0]
  401be0:	51008041 	sub	w1, w2, #0x20
  401be4:	71007c3f 	cmp	w1, #0x1f
  401be8:	54000a49 	b.ls	401d30 <printf_core+0x2b0>  // b.plast
  401bec:	7100a85f 	cmp	w2, #0x2a
  401bf0:	54000e61 	b.ne	401dbc <printf_core+0x33c>  // b.any
  401bf4:	39400401 	ldrb	w1, [x0, #1]
  401bf8:	5100c022 	sub	w2, w1, #0x30
  401bfc:	7100245f 	cmp	w2, #0x9
  401c00:	54000aa8 	b.hi	401d54 <printf_core+0x2d4>  // b.pmore
  401c04:	39400802 	ldrb	w2, [x0, #2]
  401c08:	7100905f 	cmp	w2, #0x24
  401c0c:	54000a41 	b.ne	401d54 <printf_core+0x2d4>  // b.any
  401c10:	f9403be2 	ldr	x2, [sp, #112]
  401c14:	91000c00 	add	x0, x0, #0x3
  401c18:	8b210841 	add	x1, x2, w1, uxtb #2
  401c1c:	52800142 	mov	w2, #0xa                   	// #10
  401c20:	b8140022 	stur	w2, [x1, #-192]
  401c24:	92805fe2 	mov	x2, #0xfffffffffffffd00    	// #-768
  401c28:	385fe001 	ldurb	w1, [x0, #-2]
  401c2c:	f9005be0 	str	x0, [sp, #176]
  401c30:	52800020 	mov	w0, #0x1                   	// #1
  401c34:	8b215041 	add	x1, x2, w1, uxtw #4
  401c38:	f94043e2 	ldr	x2, [sp, #128]
  401c3c:	b9006fe0 	str	w0, [sp, #108]
  401c40:	b8616854 	ldr	w20, [x2, x1]
  401c44:	36f80074 	tbz	w20, #31, 401c50 <printf_core+0x1d0>
  401c48:	32130339 	orr	w25, w25, #0x2000
  401c4c:	4b1403f4 	neg	w20, w20
  401c50:	f9405be0 	ldr	x0, [sp, #176]
  401c54:	39400001 	ldrb	w1, [x0]
  401c58:	7100b83f 	cmp	w1, #0x2e
  401c5c:	54000f01 	b.ne	401e3c <printf_core+0x3bc>  // b.any
  401c60:	39400401 	ldrb	w1, [x0, #1]
  401c64:	7100a83f 	cmp	w1, #0x2a
  401c68:	54000dc1 	b.ne	401e20 <printf_core+0x3a0>  // b.any
  401c6c:	39400801 	ldrb	w1, [x0, #2]
  401c70:	5100c022 	sub	w2, w1, #0x30
  401c74:	7100245f 	cmp	w2, #0x9
  401c78:	54000ac8 	b.hi	401dd0 <printf_core+0x350>  // b.pmore
  401c7c:	39400c02 	ldrb	w2, [x0, #3]
  401c80:	7100905f 	cmp	w2, #0x24
  401c84:	54000a61 	b.ne	401dd0 <printf_core+0x350>  // b.any
  401c88:	f9403be2 	ldr	x2, [sp, #112]
  401c8c:	91001000 	add	x0, x0, #0x4
  401c90:	8b210841 	add	x1, x2, w1, uxtb #2
  401c94:	52800142 	mov	w2, #0xa                   	// #10
  401c98:	b8140022 	stur	w2, [x1, #-192]
  401c9c:	92805fe2 	mov	x2, #0xfffffffffffffd00    	// #-768
  401ca0:	385fe001 	ldurb	w1, [x0, #-2]
  401ca4:	8b215041 	add	x1, x2, w1, uxtw #4
  401ca8:	f94043e2 	ldr	x2, [sp, #128]
  401cac:	b861685a 	ldr	w26, [x2, x1]
  401cb0:	2a3a03e9 	mvn	w9, w26
  401cb4:	f9005be0 	str	x0, [sp, #176]
  401cb8:	531f7d29 	lsr	w9, w9, #31
  401cbc:	90000022 	adrp	x2, 405000 <__subtf3+0x370>
  401cc0:	52800005 	mov	w5, #0x0                   	// #0
  401cc4:	913c8042 	add	x2, x2, #0xf20
  401cc8:	d2800744 	mov	x4, #0x3a                  	// #58
  401ccc:	f9405be0 	ldr	x0, [sp, #176]
  401cd0:	39400001 	ldrb	w1, [x0]
  401cd4:	51010421 	sub	w1, w1, #0x41
  401cd8:	7100e43f 	cmp	w1, #0x39
  401cdc:	54000408 	b.hi	401d5c <printf_core+0x2dc>  // b.pmore
  401ce0:	91000401 	add	x1, x0, #0x1
  401ce4:	f9005be1 	str	x1, [sp, #176]
  401ce8:	39400001 	ldrb	w1, [x0]
  401cec:	2a0503e0 	mov	w0, w5
  401cf0:	51010421 	sub	w1, w1, #0x41
  401cf4:	9b040800 	madd	x0, x0, x4, x2
  401cf8:	3861c801 	ldrb	w1, [x0, w1, sxtw]
  401cfc:	51000420 	sub	w0, w1, #0x1
  401d00:	71001c1f 	cmp	w0, #0x7
  401d04:	54000a29 	b.ls	401e48 <printf_core+0x3c8>  // b.plast
  401d08:	340002a1 	cbz	w1, 401d5c <printf_core+0x2dc>
  401d0c:	71006c3f 	cmp	w1, #0x1b
  401d10:	54000a01 	b.ne	401e50 <printf_core+0x3d0>  // b.any
  401d14:	36f8024a 	tbz	w10, #31, 401d5c <printf_core+0x2dc>
  401d18:	b5000d16 	cbnz	x22, 401eb8 <printf_core+0x438>
  401d1c:	17ffff69 	b	401ac0 <printf_core+0x40>
  401d20:	91000400 	add	x0, x0, #0x1
  401d24:	1280000a 	mov	w10, #0xffffffff            	// #-1
  401d28:	f9005be0 	str	x0, [sp, #176]
  401d2c:	17ffffa9 	b	401bd0 <printf_core+0x150>
  401d30:	52851123 	mov	w3, #0x2889                	// #10377
  401d34:	72a00023 	movk	w3, #0x1, lsl #16
  401d38:	1ac12464 	lsr	w4, w3, w1
  401d3c:	3607f584 	tbz	w4, #0, 401bec <printf_core+0x16c>
  401d40:	1ac120a1 	lsl	w1, w5, w1
  401d44:	91000400 	add	x0, x0, #0x1
  401d48:	2a010339 	orr	w25, w25, w1
  401d4c:	f9005be0 	str	x0, [sp, #176]
  401d50:	17ffffa2 	b	401bd8 <printf_core+0x158>
  401d54:	b9406fe1 	ldr	w1, [sp, #108]
  401d58:	340000c1 	cbz	w1, 401d70 <printf_core+0x2f0>
  401d5c:	940002f0 	bl	40291c <__errno_location>
  401d60:	528002c1 	mov	w1, #0x16                  	// #22
  401d64:	b9000001 	str	w1, [x0]
  401d68:	12800015 	mov	w21, #0xffffffff            	// #-1
  401d6c:	14000044 	b	401e7c <printf_core+0x3fc>
  401d70:	2a1c03f4 	mov	w20, w28
  401d74:	b4000116 	cbz	x22, 401d94 <printf_core+0x314>
  401d78:	b9401ae2 	ldr	w2, [x23, #24]
  401d7c:	f94002e1 	ldr	x1, [x23]
  401d80:	37f80102 	tbnz	w2, #31, 401da0 <printf_core+0x320>
  401d84:	91002c22 	add	x2, x1, #0xb
  401d88:	927df042 	and	x2, x2, #0xfffffffffffffff8
  401d8c:	f90002e2 	str	x2, [x23]
  401d90:	b9400034 	ldr	w20, [x1]
  401d94:	91000400 	add	x0, x0, #0x1
  401d98:	f9005be0 	str	x0, [sp, #176]
  401d9c:	17ffffaa 	b	401c44 <printf_core+0x1c4>
  401da0:	11002044 	add	w4, w2, #0x8
  401da4:	7100009f 	cmp	w4, #0x0
  401da8:	b9001ae4 	str	w4, [x23, #24]
  401dac:	54fffecc 	b.gt	401d84 <printf_core+0x304>
  401db0:	f94006e1 	ldr	x1, [x23, #8]
  401db4:	8b22c021 	add	x1, x1, w2, sxtw
  401db8:	17fffff6 	b	401d90 <printf_core+0x310>
  401dbc:	9102c3e0 	add	x0, sp, #0xb0
  401dc0:	97fffb82 	bl	400bc8 <getint>
  401dc4:	2a0003f4 	mov	w20, w0
  401dc8:	36fff440 	tbz	w0, #31, 401c50 <printf_core+0x1d0>
  401dcc:	17ffff64 	b	401b5c <printf_core+0xdc>
  401dd0:	b9406fe1 	ldr	w1, [sp, #108]
  401dd4:	35fffc41 	cbnz	w1, 401d5c <printf_core+0x2dc>
  401dd8:	2a1c03fa 	mov	w26, w28
  401ddc:	b4000116 	cbz	x22, 401dfc <printf_core+0x37c>
  401de0:	b9401ae2 	ldr	w2, [x23, #24]
  401de4:	f94002e1 	ldr	x1, [x23]
  401de8:	37f800e2 	tbnz	w2, #31, 401e04 <printf_core+0x384>
  401dec:	91002c22 	add	x2, x1, #0xb
  401df0:	927df042 	and	x2, x2, #0xfffffffffffffff8
  401df4:	f90002e2 	str	x2, [x23]
  401df8:	b940003a 	ldr	w26, [x1]
  401dfc:	91000800 	add	x0, x0, #0x2
  401e00:	17ffffac 	b	401cb0 <printf_core+0x230>
  401e04:	11002044 	add	w4, w2, #0x8
  401e08:	7100009f 	cmp	w4, #0x0
  401e0c:	b9001ae4 	str	w4, [x23, #24]
  401e10:	54fffeec 	b.gt	401dec <printf_core+0x36c>
  401e14:	f94006e1 	ldr	x1, [x23, #8]
  401e18:	8b22c021 	add	x1, x1, w2, sxtw
  401e1c:	17fffff7 	b	401df8 <printf_core+0x378>
  401e20:	91000401 	add	x1, x0, #0x1
  401e24:	910443e0 	add	x0, sp, #0x110
  401e28:	f81a0c01 	str	x1, [x0, #-96]!
  401e2c:	97fffb67 	bl	400bc8 <getint>
  401e30:	2a0003fa 	mov	w26, w0
  401e34:	52800029 	mov	w9, #0x1                   	// #1
  401e38:	17ffffa1 	b	401cbc <printf_core+0x23c>
  401e3c:	2a1c03e9 	mov	w9, w28
  401e40:	1280001a 	mov	w26, #0xffffffff            	// #-1
  401e44:	17ffff9e 	b	401cbc <printf_core+0x23c>
  401e48:	2a0103e5 	mov	w5, w1
  401e4c:	17ffffa0 	b	401ccc <printf_core+0x24c>
  401e50:	37f8012a 	tbnz	w10, #31, 401e74 <printf_core+0x3f4>
  401e54:	f9403be0 	ldr	x0, [sp, #112]
  401e58:	93407d4a 	sxtw	x10, w10
  401e5c:	b82a7801 	str	w1, [x0, x10, lsl #2]
  401e60:	f94043e0 	ldr	x0, [sp, #128]
  401e64:	8b0a100a 	add	x10, x0, x10, lsl #4
  401e68:	a9400540 	ldp	x0, x1, [x10]
  401e6c:	a90c07e0 	stp	x0, x1, [sp, #192]
  401e70:	17ffffaa 	b	401d18 <printf_core+0x298>
  401e74:	b5000156 	cbnz	x22, 401e9c <printf_core+0x41c>
  401e78:	52800015 	mov	w21, #0x0                   	// #0
  401e7c:	2a1503e0 	mov	w0, w21
  401e80:	f9402bfe 	ldr	x30, [sp, #80]
  401e84:	a9415bf5 	ldp	x21, x22, [sp, #16]
  401e88:	a94263f7 	ldp	x23, x24, [sp, #32]
  401e8c:	a9436bf9 	ldp	x25, x26, [sp, #48]
  401e90:	a94473fb 	ldp	x27, x28, [sp, #64]
  401e94:	a8d153f3 	ldp	x19, x20, [sp], #272
  401e98:	d65f03c0 	ret
  401e9c:	aa1703e2 	mov	x2, x23
  401ea0:	910303e0 	add	x0, sp, #0xc0
  401ea4:	b90093e9 	str	w9, [sp, #144]
  401ea8:	b9009be5 	str	w5, [sp, #152]
  401eac:	97fffaac 	bl	40095c <pop_arg>
  401eb0:	b94093e9 	ldr	w9, [sp, #144]
  401eb4:	b9409be5 	ldr	w5, [sp, #152]
  401eb8:	f9405be0 	ldr	x0, [sp, #176]
  401ebc:	385ff004 	ldurb	w4, [x0, #-1]
  401ec0:	340000a5 	cbz	w5, 401ed4 <printf_core+0x454>
  401ec4:	12000c81 	and	w1, w4, #0xf
  401ec8:	121a7880 	and	w0, w4, #0xffffffdf
  401ecc:	71000c3f 	cmp	w1, #0x3
  401ed0:	1a840004 	csel	w4, w0, w4, eq  // eq = none
  401ed4:	f273033f 	tst	x25, #0x2000
  401ed8:	120f7b20 	and	w0, w25, #0xfffeffff
  401edc:	51010481 	sub	w1, w4, #0x41
  401ee0:	1a991019 	csel	w25, w0, w25, ne  // ne = any
  401ee4:	7100dc3f 	cmp	w1, #0x37
  401ee8:	54002308 	b.hi	402348 <printf_core+0x8c8>  // b.pmore
  401eec:	90000020 	adrp	x0, 405000 <__subtf3+0x370>
  401ef0:	9139a000 	add	x0, x0, #0xe68
  401ef4:	78615800 	ldrh	w0, [x0, w1, uxtw #1]
  401ef8:	10000061 	adr	x1, 401f04 <printf_core+0x484>
  401efc:	8b20a820 	add	x0, x1, w0, sxth #2
  401f00:	d61f0000 	br	x0
  401f04:	71001cbf 	cmp	w5, #0x7
  401f08:	54ffddc8 	b.hi	401ac0 <printf_core+0x40>  // b.pmore
  401f0c:	90000020 	adrp	x0, 405000 <__subtf3+0x370>
  401f10:	913b6000 	add	x0, x0, #0xed8
  401f14:	78655800 	ldrh	w0, [x0, w5, uxtw #1]
  401f18:	10000061 	adr	x1, 401f24 <printf_core+0x4a4>
  401f1c:	8b20a820 	add	x0, x1, w0, sxth #2
  401f20:	d61f0000 	br	x0
  401f24:	f94063e0 	ldr	x0, [sp, #192]
  401f28:	b9000015 	str	w21, [x0]
  401f2c:	17fffee5 	b	401ac0 <printf_core+0x40>
  401f30:	f94063e0 	ldr	x0, [sp, #192]
  401f34:	79000015 	strh	w21, [x0]
  401f38:	17fffee2 	b	401ac0 <printf_core+0x40>
  401f3c:	f94063e0 	ldr	x0, [sp, #192]
  401f40:	39000015 	strb	w21, [x0]
  401f44:	17fffedf 	b	401ac0 <printf_core+0x40>
  401f48:	f94063e1 	ldr	x1, [sp, #192]
  401f4c:	93407ea0 	sxtw	x0, w21
  401f50:	f9000020 	str	x0, [x1]
  401f54:	17fffedb 	b	401ac0 <printf_core+0x40>
  401f58:	7100435f 	cmp	w26, #0x10
  401f5c:	52800200 	mov	w0, #0x10                  	// #16
  401f60:	1a80235a 	csel	w26, w26, w0, cs  // cs = hs, nlast
  401f64:	321d0339 	orr	w25, w25, #0x8
  401f68:	52800f04 	mov	w4, #0x78                  	// #120
  401f6c:	f9403fe1 	ldr	x1, [sp, #120]
  401f70:	121b0085 	and	w5, w4, #0x20
  401f74:	f94063ea 	ldr	x10, [sp, #192]
  401f78:	9100dc3b 	add	x27, x1, #0x37
  401f7c:	b0000021 	adrp	x1, 406000 <states+0xe0>
  401f80:	aa0a03e0 	mov	x0, x10
  401f84:	9103c021 	add	x1, x1, #0xf0
  401f88:	b5000380 	cbnz	x0, 401ff8 <printf_core+0x578>
  401f8c:	90000025 	adrp	x5, 405000 <__subtf3+0x370>
  401f90:	b400058a 	cbz	x10, 402040 <printf_core+0x5c0>
  401f94:	36180579 	tbz	w25, #3, 402040 <printf_core+0x5c0>
  401f98:	d3441c84 	ubfx	x4, x4, #4, #4
  401f9c:	913c34a5 	add	x5, x5, #0xf0d
  401fa0:	8b050085 	add	x5, x4, x5
  401fa4:	52800053 	mov	w19, #0x2                   	// #2
  401fa8:	6a5a7d3f 	tst	w9, w26, lsr #31
  401fac:	54ffdd81 	b.ne	401b5c <printf_core+0xdc>  // b.any
  401fb0:	120f7b20 	and	w0, w25, #0xfffeffff
  401fb4:	7100013f 	cmp	w9, #0x0
  401fb8:	1a991019 	csel	w25, w0, w25, ne  // ne = any
  401fbc:	f94063e0 	ldr	x0, [sp, #192]
  401fc0:	f100001f 	cmp	x0, #0x0
  401fc4:	1a9f17e1 	cset	w1, eq  // eq = none
  401fc8:	7100035f 	cmp	w26, #0x0
  401fcc:	1a9f17e0 	cset	w0, eq  // eq = none
  401fd0:	6a00003f 	tst	w1, w0
  401fd4:	54001c01 	b.ne	402354 <printf_core+0x8d4>  // b.any
  401fd8:	cb1b0300 	sub	x0, x24, x27
  401fdc:	53001c21 	uxtb	w1, w1
  401fe0:	8b010000 	add	x0, x0, x1
  401fe4:	93407f46 	sxtw	x6, w26
  401fe8:	eb06001f 	cmp	x0, x6
  401fec:	9a86a01a 	csel	x26, x0, x6, ge  // ge = tcont
  401ff0:	aa1803e2 	mov	x2, x24
  401ff4:	14000040 	b	4020f4 <printf_core+0x674>
  401ff8:	92400c02 	and	x2, x0, #0xf
  401ffc:	d344fc00 	lsr	x0, x0, #4
  402000:	38626822 	ldrb	w2, [x1, x2]
  402004:	2a0200a2 	orr	w2, w5, w2
  402008:	381fff62 	strb	w2, [x27, #-1]!
  40200c:	17ffffdf 	b	401f88 <printf_core+0x508>
  402010:	f9403fe1 	ldr	x1, [sp, #120]
  402014:	f94063e0 	ldr	x0, [sp, #192]
  402018:	9100dc3b 	add	x27, x1, #0x37
  40201c:	b5000180 	cbnz	x0, 40204c <printf_core+0x5cc>
  402020:	f0000005 	adrp	x5, 405000 <__subtf3+0x370>
  402024:	361800f9 	tbz	w25, #3, 402040 <printf_core+0x5c0>
  402028:	f9403fe0 	ldr	x0, [sp, #120]
  40202c:	9100dc00 	add	x0, x0, #0x37
  402030:	cb1b0000 	sub	x0, x0, x27
  402034:	eb3ac01f 	cmp	x0, w26, sxtw
  402038:	5400004b 	b.lt	402040 <printf_core+0x5c0>  // b.tstop
  40203c:	1100041a 	add	w26, w0, #0x1
  402040:	2a1c03f3 	mov	w19, w28
  402044:	913c34a5 	add	x5, x5, #0xf0d
  402048:	17ffffd8 	b	401fa8 <printf_core+0x528>
  40204c:	12000801 	and	w1, w0, #0x7
  402050:	d343fc00 	lsr	x0, x0, #3
  402054:	1100c021 	add	w1, w1, #0x30
  402058:	381fff61 	strb	w1, [x27, #-1]!
  40205c:	17fffff0 	b	40201c <printf_core+0x59c>
  402060:	f94063e0 	ldr	x0, [sp, #192]
  402064:	b6f801e0 	tbz	x0, #63, 4020a0 <printf_core+0x620>
  402068:	cb0003e0 	neg	x0, x0
  40206c:	52800033 	mov	w19, #0x1                   	// #1
  402070:	f90063e0 	str	x0, [sp, #192]
  402074:	f0000005 	adrp	x5, 405000 <__subtf3+0x370>
  402078:	913c34a5 	add	x5, x5, #0xf0d
  40207c:	f94063e0 	ldr	x0, [sp, #192]
  402080:	aa1803e1 	mov	x1, x24
  402084:	b90093e9 	str	w9, [sp, #144]
  402088:	f9004fe5 	str	x5, [sp, #152]
  40208c:	97fffac5 	bl	400ba0 <fmt_u>
  402090:	aa0003fb 	mov	x27, x0
  402094:	b94093e9 	ldr	w9, [sp, #144]
  402098:	f9404fe5 	ldr	x5, [sp, #152]
  40209c:	17ffffc3 	b	401fa8 <printf_core+0x528>
  4020a0:	37580099 	tbnz	w25, #11, 4020b0 <printf_core+0x630>
  4020a4:	370000f9 	tbnz	w25, #0, 4020c0 <printf_core+0x640>
  4020a8:	2a1c03f3 	mov	w19, w28
  4020ac:	17fffff2 	b	402074 <printf_core+0x5f4>
  4020b0:	f0000005 	adrp	x5, 405000 <__subtf3+0x370>
  4020b4:	52800033 	mov	w19, #0x1                   	// #1
  4020b8:	913c38a5 	add	x5, x5, #0xf0e
  4020bc:	17fffff0 	b	40207c <printf_core+0x5fc>
  4020c0:	f0000005 	adrp	x5, 405000 <__subtf3+0x370>
  4020c4:	52800033 	mov	w19, #0x1                   	// #1
  4020c8:	913c3ca5 	add	x5, x5, #0xf0f
  4020cc:	17ffffec 	b	40207c <printf_core+0x5fc>
  4020d0:	f94063e0 	ldr	x0, [sp, #192]
  4020d4:	f0000005 	adrp	x5, 405000 <__subtf3+0x370>
  4020d8:	120f7b39 	and	w25, w25, #0xfffeffff
  4020dc:	913c34a5 	add	x5, x5, #0xf0d
  4020e0:	39043be0 	strb	w0, [sp, #270]
  4020e4:	aa1803e2 	mov	x2, x24
  4020e8:	f9403fe0 	ldr	x0, [sp, #120]
  4020ec:	5280003a 	mov	w26, #0x1                   	// #1
  4020f0:	9100d81b 	add	x27, x0, #0x36
  4020f4:	cb1b0049 	sub	x9, x2, x27
  4020f8:	12b00000 	mov	w0, #0x7fffffff            	// #2147483647
  4020fc:	4b130000 	sub	w0, w0, w19
  402100:	a90917e9 	stp	x9, x5, [sp, #144]
  402104:	eb3ac13f 	cmp	x9, w26, sxtw
  402108:	1a89d35a 	csel	w26, w26, w9, le
  40210c:	6b00035f 	cmp	w26, w0
  402110:	54ffd26c 	b.gt	401b5c <printf_core+0xdc>
  402114:	0b13035c 	add	w28, w26, w19
  402118:	b9408be0 	ldr	w0, [sp, #136]
  40211c:	6b1c029f 	cmp	w20, w28
  402120:	1a9ca294 	csel	w20, w20, w28, ge  // ge = tcont
  402124:	6b00029f 	cmp	w20, w0
  402128:	54ffd1ac 	b.gt	401b5c <printf_core+0xdc>
  40212c:	2a1903e4 	mov	w4, w25
  402130:	2a1c03e3 	mov	w3, w28
  402134:	2a1403e2 	mov	w2, w20
  402138:	aa1603e0 	mov	x0, x22
  40213c:	52800401 	mov	w1, #0x20                  	// #32
  402140:	97fffac2 	bl	400c48 <pad>
  402144:	f9404fe5 	ldr	x5, [sp, #152]
  402148:	93407e62 	sxtw	x2, w19
  40214c:	aa1603e0 	mov	x0, x22
  402150:	2a1403f3 	mov	w19, w20
  402154:	aa0503e1 	mov	x1, x5
  402158:	97fffab4 	bl	400c28 <out>
  40215c:	52100324 	eor	w4, w25, #0x10000
  402160:	2a1c03e3 	mov	w3, w28
  402164:	2a1403e2 	mov	w2, w20
  402168:	aa1603e0 	mov	x0, x22
  40216c:	52800601 	mov	w1, #0x30                  	// #48
  402170:	97fffab6 	bl	400c48 <pad>
  402174:	f9404be9 	ldr	x9, [sp, #144]
  402178:	2a1a03e2 	mov	w2, w26
  40217c:	aa1603e0 	mov	x0, x22
  402180:	52800004 	mov	w4, #0x0                   	// #0
  402184:	2a0903e3 	mov	w3, w9
  402188:	52800601 	mov	w1, #0x30                  	// #48
  40218c:	f90047e9 	str	x9, [sp, #136]
  402190:	97fffaae 	bl	400c48 <pad>
  402194:	f94047e9 	ldr	x9, [sp, #136]
  402198:	aa1b03e1 	mov	x1, x27
  40219c:	aa1603e0 	mov	x0, x22
  4021a0:	aa0903e2 	mov	x2, x9
  4021a4:	97fffaa1 	bl	400c28 <out>
  4021a8:	52130324 	eor	w4, w25, #0x2000
  4021ac:	2a1c03e3 	mov	w3, w28
  4021b0:	2a1403e2 	mov	w2, w20
  4021b4:	aa1603e0 	mov	x0, x22
  4021b8:	52800401 	mov	w1, #0x20                  	// #32
  4021bc:	97fffaa3 	bl	400c48 <pad>
  4021c0:	17fffe40 	b	401ac0 <printf_core+0x40>
  4021c4:	940001d6 	bl	40291c <__errno_location>
  4021c8:	b9400000 	ldr	w0, [x0]
  4021cc:	940001ea 	bl	402974 <strerror>
  4021d0:	aa0003fb 	mov	x27, x0
  4021d4:	7100035f 	cmp	w26, #0x0
  4021d8:	12b00001 	mov	w1, #0x7fffffff            	// #2147483647
  4021dc:	1a81a341 	csel	w1, w26, w1, ge  // ge = tcont
  4021e0:	aa1b03e0 	mov	x0, x27
  4021e4:	93407c21 	sxtw	x1, w1
  4021e8:	940000fe 	bl	4025e0 <strnlen>
  4021ec:	8b000362 	add	x2, x27, x0
  4021f0:	36f8007a 	tbz	w26, #31, 4021fc <printf_core+0x77c>
  4021f4:	38606b61 	ldrb	w1, [x27, x0]
  4021f8:	35ffcb21 	cbnz	w1, 401b5c <printf_core+0xdc>
  4021fc:	f0000005 	adrp	x5, 405000 <__subtf3+0x370>
  402200:	2a0003fa 	mov	w26, w0
  402204:	120f7b39 	and	w25, w25, #0xfffeffff
  402208:	913c34a5 	add	x5, x5, #0xf0d
  40220c:	17ffffba 	b	4020f4 <printf_core+0x674>
  402210:	f94063e0 	ldr	x0, [sp, #192]
  402214:	f0000008 	adrp	x8, 405000 <__subtf3+0x370>
  402218:	913c5d08 	add	x8, x8, #0xf17
  40221c:	f100001f 	cmp	x0, #0x0
  402220:	9a80011b 	csel	x27, x8, x0, eq  // eq = none
  402224:	17ffffec 	b	4021d4 <printf_core+0x754>
  402228:	f94063e0 	ldr	x0, [sp, #192]
  40222c:	1280001a 	mov	w26, #0xffffffff            	// #-1
  402230:	29177fe0 	stp	w0, wzr, [sp, #184]
  402234:	9102e3e0 	add	x0, sp, #0xb8
  402238:	f90063e0 	str	x0, [sp, #192]
  40223c:	f94063f3 	ldr	x19, [sp, #192]
  402240:	93407f5a 	sxtw	x26, w26
  402244:	9102a3fb 	add	x27, sp, #0xa8
  402248:	d280001c 	mov	x28, #0x0                   	// #0
  40224c:	eb1a039f 	cmp	x28, x26
  402250:	54000162 	b.cs	40227c <printf_core+0x7fc>  // b.hs, b.nlast
  402254:	b9400261 	ldr	w1, [x19]
  402258:	34000121 	cbz	w1, 40227c <printf_core+0x7fc>
  40225c:	aa1b03e0 	mov	x0, x27
  402260:	91001273 	add	x19, x19, #0x4
  402264:	94000217 	bl	402ac0 <wctomb>
  402268:	37ffd800 	tbnz	w0, #31, 401d68 <printf_core+0x2e8>
  40226c:	93407c00 	sxtw	x0, w0
  402270:	cb1c0341 	sub	x1, x26, x28
  402274:	eb01001f 	cmp	x0, x1
  402278:	54000349 	b.ls	4022e0 <printf_core+0x860>  // b.plast
  40227c:	b2407be0 	mov	x0, #0x7fffffff            	// #2147483647
  402280:	eb00039f 	cmp	x28, x0
  402284:	54ffc6c8 	b.hi	401b5c <printf_core+0xdc>  // b.pmore
  402288:	aa1603e0 	mov	x0, x22
  40228c:	2a1903e4 	mov	w4, w25
  402290:	2a1c03e3 	mov	w3, w28
  402294:	2a1403e2 	mov	w2, w20
  402298:	52800401 	mov	w1, #0x20                  	// #32
  40229c:	2a1c03f3 	mov	w19, w28
  4022a0:	d280001a 	mov	x26, #0x0                   	// #0
  4022a4:	97fffa69 	bl	400c48 <pad>
  4022a8:	f94063fb 	ldr	x27, [sp, #192]
  4022ac:	9102a3e0 	add	x0, sp, #0xa8
  4022b0:	f90047e0 	str	x0, [sp, #136]
  4022b4:	eb1a039f 	cmp	x28, x26
  4022b8:	54000188 	b.hi	4022e8 <printf_core+0x868>  // b.pmore
  4022bc:	2a1303e3 	mov	w3, w19
  4022c0:	52130324 	eor	w4, w25, #0x2000
  4022c4:	2a1403e2 	mov	w2, w20
  4022c8:	aa1603e0 	mov	x0, x22
  4022cc:	52800401 	mov	w1, #0x20                  	// #32
  4022d0:	97fffa5e 	bl	400c48 <pad>
  4022d4:	6b13029f 	cmp	w20, w19
  4022d8:	1a93a293 	csel	w19, w20, w19, ge  // ge = tcont
  4022dc:	17fffdf9 	b	401ac0 <printf_core+0x40>
  4022e0:	8b00039c 	add	x28, x28, x0
  4022e4:	17ffffda 	b	40224c <printf_core+0x7cc>
  4022e8:	b9400361 	ldr	w1, [x27]
  4022ec:	34fffe81 	cbz	w1, 4022bc <printf_core+0x83c>
  4022f0:	f94047e0 	ldr	x0, [sp, #136]
  4022f4:	9100137b 	add	x27, x27, #0x4
  4022f8:	940001f2 	bl	402ac0 <wctomb>
  4022fc:	93407c02 	sxtw	x2, w0
  402300:	8b02035a 	add	x26, x26, x2
  402304:	eb1a039f 	cmp	x28, x26
  402308:	54fffda3 	b.cc	4022bc <printf_core+0x83c>  // b.lo, b.ul, b.last
  40230c:	f94047e1 	ldr	x1, [sp, #136]
  402310:	aa1603e0 	mov	x0, x22
  402314:	97fffa45 	bl	400c28 <out>
  402318:	17ffffe7 	b	4022b4 <printf_core+0x834>
  40231c:	6a5a7d3f 	tst	w9, w26, lsr #31
  402320:	54ffc1e1 	b.ne	401b5c <printf_core+0xdc>  // b.any
  402324:	3dc033e0 	ldr	q0, [sp, #192]
  402328:	2a1903e3 	mov	w3, w25
  40232c:	2a1a03e2 	mov	w2, w26
  402330:	2a1403e1 	mov	w1, w20
  402334:	aa1603e0 	mov	x0, x22
  402338:	97fffa6a 	bl	400ce0 <fmt_fp>
  40233c:	2a0003f3 	mov	w19, w0
  402340:	36ffbc00 	tbz	w0, #31, 401ac0 <printf_core+0x40>
  402344:	17fffe06 	b	401b5c <printf_core+0xdc>
  402348:	f0000005 	adrp	x5, 405000 <__subtf3+0x370>
  40234c:	913c34a5 	add	x5, x5, #0xf0d
  402350:	17ffff28 	b	401ff0 <printf_core+0x570>
  402354:	2a1c03fa 	mov	w26, w28
  402358:	aa1803e2 	mov	x2, x24
  40235c:	aa1803fb 	mov	x27, x24
  402360:	17ffff65 	b	4020f4 <printf_core+0x674>
  402364:	f94043e0 	ldr	x0, [sp, #128]
  402368:	aa1703e2 	mov	x2, x23
  40236c:	8b131000 	add	x0, x0, x19, lsl #4
  402370:	91000673 	add	x19, x19, #0x1
  402374:	97fff97a 	bl	40095c <pop_arg>
  402378:	f1002a7f 	cmp	x19, #0xa
  40237c:	54ffbba1 	b.ne	401af0 <printf_core+0x70>  // b.any
  402380:	52800035 	mov	w21, #0x1                   	// #1
  402384:	17fffebe 	b	401e7c <printf_core+0x3fc>

0000000000402388 <vfprintf>:
  402388:	a9a753f3 	stp	x19, x20, [sp, #-400]!
  40238c:	aa0003f3 	mov	x19, x0
  402390:	9101e3e0 	add	x0, sp, #0x78
  402394:	a9036bf9 	stp	x25, x26, [sp, #48]
  402398:	a90263f7 	stp	x23, x24, [sp, #32]
  40239c:	910163f4 	add	x20, sp, #0x58
  4023a0:	a9015bf5 	stp	x21, x22, [sp, #16]
  4023a4:	9101e3f8 	add	x24, sp, #0x78
  4023a8:	f90023fe 	str	x30, [sp, #64]
  4023ac:	9103c3f9 	add	x25, sp, #0xf0
  4023b0:	a9007c1f 	stp	xzr, xzr, [x0]
  4023b4:	910223e0 	add	x0, sp, #0x88
  4023b8:	a9401444 	ldp	x4, x5, [x2]
  4023bc:	aa0103fa 	mov	x26, x1
  4023c0:	a9007c1f 	stp	xzr, xzr, [x0]
  4023c4:	9101a3e0 	add	x0, sp, #0x68
  4023c8:	a9410c42 	ldp	x2, x3, [x2, #16]
  4023cc:	a9001684 	stp	x4, x5, [x20]
  4023d0:	a9000c02 	stp	x2, x3, [x0]
  4023d4:	aa1803e4 	mov	x4, x24
  4023d8:	aa1903e3 	mov	x3, x25
  4023dc:	aa1403e2 	mov	x2, x20
  4023e0:	d2800000 	mov	x0, #0x0                   	// #0
  4023e4:	f9004fff 	str	xzr, [sp, #152]
  4023e8:	97fffda6 	bl	401a80 <printf_core>
  4023ec:	37f80820 	tbnz	w0, #31, 4024f0 <vfprintf+0x168>
  4023f0:	b9408e60 	ldr	w0, [x19, #140]
  4023f4:	52800017 	mov	w23, #0x0                   	// #0
  4023f8:	37f80080 	tbnz	w0, #31, 402408 <vfprintf+0x80>
  4023fc:	aa1303e0 	mov	x0, x19
  402400:	940001b8 	bl	402ae0 <__lockfile>
  402404:	2a0003f7 	mov	w23, w0
  402408:	b9408a61 	ldr	w1, [x19, #136]
  40240c:	b9400260 	ldr	w0, [x19]
  402410:	7100003f 	cmp	w1, #0x0
  402414:	121b0015 	and	w21, w0, #0x20
  402418:	5400006c 	b.gt	402424 <vfprintf+0x9c>
  40241c:	121a7800 	and	w0, w0, #0xffffffdf
  402420:	b9000260 	str	w0, [x19]
  402424:	f9403260 	ldr	x0, [x19, #96]
  402428:	d2800016 	mov	x22, #0x0                   	// #0
  40242c:	b5000100 	cbnz	x0, 40244c <vfprintf+0xc4>
  402430:	910283e0 	add	x0, sp, #0xa0
  402434:	f9402e76 	ldr	x22, [x19, #88]
  402438:	f9002e60 	str	x0, [x19, #88]
  40243c:	d2800a00 	mov	x0, #0x50                  	// #80
  402440:	a9027e7f 	stp	xzr, xzr, [x19, #32]
  402444:	f9001e7f 	str	xzr, [x19, #56]
  402448:	f9003260 	str	x0, [x19, #96]
  40244c:	f9401260 	ldr	x0, [x19, #32]
  402450:	b4000460 	cbz	x0, 4024dc <vfprintf+0x154>
  402454:	aa1403e2 	mov	x2, x20
  402458:	aa1803e4 	mov	x4, x24
  40245c:	aa1903e3 	mov	x3, x25
  402460:	aa1a03e1 	mov	x1, x26
  402464:	aa1303e0 	mov	x0, x19
  402468:	97fffd86 	bl	401a80 <printf_core>
  40246c:	2a0003f4 	mov	w20, w0
  402470:	b4000196 	cbz	x22, 4024a0 <vfprintf+0x118>
  402474:	f9402663 	ldr	x3, [x19, #72]
  402478:	aa1303e0 	mov	x0, x19
  40247c:	d2800002 	mov	x2, #0x0                   	// #0
  402480:	d2800001 	mov	x1, #0x0                   	// #0
  402484:	d63f0060 	blr	x3
  402488:	f9001e7f 	str	xzr, [x19, #56]
  40248c:	f9401660 	ldr	x0, [x19, #40]
  402490:	a905fe76 	stp	x22, xzr, [x19, #88]
  402494:	f100001f 	cmp	x0, #0x0
  402498:	a9027e7f 	stp	xzr, xzr, [x19, #32]
  40249c:	5a9f1294 	csinv	w20, w20, wzr, ne  // ne = any
  4024a0:	b9400260 	ldr	w0, [x19]
  4024a4:	2a0002b5 	orr	w21, w21, w0
  4024a8:	b9000275 	str	w21, [x19]
  4024ac:	f27b001f 	tst	x0, #0x20
  4024b0:	5a9f0294 	csinv	w20, w20, wzr, eq  // eq = none
  4024b4:	34000077 	cbz	w23, 4024c0 <vfprintf+0x138>
  4024b8:	aa1303e0 	mov	x0, x19
  4024bc:	940001b5 	bl	402b90 <__unlockfile>
  4024c0:	2a1403e0 	mov	w0, w20
  4024c4:	f94023fe 	ldr	x30, [sp, #64]
  4024c8:	a9415bf5 	ldp	x21, x22, [sp, #16]
  4024cc:	a94263f7 	ldp	x23, x24, [sp, #32]
  4024d0:	a9436bf9 	ldp	x25, x26, [sp, #48]
  4024d4:	a8d953f3 	ldp	x19, x20, [sp], #400
  4024d8:	d65f03c0 	ret
  4024dc:	aa1303e0 	mov	x0, x19
  4024e0:	940001e3 	bl	402c6c <__towrite>
  4024e4:	34fffb80 	cbz	w0, 402454 <vfprintf+0xcc>
  4024e8:	12800014 	mov	w20, #0xffffffff            	// #-1
  4024ec:	17ffffe1 	b	402470 <vfprintf+0xe8>
  4024f0:	12800014 	mov	w20, #0xffffffff            	// #-1
  4024f4:	17fffff3 	b	4024c0 <vfprintf+0x138>

00000000004024f8 <memset>:
  4024f8:	b4000722 	cbz	x2, 4025dc <memset+0xe4>
  4024fc:	8b020004 	add	x4, x0, x2
  402500:	53001c23 	uxtb	w3, w1
  402504:	39000003 	strb	w3, [x0]
  402508:	f100085f 	cmp	x2, #0x2
  40250c:	381ff083 	sturb	w3, [x4, #-1]
  402510:	54000669 	b.ls	4025dc <memset+0xe4>  // b.plast
  402514:	39000403 	strb	w3, [x0, #1]
  402518:	f100185f 	cmp	x2, #0x6
  40251c:	39000803 	strb	w3, [x0, #2]
  402520:	381fe083 	sturb	w3, [x4, #-2]
  402524:	381fd083 	sturb	w3, [x4, #-3]
  402528:	540005a9 	b.ls	4025dc <memset+0xe4>  // b.plast
  40252c:	39000c03 	strb	w3, [x0, #3]
  402530:	f100205f 	cmp	x2, #0x8
  402534:	381fc083 	sturb	w3, [x4, #-4]
  402538:	54000529 	b.ls	4025dc <memset+0xe4>  // b.plast
  40253c:	cb0003e4 	neg	x4, x0
  402540:	12001c21 	and	w1, w1, #0xff
  402544:	92400484 	and	x4, x4, #0x3
  402548:	3200c3e3 	mov	w3, #0x1010101             	// #16843009
  40254c:	cb040042 	sub	x2, x2, x4
  402550:	8b040005 	add	x5, x0, x4
  402554:	927ef442 	and	x2, x2, #0xfffffffffffffffc
  402558:	1b037c21 	mul	w1, w1, w3
  40255c:	8b0200a6 	add	x6, x5, x2
  402560:	f100205f 	cmp	x2, #0x8
  402564:	b8246801 	str	w1, [x0, x4]
  402568:	b81fc0c1 	stur	w1, [x6, #-4]
  40256c:	54000389 	b.ls	4025dc <memset+0xe4>  // b.plast
  402570:	290084a1 	stp	w1, w1, [x5, #4]
  402574:	f100605f 	cmp	x2, #0x18
  402578:	293e84c1 	stp	w1, w1, [x6, #-12]
  40257c:	54000309 	b.ls	4025dc <memset+0xe4>  // b.plast
  402580:	4e040c20 	dup	v0.4s, w1
  402584:	d1006042 	sub	x2, x2, #0x18
  402588:	927e00a7 	and	x7, x5, #0x4
  40258c:	aa018023 	orr	x3, x1, x1, lsl #32
  402590:	cb070042 	sub	x2, x2, x7
  402594:	f1007c5f 	cmp	x2, #0x1f
  402598:	3c80c0a0 	stur	q0, [x5, #12]
  40259c:	3c9e40c0 	stur	q0, [x6, #-28]
  4025a0:	540001e9 	b.ls	4025dc <memset+0xe4>  // b.plast
  4025a4:	d1008041 	sub	x1, x2, #0x20
  4025a8:	91006082 	add	x2, x4, #0x18
  4025ac:	8b070042 	add	x2, x2, x7
  4025b0:	4e080c60 	dup	v0.2d, x3
  4025b4:	8b020002 	add	x2, x0, x2
  4025b8:	d2800003 	mov	x3, #0x0                   	// #0
  4025bc:	d345fc21 	lsr	x1, x1, #5
  4025c0:	91000421 	add	x1, x1, #0x1
  4025c4:	91000463 	add	x3, x3, #0x1
  4025c8:	3d800040 	str	q0, [x2]
  4025cc:	eb03003f 	cmp	x1, x3
  4025d0:	3d800440 	str	q0, [x2, #16]
  4025d4:	91008042 	add	x2, x2, #0x20
  4025d8:	54ffff68 	b.hi	4025c4 <memset+0xcc>  // b.pmore
  4025dc:	d65f03c0 	ret

00000000004025e0 <strnlen>:
  4025e0:	a9be53f3 	stp	x19, x20, [sp, #-32]!
  4025e4:	aa0103f4 	mov	x20, x1
  4025e8:	aa1403e2 	mov	x2, x20
  4025ec:	52800001 	mov	w1, #0x0                   	// #0
  4025f0:	aa0003f3 	mov	x19, x0
  4025f4:	f9000bfe 	str	x30, [sp, #16]
  4025f8:	9400020a 	bl	402e20 <memchr>
  4025fc:	cb130013 	sub	x19, x0, x19
  402600:	f100001f 	cmp	x0, #0x0
  402604:	f9400bfe 	ldr	x30, [sp, #16]
  402608:	9a941260 	csel	x0, x19, x20, ne  // ne = any
  40260c:	a8c253f3 	ldp	x19, x20, [sp], #32
  402610:	d65f03c0 	ret

0000000000402614 <sleep>:
  402614:	f81e0ffe 	str	x30, [sp, #-32]!
  402618:	2a0003e0 	mov	w0, w0
  40261c:	910043e1 	add	x1, sp, #0x10
  402620:	a9017fe0 	stp	x0, xzr, [sp, #16]
  402624:	aa0103e0 	mov	x0, x1
  402628:	9400031d 	bl	40329c <nanosleep>
  40262c:	7100001f 	cmp	w0, #0x0
  402630:	f9400be0 	ldr	x0, [sp, #16]
  402634:	f84207fe 	ldr	x30, [sp], #32
  402638:	9a9f1000 	csel	x0, x0, xzr, ne  // ne = any
  40263c:	d65f03c0 	ret

0000000000402640 <__init_tp>:
  402640:	a9bf7bf3 	stp	x19, x30, [sp, #-16]!
  402644:	aa0003f3 	mov	x19, x0
  402648:	f9000000 	str	x0, [x0]
  40264c:	91038000 	add	x0, x0, #0xe0
  402650:	94000310 	bl	403290 <__set_thread_area>
  402654:	7100001f 	cmp	w0, #0x0
  402658:	540002eb 	b.lt	4026b4 <__init_tp+0x74>  // b.tstop
  40265c:	52800020 	mov	w0, #0x1                   	// #1
  402660:	54000061 	b.ne	40266c <__init_tp+0x2c>  // b.any
  402664:	b00000a1 	adrp	x1, 417000 <__dso_handle>
  402668:	b906e820 	str	w0, [x1, #1768]
  40266c:	b9004260 	str	w0, [x19, #64]
  402670:	b00000a0 	adrp	x0, 417000 <__dso_handle>
  402674:	d2800c08 	mov	x8, #0x60                  	// #96
  402678:	911d6000 	add	x0, x0, #0x758
  40267c:	d4000001 	svc	#0x0
  402680:	b9003a60 	str	w0, [x19, #56]
  402684:	b00000a0 	adrp	x0, 417000 <__dso_handle>
  402688:	911ca000 	add	x0, x0, #0x728
  40268c:	a9014e73 	stp	x19, x19, [x19, #16]
  402690:	f9005a60 	str	x0, [x19, #176]
  402694:	91024260 	add	x0, x19, #0x90
  402698:	f9004a60 	str	x0, [x19, #144]
  40269c:	b00000a0 	adrp	x0, 417000 <__dso_handle>
  4026a0:	f9436c00 	ldr	x0, [x0, #1752]
  4026a4:	f9001260 	str	x0, [x19, #32]
  4026a8:	52800000 	mov	w0, #0x0                   	// #0
  4026ac:	a8c17bf3 	ldp	x19, x30, [sp], #16
  4026b0:	d65f03c0 	ret
  4026b4:	12800000 	mov	w0, #0xffffffff            	// #-1
  4026b8:	17fffffd 	b	4026ac <__init_tp+0x6c>

00000000004026bc <__copy_tls>:
  4026bc:	a9bb53f3 	stp	x19, x20, [sp, #-80]!
  4026c0:	a90263f7 	stp	x23, x24, [sp, #32]
  4026c4:	aa0003f7 	mov	x23, x0
  4026c8:	b00000a0 	adrp	x0, 417000 <__dso_handle>
  4026cc:	a9036bf9 	stp	x25, x26, [sp, #48]
  4026d0:	911ba001 	add	x1, x0, #0x6e8
  4026d4:	a9015bf5 	stp	x21, x22, [sp, #16]
  4026d8:	f90023fe 	str	x30, [sp, #64]
  4026dc:	aa0003f5 	mov	x21, x0
  4026e0:	a941d834 	ldp	x20, x22, [x1, #24]
  4026e4:	f9401433 	ldr	x19, [x1, #40]
  4026e8:	d10022c2 	sub	x2, x22, #0x8
  4026ec:	f9401836 	ldr	x22, [x1, #48]
  4026f0:	d1000673 	sub	x19, x19, #0x1
  4026f4:	cb160c56 	sub	x22, x2, x22, lsl #3
  4026f8:	92801be2 	mov	x2, #0xffffffffffffff20    	// #-224
  4026fc:	cb170042 	sub	x2, x2, x23
  402700:	8b1602f8 	add	x24, x23, x22
  402704:	8a020273 	and	x19, x19, x2
  402708:	9100231a 	add	x26, x24, #0x8
  40270c:	8b1302f3 	add	x19, x23, x19
  402710:	91038279 	add	x25, x19, #0xe0
  402714:	b50001b4 	cbnz	x20, 402748 <__copy_tls+0x8c>
  402718:	911ba2a0 	add	x0, x21, #0x6e8
  40271c:	f9401800 	ldr	x0, [x0, #48]
  402720:	f8366ae0 	str	x0, [x23, x22]
  402724:	aa1303e0 	mov	x0, x19
  402728:	f9000678 	str	x24, [x19, #8]
  40272c:	f9006e78 	str	x24, [x19, #216]
  402730:	a9415bf5 	ldp	x21, x22, [sp, #16]
  402734:	a94263f7 	ldp	x23, x24, [sp, #32]
  402738:	a9436bf9 	ldp	x25, x26, [sp, #48]
  40273c:	f94023fe 	ldr	x30, [sp, #64]
  402740:	a8c553f3 	ldp	x19, x20, [sp], #80
  402744:	d65f03c0 	ret
  402748:	f9401680 	ldr	x0, [x20, #40]
  40274c:	f9400681 	ldr	x1, [x20, #8]
  402750:	8b000320 	add	x0, x25, x0
  402754:	f8008740 	str	x0, [x26], #8
  402758:	f9401680 	ldr	x0, [x20, #40]
  40275c:	f9400a82 	ldr	x2, [x20, #16]
  402760:	8b000320 	add	x0, x25, x0
  402764:	940001f7 	bl	402f40 <memcpy>
  402768:	f9400294 	ldr	x20, [x20]
  40276c:	17ffffea 	b	402714 <__copy_tls+0x58>

0000000000402770 <__init_tls>:
  402770:	f81f0ffe 	str	x30, [sp, #-16]!
  402774:	b00000a4 	adrp	x4, 417000 <__dso_handle>
  402778:	900000a5 	adrp	x5, 416000 <__FRAME_END__+0xf770>
  40277c:	529caa2b 	mov	w11, #0xe551                	// #58705
  402780:	f9400c0a 	ldr	x10, [x0, #24]
  402784:	52800009 	mov	w9, #0x0                   	// #0
  402788:	b940fc87 	ldr	w7, [x4, #252]
  40278c:	d2800001 	mov	x1, #0x0                   	// #0
  402790:	f947b8a5 	ldr	x5, [x5, #3952]
  402794:	aa0a03e2 	mov	x2, x10
  402798:	f9401408 	ldr	x8, [x0, #40]
  40279c:	d2800003 	mov	x3, #0x0                   	// #0
  4027a0:	72ac8e8b 	movk	w11, #0x6474, lsl #16
  4027a4:	d2a0100c 	mov	x12, #0x800000              	// #8388608
  4027a8:	b5000788 	cbnz	x8, 402898 <__init_tls+0x128>
  4027ac:	34000049 	cbz	w9, 4027b4 <__init_tls+0x44>
  4027b0:	b900fc87 	str	w7, [x4, #252]
  4027b4:	b00000a5 	adrp	x5, 417000 <__dso_handle>
  4027b8:	b00000a4 	adrp	x4, 417000 <__dso_handle>
  4027bc:	b40001e3 	cbz	x3, 4027f8 <__init_tls+0x88>
  4027c0:	f9400862 	ldr	x2, [x3, #16]
  4027c4:	911a40a0 	add	x0, x5, #0x690
  4027c8:	8b010041 	add	x1, x2, x1
  4027cc:	d2800022 	mov	x2, #0x1                   	// #1
  4027d0:	f9000401 	str	x1, [x0, #8]
  4027d4:	f9401061 	ldr	x1, [x3, #32]
  4027d8:	f9000801 	str	x1, [x0, #16]
  4027dc:	f9401461 	ldr	x1, [x3, #40]
  4027e0:	f9000c01 	str	x1, [x0, #24]
  4027e4:	f9401861 	ldr	x1, [x3, #48]
  4027e8:	f9001001 	str	x1, [x0, #32]
  4027ec:	911ba081 	add	x1, x4, #0x6e8
  4027f0:	f9000c20 	str	x0, [x1, #24]
  4027f4:	f9001822 	str	x2, [x1, #48]
  4027f8:	911a40a3 	add	x3, x5, #0x690
  4027fc:	a9419860 	ldp	x0, x6, [x3, #24]
  402800:	f9400462 	ldr	x2, [x3, #8]
  402804:	8b020001 	add	x1, x0, x2
  402808:	d10004c7 	sub	x7, x6, #0x1
  40280c:	cb0103e1 	neg	x1, x1
  402810:	f1001cdf 	cmp	x6, #0x7
  402814:	8a070021 	and	x1, x1, x7
  402818:	8b000021 	add	x1, x1, x0
  40281c:	d1004040 	sub	x0, x2, #0x10
  402820:	8a070000 	and	x0, x0, x7
  402824:	f9000c61 	str	x1, [x3, #24]
  402828:	91004000 	add	x0, x0, #0x10
  40282c:	f9001460 	str	x0, [x3, #40]
  402830:	8b000022 	add	x2, x1, x0
  402834:	54000068 	b.hi	402840 <__init_tls+0xd0>  // b.pmore
  402838:	d2800100 	mov	x0, #0x8                   	// #8
  40283c:	f9001060 	str	x0, [x3, #32]
  402840:	911a40a5 	add	x5, x5, #0x690
  402844:	911ba083 	add	x3, x4, #0x6e8
  402848:	f94010a0 	ldr	x0, [x5, #32]
  40284c:	9103dc01 	add	x1, x0, #0xf7
  402850:	8b020021 	add	x1, x1, x2
  402854:	927df021 	and	x1, x1, #0xfffffffffffffff8
  402858:	f105a03f 	cmp	x1, #0x168
  40285c:	a9020061 	stp	x1, x0, [x3, #32]
  402860:	54000549 	b.ls	402908 <__init_tls+0x198>  // b.plast
  402864:	d2801bc8 	mov	x8, #0xde                  	// #222
  402868:	d2800000 	mov	x0, #0x0                   	// #0
  40286c:	d2800062 	mov	x2, #0x3                   	// #3
  402870:	d2800443 	mov	x3, #0x22                  	// #34
  402874:	92800004 	mov	x4, #0xffffffffffffffff    	// #-1
  402878:	d2800005 	mov	x5, #0x0                   	// #0
  40287c:	d4000001 	svc	#0x0
  402880:	97ffff8f 	bl	4026bc <__copy_tls>
  402884:	97ffff6f 	bl	402640 <__init_tp>
  402888:	36f80460 	tbz	w0, #31, 402914 <__init_tls+0x1a4>
  40288c:	d2800000 	mov	x0, #0x0                   	// #0
  402890:	3900001f 	strb	wzr, [x0]
  402894:	d4207d00 	brk	#0x3e8
  402898:	b9400046 	ldr	w6, [x2]
  40289c:	710018df 	cmp	w6, #0x6
  4028a0:	540000e1 	b.ne	4028bc <__init_tls+0x14c>  // b.any
  4028a4:	f9400841 	ldr	x1, [x2, #16]
  4028a8:	cb010141 	sub	x1, x10, x1
  4028ac:	f9401006 	ldr	x6, [x0, #32]
  4028b0:	d1000508 	sub	x8, x8, #0x1
  4028b4:	8b060042 	add	x2, x2, x6
  4028b8:	17ffffbc 	b	4027a8 <__init_tls+0x38>
  4028bc:	710008df 	cmp	w6, #0x2
  4028c0:	540000a1 	b.ne	4028d4 <__init_tls+0x164>  // b.any
  4028c4:	b4ffff45 	cbz	x5, 4028ac <__init_tls+0x13c>
  4028c8:	f9400841 	ldr	x1, [x2, #16]
  4028cc:	cb0100a1 	sub	x1, x5, x1
  4028d0:	17fffff7 	b	4028ac <__init_tls+0x13c>
  4028d4:	71001cdf 	cmp	w6, #0x7
  4028d8:	54000140 	b.eq	402900 <__init_tls+0x190>  // b.none
  4028dc:	6b0b00df 	cmp	w6, w11
  4028e0:	54fffe61 	b.ne	4028ac <__init_tls+0x13c>  // b.any
  4028e4:	f9401446 	ldr	x6, [x2, #40]
  4028e8:	eb2740df 	cmp	x6, w7, uxtw
  4028ec:	54fffe09 	b.ls	4028ac <__init_tls+0x13c>  // b.plast
  4028f0:	f16000df 	cmp	x6, #0x800, lsl #12
  4028f4:	52800029 	mov	w9, #0x1                   	// #1
  4028f8:	9a8c90c7 	csel	x7, x6, x12, ls  // ls = plast
  4028fc:	17ffffec 	b	4028ac <__init_tls+0x13c>
  402900:	aa0203e3 	mov	x3, x2
  402904:	17ffffea 	b	4028ac <__init_tls+0x13c>
  402908:	b00000a0 	adrp	x0, 417000 <__dso_handle>
  40290c:	9114a000 	add	x0, x0, #0x528
  402910:	17ffffdc 	b	402880 <__init_tls+0x110>
  402914:	f84107fe 	ldr	x30, [sp], #16
  402918:	d65f03c0 	ret

000000000040291c <__errno_location>:
  40291c:	d53bd040 	mrs	x0, tpidr_el0
  402920:	d1029000 	sub	x0, x0, #0xa4
  402924:	d65f03c0 	ret

0000000000402928 <__strerror_l>:
  402928:	90000024 	adrp	x4, 406000 <states+0xe0>
  40292c:	d2800002 	mov	x2, #0x0                   	// #0
  402930:	91040084 	add	x4, x4, #0x100
  402934:	38646845 	ldrb	w5, [x2, x4]
  402938:	2a0203e3 	mov	w3, w2
  40293c:	350000c5 	cbnz	w5, 402954 <__strerror_l+0x2c>
  402940:	90000020 	adrp	x0, 406000 <states+0xe0>
  402944:	91058000 	add	x0, x0, #0x160
  402948:	350000e3 	cbnz	w3, 402964 <__strerror_l+0x3c>
  40294c:	f9401421 	ldr	x1, [x1, #40]
  402950:	14000013 	b	40299c <__lctrans>
  402954:	6b0000bf 	cmp	w5, w0
  402958:	91000442 	add	x2, x2, #0x1
  40295c:	54fffec1 	b.ne	402934 <__strerror_l+0xc>  // b.any
  402960:	17fffff8 	b	402940 <__strerror_l+0x18>
  402964:	38401402 	ldrb	w2, [x0], #1
  402968:	35ffffe2 	cbnz	w2, 402964 <__strerror_l+0x3c>
  40296c:	51000463 	sub	w3, w3, #0x1
  402970:	17fffff6 	b	402948 <__strerror_l+0x20>

0000000000402974 <strerror>:
  402974:	d53bd041 	mrs	x1, tpidr_el0
  402978:	f85d0021 	ldur	x1, [x1, #-48]
  40297c:	17ffffeb 	b	402928 <__strerror_l>

0000000000402980 <_Exit>:
  402980:	93407c01 	sxtw	x1, w0
  402984:	d2800bc8 	mov	x8, #0x5e                  	// #94
  402988:	aa0103e0 	mov	x0, x1
  40298c:	d4000001 	svc	#0x0
  402990:	d2800ba8 	mov	x8, #0x5d                  	// #93
  402994:	17fffffd 	b	402988 <_Exit+0x8>

0000000000402998 <__lctrans_impl>:
  402998:	d65f03c0 	ret

000000000040299c <__lctrans>:
  40299c:	17ffffff 	b	402998 <__lctrans_impl>

00000000004029a0 <__lctrans_cur>:
  4029a0:	d53bd041 	mrs	x1, tpidr_el0
  4029a4:	f85d0021 	ldur	x1, [x1, #-48]
  4029a8:	f9401421 	ldr	x1, [x1, #40]
  4029ac:	17fffffb 	b	402998 <__lctrans_impl>

00000000004029b0 <__fpclassifyl>:
  4029b0:	9e660002 	fmov	x2, d0
  4029b4:	9eae0003 	fmov	x3, v0.d[1]
  4029b8:	aa0203e1 	mov	x1, x2
  4029bc:	aa0303e2 	mov	x2, x3
  4029c0:	d370f863 	ubfx	x3, x3, #48, #15
  4029c4:	9240bc42 	and	x2, x2, #0xffffffffffff
  4029c8:	350000c3 	cbnz	w3, 4029e0 <__fpclassifyl+0x30>
  4029cc:	aa020021 	orr	x1, x1, x2
  4029d0:	f100003f 	cmp	x1, #0x0
  4029d4:	1a9f07e0 	cset	w0, ne  // ne = any
  4029d8:	11000800 	add	w0, w0, #0x2
  4029dc:	d65f03c0 	ret
  4029e0:	528fffe4 	mov	w4, #0x7fff                	// #32767
  4029e4:	52800080 	mov	w0, #0x4                   	// #4
  4029e8:	6b04007f 	cmp	w3, w4
  4029ec:	54000081 	b.ne	4029fc <__fpclassifyl+0x4c>  // b.any
  4029f0:	aa020021 	orr	x1, x1, x2
  4029f4:	f100003f 	cmp	x1, #0x0
  4029f8:	1a9f17e0 	cset	w0, eq  // eq = none
  4029fc:	d65f03c0 	ret

0000000000402a00 <__signbitl>:
  402a00:	9eae0001 	fmov	x1, v0.d[1]
  402a04:	d370fc20 	lsr	x0, x1, #48
  402a08:	530f7c00 	lsr	w0, w0, #15
  402a0c:	d65f03c0 	ret

0000000000402a10 <frexpl>:
  402a10:	9eae0003 	fmov	x3, v0.d[1]
  402a14:	a9be7bf3 	stp	x19, x30, [sp, #-32]!
  402a18:	aa0003f3 	mov	x19, x0
  402a1c:	4ea01c02 	mov	v2.16b, v0.16b
  402a20:	9e660002 	fmov	x2, d0
  402a24:	d370fc60 	lsr	x0, x3, #48
  402a28:	72003801 	ands	w1, w0, #0x7fff
  402a2c:	54000281 	b.ne	402a7c <frexpl+0x6c>  // b.any
  402a30:	6f00e401 	movi	v1.2d, #0x0
  402a34:	3d8007e0 	str	q0, [sp, #16]
  402a38:	9400066e 	bl	4043f0 <__eqtf2>
  402a3c:	3dc007e2 	ldr	q2, [sp, #16]
  402a40:	340001a0 	cbz	w0, 402a74 <frexpl+0x64>
  402a44:	9c000361 	ldr	q1, 402ab0 <frexpl+0xa0>
  402a48:	4ea21c40 	mov	v0.16b, v2.16b
  402a4c:	940006ad 	bl	404500 <__multf3>
  402a50:	aa1303e0 	mov	x0, x19
  402a54:	97ffffef 	bl	402a10 <frexpl>
  402a58:	4ea01c02 	mov	v2.16b, v0.16b
  402a5c:	b9400260 	ldr	w0, [x19]
  402a60:	5101e000 	sub	w0, w0, #0x78
  402a64:	b9000260 	str	w0, [x19]
  402a68:	4ea21c40 	mov	v0.16b, v2.16b
  402a6c:	a8c27bf3 	ldp	x19, x30, [sp], #32
  402a70:	d65f03c0 	ret
  402a74:	b900027f 	str	wzr, [x19]
  402a78:	17fffffc 	b	402a68 <frexpl+0x58>
  402a7c:	528fffe4 	mov	w4, #0x7fff                	// #32767
  402a80:	6b04003f 	cmp	w1, w4
  402a84:	54ffff20 	b.eq	402a68 <frexpl+0x58>  // b.none
  402a88:	9e670042 	fmov	d2, x2
  402a8c:	12114000 	and	w0, w0, #0xffff8000
  402a90:	1287ffa4 	mov	w4, #0xffffc002            	// #-16382
  402a94:	321f3000 	orr	w0, w0, #0x3ffe
  402a98:	0b040021 	add	w1, w1, w4
  402a9c:	b3503c03 	bfi	x3, x0, #48, #16
  402aa0:	b9000261 	str	w1, [x19]
  402aa4:	9eaf0062 	fmov	v2.d[1], x3
  402aa8:	17fffff0 	b	402a68 <frexpl+0x58>
  402aac:	d503201f 	nop
	...
  402abc:	40770000 	.word	0x40770000

0000000000402ac0 <wctomb>:
  402ac0:	b40000c0 	cbz	x0, 402ad8 <wctomb+0x18>
  402ac4:	f81f0ffe 	str	x30, [sp, #-16]!
  402ac8:	d2800002 	mov	x2, #0x0                   	// #0
  402acc:	9400020d 	bl	403300 <wcrtomb>
  402ad0:	f84107fe 	ldr	x30, [sp], #16
  402ad4:	d65f03c0 	ret
  402ad8:	52800000 	mov	w0, #0x0                   	// #0
  402adc:	d65f03c0 	ret

0000000000402ae0 <__lockfile>:
  402ae0:	b9408c02 	ldr	w2, [x0, #140]
  402ae4:	d53bd041 	mrs	x1, tpidr_el0
  402ae8:	b8558021 	ldur	w1, [x1, #-168]
  402aec:	12017842 	and	w2, w2, #0xbfffffff
  402af0:	6b02003f 	cmp	w1, w2
  402af4:	540004a0 	b.eq	402b88 <__lockfile+0xa8>  // b.none
  402af8:	91023004 	add	x4, x0, #0x8c
  402afc:	885ffc80 	ldaxr	w0, [x4]
  402b00:	340001a0 	cbz	w0, 402b34 <__lockfile+0x54>
  402b04:	d5033bbf 	dmb	ish
  402b08:	32020025 	orr	w5, w1, #0x40000000
  402b0c:	885ffc80 	ldaxr	w0, [x4]
  402b10:	34000360 	cbz	w0, 402b7c <__lockfile+0x9c>
  402b14:	d5033bbf 	dmb	ish
  402b18:	32020002 	orr	w2, w0, #0x40000000
  402b1c:	37f00180 	tbnz	w0, #30, 402b4c <__lockfile+0x6c>
  402b20:	885ffc81 	ldaxr	w1, [x4]
  402b24:	6b00003f 	cmp	w1, w0
  402b28:	540000e0 	b.eq	402b44 <__lockfile+0x64>  // b.none
  402b2c:	d5033bbf 	dmb	ish
  402b30:	17fffff7 	b	402b0c <__lockfile+0x2c>
  402b34:	8800fc81 	stlxr	w0, w1, [x4]
  402b38:	35fffe20 	cbnz	w0, 402afc <__lockfile+0x1c>
  402b3c:	52800020 	mov	w0, #0x1                   	// #1
  402b40:	d65f03c0 	ret
  402b44:	8801fc82 	stlxr	w1, w2, [x4]
  402b48:	35fffec1 	cbnz	w1, 402b20 <__lockfile+0x40>
  402b4c:	d2800c48 	mov	x8, #0x62                  	// #98
  402b50:	aa0403e0 	mov	x0, x4
  402b54:	d2801001 	mov	x1, #0x80                  	// #128
  402b58:	93407c42 	sxtw	x2, w2
  402b5c:	d2800003 	mov	x3, #0x0                   	// #0
  402b60:	d4000001 	svc	#0x0
  402b64:	b100981f 	cmn	x0, #0x26
  402b68:	54fffd21 	b.ne	402b0c <__lockfile+0x2c>  // b.any
  402b6c:	aa0403e0 	mov	x0, x4
  402b70:	d2800001 	mov	x1, #0x0                   	// #0
  402b74:	d4000001 	svc	#0x0
  402b78:	17ffffe5 	b	402b0c <__lockfile+0x2c>
  402b7c:	8800fc85 	stlxr	w0, w5, [x4]
  402b80:	35fffc60 	cbnz	w0, 402b0c <__lockfile+0x2c>
  402b84:	17ffffee 	b	402b3c <__lockfile+0x5c>
  402b88:	52800000 	mov	w0, #0x0                   	// #0
  402b8c:	d65f03c0 	ret

0000000000402b90 <__unlockfile>:
  402b90:	91023003 	add	x3, x0, #0x8c
  402b94:	52800000 	mov	w0, #0x0                   	// #0
  402b98:	885ffc61 	ldaxr	w1, [x3]
  402b9c:	8802fc60 	stlxr	w2, w0, [x3]
  402ba0:	35ffffc2 	cbnz	w2, 402b98 <__unlockfile+0x8>
  402ba4:	36f00161 	tbz	w1, #30, 402bd0 <__unlockfile+0x40>
  402ba8:	d2800c48 	mov	x8, #0x62                  	// #98
  402bac:	aa0303e0 	mov	x0, x3
  402bb0:	d2801021 	mov	x1, #0x81                  	// #129
  402bb4:	d2800022 	mov	x2, #0x1                   	// #1
  402bb8:	d4000001 	svc	#0x0
  402bbc:	b100981f 	cmn	x0, #0x26
  402bc0:	54000081 	b.ne	402bd0 <__unlockfile+0x40>  // b.any
  402bc4:	aa0303e0 	mov	x0, x3
  402bc8:	aa0203e1 	mov	x1, x2
  402bcc:	d4000001 	svc	#0x0
  402bd0:	d65f03c0 	ret

0000000000402bd4 <__aio_close>:
  402bd4:	d65f03c0 	ret

0000000000402bd8 <__stdio_close>:
  402bd8:	f81f0ffe 	str	x30, [sp, #-16]!
  402bdc:	b9407800 	ldr	w0, [x0, #120]
  402be0:	97fffffd 	bl	402bd4 <__aio_close>
  402be4:	93407c00 	sxtw	x0, w0
  402be8:	d2800728 	mov	x8, #0x39                  	// #57
  402bec:	d4000001 	svc	#0x0
  402bf0:	940001b8 	bl	4032d0 <__syscall_ret>
  402bf4:	f84107fe 	ldr	x30, [sp], #16
  402bf8:	d65f03c0 	ret

0000000000402bfc <__stdio_seek>:
  402bfc:	d28007c8 	mov	x8, #0x3e                  	// #62
  402c00:	93407c42 	sxtw	x2, w2
  402c04:	b9807800 	ldrsw	x0, [x0, #120]
  402c08:	d4000001 	svc	#0x0
  402c0c:	140001b1 	b	4032d0 <__syscall_ret>

0000000000402c10 <__stdout_write>:
  402c10:	aa0003e3 	mov	x3, x0
  402c14:	f81e0ffe 	str	x30, [sp, #-32]!
  402c18:	b0000000 	adrp	x0, 403000 <memcpy+0xc0>
  402c1c:	aa0103e4 	mov	x4, x1
  402c20:	91134000 	add	x0, x0, #0x4d0
  402c24:	aa0203e5 	mov	x5, x2
  402c28:	f9002460 	str	x0, [x3, #72]
  402c2c:	b9400060 	ldr	w0, [x3]
  402c30:	37300120 	tbnz	w0, #6, 402c54 <__stdout_write+0x44>
  402c34:	d28003a8 	mov	x8, #0x1d                  	// #29
  402c38:	d28a8261 	mov	x1, #0x5413                	// #21523
  402c3c:	910063e2 	add	x2, sp, #0x18
  402c40:	b9807860 	ldrsw	x0, [x3, #120]
  402c44:	d4000001 	svc	#0x0
  402c48:	b4000060 	cbz	x0, 402c54 <__stdout_write+0x44>
  402c4c:	12800000 	mov	w0, #0xffffffff            	// #-1
  402c50:	b9009060 	str	w0, [x3, #144]
  402c54:	aa0503e2 	mov	x2, x5
  402c58:	aa0403e1 	mov	x1, x4
  402c5c:	aa0303e0 	mov	x0, x3
  402c60:	9400021c 	bl	4034d0 <__stdio_write>
  402c64:	f84207fe 	ldr	x30, [sp], #32
  402c68:	d65f03c0 	ret

0000000000402c6c <__towrite>:
  402c6c:	b9408802 	ldr	w2, [x0, #136]
  402c70:	51000441 	sub	w1, w2, #0x1
  402c74:	2a020021 	orr	w1, w1, w2
  402c78:	b9008801 	str	w1, [x0, #136]
  402c7c:	b9400001 	ldr	w1, [x0]
  402c80:	361800a1 	tbz	w1, #3, 402c94 <__towrite+0x28>
  402c84:	321b0021 	orr	w1, w1, #0x20
  402c88:	b9000001 	str	w1, [x0]
  402c8c:	12800000 	mov	w0, #0xffffffff            	// #-1
  402c90:	d65f03c0 	ret
  402c94:	a9458801 	ldp	x1, x2, [x0, #88]
  402c98:	a900fc1f 	stp	xzr, xzr, [x0, #8]
  402c9c:	f9001401 	str	x1, [x0, #40]
  402ca0:	f9001c01 	str	x1, [x0, #56]
  402ca4:	8b020021 	add	x1, x1, x2
  402ca8:	f9001001 	str	x1, [x0, #32]
  402cac:	52800000 	mov	w0, #0x0                   	// #0
  402cb0:	d65f03c0 	ret

0000000000402cb4 <__towrite_needs_stdio_exit>:
  402cb4:	140001f5 	b	403488 <__stdio_exit>

0000000000402cb8 <__fwritex>:
  402cb8:	a9bd53f3 	stp	x19, x20, [sp, #-48]!
  402cbc:	aa0203f3 	mov	x19, x2
  402cc0:	a9015bf5 	stp	x21, x22, [sp, #16]
  402cc4:	aa0003f6 	mov	x22, x0
  402cc8:	f90013fe 	str	x30, [sp, #32]
  402ccc:	aa0103f5 	mov	x21, x1
  402cd0:	f9401040 	ldr	x0, [x2, #32]
  402cd4:	b40001a0 	cbz	x0, 402d08 <__fwritex+0x50>
  402cd8:	a9420660 	ldp	x0, x1, [x19, #32]
  402cdc:	cb010000 	sub	x0, x0, x1
  402ce0:	eb15001f 	cmp	x0, x21
  402ce4:	540001c2 	b.cs	402d1c <__fwritex+0x64>  // b.hs, b.nlast
  402ce8:	aa1503e2 	mov	x2, x21
  402cec:	aa1603e1 	mov	x1, x22
  402cf0:	aa1303e0 	mov	x0, x19
  402cf4:	f9402663 	ldr	x3, [x19, #72]
  402cf8:	a9415bf5 	ldp	x21, x22, [sp, #16]
  402cfc:	f94013fe 	ldr	x30, [sp, #32]
  402d00:	a8c353f3 	ldp	x19, x20, [sp], #48
  402d04:	d61f0060 	br	x3
  402d08:	aa0203e0 	mov	x0, x2
  402d0c:	97ffffd8 	bl	402c6c <__towrite>
  402d10:	34fffe40 	cbz	w0, 402cd8 <__fwritex+0x20>
  402d14:	d2800000 	mov	x0, #0x0                   	// #0
  402d18:	1400001d 	b	402d8c <__fwritex+0xd4>
  402d1c:	b9409260 	ldr	w0, [x19, #144]
  402d20:	aa1503f4 	mov	x20, x21
  402d24:	36f80080 	tbz	w0, #31, 402d34 <__fwritex+0x7c>
  402d28:	d2800014 	mov	x20, #0x0                   	// #0
  402d2c:	14000010 	b	402d6c <__fwritex+0xb4>
  402d30:	aa0003f4 	mov	x20, x0
  402d34:	b40001d4 	cbz	x20, 402d6c <__fwritex+0xb4>
  402d38:	d1000680 	sub	x0, x20, #0x1
  402d3c:	38606ac1 	ldrb	w1, [x22, x0]
  402d40:	7100283f 	cmp	w1, #0xa
  402d44:	54ffff61 	b.ne	402d30 <__fwritex+0x78>  // b.any
  402d48:	f9402663 	ldr	x3, [x19, #72]
  402d4c:	aa1403e2 	mov	x2, x20
  402d50:	aa1603e1 	mov	x1, x22
  402d54:	aa1303e0 	mov	x0, x19
  402d58:	d63f0060 	blr	x3
  402d5c:	eb00029f 	cmp	x20, x0
  402d60:	54000168 	b.hi	402d8c <__fwritex+0xd4>  // b.pmore
  402d64:	8b1402d6 	add	x22, x22, x20
  402d68:	cb1402b5 	sub	x21, x21, x20
  402d6c:	f9401660 	ldr	x0, [x19, #40]
  402d70:	aa1503e2 	mov	x2, x21
  402d74:	aa1603e1 	mov	x1, x22
  402d78:	94000072 	bl	402f40 <memcpy>
  402d7c:	f9401660 	ldr	x0, [x19, #40]
  402d80:	8b150000 	add	x0, x0, x21
  402d84:	f9001660 	str	x0, [x19, #40]
  402d88:	8b1402a0 	add	x0, x21, x20
  402d8c:	a9415bf5 	ldp	x21, x22, [sp, #16]
  402d90:	f94013fe 	ldr	x30, [sp, #32]
  402d94:	a8c353f3 	ldp	x19, x20, [sp], #48
  402d98:	d65f03c0 	ret

0000000000402d9c <fwrite>:
  402d9c:	a9bc53f3 	stp	x19, x20, [sp, #-64]!
  402da0:	f100003f 	cmp	x1, #0x0
  402da4:	aa0303f4 	mov	x20, x3
  402da8:	9a9f1053 	csel	x19, x2, xzr, ne  // ne = any
  402dac:	a9015bf5 	stp	x21, x22, [sp, #16]
  402db0:	aa0003f6 	mov	x22, x0
  402db4:	b9408c60 	ldr	w0, [x3, #140]
  402db8:	aa0103f5 	mov	x21, x1
  402dbc:	a90263f7 	stp	x23, x24, [sp, #32]
  402dc0:	9b027c37 	mul	x23, x1, x2
  402dc4:	f9001bfe 	str	x30, [sp, #48]
  402dc8:	52800018 	mov	w24, #0x0                   	// #0
  402dcc:	37f80080 	tbnz	w0, #31, 402ddc <fwrite+0x40>
  402dd0:	aa0303e0 	mov	x0, x3
  402dd4:	97ffff43 	bl	402ae0 <__lockfile>
  402dd8:	2a0003f8 	mov	w24, w0
  402ddc:	aa1603e0 	mov	x0, x22
  402de0:	aa1403e2 	mov	x2, x20
  402de4:	aa1703e1 	mov	x1, x23
  402de8:	97ffffb4 	bl	402cb8 <__fwritex>
  402dec:	aa0003f6 	mov	x22, x0
  402df0:	34000078 	cbz	w24, 402dfc <fwrite+0x60>
  402df4:	aa1403e0 	mov	x0, x20
  402df8:	97ffff66 	bl	402b90 <__unlockfile>
  402dfc:	eb1602ff 	cmp	x23, x22
  402e00:	54000040 	b.eq	402e08 <fwrite+0x6c>  // b.none
  402e04:	9ad50ad3 	udiv	x19, x22, x21
  402e08:	aa1303e0 	mov	x0, x19
  402e0c:	f9401bfe 	ldr	x30, [sp, #48]
  402e10:	a9415bf5 	ldp	x21, x22, [sp, #16]
  402e14:	a94263f7 	ldp	x23, x24, [sp, #32]
  402e18:	a8c453f3 	ldp	x19, x20, [sp], #64
  402e1c:	d65f03c0 	ret

0000000000402e20 <memchr>:
  402e20:	f240081f 	tst	x0, #0x7
  402e24:	53001c21 	uxtb	w1, w1
  402e28:	54000840 	b.eq	402f30 <memchr+0x110>  // b.none
  402e2c:	b40007e2 	cbz	x2, 402f28 <memchr+0x108>
  402e30:	39400003 	ldrb	w3, [x0]
  402e34:	6b03003f 	cmp	w1, w3
  402e38:	aa0003e3 	mov	x3, x0
  402e3c:	540000e1 	b.ne	402e58 <memchr+0x38>  // b.any
  402e40:	1400002c 	b	402ef0 <memchr+0xd0>
  402e44:	d503201f 	nop
  402e48:	b4000702 	cbz	x2, 402f28 <memchr+0x108>
  402e4c:	39400060 	ldrb	w0, [x3]
  402e50:	6b00003f 	cmp	w1, w0
  402e54:	540004e0 	b.eq	402ef0 <memchr+0xd0>  // b.none
  402e58:	91000463 	add	x3, x3, #0x1
  402e5c:	d1000442 	sub	x2, x2, #0x1
  402e60:	f240087f 	tst	x3, #0x7
  402e64:	54ffff21 	b.ne	402e48 <memchr+0x28>  // b.any
  402e68:	d2800000 	mov	x0, #0x0                   	// #0
  402e6c:	b40003e2 	cbz	x2, 402ee8 <memchr+0xc8>
  402e70:	39400060 	ldrb	w0, [x3]
  402e74:	6b00003f 	cmp	w1, w0
  402e78:	540003c0 	b.eq	402ef0 <memchr+0xd0>  // b.none
  402e7c:	93407c25 	sxtw	x5, w1
  402e80:	f1001c5f 	cmp	x2, #0x7
  402e84:	b200c3e4 	mov	x4, #0x101010101010101     	// #72340172838076673
  402e88:	9b047ca5 	mul	x5, x5, x4
  402e8c:	54000389 	b.ls	402efc <memchr+0xdc>  // b.plast
  402e90:	f9400060 	ldr	x0, [x3]
  402e94:	ca0000a0 	eor	x0, x5, x0
  402e98:	cb040004 	sub	x4, x0, x4
  402e9c:	8a200080 	bic	x0, x4, x0
  402ea0:	f201c01f 	tst	x0, #0x8080808080808080
  402ea4:	540002c1 	b.ne	402efc <memchr+0xdc>  // b.any
  402ea8:	b207dbe6 	mov	x6, #0xfefefefefefefefe    	// #-72340172838076674
  402eac:	f29fdfe6 	movk	x6, #0xfeff
  402eb0:	14000008 	b	402ed0 <memchr+0xb0>
  402eb4:	d503201f 	nop
  402eb8:	f9400060 	ldr	x0, [x3]
  402ebc:	ca0000a0 	eor	x0, x5, x0
  402ec0:	8b060004 	add	x4, x0, x6
  402ec4:	8a200080 	bic	x0, x4, x0
  402ec8:	f201c01f 	tst	x0, #0x8080808080808080
  402ecc:	54000121 	b.ne	402ef0 <memchr+0xd0>  // b.any
  402ed0:	d1002042 	sub	x2, x2, #0x8
  402ed4:	91002063 	add	x3, x3, #0x8
  402ed8:	f1001c5f 	cmp	x2, #0x7
  402edc:	54fffee8 	b.hi	402eb8 <memchr+0x98>  // b.pmore
  402ee0:	d2800000 	mov	x0, #0x0                   	// #0
  402ee4:	b5000062 	cbnz	x2, 402ef0 <memchr+0xd0>
  402ee8:	d65f03c0 	ret
  402eec:	d503201f 	nop
  402ef0:	39400060 	ldrb	w0, [x3]
  402ef4:	6b00003f 	cmp	w1, w0
  402ef8:	54000200 	b.eq	402f38 <memchr+0x118>  // b.none
  402efc:	91000464 	add	x4, x3, #0x1
  402f00:	8b020063 	add	x3, x3, x2
  402f04:	eb04007f 	cmp	x3, x4
  402f08:	aa0403e0 	mov	x0, x4
  402f0c:	91000484 	add	x4, x4, #0x1
  402f10:	540000c0 	b.eq	402f28 <memchr+0x108>  // b.none
  402f14:	39400002 	ldrb	w2, [x0]
  402f18:	6b02003f 	cmp	w1, w2
  402f1c:	54ffff41 	b.ne	402f04 <memchr+0xe4>  // b.any
  402f20:	d65f03c0 	ret
  402f24:	d503201f 	nop
  402f28:	d2800000 	mov	x0, #0x0                   	// #0
  402f2c:	d65f03c0 	ret
  402f30:	aa0003e3 	mov	x3, x0
  402f34:	17ffffcd 	b	402e68 <memchr+0x48>
  402f38:	aa0303e0 	mov	x0, x3
  402f3c:	d65f03c0 	ret

0000000000402f40 <memcpy>:
  402f40:	f240043f 	tst	x1, #0x3
  402f44:	54001820 	b.eq	403248 <memcpy+0x308>  // b.none
  402f48:	b4000642 	cbz	x2, 403010 <memcpy+0xd0>
  402f4c:	aa0003e7 	mov	x7, x0
  402f50:	14000003 	b	402f5c <memcpy+0x1c>
  402f54:	d503201f 	nop
  402f58:	b4000e42 	cbz	x2, 403120 <memcpy+0x1e0>
  402f5c:	38401423 	ldrb	w3, [x1], #1
  402f60:	d1000442 	sub	x2, x2, #0x1
  402f64:	380014e3 	strb	w3, [x7], #1
  402f68:	f240043f 	tst	x1, #0x3
  402f6c:	54ffff61 	b.ne	402f58 <memcpy+0x18>  // b.any
  402f70:	f24004e3 	ands	x3, x7, #0x3
  402f74:	54000521 	b.ne	403018 <memcpy+0xd8>  // b.any
  402f78:	f1003c5f 	cmp	x2, #0xf
  402f7c:	54001809 	b.ls	40327c <memcpy+0x33c>  // b.plast
  402f80:	d1004046 	sub	x6, x2, #0x10
  402f84:	d2800003 	mov	x3, #0x0                   	// #0
  402f88:	d2800004 	mov	x4, #0x0                   	// #0
  402f8c:	d344fcc5 	lsr	x5, x6, #4
  402f90:	910004a5 	add	x5, x5, #0x1
  402f94:	3ce36820 	ldr	q0, [x1, x3]
  402f98:	91000484 	add	x4, x4, #0x1
  402f9c:	eb05009f 	cmp	x4, x5
  402fa0:	3ca368e0 	str	q0, [x7, x3]
  402fa4:	91004063 	add	x3, x3, #0x10
  402fa8:	54ffff63 	b.cc	402f94 <memcpy+0x54>  // b.lo, b.ul, b.last
  402fac:	927cecc3 	and	x3, x6, #0xfffffffffffffff0
  402fb0:	927d0045 	and	x5, x2, #0x8
  402fb4:	91004063 	add	x3, x3, #0x10
  402fb8:	927e0044 	and	x4, x2, #0x4
  402fbc:	8b030021 	add	x1, x1, x3
  402fc0:	8b0300e7 	add	x7, x7, x3
  402fc4:	927f0043 	and	x3, x2, #0x2
  402fc8:	92400042 	and	x2, x2, #0x1
  402fcc:	b4000065 	cbz	x5, 402fd8 <memcpy+0x98>
  402fd0:	fc408420 	ldr	d0, [x1], #8
  402fd4:	fc0084e0 	str	d0, [x7], #8
  402fd8:	b4000064 	cbz	x4, 402fe4 <memcpy+0xa4>
  402fdc:	b8404424 	ldr	w4, [x1], #4
  402fe0:	b80044e4 	str	w4, [x7], #4
  402fe4:	b40000e3 	cbz	x3, 403000 <memcpy+0xc0>
  402fe8:	aa0703e3 	mov	x3, x7
  402fec:	39400424 	ldrb	w4, [x1, #1]
  402ff0:	38402425 	ldrb	w5, [x1], #2
  402ff4:	38002465 	strb	w5, [x3], #2
  402ff8:	390004e4 	strb	w4, [x7, #1]
  402ffc:	aa0303e7 	mov	x7, x3
  403000:	b4000082 	cbz	x2, 403010 <memcpy+0xd0>
  403004:	39400021 	ldrb	w1, [x1]
  403008:	390000e1 	strb	w1, [x7]
  40300c:	d65f03c0 	ret
  403010:	d65f03c0 	ret
  403014:	d503201f 	nop
  403018:	f1007c5f 	cmp	x2, #0x1f
  40301c:	540004a9 	b.ls	4030b0 <memcpy+0x170>  // b.plast
  403020:	f100087f 	cmp	x3, #0x2
  403024:	54000800 	b.eq	403124 <memcpy+0x1e4>  // b.none
  403028:	f1000c7f 	cmp	x3, #0x3
  40302c:	d1005048 	sub	x8, x2, #0x14
  403030:	54000c21 	b.ne	4031b4 <memcpy+0x274>  // b.any
  403034:	39400024 	ldrb	w4, [x1]
  403038:	d344fd09 	lsr	x9, x8, #4
  40303c:	b8401425 	ldr	w5, [x1], #1
  403040:	910004ea 	add	x10, x7, #0x1
  403044:	390000e4 	strb	w4, [x7]
  403048:	8b0910e7 	add	x7, x7, x9, lsl #4
  40304c:	aa0a03e3 	mov	x3, x10
  403050:	910044e7 	add	x7, x7, #0x11
  403054:	aa0103e4 	mov	x4, x1
  403058:	b8403086 	ldur	w6, [x4, #3]
  40305c:	91004063 	add	x3, x3, #0x10
  403060:	91004084 	add	x4, x4, #0x10
  403064:	138520c5 	extr	w5, w6, w5, #8
  403068:	b81f0065 	stur	w5, [x3, #-16]
  40306c:	b85f7085 	ldur	w5, [x4, #-9]
  403070:	138620a6 	extr	w6, w5, w6, #8
  403074:	b81f4066 	stur	w6, [x3, #-12]
  403078:	b85fb086 	ldur	w6, [x4, #-5]
  40307c:	138520c5 	extr	w5, w6, w5, #8
  403080:	b81f8065 	stur	w5, [x3, #-8]
  403084:	b85ff085 	ldur	w5, [x4, #-1]
  403088:	138620a6 	extr	w6, w5, w6, #8
  40308c:	b81fc066 	stur	w6, [x3, #-4]
  403090:	eb07007f 	cmp	x3, x7
  403094:	54fffe21 	b.ne	403058 <memcpy+0x118>  // b.any
  403098:	927ced07 	and	x7, x8, #0xfffffffffffffff0
  40309c:	d1004442 	sub	x2, x2, #0x11
  4030a0:	910040e7 	add	x7, x7, #0x10
  4030a4:	8b070021 	add	x1, x1, x7
  4030a8:	cb091042 	sub	x2, x2, x9, lsl #4
  4030ac:	8b070147 	add	x7, x10, x7
  4030b0:	36200d02 	tbz	w2, #4, 403250 <memcpy+0x310>
  4030b4:	3dc00020 	ldr	q0, [x1]
  4030b8:	927d0043 	and	x3, x2, #0x8
  4030bc:	927e0046 	and	x6, x2, #0x4
  4030c0:	927f0045 	and	x5, x2, #0x2
  4030c4:	910040e4 	add	x4, x7, #0x10
  4030c8:	91004021 	add	x1, x1, #0x10
  4030cc:	92400042 	and	x2, x2, #0x1
  4030d0:	3d8000e0 	str	q0, [x7]
  4030d4:	b4000ca3 	cbz	x3, 403268 <memcpy+0x328>
  4030d8:	fd400020 	ldr	d0, [x1]
  4030dc:	91002083 	add	x3, x4, #0x8
  4030e0:	91002021 	add	x1, x1, #0x8
  4030e4:	fd000080 	str	d0, [x4]
  4030e8:	b4000c46 	cbz	x6, 403270 <memcpy+0x330>
  4030ec:	39400427 	ldrb	w7, [x1, #1]
  4030f0:	91001021 	add	x1, x1, #0x4
  4030f4:	385fc028 	ldurb	w8, [x1, #-4]
  4030f8:	385fe026 	ldurb	w6, [x1, #-2]
  4030fc:	385ff024 	ldurb	w4, [x1, #-1]
  403100:	39000467 	strb	w7, [x3, #1]
  403104:	91001067 	add	x7, x3, #0x4
  403108:	39000068 	strb	w8, [x3]
  40310c:	39000866 	strb	w6, [x3, #2]
  403110:	39000c64 	strb	w4, [x3, #3]
  403114:	b4fff765 	cbz	x5, 403000 <memcpy+0xc0>
  403118:	17ffffb4 	b	402fe8 <memcpy+0xa8>
  40311c:	d503201f 	nop
  403120:	d65f03c0 	ret
  403124:	aa0103ea 	mov	x10, x1
  403128:	d1005048 	sub	x8, x2, #0x14
  40312c:	aa0703e9 	mov	x9, x7
  403130:	39400423 	ldrb	w3, [x1, #1]
  403134:	b9400024 	ldr	w4, [x1]
  403138:	38402541 	ldrb	w1, [x10], #2
  40313c:	d344fd0b 	lsr	x11, x8, #4
  403140:	91000566 	add	x6, x11, #0x1
  403144:	38002521 	strb	w1, [x9], #2
  403148:	390004e3 	strb	w3, [x7, #1]
  40314c:	aa0a03e3 	mov	x3, x10
  403150:	aa0903e1 	mov	x1, x9
  403154:	8b061126 	add	x6, x9, x6, lsl #4
  403158:	b8402065 	ldur	w5, [x3, #2]
  40315c:	91004021 	add	x1, x1, #0x10
  403160:	91004063 	add	x3, x3, #0x10
  403164:	138440a4 	extr	w4, w5, w4, #16
  403168:	b81f0024 	stur	w4, [x1, #-16]
  40316c:	b85f6064 	ldur	w4, [x3, #-10]
  403170:	13854085 	extr	w5, w4, w5, #16
  403174:	b81f4025 	stur	w5, [x1, #-12]
  403178:	b85fa065 	ldur	w5, [x3, #-6]
  40317c:	138440a4 	extr	w4, w5, w4, #16
  403180:	b81f8024 	stur	w4, [x1, #-8]
  403184:	b85fe064 	ldur	w4, [x3, #-2]
  403188:	13854085 	extr	w5, w4, w5, #16
  40318c:	b81fc025 	stur	w5, [x1, #-4]
  403190:	eb06003f 	cmp	x1, x6
  403194:	54fffe21 	b.ne	403158 <memcpy+0x218>  // b.any
  403198:	927ced07 	and	x7, x8, #0xfffffffffffffff0
  40319c:	d1004842 	sub	x2, x2, #0x12
  4031a0:	910040e7 	add	x7, x7, #0x10
  4031a4:	8b070141 	add	x1, x10, x7
  4031a8:	cb0b1042 	sub	x2, x2, x11, lsl #4
  4031ac:	8b070127 	add	x7, x9, x7
  4031b0:	17ffffc0 	b	4030b0 <memcpy+0x170>
  4031b4:	39400026 	ldrb	w6, [x1]
  4031b8:	d344fd0a 	lsr	x10, x8, #4
  4031bc:	39400823 	ldrb	w3, [x1, #2]
  4031c0:	91000ce9 	add	x9, x7, #0x3
  4031c4:	390000e6 	strb	w6, [x7]
  4031c8:	91000546 	add	x6, x10, #0x1
  4031cc:	39400425 	ldrb	w5, [x1, #1]
  4031d0:	91000c2b 	add	x11, x1, #0x3
  4031d4:	390008e3 	strb	w3, [x7, #2]
  4031d8:	8b061126 	add	x6, x9, x6, lsl #4
  4031dc:	b9400024 	ldr	w4, [x1]
  4031e0:	aa0b03e3 	mov	x3, x11
  4031e4:	aa0903e1 	mov	x1, x9
  4031e8:	390004e5 	strb	w5, [x7, #1]
  4031ec:	b8401065 	ldur	w5, [x3, #1]
  4031f0:	91004021 	add	x1, x1, #0x10
  4031f4:	91004063 	add	x3, x3, #0x10
  4031f8:	138460a4 	extr	w4, w5, w4, #24
  4031fc:	b81f0024 	stur	w4, [x1, #-16]
  403200:	b85f5064 	ldur	w4, [x3, #-11]
  403204:	13856085 	extr	w5, w4, w5, #24
  403208:	b81f4025 	stur	w5, [x1, #-12]
  40320c:	b85f9065 	ldur	w5, [x3, #-7]
  403210:	138460a4 	extr	w4, w5, w4, #24
  403214:	b81f8024 	stur	w4, [x1, #-8]
  403218:	b85fd064 	ldur	w4, [x3, #-3]
  40321c:	13856085 	extr	w5, w4, w5, #24
  403220:	b81fc025 	stur	w5, [x1, #-4]
  403224:	eb06003f 	cmp	x1, x6
  403228:	54fffe21 	b.ne	4031ec <memcpy+0x2ac>  // b.any
  40322c:	927ced07 	and	x7, x8, #0xfffffffffffffff0
  403230:	d1004c42 	sub	x2, x2, #0x13
  403234:	910040e7 	add	x7, x7, #0x10
  403238:	8b070161 	add	x1, x11, x7
  40323c:	cb0a1042 	sub	x2, x2, x10, lsl #4
  403240:	8b070127 	add	x7, x9, x7
  403244:	17ffff9b 	b	4030b0 <memcpy+0x170>
  403248:	aa0003e7 	mov	x7, x0
  40324c:	17ffff49 	b	402f70 <memcpy+0x30>
  403250:	927d0043 	and	x3, x2, #0x8
  403254:	927e0046 	and	x6, x2, #0x4
  403258:	927f0045 	and	x5, x2, #0x2
  40325c:	aa0703e4 	mov	x4, x7
  403260:	92400042 	and	x2, x2, #0x1
  403264:	17ffff9c 	b	4030d4 <memcpy+0x194>
  403268:	aa0403e3 	mov	x3, x4
  40326c:	17ffff9f 	b	4030e8 <memcpy+0x1a8>
  403270:	aa0303e7 	mov	x7, x3
  403274:	b4ffec65 	cbz	x5, 403000 <memcpy+0xc0>
  403278:	17ffff5c 	b	402fe8 <memcpy+0xa8>
  40327c:	927d0045 	and	x5, x2, #0x8
  403280:	927e0044 	and	x4, x2, #0x4
  403284:	927f0043 	and	x3, x2, #0x2
  403288:	92400042 	and	x2, x2, #0x1
  40328c:	17ffff50 	b	402fcc <memcpy+0x8c>

0000000000403290 <__set_thread_area>:
  403290:	d51bd040 	msr	tpidr_el0, x0
  403294:	52800000 	mov	w0, #0x0                   	// #0
  403298:	d65f03c0 	ret

000000000040329c <nanosleep>:
  40329c:	aa0103e2 	mov	x2, x1
  4032a0:	aa0003e1 	mov	x1, x0
  4032a4:	f81f0ffe 	str	x30, [sp, #-16]!
  4032a8:	d2800006 	mov	x6, #0x0                   	// #0
  4032ac:	d2800005 	mov	x5, #0x0                   	// #0
  4032b0:	d2800004 	mov	x4, #0x0                   	// #0
  4032b4:	d2800003 	mov	x3, #0x0                   	// #0
  4032b8:	d2800ca0 	mov	x0, #0x65                  	// #101
  4032bc:	94000122 	bl	403744 <__syscall_cp>
  4032c0:	94000004 	bl	4032d0 <__syscall_ret>
  4032c4:	f84107fe 	ldr	x30, [sp], #16
  4032c8:	d65f03c0 	ret
  4032cc:	00000000 	.inst	0x00000000 ; undefined

00000000004032d0 <__syscall_ret>:
  4032d0:	b140041f 	cmn	x0, #0x1, lsl #12
  4032d4:	54000068 	b.hi	4032e0 <__syscall_ret+0x10>  // b.pmore
  4032d8:	d65f03c0 	ret
  4032dc:	d503201f 	nop
  4032e0:	a9bf7bf3 	stp	x19, x30, [sp, #-16]!
  4032e4:	aa0003f3 	mov	x19, x0
  4032e8:	4b1303f3 	neg	w19, w19
  4032ec:	97fffd8c 	bl	40291c <__errno_location>
  4032f0:	b9000013 	str	w19, [x0]
  4032f4:	92800000 	mov	x0, #0xffffffffffffffff    	// #-1
  4032f8:	a8c17bf3 	ldp	x19, x30, [sp], #16
  4032fc:	d65f03c0 	ret

0000000000403300 <wcrtomb>:
  403300:	b4000080 	cbz	x0, 403310 <wcrtomb+0x10>
  403304:	7101fc3f 	cmp	w1, #0x7f
  403308:	54000108 	b.hi	403328 <wcrtomb+0x28>  // b.pmore
  40330c:	39000001 	strb	w1, [x0]
  403310:	d2800020 	mov	x0, #0x1                   	// #1
  403314:	d65f03c0 	ret
  403318:	39000001 	strb	w1, [x0]
  40331c:	d2800020 	mov	x0, #0x1                   	// #1
  403320:	f84107fe 	ldr	x30, [sp], #16
  403324:	d65f03c0 	ret
  403328:	f81f0ffe 	str	x30, [sp, #-16]!
  40332c:	2a0103e2 	mov	w2, w1
  403330:	d53bd044 	mrs	x4, tpidr_el0
  403334:	f85d0084 	ldur	x4, [x4, #-48]
  403338:	aa0003e3 	mov	x3, x0
  40333c:	f9400084 	ldr	x4, [x4]
  403340:	b5000144 	cbnz	x4, 403368 <wcrtomb+0x68>
  403344:	129befe3 	mov	w3, #0xffff2080            	// #-57216
  403348:	0b030022 	add	w2, w1, w3
  40334c:	7101fc5f 	cmp	w2, #0x7f
  403350:	54fffe49 	b.ls	403318 <wcrtomb+0x18>  // b.plast
  403354:	97fffd72 	bl	40291c <__errno_location>
  403358:	52800a81 	mov	w1, #0x54                  	// #84
  40335c:	b9000001 	str	w1, [x0]
  403360:	92800000 	mov	x0, #0xffffffffffffffff    	// #-1
  403364:	17ffffef 	b	403320 <wcrtomb+0x20>
  403368:	711ffc3f 	cmp	w1, #0x7ff
  40336c:	54000128 	b.hi	403390 <wcrtomb+0x90>  // b.pmore
  403370:	53067c20 	lsr	w0, w1, #6
  403374:	12001422 	and	w2, w1, #0x3f
  403378:	321a6400 	orr	w0, w0, #0xffffffc0
  40337c:	32196042 	orr	w2, w2, #0xffffff80
  403380:	39000060 	strb	w0, [x3]
  403384:	d2800040 	mov	x0, #0x2                   	// #2
  403388:	39000462 	strb	w2, [x3, #1]
  40338c:	17ffffe5 	b	403320 <wcrtomb+0x20>
  403390:	5283ffe0 	mov	w0, #0x1fff                	// #8191
  403394:	51403821 	sub	w1, w1, #0xe, lsl #12
  403398:	6b00003f 	cmp	w1, w0
  40339c:	529affe0 	mov	w0, #0xd7ff                	// #55295
  4033a0:	7a408040 	ccmp	w2, w0, #0x0, hi  // hi = pmore
  4033a4:	54000188 	b.hi	4033d4 <wcrtomb+0xd4>  // b.pmore
  4033a8:	530c7c40 	lsr	w0, w2, #12
  4033ac:	321b6800 	orr	w0, w0, #0xffffffe0
  4033b0:	39000060 	strb	w0, [x3]
  4033b4:	d3462c40 	ubfx	x0, x2, #6, #6
  4033b8:	12001442 	and	w2, w2, #0x3f
  4033bc:	32196000 	orr	w0, w0, #0xffffff80
  4033c0:	32196042 	orr	w2, w2, #0xffffff80
  4033c4:	39000460 	strb	w0, [x3, #1]
  4033c8:	39000862 	strb	w2, [x3, #2]
  4033cc:	d2800060 	mov	x0, #0x3                   	// #3
  4033d0:	17ffffd4 	b	403320 <wcrtomb+0x20>
  4033d4:	51404041 	sub	w1, w2, #0x10, lsl #12
  4033d8:	12bffe00 	mov	w0, #0xfffff               	// #1048575
  4033dc:	6b00003f 	cmp	w1, w0
  4033e0:	54fffba8 	b.hi	403354 <wcrtomb+0x54>  // b.pmore
  4033e4:	53127c40 	lsr	w0, w2, #18
  4033e8:	321c6c00 	orr	w0, w0, #0xfffffff0
  4033ec:	39000060 	strb	w0, [x3]
  4033f0:	d34c4440 	ubfx	x0, x2, #12, #6
  4033f4:	32196000 	orr	w0, w0, #0xffffff80
  4033f8:	39000460 	strb	w0, [x3, #1]
  4033fc:	d3462c40 	ubfx	x0, x2, #6, #6
  403400:	12001442 	and	w2, w2, #0x3f
  403404:	32196000 	orr	w0, w0, #0xffffff80
  403408:	32196042 	orr	w2, w2, #0xffffff80
  40340c:	39000860 	strb	w0, [x3, #2]
  403410:	39000c62 	strb	w2, [x3, #3]
  403414:	d2800080 	mov	x0, #0x4                   	// #4
  403418:	17ffffc2 	b	403320 <wcrtomb+0x20>

000000000040341c <close_file>:
  40341c:	b4000340 	cbz	x0, 403484 <close_file+0x68>
  403420:	a9bf7bf3 	stp	x19, x30, [sp, #-16]!
  403424:	aa0003f3 	mov	x19, x0
  403428:	b9408c01 	ldr	w1, [x0, #140]
  40342c:	37f80041 	tbnz	w1, #31, 403434 <close_file+0x18>
  403430:	97fffdac 	bl	402ae0 <__lockfile>
  403434:	f9401661 	ldr	x1, [x19, #40]
  403438:	f9401e60 	ldr	x0, [x19, #56]
  40343c:	eb00003f 	cmp	x1, x0
  403440:	540000c0 	b.eq	403458 <close_file+0x3c>  // b.none
  403444:	f9402663 	ldr	x3, [x19, #72]
  403448:	aa1303e0 	mov	x0, x19
  40344c:	d2800002 	mov	x2, #0x0                   	// #0
  403450:	d2800001 	mov	x1, #0x0                   	// #0
  403454:	d63f0060 	blr	x3
  403458:	a9408261 	ldp	x1, x0, [x19, #8]
  40345c:	eb00003f 	cmp	x1, x0
  403460:	540000e0 	b.eq	40347c <close_file+0x60>  // b.none
  403464:	cb000021 	sub	x1, x1, x0
  403468:	f9402a63 	ldr	x3, [x19, #80]
  40346c:	aa1303e0 	mov	x0, x19
  403470:	52800022 	mov	w2, #0x1                   	// #1
  403474:	a8c17bf3 	ldp	x19, x30, [sp], #16
  403478:	d61f0060 	br	x3
  40347c:	a8c17bf3 	ldp	x19, x30, [sp], #16
  403480:	d65f03c0 	ret
  403484:	d65f03c0 	ret

0000000000403488 <__stdio_exit>:
  403488:	a9bf7bf3 	stp	x19, x30, [sp, #-16]!
  40348c:	9400004a 	bl	4035b4 <__ofl_lock>
  403490:	f9400013 	ldr	x19, [x0]
  403494:	b5000173 	cbnz	x19, 4034c0 <__stdio_exit+0x38>
  403498:	900000a0 	adrp	x0, 417000 <__dso_handle>
  40349c:	f9436000 	ldr	x0, [x0, #1728]
  4034a0:	97ffffdf 	bl	40341c <close_file>
  4034a4:	900000a0 	adrp	x0, 417000 <__dso_handle>
  4034a8:	f9407800 	ldr	x0, [x0, #240]
  4034ac:	97ffffdc 	bl	40341c <close_file>
  4034b0:	900000a0 	adrp	x0, 417000 <__dso_handle>
  4034b4:	a8c17bf3 	ldp	x19, x30, [sp], #16
  4034b8:	f9436000 	ldr	x0, [x0, #1728]
  4034bc:	17ffffd8 	b	40341c <close_file>
  4034c0:	aa1303e0 	mov	x0, x19
  4034c4:	97ffffd6 	bl	40341c <close_file>
  4034c8:	f9403a73 	ldr	x19, [x19, #112]
  4034cc:	17fffff2 	b	403494 <__stdio_exit+0xc>

00000000004034d0 <__stdio_write>:
  4034d0:	a9bb53f3 	stp	x19, x20, [sp, #-80]!
  4034d4:	aa0003f3 	mov	x19, x0
  4034d8:	a9015bf5 	stp	x21, x22, [sp, #16]
  4034dc:	9100c3f4 	add	x20, sp, #0x30
  4034e0:	a9027bf7 	stp	x23, x30, [sp, #32]
  4034e4:	aa0203f6 	mov	x22, x2
  4034e8:	52800057 	mov	w23, #0x2                   	// #2
  4034ec:	a9040be1 	stp	x1, x2, [sp, #64]
  4034f0:	f9401415 	ldr	x21, [x0, #40]
  4034f4:	f9401c00 	ldr	x0, [x0, #56]
  4034f8:	cb0002b5 	sub	x21, x21, x0
  4034fc:	a90357e0 	stp	x0, x21, [sp, #48]
  403500:	8b0202b5 	add	x21, x21, x2
  403504:	d2800848 	mov	x8, #0x42                  	// #66
  403508:	aa1403e1 	mov	x1, x20
  40350c:	93407ee2 	sxtw	x2, w23
  403510:	b9807a60 	ldrsw	x0, [x19, #120]
  403514:	d4000001 	svc	#0x0
  403518:	97ffff6e 	bl	4032d0 <__syscall_ret>
  40351c:	eb0002bf 	cmp	x21, x0
  403520:	54000141 	b.ne	403548 <__stdio_write+0x78>  // b.any
  403524:	a9458660 	ldp	x0, x1, [x19, #88]
  403528:	f9001e60 	str	x0, [x19, #56]
  40352c:	8b010001 	add	x1, x0, x1
  403530:	a9020261 	stp	x1, x0, [x19, #32]
  403534:	aa1603e0 	mov	x0, x22
  403538:	a9415bf5 	ldp	x21, x22, [sp, #16]
  40353c:	a9427bf7 	ldp	x23, x30, [sp, #32]
  403540:	a8c553f3 	ldp	x19, x20, [sp], #80
  403544:	d65f03c0 	ret
  403548:	b6f80160 	tbz	x0, #63, 403574 <__stdio_write+0xa4>
  40354c:	b9400260 	ldr	w0, [x19]
  403550:	71000aff 	cmp	w23, #0x2
  403554:	a9027e7f 	stp	xzr, xzr, [x19, #32]
  403558:	321b0000 	orr	w0, w0, #0x20
  40355c:	f9001e7f 	str	xzr, [x19, #56]
  403560:	b9000260 	str	w0, [x19]
  403564:	54000240 	b.eq	4035ac <__stdio_write+0xdc>  // b.none
  403568:	f9400680 	ldr	x0, [x20, #8]
  40356c:	cb0002d6 	sub	x22, x22, x0
  403570:	17fffff1 	b	403534 <__stdio_write+0x64>
  403574:	f9400681 	ldr	x1, [x20, #8]
  403578:	cb0002b5 	sub	x21, x21, x0
  40357c:	eb01001f 	cmp	x0, x1
  403580:	54000089 	b.ls	403590 <__stdio_write+0xc0>  // b.plast
  403584:	cb010000 	sub	x0, x0, x1
  403588:	91004294 	add	x20, x20, #0x10
  40358c:	510006f7 	sub	w23, w23, #0x1
  403590:	f9400281 	ldr	x1, [x20]
  403594:	8b000021 	add	x1, x1, x0
  403598:	f9000281 	str	x1, [x20]
  40359c:	f9400681 	ldr	x1, [x20, #8]
  4035a0:	cb000020 	sub	x0, x1, x0
  4035a4:	f9000680 	str	x0, [x20, #8]
  4035a8:	17ffffd7 	b	403504 <__stdio_write+0x34>
  4035ac:	d2800016 	mov	x22, #0x0                   	// #0
  4035b0:	17ffffe1 	b	403534 <__stdio_write+0x64>

00000000004035b4 <__ofl_lock>:
  4035b4:	900000a0 	adrp	x0, 417000 <__dso_handle>
  4035b8:	f81f0ffe 	str	x30, [sp, #-16]!
  4035bc:	911b4000 	add	x0, x0, #0x6d0
  4035c0:	94000008 	bl	4035e0 <__lock>
  4035c4:	900000a0 	adrp	x0, 417000 <__dso_handle>
  4035c8:	f84107fe 	ldr	x30, [sp], #16
  4035cc:	911b2000 	add	x0, x0, #0x6c8
  4035d0:	d65f03c0 	ret

00000000004035d4 <__ofl_unlock>:
  4035d4:	900000a0 	adrp	x0, 417000 <__dso_handle>
  4035d8:	911b4000 	add	x0, x0, #0x6d0
  4035dc:	1400003b 	b	4036c8 <__unlock>

00000000004035e0 <__lock>:
  4035e0:	aa0003e5 	mov	x5, x0
  4035e4:	900000a0 	adrp	x0, 417000 <__dso_handle>
  4035e8:	911ba000 	add	x0, x0, #0x6e8
  4035ec:	b9400c00 	ldr	w0, [x0, #12]
  4035f0:	340006a0 	cbz	w0, 4036c4 <__lock+0xe4>
  4035f4:	320107e1 	mov	w1, #0x80000001            	// #-2147483647
  4035f8:	885ffca0 	ldaxr	w0, [x5]
  4035fc:	34000540 	cbz	w0, 4036a4 <__lock+0xc4>
  403600:	d5033bbf 	dmb	ish
  403604:	52800141 	mov	w1, #0xa                   	// #10
  403608:	12b00004 	mov	w4, #0x7fffffff            	// #2147483647
  40360c:	320107e6 	mov	w6, #0x80000001            	// #-2147483647
  403610:	0b040002 	add	w2, w0, w4
  403614:	7100001f 	cmp	w0, #0x0
  403618:	1a80b040 	csel	w0, w2, w0, lt  // lt = tstop
  40361c:	0b060002 	add	w2, w0, w6
  403620:	885ffca3 	ldaxr	w3, [x5]
  403624:	6b03001f 	cmp	w0, w3
  403628:	54000440 	b.eq	4036b0 <__lock+0xd0>  // b.none
  40362c:	d5033bbf 	dmb	ish
  403630:	71000421 	subs	w1, w1, #0x1
  403634:	2a0303e0 	mov	w0, w3
  403638:	54fffec1 	b.ne	403610 <__lock+0x30>  // b.any
  40363c:	885ffca4 	ldaxr	w4, [x5]
  403640:	11000484 	add	w4, w4, #0x1
  403644:	8800fca4 	stlxr	w0, w4, [x5]
  403648:	35ffffa0 	cbnz	w0, 40363c <__lock+0x5c>
  40364c:	12b00007 	mov	w7, #0x7fffffff            	// #2147483647
  403650:	52b00006 	mov	w6, #0x80000000            	// #-2147483648
  403654:	36f801a4 	tbz	w4, #31, 403688 <__lock+0xa8>
  403658:	d2800c48 	mov	x8, #0x62                  	// #98
  40365c:	aa0503e0 	mov	x0, x5
  403660:	d2801001 	mov	x1, #0x80                  	// #128
  403664:	93407c82 	sxtw	x2, w4
  403668:	d2800003 	mov	x3, #0x0                   	// #0
  40366c:	d4000001 	svc	#0x0
  403670:	b100981f 	cmn	x0, #0x26
  403674:	54000081 	b.ne	403684 <__lock+0xa4>  // b.any
  403678:	aa0503e0 	mov	x0, x5
  40367c:	d2800001 	mov	x1, #0x0                   	// #0
  403680:	d4000001 	svc	#0x0
  403684:	0b070084 	add	w4, w4, w7
  403688:	0b060080 	add	w0, w4, w6
  40368c:	885ffca1 	ldaxr	w1, [x5]
  403690:	6b01009f 	cmp	w4, w1
  403694:	54000140 	b.eq	4036bc <__lock+0xdc>  // b.none
  403698:	d5033bbf 	dmb	ish
  40369c:	2a0103e4 	mov	w4, w1
  4036a0:	17ffffed 	b	403654 <__lock+0x74>
  4036a4:	8800fca1 	stlxr	w0, w1, [x5]
  4036a8:	35fffa80 	cbnz	w0, 4035f8 <__lock+0x18>
  4036ac:	d65f03c0 	ret
  4036b0:	8803fca2 	stlxr	w3, w2, [x5]
  4036b4:	35fffb63 	cbnz	w3, 403620 <__lock+0x40>
  4036b8:	d65f03c0 	ret
  4036bc:	8801fca0 	stlxr	w1, w0, [x5]
  4036c0:	35fffe61 	cbnz	w1, 40368c <__lock+0xac>
  4036c4:	d65f03c0 	ret

00000000004036c8 <__unlock>:
  4036c8:	aa0003e3 	mov	x3, x0
  4036cc:	b9400000 	ldr	w0, [x0]
  4036d0:	36f80260 	tbz	w0, #31, 40371c <__unlock+0x54>
  4036d4:	12b00004 	mov	w4, #0x7fffffff            	// #2147483647
  4036d8:	885ffc60 	ldaxr	w0, [x3]
  4036dc:	0b040001 	add	w1, w0, w4
  4036e0:	8802fc61 	stlxr	w2, w1, [x3]
  4036e4:	35ffffa2 	cbnz	w2, 4036d8 <__unlock+0x10>
  4036e8:	320107e1 	mov	w1, #0x80000001            	// #-2147483647
  4036ec:	6b01001f 	cmp	w0, w1
  4036f0:	54000160 	b.eq	40371c <__unlock+0x54>  // b.none
  4036f4:	d2800c48 	mov	x8, #0x62                  	// #98
  4036f8:	aa0303e0 	mov	x0, x3
  4036fc:	d2801021 	mov	x1, #0x81                  	// #129
  403700:	d2800022 	mov	x2, #0x1                   	// #1
  403704:	d4000001 	svc	#0x0
  403708:	b100981f 	cmn	x0, #0x26
  40370c:	54000081 	b.ne	40371c <__unlock+0x54>  // b.any
  403710:	aa0303e0 	mov	x0, x3
  403714:	aa0203e1 	mov	x1, x2
  403718:	d4000001 	svc	#0x0
  40371c:	d65f03c0 	ret

0000000000403720 <__syscall_cp_c>:
  403720:	aa0003e8 	mov	x8, x0
  403724:	aa0103e0 	mov	x0, x1
  403728:	aa0203e1 	mov	x1, x2
  40372c:	aa0303e2 	mov	x2, x3
  403730:	aa0403e3 	mov	x3, x4
  403734:	aa0503e4 	mov	x4, x5
  403738:	aa0603e5 	mov	x5, x6
  40373c:	d4000001 	svc	#0x0
  403740:	d65f03c0 	ret

0000000000403744 <__syscall_cp>:
  403744:	17fffff7 	b	403720 <__syscall_cp_c>

0000000000403748 <__addtf3>:
  403748:	9e660022 	fmov	x2, d1
  40374c:	9e660000 	fmov	x0, d0
  403750:	9eae0023 	fmov	x3, v1.d[1]
  403754:	9eae0001 	fmov	x1, v0.d[1]
  403758:	aa0203e5 	mov	x5, x2
  40375c:	aa0003e4 	mov	x4, x0
  403760:	aa0303e2 	mov	x2, x3
  403764:	d53b4407 	mrs	x7, fpcr
  403768:	d37ffc2c 	lsr	x12, x1, #63
  40376c:	d37ffc4b 	lsr	x11, x2, #63
  403770:	d370f826 	ubfx	x6, x1, #48, #15
  403774:	d37dbc21 	ubfiz	x1, x1, #3, #48
  403778:	53001d88 	uxtb	w8, w12
  40377c:	53001d6e 	uxtb	w14, w11
  403780:	eb0e011f 	cmp	x8, x14
  403784:	53003cc3 	uxth	w3, w6
  403788:	53003cc9 	uxth	w9, w6
  40378c:	d370f846 	ubfx	x6, x2, #48, #15
  403790:	d37dbc42 	ubfiz	x2, x2, #3, #48
  403794:	aa40f421 	orr	x1, x1, x0, lsr #61
  403798:	d37df00a 	lsl	x10, x0, #3
  40379c:	d37df0ad 	lsl	x13, x5, #3
  4037a0:	53003cc0 	uxth	w0, w6
  4037a4:	aa45f442 	orr	x2, x2, x5, lsr #61
  4037a8:	53003cc6 	uxth	w6, w6
  4037ac:	54000ca0 	b.eq	403940 <__addtf3+0x1f8>  // b.none
  4037b0:	4b000063 	sub	w3, w3, w0
  4037b4:	7100007f 	cmp	w3, #0x0
  4037b8:	54001a0d 	b.le	403af8 <__addtf3+0x3b0>
  4037bc:	b50009a6 	cbnz	x6, 4038f0 <__addtf3+0x1a8>
  4037c0:	aa0d0040 	orr	x0, x2, x13
  4037c4:	b4000ee0 	cbz	x0, 4039a0 <__addtf3+0x258>
  4037c8:	71000463 	subs	w3, w3, #0x1
  4037cc:	54002361 	b.ne	403c38 <__addtf3+0x4f0>  // b.any
  4037d0:	cb0d014d 	sub	x13, x10, x13
  4037d4:	eb0d015f 	cmp	x10, x13
  4037d8:	aa0d03ea 	mov	x10, x13
  4037dc:	da020021 	sbc	x1, x1, x2
  4037e0:	9240c824 	and	x4, x1, #0x7ffffffffffff
  4037e4:	b6980c01 	tbz	x1, #51, 403964 <__addtf3+0x21c>
  4037e8:	dac01142 	clz	x2, x10
  4037ec:	f100009f 	cmp	x4, #0x0
  4037f0:	11010042 	add	w2, w2, #0x40
  4037f4:	dac01080 	clz	x0, x4
  4037f8:	1a800040 	csel	w0, w2, w0, eq  // eq = none
  4037fc:	51003002 	sub	w2, w0, #0xc
  403800:	7100fc5f 	cmp	w2, #0x3f
  403804:	54001e2c 	b.gt	403bc8 <__addtf3+0x480>
  403808:	52800800 	mov	w0, #0x40                  	// #64
  40380c:	9ac22084 	lsl	x4, x4, x2
  403810:	4b020000 	sub	w0, w0, w2
  403814:	9ac02540 	lsr	x0, x10, x0
  403818:	9ac2214a 	lsl	x10, x10, x2
  40381c:	aa040000 	orr	x0, x0, x4
  403820:	93407c41 	sxtw	x1, w2
  403824:	eb01013f 	cmp	x9, x1
  403828:	54001c8c 	b.gt	403bb8 <__addtf3+0x470>
  40382c:	4b090042 	sub	w2, w2, w9
  403830:	11000442 	add	w2, w2, #0x1
  403834:	7100fc5f 	cmp	w2, #0x3f
  403838:	5400208c 	b.gt	403c48 <__addtf3+0x500>
  40383c:	52800803 	mov	w3, #0x40                  	// #64
  403840:	9ac22544 	lsr	x4, x10, x2
  403844:	4b020063 	sub	w3, w3, w2
  403848:	9ac22401 	lsr	x1, x0, x2
  40384c:	9ac32145 	lsl	x5, x10, x3
  403850:	9ac32000 	lsl	x0, x0, x3
  403854:	f10000bf 	cmp	x5, #0x0
  403858:	aa040000 	orr	x0, x0, x4
  40385c:	9a9f07e5 	cset	x5, ne  // ne = any
  403860:	aa05000a 	orr	x10, x0, x5
  403864:	aa010140 	orr	x0, x10, x1
  403868:	92400944 	and	x4, x10, #0x7
  40386c:	f100001f 	cmp	x0, #0x0
  403870:	1a9f07e3 	cset	w3, ne  // ne = any
  403874:	b4000844 	cbz	x4, 40397c <__addtf3+0x234>
  403878:	926a04e2 	and	x2, x7, #0xc00000
  40387c:	d2800009 	mov	x9, #0x0                   	// #0
  403880:	52800000 	mov	w0, #0x0                   	// #0
  403884:	f150005f 	cmp	x2, #0x400, lsl #12
  403888:	321c0000 	orr	w0, w0, #0x10
  40388c:	54001800 	b.eq	403b8c <__addtf3+0x444>  // b.none
  403890:	f160005f 	cmp	x2, #0x800, lsl #12
  403894:	540018c0 	b.eq	403bac <__addtf3+0x464>  // b.none
  403898:	b40011a2 	cbz	x2, 403acc <__addtf3+0x384>
  40389c:	34001283 	cbz	w3, 403aec <__addtf3+0x3a4>
  4038a0:	924d0022 	and	x2, x1, #0x8000000000000
  4038a4:	2a0803ec 	mov	w12, w8
  4038a8:	321d0000 	orr	w0, w0, #0x8
  4038ac:	b40008a2 	cbz	x2, 4039c0 <__addtf3+0x278>
  4038b0:	91000529 	add	x9, x9, #0x1
  4038b4:	d28fffe2 	mov	x2, #0x7fff                	// #32767
  4038b8:	eb02013f 	cmp	x9, x2
  4038bc:	54001420 	b.eq	403b40 <__addtf3+0x3f8>  // b.none
  4038c0:	924cf821 	and	x1, x1, #0xfff7ffffffffffff
  4038c4:	12003926 	and	w6, w9, #0x7fff
  4038c8:	d343c824 	ubfx	x4, x1, #3, #48
  4038cc:	93ca0c25 	extr	x5, x1, x10, #3
  4038d0:	9e6700a0 	fmov	d0, x5
  4038d4:	d2800003 	mov	x3, #0x0                   	// #0
  4038d8:	b340bc83 	bfxil	x3, x4, #0, #48
  4038dc:	b35038c3 	bfi	x3, x6, #48, #15
  4038e0:	b3410183 	bfi	x3, x12, #63, #1
  4038e4:	9eaf0060 	fmov	v0.d[1], x3
  4038e8:	35000900 	cbnz	w0, 403a08 <__addtf3+0x2c0>
  4038ec:	d65f03c0 	ret
  4038f0:	d28fffe0 	mov	x0, #0x7fff                	// #32767
  4038f4:	b24d0042 	orr	x2, x2, #0x8000000000000
  4038f8:	eb00013f 	cmp	x9, x0
  4038fc:	54000580 	b.eq	4039ac <__addtf3+0x264>  // b.none
  403900:	7101d07f 	cmp	w3, #0x74
  403904:	5400092c 	b.gt	403a28 <__addtf3+0x2e0>
  403908:	7100fc7f 	cmp	w3, #0x3f
  40390c:	54001bec 	b.gt	403c88 <__addtf3+0x540>
  403910:	52800800 	mov	w0, #0x40                  	// #64
  403914:	4b030000 	sub	w0, w0, w3
  403918:	9ac02044 	lsl	x4, x2, x0
  40391c:	9ac021a0 	lsl	x0, x13, x0
  403920:	f100001f 	cmp	x0, #0x0
  403924:	9ac325ad 	lsr	x13, x13, x3
  403928:	aa0d008d 	orr	x13, x4, x13
  40392c:	9a9f07e4 	cset	x4, ne  // ne = any
  403930:	aa0d0084 	orr	x4, x4, x13
  403934:	9ac32443 	lsr	x3, x2, x3
  403938:	14000040 	b	403a38 <__addtf3+0x2f0>
  40393c:	d503201f 	nop
  403940:	4b000060 	sub	w0, w3, w0
  403944:	7100001f 	cmp	w0, #0x0
  403948:	5400150d 	b.le	403be8 <__addtf3+0x4a0>
  40394c:	b5000826 	cbnz	x6, 403a50 <__addtf3+0x308>
  403950:	aa0d0043 	orr	x3, x2, x13
  403954:	b5001fe3 	cbnz	x3, 403d50 <__addtf3+0x608>
  403958:	d28fffe0 	mov	x0, #0x7fff                	// #32767
  40395c:	eb00013f 	cmp	x9, x0
  403960:	54002700 	b.eq	403e40 <__addtf3+0x6f8>  // b.none
  403964:	b50009e9 	cbnz	x9, 403aa0 <__addtf3+0x358>
  403968:	92400944 	and	x4, x10, #0x7
  40396c:	aa010140 	orr	x0, x10, x1
  403970:	f100001f 	cmp	x0, #0x0
  403974:	1a9f07e3 	cset	w3, ne  // ne = any
  403978:	b5fff804 	cbnz	x4, 403878 <__addtf3+0x130>
  40397c:	d2800009 	mov	x9, #0x0                   	// #0
  403980:	52800000 	mov	w0, #0x0                   	// #0
  403984:	924d0022 	and	x2, x1, #0x8000000000000
  403988:	2a0803ec 	mov	w12, w8
  40398c:	34fff903 	cbz	w3, 4038ac <__addtf3+0x164>
  403990:	365ff8e7 	tbz	w7, #11, 4038ac <__addtf3+0x164>
  403994:	321d0000 	orr	w0, w0, #0x8
  403998:	17ffffc5 	b	4038ac <__addtf3+0x164>
  40399c:	d503201f 	nop
  4039a0:	d28fffe0 	mov	x0, #0x7fff                	// #32767
  4039a4:	eb00013f 	cmp	x9, x0
  4039a8:	54fffde1 	b.ne	403964 <__addtf3+0x21c>  // b.any
  4039ac:	aa0a0020 	orr	x0, x1, x10
  4039b0:	b5001140 	cbnz	x0, 403bd8 <__addtf3+0x490>
  4039b4:	d2800001 	mov	x1, #0x0                   	// #0
  4039b8:	d280000a 	mov	x10, #0x0                   	// #0
  4039bc:	d28fffe9 	mov	x9, #0x7fff                	// #32767
  4039c0:	12003926 	and	w6, w9, #0x7fff
  4039c4:	93ca0c25 	extr	x5, x1, x10, #3
  4039c8:	d343fc21 	lsr	x1, x1, #3
  4039cc:	d28fffe2 	mov	x2, #0x7fff                	// #32767
  4039d0:	9240bc24 	and	x4, x1, #0xffffffffffff
  4039d4:	eb02013f 	cmp	x9, x2
  4039d8:	54fff7c1 	b.ne	4038d0 <__addtf3+0x188>  // b.any
  4039dc:	aa0100a2 	orr	x2, x5, x1
  4039e0:	b4000a82 	cbz	x2, 403b30 <__addtf3+0x3e8>
  4039e4:	9e6700a0 	fmov	d0, x5
  4039e8:	b2510024 	orr	x4, x1, #0x800000000000
  4039ec:	9240bc84 	and	x4, x4, #0xffffffffffff
  4039f0:	d2800003 	mov	x3, #0x0                   	// #0
  4039f4:	b340bc83 	bfxil	x3, x4, #0, #48
  4039f8:	b35038c3 	bfi	x3, x6, #48, #15
  4039fc:	b3410183 	bfi	x3, x12, #63, #1
  403a00:	9eaf0060 	fmov	v0.d[1], x3
  403a04:	34fff740 	cbz	w0, 4038ec <__addtf3+0x1a4>
  403a08:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  403a0c:	910003fd 	mov	x29, sp
  403a10:	3d8007a0 	str	q0, [x29, #16]
  403a14:	940008cb 	bl	405d40 <__sfp_handle_exceptions>
  403a18:	3dc007a0 	ldr	q0, [x29, #16]
  403a1c:	a8c27bfd 	ldp	x29, x30, [sp], #32
  403a20:	d65f03c0 	ret
  403a24:	d503201f 	nop
  403a28:	aa0d0042 	orr	x2, x2, x13
  403a2c:	d2800003 	mov	x3, #0x0                   	// #0
  403a30:	f100005f 	cmp	x2, #0x0
  403a34:	9a9f07e4 	cset	x4, ne  // ne = any
  403a38:	cb040144 	sub	x4, x10, x4
  403a3c:	eb04015f 	cmp	x10, x4
  403a40:	aa0403ea 	mov	x10, x4
  403a44:	da030021 	sbc	x1, x1, x3
  403a48:	17ffff66 	b	4037e0 <__addtf3+0x98>
  403a4c:	d503201f 	nop
  403a50:	d28fffe3 	mov	x3, #0x7fff                	// #32767
  403a54:	b24d0042 	orr	x2, x2, #0x8000000000000
  403a58:	eb03013f 	cmp	x9, x3
  403a5c:	54fffa80 	b.eq	4039ac <__addtf3+0x264>  // b.none
  403a60:	7101d01f 	cmp	w0, #0x74
  403a64:	540019ec 	b.gt	403da0 <__addtf3+0x658>
  403a68:	7100fc1f 	cmp	w0, #0x3f
  403a6c:	540020ac 	b.gt	403e80 <__addtf3+0x738>
  403a70:	52800803 	mov	w3, #0x40                  	// #64
  403a74:	9ac025a4 	lsr	x4, x13, x0
  403a78:	4b000063 	sub	w3, w3, w0
  403a7c:	9ac02440 	lsr	x0, x2, x0
  403a80:	9ac321ad 	lsl	x13, x13, x3
  403a84:	9ac32042 	lsl	x2, x2, x3
  403a88:	f10001bf 	cmp	x13, #0x0
  403a8c:	aa040043 	orr	x3, x2, x4
  403a90:	9a9f07e2 	cset	x2, ne  // ne = any
  403a94:	aa030042 	orr	x2, x2, x3
  403a98:	140000c6 	b	403db0 <__addtf3+0x668>
  403a9c:	d503201f 	nop
  403aa0:	52800000 	mov	w0, #0x0                   	// #0
  403aa4:	f240095f 	tst	x10, #0x7
  403aa8:	54000220 	b.eq	403aec <__addtf3+0x3a4>  // b.none
  403aac:	926a04e3 	and	x3, x7, #0xc00000
  403ab0:	321c0000 	orr	w0, w0, #0x10
  403ab4:	f150007f 	cmp	x3, #0x400, lsl #12
  403ab8:	54000680 	b.eq	403b88 <__addtf3+0x440>  // b.none
  403abc:	f160007f 	cmp	x3, #0x800, lsl #12
  403ac0:	54000740 	b.eq	403ba8 <__addtf3+0x460>  // b.none
  403ac4:	b5000143 	cbnz	x3, 403aec <__addtf3+0x3a4>
  403ac8:	52800003 	mov	w3, #0x0                   	// #0
  403acc:	92400d42 	and	x2, x10, #0xf
  403ad0:	f100105f 	cmp	x2, #0x4
  403ad4:	54ffee40 	b.eq	40389c <__addtf3+0x154>  // b.none
  403ad8:	91001142 	add	x2, x10, #0x4
  403adc:	eb0a005f 	cmp	x2, x10
  403ae0:	aa0203ea 	mov	x10, x2
  403ae4:	9a812421 	cinc	x1, x1, cc  // cc = lo, ul, last
  403ae8:	35ffedc3 	cbnz	w3, 4038a0 <__addtf3+0x158>
  403aec:	924d0022 	and	x2, x1, #0x8000000000000
  403af0:	2a0803ec 	mov	w12, w8
  403af4:	17ffff6e 	b	4038ac <__addtf3+0x164>
  403af8:	54000e41 	b.ne	403cc0 <__addtf3+0x578>  // b.any
  403afc:	91000520 	add	x0, x9, #0x1
  403b00:	92403800 	and	x0, x0, #0x7fff
  403b04:	f100041f 	cmp	x0, #0x1
  403b08:	54001a8d 	b.le	403e58 <__addtf3+0x710>
  403b0c:	cb0d0140 	sub	x0, x10, x13
  403b10:	eb00015f 	cmp	x10, x0
  403b14:	da020024 	sbc	x4, x1, x2
  403b18:	b6981084 	tbz	x4, #51, 403d28 <__addtf3+0x5e0>
  403b1c:	cb0a01aa 	sub	x10, x13, x10
  403b20:	aa0e03e8 	mov	x8, x14
  403b24:	eb0a01bf 	cmp	x13, x10
  403b28:	da010044 	sbc	x4, x2, x1
  403b2c:	17ffff2f 	b	4037e8 <__addtf3+0xa0>
  403b30:	d2800005 	mov	x5, #0x0                   	// #0
  403b34:	d2800004 	mov	x4, #0x0                   	// #0
  403b38:	17ffff66 	b	4038d0 <__addtf3+0x188>
  403b3c:	d503201f 	nop
  403b40:	f26a04e7 	ands	x7, x7, #0xc00000
  403b44:	54000720 	b.eq	403c28 <__addtf3+0x4e0>  // b.none
  403b48:	f15000ff 	cmp	x7, #0x400, lsl #12
  403b4c:	54001ca0 	b.eq	403ee0 <__addtf3+0x798>  // b.none
  403b50:	f16000ff 	cmp	x7, #0x800, lsl #12
  403b54:	528fffc6 	mov	w6, #0x7ffe                	// #32766
  403b58:	fa400904 	ccmp	x8, #0x0, #0x4, eq  // eq = none
  403b5c:	92fc0001 	mov	x1, #0x1fffffffffffffff    	// #2305843009213693951
  403b60:	1a9f07e2 	cset	w2, ne  // ne = any
  403b64:	d28fffc3 	mov	x3, #0x7ffe                	// #32766
  403b68:	7100005f 	cmp	w2, #0x0
  403b6c:	1a861126 	csel	w6, w9, w6, ne  // ne = any
  403b70:	9a9f0021 	csel	x1, x1, xzr, eq  // eq = none
  403b74:	da9f13e5 	csetm	x5, eq  // eq = none
  403b78:	9a831129 	csel	x9, x9, x3, ne  // ne = any
  403b7c:	52800282 	mov	w2, #0x14                  	// #20
  403b80:	2a020000 	orr	w0, w0, w2
  403b84:	17ffff92 	b	4039cc <__addtf3+0x284>
  403b88:	52800003 	mov	w3, #0x0                   	// #0
  403b8c:	b5ffe888 	cbnz	x8, 40389c <__addtf3+0x154>
  403b90:	91002142 	add	x2, x10, #0x8
  403b94:	eb0a005f 	cmp	x2, x10
  403b98:	aa0203ea 	mov	x10, x2
  403b9c:	9a812421 	cinc	x1, x1, cc  // cc = lo, ul, last
  403ba0:	17ffff3f 	b	40389c <__addtf3+0x154>
  403ba4:	d503201f 	nop
  403ba8:	52800003 	mov	w3, #0x0                   	// #0
  403bac:	b4ffe788 	cbz	x8, 40389c <__addtf3+0x154>
  403bb0:	17fffff8 	b	403b90 <__addtf3+0x448>
  403bb4:	d503201f 	nop
  403bb8:	cb010129 	sub	x9, x9, x1
  403bbc:	924cf801 	and	x1, x0, #0xfff7ffffffffffff
  403bc0:	17ffff69 	b	403964 <__addtf3+0x21c>
  403bc4:	d503201f 	nop
  403bc8:	51013000 	sub	w0, w0, #0x4c
  403bcc:	9ac02140 	lsl	x0, x10, x0
  403bd0:	d280000a 	mov	x10, #0x0                   	// #0
  403bd4:	17ffff13 	b	403820 <__addtf3+0xd8>
  403bd8:	d372fc20 	lsr	x0, x1, #50
  403bdc:	d2400000 	eor	x0, x0, #0x1
  403be0:	12000000 	and	w0, w0, #0x1
  403be4:	17ffffb0 	b	403aa4 <__addtf3+0x35c>
  403be8:	54001681 	b.ne	403eb8 <__addtf3+0x770>  // b.any
  403bec:	91000523 	add	x3, x9, #0x1
  403bf0:	9240386b 	and	x11, x3, #0x7fff
  403bf4:	f100057f 	cmp	x11, #0x1
  403bf8:	5400110d 	b.le	403e18 <__addtf3+0x6d0>
  403bfc:	d28fffe4 	mov	x4, #0x7fff                	// #32767
  403c00:	eb04007f 	cmp	x3, x4
  403c04:	540021e0 	b.eq	404040 <__addtf3+0x8f8>  // b.none
  403c08:	8b0d014d 	add	x13, x10, x13
  403c0c:	8b020021 	add	x1, x1, x2
  403c10:	eb0d015f 	cmp	x10, x13
  403c14:	aa0303e9 	mov	x9, x3
  403c18:	9a819421 	cinc	x1, x1, hi  // hi = pmore
  403c1c:	93cd042a 	extr	x10, x1, x13, #1
  403c20:	d341fc21 	lsr	x1, x1, #1
  403c24:	17ffffa0 	b	403aa4 <__addtf3+0x35c>
  403c28:	2a0903e6 	mov	w6, w9
  403c2c:	d2800001 	mov	x1, #0x0                   	// #0
  403c30:	d2800005 	mov	x5, #0x0                   	// #0
  403c34:	17ffffd2 	b	403b7c <__addtf3+0x434>
  403c38:	d28fffe0 	mov	x0, #0x7fff                	// #32767
  403c3c:	eb00013f 	cmp	x9, x0
  403c40:	54ffe601 	b.ne	403900 <__addtf3+0x1b8>  // b.any
  403c44:	17ffff5a 	b	4039ac <__addtf3+0x264>
  403c48:	51010043 	sub	w3, w2, #0x40
  403c4c:	7101005f 	cmp	w2, #0x40
  403c50:	9ac32403 	lsr	x3, x0, x3
  403c54:	54000da0 	b.eq	403e08 <__addtf3+0x6c0>  // b.none
  403c58:	52801001 	mov	w1, #0x80                  	// #128
  403c5c:	4b020021 	sub	w1, w1, w2
  403c60:	9ac12000 	lsl	x0, x0, x1
  403c64:	aa000140 	orr	x0, x10, x0
  403c68:	d2800001 	mov	x1, #0x0                   	// #0
  403c6c:	f100001f 	cmp	x0, #0x0
  403c70:	9a9f07e0 	cset	x0, ne  // ne = any
  403c74:	aa00006a 	orr	x10, x3, x0
  403c78:	f100015f 	cmp	x10, #0x0
  403c7c:	92400944 	and	x4, x10, #0x7
  403c80:	1a9f07e3 	cset	w3, ne  // ne = any
  403c84:	17fffefc 	b	403874 <__addtf3+0x12c>
  403c88:	51010064 	sub	w4, w3, #0x40
  403c8c:	7101007f 	cmp	w3, #0x40
  403c90:	9ac42444 	lsr	x4, x2, x4
  403c94:	54000be0 	b.eq	403e10 <__addtf3+0x6c8>  // b.none
  403c98:	52801000 	mov	w0, #0x80                  	// #128
  403c9c:	4b030003 	sub	w3, w0, w3
  403ca0:	9ac32042 	lsl	x2, x2, x3
  403ca4:	aa0d004d 	orr	x13, x2, x13
  403ca8:	d2800003 	mov	x3, #0x0                   	// #0
  403cac:	f10001bf 	cmp	x13, #0x0
  403cb0:	9a9f07e0 	cset	x0, ne  // ne = any
  403cb4:	aa000084 	orr	x4, x4, x0
  403cb8:	17ffff60 	b	403a38 <__addtf3+0x2f0>
  403cbc:	d503201f 	nop
  403cc0:	b4000849 	cbz	x9, 403dc8 <__addtf3+0x680>
  403cc4:	d28fffe0 	mov	x0, #0x7fff                	// #32767
  403cc8:	eb0000df 	cmp	x6, x0
  403ccc:	54001a00 	b.eq	40400c <__addtf3+0x8c4>  // b.none
  403cd0:	4b0303e3 	neg	w3, w3
  403cd4:	b24d0021 	orr	x1, x1, #0x8000000000000
  403cd8:	7101d07f 	cmp	w3, #0x74
  403cdc:	54001a6c 	b.gt	404028 <__addtf3+0x8e0>
  403ce0:	7100fc7f 	cmp	w3, #0x3f
  403ce4:	5400288c 	b.gt	4041f4 <__addtf3+0xaac>
  403ce8:	52800800 	mov	w0, #0x40                  	// #64
  403cec:	4b030000 	sub	w0, w0, w3
  403cf0:	9ac02024 	lsl	x4, x1, x0
  403cf4:	9ac02140 	lsl	x0, x10, x0
  403cf8:	f100001f 	cmp	x0, #0x0
  403cfc:	9ac32540 	lsr	x0, x10, x3
  403d00:	aa00008a 	orr	x10, x4, x0
  403d04:	9a9f07e0 	cset	x0, ne  // ne = any
  403d08:	aa0a0000 	orr	x0, x0, x10
  403d0c:	9ac32421 	lsr	x1, x1, x3
  403d10:	cb0001aa 	sub	x10, x13, x0
  403d14:	aa0603e9 	mov	x9, x6
  403d18:	eb0a01bf 	cmp	x13, x10
  403d1c:	aa0e03e8 	mov	x8, x14
  403d20:	da010041 	sbc	x1, x2, x1
  403d24:	17fffeaf 	b	4037e0 <__addtf3+0x98>
  403d28:	aa040001 	orr	x1, x0, x4
  403d2c:	b5000621 	cbnz	x1, 403df0 <__addtf3+0x6a8>
  403d30:	926a04e0 	and	x0, x7, #0xc00000
  403d34:	d2800001 	mov	x1, #0x0                   	// #0
  403d38:	f160001f 	cmp	x0, #0x800, lsl #12
  403d3c:	d280000a 	mov	x10, #0x0                   	// #0
  403d40:	9a9f17e8 	cset	x8, eq  // eq = none
  403d44:	52800000 	mov	w0, #0x0                   	// #0
  403d48:	d2800009 	mov	x9, #0x0                   	// #0
  403d4c:	17ffff0e 	b	403984 <__addtf3+0x23c>
  403d50:	71000400 	subs	w0, w0, #0x1
  403d54:	54000521 	b.ne	403df8 <__addtf3+0x6b0>  // b.any
  403d58:	8b0d014d 	add	x13, x10, x13
  403d5c:	8b020021 	add	x1, x1, x2
  403d60:	eb0d015f 	cmp	x10, x13
  403d64:	aa0d03ea 	mov	x10, x13
  403d68:	9a819421 	cinc	x1, x1, hi  // hi = pmore
  403d6c:	b69fdfc1 	tbz	x1, #51, 403964 <__addtf3+0x21c>
  403d70:	91000529 	add	x9, x9, #0x1
  403d74:	d28fffe0 	mov	x0, #0x7fff                	// #32767
  403d78:	eb00013f 	cmp	x9, x0
  403d7c:	540010a0 	b.eq	403f90 <__addtf3+0x848>  // b.none
  403d80:	92400145 	and	x5, x10, #0x1
  403d84:	924cf822 	and	x2, x1, #0xfff7ffffffffffff
  403d88:	52800000 	mov	w0, #0x0                   	// #0
  403d8c:	aa4a04a5 	orr	x5, x5, x10, lsr #1
  403d90:	d341fc41 	lsr	x1, x2, #1
  403d94:	aa02fcaa 	orr	x10, x5, x2, lsl #63
  403d98:	17ffff43 	b	403aa4 <__addtf3+0x35c>
  403d9c:	d503201f 	nop
  403da0:	aa0d0042 	orr	x2, x2, x13
  403da4:	d2800000 	mov	x0, #0x0                   	// #0
  403da8:	f100005f 	cmp	x2, #0x0
  403dac:	9a9f07e2 	cset	x2, ne  // ne = any
  403db0:	8b0a0042 	add	x2, x2, x10
  403db4:	8b010001 	add	x1, x0, x1
  403db8:	eb02015f 	cmp	x10, x2
  403dbc:	aa0203ea 	mov	x10, x2
  403dc0:	9a819421 	cinc	x1, x1, hi  // hi = pmore
  403dc4:	17ffffea 	b	403d6c <__addtf3+0x624>
  403dc8:	aa0a0020 	orr	x0, x1, x10
  403dcc:	b50010a0 	cbnz	x0, 403fe0 <__addtf3+0x898>
  403dd0:	d28fffe0 	mov	x0, #0x7fff                	// #32767
  403dd4:	eb0000df 	cmp	x6, x0
  403dd8:	540011a0 	b.eq	40400c <__addtf3+0x8c4>  // b.none
  403ddc:	aa0203e1 	mov	x1, x2
  403de0:	aa0d03ea 	mov	x10, x13
  403de4:	aa0603e9 	mov	x9, x6
  403de8:	aa0e03e8 	mov	x8, x14
  403dec:	17fffede 	b	403964 <__addtf3+0x21c>
  403df0:	aa0003ea 	mov	x10, x0
  403df4:	17fffe7d 	b	4037e8 <__addtf3+0xa0>
  403df8:	d28fffe3 	mov	x3, #0x7fff                	// #32767
  403dfc:	eb03013f 	cmp	x9, x3
  403e00:	54ffe301 	b.ne	403a60 <__addtf3+0x318>  // b.any
  403e04:	17fffeea 	b	4039ac <__addtf3+0x264>
  403e08:	d2800000 	mov	x0, #0x0                   	// #0
  403e0c:	17ffff96 	b	403c64 <__addtf3+0x51c>
  403e10:	d2800002 	mov	x2, #0x0                   	// #0
  403e14:	17ffffa4 	b	403ca4 <__addtf3+0x55c>
  403e18:	b50017c9 	cbnz	x9, 404110 <__addtf3+0x9c8>
  403e1c:	aa0a0023 	orr	x3, x1, x10
  403e20:	b5002423 	cbnz	x3, 4042a4 <__addtf3+0xb5c>
  403e24:	aa0d0040 	orr	x0, x2, x13
  403e28:	aa0203e1 	mov	x1, x2
  403e2c:	f100001f 	cmp	x0, #0x0
  403e30:	aa0d03ea 	mov	x10, x13
  403e34:	1a9f07e3 	cset	w3, ne  // ne = any
  403e38:	17fffed1 	b	40397c <__addtf3+0x234>
  403e3c:	d503201f 	nop
  403e40:	aa0a0020 	orr	x0, x1, x10
  403e44:	b4001920 	cbz	x0, 404168 <__addtf3+0xa20>
  403e48:	d372fc20 	lsr	x0, x1, #50
  403e4c:	52000000 	eor	w0, w0, #0x1
  403e50:	17ffff15 	b	403aa4 <__addtf3+0x35c>
  403e54:	d503201f 	nop
  403e58:	b5000589 	cbnz	x9, 403f08 <__addtf3+0x7c0>
  403e5c:	aa0a0020 	orr	x0, x1, x10
  403e60:	b50013a0 	cbnz	x0, 4040d4 <__addtf3+0x98c>
  403e64:	aa0d0040 	orr	x0, x2, x13
  403e68:	b4fff640 	cbz	x0, 403d30 <__addtf3+0x5e8>
  403e6c:	aa0203e1 	mov	x1, x2
  403e70:	aa0d03ea 	mov	x10, x13
  403e74:	aa0e03e8 	mov	x8, x14
  403e78:	52800023 	mov	w3, #0x1                   	// #1
  403e7c:	17fffec0 	b	40397c <__addtf3+0x234>
  403e80:	51010003 	sub	w3, w0, #0x40
  403e84:	7101001f 	cmp	w0, #0x40
  403e88:	9ac32443 	lsr	x3, x2, x3
  403e8c:	540018a0 	b.eq	4041a0 <__addtf3+0xa58>  // b.none
  403e90:	52801004 	mov	w4, #0x80                  	// #128
  403e94:	4b000080 	sub	w0, w4, w0
  403e98:	9ac02042 	lsl	x2, x2, x0
  403e9c:	aa0d004d 	orr	x13, x2, x13
  403ea0:	d2800000 	mov	x0, #0x0                   	// #0
  403ea4:	f10001bf 	cmp	x13, #0x0
  403ea8:	9a9f07e2 	cset	x2, ne  // ne = any
  403eac:	aa020062 	orr	x2, x3, x2
  403eb0:	17ffffc0 	b	403db0 <__addtf3+0x668>
  403eb4:	d503201f 	nop
  403eb8:	b5000dc9 	cbnz	x9, 404070 <__addtf3+0x928>
  403ebc:	aa0a0023 	orr	x3, x1, x10
  403ec0:	b5001b43 	cbnz	x3, 404228 <__addtf3+0xae0>
  403ec4:	d28fffe0 	mov	x0, #0x7fff                	// #32767
  403ec8:	eb0000df 	cmp	x6, x0
  403ecc:	54001c40 	b.eq	404254 <__addtf3+0xb0c>  // b.none
  403ed0:	aa0203e1 	mov	x1, x2
  403ed4:	aa0d03ea 	mov	x10, x13
  403ed8:	aa0603e9 	mov	x9, x6
  403edc:	17fffea2 	b	403964 <__addtf3+0x21c>
  403ee0:	f100011f 	cmp	x8, #0x0
  403ee4:	528fffc6 	mov	w6, #0x7ffe                	// #32766
  403ee8:	92fc0001 	mov	x1, #0x1fffffffffffffff    	// #2305843009213693951
  403eec:	d28fffc2 	mov	x2, #0x7ffe                	// #32766
  403ef0:	1a860126 	csel	w6, w9, w6, eq  // eq = none
  403ef4:	9a9f1021 	csel	x1, x1, xzr, ne  // ne = any
  403ef8:	da9f03e5 	csetm	x5, ne  // ne = any
  403efc:	9a820129 	csel	x9, x9, x2, eq  // eq = none
  403f00:	17ffff1f 	b	403b7c <__addtf3+0x434>
  403f04:	d503201f 	nop
  403f08:	d28fffe0 	mov	x0, #0x7fff                	// #32767
  403f0c:	eb00013f 	cmp	x9, x0
  403f10:	540014c0 	b.eq	4041a8 <__addtf3+0xa60>  // b.none
  403f14:	eb0000df 	cmp	x6, x0
  403f18:	aa0a0020 	orr	x0, x1, x10
  403f1c:	54001560 	b.eq	4041c8 <__addtf3+0xa80>  // b.none
  403f20:	aa0d0046 	orr	x6, x2, x13
  403f24:	b4000260 	cbz	x0, 403f70 <__addtf3+0x828>
  403f28:	b4001606 	cbz	x6, 4041e8 <__addtf3+0xaa0>
  403f2c:	9240f080 	and	x0, x4, #0x1fffffffffffffff
  403f30:	d343fc24 	lsr	x4, x1, #3
  403f34:	aa01f400 	orr	x0, x0, x1, lsl #61
  403f38:	b67800e4 	tbz	x4, #47, 403f54 <__addtf3+0x80c>
  403f3c:	d343fc41 	lsr	x1, x2, #3
  403f40:	b77800a1 	tbnz	x1, #47, 403f54 <__addtf3+0x80c>
  403f44:	9240f0a0 	and	x0, x5, #0x1fffffffffffffff
  403f48:	aa0103e4 	mov	x4, x1
  403f4c:	aa0e03e8 	mov	x8, x14
  403f50:	aa02f400 	orr	x0, x0, x2, lsl #61
  403f54:	93c0f481 	extr	x1, x4, x0, #61
  403f58:	d37df00a 	lsl	x10, x0, #3
  403f5c:	d28fffe9 	mov	x9, #0x7fff                	// #32767
  403f60:	2a0303e0 	mov	w0, w3
  403f64:	17fffed0 	b	403aa4 <__addtf3+0x35c>
  403f68:	54001300 	b.eq	4041c8 <__addtf3+0xa80>  // b.none
  403f6c:	aa0d0046 	orr	x6, x2, x13
  403f70:	b4001866 	cbz	x6, 40427c <__addtf3+0xb34>
  403f74:	aa0203e1 	mov	x1, x2
  403f78:	aa0d03ea 	mov	x10, x13
  403f7c:	aa0e03e8 	mov	x8, x14
  403f80:	52800000 	mov	w0, #0x0                   	// #0
  403f84:	d28fffe9 	mov	x9, #0x7fff                	// #32767
  403f88:	17fffec7 	b	403aa4 <__addtf3+0x35c>
  403f8c:	d503201f 	nop
  403f90:	926a04e2 	and	x2, x7, #0xc00000
  403f94:	aa0203e3 	mov	x3, x2
  403f98:	b40001a2 	cbz	x2, 403fcc <__addtf3+0x884>
  403f9c:	f150005f 	cmp	x2, #0x400, lsl #12
  403fa0:	54001ca0 	b.eq	404334 <__addtf3+0xbec>  // b.none
  403fa4:	f160007f 	cmp	x3, #0x800, lsl #12
  403fa8:	1a9f17e0 	cset	w0, eq  // eq = none
  403fac:	6a00019f 	tst	w12, w0
  403fb0:	54001f81 	b.ne	4043a0 <__addtf3+0xc58>  // b.any
  403fb4:	92800001 	mov	x1, #0xffffffffffffffff    	// #-1
  403fb8:	52800280 	mov	w0, #0x14                  	// #20
  403fbc:	aa0103ea 	mov	x10, x1
  403fc0:	d28fffc9 	mov	x9, #0x7ffe                	// #32766
  403fc4:	17fffebc 	b	403ab4 <__addtf3+0x36c>
  403fc8:	5280000c 	mov	w12, #0x0                   	// #0
  403fcc:	d2800001 	mov	x1, #0x0                   	// #0
  403fd0:	d280000a 	mov	x10, #0x0                   	// #0
  403fd4:	52800280 	mov	w0, #0x14                  	// #20
  403fd8:	17fffe79 	b	4039bc <__addtf3+0x274>
  403fdc:	d503201f 	nop
  403fe0:	2a2303e3 	mvn	w3, w3
  403fe4:	350000e3 	cbnz	w3, 404000 <__addtf3+0x8b8>
  403fe8:	cb0a01aa 	sub	x10, x13, x10
  403fec:	aa0603e9 	mov	x9, x6
  403ff0:	eb0a01bf 	cmp	x13, x10
  403ff4:	aa0e03e8 	mov	x8, x14
  403ff8:	da010041 	sbc	x1, x2, x1
  403ffc:	17fffdf9 	b	4037e0 <__addtf3+0x98>
  404000:	d28fffe0 	mov	x0, #0x7fff                	// #32767
  404004:	eb0000df 	cmp	x6, x0
  404008:	54ffe681 	b.ne	403cd8 <__addtf3+0x590>  // b.any
  40400c:	aa0d004a 	orr	x10, x2, x13
  404010:	b5000b8a 	cbnz	x10, 404180 <__addtf3+0xa38>
  404014:	2a0b03ec 	mov	w12, w11
  404018:	d2800001 	mov	x1, #0x0                   	// #0
  40401c:	52800000 	mov	w0, #0x0                   	// #0
  404020:	17fffe67 	b	4039bc <__addtf3+0x274>
  404024:	d503201f 	nop
  404028:	aa0a0020 	orr	x0, x1, x10
  40402c:	d2800001 	mov	x1, #0x0                   	// #0
  404030:	f100001f 	cmp	x0, #0x0
  404034:	9a9f07e0 	cset	x0, ne  // ne = any
  404038:	17ffff36 	b	403d10 <__addtf3+0x5c8>
  40403c:	d503201f 	nop
  404040:	926a04e2 	and	x2, x7, #0xc00000
  404044:	aa0203e3 	mov	x3, x2
  404048:	b4fffc22 	cbz	x2, 403fcc <__addtf3+0x884>
  40404c:	f150005f 	cmp	x2, #0x400, lsl #12
  404050:	54fffaa1 	b.ne	403fa4 <__addtf3+0x85c>  // b.any
  404054:	b4fffba8 	cbz	x8, 403fc8 <__addtf3+0x880>
  404058:	92800001 	mov	x1, #0xffffffffffffffff    	// #-1
  40405c:	52800003 	mov	w3, #0x0                   	// #0
  404060:	aa0103ea 	mov	x10, x1
  404064:	d28fffc9 	mov	x9, #0x7ffe                	// #32766
  404068:	52800280 	mov	w0, #0x14                  	// #20
  40406c:	17fffe06 	b	403884 <__addtf3+0x13c>
  404070:	d28fffe3 	mov	x3, #0x7fff                	// #32767
  404074:	eb0300df 	cmp	x6, x3
  404078:	54000ee0 	b.eq	404254 <__addtf3+0xb0c>  // b.none
  40407c:	4b0003e0 	neg	w0, w0
  404080:	b24d0021 	orr	x1, x1, #0x8000000000000
  404084:	7101d01f 	cmp	w0, #0x74
  404088:	5400104c 	b.gt	404290 <__addtf3+0xb48>
  40408c:	7100fc1f 	cmp	w0, #0x3f
  404090:	540016ec 	b.gt	40436c <__addtf3+0xc24>
  404094:	52800803 	mov	w3, #0x40                  	// #64
  404098:	9ac02544 	lsr	x4, x10, x0
  40409c:	4b000063 	sub	w3, w3, w0
  4040a0:	9ac02420 	lsr	x0, x1, x0
  4040a4:	9ac32145 	lsl	x5, x10, x3
  4040a8:	9ac32021 	lsl	x1, x1, x3
  4040ac:	f10000bf 	cmp	x5, #0x0
  4040b0:	aa04002a 	orr	x10, x1, x4
  4040b4:	9a9f07e5 	cset	x5, ne  // ne = any
  4040b8:	aa0a00a5 	orr	x5, x5, x10
  4040bc:	8b0d00aa 	add	x10, x5, x13
  4040c0:	8b020001 	add	x1, x0, x2
  4040c4:	eb0a01bf 	cmp	x13, x10
  4040c8:	aa0603e9 	mov	x9, x6
  4040cc:	9a819421 	cinc	x1, x1, hi  // hi = pmore
  4040d0:	17ffff27 	b	403d6c <__addtf3+0x624>
  4040d4:	aa0d0040 	orr	x0, x2, x13
  4040d8:	b4000500 	cbz	x0, 404178 <__addtf3+0xa30>
  4040dc:	cb0d0140 	sub	x0, x10, x13
  4040e0:	eb00015f 	cmp	x10, x0
  4040e4:	da020025 	sbc	x5, x1, x2
  4040e8:	b6981345 	tbz	x5, #51, 404350 <__addtf3+0xc08>
  4040ec:	cb0a01aa 	sub	x10, x13, x10
  4040f0:	aa0e03e8 	mov	x8, x14
  4040f4:	eb0a01bf 	cmp	x13, x10
  4040f8:	92400944 	and	x4, x10, #0x7
  4040fc:	da010041 	sbc	x1, x2, x1
  404100:	aa010140 	orr	x0, x10, x1
  404104:	f100001f 	cmp	x0, #0x0
  404108:	1a9f07e3 	cset	w3, ne  // ne = any
  40410c:	17fffdda 	b	403874 <__addtf3+0x12c>
  404110:	d28fffe3 	mov	x3, #0x7fff                	// #32767
  404114:	eb03013f 	cmp	x9, x3
  404118:	54000dc0 	b.eq	4042d0 <__addtf3+0xb88>  // b.none
  40411c:	eb0300df 	cmp	x6, x3
  404120:	aa0a0023 	orr	x3, x1, x10
  404124:	540000c0 	b.eq	40413c <__addtf3+0x9f4>  // b.none
  404128:	b5000e43 	cbnz	x3, 4042f0 <__addtf3+0xba8>
  40412c:	aa0203e1 	mov	x1, x2
  404130:	aa0d03ea 	mov	x10, x13
  404134:	d28fffe9 	mov	x9, #0x7fff                	// #32767
  404138:	17fffe5b 	b	403aa4 <__addtf3+0x35c>
  40413c:	52800000 	mov	w0, #0x0                   	// #0
  404140:	aa0d0046 	orr	x6, x2, x13
  404144:	b4ffff26 	cbz	x6, 404128 <__addtf3+0x9e0>
  404148:	f24e005f 	tst	x2, #0x4000000000000
  40414c:	1a9f1400 	csinc	w0, w0, wzr, ne  // ne = any
  404150:	b5000d63 	cbnz	x3, 4042fc <__addtf3+0xbb4>
  404154:	aa0203e1 	mov	x1, x2
  404158:	aa0d03ea 	mov	x10, x13
  40415c:	52800003 	mov	w3, #0x0                   	// #0
  404160:	d28fffe9 	mov	x9, #0x7fff                	// #32767
  404164:	17fffe08 	b	403984 <__addtf3+0x23c>
  404168:	d2800001 	mov	x1, #0x0                   	// #0
  40416c:	d280000a 	mov	x10, #0x0                   	// #0
  404170:	52800000 	mov	w0, #0x0                   	// #0
  404174:	17fffe12 	b	4039bc <__addtf3+0x274>
  404178:	52800023 	mov	w3, #0x1                   	// #1
  40417c:	17fffe00 	b	40397c <__addtf3+0x234>
  404180:	d372fc40 	lsr	x0, x2, #50
  404184:	aa0203e1 	mov	x1, x2
  404188:	d2400000 	eor	x0, x0, #0x1
  40418c:	aa0d03ea 	mov	x10, x13
  404190:	12000000 	and	w0, w0, #0x1
  404194:	aa0603e9 	mov	x9, x6
  404198:	aa0e03e8 	mov	x8, x14
  40419c:	17fffe42 	b	403aa4 <__addtf3+0x35c>
  4041a0:	d2800002 	mov	x2, #0x0                   	// #0
  4041a4:	17ffff3e 	b	403e9c <__addtf3+0x754>
  4041a8:	aa0a0020 	orr	x0, x1, x10
  4041ac:	eb0900df 	cmp	x6, x9
  4041b0:	b4ffedc0 	cbz	x0, 403f68 <__addtf3+0x820>
  4041b4:	d372fc23 	lsr	x3, x1, #50
  4041b8:	aa0d0046 	orr	x6, x2, x13
  4041bc:	d2400063 	eor	x3, x3, #0x1
  4041c0:	12000063 	and	w3, w3, #0x1
  4041c4:	54ffeb21 	b.ne	403f28 <__addtf3+0x7e0>  // b.any
  4041c8:	aa0d0046 	orr	x6, x2, x13
  4041cc:	b4000566 	cbz	x6, 404278 <__addtf3+0xb30>
  4041d0:	f24e005f 	tst	x2, #0x4000000000000
  4041d4:	1a9f1463 	csinc	w3, w3, wzr, ne  // ne = any
  4041d8:	b5ffeaa0 	cbnz	x0, 403f2c <__addtf3+0x7e4>
  4041dc:	aa0203e1 	mov	x1, x2
  4041e0:	aa0d03ea 	mov	x10, x13
  4041e4:	aa0e03e8 	mov	x8, x14
  4041e8:	2a0303e0 	mov	w0, w3
  4041ec:	d28fffe9 	mov	x9, #0x7fff                	// #32767
  4041f0:	17fffe2d 	b	403aa4 <__addtf3+0x35c>
  4041f4:	51010060 	sub	w0, w3, #0x40
  4041f8:	7101007f 	cmp	w3, #0x40
  4041fc:	9ac02420 	lsr	x0, x1, x0
  404200:	54000da0 	b.eq	4043b4 <__addtf3+0xc6c>  // b.none
  404204:	52801004 	mov	w4, #0x80                  	// #128
  404208:	4b030083 	sub	w3, w4, w3
  40420c:	9ac32021 	lsl	x1, x1, x3
  404210:	aa0a0025 	orr	x5, x1, x10
  404214:	d2800001 	mov	x1, #0x0                   	// #0
  404218:	f10000bf 	cmp	x5, #0x0
  40421c:	9a9f07ea 	cset	x10, ne  // ne = any
  404220:	aa0a0000 	orr	x0, x0, x10
  404224:	17fffebb 	b	403d10 <__addtf3+0x5c8>
  404228:	2a2003e0 	mvn	w0, w0
  40422c:	350000e0 	cbnz	w0, 404248 <__addtf3+0xb00>
  404230:	8b0d014a 	add	x10, x10, x13
  404234:	8b020021 	add	x1, x1, x2
  404238:	eb0a01bf 	cmp	x13, x10
  40423c:	aa0603e9 	mov	x9, x6
  404240:	9a819421 	cinc	x1, x1, hi  // hi = pmore
  404244:	17fffeca 	b	403d6c <__addtf3+0x624>
  404248:	d28fffe3 	mov	x3, #0x7fff                	// #32767
  40424c:	eb0300df 	cmp	x6, x3
  404250:	54fff1a1 	b.ne	404084 <__addtf3+0x93c>  // b.any
  404254:	aa0d004a 	orr	x10, x2, x13
  404258:	b4ffee0a 	cbz	x10, 404018 <__addtf3+0x8d0>
  40425c:	d372fc40 	lsr	x0, x2, #50
  404260:	aa0203e1 	mov	x1, x2
  404264:	d2400000 	eor	x0, x0, #0x1
  404268:	aa0d03ea 	mov	x10, x13
  40426c:	12000000 	and	w0, w0, #0x1
  404270:	aa0603e9 	mov	x9, x6
  404274:	17fffe0c 	b	403aa4 <__addtf3+0x35c>
  404278:	b5fffb80 	cbnz	x0, 4041e8 <__addtf3+0xaa0>
  40427c:	5280000c 	mov	w12, #0x0                   	// #0
  404280:	92ffff01 	mov	x1, #0x7ffffffffffff       	// #2251799813685247
  404284:	928000ea 	mov	x10, #0xfffffffffffffff8    	// #-8
  404288:	52800020 	mov	w0, #0x1                   	// #1
  40428c:	17fffdcc 	b	4039bc <__addtf3+0x274>
  404290:	aa0a0021 	orr	x1, x1, x10
  404294:	d2800000 	mov	x0, #0x0                   	// #0
  404298:	f100003f 	cmp	x1, #0x0
  40429c:	9a9f07e5 	cset	x5, ne  // ne = any
  4042a0:	17ffff87 	b	4040bc <__addtf3+0x974>
  4042a4:	aa0d0043 	orr	x3, x2, x13
  4042a8:	b4fff683 	cbz	x3, 404178 <__addtf3+0xa30>
  4042ac:	8b0d014d 	add	x13, x10, x13
  4042b0:	8b020021 	add	x1, x1, x2
  4042b4:	eb0d015f 	cmp	x10, x13
  4042b8:	9a819421 	cinc	x1, x1, hi  // hi = pmore
  4042bc:	b6980881 	tbz	x1, #51, 4043cc <__addtf3+0xc84>
  4042c0:	924cf821 	and	x1, x1, #0xfff7ffffffffffff
  4042c4:	aa0d03ea 	mov	x10, x13
  4042c8:	d2800029 	mov	x9, #0x1                   	// #1
  4042cc:	17fffdf6 	b	403aa4 <__addtf3+0x35c>
  4042d0:	aa0a0023 	orr	x3, x1, x10
  4042d4:	eb0900df 	cmp	x6, x9
  4042d8:	b4000723 	cbz	x3, 4043bc <__addtf3+0xc74>
  4042dc:	d372fc20 	lsr	x0, x1, #50
  4042e0:	d2400000 	eor	x0, x0, #0x1
  4042e4:	12000006 	and	w6, w0, #0x1
  4042e8:	2a0603e0 	mov	w0, w6
  4042ec:	54fff2a0 	b.eq	404140 <__addtf3+0x9f8>  // b.none
  4042f0:	aa0d004d 	orr	x13, x2, x13
  4042f4:	d28fffe9 	mov	x9, #0x7fff                	// #32767
  4042f8:	b4ffbd6d 	cbz	x13, 403aa4 <__addtf3+0x35c>
  4042fc:	9240f08a 	and	x10, x4, #0x1fffffffffffffff
  404300:	d343fc23 	lsr	x3, x1, #3
  404304:	aa01f54a 	orr	x10, x10, x1, lsl #61
  404308:	b67800e3 	tbz	x3, #47, 404324 <__addtf3+0xbdc>
  40430c:	d343fc41 	lsr	x1, x2, #3
  404310:	b77800a1 	tbnz	x1, #47, 404324 <__addtf3+0xbdc>
  404314:	9240f0aa 	and	x10, x5, #0x1fffffffffffffff
  404318:	aa0103e3 	mov	x3, x1
  40431c:	aa0e03e8 	mov	x8, x14
  404320:	aa02f54a 	orr	x10, x10, x2, lsl #61
  404324:	93caf461 	extr	x1, x3, x10, #61
  404328:	d28fffe9 	mov	x9, #0x7fff                	// #32767
  40432c:	d37df14a 	lsl	x10, x10, #3
  404330:	17fffddd 	b	403aa4 <__addtf3+0x35c>
  404334:	b4ffe4a8 	cbz	x8, 403fc8 <__addtf3+0x880>
  404338:	92800001 	mov	x1, #0xffffffffffffffff    	// #-1
  40433c:	d28fffc9 	mov	x9, #0x7ffe                	// #32766
  404340:	aa0103ea 	mov	x10, x1
  404344:	52800280 	mov	w0, #0x14                  	// #20
  404348:	52800003 	mov	w3, #0x0                   	// #0
  40434c:	17fffd4e 	b	403884 <__addtf3+0x13c>
  404350:	aa050001 	orr	x1, x0, x5
  404354:	b4ffcee1 	cbz	x1, 403d30 <__addtf3+0x5e8>
  404358:	92400804 	and	x4, x0, #0x7
  40435c:	aa0503e1 	mov	x1, x5
  404360:	aa0003ea 	mov	x10, x0
  404364:	52800023 	mov	w3, #0x1                   	// #1
  404368:	17fffd43 	b	403874 <__addtf3+0x12c>
  40436c:	51010005 	sub	w5, w0, #0x40
  404370:	7101001f 	cmp	w0, #0x40
  404374:	9ac52425 	lsr	x5, x1, x5
  404378:	54000360 	b.eq	4043e4 <__addtf3+0xc9c>  // b.none
  40437c:	52801003 	mov	w3, #0x80                  	// #128
  404380:	4b000060 	sub	w0, w3, w0
  404384:	9ac02021 	lsl	x1, x1, x0
  404388:	aa0a002a 	orr	x10, x1, x10
  40438c:	d2800000 	mov	x0, #0x0                   	// #0
  404390:	f100015f 	cmp	x10, #0x0
  404394:	9a9f07ea 	cset	x10, ne  // ne = any
  404398:	aa0a00a5 	orr	x5, x5, x10
  40439c:	17ffff48 	b	4040bc <__addtf3+0x974>
  4043a0:	5280002c 	mov	w12, #0x1                   	// #1
  4043a4:	d2800001 	mov	x1, #0x0                   	// #0
  4043a8:	d280000a 	mov	x10, #0x0                   	// #0
  4043ac:	52800280 	mov	w0, #0x14                  	// #20
  4043b0:	17fffd83 	b	4039bc <__addtf3+0x274>
  4043b4:	d2800001 	mov	x1, #0x0                   	// #0
  4043b8:	17ffff96 	b	404210 <__addtf3+0xac8>
  4043bc:	54ffec00 	b.eq	40413c <__addtf3+0x9f4>  // b.none
  4043c0:	aa0203e1 	mov	x1, x2
  4043c4:	aa0d03ea 	mov	x10, x13
  4043c8:	17fffdb7 	b	403aa4 <__addtf3+0x35c>
  4043cc:	aa0101a0 	orr	x0, x13, x1
  4043d0:	924009a4 	and	x4, x13, #0x7
  4043d4:	f100001f 	cmp	x0, #0x0
  4043d8:	aa0d03ea 	mov	x10, x13
  4043dc:	1a9f07e3 	cset	w3, ne  // ne = any
  4043e0:	17fffd25 	b	403874 <__addtf3+0x12c>
  4043e4:	d2800001 	mov	x1, #0x0                   	// #0
  4043e8:	17ffffe8 	b	404388 <__addtf3+0xc40>
  4043ec:	00000000 	.inst	0x00000000 ; undefined

00000000004043f0 <__eqtf2>:
  4043f0:	9e660000 	fmov	x0, d0
  4043f4:	9e660022 	fmov	x2, d1
  4043f8:	9eae0001 	fmov	x1, v0.d[1]
  4043fc:	9eae0023 	fmov	x3, v1.d[1]
  404400:	aa0003e5 	mov	x5, x0
  404404:	aa0203e6 	mov	x6, x2
  404408:	aa0103e0 	mov	x0, x1
  40440c:	aa0303e2 	mov	x2, x3
  404410:	d53b4401 	mrs	x1, fpcr
  404414:	d370f803 	ubfx	x3, x0, #48, #15
  404418:	d340bc08 	ubfx	x8, x0, #0, #48
  40441c:	d37ffc01 	lsr	x1, x0, #63
  404420:	d28fffe0 	mov	x0, #0x7fff                	// #32767
  404424:	eb00007f 	cmp	x3, x0
  404428:	d340bc49 	ubfx	x9, x2, #0, #48
  40442c:	d370f844 	ubfx	x4, x2, #48, #15
  404430:	aa0503ea 	mov	x10, x5
  404434:	aa0603e7 	mov	x7, x6
  404438:	d37ffc42 	lsr	x2, x2, #63
  40443c:	540000e0 	b.eq	404458 <__eqtf2+0x68>  // b.none
  404440:	eb00009f 	cmp	x4, x0
  404444:	540002e0 	b.eq	4044a0 <__eqtf2+0xb0>  // b.none
  404448:	eb04007f 	cmp	x3, x4
  40444c:	52800020 	mov	w0, #0x1                   	// #1
  404450:	54000120 	b.eq	404474 <__eqtf2+0x84>  // b.none
  404454:	d65f03c0 	ret
  404458:	aa0800a0 	orr	x0, x5, x8
  40445c:	b50002a0 	cbnz	x0, 4044b0 <__eqtf2+0xc0>
  404460:	eb03009f 	cmp	x4, x3
  404464:	52800020 	mov	w0, #0x1                   	// #1
  404468:	54ffff61 	b.ne	404454 <__eqtf2+0x64>  // b.any
  40446c:	aa0900c0 	orr	x0, x6, x9
  404470:	b5000240 	cbnz	x0, 4044b8 <__eqtf2+0xc8>
  404474:	eb09011f 	cmp	x8, x9
  404478:	52800020 	mov	w0, #0x1                   	// #1
  40447c:	fa4600a0 	ccmp	x5, x6, #0x0, eq  // eq = none
  404480:	54fffea1 	b.ne	404454 <__eqtf2+0x64>  // b.any
  404484:	6b02003f 	cmp	w1, w2
  404488:	54000380 	b.eq	4044f8 <__eqtf2+0x108>  // b.none
  40448c:	b5fffe43 	cbnz	x3, 404454 <__eqtf2+0x64>
  404490:	aa080148 	orr	x8, x10, x8
  404494:	f100011f 	cmp	x8, #0x0
  404498:	1a9f07e0 	cset	w0, ne  // ne = any
  40449c:	d65f03c0 	ret
  4044a0:	aa0900c7 	orr	x7, x6, x9
  4044a4:	b5000167 	cbnz	x7, 4044d0 <__eqtf2+0xe0>
  4044a8:	52800020 	mov	w0, #0x1                   	// #1
  4044ac:	d65f03c0 	ret
  4044b0:	f251011f 	tst	x8, #0x800000000000
  4044b4:	54000120 	b.eq	4044d8 <__eqtf2+0xe8>  // b.none
  4044b8:	d28fffe1 	mov	x1, #0x7fff                	// #32767
  4044bc:	52800020 	mov	w0, #0x1                   	// #1
  4044c0:	eb01009f 	cmp	x4, x1
  4044c4:	54fffc81 	b.ne	404454 <__eqtf2+0x64>  // b.any
  4044c8:	aa0900e7 	orr	x7, x7, x9
  4044cc:	b4fffc47 	cbz	x7, 404454 <__eqtf2+0x64>
  4044d0:	f251013f 	tst	x9, #0x800000000000
  4044d4:	54fffea1 	b.ne	4044a8 <__eqtf2+0xb8>  // b.any
  4044d8:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  4044dc:	52800020 	mov	w0, #0x1                   	// #1
  4044e0:	910003fd 	mov	x29, sp
  4044e4:	94000617 	bl	405d40 <__sfp_handle_exceptions>
  4044e8:	52800020 	mov	w0, #0x1                   	// #1
  4044ec:	a8c17bfd 	ldp	x29, x30, [sp], #16
  4044f0:	d65f03c0 	ret
  4044f4:	d503201f 	nop
  4044f8:	52800000 	mov	w0, #0x0                   	// #0
  4044fc:	d65f03c0 	ret

0000000000404500 <__multf3>:
  404500:	9e660022 	fmov	x2, d1
  404504:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
  404508:	9e660000 	fmov	x0, d0
  40450c:	910003fd 	mov	x29, sp
  404510:	9eae0001 	fmov	x1, v0.d[1]
  404514:	a90153f3 	stp	x19, x20, [sp, #16]
  404518:	9eae0023 	fmov	x3, v1.d[1]
  40451c:	aa0203e7 	mov	x7, x2
  404520:	f90013f5 	str	x21, [sp, #32]
  404524:	d53b4409 	mrs	x9, fpcr
  404528:	d370f822 	ubfx	x2, x1, #48, #15
  40452c:	d340bc28 	ubfx	x8, x1, #0, #48
  404530:	d37ffc21 	lsr	x1, x1, #63
  404534:	53003c44 	uxth	w4, w2
  404538:	53001c2c 	uxtb	w12, w1
  40453c:	340019e4 	cbz	w4, 404878 <__multf3+0x378>
  404540:	528fffe5 	mov	w5, #0x7fff                	// #32767
  404544:	6b05009f 	cmp	w4, w5
  404548:	54001380 	b.eq	4047b8 <__multf3+0x2b8>  // b.none
  40454c:	d37dfc04 	lsr	x4, x0, #61
  404550:	53003c42 	uxth	w2, w2
  404554:	b24d0084 	orr	x4, x4, #0x8000000000000
  404558:	9287ffc5 	mov	x5, #0xffffffffffffc001    	// #-16383
  40455c:	d37df00a 	lsl	x10, x0, #3
  404560:	8b05004e 	add	x14, x2, x5
  404564:	aa080c88 	orr	x8, x4, x8, lsl #3
  404568:	d2800002 	mov	x2, #0x0                   	// #0
  40456c:	d280000d 	mov	x13, #0x0                   	// #0
  404570:	52800000 	mov	w0, #0x0                   	// #0
  404574:	d370f866 	ubfx	x6, x3, #48, #15
  404578:	d37ffc65 	lsr	x5, x3, #63
  40457c:	d340bc64 	ubfx	x4, x3, #0, #48
  404580:	53003cc3 	uxth	w3, w6
  404584:	53001caf 	uxtb	w15, w5
  404588:	34001323 	cbz	w3, 4047ec <__multf3+0x2ec>
  40458c:	528fffeb 	mov	w11, #0x7fff                	// #32767
  404590:	6b0b007f 	cmp	w3, w11
  404594:	54001a20 	b.eq	4048d8 <__multf3+0x3d8>  // b.none
  404598:	9287ffc3 	mov	x3, #0xffffffffffffc001    	// #-16383
  40459c:	53003cc6 	uxth	w6, w6
  4045a0:	8b0300c6 	add	x6, x6, x3
  4045a4:	d37dfce3 	lsr	x3, x7, #61
  4045a8:	b24d0063 	orr	x3, x3, #0x8000000000000
  4045ac:	aa040c64 	orr	x4, x3, x4, lsl #3
  4045b0:	d37df0e3 	lsl	x3, x7, #3
  4045b4:	d2800007 	mov	x7, #0x0                   	// #0
  4045b8:	aa0200e2 	orr	x2, x7, x2
  4045bc:	4a05002b 	eor	w11, w1, w5
  4045c0:	d1000442 	sub	x2, x2, #0x1
  4045c4:	8b0601c6 	add	x6, x14, x6
  4045c8:	f100385f 	cmp	x2, #0xe
  4045cc:	53001d6b 	uxtb	w11, w11
  4045d0:	910004ce 	add	x14, x6, #0x1
  4045d4:	54000068 	b.hi	4045e0 <__multf3+0xe0>  // b.pmore
  4045d8:	7100385f 	cmp	w2, #0xe
  4045dc:	54001329 	b.ls	404840 <__multf3+0x340>  // b.plast
  4045e0:	92407c81 	and	x1, x4, #0xffffffff
  4045e4:	d360fd47 	lsr	x7, x10, #32
  4045e8:	92407d4a 	and	x10, x10, #0xffffffff
  4045ec:	d360fc84 	lsr	x4, x4, #32
  4045f0:	92407c65 	and	x5, x3, #0xffffffff
  4045f4:	d360fc63 	lsr	x3, x3, #32
  4045f8:	9b077c33 	mul	x19, x1, x7
  4045fc:	d360fd0d 	lsr	x13, x8, #32
  404600:	9b0a7c30 	mul	x16, x1, x10
  404604:	92407d08 	and	x8, x8, #0xffffffff
  404608:	9b0a4c92 	madd	x18, x4, x10, x19
  40460c:	d2c0003e 	mov	x30, #0x100000000           	// #4294967296
  404610:	9b057cec 	mul	x12, x7, x5
  404614:	8b508252 	add	x18, x18, x16, lsr #32
  404618:	9b057d4f 	mul	x15, x10, x5
  40461c:	92407e10 	and	x16, x16, #0xffffffff
  404620:	9b0a306a 	madd	x10, x3, x10, x12
  404624:	9b057db5 	mul	x21, x13, x5
  404628:	8b4f8142 	add	x2, x10, x15, lsr #32
  40462c:	8b128210 	add	x16, x16, x18, lsl #32
  404630:	92407def 	and	x15, x15, #0xffffffff
  404634:	eb02019f 	cmp	x12, x2
  404638:	8b42820c 	add	x12, x16, x2, lsr #32
  40463c:	9b047cea 	mul	x10, x7, x4
  404640:	8b0281ef 	add	x15, x15, x2, lsl #32
  404644:	9b037ce2 	mul	x2, x7, x3
  404648:	9b0d7c34 	mul	x20, x1, x13
  40464c:	9b057d05 	mul	x5, x8, x5
  404650:	9b035507 	madd	x7, x8, x3, x21
  404654:	9b0d7c71 	mul	x17, x3, x13
  404658:	8b1e0043 	add	x3, x2, x30
  40465c:	9b087c21 	mul	x1, x1, x8
  404660:	8b4580e7 	add	x7, x7, x5, lsr #32
  404664:	9b045108 	madd	x8, x8, x4, x20
  404668:	9a828062 	csel	x2, x3, x2, hi  // hi = pmore
  40466c:	9b0d7c8d 	mul	x13, x4, x13
  404670:	eb12027f 	cmp	x19, x18
  404674:	8b1e0143 	add	x3, x10, x30
  404678:	92407ca5 	and	x5, x5, #0xffffffff
  40467c:	8b418108 	add	x8, x8, x1, lsr #32
  404680:	9a8a806a 	csel	x10, x3, x10, hi  // hi = pmore
  404684:	92407c21 	and	x1, x1, #0xffffffff
  404688:	eb0702bf 	cmp	x21, x7
  40468c:	8b1e0223 	add	x3, x17, x30
  404690:	8b0780a5 	add	x5, x5, x7, lsl #32
  404694:	9a918071 	csel	x17, x3, x17, hi  // hi = pmore
  404698:	8b0c0042 	add	x2, x2, x12
  40469c:	eb08029f 	cmp	x20, x8
  4046a0:	8b1e01a3 	add	x3, x13, x30
  4046a4:	9a8d806d 	csel	x13, x3, x13, hi  // hi = pmore
  4046a8:	8b088021 	add	x1, x1, x8, lsl #32
  4046ac:	eb02021f 	cmp	x16, x2
  4046b0:	8b52814a 	add	x10, x10, x18, lsr #32
  4046b4:	8b0200a2 	add	x2, x5, x2
  4046b8:	8b0a0021 	add	x1, x1, x10
  4046bc:	d360fd04 	lsr	x4, x8, #32
  4046c0:	9a9f97e8 	cset	x8, hi  // hi = pmore
  4046c4:	eb0200bf 	cmp	x5, x2
  4046c8:	8b010103 	add	x3, x8, x1
  4046cc:	9a9f97e5 	cset	x5, hi  // hi = pmore
  4046d0:	8b478227 	add	x7, x17, x7, lsr #32
  4046d4:	eb01015f 	cmp	x10, x1
  4046d8:	aa0235ef 	orr	x15, x15, x2, lsl #13
  4046dc:	fa439102 	ccmp	x8, x3, #0x2, ls  // ls = plast
  4046e0:	8b0300e3 	add	x3, x7, x3
  4046e4:	9a849484 	cinc	x4, x4, hi  // hi = pmore
  4046e8:	eb0300ff 	cmp	x7, x3
  4046ec:	8b0300a3 	add	x3, x5, x3
  4046f0:	fa4390a2 	ccmp	x5, x3, #0x2, ls  // ls = plast
  4046f4:	9a8d95a1 	cinc	x1, x13, hi  // hi = pmore
  4046f8:	f10001ff 	cmp	x15, #0x0
  4046fc:	8b010084 	add	x4, x4, x1
  404700:	9a9f07e1 	cset	x1, ne  // ne = any
  404704:	aa42cc22 	orr	x2, x1, x2, lsr #51
  404708:	93c3cc84 	extr	x4, x4, x3, #51
  40470c:	aa033443 	orr	x3, x2, x3, lsl #13
  404710:	b7a01544 	tbnz	x4, #52, 4049b8 <__multf3+0x4b8>
  404714:	d287ffe1 	mov	x1, #0x3fff                	// #16383
  404718:	8b0100c5 	add	x5, x6, x1
  40471c:	f10000bf 	cmp	x5, #0x0
  404720:	54001c0d 	b.le	404aa0 <__multf3+0x5a0>
  404724:	f240087f 	tst	x3, #0x7
  404728:	540001e0 	b.eq	404764 <__multf3+0x264>  // b.none
  40472c:	926a0521 	and	x1, x9, #0xc00000
  404730:	321c0000 	orr	w0, w0, #0x10
  404734:	f150003f 	cmp	x1, #0x400, lsl #12
  404738:	54001a80 	b.eq	404a88 <__multf3+0x588>  // b.none
  40473c:	f160003f 	cmp	x1, #0x800, lsl #12
  404740:	54002380 	b.eq	404bb0 <__multf3+0x6b0>  // b.none
  404744:	b5000101 	cbnz	x1, 404764 <__multf3+0x264>
  404748:	92400c61 	and	x1, x3, #0xf
  40474c:	f100103f 	cmp	x1, #0x4
  404750:	540000a0 	b.eq	404764 <__multf3+0x264>  // b.none
  404754:	91001061 	add	x1, x3, #0x4
  404758:	eb03003f 	cmp	x1, x3
  40475c:	aa0103e3 	mov	x3, x1
  404760:	9a842484 	cinc	x4, x4, cc  // cc = lo, ul, last
  404764:	b6a00064 	tbz	x4, #52, 404770 <__multf3+0x270>
  404768:	924bf884 	and	x4, x4, #0xffefffffffffffff
  40476c:	914010c5 	add	x5, x6, #0x4, lsl #12
  404770:	d28fffc1 	mov	x1, #0x7ffe                	// #32766
  404774:	eb0100bf 	cmp	x5, x1
  404778:	5400144c 	b.gt	404a00 <__multf3+0x500>
  40477c:	93c30c8a 	extr	x10, x4, x3, #3
  404780:	120038a5 	and	w5, w5, #0x7fff
  404784:	d343c884 	ubfx	x4, x4, #3, #48
  404788:	12000161 	and	w1, w11, #0x1
  40478c:	9e670140 	fmov	d0, x10
  404790:	d2800003 	mov	x3, #0x0                   	// #0
  404794:	b340bc83 	bfxil	x3, x4, #0, #48
  404798:	b35038a3 	bfi	x3, x5, #48, #15
  40479c:	b3410023 	bfi	x3, x1, #63, #1
  4047a0:	9eaf0060 	fmov	v0.d[1], x3
  4047a4:	35001560 	cbnz	w0, 404a50 <__multf3+0x550>
  4047a8:	a94153f3 	ldp	x19, x20, [sp, #16]
  4047ac:	f94013f5 	ldr	x21, [sp, #32]
  4047b0:	a8c47bfd 	ldp	x29, x30, [sp], #64
  4047b4:	d65f03c0 	ret
  4047b8:	aa08000a 	orr	x10, x0, x8
  4047bc:	b5000c2a 	cbnz	x10, 404940 <__multf3+0x440>
  4047c0:	d370f866 	ubfx	x6, x3, #48, #15
  4047c4:	d37ffc65 	lsr	x5, x3, #63
  4047c8:	d340bc64 	ubfx	x4, x3, #0, #48
  4047cc:	d2800008 	mov	x8, #0x0                   	// #0
  4047d0:	53003cc3 	uxth	w3, w6
  4047d4:	d2800102 	mov	x2, #0x8                   	// #8
  4047d8:	d28fffee 	mov	x14, #0x7fff                	// #32767
  4047dc:	d280004d 	mov	x13, #0x2                   	// #2
  4047e0:	52800000 	mov	w0, #0x0                   	// #0
  4047e4:	53001caf 	uxtb	w15, w5
  4047e8:	35ffed23 	cbnz	w3, 40458c <__multf3+0x8c>
  4047ec:	aa0400e3 	orr	x3, x7, x4
  4047f0:	b4000943 	cbz	x3, 404918 <__multf3+0x418>
  4047f4:	dac010eb 	clz	x11, x7
  4047f8:	f100009f 	cmp	x4, #0x0
  4047fc:	9101016b 	add	x11, x11, #0x40
  404800:	dac01086 	clz	x6, x4
  404804:	9a86016b 	csel	x11, x11, x6, eq  // eq = none
  404808:	d1003d63 	sub	x3, x11, #0xf
  40480c:	f100f07f 	cmp	x3, #0x3c
  404810:	5400130c 	b.gt	404a70 <__multf3+0x570>
  404814:	528007a6 	mov	w6, #0x3d                  	// #61
  404818:	4b0300c6 	sub	w6, w6, w3
  40481c:	11000c63 	add	w3, w3, #0x3
  404820:	9ac624e6 	lsr	x6, x7, x6
  404824:	9ac32084 	lsl	x4, x4, x3
  404828:	aa0400c4 	orr	x4, x6, x4
  40482c:	9ac320e3 	lsl	x3, x7, x3
  404830:	9287fdc7 	mov	x7, #0xffffffffffffc011    	// #-16367
  404834:	cb0b00e6 	sub	x6, x7, x11
  404838:	d2800007 	mov	x7, #0x0                   	// #0
  40483c:	17ffff5f 	b	4045b8 <__multf3+0xb8>
  404840:	d0000006 	adrp	x6, 406000 <states+0xe0>
  404844:	912200c6 	add	x6, x6, #0x880
  404848:	386248c2 	ldrb	w2, [x6, w2, uxtw]
  40484c:	10000066 	adr	x6, 404858 <__multf3+0x358>
  404850:	8b2288c2 	add	x2, x6, w2, sxtb #2
  404854:	d61f0040 	br	x2
  404858:	aa0f03eb 	mov	x11, x15
  40485c:	f10008ff 	cmp	x7, #0x2
  404860:	54000481 	b.ne	4048f0 <__multf3+0x3f0>  // b.any
  404864:	12000161 	and	w1, w11, #0x1
  404868:	528fffe5 	mov	w5, #0x7fff                	// #32767
  40486c:	d2800004 	mov	x4, #0x0                   	// #0
  404870:	d280000a 	mov	x10, #0x0                   	// #0
  404874:	17ffffc6 	b	40478c <__multf3+0x28c>
  404878:	aa08000a 	orr	x10, x0, x8
  40487c:	b400056a 	cbz	x10, 404928 <__multf3+0x428>
  404880:	dac01006 	clz	x6, x0
  404884:	f100011f 	cmp	x8, #0x0
  404888:	dac01105 	clz	x5, x8
  40488c:	910100c6 	add	x6, x6, #0x40
  404890:	9a8500c5 	csel	x5, x6, x5, eq  // eq = none
  404894:	d1003ca2 	sub	x2, x5, #0xf
  404898:	f100f05f 	cmp	x2, #0x3c
  40489c:	54000e2c 	b.gt	404a60 <__multf3+0x560>
  4048a0:	528007a6 	mov	w6, #0x3d                  	// #61
  4048a4:	11000c4a 	add	w10, w2, #0x3
  4048a8:	4b0200c2 	sub	w2, w6, w2
  4048ac:	9aca2104 	lsl	x4, x8, x10
  4048b0:	9aca200a 	lsl	x10, x0, x10
  4048b4:	9ac22400 	lsr	x0, x0, x2
  4048b8:	aa040008 	orr	x8, x0, x4
  4048bc:	9287fdc6 	mov	x6, #0xffffffffffffc011    	// #-16367
  4048c0:	d2800002 	mov	x2, #0x0                   	// #0
  4048c4:	cb0500ce 	sub	x14, x6, x5
  4048c8:	d280000d 	mov	x13, #0x0                   	// #0
  4048cc:	52800000 	mov	w0, #0x0                   	// #0
  4048d0:	17ffff29 	b	404574 <__multf3+0x74>
  4048d4:	d503201f 	nop
  4048d8:	aa0400e3 	orr	x3, x7, x4
  4048dc:	b5000423 	cbnz	x3, 404960 <__multf3+0x460>
  4048e0:	d2800004 	mov	x4, #0x0                   	// #0
  4048e4:	d28fffe6 	mov	x6, #0x7fff                	// #32767
  4048e8:	d2800047 	mov	x7, #0x2                   	// #2
  4048ec:	17ffff33 	b	4045b8 <__multf3+0xb8>
  4048f0:	f1000cff 	cmp	x7, #0x3
  4048f4:	54001c20 	b.eq	404c78 <__multf3+0x778>  // b.none
  4048f8:	f10004ff 	cmp	x7, #0x1
  4048fc:	54001261 	b.ne	404b48 <__multf3+0x648>  // b.any
  404900:	12000161 	and	w1, w11, #0x1
  404904:	52800005 	mov	w5, #0x0                   	// #0
  404908:	d2800004 	mov	x4, #0x0                   	// #0
  40490c:	d280000a 	mov	x10, #0x0                   	// #0
  404910:	17ffff9f 	b	40478c <__multf3+0x28c>
  404914:	d503201f 	nop
  404918:	d2800004 	mov	x4, #0x0                   	// #0
  40491c:	d2800006 	mov	x6, #0x0                   	// #0
  404920:	d2800027 	mov	x7, #0x1                   	// #1
  404924:	17ffff25 	b	4045b8 <__multf3+0xb8>
  404928:	d2800008 	mov	x8, #0x0                   	// #0
  40492c:	d2800082 	mov	x2, #0x4                   	// #4
  404930:	d280000e 	mov	x14, #0x0                   	// #0
  404934:	d280002d 	mov	x13, #0x1                   	// #1
  404938:	52800000 	mov	w0, #0x0                   	// #0
  40493c:	17ffff0e 	b	404574 <__multf3+0x74>
  404940:	d36ffd02 	lsr	x2, x8, #47
  404944:	aa0003ea 	mov	x10, x0
  404948:	d2400040 	eor	x0, x2, #0x1
  40494c:	d28fffee 	mov	x14, #0x7fff                	// #32767
  404950:	d2800182 	mov	x2, #0xc                   	// #12
  404954:	12000000 	and	w0, w0, #0x1
  404958:	d280006d 	mov	x13, #0x3                   	// #3
  40495c:	17ffff06 	b	404574 <__multf3+0x74>
  404960:	f251009f 	tst	x4, #0x800000000000
  404964:	aa0703e3 	mov	x3, x7
  404968:	1a9f1400 	csinc	w0, w0, wzr, ne  // ne = any
  40496c:	d28fffe6 	mov	x6, #0x7fff                	// #32767
  404970:	d2800067 	mov	x7, #0x3                   	// #3
  404974:	17ffff11 	b	4045b8 <__multf3+0xb8>
  404978:	52800001 	mov	w1, #0x0                   	// #0
  40497c:	92ffffe4 	mov	x4, #0xffffffffffff        	// #281474976710655
  404980:	9280000a 	mov	x10, #0xffffffffffffffff    	// #-1
  404984:	52800020 	mov	w0, #0x1                   	// #1
  404988:	528fffe5 	mov	w5, #0x7fff                	// #32767
  40498c:	17ffff80 	b	40478c <__multf3+0x28c>
  404990:	aa0803e4 	mov	x4, x8
  404994:	aa0a03e3 	mov	x3, x10
  404998:	aa0c03eb 	mov	x11, x12
  40499c:	aa0d03e7 	mov	x7, x13
  4049a0:	17ffffaf 	b	40485c <__multf3+0x35c>
  4049a4:	d503201f 	nop
  4049a8:	aa0803e4 	mov	x4, x8
  4049ac:	aa0a03e3 	mov	x3, x10
  4049b0:	aa0d03e7 	mov	x7, x13
  4049b4:	17ffffaa 	b	40485c <__multf3+0x35c>
  4049b8:	92400061 	and	x1, x3, #0x1
  4049bc:	aa0e03e6 	mov	x6, x14
  4049c0:	aa430423 	orr	x3, x1, x3, lsr #1
  4049c4:	aa04fc63 	orr	x3, x3, x4, lsl #63
  4049c8:	d341fc84 	lsr	x4, x4, #1
  4049cc:	17ffff52 	b	404714 <__multf3+0x214>
  4049d0:	b6780108 	tbz	x8, #47, 4049f0 <__multf3+0x4f0>
  4049d4:	b77800e4 	tbnz	x4, #47, 4049f0 <__multf3+0x4f0>
  4049d8:	b2510084 	orr	x4, x4, #0x800000000000
  4049dc:	2a0503e1 	mov	w1, w5
  4049e0:	9240bc84 	and	x4, x4, #0xffffffffffff
  4049e4:	aa0303ea 	mov	x10, x3
  4049e8:	528fffe5 	mov	w5, #0x7fff                	// #32767
  4049ec:	17ffff68 	b	40478c <__multf3+0x28c>
  4049f0:	b2510104 	orr	x4, x8, #0x800000000000
  4049f4:	528fffe5 	mov	w5, #0x7fff                	// #32767
  4049f8:	9240bc84 	and	x4, x4, #0xffffffffffff
  4049fc:	17ffff64 	b	40478c <__multf3+0x28c>
  404a00:	926a0529 	and	x9, x9, #0xc00000
  404a04:	f150013f 	cmp	x9, #0x400, lsl #12
  404a08:	540003c0 	b.eq	404a80 <__multf3+0x580>  // b.none
  404a0c:	f160013f 	cmp	x9, #0x800, lsl #12
  404a10:	54000c00 	b.eq	404b90 <__multf3+0x690>  // b.none
  404a14:	f100013f 	cmp	x9, #0x0
  404a18:	528fffe5 	mov	w5, #0x7fff                	// #32767
  404a1c:	92ffffe4 	mov	x4, #0xffffffffffff        	// #281474976710655
  404a20:	1a851025 	csel	w5, w1, w5, ne  // ne = any
  404a24:	9a8403e4 	csel	x4, xzr, x4, eq  // eq = none
  404a28:	da9f03ea 	csetm	x10, ne  // ne = any
  404a2c:	52800282 	mov	w2, #0x14                  	// #20
  404a30:	12000161 	and	w1, w11, #0x1
  404a34:	2a020000 	orr	w0, w0, w2
  404a38:	9e670140 	fmov	d0, x10
  404a3c:	d2800003 	mov	x3, #0x0                   	// #0
  404a40:	b340bc83 	bfxil	x3, x4, #0, #48
  404a44:	b35038a3 	bfi	x3, x5, #48, #15
  404a48:	b3410023 	bfi	x3, x1, #63, #1
  404a4c:	9eaf0060 	fmov	v0.d[1], x3
  404a50:	3d800fa0 	str	q0, [x29, #48]
  404a54:	940004bb 	bl	405d40 <__sfp_handle_exceptions>
  404a58:	3dc00fa0 	ldr	q0, [x29, #48]
  404a5c:	17ffff53 	b	4047a8 <__multf3+0x2a8>
  404a60:	5100f444 	sub	w4, w2, #0x3d
  404a64:	d280000a 	mov	x10, #0x0                   	// #0
  404a68:	9ac42008 	lsl	x8, x0, x4
  404a6c:	17ffff94 	b	4048bc <__multf3+0x3bc>
  404a70:	5100f464 	sub	w4, w3, #0x3d
  404a74:	d2800003 	mov	x3, #0x0                   	// #0
  404a78:	9ac420e4 	lsl	x4, x7, x4
  404a7c:	17ffff6d 	b	404830 <__multf3+0x330>
  404a80:	f100017f 	cmp	x11, #0x0
  404a84:	17ffffe5 	b	404a18 <__multf3+0x518>
  404a88:	b5ffe6eb 	cbnz	x11, 404764 <__multf3+0x264>
  404a8c:	91002061 	add	x1, x3, #0x8
  404a90:	eb03003f 	cmp	x1, x3
  404a94:	aa0103e3 	mov	x3, x1
  404a98:	9a842484 	cinc	x4, x4, cc  // cc = lo, ul, last
  404a9c:	17ffff32 	b	404764 <__multf3+0x264>
  404aa0:	d2800021 	mov	x1, #0x1                   	// #1
  404aa4:	cb050025 	sub	x5, x1, x5
  404aa8:	f101d0bf 	cmp	x5, #0x74
  404aac:	5400052c 	b.gt	404b50 <__multf3+0x650>
  404ab0:	f100fcbf 	cmp	x5, #0x3f
  404ab4:	5400082c 	b.gt	404bb8 <__multf3+0x6b8>
  404ab8:	52800801 	mov	w1, #0x40                  	// #64
  404abc:	9ac5246a 	lsr	x10, x3, x5
  404ac0:	4b050021 	sub	w1, w1, w5
  404ac4:	9ac52485 	lsr	x5, x4, x5
  404ac8:	9ac12063 	lsl	x3, x3, x1
  404acc:	9ac12084 	lsl	x4, x4, x1
  404ad0:	f100007f 	cmp	x3, #0x0
  404ad4:	aa0a008a 	orr	x10, x4, x10
  404ad8:	9a9f07e1 	cset	x1, ne  // ne = any
  404adc:	aa01014a 	orr	x10, x10, x1
  404ae0:	f240095f 	tst	x10, #0x7
  404ae4:	54000100 	b.eq	404b04 <__multf3+0x604>  // b.none
  404ae8:	926a0521 	and	x1, x9, #0xc00000
  404aec:	321c0000 	orr	w0, w0, #0x10
  404af0:	f150003f 	cmp	x1, #0x400, lsl #12
  404af4:	54000b80 	b.eq	404c64 <__multf3+0x764>  // b.none
  404af8:	f160003f 	cmp	x1, #0x800, lsl #12
  404afc:	54000a60 	b.eq	404c48 <__multf3+0x748>  // b.none
  404b00:	b4000141 	cbz	x1, 404b28 <__multf3+0x628>
  404b04:	b6980845 	tbz	x5, #51, 404c0c <__multf3+0x70c>
  404b08:	321c0000 	orr	w0, w0, #0x10
  404b0c:	52800025 	mov	w5, #0x1                   	// #1
  404b10:	d2800004 	mov	x4, #0x0                   	// #0
  404b14:	d280000a 	mov	x10, #0x0                   	// #0
  404b18:	321d0000 	orr	w0, w0, #0x8
  404b1c:	12000161 	and	w1, w11, #0x1
  404b20:	17ffffc6 	b	404a38 <__multf3+0x538>
  404b24:	d2800005 	mov	x5, #0x0                   	// #0
  404b28:	92400d41 	and	x1, x10, #0xf
  404b2c:	f100103f 	cmp	x1, #0x4
  404b30:	54fffea0 	b.eq	404b04 <__multf3+0x604>  // b.none
  404b34:	91001141 	add	x1, x10, #0x4
  404b38:	eb01015f 	cmp	x10, x1
  404b3c:	aa0103ea 	mov	x10, x1
  404b40:	9a8594a5 	cinc	x5, x5, hi  // hi = pmore
  404b44:	17fffff0 	b	404b04 <__multf3+0x604>
  404b48:	aa0e03e6 	mov	x6, x14
  404b4c:	17fffef2 	b	404714 <__multf3+0x214>
  404b50:	aa04006a 	orr	x10, x3, x4
  404b54:	b400014a 	cbz	x10, 404b7c <__multf3+0x67c>
  404b58:	926a0529 	and	x9, x9, #0xc00000
  404b5c:	321c0000 	orr	w0, w0, #0x10
  404b60:	f150013f 	cmp	x9, #0x400, lsl #12
  404b64:	54000840 	b.eq	404c6c <__multf3+0x76c>  // b.none
  404b68:	f160013f 	cmp	x9, #0x800, lsl #12
  404b6c:	d280000a 	mov	x10, #0x0                   	// #0
  404b70:	54000061 	b.ne	404b7c <__multf3+0x67c>  // b.any
  404b74:	f100017f 	cmp	x11, #0x0
  404b78:	9a9f07ea 	cset	x10, ne  // ne = any
  404b7c:	321d0000 	orr	w0, w0, #0x8
  404b80:	12000161 	and	w1, w11, #0x1
  404b84:	52800005 	mov	w5, #0x0                   	// #0
  404b88:	d2800004 	mov	x4, #0x0                   	// #0
  404b8c:	17ffffab 	b	404a38 <__multf3+0x538>
  404b90:	f100017f 	cmp	x11, #0x0
  404b94:	528fffe5 	mov	w5, #0x7fff                	// #32767
  404b98:	92ffffe4 	mov	x4, #0xffffffffffff        	// #281474976710655
  404b9c:	1a850025 	csel	w5, w1, w5, eq  // eq = none
  404ba0:	9a8413e4 	csel	x4, xzr, x4, ne  // ne = any
  404ba4:	da9f13ea 	csetm	x10, eq  // eq = none
  404ba8:	17ffffa1 	b	404a2c <__multf3+0x52c>
  404bac:	d503201f 	nop
  404bb0:	b4ffddab 	cbz	x11, 404764 <__multf3+0x264>
  404bb4:	17ffffb6 	b	404a8c <__multf3+0x58c>
  404bb8:	510100aa 	sub	w10, w5, #0x40
  404bbc:	f10100bf 	cmp	x5, #0x40
  404bc0:	9aca248a 	lsr	x10, x4, x10
  404bc4:	540003c0 	b.eq	404c3c <__multf3+0x73c>  // b.none
  404bc8:	52801001 	mov	w1, #0x80                  	// #128
  404bcc:	4b050025 	sub	w5, w1, w5
  404bd0:	9ac52084 	lsl	x4, x4, x5
  404bd4:	aa030083 	orr	x3, x4, x3
  404bd8:	f100007f 	cmp	x3, #0x0
  404bdc:	9a9f07e1 	cset	x1, ne  // ne = any
  404be0:	aa01014a 	orr	x10, x10, x1
  404be4:	f240095f 	tst	x10, #0x7
  404be8:	54000240 	b.eq	404c30 <__multf3+0x730>  // b.none
  404bec:	926a0521 	and	x1, x9, #0xc00000
  404bf0:	321c0000 	orr	w0, w0, #0x10
  404bf4:	f150003f 	cmp	x1, #0x400, lsl #12
  404bf8:	54000340 	b.eq	404c60 <__multf3+0x760>  // b.none
  404bfc:	f160003f 	cmp	x1, #0x800, lsl #12
  404c00:	54000220 	b.eq	404c44 <__multf3+0x744>  // b.none
  404c04:	d2800005 	mov	x5, #0x0                   	// #0
  404c08:	b4fff8e1 	cbz	x1, 404b24 <__multf3+0x624>
  404c0c:	d343c8a4 	ubfx	x4, x5, #3, #48
  404c10:	93ca0caa 	extr	x10, x5, x10, #3
  404c14:	372000a0 	tbnz	w0, #4, 404c28 <__multf3+0x728>
  404c18:	37580089 	tbnz	w9, #11, 404c28 <__multf3+0x728>
  404c1c:	12000161 	and	w1, w11, #0x1
  404c20:	52800005 	mov	w5, #0x0                   	// #0
  404c24:	17fffeda 	b	40478c <__multf3+0x28c>
  404c28:	52800005 	mov	w5, #0x0                   	// #0
  404c2c:	17ffffbb 	b	404b18 <__multf3+0x618>
  404c30:	d343fd4a 	lsr	x10, x10, #3
  404c34:	d2800004 	mov	x4, #0x0                   	// #0
  404c38:	17fffff8 	b	404c18 <__multf3+0x718>
  404c3c:	d2800004 	mov	x4, #0x0                   	// #0
  404c40:	17ffffe5 	b	404bd4 <__multf3+0x6d4>
  404c44:	d2800005 	mov	x5, #0x0                   	// #0
  404c48:	b4fff5eb 	cbz	x11, 404b04 <__multf3+0x604>
  404c4c:	91002141 	add	x1, x10, #0x8
  404c50:	eb0a003f 	cmp	x1, x10
  404c54:	aa0103ea 	mov	x10, x1
  404c58:	9a8524a5 	cinc	x5, x5, cc  // cc = lo, ul, last
  404c5c:	17ffffaa 	b	404b04 <__multf3+0x604>
  404c60:	d2800005 	mov	x5, #0x0                   	// #0
  404c64:	b5fff50b 	cbnz	x11, 404b04 <__multf3+0x604>
  404c68:	17fffff9 	b	404c4c <__multf3+0x74c>
  404c6c:	f100017f 	cmp	x11, #0x0
  404c70:	9a9f17ea 	cset	x10, eq  // eq = none
  404c74:	17ffffc2 	b	404b7c <__multf3+0x67c>
  404c78:	b2510084 	orr	x4, x4, #0x800000000000
  404c7c:	12000161 	and	w1, w11, #0x1
  404c80:	9240bc84 	and	x4, x4, #0xffffffffffff
  404c84:	aa0303ea 	mov	x10, x3
  404c88:	528fffe5 	mov	w5, #0x7fff                	// #32767
  404c8c:	17fffec0 	b	40478c <__multf3+0x28c>

0000000000404c90 <__subtf3>:
  404c90:	9e660000 	fmov	x0, d0
  404c94:	9e660022 	fmov	x2, d1
  404c98:	9eae0001 	fmov	x1, v0.d[1]
  404c9c:	9eae0023 	fmov	x3, v1.d[1]
  404ca0:	aa0003e4 	mov	x4, x0
  404ca4:	aa0203e5 	mov	x5, x2
  404ca8:	d53b4407 	mrs	x7, fpcr
  404cac:	d370f826 	ubfx	x6, x1, #48, #15
  404cb0:	d28fffed 	mov	x13, #0x7fff                	// #32767
  404cb4:	d37ffc2b 	lsr	x11, x1, #63
  404cb8:	d37dbc6c 	ubfiz	x12, x3, #3, #48
  404cbc:	53003cc0 	uxth	w0, w6
  404cc0:	53003cc9 	uxth	w9, w6
  404cc4:	d370f866 	ubfx	x6, x3, #48, #15
  404cc8:	d37dbc21 	ubfiz	x1, x1, #3, #48
  404ccc:	53001d68 	uxtb	w8, w11
  404cd0:	d37df08a 	lsl	x10, x4, #3
  404cd4:	53003cce 	uxth	w14, w6
  404cd8:	aa44f421 	orr	x1, x1, x4, lsr #61
  404cdc:	eb0d01df 	cmp	x14, x13
  404ce0:	d37ffc62 	lsr	x2, x3, #63
  404ce4:	aa45f58c 	orr	x12, x12, x5, lsr #61
  404ce8:	53003cc6 	uxth	w6, w6
  404cec:	d37df0ad 	lsl	x13, x5, #3
  404cf0:	54000ac0 	b.eq	404e48 <__subtf3+0x1b8>  // b.none
  404cf4:	52000042 	eor	w2, w2, #0x1
  404cf8:	53001c42 	uxtb	w2, w2
  404cfc:	eb08005f 	cmp	x2, x8
  404d00:	54000ae0 	b.eq	404e5c <__subtf3+0x1cc>  // b.none
  404d04:	4b060003 	sub	w3, w0, w6
  404d08:	7100007f 	cmp	w3, #0x0
  404d0c:	54001aad 	b.le	405060 <__subtf3+0x3d0>
  404d10:	b5000d4e 	cbnz	x14, 404eb8 <__subtf3+0x228>
  404d14:	aa0d0180 	orr	x0, x12, x13
  404d18:	b4000f80 	cbz	x0, 404f08 <__subtf3+0x278>
  404d1c:	71000463 	subs	w3, w3, #0x1
  404d20:	54002401 	b.ne	4051a0 <__subtf3+0x510>  // b.any
  404d24:	cb0d014d 	sub	x13, x10, x13
  404d28:	eb0d015f 	cmp	x10, x13
  404d2c:	aa0d03ea 	mov	x10, x13
  404d30:	da0c0021 	sbc	x1, x1, x12
  404d34:	9240c824 	and	x4, x1, #0x7ffffffffffff
  404d38:	b6980a41 	tbz	x1, #51, 404e80 <__subtf3+0x1f0>
  404d3c:	dac01142 	clz	x2, x10
  404d40:	f100009f 	cmp	x4, #0x0
  404d44:	11010042 	add	w2, w2, #0x40
  404d48:	dac01080 	clz	x0, x4
  404d4c:	1a800040 	csel	w0, w2, w0, eq  // eq = none
  404d50:	51003002 	sub	w2, w0, #0xc
  404d54:	7100fc5f 	cmp	w2, #0x3f
  404d58:	54001ecc 	b.gt	405130 <__subtf3+0x4a0>
  404d5c:	52800800 	mov	w0, #0x40                  	// #64
  404d60:	9ac22084 	lsl	x4, x4, x2
  404d64:	4b020000 	sub	w0, w0, w2
  404d68:	9ac02540 	lsr	x0, x10, x0
  404d6c:	9ac2214a 	lsl	x10, x10, x2
  404d70:	aa040000 	orr	x0, x0, x4
  404d74:	93407c41 	sxtw	x1, w2
  404d78:	eb01013f 	cmp	x9, x1
  404d7c:	54001d2c 	b.gt	405120 <__subtf3+0x490>
  404d80:	4b090042 	sub	w2, w2, w9
  404d84:	11000442 	add	w2, w2, #0x1
  404d88:	7100fc5f 	cmp	w2, #0x3f
  404d8c:	5400212c 	b.gt	4051b0 <__subtf3+0x520>
  404d90:	52800803 	mov	w3, #0x40                  	// #64
  404d94:	9ac22544 	lsr	x4, x10, x2
  404d98:	4b020063 	sub	w3, w3, w2
  404d9c:	9ac22401 	lsr	x1, x0, x2
  404da0:	9ac32145 	lsl	x5, x10, x3
  404da4:	9ac32000 	lsl	x0, x0, x3
  404da8:	f10000bf 	cmp	x5, #0x0
  404dac:	aa040000 	orr	x0, x0, x4
  404db0:	9a9f07e5 	cset	x5, ne  // ne = any
  404db4:	aa05000a 	orr	x10, x0, x5
  404db8:	aa010140 	orr	x0, x10, x1
  404dbc:	92400942 	and	x2, x10, #0x7
  404dc0:	f100001f 	cmp	x0, #0x0
  404dc4:	1a9f07e3 	cset	w3, ne  // ne = any
  404dc8:	b4000682 	cbz	x2, 404e98 <__subtf3+0x208>
  404dcc:	926a04e2 	and	x2, x7, #0xc00000
  404dd0:	d2800009 	mov	x9, #0x0                   	// #0
  404dd4:	52800000 	mov	w0, #0x0                   	// #0
  404dd8:	f150005f 	cmp	x2, #0x400, lsl #12
  404ddc:	321c0000 	orr	w0, w0, #0x10
  404de0:	540018a0 	b.eq	4050f4 <__subtf3+0x464>  // b.none
  404de4:	f160005f 	cmp	x2, #0x800, lsl #12
  404de8:	54001960 	b.eq	405114 <__subtf3+0x484>  // b.none
  404dec:	b4001242 	cbz	x2, 405034 <__subtf3+0x3a4>
  404df0:	34001323 	cbz	w3, 405054 <__subtf3+0x3c4>
  404df4:	924d0022 	and	x2, x1, #0x8000000000000
  404df8:	1200010b 	and	w11, w8, #0x1
  404dfc:	321d0000 	orr	w0, w0, #0x8
  404e00:	b4000942 	cbz	x2, 404f28 <__subtf3+0x298>
  404e04:	91000529 	add	x9, x9, #0x1
  404e08:	d28fffe2 	mov	x2, #0x7fff                	// #32767
  404e0c:	eb02013f 	cmp	x9, x2
  404e10:	540014c0 	b.eq	4050a8 <__subtf3+0x418>  // b.none
  404e14:	924cf821 	and	x1, x1, #0xfff7ffffffffffff
  404e18:	12003926 	and	w6, w9, #0x7fff
  404e1c:	d343c824 	ubfx	x4, x1, #3, #48
  404e20:	93ca0c25 	extr	x5, x1, x10, #3
  404e24:	9e6700a0 	fmov	d0, x5
  404e28:	d2800003 	mov	x3, #0x0                   	// #0
  404e2c:	b340bc83 	bfxil	x3, x4, #0, #48
  404e30:	b35038c3 	bfi	x3, x6, #48, #15
  404e34:	b3410163 	bfi	x3, x11, #63, #1
  404e38:	9eaf0060 	fmov	v0.d[1], x3
  404e3c:	350009a0 	cbnz	w0, 404f70 <__subtf3+0x2e0>
  404e40:	d65f03c0 	ret
  404e44:	d503201f 	nop
  404e48:	aa0d0183 	orr	x3, x12, x13
  404e4c:	b4fff543 	cbz	x3, 404cf4 <__subtf3+0x64>
  404e50:	53001c42 	uxtb	w2, w2
  404e54:	eb08005f 	cmp	x2, x8
  404e58:	54fff561 	b.ne	404d04 <__subtf3+0x74>  // b.any
  404e5c:	4b060000 	sub	w0, w0, w6
  404e60:	7100001f 	cmp	w0, #0x0
  404e64:	5400176d 	b.le	405150 <__subtf3+0x4c0>
  404e68:	b5000a8e 	cbnz	x14, 404fb8 <__subtf3+0x328>
  404e6c:	aa0d0182 	orr	x2, x12, x13
  404e70:	b5002242 	cbnz	x2, 4052b8 <__subtf3+0x628>
  404e74:	d28fffe0 	mov	x0, #0x7fff                	// #32767
  404e78:	eb00013f 	cmp	x9, x0
  404e7c:	54002960 	b.eq	4053a8 <__subtf3+0x718>  // b.none
  404e80:	b5000c49 	cbnz	x9, 405008 <__subtf3+0x378>
  404e84:	92400942 	and	x2, x10, #0x7
  404e88:	aa010140 	orr	x0, x10, x1
  404e8c:	f100001f 	cmp	x0, #0x0
  404e90:	1a9f07e3 	cset	w3, ne  // ne = any
  404e94:	b5fff9c2 	cbnz	x2, 404dcc <__subtf3+0x13c>
  404e98:	d2800009 	mov	x9, #0x0                   	// #0
  404e9c:	52800000 	mov	w0, #0x0                   	// #0
  404ea0:	924d0022 	and	x2, x1, #0x8000000000000
  404ea4:	1200010b 	and	w11, w8, #0x1
  404ea8:	34fffac3 	cbz	w3, 404e00 <__subtf3+0x170>
  404eac:	365ffaa7 	tbz	w7, #11, 404e00 <__subtf3+0x170>
  404eb0:	321d0000 	orr	w0, w0, #0x8
  404eb4:	17ffffd3 	b	404e00 <__subtf3+0x170>
  404eb8:	d28fffe0 	mov	x0, #0x7fff                	// #32767
  404ebc:	b24d018c 	orr	x12, x12, #0x8000000000000
  404ec0:	eb00013f 	cmp	x9, x0
  404ec4:	54000280 	b.eq	404f14 <__subtf3+0x284>  // b.none
  404ec8:	7101d07f 	cmp	w3, #0x74
  404ecc:	5400062c 	b.gt	404f90 <__subtf3+0x300>
  404ed0:	7100fc7f 	cmp	w3, #0x3f
  404ed4:	540018ec 	b.gt	4051f0 <__subtf3+0x560>
  404ed8:	52800800 	mov	w0, #0x40                  	// #64
  404edc:	4b030000 	sub	w0, w0, w3
  404ee0:	9ac02182 	lsl	x2, x12, x0
  404ee4:	9ac021a0 	lsl	x0, x13, x0
  404ee8:	f100001f 	cmp	x0, #0x0
  404eec:	9ac325ad 	lsr	x13, x13, x3
  404ef0:	aa0d004d 	orr	x13, x2, x13
  404ef4:	9a9f07e2 	cset	x2, ne  // ne = any
  404ef8:	aa0d0042 	orr	x2, x2, x13
  404efc:	9ac32583 	lsr	x3, x12, x3
  404f00:	14000028 	b	404fa0 <__subtf3+0x310>
  404f04:	d503201f 	nop
  404f08:	d28fffe0 	mov	x0, #0x7fff                	// #32767
  404f0c:	eb00013f 	cmp	x9, x0
  404f10:	54fffb81 	b.ne	404e80 <__subtf3+0x1f0>  // b.any
  404f14:	aa0a0020 	orr	x0, x1, x10
  404f18:	b5001140 	cbnz	x0, 405140 <__subtf3+0x4b0>
  404f1c:	d2800001 	mov	x1, #0x0                   	// #0
  404f20:	d280000a 	mov	x10, #0x0                   	// #0
  404f24:	d28fffe9 	mov	x9, #0x7fff                	// #32767
  404f28:	12003926 	and	w6, w9, #0x7fff
  404f2c:	93ca0c25 	extr	x5, x1, x10, #3
  404f30:	d343fc21 	lsr	x1, x1, #3
  404f34:	d28fffe2 	mov	x2, #0x7fff                	// #32767
  404f38:	9240bc24 	and	x4, x1, #0xffffffffffff
  404f3c:	eb02013f 	cmp	x9, x2
  404f40:	54fff721 	b.ne	404e24 <__subtf3+0x194>  // b.any
  404f44:	aa0100a2 	orr	x2, x5, x1
  404f48:	b4000a82 	cbz	x2, 405098 <__subtf3+0x408>
  404f4c:	9e6700a0 	fmov	d0, x5
  404f50:	b2510024 	orr	x4, x1, #0x800000000000
  404f54:	9240bc84 	and	x4, x4, #0xffffffffffff
  404f58:	d2800003 	mov	x3, #0x0                   	// #0
  404f5c:	b340bc83 	bfxil	x3, x4, #0, #48
  404f60:	b35038c3 	bfi	x3, x6, #48, #15
  404f64:	b3410163 	bfi	x3, x11, #63, #1
  404f68:	9eaf0060 	fmov	v0.d[1], x3
  404f6c:	34fff6a0 	cbz	w0, 404e40 <__subtf3+0x1b0>
  404f70:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  404f74:	910003fd 	mov	x29, sp
  404f78:	3d8007a0 	str	q0, [x29, #16]
  404f7c:	94000371 	bl	405d40 <__sfp_handle_exceptions>
  404f80:	3dc007a0 	ldr	q0, [x29, #16]
  404f84:	a8c27bfd 	ldp	x29, x30, [sp], #32
  404f88:	d65f03c0 	ret
  404f8c:	d503201f 	nop
  404f90:	aa0d018c 	orr	x12, x12, x13
  404f94:	d2800003 	mov	x3, #0x0                   	// #0
  404f98:	f100019f 	cmp	x12, #0x0
  404f9c:	9a9f07e2 	cset	x2, ne  // ne = any
  404fa0:	cb020142 	sub	x2, x10, x2
  404fa4:	eb02015f 	cmp	x10, x2
  404fa8:	aa0203ea 	mov	x10, x2
  404fac:	da030021 	sbc	x1, x1, x3
  404fb0:	17ffff61 	b	404d34 <__subtf3+0xa4>
  404fb4:	d503201f 	nop
  404fb8:	d28fffe2 	mov	x2, #0x7fff                	// #32767
  404fbc:	b24d018c 	orr	x12, x12, #0x8000000000000
  404fc0:	eb02013f 	cmp	x9, x2
  404fc4:	54fffa80 	b.eq	404f14 <__subtf3+0x284>  // b.none
  404fc8:	7101d01f 	cmp	w0, #0x74
  404fcc:	540019ec 	b.gt	405308 <__subtf3+0x678>
  404fd0:	7100fc1f 	cmp	w0, #0x3f
  404fd4:	540020ac 	b.gt	4053e8 <__subtf3+0x758>
  404fd8:	52800802 	mov	w2, #0x40                  	// #64
  404fdc:	9ac025a3 	lsr	x3, x13, x0
  404fe0:	4b000042 	sub	w2, w2, w0
  404fe4:	9ac02580 	lsr	x0, x12, x0
  404fe8:	9ac221ad 	lsl	x13, x13, x2
  404fec:	9ac22182 	lsl	x2, x12, x2
  404ff0:	f10001bf 	cmp	x13, #0x0
  404ff4:	aa030043 	orr	x3, x2, x3
  404ff8:	9a9f07e2 	cset	x2, ne  // ne = any
  404ffc:	aa030042 	orr	x2, x2, x3
  405000:	140000c6 	b	405318 <__subtf3+0x688>
  405004:	d503201f 	nop
  405008:	52800000 	mov	w0, #0x0                   	// #0
  40500c:	f240095f 	tst	x10, #0x7
  405010:	54000220 	b.eq	405054 <__subtf3+0x3c4>  // b.none
  405014:	926a04e3 	and	x3, x7, #0xc00000
  405018:	321c0000 	orr	w0, w0, #0x10
  40501c:	f150007f 	cmp	x3, #0x400, lsl #12
  405020:	54000680 	b.eq	4050f0 <__subtf3+0x460>  // b.none
  405024:	f160007f 	cmp	x3, #0x800, lsl #12
  405028:	54000740 	b.eq	405110 <__subtf3+0x480>  // b.none
  40502c:	b5000143 	cbnz	x3, 405054 <__subtf3+0x3c4>
  405030:	52800003 	mov	w3, #0x0                   	// #0
  405034:	92400d42 	and	x2, x10, #0xf
  405038:	f100105f 	cmp	x2, #0x4
  40503c:	54ffeda0 	b.eq	404df0 <__subtf3+0x160>  // b.none
  405040:	91001142 	add	x2, x10, #0x4
  405044:	eb0a005f 	cmp	x2, x10
  405048:	aa0203ea 	mov	x10, x2
  40504c:	9a812421 	cinc	x1, x1, cc  // cc = lo, ul, last
  405050:	35ffed23 	cbnz	w3, 404df4 <__subtf3+0x164>
  405054:	924d0022 	and	x2, x1, #0x8000000000000
  405058:	1200010b 	and	w11, w8, #0x1
  40505c:	17ffff69 	b	404e00 <__subtf3+0x170>
  405060:	54000e41 	b.ne	405228 <__subtf3+0x598>  // b.any
  405064:	91000520 	add	x0, x9, #0x1
  405068:	92403800 	and	x0, x0, #0x7fff
  40506c:	f100041f 	cmp	x0, #0x1
  405070:	54001a8d 	b.le	4053c0 <__subtf3+0x730>
  405074:	cb0d0140 	sub	x0, x10, x13
  405078:	eb00015f 	cmp	x10, x0
  40507c:	da0c0024 	sbc	x4, x1, x12
  405080:	b6981084 	tbz	x4, #51, 405290 <__subtf3+0x600>
  405084:	cb0a01aa 	sub	x10, x13, x10
  405088:	aa0203e8 	mov	x8, x2
  40508c:	eb0a01bf 	cmp	x13, x10
  405090:	da010184 	sbc	x4, x12, x1
  405094:	17ffff2a 	b	404d3c <__subtf3+0xac>
  405098:	d2800005 	mov	x5, #0x0                   	// #0
  40509c:	d2800004 	mov	x4, #0x0                   	// #0
  4050a0:	17ffff61 	b	404e24 <__subtf3+0x194>
  4050a4:	d503201f 	nop
  4050a8:	f26a04e7 	ands	x7, x7, #0xc00000
  4050ac:	54000720 	b.eq	405190 <__subtf3+0x500>  // b.none
  4050b0:	f15000ff 	cmp	x7, #0x400, lsl #12
  4050b4:	54001ca0 	b.eq	405448 <__subtf3+0x7b8>  // b.none
  4050b8:	f16000ff 	cmp	x7, #0x800, lsl #12
  4050bc:	528fffc6 	mov	w6, #0x7ffe                	// #32766
  4050c0:	fa400904 	ccmp	x8, #0x0, #0x4, eq  // eq = none
  4050c4:	92fc0001 	mov	x1, #0x1fffffffffffffff    	// #2305843009213693951
  4050c8:	1a9f07e2 	cset	w2, ne  // ne = any
  4050cc:	d28fffc3 	mov	x3, #0x7ffe                	// #32766
  4050d0:	7100005f 	cmp	w2, #0x0
  4050d4:	1a861126 	csel	w6, w9, w6, ne  // ne = any
  4050d8:	9a9f0021 	csel	x1, x1, xzr, eq  // eq = none
  4050dc:	da9f13e5 	csetm	x5, eq  // eq = none
  4050e0:	9a831129 	csel	x9, x9, x3, ne  // ne = any
  4050e4:	52800282 	mov	w2, #0x14                  	// #20
  4050e8:	2a020000 	orr	w0, w0, w2
  4050ec:	17ffff92 	b	404f34 <__subtf3+0x2a4>
  4050f0:	52800003 	mov	w3, #0x0                   	// #0
  4050f4:	b5ffe7e8 	cbnz	x8, 404df0 <__subtf3+0x160>
  4050f8:	91002142 	add	x2, x10, #0x8
  4050fc:	eb0a005f 	cmp	x2, x10
  405100:	aa0203ea 	mov	x10, x2
  405104:	9a812421 	cinc	x1, x1, cc  // cc = lo, ul, last
  405108:	17ffff3a 	b	404df0 <__subtf3+0x160>
  40510c:	d503201f 	nop
  405110:	52800003 	mov	w3, #0x0                   	// #0
  405114:	b4ffe6e8 	cbz	x8, 404df0 <__subtf3+0x160>
  405118:	17fffff8 	b	4050f8 <__subtf3+0x468>
  40511c:	d503201f 	nop
  405120:	cb010129 	sub	x9, x9, x1
  405124:	924cf801 	and	x1, x0, #0xfff7ffffffffffff
  405128:	17ffff56 	b	404e80 <__subtf3+0x1f0>
  40512c:	d503201f 	nop
  405130:	51013000 	sub	w0, w0, #0x4c
  405134:	9ac02140 	lsl	x0, x10, x0
  405138:	d280000a 	mov	x10, #0x0                   	// #0
  40513c:	17ffff0e 	b	404d74 <__subtf3+0xe4>
  405140:	d372fc20 	lsr	x0, x1, #50
  405144:	d2400000 	eor	x0, x0, #0x1
  405148:	12000000 	and	w0, w0, #0x1
  40514c:	17ffffb0 	b	40500c <__subtf3+0x37c>
  405150:	54001681 	b.ne	405420 <__subtf3+0x790>  // b.any
  405154:	91000523 	add	x3, x9, #0x1
  405158:	92403866 	and	x6, x3, #0x7fff
  40515c:	f10004df 	cmp	x6, #0x1
  405160:	5400110d 	b.le	405380 <__subtf3+0x6f0>
  405164:	d28fffe2 	mov	x2, #0x7fff                	// #32767
  405168:	eb02007f 	cmp	x3, x2
  40516c:	540022a0 	b.eq	4055c0 <__subtf3+0x930>  // b.none
  405170:	8b0d014d 	add	x13, x10, x13
  405174:	8b0c0021 	add	x1, x1, x12
  405178:	eb0d015f 	cmp	x10, x13
  40517c:	aa0303e9 	mov	x9, x3
  405180:	9a819421 	cinc	x1, x1, hi  // hi = pmore
  405184:	93cd042a 	extr	x10, x1, x13, #1
  405188:	d341fc21 	lsr	x1, x1, #1
  40518c:	17ffffa0 	b	40500c <__subtf3+0x37c>
  405190:	2a0903e6 	mov	w6, w9
  405194:	d2800001 	mov	x1, #0x0                   	// #0
  405198:	d2800005 	mov	x5, #0x0                   	// #0
  40519c:	17ffffd2 	b	4050e4 <__subtf3+0x454>
  4051a0:	d28fffe0 	mov	x0, #0x7fff                	// #32767
  4051a4:	eb00013f 	cmp	x9, x0
  4051a8:	54ffe901 	b.ne	404ec8 <__subtf3+0x238>  // b.any
  4051ac:	17ffff5a 	b	404f14 <__subtf3+0x284>
  4051b0:	51010043 	sub	w3, w2, #0x40
  4051b4:	7101005f 	cmp	w2, #0x40
  4051b8:	9ac32403 	lsr	x3, x0, x3
  4051bc:	54000da0 	b.eq	405370 <__subtf3+0x6e0>  // b.none
  4051c0:	52801001 	mov	w1, #0x80                  	// #128
  4051c4:	4b020021 	sub	w1, w1, w2
  4051c8:	9ac12000 	lsl	x0, x0, x1
  4051cc:	aa000140 	orr	x0, x10, x0
  4051d0:	d2800001 	mov	x1, #0x0                   	// #0
  4051d4:	f100001f 	cmp	x0, #0x0
  4051d8:	9a9f07e0 	cset	x0, ne  // ne = any
  4051dc:	aa00006a 	orr	x10, x3, x0
  4051e0:	f100015f 	cmp	x10, #0x0
  4051e4:	92400942 	and	x2, x10, #0x7
  4051e8:	1a9f07e3 	cset	w3, ne  // ne = any
  4051ec:	17fffef7 	b	404dc8 <__subtf3+0x138>
  4051f0:	51010062 	sub	w2, w3, #0x40
  4051f4:	7101007f 	cmp	w3, #0x40
  4051f8:	9ac22582 	lsr	x2, x12, x2
  4051fc:	54000be0 	b.eq	405378 <__subtf3+0x6e8>  // b.none
  405200:	52801000 	mov	w0, #0x80                  	// #128
  405204:	4b030003 	sub	w3, w0, w3
  405208:	9ac3218c 	lsl	x12, x12, x3
  40520c:	aa0d018d 	orr	x13, x12, x13
  405210:	d2800003 	mov	x3, #0x0                   	// #0
  405214:	f10001bf 	cmp	x13, #0x0
  405218:	9a9f07e0 	cset	x0, ne  // ne = any
  40521c:	aa000042 	orr	x2, x2, x0
  405220:	17ffff60 	b	404fa0 <__subtf3+0x310>
  405224:	d503201f 	nop
  405228:	b4000849 	cbz	x9, 405330 <__subtf3+0x6a0>
  40522c:	d28fffe0 	mov	x0, #0x7fff                	// #32767
  405230:	eb0001df 	cmp	x14, x0
  405234:	54001ac0 	b.eq	40558c <__subtf3+0x8fc>  // b.none
  405238:	4b0303e3 	neg	w3, w3
  40523c:	b24d0021 	orr	x1, x1, #0x8000000000000
  405240:	7101d07f 	cmp	w3, #0x74
  405244:	54001b2c 	b.gt	4055a8 <__subtf3+0x918>
  405248:	7100fc7f 	cmp	w3, #0x3f
  40524c:	540027cc 	b.gt	405744 <__subtf3+0xab4>
  405250:	52800800 	mov	w0, #0x40                  	// #64
  405254:	4b030000 	sub	w0, w0, w3
  405258:	9ac02024 	lsl	x4, x1, x0
  40525c:	9ac02140 	lsl	x0, x10, x0
  405260:	f100001f 	cmp	x0, #0x0
  405264:	9ac32540 	lsr	x0, x10, x3
  405268:	aa00008a 	orr	x10, x4, x0
  40526c:	9a9f07e0 	cset	x0, ne  // ne = any
  405270:	aa0a0000 	orr	x0, x0, x10
  405274:	9ac32421 	lsr	x1, x1, x3
  405278:	cb0001aa 	sub	x10, x13, x0
  40527c:	aa0e03e9 	mov	x9, x14
  405280:	eb0a01bf 	cmp	x13, x10
  405284:	aa0203e8 	mov	x8, x2
  405288:	da010181 	sbc	x1, x12, x1
  40528c:	17fffeaa 	b	404d34 <__subtf3+0xa4>
  405290:	aa040001 	orr	x1, x0, x4
  405294:	b5000621 	cbnz	x1, 405358 <__subtf3+0x6c8>
  405298:	926a04e0 	and	x0, x7, #0xc00000
  40529c:	d2800001 	mov	x1, #0x0                   	// #0
  4052a0:	f160001f 	cmp	x0, #0x800, lsl #12
  4052a4:	d280000a 	mov	x10, #0x0                   	// #0
  4052a8:	9a9f17e8 	cset	x8, eq  // eq = none
  4052ac:	52800000 	mov	w0, #0x0                   	// #0
  4052b0:	d2800009 	mov	x9, #0x0                   	// #0
  4052b4:	17fffefb 	b	404ea0 <__subtf3+0x210>
  4052b8:	71000400 	subs	w0, w0, #0x1
  4052bc:	54000521 	b.ne	405360 <__subtf3+0x6d0>  // b.any
  4052c0:	8b0d014d 	add	x13, x10, x13
  4052c4:	8b0c0021 	add	x1, x1, x12
  4052c8:	eb0d015f 	cmp	x10, x13
  4052cc:	aa0d03ea 	mov	x10, x13
  4052d0:	9a819421 	cinc	x1, x1, hi  // hi = pmore
  4052d4:	b69fdd61 	tbz	x1, #51, 404e80 <__subtf3+0x1f0>
  4052d8:	91000529 	add	x9, x9, #0x1
  4052dc:	d28fffe0 	mov	x0, #0x7fff                	// #32767
  4052e0:	eb00013f 	cmp	x9, x0
  4052e4:	54001160 	b.eq	405510 <__subtf3+0x880>  // b.none
  4052e8:	92400145 	and	x5, x10, #0x1
  4052ec:	924cf822 	and	x2, x1, #0xfff7ffffffffffff
  4052f0:	52800000 	mov	w0, #0x0                   	// #0
  4052f4:	aa4a04a5 	orr	x5, x5, x10, lsr #1
  4052f8:	d341fc41 	lsr	x1, x2, #1
  4052fc:	aa02fcaa 	orr	x10, x5, x2, lsl #63
  405300:	17ffff43 	b	40500c <__subtf3+0x37c>
  405304:	d503201f 	nop
  405308:	aa0d018c 	orr	x12, x12, x13
  40530c:	d2800000 	mov	x0, #0x0                   	// #0
  405310:	f100019f 	cmp	x12, #0x0
  405314:	9a9f07e2 	cset	x2, ne  // ne = any
  405318:	8b0a0042 	add	x2, x2, x10
  40531c:	8b010001 	add	x1, x0, x1
  405320:	eb02015f 	cmp	x10, x2
  405324:	aa0203ea 	mov	x10, x2
  405328:	9a819421 	cinc	x1, x1, hi  // hi = pmore
  40532c:	17ffffea 	b	4052d4 <__subtf3+0x644>
  405330:	aa0a0020 	orr	x0, x1, x10
  405334:	b5001160 	cbnz	x0, 405560 <__subtf3+0x8d0>
  405338:	d28fffe0 	mov	x0, #0x7fff                	// #32767
  40533c:	eb0001df 	cmp	x14, x0
  405340:	54001260 	b.eq	40558c <__subtf3+0x8fc>  // b.none
  405344:	aa0c03e1 	mov	x1, x12
  405348:	aa0d03ea 	mov	x10, x13
  40534c:	aa0e03e9 	mov	x9, x14
  405350:	aa0203e8 	mov	x8, x2
  405354:	17fffecb 	b	404e80 <__subtf3+0x1f0>
  405358:	aa0003ea 	mov	x10, x0
  40535c:	17fffe78 	b	404d3c <__subtf3+0xac>
  405360:	d28fffe2 	mov	x2, #0x7fff                	// #32767
  405364:	eb02013f 	cmp	x9, x2
  405368:	54ffe301 	b.ne	404fc8 <__subtf3+0x338>  // b.any
  40536c:	17fffeea 	b	404f14 <__subtf3+0x284>
  405370:	d2800000 	mov	x0, #0x0                   	// #0
  405374:	17ffff96 	b	4051cc <__subtf3+0x53c>
  405378:	d280000c 	mov	x12, #0x0                   	// #0
  40537c:	17ffffa4 	b	40520c <__subtf3+0x57c>
  405380:	b5001889 	cbnz	x9, 405690 <__subtf3+0xa00>
  405384:	aa0a0022 	orr	x2, x1, x10
  405388:	b5002362 	cbnz	x2, 4057f4 <__subtf3+0xb64>
  40538c:	aa0d0180 	orr	x0, x12, x13
  405390:	aa0c03e1 	mov	x1, x12
  405394:	f100001f 	cmp	x0, #0x0
  405398:	aa0d03ea 	mov	x10, x13
  40539c:	1a9f07e3 	cset	w3, ne  // ne = any
  4053a0:	17fffebe 	b	404e98 <__subtf3+0x208>
  4053a4:	d503201f 	nop
  4053a8:	aa0a0020 	orr	x0, x1, x10
  4053ac:	b5ffeca0 	cbnz	x0, 405140 <__subtf3+0x4b0>
  4053b0:	d2800001 	mov	x1, #0x0                   	// #0
  4053b4:	d280000a 	mov	x10, #0x0                   	// #0
  4053b8:	52800000 	mov	w0, #0x0                   	// #0
  4053bc:	17fffeda 	b	404f24 <__subtf3+0x294>
  4053c0:	b5000589 	cbnz	x9, 405470 <__subtf3+0x7e0>
  4053c4:	aa0a0020 	orr	x0, x1, x10
  4053c8:	b5001460 	cbnz	x0, 405654 <__subtf3+0x9c4>
  4053cc:	aa0d0180 	orr	x0, x12, x13
  4053d0:	b4fff640 	cbz	x0, 405298 <__subtf3+0x608>
  4053d4:	aa0c03e1 	mov	x1, x12
  4053d8:	aa0d03ea 	mov	x10, x13
  4053dc:	aa0203e8 	mov	x8, x2
  4053e0:	52800023 	mov	w3, #0x1                   	// #1
  4053e4:	17fffead 	b	404e98 <__subtf3+0x208>
  4053e8:	51010002 	sub	w2, w0, #0x40
  4053ec:	7101001f 	cmp	w0, #0x40
  4053f0:	9ac22582 	lsr	x2, x12, x2
  4053f4:	540018e0 	b.eq	405710 <__subtf3+0xa80>  // b.none
  4053f8:	52801003 	mov	w3, #0x80                  	// #128
  4053fc:	4b000060 	sub	w0, w3, w0
  405400:	9ac0218c 	lsl	x12, x12, x0
  405404:	aa0d018d 	orr	x13, x12, x13
  405408:	d2800000 	mov	x0, #0x0                   	// #0
  40540c:	f10001bf 	cmp	x13, #0x0
  405410:	9a9f07e3 	cset	x3, ne  // ne = any
  405414:	aa030042 	orr	x2, x2, x3
  405418:	17ffffc0 	b	405318 <__subtf3+0x688>
  40541c:	d503201f 	nop
  405420:	b5000e89 	cbnz	x9, 4055f0 <__subtf3+0x960>
  405424:	aa0a0022 	orr	x2, x1, x10
  405428:	b5001a82 	cbnz	x2, 405778 <__subtf3+0xae8>
  40542c:	d28fffe0 	mov	x0, #0x7fff                	// #32767
  405430:	eb0001df 	cmp	x14, x0
  405434:	54001b80 	b.eq	4057a4 <__subtf3+0xb14>  // b.none
  405438:	aa0c03e1 	mov	x1, x12
  40543c:	aa0d03ea 	mov	x10, x13
  405440:	aa0e03e9 	mov	x9, x14
  405444:	17fffe8f 	b	404e80 <__subtf3+0x1f0>
  405448:	f100011f 	cmp	x8, #0x0
  40544c:	528fffc6 	mov	w6, #0x7ffe                	// #32766
  405450:	92fc0001 	mov	x1, #0x1fffffffffffffff    	// #2305843009213693951
  405454:	d28fffc2 	mov	x2, #0x7ffe                	// #32766
  405458:	1a860126 	csel	w6, w9, w6, eq  // eq = none
  40545c:	9a9f1021 	csel	x1, x1, xzr, ne  // ne = any
  405460:	da9f03e5 	csetm	x5, ne  // ne = any
  405464:	9a820129 	csel	x9, x9, x2, eq  // eq = none
  405468:	17ffff1f 	b	4050e4 <__subtf3+0x454>
  40546c:	d503201f 	nop
  405470:	d28fffe0 	mov	x0, #0x7fff                	// #32767
  405474:	eb00013f 	cmp	x9, x0
  405478:	540001a0 	b.eq	4054ac <__subtf3+0x81c>  // b.none
  40547c:	eb0001df 	cmp	x14, x0
  405480:	aa0a0020 	orr	x0, x1, x10
  405484:	540014a0 	b.eq	405718 <__subtf3+0xa88>  // b.none
  405488:	aa0d0186 	orr	x6, x12, x13
  40548c:	b5000200 	cbnz	x0, 4054cc <__subtf3+0x83c>
  405490:	b40019e6 	cbz	x6, 4057cc <__subtf3+0xb3c>
  405494:	aa0c03e1 	mov	x1, x12
  405498:	aa0d03ea 	mov	x10, x13
  40549c:	aa0203e8 	mov	x8, x2
  4054a0:	52800000 	mov	w0, #0x0                   	// #0
  4054a4:	d28fffe9 	mov	x9, #0x7fff                	// #32767
  4054a8:	17fffed9 	b	40500c <__subtf3+0x37c>
  4054ac:	aa0a0020 	orr	x0, x1, x10
  4054b0:	eb0901df 	cmp	x14, x9
  4054b4:	b4001e80 	cbz	x0, 405884 <__subtf3+0xbf4>
  4054b8:	d372fc23 	lsr	x3, x1, #50
  4054bc:	aa0d0186 	orr	x6, x12, x13
  4054c0:	d2400063 	eor	x3, x3, #0x1
  4054c4:	12000063 	and	w3, w3, #0x1
  4054c8:	54001280 	b.eq	405718 <__subtf3+0xa88>  // b.none
  4054cc:	b4001366 	cbz	x6, 405738 <__subtf3+0xaa8>
  4054d0:	9240f080 	and	x0, x4, #0x1fffffffffffffff
  4054d4:	d343fc24 	lsr	x4, x1, #3
  4054d8:	aa01f400 	orr	x0, x0, x1, lsl #61
  4054dc:	b67800e4 	tbz	x4, #47, 4054f8 <__subtf3+0x868>
  4054e0:	d343fd81 	lsr	x1, x12, #3
  4054e4:	b77800a1 	tbnz	x1, #47, 4054f8 <__subtf3+0x868>
  4054e8:	9240f0a0 	and	x0, x5, #0x1fffffffffffffff
  4054ec:	aa0103e4 	mov	x4, x1
  4054f0:	aa0203e8 	mov	x8, x2
  4054f4:	aa0cf400 	orr	x0, x0, x12, lsl #61
  4054f8:	93c0f481 	extr	x1, x4, x0, #61
  4054fc:	d37df00a 	lsl	x10, x0, #3
  405500:	d28fffe9 	mov	x9, #0x7fff                	// #32767
  405504:	2a0303e0 	mov	w0, w3
  405508:	17fffec1 	b	40500c <__subtf3+0x37c>
  40550c:	d503201f 	nop
  405510:	926a04e2 	and	x2, x7, #0xc00000
  405514:	aa0203e3 	mov	x3, x2
  405518:	b40001a2 	cbz	x2, 40554c <__subtf3+0x8bc>
  40551c:	f150005f 	cmp	x2, #0x400, lsl #12
  405520:	54001b80 	b.eq	405890 <__subtf3+0xc00>  // b.none
  405524:	f160007f 	cmp	x3, #0x800, lsl #12
  405528:	1a9f17e0 	cset	w0, eq  // eq = none
  40552c:	6a00017f 	tst	w11, w0
  405530:	54001e61 	b.ne	4058fc <__subtf3+0xc6c>  // b.any
  405534:	92800001 	mov	x1, #0xffffffffffffffff    	// #-1
  405538:	52800280 	mov	w0, #0x14                  	// #20
  40553c:	aa0103ea 	mov	x10, x1
  405540:	d28fffc9 	mov	x9, #0x7ffe                	// #32766
  405544:	17fffeb6 	b	40501c <__subtf3+0x38c>
  405548:	5280000b 	mov	w11, #0x0                   	// #0
  40554c:	d2800001 	mov	x1, #0x0                   	// #0
  405550:	d280000a 	mov	x10, #0x0                   	// #0
  405554:	52800280 	mov	w0, #0x14                  	// #20
  405558:	17fffe73 	b	404f24 <__subtf3+0x294>
  40555c:	d503201f 	nop
  405560:	2a2303e3 	mvn	w3, w3
  405564:	350000e3 	cbnz	w3, 405580 <__subtf3+0x8f0>
  405568:	cb0a01aa 	sub	x10, x13, x10
  40556c:	aa0e03e9 	mov	x9, x14
  405570:	eb0a01bf 	cmp	x13, x10
  405574:	aa0203e8 	mov	x8, x2
  405578:	da010181 	sbc	x1, x12, x1
  40557c:	17fffdee 	b	404d34 <__subtf3+0xa4>
  405580:	d28fffe0 	mov	x0, #0x7fff                	// #32767
  405584:	eb0001df 	cmp	x14, x0
  405588:	54ffe5c1 	b.ne	405240 <__subtf3+0x5b0>  // b.any
  40558c:	aa0d018a 	orr	x10, x12, x13
  405590:	b5000b0a 	cbnz	x10, 4056f0 <__subtf3+0xa60>
  405594:	2a0203eb 	mov	w11, w2
  405598:	d2800001 	mov	x1, #0x0                   	// #0
  40559c:	52800000 	mov	w0, #0x0                   	// #0
  4055a0:	17fffe61 	b	404f24 <__subtf3+0x294>
  4055a4:	d503201f 	nop
  4055a8:	aa0a0020 	orr	x0, x1, x10
  4055ac:	d2800001 	mov	x1, #0x0                   	// #0
  4055b0:	f100001f 	cmp	x0, #0x0
  4055b4:	9a9f07e0 	cset	x0, ne  // ne = any
  4055b8:	17ffff30 	b	405278 <__subtf3+0x5e8>
  4055bc:	d503201f 	nop
  4055c0:	926a04e2 	and	x2, x7, #0xc00000
  4055c4:	aa0203e3 	mov	x3, x2
  4055c8:	b4fffc22 	cbz	x2, 40554c <__subtf3+0x8bc>
  4055cc:	f150005f 	cmp	x2, #0x400, lsl #12
  4055d0:	54fffaa1 	b.ne	405524 <__subtf3+0x894>  // b.any
  4055d4:	b4fffba8 	cbz	x8, 405548 <__subtf3+0x8b8>
  4055d8:	92800001 	mov	x1, #0xffffffffffffffff    	// #-1
  4055dc:	52800003 	mov	w3, #0x0                   	// #0
  4055e0:	aa0103ea 	mov	x10, x1
  4055e4:	d28fffc9 	mov	x9, #0x7ffe                	// #32766
  4055e8:	52800280 	mov	w0, #0x14                  	// #20
  4055ec:	17fffdfb 	b	404dd8 <__subtf3+0x148>
  4055f0:	d28fffe2 	mov	x2, #0x7fff                	// #32767
  4055f4:	eb0201df 	cmp	x14, x2
  4055f8:	54000d60 	b.eq	4057a4 <__subtf3+0xb14>  // b.none
  4055fc:	4b0003e0 	neg	w0, w0
  405600:	b24d0021 	orr	x1, x1, #0x8000000000000
  405604:	7101d01f 	cmp	w0, #0x74
  405608:	54000ecc 	b.gt	4057e0 <__subtf3+0xb50>
  40560c:	7100fc1f 	cmp	w0, #0x3f
  405610:	540015cc 	b.gt	4058c8 <__subtf3+0xc38>
  405614:	52800802 	mov	w2, #0x40                  	// #64
  405618:	9ac02543 	lsr	x3, x10, x0
  40561c:	4b000042 	sub	w2, w2, w0
  405620:	9ac02420 	lsr	x0, x1, x0
  405624:	9ac22145 	lsl	x5, x10, x2
  405628:	9ac22021 	lsl	x1, x1, x2
  40562c:	f10000bf 	cmp	x5, #0x0
  405630:	aa03002a 	orr	x10, x1, x3
  405634:	9a9f07e5 	cset	x5, ne  // ne = any
  405638:	aa0a00a5 	orr	x5, x5, x10
  40563c:	8b0d00aa 	add	x10, x5, x13
  405640:	8b0c0001 	add	x1, x0, x12
  405644:	eb0a01bf 	cmp	x13, x10
  405648:	aa0e03e9 	mov	x9, x14
  40564c:	9a819421 	cinc	x1, x1, hi  // hi = pmore
  405650:	17ffff21 	b	4052d4 <__subtf3+0x644>
  405654:	aa0d0180 	orr	x0, x12, x13
  405658:	b4000480 	cbz	x0, 4056e8 <__subtf3+0xa58>
  40565c:	cb0d0140 	sub	x0, x10, x13
  405660:	eb00015f 	cmp	x10, x0
  405664:	da0c0024 	sbc	x4, x1, x12
  405668:	b6981224 	tbz	x4, #51, 4058ac <__subtf3+0xc1c>
  40566c:	cb0a01aa 	sub	x10, x13, x10
  405670:	aa0203e8 	mov	x8, x2
  405674:	eb0a01bf 	cmp	x13, x10
  405678:	92400942 	and	x2, x10, #0x7
  40567c:	da010181 	sbc	x1, x12, x1
  405680:	aa010140 	orr	x0, x10, x1
  405684:	f100001f 	cmp	x0, #0x0
  405688:	1a9f07e3 	cset	w3, ne  // ne = any
  40568c:	17fffdcf 	b	404dc8 <__subtf3+0x138>
  405690:	d28fffe3 	mov	x3, #0x7fff                	// #32767
  405694:	eb03013f 	cmp	x9, x3
  405698:	54000c40 	b.eq	405820 <__subtf3+0xb90>  // b.none
  40569c:	eb0301df 	cmp	x14, x3
  4056a0:	aa0a0023 	orr	x3, x1, x10
  4056a4:	540000c0 	b.eq	4056bc <__subtf3+0xa2c>  // b.none
  4056a8:	b5000cc3 	cbnz	x3, 405840 <__subtf3+0xbb0>
  4056ac:	aa0c03e1 	mov	x1, x12
  4056b0:	aa0d03ea 	mov	x10, x13
  4056b4:	d28fffe9 	mov	x9, #0x7fff                	// #32767
  4056b8:	17fffe55 	b	40500c <__subtf3+0x37c>
  4056bc:	52800000 	mov	w0, #0x0                   	// #0
  4056c0:	aa0d0186 	orr	x6, x12, x13
  4056c4:	b4ffff26 	cbz	x6, 4056a8 <__subtf3+0xa18>
  4056c8:	f24e019f 	tst	x12, #0x4000000000000
  4056cc:	1a9f1400 	csinc	w0, w0, wzr, ne  // ne = any
  4056d0:	b5000be3 	cbnz	x3, 40584c <__subtf3+0xbbc>
  4056d4:	aa0c03e1 	mov	x1, x12
  4056d8:	aa0d03ea 	mov	x10, x13
  4056dc:	52800003 	mov	w3, #0x0                   	// #0
  4056e0:	d28fffe9 	mov	x9, #0x7fff                	// #32767
  4056e4:	17fffdef 	b	404ea0 <__subtf3+0x210>
  4056e8:	52800023 	mov	w3, #0x1                   	// #1
  4056ec:	17fffdeb 	b	404e98 <__subtf3+0x208>
  4056f0:	d372fd80 	lsr	x0, x12, #50
  4056f4:	aa0c03e1 	mov	x1, x12
  4056f8:	d2400000 	eor	x0, x0, #0x1
  4056fc:	aa0d03ea 	mov	x10, x13
  405700:	12000000 	and	w0, w0, #0x1
  405704:	aa0e03e9 	mov	x9, x14
  405708:	aa0203e8 	mov	x8, x2
  40570c:	17fffe40 	b	40500c <__subtf3+0x37c>
  405710:	d280000c 	mov	x12, #0x0                   	// #0
  405714:	17ffff3c 	b	405404 <__subtf3+0x774>
  405718:	aa0d0186 	orr	x6, x12, x13
  40571c:	b4000566 	cbz	x6, 4057c8 <__subtf3+0xb38>
  405720:	f24e019f 	tst	x12, #0x4000000000000
  405724:	1a9f1463 	csinc	w3, w3, wzr, ne  // ne = any
  405728:	b5ffed40 	cbnz	x0, 4054d0 <__subtf3+0x840>
  40572c:	aa0c03e1 	mov	x1, x12
  405730:	aa0d03ea 	mov	x10, x13
  405734:	aa0203e8 	mov	x8, x2
  405738:	2a0303e0 	mov	w0, w3
  40573c:	d28fffe9 	mov	x9, #0x7fff                	// #32767
  405740:	17fffe33 	b	40500c <__subtf3+0x37c>
  405744:	51010060 	sub	w0, w3, #0x40
  405748:	7101007f 	cmp	w3, #0x40
  40574c:	9ac02420 	lsr	x0, x1, x0
  405750:	54000e00 	b.eq	405910 <__subtf3+0xc80>  // b.none
  405754:	52801004 	mov	w4, #0x80                  	// #128
  405758:	4b030083 	sub	w3, w4, w3
  40575c:	9ac32021 	lsl	x1, x1, x3
  405760:	aa0a0025 	orr	x5, x1, x10
  405764:	d2800001 	mov	x1, #0x0                   	// #0
  405768:	f10000bf 	cmp	x5, #0x0
  40576c:	9a9f07ea 	cset	x10, ne  // ne = any
  405770:	aa0a0000 	orr	x0, x0, x10
  405774:	17fffec1 	b	405278 <__subtf3+0x5e8>
  405778:	2a2003e0 	mvn	w0, w0
  40577c:	350000e0 	cbnz	w0, 405798 <__subtf3+0xb08>
  405780:	8b0d014a 	add	x10, x10, x13
  405784:	8b0c0021 	add	x1, x1, x12
  405788:	eb0a01bf 	cmp	x13, x10
  40578c:	aa0e03e9 	mov	x9, x14
  405790:	9a819421 	cinc	x1, x1, hi  // hi = pmore
  405794:	17fffed0 	b	4052d4 <__subtf3+0x644>
  405798:	d28fffe2 	mov	x2, #0x7fff                	// #32767
  40579c:	eb0201df 	cmp	x14, x2
  4057a0:	54fff321 	b.ne	405604 <__subtf3+0x974>  // b.any
  4057a4:	aa0d018a 	orr	x10, x12, x13
  4057a8:	b4ffef8a 	cbz	x10, 405598 <__subtf3+0x908>
  4057ac:	d372fd80 	lsr	x0, x12, #50
  4057b0:	aa0c03e1 	mov	x1, x12
  4057b4:	d2400000 	eor	x0, x0, #0x1
  4057b8:	aa0d03ea 	mov	x10, x13
  4057bc:	12000000 	and	w0, w0, #0x1
  4057c0:	aa0e03e9 	mov	x9, x14
  4057c4:	17fffe12 	b	40500c <__subtf3+0x37c>
  4057c8:	b5fffb80 	cbnz	x0, 405738 <__subtf3+0xaa8>
  4057cc:	5280000b 	mov	w11, #0x0                   	// #0
  4057d0:	92ffff01 	mov	x1, #0x7ffffffffffff       	// #2251799813685247
  4057d4:	928000ea 	mov	x10, #0xfffffffffffffff8    	// #-8
  4057d8:	52800020 	mov	w0, #0x1                   	// #1
  4057dc:	17fffdd2 	b	404f24 <__subtf3+0x294>
  4057e0:	aa0a0021 	orr	x1, x1, x10
  4057e4:	d2800000 	mov	x0, #0x0                   	// #0
  4057e8:	f100003f 	cmp	x1, #0x0
  4057ec:	9a9f07e5 	cset	x5, ne  // ne = any
  4057f0:	17ffff93 	b	40563c <__subtf3+0x9ac>
  4057f4:	aa0d0182 	orr	x2, x12, x13
  4057f8:	b4fff782 	cbz	x2, 4056e8 <__subtf3+0xa58>
  4057fc:	8b0d014d 	add	x13, x10, x13
  405800:	8b0c0021 	add	x1, x1, x12
  405804:	eb0d015f 	cmp	x10, x13
  405808:	9a819421 	cinc	x1, x1, hi  // hi = pmore
  40580c:	b69808e1 	tbz	x1, #51, 405928 <__subtf3+0xc98>
  405810:	924cf821 	and	x1, x1, #0xfff7ffffffffffff
  405814:	aa0d03ea 	mov	x10, x13
  405818:	d2800029 	mov	x9, #0x1                   	// #1
  40581c:	17fffdfc 	b	40500c <__subtf3+0x37c>
  405820:	aa0a0023 	orr	x3, x1, x10
  405824:	eb0901df 	cmp	x14, x9
  405828:	b4000783 	cbz	x3, 405918 <__subtf3+0xc88>
  40582c:	d372fc20 	lsr	x0, x1, #50
  405830:	d2400000 	eor	x0, x0, #0x1
  405834:	12000006 	and	w6, w0, #0x1
  405838:	2a0603e0 	mov	w0, w6
  40583c:	54fff420 	b.eq	4056c0 <__subtf3+0xa30>  // b.none
  405840:	aa0d018d 	orr	x13, x12, x13
  405844:	d28fffe9 	mov	x9, #0x7fff                	// #32767
  405848:	b4ffbe2d 	cbz	x13, 40500c <__subtf3+0x37c>
  40584c:	9240f08a 	and	x10, x4, #0x1fffffffffffffff
  405850:	d343fc23 	lsr	x3, x1, #3
  405854:	aa01f54a 	orr	x10, x10, x1, lsl #61
  405858:	b67800e3 	tbz	x3, #47, 405874 <__subtf3+0xbe4>
  40585c:	d343fd81 	lsr	x1, x12, #3
  405860:	b77800a1 	tbnz	x1, #47, 405874 <__subtf3+0xbe4>
  405864:	9240f0aa 	and	x10, x5, #0x1fffffffffffffff
  405868:	aa0103e3 	mov	x3, x1
  40586c:	aa0203e8 	mov	x8, x2
  405870:	aa0cf54a 	orr	x10, x10, x12, lsl #61
  405874:	93caf461 	extr	x1, x3, x10, #61
  405878:	d28fffe9 	mov	x9, #0x7fff                	// #32767
  40587c:	d37df14a 	lsl	x10, x10, #3
  405880:	17fffde3 	b	40500c <__subtf3+0x37c>
  405884:	54fff4a0 	b.eq	405718 <__subtf3+0xa88>  // b.none
  405888:	aa0d0186 	orr	x6, x12, x13
  40588c:	17ffff01 	b	405490 <__subtf3+0x800>
  405890:	b4ffe5c8 	cbz	x8, 405548 <__subtf3+0x8b8>
  405894:	92800001 	mov	x1, #0xffffffffffffffff    	// #-1
  405898:	d28fffc9 	mov	x9, #0x7ffe                	// #32766
  40589c:	aa0103ea 	mov	x10, x1
  4058a0:	52800280 	mov	w0, #0x14                  	// #20
  4058a4:	52800003 	mov	w3, #0x0                   	// #0
  4058a8:	17fffd4c 	b	404dd8 <__subtf3+0x148>
  4058ac:	aa040001 	orr	x1, x0, x4
  4058b0:	b4ffcf41 	cbz	x1, 405298 <__subtf3+0x608>
  4058b4:	92400802 	and	x2, x0, #0x7
  4058b8:	aa0403e1 	mov	x1, x4
  4058bc:	aa0003ea 	mov	x10, x0
  4058c0:	52800023 	mov	w3, #0x1                   	// #1
  4058c4:	17fffd41 	b	404dc8 <__subtf3+0x138>
  4058c8:	51010005 	sub	w5, w0, #0x40
  4058cc:	7101001f 	cmp	w0, #0x40
  4058d0:	9ac52425 	lsr	x5, x1, x5
  4058d4:	54000360 	b.eq	405940 <__subtf3+0xcb0>  // b.none
  4058d8:	52801002 	mov	w2, #0x80                  	// #128
  4058dc:	4b000040 	sub	w0, w2, w0
  4058e0:	9ac02021 	lsl	x1, x1, x0
  4058e4:	aa0a002a 	orr	x10, x1, x10
  4058e8:	d2800000 	mov	x0, #0x0                   	// #0
  4058ec:	f100015f 	cmp	x10, #0x0
  4058f0:	9a9f07ea 	cset	x10, ne  // ne = any
  4058f4:	aa0a00a5 	orr	x5, x5, x10
  4058f8:	17ffff51 	b	40563c <__subtf3+0x9ac>
  4058fc:	5280002b 	mov	w11, #0x1                   	// #1
  405900:	d2800001 	mov	x1, #0x0                   	// #0
  405904:	d280000a 	mov	x10, #0x0                   	// #0
  405908:	52800280 	mov	w0, #0x14                  	// #20
  40590c:	17fffd86 	b	404f24 <__subtf3+0x294>
  405910:	d2800001 	mov	x1, #0x0                   	// #0
  405914:	17ffff93 	b	405760 <__subtf3+0xad0>
  405918:	54ffed20 	b.eq	4056bc <__subtf3+0xa2c>  // b.none
  40591c:	aa0c03e1 	mov	x1, x12
  405920:	aa0d03ea 	mov	x10, x13
  405924:	17fffdba 	b	40500c <__subtf3+0x37c>
  405928:	aa0101a0 	orr	x0, x13, x1
  40592c:	924009a2 	and	x2, x13, #0x7
  405930:	f100001f 	cmp	x0, #0x0
  405934:	aa0d03ea 	mov	x10, x13
  405938:	1a9f07e3 	cset	w3, ne  // ne = any
  40593c:	17fffd23 	b	404dc8 <__subtf3+0x138>
  405940:	d2800001 	mov	x1, #0x0                   	// #0
  405944:	17ffffe8 	b	4058e4 <__subtf3+0xc54>

0000000000405948 <__fixtfsi>:
  405948:	9e660002 	fmov	x2, d0
  40594c:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  405950:	9eae0003 	fmov	x3, v0.d[1]
  405954:	910003fd 	mov	x29, sp
  405958:	f9000bf3 	str	x19, [sp, #16]
  40595c:	aa0203e1 	mov	x1, x2
  405960:	aa0303e0 	mov	x0, x3
  405964:	d53b4402 	mrs	x2, fpcr
  405968:	d370f873 	ubfx	x19, x3, #48, #15
  40596c:	d287ffc5 	mov	x5, #0x3ffe                	// #16382
  405970:	d340bc64 	ubfx	x4, x3, #0, #48
  405974:	aa0103e2 	mov	x2, x1
  405978:	53003e63 	uxth	w3, w19
  40597c:	eb05007f 	cmp	x3, x5
  405980:	5400018c 	b.gt	4059b0 <__fixtfsi+0x68>
  405984:	b5000563 	cbnz	x3, 405a30 <__fixtfsi+0xe8>
  405988:	aa040021 	orr	x1, x1, x4
  40598c:	52800013 	mov	w19, #0x0                   	// #0
  405990:	b4000061 	cbz	x1, 40599c <__fixtfsi+0x54>
  405994:	52800200 	mov	w0, #0x10                  	// #16
  405998:	940000ea 	bl	405d40 <__sfp_handle_exceptions>
  40599c:	2a1303e0 	mov	w0, w19
  4059a0:	f9400bf3 	ldr	x19, [sp, #16]
  4059a4:	a8c27bfd 	ldp	x29, x30, [sp], #32
  4059a8:	d65f03c0 	ret
  4059ac:	d503201f 	nop
  4059b0:	d28803a5 	mov	x5, #0x401d                	// #16413
  4059b4:	d37ffc00 	lsr	x0, x0, #63
  4059b8:	eb05007f 	cmp	x3, x5
  4059bc:	540001ed 	b.le	4059f8 <__fixtfsi+0xb0>
  4059c0:	d28803c5 	mov	x5, #0x401e                	// #16414
  4059c4:	12b00001 	mov	w1, #0x7fffffff            	// #2147483647
  4059c8:	eb05007f 	cmp	x3, x5
  4059cc:	0b010013 	add	w19, w0, w1
  4059d0:	1a9f17e1 	cset	w1, eq  // eq = none
  4059d4:	6a01001f 	tst	w0, w1
  4059d8:	54000340 	b.eq	405a40 <__fixtfsi+0xf8>  // b.none
  4059dc:	d351fc80 	lsr	x0, x4, #17
  4059e0:	b5000300 	cbnz	x0, 405a40 <__fixtfsi+0xf8>
  4059e4:	aa04bc41 	orr	x1, x2, x4, lsl #47
  4059e8:	b4fffda1 	cbz	x1, 40599c <__fixtfsi+0x54>
  4059ec:	52800200 	mov	w0, #0x10                  	// #16
  4059f0:	17ffffea 	b	405998 <__fixtfsi+0x50>
  4059f4:	d503201f 	nop
  4059f8:	53003e61 	uxth	w1, w19
  4059fc:	1287fdc3 	mov	w3, #0xffffc011            	// #-16367
  405a00:	b2500084 	orr	x4, x4, #0x1000000000000
  405a04:	0b030023 	add	w3, w1, w3
  405a08:	528805f3 	mov	w19, #0x402f                	// #16431
  405a0c:	7100001f 	cmp	w0, #0x0
  405a10:	4b010273 	sub	w19, w19, w1
  405a14:	9ac32081 	lsl	x1, x4, x3
  405a18:	aa020021 	orr	x1, x1, x2
  405a1c:	9ad32493 	lsr	x19, x4, x19
  405a20:	5a930673 	cneg	w19, w19, ne  // ne = any
  405a24:	b4fffbc1 	cbz	x1, 40599c <__fixtfsi+0x54>
  405a28:	52800200 	mov	w0, #0x10                  	// #16
  405a2c:	17ffffdb 	b	405998 <__fixtfsi+0x50>
  405a30:	52800013 	mov	w19, #0x0                   	// #0
  405a34:	52800200 	mov	w0, #0x10                  	// #16
  405a38:	17ffffd8 	b	405998 <__fixtfsi+0x50>
  405a3c:	d503201f 	nop
  405a40:	52800020 	mov	w0, #0x1                   	// #1
  405a44:	17ffffd5 	b	405998 <__fixtfsi+0x50>

0000000000405a48 <__fixunstfsi>:
  405a48:	9e660002 	fmov	x2, d0
  405a4c:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  405a50:	9eae0003 	fmov	x3, v0.d[1]
  405a54:	910003fd 	mov	x29, sp
  405a58:	f9000bf3 	str	x19, [sp, #16]
  405a5c:	aa0203e1 	mov	x1, x2
  405a60:	aa0303e0 	mov	x0, x3
  405a64:	d53b4402 	mrs	x2, fpcr
  405a68:	d370f873 	ubfx	x19, x3, #48, #15
  405a6c:	d287ffc4 	mov	x4, #0x3ffe                	// #16382
  405a70:	d340bc65 	ubfx	x5, x3, #0, #48
  405a74:	aa0103e2 	mov	x2, x1
  405a78:	53003e63 	uxth	w3, w19
  405a7c:	eb04007f 	cmp	x3, x4
  405a80:	5400018c 	b.gt	405ab0 <__fixunstfsi+0x68>
  405a84:	b50004a3 	cbnz	x3, 405b18 <__fixunstfsi+0xd0>
  405a88:	aa050021 	orr	x1, x1, x5
  405a8c:	52800013 	mov	w19, #0x0                   	// #0
  405a90:	b4000061 	cbz	x1, 405a9c <__fixunstfsi+0x54>
  405a94:	52800200 	mov	w0, #0x10                  	// #16
  405a98:	940000aa 	bl	405d40 <__sfp_handle_exceptions>
  405a9c:	2a1303e0 	mov	w0, w19
  405aa0:	f9400bf3 	ldr	x19, [sp, #16]
  405aa4:	a8c27bfd 	ldp	x29, x30, [sp], #32
  405aa8:	d65f03c0 	ret
  405aac:	d503201f 	nop
  405ab0:	d37ffc00 	lsr	x0, x0, #63
  405ab4:	36000120 	tbz	w0, #0, 405ad8 <__fixunstfsi+0x90>
  405ab8:	d28803a1 	mov	x1, #0x401d                	// #16413
  405abc:	eb01007f 	cmp	x3, x1
  405ac0:	5400034d 	b.le	405b28 <__fixunstfsi+0xe0>
  405ac4:	51000413 	sub	w19, w0, #0x1
  405ac8:	52800020 	mov	w0, #0x1                   	// #1
  405acc:	9400009d 	bl	405d40 <__sfp_handle_exceptions>
  405ad0:	17fffff3 	b	405a9c <__fixunstfsi+0x54>
  405ad4:	d503201f 	nop
  405ad8:	d28803c4 	mov	x4, #0x401e                	// #16414
  405adc:	eb04007f 	cmp	x3, x4
  405ae0:	54ffff2c 	b.gt	405ac4 <__fixunstfsi+0x7c>
  405ae4:	53003e61 	uxth	w1, w19
  405ae8:	1287fdc0 	mov	w0, #0xffffc011            	// #-16367
  405aec:	b25000a5 	orr	x5, x5, #0x1000000000000
  405af0:	0b000020 	add	w0, w1, w0
  405af4:	528805f3 	mov	w19, #0x402f                	// #16431
  405af8:	4b010273 	sub	w19, w19, w1
  405afc:	9ac020a1 	lsl	x1, x5, x0
  405b00:	aa020021 	orr	x1, x1, x2
  405b04:	9ad324b3 	lsr	x19, x5, x19
  405b08:	b4fffca1 	cbz	x1, 405a9c <__fixunstfsi+0x54>
  405b0c:	52800200 	mov	w0, #0x10                  	// #16
  405b10:	17ffffe2 	b	405a98 <__fixunstfsi+0x50>
  405b14:	d503201f 	nop
  405b18:	52800013 	mov	w19, #0x0                   	// #0
  405b1c:	52800200 	mov	w0, #0x10                  	// #16
  405b20:	17ffffde 	b	405a98 <__fixunstfsi+0x50>
  405b24:	d503201f 	nop
  405b28:	52800013 	mov	w19, #0x0                   	// #0
  405b2c:	52800020 	mov	w0, #0x1                   	// #1
  405b30:	17ffffda 	b	405a98 <__fixunstfsi+0x50>
  405b34:	00000000 	.inst	0x00000000 ; undefined

0000000000405b38 <__floatsitf>:
  405b38:	7100001f 	cmp	w0, #0x0
  405b3c:	54000260 	b.eq	405b88 <__floatsitf+0x50>  // b.none
  405b40:	5a80a404 	cneg	w4, w0, lt  // lt = tstop
  405b44:	528807c1 	mov	w1, #0x403e                	// #16446
  405b48:	dac01083 	clz	x3, x4
  405b4c:	528805e2 	mov	w2, #0x402f                	// #16431
  405b50:	4b030021 	sub	w1, w1, w3
  405b54:	d2800003 	mov	x3, #0x0                   	// #0
  405b58:	4b010042 	sub	w2, w2, w1
  405b5c:	12003821 	and	w1, w1, #0x7fff
  405b60:	531f7c00 	lsr	w0, w0, #31
  405b64:	9ac22084 	lsl	x4, x4, x2
  405b68:	d2800002 	mov	x2, #0x0                   	// #0
  405b6c:	9240bc84 	and	x4, x4, #0xffffffffffff
  405b70:	9e670040 	fmov	d0, x2
  405b74:	b340bc83 	bfxil	x3, x4, #0, #48
  405b78:	b3503823 	bfi	x3, x1, #48, #15
  405b7c:	b3410003 	bfi	x3, x0, #63, #1
  405b80:	9eaf0060 	fmov	v0.d[1], x3
  405b84:	d65f03c0 	ret
  405b88:	d2800002 	mov	x2, #0x0                   	// #0
  405b8c:	d2800004 	mov	x4, #0x0                   	// #0
  405b90:	d2800003 	mov	x3, #0x0                   	// #0
  405b94:	52800001 	mov	w1, #0x0                   	// #0
  405b98:	9e670040 	fmov	d0, x2
  405b9c:	b340bc83 	bfxil	x3, x4, #0, #48
  405ba0:	52800000 	mov	w0, #0x0                   	// #0
  405ba4:	b3503823 	bfi	x3, x1, #48, #15
  405ba8:	b3410003 	bfi	x3, x0, #63, #1
  405bac:	9eaf0060 	fmov	v0.d[1], x3
  405bb0:	d65f03c0 	ret
  405bb4:	00000000 	.inst	0x00000000 ; undefined

0000000000405bb8 <__floatunsitf>:
  405bb8:	34000240 	cbz	w0, 405c00 <__floatunsitf+0x48>
  405bbc:	2a0003e0 	mov	w0, w0
  405bc0:	528807c1 	mov	w1, #0x403e                	// #16446
  405bc4:	dac01003 	clz	x3, x0
  405bc8:	528805e2 	mov	w2, #0x402f                	// #16431
  405bcc:	4b030021 	sub	w1, w1, w3
  405bd0:	d2800003 	mov	x3, #0x0                   	// #0
  405bd4:	4b010042 	sub	w2, w2, w1
  405bd8:	12003821 	and	w1, w1, #0x7fff
  405bdc:	9ac22000 	lsl	x0, x0, x2
  405be0:	d2800002 	mov	x2, #0x0                   	// #0
  405be4:	9240bc00 	and	x0, x0, #0xffffffffffff
  405be8:	9e670040 	fmov	d0, x2
  405bec:	b340bc03 	bfxil	x3, x0, #0, #48
  405bf0:	b3503823 	bfi	x3, x1, #48, #15
  405bf4:	9240f863 	and	x3, x3, #0x7fffffffffffffff
  405bf8:	9eaf0060 	fmov	v0.d[1], x3
  405bfc:	d65f03c0 	ret
  405c00:	d2800002 	mov	x2, #0x0                   	// #0
  405c04:	d2800000 	mov	x0, #0x0                   	// #0
  405c08:	d2800003 	mov	x3, #0x0                   	// #0
  405c0c:	52800001 	mov	w1, #0x0                   	// #0
  405c10:	9e670040 	fmov	d0, x2
  405c14:	b340bc03 	bfxil	x3, x0, #0, #48
  405c18:	b3503823 	bfi	x3, x1, #48, #15
  405c1c:	9240f863 	and	x3, x3, #0x7fffffffffffffff
  405c20:	9eaf0060 	fmov	v0.d[1], x3
  405c24:	d65f03c0 	ret

0000000000405c28 <__extenddftf2>:
  405c28:	9e660000 	fmov	x0, d0
  405c2c:	d53b4401 	mrs	x1, fpcr
  405c30:	d374f801 	ubfx	x1, x0, #52, #11
  405c34:	d340cc05 	ubfx	x5, x0, #0, #52
  405c38:	91000423 	add	x3, x1, #0x1
  405c3c:	d37ffc02 	lsr	x2, x0, #63
  405c40:	92402863 	and	x3, x3, #0x7ff
  405c44:	f100047f 	cmp	x3, #0x1
  405c48:	540001cd 	b.le	405c80 <__extenddftf2+0x58>
  405c4c:	d344fca4 	lsr	x4, x5, #4
  405c50:	52878000 	mov	w0, #0x3c00                	// #15360
  405c54:	0b000023 	add	w3, w1, w0
  405c58:	9240bc84 	and	x4, x4, #0xffffffffffff
  405c5c:	d3440ca5 	lsl	x5, x5, #60
  405c60:	9e6700a0 	fmov	d0, x5
  405c64:	d2800001 	mov	x1, #0x0                   	// #0
  405c68:	b340bc81 	bfxil	x1, x4, #0, #48
  405c6c:	b3503861 	bfi	x1, x3, #48, #15
  405c70:	b3410041 	bfi	x1, x2, #63, #1
  405c74:	9eaf0020 	fmov	v0.d[1], x1
  405c78:	d65f03c0 	ret
  405c7c:	d503201f 	nop
  405c80:	b4000281 	cbz	x1, 405cd0 <__extenddftf2+0xa8>
  405c84:	b40003e5 	cbz	x5, 405d00 <__extenddftf2+0xd8>
  405c88:	d3440ca0 	lsl	x0, x5, #60
  405c8c:	d344fca3 	lsr	x3, x5, #4
  405c90:	d2800001 	mov	x1, #0x0                   	// #0
  405c94:	b2510063 	orr	x3, x3, #0x800000000000
  405c98:	9e670000 	fmov	d0, x0
  405c9c:	b340bc61 	bfxil	x1, x3, #0, #48
  405ca0:	b2503821 	orr	x1, x1, #0x7fff000000000000
  405ca4:	b3410041 	bfi	x1, x2, #63, #1
  405ca8:	9eaf0020 	fmov	v0.d[1], x1
  405cac:	b7980465 	tbnz	x5, #51, 405d38 <__extenddftf2+0x110>
  405cb0:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  405cb4:	52800020 	mov	w0, #0x1                   	// #1
  405cb8:	910003fd 	mov	x29, sp
  405cbc:	3d8007a0 	str	q0, [x29, #16]
  405cc0:	94000020 	bl	405d40 <__sfp_handle_exceptions>
  405cc4:	3dc007a0 	ldr	q0, [x29, #16]
  405cc8:	a8c27bfd 	ldp	x29, x30, [sp], #32
  405ccc:	d65f03c0 	ret
  405cd0:	b4000205 	cbz	x5, 405d10 <__extenddftf2+0xe8>
  405cd4:	dac010a3 	clz	x3, x5
  405cd8:	7100387f 	cmp	w3, #0xe
  405cdc:	5400022d 	b.le	405d20 <__extenddftf2+0xf8>
  405ce0:	51003c64 	sub	w4, w3, #0xf
  405ce4:	9ac420a4 	lsl	x4, x5, x4
  405ce8:	d2800005 	mov	x5, #0x0                   	// #0
  405cec:	52878181 	mov	w1, #0x3c0c                	// #15372
  405cf0:	9240bc84 	and	x4, x4, #0xffffffffffff
  405cf4:	4b030021 	sub	w1, w1, w3
  405cf8:	12003823 	and	w3, w1, #0x7fff
  405cfc:	17ffffd9 	b	405c60 <__extenddftf2+0x38>
  405d00:	528fffe3 	mov	w3, #0x7fff                	// #32767
  405d04:	d2800004 	mov	x4, #0x0                   	// #0
  405d08:	17ffffd6 	b	405c60 <__extenddftf2+0x38>
  405d0c:	d503201f 	nop
  405d10:	52800003 	mov	w3, #0x0                   	// #0
  405d14:	d2800004 	mov	x4, #0x0                   	// #0
  405d18:	17ffffd2 	b	405c60 <__extenddftf2+0x38>
  405d1c:	d503201f 	nop
  405d20:	528001e4 	mov	w4, #0xf                   	// #15
  405d24:	1100c460 	add	w0, w3, #0x31
  405d28:	4b030084 	sub	w4, w4, w3
  405d2c:	9ac424a4 	lsr	x4, x5, x4
  405d30:	9ac020a5 	lsl	x5, x5, x0
  405d34:	17ffffee 	b	405cec <__extenddftf2+0xc4>
  405d38:	d65f03c0 	ret
  405d3c:	00000000 	.inst	0x00000000 ; undefined

0000000000405d40 <__sfp_handle_exceptions>:
  405d40:	36000080 	tbz	w0, #0, 405d50 <__sfp_handle_exceptions+0x10>
  405d44:	1e2703e1 	fmov	s1, wzr
  405d48:	1e211820 	fdiv	s0, s1, s1
  405d4c:	d53b4421 	mrs	x1, fpsr
  405d50:	360800a0 	tbz	w0, #1, 405d64 <__sfp_handle_exceptions+0x24>
  405d54:	1e2e1001 	fmov	s1, #1.000000000000000000e+00
  405d58:	1e2703e2 	fmov	s2, wzr
  405d5c:	1e221820 	fdiv	s0, s1, s2
  405d60:	d53b4421 	mrs	x1, fpsr
  405d64:	361000a0 	tbz	w0, #2, 405d78 <__sfp_handle_exceptions+0x38>
  405d68:	1c0001c1 	ldr	s1, 405da0 <__sfp_handle_exceptions+0x60>
  405d6c:	1c0001c2 	ldr	s2, 405da4 <__sfp_handle_exceptions+0x64>
  405d70:	1e222820 	fadd	s0, s1, s2
  405d74:	d53b4421 	mrs	x1, fpsr
  405d78:	36180080 	tbz	w0, #3, 405d88 <__sfp_handle_exceptions+0x48>
  405d7c:	1c000161 	ldr	s1, 405da8 <__sfp_handle_exceptions+0x68>
  405d80:	1e210820 	fmul	s0, s1, s1
  405d84:	d53b4421 	mrs	x1, fpsr
  405d88:	362000a0 	tbz	w0, #4, 405d9c <__sfp_handle_exceptions+0x5c>
  405d8c:	1c0000a1 	ldr	s1, 405da0 <__sfp_handle_exceptions+0x60>
  405d90:	1e2e1002 	fmov	s2, #1.000000000000000000e+00
  405d94:	1e223820 	fsub	s0, s1, s2
  405d98:	d53b4420 	mrs	x0, fpsr
  405d9c:	d65f03c0 	ret
  405da0:	7f7fffff 	.word	0x7f7fffff
  405da4:	749dc5ae 	.word	0x749dc5ae
  405da8:	00800000 	.word	0x00800000

Disassembly of section .fini:

0000000000405dac <_fini>:
  405dac:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  405db0:	910003fd 	mov	x29, sp
  405db4:	a8c17bfd 	ldp	x29, x30, [sp], #16
  405db8:	d65f03c0 	ret
