	.file	"satori.cxx"
# GNU C++ (Gentoo 4.6.3 p1.6, pie-0.5.2) version 4.6.3 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 4.6.3, GMP version 5.0.5, MPFR version 3.1.1, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -D_GNU_SOURCE satori.cxx -mtune=generic -march=x86-64
# -auxbase-strip satori.S -O2 -fverbose-asm
# options enabled:  -fasynchronous-unwind-tables -fauto-inc-dec
# -fbranch-count-reg -fcaller-saves -fcombine-stack-adjustments -fcommon
# -fcompare-elim -fcprop-registers -fcrossjumping -fcse-follow-jumps
# -fdefer-pop -fdelete-null-pointer-checks -fdevirtualize -fdwarf2-cfi-asm
# -fearly-inlining -feliminate-unused-debug-types -fexceptions
# -fexpensive-optimizations -fforward-propagate -ffunction-cse -fgcse
# -fgcse-lm -fguess-branch-probability -fident -fif-conversion
# -fif-conversion2 -findirect-inlining -finline
# -finline-functions-called-once -finline-small-functions -fipa-cp
# -fipa-profile -fipa-pure-const -fipa-reference -fipa-sra
# -fira-share-save-slots -fira-share-spill-slots -fivopts
# -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
# -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
# -foptimize-register-move -foptimize-sibling-calls -fpartial-inlining
# -fpeephole -fpeephole2 -fprefetch-loop-arrays -freg-struct-return
# -fregmove -freorder-blocks -freorder-functions -frerun-cse-after-loop
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fschedule-insns2 -fshow-column -fsigned-zeros
# -fsplit-ivs-in-unroller -fsplit-wide-types -fstrict-aliasing
# -fstrict-overflow -fstrict-volatile-bitfields -fthread-jumps
# -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp -ftree-builtin-call-dce
# -ftree-ccp -ftree-ch -ftree-copy-prop -ftree-copyrename -ftree-cselim
# -ftree-dce -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
# -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pre
# -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink
# -ftree-slp-vectorize -ftree-sra -ftree-switch-conversion -ftree-ter
# -ftree-vect-loop-version -ftree-vrp -funit-at-a-time -funwind-tables
# -fvect-cost-model -fverbose-asm -fzee -fzero-initialized-in-bss
# -m128bit-long-double -m64 -m80387 -maccumulate-outgoing-args
# -malign-stringops -mfancy-math-387 -mfp-ret-in-387 -mglibc -mieee-fp
# -mmmx -mno-sse4 -mpush-args -mred-zone -msse -msse2 -mtls-direct-seg-refs

# Compiler executable checksum: 94e84460d19466e31695df3ec72fb195

	.section	.text.hot,"ax",@progbits
	.p2align 4,,-1
	.type	_ZN12_GLOBAL__N_1L3LCSERKSsS1_.constprop.44, @function
_ZN12_GLOBAL__N_1L3LCSERKSsS1_.constprop.44:
.LFB2695:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2695
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	xorl	%eax, %eax	# i
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	(%rdx), %rbp	# MEM[(const struct basic_string *)B_4(D)]._M_dataplus._M_p, pretmp.97
	movq	%rdi, %rbx	# .result_ptr, <retval>
	movq	-24(%rbp), %r8	# MEM[(struct _Rep *)pretmp.97_48 + -24B].D.12153._M_length, pretmp.99
	.p2align 4,,10
	.p2align 3
.L2:
	movw	$0, _ZZN12_GLOBAL__N_1L3LCSERKSsS1_E1C(%rax,%rax)	#, MEM[symbol: C, index: i_109, step: 2, offset: 0B]
	addq	$1, %rax	#, i
	cmpq	%r8, %rax	# pretmp.99, i
	jbe	.L2	#,
	movq	(%rsi), %r12	# MEM[(const struct basic_string *)A_7(D)]._M_dataplus._M_p, D.49748
	movw	$0, _ZZN12_GLOBAL__N_1L3LCSERKSsS1_E1C+6002(%rip)	#, C
	movl	$1, %r10d	#, i
	movq	-24(%r12), %r13	# MEM[(struct _Rep *)D.49748_74 + -24B].D.12153._M_length, D.49747
	testq	%r13, %r13	# D.49747
	je	.L4	#,
	.p2align 4,,10
	.p2align 3
.L26:
	testq	%r8, %r8	# pretmp.99
	je	.L8	#,
	leaq	-1(%r10), %r11	#, pretmp.105
	movq	%r10, %rdi	# i, pretmp.105
	xorl	%edx, %edx	# ivtmp.110
	andl	$1, %edi	#, pretmp.105
	movl	$1, %eax	#, j
	andl	$1, %r11d	#, pretmp.105
	imulq	$3001, %rdi, %rdi	#, pretmp.105, tmp161
	imulq	$3001, %r11, %r11	#, pretmp.105, tmp162
	jmp	.L7	#
	.p2align 4,,10
	.p2align 3
.L5:
	movq	%rdx, %rcx	# ivtmp.110, tmp158
	andl	$1, %ecx	#, tmp158
	addq	%rdi, %rcx	# tmp161, tmp159
	leaq	_ZZN12_GLOBAL__N_1L3LCSERKSsS1_E1C(%rcx,%rcx), %rcx	#, D.49757
.L20:
	movzwl	(%rcx), %ecx	# *D.49757_40, D.49778
.L6:
	movq	%rax, %rsi	# j, D.49779
	andl	$1, %esi	#, D.49779
	leaq	(%rdi,%rsi), %r9	#, tmp139
	addq	%r11, %rsi	# tmp162, tmp142
	movzwl	_ZZN12_GLOBAL__N_1L3LCSERKSsS1_E1C(%rsi,%rsi), %esi	# C, tmp145
	cmpw	%si, %cx	# tmp145, D.49778
	cmovb	%esi, %ecx	# D.49778,, tmp145, tmp144
	addq	$1, %rax	#, j
	addq	$1, %rdx	#, ivtmp.110
	cmpq	%r8, %rax	# pretmp.99, j
	movw	%cx, _ZZN12_GLOBAL__N_1L3LCSERKSsS1_E1C(%r9,%r9)	# tmp144, C
	ja	.L8	#,
.L7:
	movzbl	0(%rbp,%rax), %ecx	# *D.49758_14,
	cmpb	%cl, (%r12,%r10)	#, *D.49760_10
	jne	.L5	#,
	movq	%rdx, %rsi	# ivtmp.110, D.49771
	andl	$1, %esi	#, D.49771
	leaq	(%r11,%rsi), %rcx	#, tmp129
	addq	%rdi, %rsi	# tmp161, tmp133
	movzwl	_ZZN12_GLOBAL__N_1L3LCSERKSsS1_E1C(%rcx,%rcx), %ecx	# C, tmp131
	addl	$1, %ecx	#, D.49778
	cmpw	_ZZN12_GLOBAL__N_1L3LCSERKSsS1_E1C(%rsi,%rsi), %cx	# C, D.49778
	ja	.L6	#,
	leaq	_ZZN12_GLOBAL__N_1L3LCSERKSsS1_E1C(%rsi,%rsi), %rcx	#, D.49757
	jmp	.L20	#
	.p2align 4,,10
	.p2align 3
.L8:
	addq	$1, %r10	#, i
	cmpq	%r13, %r10	# D.49747, i
	jbe	.L26	#,
.L4:
	movq	%r13, %rax	# D.49747, D.49768
	xorl	%ebp, %ebp	# prephitmp.102
	movq	$0, (%rbx)	#, MEM[(struct _Vector_impl *)<retval>_1(D)]._M_start
	andl	$1, %eax	#, D.49768
	movq	$0, 8(%rbx)	#, MEM[(struct _Vector_impl *)<retval>_1(D)]._M_finish
	movq	$0, 16(%rbx)	#, MEM[(struct _Vector_impl *)<retval>_1(D)]._M_end_of_storage
	imulq	$6002, %rax, %r13	#, D.49768, tmp146
	imulq	$3001, %rax, %rax	#, D.49768, tmp147
	addq	$_ZZN12_GLOBAL__N_1L3LCSERKSsS1_E1C, %r13	#, D.49764
	leaq	1(%r8,%rax), %rax	#, tmp149
	leaq	_ZZN12_GLOBAL__N_1L3LCSERKSsS1_E1C(%rax,%rax), %r12	#, tmp152
	xorl	%eax, %eax	# D.49732
	subq	%r13, %r12	# D.49764, tmp152
	sarq	%r12	# tmp153
	je	.L9	#,
	testq	%r12, %r12	# tmp153
	js	.L28	#,
	leaq	(%r12,%r12), %rbp	#, prephitmp.102
	movq	%rbp, %rdi	# prephitmp.102,
.LEHB0:
	call	_Znwm	#
