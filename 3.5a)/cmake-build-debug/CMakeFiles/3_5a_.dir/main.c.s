	.file	"main.c"
	.text
.Ltext0:
	.globl	Dec2RadixI
	.type	Dec2RadixI, @function
Dec2RadixI:
.LFB0:
	.file 1 "/home/linda/Desktop/EEE/Prac3/3.5a)/main.c"
	.loc 1 11 41
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$96, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movl	%edi, -100(%rbp)
	movl	%esi, -104(%rbp)
	.loc 1 11 41
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movq	%rsp, %rax
	movq	%rax, %r12
	.loc 1 12 10
	movabsq	$3978425819141910832, %rax
	movabsq	$5063528411713059128, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	.loc 1 15 15
	pxor	%xmm2, %xmm2
	cvtsi2sdl	-104(%rbp), %xmm2
	movq	%xmm2, %rax
	movq	%rax, %xmm0
	call	log@PLT
	movq	%xmm0, %rbx
	.loc 1 15 29
	pxor	%xmm3, %xmm3
	cvtsi2sdl	-100(%rbp), %xmm3
	movq	%xmm3, %rax
	movq	%rax, %xmm0
	call	log@PLT
	.loc 1 15 27
	movq	%rbx, %xmm1
	divsd	%xmm0, %xmm1
	.loc 1 15 39
	movsd	.LC0(%rip), %xmm0
	addsd	%xmm1, %xmm0
	.loc 1 15 9
	cvttsd2sil	%xmm0, %eax
	movl	%eax, -92(%rbp)
	.loc 1 16 9
	movl	$1, -96(%rbp)
	.loc 1 17 5
	movl	-92(%rbp), %eax
	.loc 1 17 10
	movslq	%eax, %rdx
	subq	$1, %rdx
	movq	%rdx, -80(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, -128(%rbp)
	movq	$0, -120(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %r14
	movl	$0, %r15d
	cltq
	movl	$16, %edx
	subq	$1, %rdx
	addq	%rdx, %rax
	movl	$16, %edi
	movl	$0, %edx
	divq	%rdi
	imulq	$16, %rax, %rax
	movq	%rax, %rcx
	andq	$-4096, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
.L2:
	cmpq	%rdx, %rsp
	je	.L3
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L2
.L3:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L4
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L4:
	movq	%rsp, %rax
	addq	$0, %rax
	movq	%rax, -72(%rbp)
	.loc 1 18 8
	movq	$0, -88(%rbp)
	.loc 1 19 10
	jmp	.L5
.L6:
	.loc 1 20 35
	movl	-104(%rbp), %eax
	cltd
	idivl	-100(%rbp)
	.loc 1 20 20
	movl	-92(%rbp), %eax
	subl	-96(%rbp), %eax
	movl	%eax, %esi
	.loc 1 20 27
	movslq	%edx, %rax
	movzbl	-64(%rbp,%rax), %ecx
	.loc 1 20 23
	movq	-72(%rbp), %rdx
	movslq	%esi, %rax
	movb	%cl, (%rdx,%rax)
	.loc 1 21 12
	movl	-92(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	.loc 1 22 12
	movl	-96(%rbp), %eax
	cltq
	negq	%rax
	addq	%rax, -88(%rbp)
	.loc 1 23 17
	movl	-104(%rbp), %eax
	cltd
	idivl	-100(%rbp)
	movl	%eax, -104(%rbp)
	.loc 1 24 10
	addl	$1, -96(%rbp)
.L5:
	.loc 1 19 10
	cmpl	$0, -104(%rbp)
	jg	.L6
	.loc 1 26 12
	movq	-88(%rbp), %rax
	movq	%r12, %rsp
	.loc 1 27 1
	movq	-40(%rbp), %rdi
	subq	%fs:40, %rdi
	je	.L8
	call	__stack_chk_fail@PLT
.L8:
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	Dec2RadixI, .-Dec2RadixI
	.section	.rodata
.LC1:
	.string	"*****************************"
.LC2:
	.string	"DECIMAL TO RADIX-i converter"
.LC3:
	.string	" %s\n"
.LC4:
	.string	"Name"
.LC5:
	.string	" Written by: %s\n"
.LC6:
	.string	"2021"
.LC7:
	.string	" Date: %s\n"
.LC9:
	.string	"Enter a decimal number: "
.LC10:
	.string	"%d"
	.align 8
.LC11:
	.string	"The number you have entered is %d\n"
	.align 8
.LC12:
	.string	"Enter a radix for the converter between 2 and 16: "
	.align 8
.LC13:
	.string	"The radix you have entered is %d\n"
	.align 8
.LC14:
	.string	"The log2 of the number is %.2lf\n"
	.align 8
.LC15:
	.string	"The integer result of the number divide by %d is %d\n"
.LC16:
	.string	"The remainder is %d\n"
.LC17:
	.string	"The radix-%d value is %s\n"
.LC18:
	.string	"EXIT"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.loc 1 29 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	.loc 1 29 1
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 1 30 5
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	.loc 1 31 5
	leaq	.LC2(%rip), %rsi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 32 5
	leaq	.LC4(%rip), %rsi
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 33 5
	leaq	.LC6(%rip), %rsi
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 34 5
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	.loc 1 35 9
	movl	$0, -56(%rbp)
	.loc 1 36 9
	movl	$0, -52(%rbp)
	.loc 1 37 12
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)
	.loc 1 38 9
	movl	$0, -48(%rbp)
	.loc 1 39 9
	movl	$0, -44(%rbp)
	.loc 1 41 5
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 42 5
	leaq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	.loc 1 43 5
	movl	-56(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC11(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 45 10
	jmp	.L10
.L11:
.LBB2:
	.loc 1 46 9
	leaq	.LC12(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 47 9
	leaq	-52(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	.loc 1 48 9
	movl	-52(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC13(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 50 15
	movl	-56(%rbp), %eax
	pxor	%xmm2, %xmm2
	cvtsi2sdl	%eax, %xmm2
	movq	%xmm2, %rax
	movq	%rax, %xmm0
	call	log@PLT
	movq	%xmm0, %rbx
	.loc 1 50 33
	movl	-52(%rbp), %eax
	pxor	%xmm3, %xmm3
	cvtsi2sdl	%eax, %xmm3
	movq	%xmm3, %rax
	movq	%rax, %xmm0
	call	log@PLT
	movapd	%xmm0, %xmm1
	.loc 1 50 13
	movq	%rbx, %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	.loc 1 51 9
	movq	-40(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC14(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	.loc 1 53 28
	movl	-56(%rbp), %eax
	movl	-52(%rbp), %ebx
	.loc 1 53 16
	cltd
	idivl	%ebx
	movl	%eax, -48(%rbp)
	.loc 1 54 9
	movl	-52(%rbp), %eax
	movl	-48(%rbp), %edx
	movl	%eax, %esi
	leaq	.LC15(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 56 30
	movl	-56(%rbp), %eax
	movl	-52(%rbp), %ecx
	.loc 1 56 18
	cltd
	idivl	%ecx
	movl	%edx, -44(%rbp)
	.loc 1 57 9
	movl	-44(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC16(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 59 23
	movl	-56(%rbp), %edx
	movl	-52(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	Dec2RadixI
	movq	%rax, -32(%rbp)
	.loc 1 61 9
	movl	-52(%rbp), %eax
	movq	-32(%rbp), %rdx
	movl	%eax, %esi
	leaq	.LC17(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 64 9
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 65 9
	leaq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
.L10:
.LBE2:
	.loc 1 45 22
	movl	-56(%rbp), %eax
	.loc 1 45 10
	testl	%eax, %eax
	jns	.L11
	.loc 1 67 5
	leaq	.LC18(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 69 12
	movl	$0, %eax
	.loc 1 70 1
	movq	-24(%rbp), %rcx
	subq	%fs:40, %rcx
	je	.L13
	call	__stack_chk_fail@PLT
.L13:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1cc
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF19
	.byte	0xc
	.long	.LASF20
	.long	.LASF21
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x4
	.byte	0x8
	.long	0x6b
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF9
	.uleb128 0x5
	.long	.LASF22
	.byte	0x1
	.byte	0x1c
	.byte	0x5
	.long	0x57
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x11d
	.uleb128 0x6
	.long	.LASF10
	.byte	0x1
	.byte	0x23
	.byte	0x9
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x6
	.long	.LASF11
	.byte	0x1
	.byte	0x24
	.byte	0x9
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x6
	.long	.LASF12
	.byte	0x1
	.byte	0x25
	.byte	0xc
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.long	.LASF13
	.byte	0x1
	.byte	0x26
	.byte	0x9
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x6
	.long	.LASF14
	.byte	0x1
	.byte	0x27
	.byte	0x9
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x7
	.long	.LASF18
	.byte	0x1
	.byte	0x28
	.byte	0xb
	.long	0x65
	.uleb128 0x8
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x6
	.long	.LASF15
	.byte	0x1
	.byte	0x3b
	.byte	0x10
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	.LASF23
	.byte	0x1
	.byte	0xb
	.byte	0x7
	.long	0x65
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x1af
	.uleb128 0xa
	.long	.LASF11
	.byte	0x1
	.byte	0xb
	.byte	0x16
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0xa
	.long	.LASF16
	.byte	0x1
	.byte	0xb
	.byte	0x21
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0xb
	.string	"res"
	.byte	0x1
	.byte	0xc
	.byte	0xa
	.long	0x1af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xb
	.string	"ptr"
	.byte	0x1
	.byte	0xe
	.byte	0xb
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x6
	.long	.LASF17
	.byte	0x1
	.byte	0xf
	.byte	0x9
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0xb
	.string	"i"
	.byte	0x1
	.byte	0x10
	.byte	0x9
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x6
	.long	.LASF18
	.byte	0x1
	.byte	0x11
	.byte	0xa
	.long	0x1bf
	.uleb128 0x4
	.byte	0x91
	.sleb128 -88
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.long	0x6b
	.long	0x1bf
	.uleb128 0xd
	.long	0x2d
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.long	0x6b
	.uleb128 0xf
	.long	0x2d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x6
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF12:
	.string	"logn"
.LASF1:
	.string	"unsigned int"
.LASF15:
	.string	"output"
.LASF21:
	.string	"/home/linda/Desktop/EEE/Prac3/3.5a)/cmake-build-debug"
.LASF16:
	.string	"decimal"
.LASF11:
	.string	"radix"
.LASF0:
	.string	"long unsigned int"
.LASF14:
	.string	"remainder"
.LASF19:
	.string	"GNU C99 10.2.0 -mtune=generic -march=x86-64 -g -std=gnu99 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF2:
	.string	"unsigned char"
.LASF22:
	.string	"main"
.LASF18:
	.string	"result"
.LASF6:
	.string	"long int"
.LASF10:
	.string	"decimal_num"
.LASF9:
	.string	"double"
.LASF20:
	.string	"/home/linda/Desktop/EEE/Prac3/3.5a)/main.c"
.LASF3:
	.string	"short unsigned int"
.LASF4:
	.string	"signed char"
.LASF17:
	.string	"size"
.LASF23:
	.string	"Dec2RadixI"
.LASF13:
	.string	"divison"
.LASF8:
	.string	"float"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"char"
	.ident	"GCC: (Ubuntu 10.2.0-13ubuntu1) 10.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
