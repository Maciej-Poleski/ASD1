	.file	"satori.cxx"
	.section	.text._ZNSt11_Deque_baseIjSaIjEE17_M_initialize_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIjSaIjEE17_M_initialize_mapEm,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt11_Deque_baseIjSaIjEE17_M_initialize_mapEm
	.type	_ZNSt11_Deque_baseIjSaIjEE17_M_initialize_mapEm, @function
_ZNSt11_Deque_baseIjSaIjEE17_M_initialize_mapEm:
.LFB2708:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2708
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movl	$8, %eax
	movq	%rsi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movq	%rdi, %r12
	movq	%rsi, %rdi
	shrq	$7, %rdi
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	leaq	1(%rdi), %rbx
	addq	$3, %rdi
	cmpq	$8, %rdi
	cmovb	%rax, %rdi
	movq	%rdi, 8(%r12)
	salq	$3, %rdi
.LEHB0:
	call	_Znwm
.LEHE0:
	movq	8(%r12), %rdx
	movq	%rax, (%r12)
	subq	%rbx, %rdx
	shrq	%rdx
	leaq	(%rax,%rdx,8), %r13
	leaq	0(%r13,%rbx,8), %rbp
	cmpq	%rbp, %r13
	jae	.L4
	movq	%r13, %rbx
	.p2align 4,,10
	.p2align 3
.L5:
	movl	$512, %edi
.LEHB1:
	call	_Znwm
.LEHE1:
	movq	%rax, (%rbx)
	addq	$8, %rbx
	cmpq	%rbx, %rbp
	ja	.L5
.L4:
	movq	%r13, 40(%r12)
	movq	0(%r13), %rdx
	andl	$127, %r14d
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	leaq	512(%rdx), %rax
	movq	%rdx, 24(%r12)
	movq	%rax, 32(%r12)
	leaq	-8(%rbp), %rax
	movq	%rax, 72(%r12)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa_offset 32
	movq	%rdx, 16(%r12)
	movq	%rax, 56(%r12)
	leaq	512(%rax), %rcx
	leaq	(%rax,%r14,4), %rax
	movq	%rcx, 64(%r12)
	movq	%rax, 48(%r12)
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L14:
	.cfi_restore_state
	movq	%rax, %rdi
	call	__cxa_begin_catch
	cmpq	%rbx, %r13
	jae	.L9
.L16:
	movq	0(%r13), %rdi
	addq	$8, %r13
	call	_ZdlPv
	cmpq	%r13, %rbx
	ja	.L16
.L9:
.LEHB2:
	call	__cxa_rethrow
.LEHE2:
.L15:
	movq	%rax, %rbx
	call	__cxa_end_catch
	movq	%rbx, %rdi
	call	__cxa_begin_catch
	movq	(%r12), %rdi
	call	_ZdlPv
	movq	$0, (%r12)
	movq	$0, 8(%r12)
.LEHB3:
	call	__cxa_rethrow
.LEHE3:
.L13:
	movq	%rax, %rbx
	call	__cxa_end_catch
	movq	%rbx, %rdi
.LEHB4:
	call	_Unwind_Resume
.LEHE4:
	.cfi_endproc
.LFE2708:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
	.align 4
.LLSDA2708:
	.byte	0xff
	.byte	0x3
	.uleb128 .LLSDATT2708-.LLSDATTD2708
.LLSDATTD2708:
	.byte	0x1
	.uleb128 .LLSDACSE2708-.LLSDACSB2708
.LLSDACSB2708:
	.uleb128 .LEHB0-.LFB2708
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2708
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L14-.LFB2708
	.uleb128 0x1
	.uleb128 .LEHB2-.LFB2708
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L15-.LFB2708
	.uleb128 0x3
	.uleb128 .LEHB3-.LFB2708
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L13-.LFB2708
	.uleb128 0
	.uleb128 .LEHB4-.LFB2708
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE2708:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 4
	.long	0

.LLSDATT2708:
	.section	.text._ZNSt11_Deque_baseIjSaIjEE17_M_initialize_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIjSaIjEE17_M_initialize_mapEm,comdat
	.size	_ZNSt11_Deque_baseIjSaIjEE17_M_initialize_mapEm, .-_ZNSt11_Deque_baseIjSaIjEE17_M_initialize_mapEm
	.section	.text._ZNSt6vectorISt4pairIjjESaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_,"axG",@progbits,_ZNSt6vectorISt4pairIjjESaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt6vectorISt4pairIjjESaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_
	.type	_ZNSt6vectorISt4pairIjjESaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_, @function
_ZNSt6vectorISt4pairIjjESaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_:
.LFB2740:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	movq	8(%rdi), %r8
	cmpq	16(%rdi), %r8
	je	.L21
	testq	%r8, %r8
	je	.L22
	movq	-8(%r8), %rax
	movq	%rax, (%r8)
.L22:
	leaq	8(%r8), %rax
	movl	(%rdx), %r10d
	movl	4(%rdx), %r9d
	leaq	-8(%r8), %rdx
	movq	%rax, 8(%rbx)
	movq	%rdx, %rax
	subq	%rsi, %rax
	sarq	$3, %rax
	testq	%rax, %rax
	jle	.L23
	movq	%rax, %rcx
	negq	%rcx
	salq	$3, %rcx
	leaq	(%r8,%rcx), %rdi
	addq	%rdx, %rcx
	.p2align 4,,10
	.p2align 3