.LEHE0:
.L9:
	leaq	(%rax,%rbp), %r14	#, D.49727
	testq	%r12, %r12	# tmp153
	movq	%rax, (%rbx)	# D.49732, <retval>_1(D)->D.44147._M_impl._M_start
	movq	%r14, 16(%rbx)	# D.49727, <retval>_1(D)->D.44147._M_impl._M_end_of_storage
	je	.L14	#,
	movq	%rbp, %rdx	# prephitmp.102,
	movq	%r13, %rsi	# D.49764,
	movq	%rax, %rdi	# D.49732,
	call	memmove	#
.L14:
	movq	%r14, 8(%rbx)	# D.49727, <retval>_1(D)->D.44147._M_impl._M_finish
	movq	%rbx, %rax	# <retval>,
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret
.L23:
	.cfi_restore_state
	movq	(%rbx), %rdi	# MEM[(struct _Vector_base *)<retval>_1(D)], pretmp.103
	movq	%rax, %rbp	#, tmp155
	testq	%rdi, %rdi	# pretmp.103
	je	.L18	#,
	call	_ZdlPv	#
.L18:
	movq	%rbp, %rdi	# tmp155,
.LEHB1:
	call	_Unwind_Resume	#
.L28:
	call	_ZSt17__throw_bad_allocv	#
.LEHE1:
	.cfi_endproc
.LFE2695:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2695:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2695-.LLSDACSB2695
.LLSDACSB2695:
	.uleb128 .LEHB0-.LFB2695
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L23-.LFB2695
	.uleb128 0
	.uleb128 .LEHB1-.LFB2695
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE2695:
	.section	.text.hot
	.size	_ZN12_GLOBAL__N_1L3LCSERKSsS1_.constprop.44, .-_ZN12_GLOBAL__N_1L3LCSERKSsS1_.constprop.44
	.section	.text._ZNSs12_S_constructISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcSsEEEEES3_T_S6_RKSaIcESt20forward_iterator_tag,"axG",@progbits,_ZNSs12_S_constructISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcSsEEEEES3_T_S6_RKSaIcESt20forward_iterator_tag,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSs12_S_constructISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcSsEEEEES3_T_S6_RKSaIcESt20forward_iterator_tag
	.type	_ZNSs12_S_constructISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcSsEEEEES3_T_S6_RKSaIcESt20forward_iterator_tag, @function
_ZNSs12_S_constructISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcSsEEEEES3_T_S6_RKSaIcESt20forward_iterator_tag:
.LFB2601:
	.cfi_startproc
	movq	%rbx, -24(%rsp)	#,
	movq	%rbp, -16(%rsp)	#,
	movq	%rdi, %rbx	# __beg, __beg
	.cfi_offset 6, -24
	.cfi_offset 3, -32
	movq	%r12, -8(%rsp)	#,
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -16
	movq	(%rsi), %rcx	# MEM[(const struct reverse_iterator *)__end_8(D)]._M_current, SR.53
	movq	(%rdi), %r12	# MEM[(const struct reverse_iterator *)__beg_7(D)]._M_current, SR.56
	movq	%rsi, %rbp	# __end, __end
	movl	$_ZNSs4_Rep20_S_empty_rep_storageE+24, %eax	#, __p
	cmpq	%r12, %rcx	# SR.56, SR.53
	jne	.L37	#,
.L32:
	movq	(%rsp), %rbx	#,
	movq	8(%rsp), %rbp	#,
	movq	16(%rsp), %r12	#,
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L37:
	.cfi_restore_state
	subq	%rcx, %r12	# SR.53, __dnew
	xorl	%esi, %esi	#
	movq	%r12, %rdi	# __dnew,
	call	_ZNSs4_Rep9_S_createEmmRKSaIcE	#
	movq	0(%rbp), %rdi	# MEM[(const struct reverse_iterator &)__end_8(D)]._M_current, SR.78
	movq	(%rbx), %rdx	# MEM[(const struct reverse_iterator &)__beg_7(D)]._M_current, SR.127
	movq	%rax, %r8	#, __r
	leaq	24(%rax), %rax	#, __p
	cmpq	%rdx, %rdi	# SR.127, SR.78
	je	.L33	#,
	movq	%rax, %rcx	# __p, __p
	.p2align 4,,10
	.p2align 3
.L34:
	movzbl	-1(%rdx), %esi	# MEM[base: D.49982_72, offset: 0x0ffffffffffffffff], D.49125
	subq	$1, %rdx	#, ivtmp.135
	movb	%sil, (%rcx)	# D.49125, MEM[base: __p_93, offset: 0]
	addq	$1, %rcx	#, __p
	cmpq	%rdi, %rdx	# SR.78, ivtmp.135
	jne	.L34	#,
.L33:
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %r8	#, __r
	je	.L32	#,
	movl	$0, 16(%r8)	#, MEM[(_Atomic_word *)__r_29 + 16B]
	movq	%r12, (%r8)	# __dnew, __r_29->D.12153._M_length
	movb	$0, 24(%r8,%r12)	#, MEM[(char_type &)D.49131_70]
	jmp	.L32	#
	.cfi_endproc
.LFE2601:
	.size	_ZNSs12_S_constructISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcSsEEEEES3_T_S6_RKSaIcESt20forward_iterator_tag, .-_ZNSs12_S_constructISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcSsEEEEES3_T_S6_RKSaIcESt20forward_iterator_tag
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	""
.LC1:
	.string	"basic_string::substr"
	.section	.text.hot
	.p2align 4,,-1
	.type	_ZN12_GLOBAL__N_1L2HIESsSs.constprop.43, @function
_ZN12_GLOBAL__N_1L2HIESsSs.constprop.43:
.LFB2696:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2696
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdi, %r13	# .result_ptr, <retval>
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdx, %rbp	# B, B
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx	# A, A
	subq	$376, %rsp	#,
	.cfi_def_cfa_offset 432
	movq	(%rsi), %rax	# MEM[(const struct basic_string *)A_2(D)]._M_dataplus._M_p, prephitmp.188
	movq	(%rdx), %rdx	# MEM[(const struct basic_string *)B_5(D)]._M_dataplus._M_p, MEM[(const struct basic_string *)B_5(D)]._M_dataplus._M_p
	movq	-24(%rax), %rcx	# MEM[(struct _Rep *)prephitmp.188_3 + -24B].D.12153._M_length, prephitmp.190
	cmpq	-24(%rdx), %rcx	# MEM[(struct _Rep *)D.49858_6 + -24B].D.12153._M_length, prephitmp.190
	ja	.L322	#,
	cmpq	$1, %rcx	#, prephitmp.190
	je	.L323	#,
.L40:
	leaq	80(%rsp), %rdi	#,
	xorl	%edx, %edx	#
	shrq	%rcx	# tmp409
	movq	%rbx, %rsi	# A,
.LEHB2:
	call	_ZNSsC1ERKSsmm	#
.LEHE2:
	movq	(%rbx), %rax	# MEM[(const struct basic_string *)A_2(D)]._M_dataplus._M_p, MEM[(const struct basic_string *)A_2(D)]._M_dataplus._M_p
	movq	-24(%rax), %rax	# MEM[(struct _Rep *)D.49850_17 + -24B].D.12153._M_length, D.49851
	movq	%rax, %rdx	# D.49851, D.49895
	shrq	%rdx	# D.49895
	cmpq	%rdx, %rax	# D.49895, D.49851
	jb	.L324	#,
	leaq	96(%rsp), %rdi	#,
	movq	$-1, %rcx	#,
	movq	%rbx, %rsi	# A,
.LEHB3:
	call	_ZNSsC1ERKSsmm	#
.LEHE3:
	leaq	80(%rsp), %rsi	#,
	leaq	16(%rsp), %rdi	#,
	movq	%rbp, %rdx	# B,
.LEHB4:
	call	_ZN12_GLOBAL__N_1L3LCSERKSsS1_.constprop.44	#
.LEHE4:
	movq	0(%rbp), %rbx	# MEM[(const struct basic_string *)B_5(D)]._M_dataplus._M_p, D.49849
	movl	-8(%rbx), %esi	# MEM[(const struct _Rep *)D.49849_156 + -8B],
	testl	%esi, %esi	#
	js	.L301	#,
	movq	%rbp, %rdi	# B,
.LEHB5:
	call	_ZNSs12_M_leak_hardEv	#
	movq	0(%rbp), %rbx	# MEM[(const struct basic_string *)B_5(D)]._M_dataplus._M_p, D.49849
	movl	-8(%rbx), %ecx	# MEM[(const struct _Rep *)D.49849_20 + -8B],
	testl	%ecx, %ecx	#
	js	.L301	#,
	movq	%rbp, %rdi	# B,
	call	_ZNSs12_M_leak_hardEv	#
	movq	0(%rbp), %rax	# MEM[(const struct basic_string *)B_5(D)]._M_dataplus._M_p, D.49849
