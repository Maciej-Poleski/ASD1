	.file	"satori.cxx"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB2317:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	xorl	%edi, %edi
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$48, %rsp
	.cfi_def_cfa_offset 80
	call	_ZNSt8ios_base15sync_with_stdioEb
	leaq	24(%rsp), %rsi
	movl	$_ZSt3cin, %edi
	call	_ZNSi10_M_extractImEERSiRT_
.L30:
	movq	24(%rsp), %rax
	leaq	-1(%rax), %rdx
	testq	%rax, %rax
	movq	%rdx, 24(%rsp)
	je	.L33
	leaq	32(%rsp), %rsi
	movl	$_ZSt3cin, %edi
	call	_ZNSi10_M_extractImEERSiRT_
	movq	32(%rsp), %rdi
	salq	$2, %rdi
	call	_Znam
	cmpq	$0, 32(%rsp)
	movq	%rax, %rbx
	je	.L3
	movq	%rax, %r12
	xorl	%ebp, %ebp
	.p2align 4,,10
	.p2align 3
.L4:
	movq	%r12, %rsi
	movl	$_ZSt3cin, %edi
	addq	$1, %rbp
	call	_ZNSi10_M_extractIjEERSiRT_
	movq	32(%rsp), %rcx
	addq	$4, %r12
	cmpq	%rcx, %rbp
	jb	.L4
	testq	%rcx, %rcx
	je	.L3
	xorl	%edi, %edi
	xorl	%r11d, %r11d
	jmp	.L5
.L16:
	movq	%rsi, %r11
.L5:
	leaq	1(%r11), %rsi
	xorl	%edx, %edx
	imulq	$2000, %r11, %r9
	movq	%rsi, %rax
	divq	%rcx
	movl	(%rbx,%rdi), %eax
	movl	(%rbx,%rdx,4), %r8d
	addq	%r9, %rdx
	cmpl	%r8d, %eax
	movl	%r8d, %r9d
	cmovae	%eax, %r9d
	cmpl	%eax, %r8d
	cmovbe	%r8d, %eax
	addq	$4, %rdi
	cmpq	%rcx, %rsi
	movl	%r9d, _ZN12_GLOBAL__N_1L1TE(,%rdx,8)
	movl	%eax, _ZN12_GLOBAL__N_1L1TE+4(,%rdx,8)
	jne	.L16
	cmpq	$2, %rcx
	jbe	.L34
	movl	$2, %ebp
	.p2align 4,,10
	.p2align 3
.L9:
	xorl	%r8d, %r8d
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L21:
	movq	%rsi, %r8
.L11:
	leaq	(%r8,%rbp), %rax
	xorl	%edx, %edx
	leaq	1(%r8), %rsi
	divq	%rcx
	leaq	(%rdx,%r11), %rax
	movq	%rdx, %r9
	xorl	%edx, %edx
	movl	(%rbx,%r9,4), %edi
	divq	%rcx
	imulq	$2000, %r8, %rax
	addq	%rax, %rdx
	movq	%rsi, %rax
	addl	_ZN12_GLOBAL__N_1L1TE+4(,%rdx,8), %edi
	movl	_ZN12_GLOBAL__N_1L1TE(,%rdx,8), %r10d
	xorl	%edx, %edx
	divq	%rcx
	movl	-4(%rbx,%rsi,4), %eax
	movl	%r10d, 20(%rsp)
	movl	%edi, 16(%rsp)
	imulq	$2000, %rdx, %rdx
	addq	%r9, %rdx
	addl	_ZN12_GLOBAL__N_1L1TE+4(,%rdx,8), %eax
	movl	_ZN12_GLOBAL__N_1L1TE(,%rdx,8), %r12d
	leaq	16(%rsp), %rdx
	movl	%r12d, 4(%rsp)
	cmpl	%eax, %edi
	movl	%eax, (%rsp)
	ja	.L10
	movq	%rsp, %rdx
	jb	.L10
	leaq	16(%rsp), %rax
	cmpl	%r12d, %r10d
	cmova	%rax, %rdx