.L24:
	movq	-8(%rcx,%rax,8), %rdx
	movq	%rdx, -8(%rdi,%rax,8)
	subq	$1, %rax
	jne	.L24
.L23:
	movl	%r10d, (%rsi)
	movl	%r9d, 4(%rsi)
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L21:
	.cfi_restore_state
	movq	(%rdi), %rdi
	movq	%r8, %r12
	subq	%rdi, %r12
	sarq	$3, %r12
	testq	%r12, %r12
	je	.L26
	leaq	(%r12,%r12), %rax
	cmpq	%rax, %r12
	jbe	.L42
.L27:
	movq	%rsi, %rbp
	movq	$-8, %r12
	subq	%rdi, %rbp
	sarq	$3, %rbp
.L37:
	movq	%r12, %rdi
	movq	%rdx, (%rsp)
	movq	%rsi, 8(%rsp)
	call	_Znwm
	movq	(%rbx), %rdi
	movq	8(%rbx), %r8
	leaq	8(%rax), %r14
	movq	(%rsp), %rdx
	movq	8(%rsp), %rsi
	movq	%rax, %r13
.L28:
	leaq	0(%r13,%rbp,8), %rax
	testq	%rax, %rax
	je	.L29
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
.L29:
	cmpq	%rsi, %rdi
	je	.L30
	movq	%rdi, %rdx
	movq	%r13, %rax
	.p2align 4,,10
	.p2align 3
.L32:
	testq	%rax, %rax
	je	.L31
	movq	(%rdx), %rcx
	movq	%rcx, (%rax)
.L31:
	addq	$8, %rdx
	addq	$8, %rax
	cmpq	%rsi, %rdx
	jne	.L32
	leaq	8(%rdi), %rax
	movq	%rsi, %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	16(%r13,%rax,8), %r14
.L30:
	cmpq	%rsi, %r8
	je	.L33
	movq	%rsi, %rdx
	movq	%r14, %rax
	.p2align 4,,10
	.p2align 3
.L35:
	testq	%rax, %rax
	je	.L34
	movq	(%rdx), %rcx
	movq	%rcx, (%rax)
.L34:
	addq	$8, %rdx
	addq	$8, %rax
	cmpq	%rdx, %r8
	jne	.L35
	addq	$8, %rsi
	subq	%rsi, %r8
	shrq	$3, %r8
	leaq	8(%r14,%r8,8), %r14
.L33:
	testq	%rdi, %rdi
	je	.L36
	call	_ZdlPv
.L36:
	addq	%r13, %r12
	movq	%r13, (%rbx)
	movq	%r14, 8(%rbx)
	movq	%r12, 16(%rbx)
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L26:
	.cfi_restore_state
	movq	%rsi, %rbp
	movl	$8, %r12d
	subq	%rdi, %rbp
	sarq	$3, %rbp
	jmp	.L37
.L42:
	movabsq	$2305843009213693951, %rcx
	cmpq	%rcx, %rax
	ja	.L27
	movq	%rsi, %rbp
	salq	$4, %r12
	subq	%rdi, %rbp
	sarq	$3, %rbp
	testq	%rax, %rax
	jne	.L37
	movl	$8, %r14d
	xorl	%r13d, %r13d
	jmp	.L28
	.cfi_endproc
.LFE2740:
	.size	_ZNSt6vectorISt4pairIjjESaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_, .-_ZNSt6vectorISt4pairIjjESaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_
	.section	.text._ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElS3_St4lessIS3_EEvT_T0_SC_T1_T2_,"axG",@progbits,_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElS3_St4lessIS3_EEvT_T0_SC_T1_T2_,comdat
	.p2align 4,,15
	.weak	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElS3_St4lessIS3_EEvT_T0_SC_T1_T2_
	.type	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElS3_St4lessIS3_EEvT_T0_SC_T1_T2_, @function
_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElS3_St4lessIS3_EEvT_T0_SC_T1_T2_:
.LFB2742:
	.cfi_startproc
	cmpq	%rsi, %rdx
	movl	%ecx, %r8d
	jge	.L51
	leaq	-1(%rsi), %rax
	movq	%rcx, %r10
	shrq	$32, %r10
	movq	%rax, %r9
	shrq	$63, %r9
	addq	%rax, %r9
	sarq	%r9
.L48:
	leaq	(%rdi,%r9,8), %rax
	cmpl	%r8d, (%rax)
	jae	.L52
.L46:
	movq	(%rax), %r11
	movq	%r11, (%rdi,%rsi,8)
	leaq	-1(%r9), %rsi
	movq	%rsi, %r11
	shrq	$63, %r11
	addq	%rsi, %r11
	sarq	%r11
	cmpq	%r9, %rdx
	jge	.L45
	movq	%r9, %rsi
	movq	%r11, %r9
	jmp	.L48
	.p2align 4,,10
	.p2align 3
