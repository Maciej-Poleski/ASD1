	.file	"satori.cxx"
	.text
	.p2align 4,,15
	.type	_ZN12_GLOBAL__N_1L4dumpEtt, @function
_ZN12_GLOBAL__N_1L4dumpEtt:
.LFB2317:
	.cfi_startproc
	movq	%r13, -24(%rsp)
	movl	%edi, %r13d
	.cfi_offset 13, -32
	movzwl	%di, %edi
	movq	%rbx, -48(%rsp)
	leal	1(%rdi), %ebx
	.cfi_offset 3, -56
	movq	%r12, -32(%rsp)
	xorl	%edx, %edx
	movq	%rbp, -40(%rsp)
	movq	%r14, -16(%rsp)
	movslq	%ebx, %rbx
	movq	%r15, -8(%rsp)
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset 15, -16
	.cfi_offset 14, -24
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	movq	%rbx, %rax
	movzwl	%si, %r12d
	divq	_ZN12_GLOBAL__N_1L1nE(%rip)
	cmpq	%r12, %rdx
	je	.L1
	movslq	%edi, %rbp
	movzwl	%si, %r14d
	leaq	0(%rbp,%rbp,4), %rax
	movslq	%r14d, %r15
	leaq	(%rax,%rax,4), %rax
	leaq	(%r15,%rax,8), %rax
	movzwl	_ZN12_GLOBAL__N_1L1PE(%rax,%rax), %esi
	call	_ZN12_GLOBAL__N_1L4dumpEtt
	movq	_ZN12_GLOBAL__N_1L1nE(%rip), %rcx
	xorl	%edx, %edx
	movq	%rbx, %rax
	divq	%rcx
	cmpq	%rdx, %r12
	je	.L3
	leal	1(%r14), %eax
	xorl	%edx, %edx
	movzwl	%r13w, %r13d
	cltq
	divq	%rcx
	cmpq	%rdx, %r13
	je	.L3
	leaq	15(%rsp), %rsi
	movl	$1, %edx
	movl	$_ZSt4cout, %edi
	movb	$32, 15(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	_ZNSo9_M_insertImEERSoT_
	leaq	15(%rsp), %rsi
	movq	%rax, %rdi
	movl	$1, %edx
	movb	$32, 15(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%r12, %rsi
	movq	%rax, %rdi
	call	_ZNSo9_M_insertImEERSoT_
.L3:
	leaq	0(%rbp,%rbp,4), %rax
	movl	%r14d, %esi
	leaq	(%rax,%rax,4), %rax
	leaq	(%r15,%rax,8), %rax
	movzwl	_ZN12_GLOBAL__N_1L1PE(%rax,%rax), %edi
	call	_ZN12_GLOBAL__N_1L4dumpEtt
.L1:
	movq	24(%rsp), %rbx
	movq	32(%rsp), %rbp
	movq	40(%rsp), %r12
	movq	48(%rsp), %r13
	movq	56(%rsp), %r14
	movq	64(%rsp), %r15
	addq	$72, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2317:
	.size	_ZN12_GLOBAL__N_1L4dumpEtt, .-_ZN12_GLOBAL__N_1L4dumpEtt
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB2319:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	xorl	%edi, %edi
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
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	call	_ZNSt8ios_base15sync_with_stdioEb
	movq	%rsp, %rsi
	movl	$_ZSt3cin, %edi
	call	_ZNSi10_M_extractImEERSiRT_
.L6:
	movq	(%rsp), %rax
	leaq	-1(%rax), %rdx
	testq	%rax, %rax
	movq	%rdx, (%rsp)
	je	.L30
	movl	$_ZN12_GLOBAL__N_1L1nE, %esi
	movl	$_ZSt3cin, %edi
	call	_ZNSi10_M_extractImEERSiRT_
	movq	_ZN12_GLOBAL__N_1L1nE(%rip), %rbp
	leaq	0(,%rbp,8), %rdi
	call	_Znam
	testq	%rbp, %rbp
	movq	%rax, %rbx
	je	.L7
	xorl	%eax, %eax
.L8:
	movl	$0, (%rbx,%rax,8)
	movl	$0, 4(%rbx,%rax,8)
	addq	$1, %rax
	cmpq	%rbp, %rax
	jne	.L8
.L7:
	movq	_ZN12_GLOBAL__N_1L1nE(%rip), %rcx
	xorl	%r8d, %r8d
	testq	%rcx, %rcx
	je	.L9
	movq	%rbx, %rbp
	xorl	%r12d, %r12d
.L10:
	movq	%rbp, %rsi
	movl	$_ZSt3cin, %edi
	addq	$1, %r12
	call	_ZNSirsERi
	leaq	4(%rbp), %rsi
	movq	%rax, %rdi
	addq	$8, %rbp
	call	_ZNSirsERi
	movq	_ZN12_GLOBAL__N_1L1nE(%rip), %rcx
	cmpq	%rcx, %r12
	jb	.L10
	cmpq	$1, %rcx
	jbe	.L21
	imulq	$1608, %rcx, %r9
	movq	%rbx, %rax
	movl	$_ZN12_GLOBAL__N_1L1TE+8, %edi
	xorl	%r8d, %r8d
	addq	$_ZN12_GLOBAL__N_1L1TE-1600, %r9
.L11:
	movl	(%rax), %esi
	movl	4(%rax), %edx
	subl	8(%rax), %esi
	subl	12(%rax), %edx
	addq	$8, %rax
	movslq	%esi, %rsi
	movslq	%edx, %rdx
	imulq	%rsi, %rsi
	imulq	%rdx, %rdx
	addq	%rsi, %rdx
	movq	%rdx, (%rdi)
	addq	$1608, %rdi
	addq	%rdx, %r8
	cmpq	%r9, %rdi
	jne	.L11
.L9:
	leaq	-1(%rcx), %rbp
	movl	$2, %r11d
	leaq	(%rbx,%rbp,8), %rax
	movl	(%rax), %edx
	movl	4(%rax), %eax
	subl	(%rbx), %edx
	subl	4(%rbx), %eax
	movslq	%edx, %rdx
	cltq
	imulq	%rdx, %rdx
	imulq	%rax, %rax
	addq	%rdx, %rax
	leaq	0(%rbp,%rbp,4), %rdx
	leaq	(%rax,%r8), %r12
	leaq	(%rdx,%rdx,4), %rsi
	salq	$6, %rsi
	cmpq	$2, %rcx
	movq	%rax, _ZN12_GLOBAL__N_1L1TE(%rsi)
	jbe	.L13
.L24:
	xorl	%r10d, %r10d
	.p2align 4,,10
	.p2align 3
.L17:
	leaq	(%r10,%r11), %rax
	xorl	%edx, %edx
	divq	%rcx
	leaq	(%r10,%r10,4), %rax
	addq	$1, %r10
	leaq	(%rax,%rax,4), %r8
	movq	%r10, %rax
	salq	$3, %r8
	movq	%rdx, %rsi
	leaq	(%r8,%rdx), %rdi
	xorl	%edx, %edx
	divq	%rcx
	movq	$-1, _ZN12_GLOBAL__N_1L1TE(,%rdi,8)
	cmpq	%rdx, %rsi
	je	.L14
	leaq	(%rbx,%rsi,8), %r13
	movl	-8(%rbx,%r10,8), %r9d
	movl	-4(%rbx,%r10,8), %eax
	subl	0(%r13), %r9d
	subl	4(%r13), %eax
	movq	$-1, %r13
	movslq	%r9d, %r9
	cltq
	imulq	%rax, %rax
	imulq	%r9, %r9
	addq	%rax, %r9
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L31:
	movq	_ZN12_GLOBAL__N_1L1TE(,%rdi,8), %r13
.L16:
	leaq	(%rdx,%rdx,4), %rax
	leaq	(%r8,%rdx), %r14
	leaq	(%rax,%rax,4), %rax
	leaq	(%rsi,%rax,8), %rax
	movq	_ZN12_GLOBAL__N_1L1TE(,%rax,8), %rax
	addq	%r9, %rax
	addq	_ZN12_GLOBAL__N_1L1TE(,%r14,8), %rax
	cmpq	%r13, %rax
	jae	.L15
	movq	%rax, _ZN12_GLOBAL__N_1L1TE(,%rdi,8)
	movw	%dx, _ZN12_GLOBAL__N_1L1PE(%rdi,%rdi)
.L15:
	leaq	1(%rdx), %rax
	xorl	%edx, %edx
	divq	%rcx
	cmpq	%rdx, %rsi
	jne	.L31
.L14:
	cmpq	%rcx, %r10
	jne	.L17
	addq	$1, %r11
	cmpq	%rcx, %r11
	jne	.L24
.L13:
	movq	_ZN12_GLOBAL__N_1L1TE(,%rbp,8), %rsi
	movl	$_ZSt4cout, %edi
	subq	%r12, %rsi
	call	_ZNSo9_M_insertImEERSoT_
	movq	_ZN12_GLOBAL__N_1L1nE(%rip), %rsi
	xorl	%edi, %edi
	subl	$1, %esi
	movzwl	%si, %esi
	call	_ZN12_GLOBAL__N_1L4dumpEtt
	leaq	15(%rsp), %rsi
	movl	$1, %edx
	movl	$_ZSt4cout, %edi
	movb	$10, 15(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%rbx, %rdi
	call	_ZdaPv
	jmp	.L6
.L30:
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
.L21:
	.cfi_restore_state
	xorl	%r8d, %r8d
	jmp	.L9
	.cfi_endproc
.LFE2319:
	.size	main, .-main
	.p2align 4,,15
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB2481:
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
.LFE2481:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.ctors,"aw",@progbits
	.align 8
	.quad	_GLOBAL__sub_I_main
	.local	_ZN12_GLOBAL__N_1L1nE
	.comm	_ZN12_GLOBAL__N_1L1nE,8,8
	.local	_ZN12_GLOBAL__N_1L1TE
	.comm	_ZN12_GLOBAL__N_1L1TE,320000,32
	.local	_ZN12_GLOBAL__N_1L1PE
	.comm	_ZN12_GLOBAL__N_1L1PE,80000,32
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