.L45:
	addq	-24(%rax), %rax	# MEM[(struct _Rep *)D.49849_430 + -24B].D.12153._M_length, D.50009
	leaq	341(%rsp), %rdx	#,
	leaq	192(%rsp), %rsi	#,
	leaq	176(%rsp), %rdi	#,
	movq	%rbx, 192(%rsp)	# D.49849, D.49845.current._M_current
	movb	$0, (%rsp)	#,
	movq	%rax, 176(%rsp)	# D.50009, D.49844.current._M_current
	call	_ZNSs12_S_constructISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcSsEEEEES3_T_S6_RKSaIcESt20forward_iterator_tag	#
.LEHE5:
	movq	96(%rsp), %rbx	# A1._M_dataplus._M_p, D.49842
	movq	%rax, 320(%rsp)	# D.49843, MEM[(struct _Alloc_hider *)&D.49894]._M_p
	movl	-8(%rbx), %edx	# MEM[(const struct _Rep *)D.49842_165 + -8B],
	testl	%edx, %edx	#
	js	.L303	#,
	leaq	96(%rsp), %rdi	#,
.LEHB6:
	call	_ZNSs12_M_leak_hardEv	#
	movq	96(%rsp), %rbx	# A1._M_dataplus._M_p, D.49842
	movl	-8(%rbx), %eax	# MEM[(const struct _Rep *)D.49842_23 + -8B],
	testl	%eax, %eax	#
	js	.L303	#,
	leaq	96(%rsp), %rdi	#,
	call	_ZNSs12_M_leak_hardEv	#
	movq	96(%rsp), %rax	# A1._M_dataplus._M_p, D.49842
.L46:
	addq	-24(%rax), %rax	# MEM[(struct _Rep *)D.49842_347 + -24B].D.12153._M_length, D.50027
	leaq	340(%rsp), %rdx	#,
	leaq	160(%rsp), %rsi	#,
	leaq	144(%rsp), %rdi	#,
	movq	%rbx, 160(%rsp)	# D.49842, D.49838.current._M_current
	movb	$0, (%rsp)	#,
	movq	%rax, 144(%rsp)	# D.50027, D.49837.current._M_current
	call	_ZNSs12_S_constructISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcSsEEEEES3_T_S6_RKSaIcESt20forward_iterator_tag	#
.LEHE6:
	leaq	320(%rsp), %rdx	#,
	leaq	304(%rsp), %rsi	#,
	leaq	48(%rsp), %rdi	#,
	movq	%rax, %rbx	#, D.49836
	movq	%rax, 304(%rsp)	# D.49836, MEM[(struct _Alloc_hider *)&D.49890]._M_p
.LEHB7:
	call	_ZN12_GLOBAL__N_1L3LCSERKSsS1_.constprop.44	#
.LEHE7:
	leaq	-24(%rbx), %rdi	#, D.50035
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi	#, D.50035
	jne	.L325	#,
.L56:
	movq	320(%rsp), %rax	# D.49894._M_dataplus._M_p, D.50055
	leaq	-24(%rax), %rdi	#, D.50056
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi	#, D.50056
	jne	.L326	#,
.L66:
	movq	0(%rbp), %rax	# MEM[(const struct basic_string *)B_5(D)]._M_dataplus._M_p, MEM[(const struct basic_string *)B_5(D)]._M_dataplus._M_p
	movq	16(%rsp), %rbx	# MEM[(struct vector *)&LCS1], prephitmp.217
	movl	$1, %r14d	#, prephitmp.215
	movq	48(%rsp), %r12	# MEM[(struct vector *)&LCS2], prephitmp.217
	movq	-24(%rax), %r10	# MEM[(struct _Rep *)D.49833_28 + -24B].D.12153._M_length, D.49834
	movzwl	2(%rbx), %edx	# MEM[(short unsigned int &)prephitmp.217_26 + 2], D.49886
	cmpq	$2, %r10	#, D.49834
	movzwl	-2(%r12,%r10,2), %esi	# *D.49831_33, D.49883
	jbe	.L67	#,
	leaq	(%r10,%r10), %r11	#, tmp580
	addl	%edx, %esi	# D.49886, best
	movl	$4, %ecx	#, ivtmp.268
	movl	$2, %edx	#, i
	.p2align 4,,10
	.p2align 3
.L72:
	movq	%r11, %rax	# tmp580, tmp436
	movzwl	(%rbx,%rcx), %r8d	# *D.49827_41, D.49880
	movzwl	%si, %edi	# best, D.49882
	subq	%rcx, %rax	# ivtmp.268, tmp436
	movzwl	(%r12,%rax), %r9d	# *D.49821_49, D.49876
	movzwl	%r8w, %eax	# D.49880, D.49874
	movzwl	%r9w, %r15d	# D.49876, D.49876
	imull	%r15d, %eax	# D.49876, D.49874
	imull	%r9d, %r8d	# D.49876, best
	cmpl	%eax, %edi	# D.49874, D.49882
	cmovl	%r8d, %esi	# best,, best, best
	cmovl	%edx, %r14d	# i,, sel
	addq	$1, %rdx	#, i
	addq	$2, %rcx	#, ivtmp.268
	cmpq	%r10, %rdx	# D.49834, i
	jne	.L72	#,
	movzwl	%r14w, %r14d	# sel, prephitmp.215
.L67:
	leaq	112(%rsp), %rdi	#,
	movq	%r14, %rcx	# prephitmp.215,
	xorl	%edx, %edx	#
	movq	%rbp, %rsi	# B,
.LEHB8:
	call	_ZNSsC1ERKSsmm	#
.LEHE8:
	movq	0(%rbp), %rax	# MEM[(const struct basic_string *)B_5(D)]._M_dataplus._M_p, MEM[(const struct basic_string *)B_5(D)]._M_dataplus._M_p
	cmpq	%r14, -24(%rax)	# prephitmp.215, MEM[(struct _Rep *)D.50084_198 + -24B].D.12153._M_length
	jb	.L327	#,
	leaq	128(%rsp), %rdi	#,
	movq	$-1, %rcx	#,
	movq	%r14, %rdx	# prephitmp.215,
	movq	%rbp, %rsi	# B,
.LEHB9:
	call	_ZNSsC1ERKSsmm	#
.LEHE9:
	leaq	128(%rsp), %rsi	#,
	leaq	272(%rsp), %rdi	#,
.LEHB10:
	call	_ZNSsC1ERKSs	#
.LEHE10:
	leaq	96(%rsp), %rsi	#,
	leaq	256(%rsp), %rdi	#,
.LEHB11:
	call	_ZNSsC1ERKSs	#
.LEHE11:
	leaq	272(%rsp), %rdx	#,
	leaq	256(%rsp), %rsi	#,
	leaq	288(%rsp), %rdi	#,
.LEHB12:
	call	_ZN12_GLOBAL__N_1L2HIESsSs.constprop.43	#
.LEHE12:
	leaq	112(%rsp), %rsi	#,
	leaq	224(%rsp), %rdi	#,
.LEHB13:
	call	_ZNSsC1ERKSs	#
.LEHE13:
	leaq	80(%rsp), %rsi	#,
	leaq	208(%rsp), %rdi	#,
.LEHB14:
	call	_ZNSsC1ERKSs	#
.LEHE14:
	leaq	224(%rsp), %rdx	#,
	leaq	208(%rsp), %rsi	#,
	leaq	240(%rsp), %rdi	#,
.LEHB15:
	call	_ZN12_GLOBAL__N_1L2HIESsSs.constprop.43	#
.LEHE15:
	leaq	240(%rsp), %rsi	#,
	movq	%r13, %rdi	# <retval>,
.LEHB16:
	call	_ZNSsC1ERKSs	#
.LEHE16:
	leaq	288(%rsp), %rsi	#,
	movq	%r13, %rdi	# <retval>,
.LEHB17:
	call	_ZNSs6appendERKSs	#
.LEHE17:
	movq	240(%rsp), %rax	# D.49864._M_dataplus._M_p, D.50107
	leaq	-24(%rax), %rdi	#, D.50108
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi	#, D.50108
	jne	.L328	#,
.L92:
	movq	208(%rsp), %rax	# D.49862._M_dataplus._M_p, D.50128
	leaq	-24(%rax), %rdi	#, D.50129
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi	#, D.50129
	jne	.L329	#,
.L100:
	movq	224(%rsp), %rax	# D.49863._M_dataplus._M_p, D.50149
	leaq	-24(%rax), %rdi	#, D.50150
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi	#, D.50150
	jne	.L330	#,
.L108:
	movq	288(%rsp), %rax	# D.49867._M_dataplus._M_p, D.50170
	leaq	-24(%rax), %rdi	#, D.50171
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi	#, D.50171
	jne	.L331	#,