.L52:
	ja	.L51
	cmpl	%r10d, 4(%rax)
	jb	.L46
.L51:
	leaq	(%rdi,%rsi,8), %rax
.L45:
	movq	%rcx, (%rax)
	movl	%r8d, (%rax)
	ret
	.cfi_endproc
.LFE2742:
	.size	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElS3_St4lessIS3_EEvT_T0_SC_T1_T2_, .-_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElS3_St4lessIS3_EEvT_T0_SC_T1_T2_
	.section	.text._ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElS3_St4lessIS3_EEvT_T0_SC_T1_T2_,"axG",@progbits,_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElS3_St4lessIS3_EEvT_T0_SC_T1_T2_,comdat
	.p2align 4,,15
	.weak	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElS3_St4lessIS3_EEvT_T0_SC_T1_T2_
	.type	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElS3_St4lessIS3_EEvT_T0_SC_T1_T2_, @function
_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElS3_St4lessIS3_EEvT_T0_SC_T1_T2_:
.LFB2738:
	.cfi_startproc
	movq	%rsi, %rax
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	leaq	-1(%rdx), %rsi
	movq	%rax, %r10
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbx
	shrq	$63, %rbx
	addq	%rsi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	movq	%rax, %rsi
	sarq	%rbx
	cmpq	%rax, %rbx
	jg	.L56
	jmp	.L54
	.p2align 4,,10
	.p2align 3
.L60:
	movq	%rsi, %r10
.L56:
	leaq	1(%r10), %r9
	leaq	(%r9,%r9), %r11
	salq	$4, %r9
	addq	%rdi, %r9
	leaq	-1(%r11), %rsi
	leaq	(%rdi,%rsi,8), %r8
	movl	(%r8), %ebp
	cmpl	%ebp, (%r9)
	jb	.L55
	ja	.L59
	movl	4(%r8), %ebp
	cmpl	%ebp, 4(%r9)
	jb	.L55
.L59:
	movq	%r9, %r8
	movq	%r11, %rsi
.L55:
	movq	(%r8), %r8
	cmpq	%rsi, %rbx
	movq	%r8, (%rdi,%r10,8)
	jg	.L60
.L54:
	testb	$1, %dl
	jne	.L57
	subq	$2, %rdx
	movq	%rdx, %r8
	shrq	$63, %r8
	addq	%r8, %rdx
	sarq	%rdx
	cmpq	%rsi, %rdx
	je	.L61
.L57:
	movq	%rax, %rdx
	movb	$0, (%rsp)
	call	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElS3_St4lessIS3_EEvT_T0_SC_T1_T2_
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L61:
	.cfi_restore_state
	leaq	1(%rsi,%rsi), %rsi
	movq	(%rdi,%rsi,8), %r8
	movq	%r8, (%rdi,%rdx,8)
	jmp	.L57
	.cfi_endproc
.LFE2738:
	.size	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElS3_St4lessIS3_EEvT_T0_SC_T1_T2_, .-_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElS3_St4lessIS3_EEvT_T0_SC_T1_T2_
	.section	.text._ZNSt5dequeIjSaIjEE17_M_reallocate_mapEmb,"axG",@progbits,_ZNSt5dequeIjSaIjEE17_M_reallocate_mapEmb,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt5dequeIjSaIjEE17_M_reallocate_mapEmb
	.type	_ZNSt5dequeIjSaIjEE17_M_reallocate_mapEmb, @function
_ZNSt5dequeIjSaIjEE17_M_reallocate_mapEmb:
.LFB2783:
	.cfi_startproc
	movq	%rbx, -48(%rsp)
	movq	%rbp, -40(%rsp)
	movq	%rsi, %rbp
	.cfi_offset 6, -48
	.cfi_offset 3, -56
	movq	%r12, -32(%rsp)
	movq	%r15, -8(%rsp)
	movq	%rdi, %rbx
	movq	%r13, -24(%rsp)
	movq	%r14, -16(%rsp)
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 15, -16
	.cfi_offset 12, -40
	movq	72(%rdi), %rcx
	movq	40(%rdi), %rsi
	movq	8(%rdi), %rax
	movq	%rcx, %r12
	subq	%rsi, %r12
	sarq	$3, %r12
	addq	$1, %r12
	leaq	(%r12,%rbp), %r15
	leaq	(%r15,%r15), %rdi
	cmpq	%rdi, %rax
	jbe	.L63
	subq	%r15, %rax
	salq	$3, %rbp
	xorl	%edi, %edi
	shrq	%rax
	testb	%dl, %dl
	cmovne	%rbp, %rdi
	addq	$8, %rcx
	leaq	(%rdi,%rax,8), %rbp
	addq	(%rbx), %rbp
	subq	%rsi, %rcx
	sarq	$3, %rcx
	cmpq	%rbp, %rsi
	ja	.L76
	testq	%rcx, %rcx
	je	.L66
	leaq	0(,%rcx,8), %rdx
	leaq	0(%rbp,%r12,8), %rdi
	subq	%rdx, %rdi
	call	memmove
	jmp	.L66
	.p2align 4,,10
	.p2align 3