.L10:
	imulq	$2000, %r8, %r8
	movq	(%rdx), %rax
	addq	%r8, %r9
	cmpq	%rcx, %rsi
	movq	%rax, _ZN12_GLOBAL__N_1L1TE(,%r9,8)
	jne	.L21
	addq	$1, %rbp
	cmpq	%rcx, %rbp
	jne	.L9
.L7:
	movl	$1, %esi
	xorl	%r9d, %r9d
	jmp	.L13
.L35:
	ja	.L24
	movl	4(%r12), %edx
	cmpl	4(%rax), %edx
	cmovae	%r8, %rdi
	cmovb	%rsi, %r9
.L12:
	addq	$1, %rsi
	cmpq	%rcx, %rsi
	je	.L8
.L13:
	leaq	(%r9,%r11), %r8
	xorl	%edx, %edx
	imulq	$2000, %r9, %rdi
	movq	%r8, %rax
	imulq	$2000, %rsi, %rbp
	divq	%rcx
	leaq	(%rdi,%rdx), %r10
	leaq	(%rsi,%r11), %rdi
	xorl	%edx, %edx
	movq	%rdi, %rax
	leaq	_ZN12_GLOBAL__N_1L1TE(,%r10,8), %r12
	divq	%rcx
	addq	%rbp, %rdx
	movl	_ZN12_GLOBAL__N_1L1TE(,%rdx,8), %ebp
	cmpl	%ebp, _ZN12_GLOBAL__N_1L1TE(,%r10,8)
	leaq	_ZN12_GLOBAL__N_1L1TE(,%rdx,8), %rax
	jae	.L35
	movq	%rsi, %r9
	addq	$1, %rsi
	cmpq	%rcx, %rsi
	jne	.L13
.L8:
	movq	%rdi, %rax
	xorl	%edx, %edx
	movl	$_ZSt4cout, %edi
	divq	%rcx
	imulq	$2000, %r9, %r9
	addq	%r9, %rdx
	movl	_ZN12_GLOBAL__N_1L1TE(,%rdx,8), %esi
	movl	_ZN12_GLOBAL__N_1L1TE+4(,%rdx,8), %ebp
	call	_ZNSo9_M_insertImEERSoT_
	leaq	47(%rsp), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	movb	$32, 47(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%rbp, %rsi
	movq	%rax, %rdi
	call	_ZNSo9_M_insertImEERSoT_
	leaq	47(%rsp), %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	movb	$10, 47(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	testq	%rbx, %rbx
	je	.L30
	movq	%rbx, %rdi
	call	_ZdaPv
	.p2align 4,,2
	jmp	.L30
.L24:
	movq	%r8, %rdi
	.p2align 4,,2
	jmp	.L12
.L3:
	xorl	%ecx, %ecx
	movq	$-1, %rdi
.L31:
	xorl	%r9d, %r9d
	jmp	.L8
.L34:
	cmpq	$1, %rcx
	movq	%r11, %rdi
	ja	.L7
	jmp	.L31
.L33:
	addq	$48, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2317:
	.size	main, .-main
	.p2align 4,,15
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB2488:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	call	__cxa_atexit
	movl	$_ZN12_GLOBAL__N_1L1TE+32000000, %ecx
	movl	$_ZN12_GLOBAL__N_1L1TE, %eax
	.p2align 4,,10
	.p2align 3
.L37:
	leaq	16000(%rax), %rdx
	.p2align 4,,10
	.p2align 3
.L38:
	movl	$0, (%rax)
	movl	$0, 4(%rax)
	addq	$8, %rax
	cmpq	%rdx, %rax
	jne	.L38
	cmpq	%rcx, %rax
	jne	.L37
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2488:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.ctors,"aw",@progbits
	.align 8
	.quad	_GLOBAL__sub_I_main
	.local	_ZN12_GLOBAL__N_1L1TE
	.comm	_ZN12_GLOBAL__N_1L1TE,32000000,32
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