.L116:
	movq	256(%rsp), %rax	# D.49865._M_dataplus._M_p, D.50191
	leaq	-24(%rax), %rdi	#, D.50192
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi	#, D.50192
	jne	.L332	#,
.L124:
	movq	272(%rsp), %rax	# D.49866._M_dataplus._M_p, D.50212
	leaq	-24(%rax), %rdi	#, D.50213
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi	#, D.50213
	jne	.L333	#,
.L132:
	movq	128(%rsp), %rax	# B1._M_dataplus._M_p, D.50233
	leaq	-24(%rax), %rdi	#, D.50234
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi	#, D.50234
	jne	.L334	#,
.L140:
	movq	112(%rsp), %rax	# B0._M_dataplus._M_p, D.50254
	leaq	-24(%rax), %rdi	#, D.50255
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi	#, D.50255
	jne	.L335	#,
.L148:
	movq	48(%rsp), %rdi	# MEM[(struct _Vector_base *)&LCS2], D.50275
	testq	%rdi, %rdi	# D.50275
	je	.L153	#,
	call	_ZdlPv	#
.L153:
	movq	16(%rsp), %rdi	# MEM[(struct _Vector_base *)&LCS1], D.50282
	testq	%rdi, %rdi	# D.50282
	je	.L158	#,
	call	_ZdlPv	#
.L158:
	movq	96(%rsp), %rax	# A1._M_dataplus._M_p, D.50289
	leaq	-24(%rax), %rdi	#, D.50290
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi	#, D.50290
	jne	.L336	#,
.L166:
	movq	80(%rsp), %rax	# A0._M_dataplus._M_p, D.50310
	leaq	-24(%rax), %rdi	#, D.50311
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi	#, D.50311
	jne	.L337	#,
.L38:
	addq	$376, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r13, %rax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L301:
	.cfi_restore_state
	movq	%rbx, %rax	# D.49849, D.49849
	jmp	.L45	#
	.p2align 4,,10
	.p2align 3
.L322:
	movq	%rbp, %rsi	# B,
	movq	%rbx, %rdi	# A,
.LEHB18:
	call	_ZNSs4swapERSs	#
	movq	(%rbx), %rax	# MEM[(const struct basic_string *)A_2(D)]._M_dataplus._M_p, prephitmp.188
	movq	-24(%rax), %rcx	# MEM[(struct _Rep *)prephitmp.188_252 + -24B].D.12153._M_length, prephitmp.190
	cmpq	$1, %rcx	#, prephitmp.190
	jne	.L40	#,
.L323:
	movl	-8(%rax), %edi	# MEM[(const struct _Rep *)prephitmp.188_263 + -8B],
	testl	%edi, %edi	#
	js	.L41	#,
	movq	%rbx, %rdi	# A,
	call	_ZNSs12_M_leak_hardEv	#
	movq	(%rbx), %rax	# MEM[(const struct basic_string *)A_2(D)]._M_dataplus._M_p, prephitmp.188
.L41:
	movsbl	(%rax), %esi	# *prephitmp.188_643, *prephitmp.188_643
	xorl	%edx, %edx	#
	movq	%rbp, %rdi	# B,
	call	_ZNKSs4findEcm	#
	cmpq	$-1, %rax	#, D.49898
	je	.L42	#,
	movq	%rbx, %rsi	# A,
	movq	%r13, %rdi	# <retval>,
	call	_ZNSsC1ERKSs	#
	jmp	.L38	#
	.p2align 4,,10
	.p2align 3
.L303:
	movq	%rbx, %rax	# D.49842, D.49842
	jmp	.L46	#
	.p2align 4,,10
	.p2align 3
.L42:
	leaq	342(%rsp), %rdx	#,
	movl	$.LC0, %esi	#,
	movq	%r13, %rdi	# <retval>,
	call	_ZNSsC1EPKcRKSaIcE	#
.LEHE18:
	jmp	.L38	#
.L324:
	movl	$.LC1, %edi	#,
.LEHB19:
	call	_ZSt20__throw_out_of_rangePKc	#
.LEHE19:
.L326:
	movl	$_ZL22__gthrw_pthread_cancelm, %edx	#, tmp429
	testq	%rdx, %rdx	# tmp429
	je	.L58	#,
	movl	$-1, %edx	#, D.50067
	lock xaddl	%edx, -8(%rax)	# D.50067,
.L59:
	testl	%edx, %edx	# __result
	jg	.L66	#,
	leaq	344(%rsp), %rsi	#,
	call	_ZNSs4_Rep10_M_destroyERKSaIcE	#
	jmp	.L66	#
.L319:
	movq	%rax, %rbp	#, tmp556
.L271:
	testq	%r12, %r12	# prephitmp.217
	je	.L199	#,
	movq	%r12, %rdi	# prephitmp.217,
	call	_ZdlPv	#
.L199:
	testq	%rbx, %rbx	# prephitmp.217
	je	.L281	#,
	movq	%rbx, %rdi	# prephitmp.217,
	call	_ZdlPv	#
.L281:
	movq	%rbp, %rbx	# tmp515, tmp560
.L282:
	movq	96(%rsp), %rax	# A1._M_dataplus._M_p, D.50555
	leaq	-24(%rax), %rdi	#, D.50556
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi	#, D.50556
	jne	.L338	#,
.L291:
	movq	80(%rsp), %rax	# A0._M_dataplus._M_p, D.50576
	leaq	-24(%rax), %rdi	#, D.50577
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi	#, D.50577
	jne	.L339	#,
.L299:
	movq	%rbx, %rdi	# tmp565,
.LEHB20:
	call	_Unwind_Resume	#
.LEHE20:
.L58:
	movl	-8(%rax), %edx	# MEM[(_Atomic_word *)D.50055_185 + -8B], __result
	leal	-1(%rdx), %ecx	#, tmp430
	movl	%ecx, -8(%rax)	# tmp430, MEM[(_Atomic_word *)D.50055_185 + -8B]
	jmp	.L59	#
.L339:
	movl	$_ZL22__gthrw_pthread_cancelm, %edx	#, tmp567
	testq	%rdx, %rdx	# tmp567
	je	.L293	#,
	movl	$-1, %edx	#, D.50588
	lock xaddl	%edx, -8(%rax)	# D.50588,
.L294:
	testl	%edx, %edx	# __result
	jg	.L299	#,
	leaq	367(%rsp), %rsi	#,
	call	_ZNSs4_Rep10_M_destroyERKSaIcE	#
	jmp	.L299	#
.L338:
	movl	$_ZL22__gthrw_pthread_cancelm, %edx	#, tmp562
	testq	%rdx, %rdx	# tmp562
	je	.L284	#,
	movl	$-1, %edx	#, D.50567
	lock xaddl	%edx, -8(%rax)	# D.50567,
.L285:
	testl	%edx, %edx	# __result
	jg	.L291	#,
	leaq	366(%rsp), %rsi	#,
	call	_ZNSs4_Rep10_M_destroyERKSaIcE	#
	jmp	.L291	#
.L293:
	movl	-8(%rax), %edx	# MEM[(_Atomic_word *)D.50576_446 + -8B], __result
	leal	-1(%rdx), %ecx	#, tmp568
	movl	%ecx, -8(%rax)	# tmp568, MEM[(_Atomic_word *)D.50576_446 + -8B]
	jmp	.L294	#
.L284:
	movl	-8(%rax), %edx	# MEM[(_Atomic_word *)D.50555_435 + -8B], __result
	leal	-1(%rdx), %ecx	#, tmp563
	movl	%ecx, -8(%rax)	# tmp563, MEM[(_Atomic_word *)D.50555_435 + -8B]
	jmp	.L285	#
.L327:
	movl	$.LC1, %edi	#,
.LEHB21:
	call	_ZSt20__throw_out_of_rangePKc	#
.LEHE21:
.L307:
	movq	%rax, %rbx	#, tmp551
.L262:
	movq	112(%rsp), %rax	# B0._M_dataplus._M_p, D.50520
	leaq	-24(%rax), %rdi	#, D.50521
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi	#, D.50521
	jne	.L340	#,
.L270:
	movq	%rbx, %rbp	# tmp551, tmp556
	movq	48(%rsp), %r12	# MEM[(struct _Vector_base *)&LCS2], prephitmp.217
	movq	16(%rsp), %rbx	# MEM[(struct _Vector_base *)&LCS1], prephitmp.217
	jmp	.L271	#
.L308:
	movq	%rax, %rbx	#, tmp546
.L253:
	movq	128(%rsp), %rax	# B1._M_dataplus._M_p, D.50499
	leaq	-24(%rax), %rdi	#, D.50500
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi	#, D.50500
	je	.L262	#,
	movl	$_ZL22__gthrw_pthread_cancelm, %edx	#, tmp548
	testq	%rdx, %rdx	# tmp548
	je	.L255	#,
	movl	$-1, %edx	#, D.50511
	lock xaddl	%edx, -8(%rax)	# D.50511,