.L63:
	cmpq	%rax, %rbp
	movq	%rax, %rcx
	cmovae	%rbp, %rcx
	leaq	2(%rax,%rcx), %r13
	movabsq	$2305843009213693951, %rax
	cmpq	%rax, %r13
	ja	.L77
	leaq	0(,%r13,8), %rdi
	movb	%dl, 8(%rsp)
	salq	$3, %rbp
	call	_Znwm
	movzbl	8(%rsp), %edx
	movq	%r13, %rcx
	movq	%rax, %r14
	subq	%r15, %rcx
	xorl	%eax, %eax
	movq	40(%rbx), %rsi
	shrq	%rcx
	testb	%dl, %dl
	movq	72(%rbx), %rdx
	cmovne	%rbp, %rax
	leaq	(%rax,%rcx,8), %rbp
	addq	$8, %rdx
	subq	%rsi, %rdx
	addq	%r14, %rbp
	sarq	$3, %rdx
	testq	%rdx, %rdx
	je	.L71
	salq	$3, %rdx
	movq	%rbp, %rdi
	call	memmove
.L71:
	movq	(%rbx), %rdi
	call	_ZdlPv
	movq	%r14, (%rbx)
	movq	%r13, 8(%rbx)
.L66:
	movq	%rbp, 40(%rbx)
	movq	0(%rbp), %rax
	movq	48(%rsp), %r13
	movq	56(%rsp), %r14
	movq	64(%rsp), %r15
	movq	%rax, 24(%rbx)
	addq	$512, %rax
	movq	%rax, 32(%rbx)
	leaq	-8(%rbp,%r12,8), %rax
	movq	32(%rsp), %rbp
	movq	40(%rsp), %r12
	movq	%rax, 72(%rbx)
	movq	(%rax), %rax
	movq	%rax, 56(%rbx)
	addq	$512, %rax
	movq	%rax, 64(%rbx)
	movq	24(%rsp), %rbx
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L76:
	.cfi_restore_state
	testq	%rcx, %rcx
	je	.L66
	leaq	0(,%rcx,8), %rdx
	movq	%rbp, %rdi
	call	memmove
	jmp	.L66
.L77:
	call	_ZSt17__throw_bad_allocv
	.cfi_endproc
.LFE2783:
	.size	_ZNSt5dequeIjSaIjEE17_M_reallocate_mapEmb, .-_ZNSt5dequeIjSaIjEE17_M_reallocate_mapEmb
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB2491:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2491
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	xorl	%edi, %edi
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$232, %rsp
	.cfi_def_cfa_offset 288
.LEHB5:
	call	_ZNSt8ios_base15sync_with_stdioEb
	leaq	184(%rsp), %rsi
	movl	$_ZSt3cin, %edi
	call	_ZNSi10_M_extractImEERSiRT_
	.p2align 4,,10
	.p2align 3
.L165:
	movq	184(%rsp), %rax
	leaq	-1(%rax), %rdx
	testq	%rax, %rax
	movq	%rdx, 184(%rsp)
	je	.L173
	leaq	192(%rsp), %rsi
	movl	$_ZSt3cin, %edi
	call	_ZNSi10_M_extractImEERSiRT_
	leaq	200(%rsp), %rsi
	movq	%rax, %rdi
	call	_ZNSi10_M_extractImEERSiRT_
	leaq	208(%rsp), %rsi
	movq	%rax, %rdi
	call	_ZNSi10_M_extractImEERSiRT_
	movq	208(%rsp), %rdi
	salq	$2, %rdi
	call	_Znam
	cmpq	$0, 208(%rsp)
	movq	%rax, %r14
	je	.L80
	movq	%rax, %rbp
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L81:
	movq	%rbp, %rsi
	movl	$_ZSt3cin, %edi
	addq	$1, %rbx
	call	_ZNSi10_M_extractIjEERSiRT_
	addq	$4, %rbp
	cmpq	208(%rsp), %rbx
	jb	.L81
.L80:
	movq	200(%rsp), %rdi
	addq	$1, %rdi
	call	_Znam
	movq	200(%rsp), %rdx
	movq	%rax, %rdi
	xorl	%esi, %esi
	addq	$1, %rdi
	movq	%rax, 16(%rsp)
	call	memset
	movq	200(%rsp), %r13
	leaq	1(%r13), %rbx
	movq	%r13, %r15
	leaq	(%rbx,%rbx,4), %rax
	salq	$4, %rax
	leaq	8(%rax), %rdi
	call	_Znam
.LEHE5:
	movq	%rax, 56(%rsp)
	movq	%rbx, (%rax)
	addq	$8, %rax
	cmpq	$-1, %r13
	movq	%rax, 32(%rsp)
	je	.L82
	movq	56(%rsp), %rbx
	movq	56(%rsp), %rbp
	movq	%rax, %r12
	addq	$40, %rbx
	addq	$56, %rbp
	.p2align 4,,10
	.p2align 3
.L83:
	movq	$0, (%r12)
	movq	$0, 8(%r12)
	xorl	%esi, %esi
	movq	$0, -16(%rbx)
	movq	$0, -8(%rbx)
	movq	%r12, %rdi
	movq	$0, (%rbx)
	movq	$0, 8(%rbx)
	movq	$0, 0(%rbp)
	movq	$0, 8(%rbp)
	movq	$0, 16(%rbp)
	movq	$0, 24(%rbp)
.LEHB6:
	call	_ZNSt11_Deque_baseIjSaIjEE17_M_initialize_mapEm
.LEHE6:
	subq	$1, %r13
	addq	$80, %r12
	addq	$80, %rbx
	addq	$80, %rbp
	cmpq	$-1, %r13
	jne	.L83
.L82:
	cmpq	$0, 208(%rsp)
	je	.L84
	xorl	%ebx, %ebx
	movq	32(%rsp), %r13
	jmp	.L90
	.p2align 4,,10
	.p2align 3
.L174:
	testq	%rax, %rax
	je	.L86
	movl	%ebx, (%rax)
.L86:
	addq	$4, %rax
	addq	$1, %rbx
	cmpq	208(%rsp), %rbx
	movq	%rax, 48(%rbp)
	jae	.L84
.L90:
	movl	(%r14,%rbx,4), %eax
	movl	%ebx, %r12d
	leaq	(%rax,%rax,4), %rbp
	salq	$4, %rbp
	addq	%r13, %rbp
	movq	64(%rbp), %rdx
	movq	48(%rbp), %rax
	subq	$4, %rdx
	cmpq	%rdx, %rax
	jne	.L174
	movq	72(%rbp), %r15
	movq	%r15, %rax
	subq	0(%rbp), %rax
	sarq	$3, %rax
	negq	%rax
	addq	8(%rbp), %rax
	cmpq	$1, %rax
	jbe	.L175
.L88:
	movl	$512, %edi
.LEHB7:
	call	_Znwm
.LEHE7:
	movq	%rax, 8(%r15)
	movq	48(%rbp), %rax
	testq	%rax, %rax
	je	.L89
	movl	%r12d, (%rax)
.L89:
	movq	72(%rbp), %rax
	addq	$1, %rbx
	cmpq	208(%rsp), %rbx
	leaq	8(%rax), %rdx
	movq	%rdx, 72(%rbp)
	movq	8(%rax), %rax
	leaq	512(%rax), %rdx
	movq	%rax, 56(%rbp)
	movq	%rax, 48(%rbp)
	movq	%rdx, 64(%rbp)
	jb	.L90
	.p2align 4,,10
	.p2align 3
.L84:
	cmpq	$0, 200(%rsp)
	je	.L91
	movq	56(%rsp), %rbx
	movl	$1, %ebp
	movq	%rbx, %r12
	subq	$-128, %r12
	.p2align 4,,10
	.p2align 3
.L94:
	movq	104(%rbx), %rax
	cmpq	%rax, 136(%rbx)
	je	.L92
	movq	120(%rbx), %rdx
	subq	$4, %rdx
	cmpq	%rdx, %rax
	je	.L93
	addq	$4, %rax
	movq	%rax, 104(%rbx)
.L92:
	addq	$1, %rbp
	addq	$80, %rbx
	addq	$80, %r12
	cmpq	200(%rsp), %rbp
	jbe	.L94