.L256:
	testl	%edx, %edx	# __result
	jg	.L262	#,
	leaq	364(%rsp), %rsi	#,
	call	_ZNSs4_Rep10_M_destroyERKSaIcE	#
	jmp	.L262	#
.L316:
.L198:
	movq	%rax, %rbp	# tmp513, tmp515
	movq	16(%rsp), %rbx	# MEM[(struct _Vector_base *)&LCS1], prephitmp.217
	jmp	.L199	#
.L310:
	movq	%rax, %rbx	#, tmp536
.L235:
	movq	256(%rsp), %rax	# D.49865._M_dataplus._M_p, D.50457
	leaq	-24(%rax), %rdi	#, D.50458
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi	#, D.50458
	jne	.L341	#,
.L244:
	movq	272(%rsp), %rax	# D.49866._M_dataplus._M_p, D.50478
	leaq	-24(%rax), %rdi	#, D.50479
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi	#, D.50479
	je	.L253	#,
	movl	$_ZL22__gthrw_pthread_cancelm, %edx	#, tmp543
	testq	%rdx, %rdx	# tmp543
	je	.L246	#,
	movl	$-1, %edx	#, D.50490
	lock xaddl	%edx, -8(%rax)	# D.50490,
.L247:
	testl	%edx, %edx	# __result
	jg	.L253	#,
	leaq	363(%rsp), %rsi	#,
	call	_ZNSs4_Rep10_M_destroyERKSaIcE	#
	jmp	.L253	#
.L311:
	movq	%rax, %rbx	#, tmp531
.L226:
	movq	288(%rsp), %rax	# D.49867._M_dataplus._M_p, D.50436
	leaq	-24(%rax), %rdi	#, D.50437
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi	#, D.50437
	je	.L235	#,
	movl	$_ZL22__gthrw_pthread_cancelm, %edx	#, tmp533
	testq	%rdx, %rdx	# tmp533
	je	.L228	#,
	movl	$-1, %edx	#, D.50448
	lock xaddl	%edx, -8(%rax)	# D.50448,
.L229:
	testl	%edx, %edx	# __result
	jg	.L235	#,
	leaq	361(%rsp), %rsi	#,
	call	_ZNSs4_Rep10_M_destroyERKSaIcE	#
	jmp	.L235	#
.L246:
	movl	-8(%rax), %edx	# MEM[(_Atomic_word *)D.50478_400 + -8B], __result
	leal	-1(%rdx), %ecx	#, tmp544
	movl	%ecx, -8(%rax)	# tmp544, MEM[(_Atomic_word *)D.50478_400 + -8B]
	jmp	.L247	#
.L318:
	leaq	-24(%rbx), %rdi	#, D.50332
	movq	%rax, %rbp	#, tmp505
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi	#, D.50332
	jne	.L342	#,
.L184:
	movq	%rbp, %rbx	# tmp505, tmp504
.L187:
	movq	320(%rsp), %rax	# D.49894._M_dataplus._M_p, D.50352
	leaq	-24(%rax), %rdi	#, D.50353
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi	#, D.50353
	jne	.L343	#,
.L195:
	movq	%rbx, %rax	# tmp504, tmp513
	jmp	.L198	#
.L325:
	movl	$_ZL22__gthrw_pthread_cancelm, %eax	#, tmp426
	testq	%rax, %rax	# tmp426
	je	.L48	#,
	movl	$-1, %eax	#, D.50046
	lock xaddl	%eax, -8(%rbx)	# D.50046,
.L49:
	testl	%eax, %eax	# __result
	jg	.L56	#,
	leaq	343(%rsp), %rsi	#,
	call	_ZNSs4_Rep10_M_destroyERKSaIcE	#
	jmp	.L56	#
.L343:
	movl	$_ZL22__gthrw_pthread_cancelm, %edx	#, tmp510
	testq	%rdx, %rdx	# tmp510
	je	.L189	#,
	movl	$-1, %edx	#, D.50364
	lock xaddl	%edx, -8(%rax)	# D.50364,
.L190:
	testl	%edx, %edx	# __result
	jg	.L195	#,
	leaq	357(%rsp), %rsi	#,
	call	_ZNSs4_Rep10_M_destroyERKSaIcE	#
	jmp	.L195	#
.L309:
	movq	%rax, %rbx	#, tmp541
	jmp	.L244	#
.L317:
	movq	%rax, %rbx	#, tmp504
	.p2align 4,,5
	jmp	.L187	#
.L255:
	movl	-8(%rax), %edx	# MEM[(_Atomic_word *)D.50499_411 + -8B], __result
	leal	-1(%rdx), %ecx	#, tmp549
	movl	%ecx, -8(%rax)	# tmp549, MEM[(_Atomic_word *)D.50499_411 + -8B]
	jmp	.L256	#
.L342:
	movl	$_ZL22__gthrw_pthread_cancelm, %eax	#, tmp501
	testq	%rax, %rax	# tmp501
	je	.L178	#,
	movl	$-1, %eax	#, D.50343
	lock xaddl	%eax, -8(%rbx)	# D.50343,
.L179:
	testl	%eax, %eax	# __result
	jg	.L184	#,
	leaq	356(%rsp), %rsi	#,
	call	_ZNSs4_Rep10_M_destroyERKSaIcE	#
	jmp	.L184	#
.L48:
	movl	-8(%rbx), %eax	# MEM[(_Atomic_word *)D.49836_25 + -8B], __result
	leal	-1(%rax), %edx	#, tmp427
	movl	%edx, -8(%rbx)	# tmp427, MEM[(_Atomic_word *)D.49836_25 + -8B]
	jmp	.L49	#
.L178:
	movl	-8(%rbx), %eax	# MEM[(_Atomic_word *)D.49836_25 + -8B], __result
	leal	-1(%rax), %edx	#, tmp502
	movl	%edx, -8(%rbx)	# tmp502, MEM[(_Atomic_word *)D.49836_25 + -8B]
	jmp	.L179	#
.L341:
	movl	$_ZL22__gthrw_pthread_cancelm, %edx	#, tmp538
	testq	%rdx, %rdx	# tmp538
	je	.L237	#,
	movl	$-1, %edx	#, D.50469
	lock xaddl	%edx, -8(%rax)	# D.50469,
.L238:
	testl	%edx, %edx	# __result
	jg	.L244	#,
	leaq	362(%rsp), %rsi	#,
	call	_ZNSs4_Rep10_M_destroyERKSaIcE	#
	jmp	.L244	#
.L228:
	movl	-8(%rax), %edx	# MEM[(_Atomic_word *)D.50436_378 + -8B], __result
	leal	-1(%rdx), %ecx	#, tmp534
	movl	%ecx, -8(%rax)	# tmp534, MEM[(_Atomic_word *)D.50436_378 + -8B]
	jmp	.L229	#
.L237:
	movl	-8(%rax), %edx	# MEM[(_Atomic_word *)D.50457_389 + -8B], __result
	leal	-1(%rdx), %ecx	#, tmp539
	movl	%ecx, -8(%rax)	# tmp539, MEM[(_Atomic_word *)D.50457_389 + -8B]
	jmp	.L238	#
.L340:
	movl	$_ZL22__gthrw_pthread_cancelm, %edx	#, tmp553
	testq	%rdx, %rdx	# tmp553
	je	.L264	#,
	movl	$-1, %edx	#, D.50532
	lock xaddl	%edx, -8(%rax)	# D.50532,
.L265:
	testl	%edx, %edx	# __result
	jg	.L270	#,
	leaq	365(%rsp), %rsi	#,
	call	_ZNSs4_Rep10_M_destroyERKSaIcE	#
	jmp	.L270	#
.L189:
	movl	-8(%rax), %edx	# MEM[(_Atomic_word *)D.50352_334 + -8B], __result
	leal	-1(%rdx), %ecx	#, tmp511
	movl	%ecx, -8(%rax)	# tmp511, MEM[(_Atomic_word *)D.50352_334 + -8B]
	jmp	.L190	#
.L264:
	movl	-8(%rax), %edx	# MEM[(_Atomic_word *)D.50520_422 + -8B], __result
	leal	-1(%rdx), %ecx	#, tmp554
	movl	%ecx, -8(%rax)	# tmp554, MEM[(_Atomic_word *)D.50520_422 + -8B]
	jmp	.L265	#
.L306:
	movq	%rax, %rbx	#, tmp560
	jmp	.L282	#
.L305:
	movq	%rax, %rbx	#, tmp565
	jmp	.L291	#
.L336:
	movl	$_ZL22__gthrw_pthread_cancelm, %edx	#, tmp494
	testq	%rdx, %rdx	# tmp494
	je	.L160	#,
	movl	$-1, %edx	#, D.50301
	lock xaddl	%edx, -8(%rax)	# D.50301,