.L91:
	cmpq	$0, 208(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 80(%rsp)
	movq	$0, 72(%rsp)
	je	.L150
	xorl	%esi, %esi
	movq	$0, 40(%rsp)
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	jmp	.L125
	.p2align 4,,10
	.p2align 3
.L176:
	leaq	0(%rbp,%rbp,4), %rbp
	salq	$4, %rbp
	addq	32(%rsp), %rbp
	movq	16(%rbp), %rax
	cmpq	%rax, 48(%rbp)
	je	.L97
	cmpq	80(%rsp), %rsi
	movl	(%rax), %eax
	movl	%r13d, 180(%rsp)
	movl	%eax, 176(%rsp)
	je	.L98
	testq	%rsi, %rsi
	je	.L119
	movq	176(%rsp), %rax
	movq	%rax, (%rsi)
.L119:
	addq	$8, %rsi
	movq	%rsi, 72(%rsp)
.L120:
	movq	64(%rsp), %rdi
	movq	-8(%rsi), %rcx
	xorl	%edx, %edx
	movb	$0, (%rsp)
	subq	%rdi, %rsi
	sarq	$3, %rsi
	subq	$1, %rsi
	call	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElS3_St4lessIS3_EEvT_T0_SC_T1_T2_
	movq	32(%rbp), %rdx
	movq	16(%rbp), %rax
	subq	$4, %rdx
	cmpq	%rdx, %rax
	je	.L121
	addq	$4, %rax
	movq	%rax, 16(%rbp)
.L102:
	addq	$1, %rbx
	cmpq	208(%rsp), %rbx
	jae	.L95
.L178:
	movq	72(%rsp), %rsi
.L125:
	movl	(%r14,%rbx,4), %r13d
	movq	16(%rsp), %r15
	movl	%r13d, %ebp
	addq	%rbp, %r15
	cmpb	$0, (%r15)
	jne	.L176
	movq	192(%rsp), %rax
	cmpq	%r12, %rax
	movq	%rax, 24(%rsp)
	je	.L177
	leaq	0(%rbp,%rbp,4), %rbp
	addq	$1, %r12
	addq	$1, 40(%rsp)
	movb	$1, (%r15)
	salq	$4, %rbp
	addq	32(%rsp), %rbp
	movq	16(%rbp), %rax
	cmpq	%rax, 48(%rbp)
	je	.L117
	cmpq	80(%rsp), %rsi
	movl	(%rax), %eax
	movl	%r13d, 116(%rsp)
	movl	%eax, 112(%rsp)
	je	.L118
	testq	%rsi, %rsi
	je	.L119
	movq	112(%rsp), %rax
	movq	%rax, (%rsi)
	jmp	.L119
	.p2align 4,,10
	.p2align 3
.L177:
	movq	%r15, 48(%rsp)
	movq	%rbp, %r15
	.p2align 4,,10
	.p2align 3
.L156:
	movq	64(%rsp), %rdi
	leaq	-8(%rsi), %rdx
	movq	-8(%rsi), %rcx
	movq	(%rdi), %rax
	subq	%rdi, %rdx
	movl	(%rdi), %r12d
	movl	4(%rdi), %ebp
	sarq	$3, %rdx
	movq	%rax, -8(%rsi)
	xorl	%esi, %esi
	movb	$0, (%rsp)
	call	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElS3_St4lessIS3_EEvT_T0_SC_T1_T2_
	movq	72(%rsp), %rax
	cmpq	%r12, %rbx
	leaq	-8(%rax), %rsi
	movq	%rsi, 72(%rsp)
	jae	.L156
	movl	%ebp, %edx
	movq	%r15, %rbp
	movq	16(%rsp), %rcx
	leaq	0(%rbp,%rbp,4), %rbp
	addq	$1, 40(%rsp)
	movq	48(%rsp), %r15
	salq	$4, %rbp
	addq	32(%rsp), %rbp
	movb	$0, (%rcx,%rdx)
	movb	$1, (%r15)
	movq	16(%rbp), %rdx
	cmpq	%rdx, 48(%rbp)
	je	.L109
	cmpq	80(%rsp), %rsi
	movl	(%rdx), %edx
	movl	%r13d, 148(%rsp)
	movl	%edx, 144(%rsp)
	je	.L110
	testq	%rsi, %rsi
	je	.L111
	movq	144(%rsp), %rdx
	movq	%rdx, (%rsi)
.L111:
	movq	%rax, 72(%rsp)
.L112:
	movq	64(%rsp), %rdi
	movq	-8(%rax), %rcx
	xorl	%edx, %edx
	movb	$0, (%rsp)
	subq	%rdi, %rax
	sarq	$3, %rax
	leaq	-1(%rax), %rsi
	call	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElS3_St4lessIS3_EEvT_T0_SC_T1_T2_
	movq	32(%rbp), %rdx
	movq	16(%rbp), %rax
	subq	$4, %rdx
	cmpq	%rdx, %rax
	je	.L113
	addq	$4, %rax
	addq	$1, %rbx
	cmpq	208(%rsp), %rbx
	movq	%rax, 16(%rbp)
	movq	24(%rsp), %r12
	jb	.L178
	.p2align 4,,10
	.p2align 3
.L95:
	movq	40(%rsp), %rsi
	movl	$_ZSt4cout, %edi
.LEHB8:
	call	_ZNSo9_M_insertImEERSoT_
	leaq	223(%rsp), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	movb	$10, 223(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	cmpq	$0, 32(%rsp)
	je	.L126
	movq	56(%rsp), %rdx
	movq	(%rdx), %rax
	leaq	(%rax,%rax,4), %rax
	salq	$4, %rax
	addq	32(%rsp), %rax
	cmpq	%rax, 32(%rsp)
	je	.L127
	movq	32(%rsp), %r13
	leaq	-80(%rax), %r12
	.p2align 4,,10
	.p2align 3
.L128:
	movq	(%r12), %rdi
	testq	%rdi, %rdi
	je	.L129
	movq	72(%r12), %rbp
	movq	40(%r12), %rbx
	addq	$8, %rbp
	cmpq	%rbx, %rbp
	jbe	.L130
	.p2align 4,,10
	.p2align 3
.L155:
	movq	(%rbx), %rdi
	addq	$8, %rbx
	call	_ZdlPv
	cmpq	%rbx, %rbp
	ja	.L155
	movq	(%r12), %rdi
.L130:
	call	_ZdlPv
.L129:
	subq	$80, %r12
	leaq	80(%r12), %rax
	cmpq	%rax, %r13
	jne	.L128
.L127:
	movq	56(%rsp), %rdi
	call	_ZdaPv
.L126:
	cmpq	$0, 16(%rsp)
	je	.L132
	movq	16(%rsp), %rdi
	call	_ZdaPv
.L132:
	testq	%r14, %r14
	je	.L133
	movq	%r14, %rdi
	call	_ZdaPv
.L133:
	movq	64(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L165
	call	_ZdlPv
	jmp	.L165
	.p2align 4,,10
	.p2align 3
.L97:
	cmpq	80(%rsp), %rsi
	movl	$-1, 160(%rsp)
	movl	%r13d, 164(%rsp)
	je	.L103
	testq	%rsi, %rsi
	je	.L123
	movq	160(%rsp), %rax
	movq	%rax, (%rsi)
.L123:
	addq	$8, %rsi
	movq	%rsi, 72(%rsp)
.L124:
	movq	64(%rsp), %rdi
	movq	-8(%rsi), %rcx
	xorl	%edx, %edx
	movb	$0, (%rsp)
	subq	%rdi, %rsi
	sarq	$3, %rsi
	subq	$1, %rsi
	call	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElS3_St4lessIS3_EEvT_T0_SC_T1_T2_
	jmp	.L102
	.p2align 4,,10
	.p2align 3
.L121:
	movq	24(%rbp), %rdi
	call	_ZdlPv
	movq	40(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, 40(%rbp)
	movq	8(%rax), %rax
	leaq	512(%rax), %rdx
	movq	%rax, 24(%rbp)
	movq	%rax, 16(%rbp)
	movq	%rdx, 32(%rbp)
	jmp	.L102
	.p2align 4,,10
	.p2align 3
.L117:
	cmpq	80(%rsp), %rsi
	movl	$-1, 96(%rsp)
	movl	%r13d, 100(%rsp)
	je	.L122
	testq	%rsi, %rsi
	je	.L123
	movq	96(%rsp), %rax
	movq	%rax, (%rsi)
	jmp	.L123
	.p2align 4,,10
	.p2align 3
.L98:
	leaq	176(%rsp), %rdx
	leaq	64(%rsp), %rdi
	call	_ZNSt6vectorISt4pairIjjESaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_
.L172:
	movq	72(%rsp), %rsi
	jmp	.L120
	.p2align 4,,10
	.p2align 3
.L109:
	cmpq	80(%rsp), %rsi
	movl	$-1, 128(%rsp)
	movl	%r13d, 132(%rsp)
	je	.L114
	testq	%rsi, %rsi
	je	.L115
	movq	128(%rsp), %rdx
	movq	%rdx, (%rsi)
.L115:
	movq	%rax, 72(%rsp)
.L116:
	movq	64(%rsp), %rdi
	movq	-8(%rax), %rcx
	xorl	%edx, %edx
	movb	$0, (%rsp)
	subq	%rdi, %rax
	sarq	$3, %rax
	leaq	-1(%rax), %rsi
	call	_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElS3_St4lessIS3_EEvT_T0_SC_T1_T2_
	movq	24(%rsp), %r12
	jmp	.L102
	.p2align 4,,10
	.p2align 3
.L118:
	leaq	112(%rsp), %rdx
	leaq	64(%rsp), %rdi
	call	_ZNSt6vectorISt4pairIjjESaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_
	jmp	.L172
.L93:
	movq	112(%rbx), %rdi
	call	_ZdlPv
	movq	128(%rbx), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, (%r12)
	movq	8(%rax), %rax
	leaq	512(%rax), %rdx
	movq	%rax, -16(%r12)
	movq	%rdx, -8(%r12)
	movq	%rax, 104(%rbx)
	jmp	.L92
.L113:
	movq	24(%rbp), %rdi
	call	_ZdlPv
	movq	40(%rbp), %rax
	movq	24(%rsp), %r12
	leaq	8(%rax), %rdx
	movq	%rdx, 40(%rbp)
	movq	8(%rax), %rax
	leaq	512(%rax), %rdx
	movq	%rax, 24(%rbp)
	movq	%rax, 16(%rbp)
	movq	%rdx, 32(%rbp)
	jmp	.L102
.L110:
	leaq	144(%rsp), %rdx
	leaq	64(%rsp), %rdi
	call	_ZNSt6vectorISt4pairIjjESaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_
	movq	72(%rsp), %rax
	jmp	.L112
.L103:
	leaq	160(%rsp), %rdx
	leaq	64(%rsp), %rdi
	call	_ZNSt6vectorISt4pairIjjESaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_
.LEHE8:
.L171:
	movq	72(%rsp), %rsi
	jmp	.L124
.L175:
	xorl	%edx, %edx
	movl	$1, %esi
	movq	%rbp, %rdi
.LEHB9:
	call	_ZNSt5dequeIjSaIjEE17_M_reallocate_mapEmb
.LEHE9:
	movq	72(%rbp), %r15
	jmp	.L88
.L122:
	leaq	96(%rsp), %rdx
	leaq	64(%rsp), %rdi
.LEHB10:
	call	_ZNSt6vectorISt4pairIjjESaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_
	jmp	.L171
.L114:
	leaq	128(%rsp), %rdx
	leaq	64(%rsp), %rdi
	call	_ZNSt6vectorISt4pairIjjESaIS1_EE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPS1_S3_EERKS1_
.LEHE10:
	movq	72(%rsp), %rax
	jmp	.L116
.L150:
	movq	$0, 40(%rsp)
	jmp	.L95
.L173:
	addq	$232, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L152:
	.cfi_restore_state
	cmpq	$0, 32(%rsp)
	movq	%rax, 16(%rsp)
	je	.L138
	movq	%r15, %r14
	subq	%r13, %r14
	imulq	$80, %r14, %r14
	addq	32(%rsp), %r14
	movq	%r14, %rbx
.L166:
	cmpq	32(%rsp), %rbx
	je	.L138
	subq	$80, %rbx
	leaq	-80(%r14), %rbp
	movq	%rbx, %r12
	subq	%r14, %r12
	cmpq	$0, 80(%r12,%rbp)
	je	.L166
	movq	152(%r12,%rbp), %r15
	movq	120(%r12,%rbp), %r13
	addq	$8, %r15
.L141:
	cmpq	%r13, %r15
	jbe	.L179
	movq	0(%r13), %rdi
	addq	$8, %r13
	call	_ZdlPv
	jmp	.L141
.L151:
	movq	64(%rsp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	je	.L149
	call	_ZdlPv
.L149:
	movq	%rbx, %rdi
.LEHB11:
	call	_Unwind_Resume
.L179:
	movq	80(%r12,%rbp), %rdi
	call	_ZdlPv
	jmp	.L166
.L138:
	movq	56(%rsp), %rdi
	call	_ZdaPv
	movq	16(%rsp), %rdi
	call	_Unwind_Resume
.LEHE11:
	.cfi_endproc
.LFE2491:
	.section	.gcc_except_table
.LLSDA2491:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2491-.LLSDACSB2491
.LLSDACSB2491:
	.uleb128 .LEHB5-.LFB2491
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB2491
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L152-.LFB2491
	.uleb128 0
	.uleb128 .LEHB7-.LFB2491
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB8-.LFB2491
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L151-.LFB2491
	.uleb128 0
	.uleb128 .LEHB9-.LFB2491
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB10-.LFB2491
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L151-.LFB2491
	.uleb128 0
	.uleb128 .LEHB11-.LFB2491
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSE2491:
	.section	.text.startup
	.size	main, .-main
	.p2align 4,,15
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB2878:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	jmp	__cxa_atexit
	.cfi_endproc
.LFE2878:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.ctors,"aw",@progbits
	.align 8
	.quad	_GLOBAL__sub_I_main
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.weakref	_ZL20__gthrw_pthread_oncePiPFvvE,pthread_once
	.weakref	_ZL27__gthrw_pthread_getspecificj,pthread_getspecific
	.weakref	_ZL27__gthrw_pthread_setspecificjPKv,pthread_setspecific
	.weakref	_ZL22__gthrw_pthread_createPmPK14pthread_attr_tPFPvS3_ES3_,pthread_create
	.weakref	_ZL20__gthrw_pthread_joinmPPv,pthread_join
	.weakref	_ZL21__gthrw_pthread_equalmm,pthread_equal
	.weakref	_ZL20__gthrw_pthread_selfv,pthread_self
	.weakref	_ZL22__gthrw_pthread_detachm,pthread_detach
	.weakref	_ZL22__gthrw_pthread_cancelm,pthread_cancel
	.weakref	_ZL19__gthrw_sched_yieldv,sched_yield
	.weakref	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t,pthread_mutex_lock
	.weakref	_ZL29__gthrw_pthread_mutex_trylockP15pthread_mutex_t,pthread_mutex_trylock
	.weakref	_ZL31__gthrw_pthread_mutex_timedlockP15pthread_mutex_tPK8timespec,pthread_mutex_timedlock
	.weakref	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t,pthread_mutex_unlock
	.weakref	_ZL26__gthrw_pthread_mutex_initP15pthread_mutex_tPK19pthread_mutexattr_t,pthread_mutex_init
	.weakref	_ZL29__gthrw_pthread_mutex_destroyP15pthread_mutex_t,pthread_mutex_destroy
	.weakref	_ZL30__gthrw_pthread_cond_broadcastP14pthread_cond_t,pthread_cond_broadcast
	.weakref	_ZL27__gthrw_pthread_cond_signalP14pthread_cond_t,pthread_cond_signal
	.weakref	_ZL25__gthrw_pthread_cond_waitP14pthread_cond_tP15pthread_mutex_t,pthread_cond_wait
	.weakref	_ZL30__gthrw_pthread_cond_timedwaitP14pthread_cond_tP15pthread_mutex_tPK8timespec,pthread_cond_timedwait
	.weakref	_ZL28__gthrw_pthread_cond_destroyP14pthread_cond_t,pthread_cond_destroy
	.weakref	_ZL26__gthrw_pthread_key_createPjPFvPvE,pthread_key_create
	.weakref	_ZL26__gthrw_pthread_key_deletej,pthread_key_delete
	.weakref	_ZL30__gthrw_pthread_mutexattr_initP19pthread_mutexattr_t,pthread_mutexattr_init
	.weakref	_ZL33__gthrw_pthread_mutexattr_settypeP19pthread_mutexattr_ti,pthread_mutexattr_settype
	.weakref	_ZL33__gthrw_pthread_mutexattr_destroyP19pthread_mutexattr_t,pthread_mutexattr_destroy
	.ident	"GCC: (Gentoo 4.6.3 p1.6, pie-0.5.2) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