.L161:
	testl	%edx, %edx	# __result
	jg	.L166	#,
	leaq	354(%rsp), %rsi	#,
	call	_ZNSs4_Rep10_M_destroyERKSaIcE	#
	jmp	.L166	#
.L337:
	movl	$_ZL22__gthrw_pthread_cancelm, %edx	#, tmp497
	testq	%rdx, %rdx	# tmp497
	je	.L167	#,
	movl	$-1, %edx	#, D.50322
	lock xaddl	%edx, -8(%rax)	# D.50322,
.L168:
	testl	%edx, %edx	# __result
	jg	.L38	#,
	leaq	355(%rsp), %rsi	#,
	call	_ZNSs4_Rep10_M_destroyERKSaIcE	#
	jmp	.L38	#
.L160:
	movl	-8(%rax), %edx	# MEM[(_Atomic_word *)D.50289_301 + -8B], __result
	leal	-1(%rdx), %ecx	#, tmp495
	movl	%ecx, -8(%rax)	# tmp495, MEM[(_Atomic_word *)D.50289_301 + -8B]
	jmp	.L161	#
.L167:
	movl	-8(%rax), %edx	# MEM[(_Atomic_word *)D.50310_312 + -8B], __result
	leal	-1(%rdx), %ecx	#, tmp498
	movl	%ecx, -8(%rax)	# tmp498, MEM[(_Atomic_word *)D.50310_312 + -8B]
	jmp	.L168	#
.L312:
	movq	%rax, %rbx	#, tmp526
.L217:
	movq	224(%rsp), %rax	# D.49863._M_dataplus._M_p, D.50415
	leaq	-24(%rax), %rdi	#, D.50416
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi	#, D.50416
	je	.L226	#,
	movl	$_ZL22__gthrw_pthread_cancelm, %edx	#, tmp528
	testq	%rdx, %rdx	# tmp528
	je	.L219	#,
	movl	$-1, %edx	#, D.50427
	lock xaddl	%edx, -8(%rax)	# D.50427,
.L220:
	testl	%edx, %edx	# __result
	jg	.L226	#,
	leaq	360(%rsp), %rsi	#,
	call	_ZNSs4_Rep10_M_destroyERKSaIcE	#
	jmp	.L226	#
.L313:
	movq	%rax, %rbx	#, tmp521
.L208:
	movq	208(%rsp), %rax	# D.49862._M_dataplus._M_p, D.50394
	leaq	-24(%rax), %rdi	#, D.50395
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi	#, D.50395
	je	.L217	#,
	movl	$_ZL22__gthrw_pthread_cancelm, %edx	#, tmp523
	testq	%rdx, %rdx	# tmp523
	je	.L210	#,
	movl	$-1, %edx	#, D.50406
	lock xaddl	%edx, -8(%rax)	# D.50406,
.L211:
	testl	%edx, %edx	# __result
	jg	.L217	#,
	leaq	359(%rsp), %rsi	#,
	call	_ZNSs4_Rep10_M_destroyERKSaIcE	#
	jmp	.L217	#
.L219:
	movl	-8(%rax), %edx	# MEM[(_Atomic_word *)D.50415_367 + -8B], __result
	leal	-1(%rdx), %ecx	#, tmp529
	movl	%ecx, -8(%rax)	# tmp529, MEM[(_Atomic_word *)D.50415_367 + -8B]
	jmp	.L220	#
.L210:
	movl	-8(%rax), %edx	# MEM[(_Atomic_word *)D.50394_356 + -8B], __result
	leal	-1(%rdx), %ecx	#, tmp524
	movl	%ecx, -8(%rax)	# tmp524, MEM[(_Atomic_word *)D.50394_356 + -8B]
	jmp	.L211	#
.L314:
	movq	%rax, %rbx	#, tmp464
.L84:
	movq	240(%rsp), %rax	# D.49864._M_dataplus._M_p, D.50373
	leaq	-24(%rax), %rdi	#, D.50374
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi	#, D.50374
	je	.L208	#,
	movl	$_ZL22__gthrw_pthread_cancelm, %edx	#, tmp518
	testq	%rdx, %rdx	# tmp518
	je	.L201	#,
	movl	$-1, %edx	#, D.50385
	lock xaddl	%edx, -8(%rax)	# D.50385,
.L202:
	testl	%edx, %edx	# __result
	jg	.L208	#,
	leaq	358(%rsp), %rsi	#,
	call	_ZNSs4_Rep10_M_destroyERKSaIcE	#
	jmp	.L208	#
.L315:
	movq	%rax, %rbx	#, tmp465
	movq	0(%r13), %rax	# MEM[(const struct basic_string *)<retval>_1(D)]._M_dataplus._M_p, D.50086
	leaq	-24(%rax), %rdi	#, D.50087
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi	#, D.50087
	je	.L84	#,
	movl	$_ZL22__gthrw_pthread_cancelm, %edx	#, tmp461
	testq	%rdx, %rdx	# tmp461
	je	.L77	#,
	movl	$-1, %edx	#, D.50098
	lock xaddl	%edx, -8(%rax)	# D.50098,
.L78:
	testl	%edx, %edx	# __result
	jg	.L84	#,
	leaq	345(%rsp), %rsi	#,
	call	_ZNSs4_Rep10_M_destroyERKSaIcE	#
	jmp	.L84	#
.L201:
	movl	-8(%rax), %edx	# MEM[(_Atomic_word *)D.50373_345 + -8B], __result
	leal	-1(%rdx), %ecx	#, tmp519
	movl	%ecx, -8(%rax)	# tmp519, MEM[(_Atomic_word *)D.50373_345 + -8B]
	jmp	.L202	#
.L77:
	movl	-8(%rax), %edx	# MEM[(_Atomic_word *)D.50086_200 + -8B], __result
	leal	-1(%rdx), %ecx	#, tmp462
	movl	%ecx, -8(%rax)	# tmp462, MEM[(_Atomic_word *)D.50086_200 + -8B]
	jmp	.L78	#
.L328:
	movl	$_ZL22__gthrw_pthread_cancelm, %edx	#, tmp468
	testq	%rdx, %rdx	# tmp468
	je	.L86	#,
	movl	$-1, %edx	#, D.50119
	lock xaddl	%edx, -8(%rax)	# D.50119,
.L87:
	testl	%edx, %edx	# __result
	jg	.L92	#,
	leaq	346(%rsp), %rsi	#,
	call	_ZNSs4_Rep10_M_destroyERKSaIcE	#
	jmp	.L92	#
.L329:
	movl	$_ZL22__gthrw_pthread_cancelm, %edx	#, tmp471
	testq	%rdx, %rdx	# tmp471
	je	.L94	#,
	movl	$-1, %edx	#, D.50140
	lock xaddl	%edx, -8(%rax)	# D.50140,
.L95:
	testl	%edx, %edx	# __result
	jg	.L100	#,
	leaq	347(%rsp), %rsi	#,
	call	_ZNSs4_Rep10_M_destroyERKSaIcE	#
	jmp	.L100	#
.L86:
	movl	-8(%rax), %edx	# MEM[(_Atomic_word *)D.50107_211 + -8B], __result
	leal	-1(%rdx), %ecx	#, tmp469
	movl	%ecx, -8(%rax)	# tmp469, MEM[(_Atomic_word *)D.50107_211 + -8B]
	jmp	.L87	#
.L94:
	movl	-8(%rax), %edx	# MEM[(_Atomic_word *)D.50128_222 + -8B], __result
	leal	-1(%rdx), %ecx	#, tmp472
	movl	%ecx, -8(%rax)	# tmp472, MEM[(_Atomic_word *)D.50128_222 + -8B]
	jmp	.L95	#
.L330:
	movl	$_ZL22__gthrw_pthread_cancelm, %edx	#, tmp474
	testq	%rdx, %rdx	# tmp474
	je	.L102	#,
	movl	$-1, %edx	#, D.50161
	lock xaddl	%edx, -8(%rax)	# D.50161,
.L103:
	testl	%edx, %edx	# __result
	jg	.L108	#,
	leaq	348(%rsp), %rsi	#,
	call	_ZNSs4_Rep10_M_destroyERKSaIcE	#
	jmp	.L108	#
.L331:
	movl	$_ZL22__gthrw_pthread_cancelm, %edx	#, tmp477
	testq	%rdx, %rdx	# tmp477
	je	.L110	#,
	movl	$-1, %edx	#, D.50182
	lock xaddl	%edx, -8(%rax)	# D.50182,
.L111:
	testl	%edx, %edx	# __result
	jg	.L116	#,
	leaq	349(%rsp), %rsi	#,
	call	_ZNSs4_Rep10_M_destroyERKSaIcE	#
	jmp	.L116	#
.L102:
	movl	-8(%rax), %edx	# MEM[(_Atomic_word *)D.50149_233 + -8B], __result
	leal	-1(%rdx), %ecx	#, tmp475
	movl	%ecx, -8(%rax)	# tmp475, MEM[(_Atomic_word *)D.50149_233 + -8B]
	jmp	.L103	#
.L110:
	movl	-8(%rax), %edx	# MEM[(_Atomic_word *)D.50170_244 + -8B], __result
	leal	-1(%rdx), %ecx	#, tmp478
	movl	%ecx, -8(%rax)	# tmp478, MEM[(_Atomic_word *)D.50170_244 + -8B]
	jmp	.L111	#
.L332:
	movl	$_ZL22__gthrw_pthread_cancelm, %edx	#, tmp480
	testq	%rdx, %rdx	# tmp480
	je	.L118	#,
	movl	$-1, %edx	#, D.50203
	lock xaddl	%edx, -8(%rax)	# D.50203,
.L119:
	testl	%edx, %edx	# __result
	jg	.L124	#,
	leaq	350(%rsp), %rsi	#,
	call	_ZNSs4_Rep10_M_destroyERKSaIcE	#
	jmp	.L124	#
.L333:
	movl	$_ZL22__gthrw_pthread_cancelm, %edx	#, tmp483
	testq	%rdx, %rdx	# tmp483
	je	.L126	#,
	movl	$-1, %edx	#, D.50224
	lock xaddl	%edx, -8(%rax)	# D.50224,
.L127:
	testl	%edx, %edx	# __result
	jg	.L132	#,
	leaq	351(%rsp), %rsi	#,
	call	_ZNSs4_Rep10_M_destroyERKSaIcE	#
	jmp	.L132	#
.L118:
	movl	-8(%rax), %edx	# MEM[(_Atomic_word *)D.50191_255 + -8B], __result
	leal	-1(%rdx), %ecx	#, tmp481
	movl	%ecx, -8(%rax)	# tmp481, MEM[(_Atomic_word *)D.50191_255 + -8B]
	jmp	.L119	#
.L126:
	movl	-8(%rax), %edx	# MEM[(_Atomic_word *)D.50212_266 + -8B], __result
	leal	-1(%rdx), %ecx	#, tmp484
	movl	%ecx, -8(%rax)	# tmp484, MEM[(_Atomic_word *)D.50212_266 + -8B]
	jmp	.L127	#
.L334:
	movl	$_ZL22__gthrw_pthread_cancelm, %edx	#, tmp486
	testq	%rdx, %rdx	# tmp486
	je	.L134	#,
	movl	$-1, %edx	#, D.50245
	lock xaddl	%edx, -8(%rax)	# D.50245,
.L135:
	testl	%edx, %edx	# __result
	jg	.L140	#,
	leaq	352(%rsp), %rsi	#,
	call	_ZNSs4_Rep10_M_destroyERKSaIcE	#
	jmp	.L140	#
.L335:
	movl	$_ZL22__gthrw_pthread_cancelm, %edx	#, tmp489
	testq	%rdx, %rdx	# tmp489
	je	.L142	#,
	movl	$-1, %edx	#, D.50266
	lock xaddl	%edx, -8(%rax)	# D.50266,
.L143:
	testl	%edx, %edx	# __result
	jg	.L148	#,
	leaq	353(%rsp), %rsi	#,
	call	_ZNSs4_Rep10_M_destroyERKSaIcE	#
	jmp	.L148	#
.L134:
	movl	-8(%rax), %edx	# MEM[(_Atomic_word *)D.50233_277 + -8B], __result
	leal	-1(%rdx), %ecx	#, tmp487
	movl	%ecx, -8(%rax)	# tmp487, MEM[(_Atomic_word *)D.50233_277 + -8B]
	jmp	.L135	#
.L142:
	movl	-8(%rax), %edx	# MEM[(_Atomic_word *)D.50254_288 + -8B], __result
	leal	-1(%rdx), %ecx	#, tmp490
	movl	%ecx, -8(%rax)	# tmp490, MEM[(_Atomic_word *)D.50254_288 + -8B]
	jmp	.L143	#
	.cfi_endproc
.LFE2696:
	.section	.gcc_except_table
.LLSDA2696:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2696-.LLSDACSB2696
.LLSDACSB2696:
	.uleb128 .LEHB2-.LFB2696
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB2696
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L305-.LFB2696
	.uleb128 0
	.uleb128 .LEHB4-.LFB2696
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L306-.LFB2696
	.uleb128 0
	.uleb128 .LEHB5-.LFB2696
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L316-.LFB2696
	.uleb128 0
	.uleb128 .LEHB6-.LFB2696
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L317-.LFB2696
	.uleb128 0
	.uleb128 .LEHB7-.LFB2696
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L318-.LFB2696
	.uleb128 0
	.uleb128 .LEHB8-.LFB2696
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L319-.LFB2696
	.uleb128 0
	.uleb128 .LEHB9-.LFB2696
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L307-.LFB2696
	.uleb128 0
	.uleb128 .LEHB10-.LFB2696
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L308-.LFB2696
	.uleb128 0
	.uleb128 .LEHB11-.LFB2696
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L309-.LFB2696
	.uleb128 0
	.uleb128 .LEHB12-.LFB2696
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L310-.LFB2696
	.uleb128 0
	.uleb128 .LEHB13-.LFB2696
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L311-.LFB2696
	.uleb128 0
	.uleb128 .LEHB14-.LFB2696
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L312-.LFB2696
	.uleb128 0
	.uleb128 .LEHB15-.LFB2696
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L313-.LFB2696
	.uleb128 0
	.uleb128 .LEHB16-.LFB2696
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L314-.LFB2696
	.uleb128 0
	.uleb128 .LEHB17-.LFB2696
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L315-.LFB2696
	.uleb128 0
	.uleb128 .LEHB18-.LFB2696
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB19-.LFB2696
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L305-.LFB2696
	.uleb128 0
	.uleb128 .LEHB20-.LFB2696
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB21-.LFB2696
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L307-.LFB2696
	.uleb128 0
.LLSDACSE2696:
	.section	.text.hot
	.size	_ZN12_GLOBAL__N_1L2HIESsSs.constprop.43, .-_ZN12_GLOBAL__N_1L2HIESsSs.constprop.43
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB2319:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2319
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	xorl	%edi, %edi	#
	subq	$112, %rsp	#,
	.cfi_def_cfa_offset 128
.LEHB22:
	call	_ZNSt8ios_base15sync_with_stdioEb	#
	leaq	96(%rsp), %rsi	#,
	movl	$_ZSt3cin, %edi	#,
	call	_ZNSi10_M_extractImEERSiRT_	#
.LEHE22:
	jmp	.L398	#
	.p2align 4,,10
	.p2align 3
.L386:
	leaq	16(%rsp), %rsi	#,
	movl	$_ZSt3cin, %edi	#,
	movq	$_ZNSs4_Rep20_S_empty_rep_storageE+24, 16(%rsp)	#, MEM[(struct _Alloc_hider *)&A]._M_p
	movq	$_ZNSs4_Rep20_S_empty_rep_storageE+24, 32(%rsp)	#, MEM[(struct _Alloc_hider *)&B]._M_p
	leaq	32(%rsp), %rbx	#, tmp162
.LEHB23:
	call	_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_E	#
	leaq	32(%rsp), %rbx	#, tmp162
	movq	%rax, %rdi	# D.49699,
	movq	%rbx, %rsi	# tmp162,
	call	_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_E	#
	leaq	80(%rsp), %rdi	#,
	movq	%rbx, %rsi	# tmp162,
	call	_ZNSsC1ERKSs	#
.LEHE23:
	leaq	16(%rsp), %rsi	#,
	leaq	64(%rsp), %rdi	#,
.LEHB24:
	call	_ZNSsC1ERKSs	#
.LEHE24:
	leaq	80(%rsp), %rdx	#,
	leaq	64(%rsp), %rsi	#,
	leaq	48(%rsp), %rdi	#,
.LEHB25:
	call	_ZN12_GLOBAL__N_1L2HIESsSs.constprop.43	#
.LEHE25:
	movq	64(%rsp), %rax	# D.49697._M_dataplus._M_p, D.50781
	leaq	-24(%rax), %rdi	#, D.50782
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi	#, D.50782
	jne	.L400	#,
.L357:
	movq	80(%rsp), %rax	# D.49698._M_dataplus._M_p, D.50802
	leaq	-24(%rax), %rdi	#, D.50803
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi	#, D.50803
	jne	.L401	#,
.L365:
	movq	48(%rsp), %rax	# R._M_dataplus._M_p, R._M_dataplus._M_p
	movl	$_ZSt4cout, %edi	#,
	movq	-24(%rax), %rsi	# MEM[(struct _Rep *)D.49693_6 + -24B].D.12153._M_length, MEM[(struct _Rep *)D.49693_6 + -24B].D.12153._M_length
.LEHB26:
	call	_ZNSo9_M_insertImEERSoT_	#
	leaq	108(%rsp), %rsi	#,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# D.49692,
	movb	$10, 108(%rsp)	#, __c
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l	#
	movq	48(%rsp), %rsi	# R._M_dataplus._M_p, D.50830
	movq	%rax, %rdi	# D.50825,
	movq	-24(%rsi), %rdx	# MEM[(struct _Rep *)D.50830_63 + -24B].D.12153._M_length, MEM[(struct _Rep *)D.50830_63 + -24B].D.12153._M_length
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l	#
	leaq	108(%rsp), %rsi	#,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# D.50833,
	movb	$10, 108(%rsp)	#, __c
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l	#
.LEHE26:
	movq	48(%rsp), %rax	# R._M_dataplus._M_p, D.50839
	leaq	-24(%rax), %rdi	#, D.50840
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi	#, D.50840
	jne	.L402	#,
.L373:
	movq	32(%rsp), %rax	# B._M_dataplus._M_p, D.50860
	leaq	-24(%rax), %rdi	#, D.50861
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi	#, D.50861
	jne	.L403	#,
.L381:
	movq	16(%rsp), %rax	# A._M_dataplus._M_p, D.50881
	leaq	-24(%rax), %rdi	#, D.50882
	cmpq	$_ZNSs4_Rep20_S_empty_rep_storageE, %rdi	#, D.50882
	jne	.L404	#,
.L398:
	movq	96(%rsp), %rax	# z, z.3
	leaq	-1(%rax), %rdx	#, tmp143
	testq	%rax, %rax	# z.3
	movq	%rdx, 96(%rsp)	# tmp143, z
	jne	.L386	#,
	addq	$112, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax	#
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret
.L400:
	.cfi_restore_state
	movl	$_ZL22__gthrw_pthread_cancelm, %edx	#, tmp123
	testq	%rdx, %rdx	# tmp123
	je	.L351	#,
	orl	$-1, %edx	#, D.50793
	lock xaddl	%edx, -8(%rax)	# D.50793,
.L352:
	testl	%edx, %edx	# __result
	jg	.L357	#,
	leaq	106(%rsp), %rsi	#,
	call	_ZNSs4_Rep10_M_destroyERKSaIcE	#
	jmp	.L357	#
.L404:
	movl	$_ZL22__gthrw_pthread_cancelm, %edx	#, tmp140
	testq	%rdx, %rdx	# tmp140
	je	.L383	#,
	orl	$-1, %edx	#, D.50893
	lock xaddl	%edx, -8(%rax)	# D.50893,
.L384:
	testl	%edx, %edx	# __result
	jg	.L398	#,
	leaq	111(%rsp), %rsi	#,
	call	_ZNSs4_Rep10_M_destroyERKSaIcE	#
	jmp	.L398	#
.L402:
	movl	$_ZL22__gthrw_pthread_cancelm, %edx	#, tmp134
	testq	%rdx, %rdx	# tmp134
	je	.L367	#,
	orl	$-1, %edx	#, D.50851
	lock xaddl	%edx, -8(%rax)	# D.50851,
.L368:
	testl	%edx, %edx	# __result
	jg	.L373	#,
	leaq	109(%rsp), %rsi	#,
	call	_ZNSs4_Rep10_M_destroyERKSaIcE	#
	jmp	.L373	#
.L403:
	movl	$_ZL22__gthrw_pthread_cancelm, %edx	#, tmp137
	testq	%rdx, %rdx	# tmp137
	je	.L375	#,
	orl	$-1, %edx	#, D.50872
	lock xaddl	%edx, -8(%rax)	# D.50872,
.L376:
	testl	%edx, %edx	# __result
	jg	.L381	#,
	leaq	110(%rsp), %rsi	#,
	call	_ZNSs4_Rep10_M_destroyERKSaIcE	#
	jmp	.L381	#
.L401:
	movl	$_ZL22__gthrw_pthread_cancelm, %edx	#, tmp126
	testq	%rdx, %rdx	# tmp126
	je	.L359	#,
	orl	$-1, %edx	#, D.50814
	lock xaddl	%edx, -8(%rax)	# D.50814,
.L360:
	testl	%edx, %edx	# __result
	jg	.L365	#,
	leaq	107(%rsp), %rsi	#,
	call	_ZNSs4_Rep10_M_destroyERKSaIcE	#
	jmp	.L365	#
.L392:
.L390:
	movq	%rbx, %rdi	# tmp162,
	movq	%rax, 8(%rsp)	#,
	call	_ZNSsD1Ev	#
	leaq	16(%rsp), %rdi	#,
	call	_ZNSsD1Ev	#
	movq	8(%rsp), %rax	#,
	movq	%rax, %rdi	# tmp150,
.LEHB27:
	call	_Unwind_Resume	#
.LEHE27:
.L351:
	movl	-8(%rax), %edx	# MEM[(_Atomic_word *)D.50781_40 + -8B], __result
	leal	-1(%rdx), %ecx	#, tmp124
	movl	%ecx, -8(%rax)	# tmp124, MEM[(_Atomic_word *)D.50781_40 + -8B]
	jmp	.L352	#
.L367:
	movl	-8(%rax), %edx	# MEM[(_Atomic_word *)D.50839_69 + -8B], __result
	leal	-1(%rdx), %ecx	#, tmp135
	movl	%ecx, -8(%rax)	# tmp135, MEM[(_Atomic_word *)D.50839_69 + -8B]
	jmp	.L368	#
.L383:
	movl	-8(%rax), %edx	# MEM[(_Atomic_word *)D.50881_119 + -8B], __result
	leal	-1(%rdx), %ecx	#, tmp141
	movl	%ecx, -8(%rax)	# tmp141, MEM[(_Atomic_word *)D.50881_119 + -8B]
	jmp	.L384	#
.L375:
	movl	-8(%rax), %edx	# MEM[(_Atomic_word *)D.50860_80 + -8B], __result
	leal	-1(%rdx), %ecx	#, tmp138
	movl	%ecx, -8(%rax)	# tmp138, MEM[(_Atomic_word *)D.50860_80 + -8B]
	jmp	.L376	#
.L395:
	leaq	64(%rsp), %rdi	#,
	movq	%rax, 8(%rsp)	#,
	call	_ZNSsD1Ev	#
	movq	8(%rsp), %rax	#,
.L389:
	leaq	80(%rsp), %rdi	#,
	movq	%rax, 8(%rsp)	#,
	call	_ZNSsD1Ev	#
	movq	8(%rsp), %rax	#,
	jmp	.L390	#
.L394:
	jmp	.L389	#
.L393:
	leaq	48(%rsp), %rdi	#,
	movq	%rax, 8(%rsp)	#,
	call	_ZNSsD1Ev	#
	movq	8(%rsp), %rax	#,
	jmp	.L390	#
.L359:
	movl	-8(%rax), %edx	# MEM[(_Atomic_word *)D.50802_51 + -8B], __result
	leal	-1(%rdx), %ecx	#, tmp127
	movl	%ecx, -8(%rax)	# tmp127, MEM[(_Atomic_word *)D.50802_51 + -8B]
	jmp	.L360	#
	.cfi_endproc
.LFE2319:
	.section	.gcc_except_table
.LLSDA2319:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2319-.LLSDACSB2319
.LLSDACSB2319:
	.uleb128 .LEHB22-.LFB2319
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB23-.LFB2319
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L392-.LFB2319
	.uleb128 0
	.uleb128 .LEHB24-.LFB2319
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L394-.LFB2319
	.uleb128 0
	.uleb128 .LEHB25-.LFB2319
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L395-.LFB2319
	.uleb128 0
	.uleb128 .LEHB26-.LFB2319
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L393-.LFB2319
	.uleb128 0
	.uleb128 .LEHB27-.LFB2319
	.uleb128 .LEHE27-.LEHB27
	.uleb128 0
	.uleb128 0
.LLSDACSE2319:
	.section	.text.startup
	.size	main, .-main
	.p2align 4,,15
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB2651:
	.cfi_startproc
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
	movl	$_ZStL8__ioinit, %edi	#,
	call	_ZNSt8ios_base4InitC1Ev	#
	movl	$__dso_handle, %edx	#,
	movl	$_ZStL8__ioinit, %esi	#,
	movl	$_ZNSt8ios_base4InitD1Ev, %edi	#,
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 8
	jmp	__cxa_atexit	#
	.cfi_endproc
.LFE2651:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.ctors,"aw",@progbits
	.align 8
	.quad	_GLOBAL__sub_I_main
	.local	_ZZN12_GLOBAL__N_1L3LCSERKSsS1_E1C
	.comm	_ZZN12_GLOBAL__N_1L3LCSERKSsS1_E1C,12004,32
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
