	.file	"SuchBounce.cpp"
	.section	.text._ZNSt9exceptionC2Ev,"axG",@progbits,_ZNSt9exceptionC5Ev,comdat
	.align 2
	.weak	_ZNSt9exceptionC2Ev
	.type	_ZNSt9exceptionC2Ev, @function
_ZNSt9exceptionC2Ev:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$_ZTVSt9exception+16, (%rax)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	_ZNSt9exceptionC2Ev, .-_ZNSt9exceptionC2Ev
	.weak	_ZNSt9exceptionC1Ev
	.set	_ZNSt9exceptionC1Ev,_ZNSt9exceptionC2Ev
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.section	.text._ZNSt11char_traitsIcE12to_char_typeERKi,"axG",@progbits,_ZNSt11char_traitsIcE12to_char_typeERKi,comdat
	.weak	_ZNSt11char_traitsIcE12to_char_typeERKi
	.type	_ZNSt11char_traitsIcE12to_char_typeERKi, @function
_ZNSt11char_traitsIcE12to_char_typeERKi:
.LFB281:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE281:
	.size	_ZNSt11char_traitsIcE12to_char_typeERKi, .-_ZNSt11char_traitsIcE12to_char_typeERKi
	.section	.text._ZNSt11char_traitsIcE11eq_int_typeERKiS2_,"axG",@progbits,_ZNSt11char_traitsIcE11eq_int_typeERKiS2_,comdat
	.weak	_ZNSt11char_traitsIcE11eq_int_typeERKiS2_
	.type	_ZNSt11char_traitsIcE11eq_int_typeERKiS2_, @function
_ZNSt11char_traitsIcE11eq_int_typeERKiS2_:
.LFB283:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	sete	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE283:
	.size	_ZNSt11char_traitsIcE11eq_int_typeERKiS2_, .-_ZNSt11char_traitsIcE11eq_int_typeERKiS2_
	.section	.text._ZNSt11char_traitsIcE3eofEv,"axG",@progbits,_ZNSt11char_traitsIcE3eofEv,comdat
	.weak	_ZNSt11char_traitsIcE3eofEv
	.type	_ZNSt11char_traitsIcE3eofEv, @function
_ZNSt11char_traitsIcE3eofEv:
.LFB284:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$-1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE284:
	.size	_ZNSt11char_traitsIcE3eofEv, .-_ZNSt11char_traitsIcE3eofEv
	.section	.text._ZnwmPv,"axG",@progbits,_ZnwmPv,comdat
	.weak	_ZnwmPv
	.type	_ZnwmPv, @function
_ZnwmPv:
.LFB378:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE378:
	.size	_ZnwmPv, .-_ZnwmPv
	.section	.text._ZdlPvS_,"axG",@progbits,_ZdlPvS_,comdat
	.weak	_ZdlPvS_
	.type	_ZdlPvS_, @function
_ZdlPvS_:
.LFB380:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE380:
	.size	_ZdlPvS_, .-_ZdlPvS_
	.section	.rodata
.LC0:
	.string	"stod"
	.section	.text._ZSt4stodRKSsPm,"axG",@progbits,_ZSt4stodRKSsPm,comdat
	.weak	_ZSt4stodRKSsPm
	.type	_ZSt4stodRKSsPm, @function
_ZSt4stodRKSsPm:
.LFB671:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSs5c_strEv
	movq	-16(%rbp), %rdx
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$.LC0, %esi
	movl	$strtod, %edi
	call	_ZN9__gnu_cxx6__stoaIddcIEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	movsd	%xmm0, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -24(%rbp)
	movsd	-24(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE671:
	.size	_ZSt4stodRKSsPm, .-_ZSt4stodRKSsPm
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.text._ZN2cl5ErrorC2EiPKc,"axG",@progbits,_ZN2cl5ErrorC5EiPKc,comdat
	.align 2
	.weak	_ZN2cl5ErrorC2EiPKc
	.type	_ZN2cl5ErrorC2EiPKc, @function
_ZN2cl5ErrorC2EiPKc:
.LFB2556:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt9exceptionC2Ev
	movq	-8(%rbp), %rax
	movq	$_ZTVN2cl5ErrorE+16, (%rax)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 16(%rax)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2556:
	.size	_ZN2cl5ErrorC2EiPKc, .-_ZN2cl5ErrorC2EiPKc
	.weak	_ZN2cl5ErrorC1EiPKc
	.set	_ZN2cl5ErrorC1EiPKc,_ZN2cl5ErrorC2EiPKc
	.section	.text._ZN2cl5ErrorD2Ev,"axG",@progbits,_ZN2cl5ErrorD5Ev,comdat
	.align 2
	.weak	_ZN2cl5ErrorD2Ev
	.type	_ZN2cl5ErrorD2Ev, @function
_ZN2cl5ErrorD2Ev:
.LFB2559:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$_ZTVN2cl5ErrorE+16, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt9exceptionD2Ev
	movl	$0, %eax
	testl	%eax, %eax
	je	.L14
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2559:
	.size	_ZN2cl5ErrorD2Ev, .-_ZN2cl5ErrorD2Ev
	.weak	_ZN2cl5ErrorD1Ev
	.set	_ZN2cl5ErrorD1Ev,_ZN2cl5ErrorD2Ev
	.section	.text._ZN2cl5ErrorD0Ev,"axG",@progbits,_ZN2cl5ErrorD0Ev,comdat
	.align 2
	.weak	_ZN2cl5ErrorD0Ev
	.type	_ZN2cl5ErrorD0Ev, @function
_ZN2cl5ErrorD0Ev:
.LFB2561:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl5ErrorD1Ev
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2561:
	.size	_ZN2cl5ErrorD0Ev, .-_ZN2cl5ErrorD0Ev
	.section	.rodata
.LC1:
	.string	"empty"
	.section	.text._ZNK2cl5Error4whatEv,"axG",@progbits,_ZNK2cl5Error4whatEv,comdat
	.align 2
	.weak	_ZNK2cl5Error4whatEv
	.type	_ZNK2cl5Error4whatEv, @function
_ZNK2cl5Error4whatEv:
.LFB2562:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L20
	movl	$.LC1, %eax
	jmp	.L21
.L20:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
.L21:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2562:
	.size	_ZNK2cl5Error4whatEv, .-_ZNK2cl5Error4whatEv
	.text
	.type	_ZN2cl6detailL10errHandlerEiPKc, @function
_ZN2cl6detailL10errHandlerEiPKc:
.LFB2564:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L23
	movl	$24, %edi
	call	__cxa_allocate_exception
	movq	%rax, %rbx
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rbx, %rdi
	call	_ZN2cl5ErrorC1EiPKc
	movl	$_ZN2cl5ErrorD1Ev, %edx
	movl	$_ZTIN2cl5ErrorE, %esi
	movq	%rbx, %rdi
	call	__cxa_throw
.L23:
	movl	-20(%rbp), %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2564:
	.size	_ZN2cl6detailL10errHandlerEiPKc, .-_ZN2cl6detailL10errHandlerEiPKc
	.section	.text._ZN2cl6detail16ReferenceHandlerIP13_cl_device_idE6retainES3_,"axG",@progbits,_ZN2cl6detail16ReferenceHandlerIP13_cl_device_idE6retainES3_,comdat
	.weak	_ZN2cl6detail16ReferenceHandlerIP13_cl_device_idE6retainES3_
	.type	_ZN2cl6detail16ReferenceHandlerIP13_cl_device_idE6retainES3_, @function
_ZN2cl6detail16ReferenceHandlerIP13_cl_device_idE6retainES3_:
.LFB2591:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	clRetainDevice
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2591:
	.size	_ZN2cl6detail16ReferenceHandlerIP13_cl_device_idE6retainES3_, .-_ZN2cl6detail16ReferenceHandlerIP13_cl_device_idE6retainES3_
	.section	.text._ZN2cl6detail16ReferenceHandlerIP13_cl_device_idE7releaseES3_,"axG",@progbits,_ZN2cl6detail16ReferenceHandlerIP13_cl_device_idE7releaseES3_,comdat
	.weak	_ZN2cl6detail16ReferenceHandlerIP13_cl_device_idE7releaseES3_
	.type	_ZN2cl6detail16ReferenceHandlerIP13_cl_device_idE7releaseES3_, @function
_ZN2cl6detail16ReferenceHandlerIP13_cl_device_idE7releaseES3_:
.LFB2592:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	clReleaseDevice
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2592:
	.size	_ZN2cl6detail16ReferenceHandlerIP13_cl_device_idE7releaseES3_, .-_ZN2cl6detail16ReferenceHandlerIP13_cl_device_idE7releaseES3_
	.section	.text._ZN2cl6detail16ReferenceHandlerIP15_cl_platform_idE7releaseES3_,"axG",@progbits,_ZN2cl6detail16ReferenceHandlerIP15_cl_platform_idE7releaseES3_,comdat
	.weak	_ZN2cl6detail16ReferenceHandlerIP15_cl_platform_idE7releaseES3_
	.type	_ZN2cl6detail16ReferenceHandlerIP15_cl_platform_idE7releaseES3_, @function
_ZN2cl6detail16ReferenceHandlerIP15_cl_platform_idE7releaseES3_:
.LFB2594:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2594:
	.size	_ZN2cl6detail16ReferenceHandlerIP15_cl_platform_idE7releaseES3_, .-_ZN2cl6detail16ReferenceHandlerIP15_cl_platform_idE7releaseES3_
	.section	.text._ZN2cl6detail16ReferenceHandlerIP11_cl_contextE6retainES3_,"axG",@progbits,_ZN2cl6detail16ReferenceHandlerIP11_cl_contextE6retainES3_,comdat
	.weak	_ZN2cl6detail16ReferenceHandlerIP11_cl_contextE6retainES3_
	.type	_ZN2cl6detail16ReferenceHandlerIP11_cl_contextE6retainES3_, @function
_ZN2cl6detail16ReferenceHandlerIP11_cl_contextE6retainES3_:
.LFB2595:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	clRetainContext
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2595:
	.size	_ZN2cl6detail16ReferenceHandlerIP11_cl_contextE6retainES3_, .-_ZN2cl6detail16ReferenceHandlerIP11_cl_contextE6retainES3_
	.section	.text._ZN2cl6detail16ReferenceHandlerIP11_cl_contextE7releaseES3_,"axG",@progbits,_ZN2cl6detail16ReferenceHandlerIP11_cl_contextE7releaseES3_,comdat
	.weak	_ZN2cl6detail16ReferenceHandlerIP11_cl_contextE7releaseES3_
	.type	_ZN2cl6detail16ReferenceHandlerIP11_cl_contextE7releaseES3_, @function
_ZN2cl6detail16ReferenceHandlerIP11_cl_contextE7releaseES3_:
.LFB2596:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	clReleaseContext
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2596:
	.size	_ZN2cl6detail16ReferenceHandlerIP11_cl_contextE7releaseES3_, .-_ZN2cl6detail16ReferenceHandlerIP11_cl_contextE7releaseES3_
	.section	.text._ZN2cl6detail16ReferenceHandlerIP17_cl_command_queueE7releaseES3_,"axG",@progbits,_ZN2cl6detail16ReferenceHandlerIP17_cl_command_queueE7releaseES3_,comdat
	.weak	_ZN2cl6detail16ReferenceHandlerIP17_cl_command_queueE7releaseES3_
	.type	_ZN2cl6detail16ReferenceHandlerIP17_cl_command_queueE7releaseES3_, @function
_ZN2cl6detail16ReferenceHandlerIP17_cl_command_queueE7releaseES3_:
.LFB2598:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	clReleaseCommandQueue
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2598:
	.size	_ZN2cl6detail16ReferenceHandlerIP17_cl_command_queueE7releaseES3_, .-_ZN2cl6detail16ReferenceHandlerIP17_cl_command_queueE7releaseES3_
	.section	.text._ZN2cl6detail16ReferenceHandlerIP7_cl_memE6retainES3_,"axG",@progbits,_ZN2cl6detail16ReferenceHandlerIP7_cl_memE6retainES3_,comdat
	.weak	_ZN2cl6detail16ReferenceHandlerIP7_cl_memE6retainES3_
	.type	_ZN2cl6detail16ReferenceHandlerIP7_cl_memE6retainES3_, @function
_ZN2cl6detail16ReferenceHandlerIP7_cl_memE6retainES3_:
.LFB2599:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	clRetainMemObject
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2599:
	.size	_ZN2cl6detail16ReferenceHandlerIP7_cl_memE6retainES3_, .-_ZN2cl6detail16ReferenceHandlerIP7_cl_memE6retainES3_
	.section	.text._ZN2cl6detail16ReferenceHandlerIP7_cl_memE7releaseES3_,"axG",@progbits,_ZN2cl6detail16ReferenceHandlerIP7_cl_memE7releaseES3_,comdat
	.weak	_ZN2cl6detail16ReferenceHandlerIP7_cl_memE7releaseES3_
	.type	_ZN2cl6detail16ReferenceHandlerIP7_cl_memE7releaseES3_, @function
_ZN2cl6detail16ReferenceHandlerIP7_cl_memE7releaseES3_:
.LFB2600:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	clReleaseMemObject
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2600:
	.size	_ZN2cl6detail16ReferenceHandlerIP7_cl_memE7releaseES3_, .-_ZN2cl6detail16ReferenceHandlerIP7_cl_memE7releaseES3_
	.section	.text._ZN2cl6detail16ReferenceHandlerIP11_cl_programE7releaseES3_,"axG",@progbits,_ZN2cl6detail16ReferenceHandlerIP11_cl_programE7releaseES3_,comdat
	.weak	_ZN2cl6detail16ReferenceHandlerIP11_cl_programE7releaseES3_
	.type	_ZN2cl6detail16ReferenceHandlerIP11_cl_programE7releaseES3_, @function
_ZN2cl6detail16ReferenceHandlerIP11_cl_programE7releaseES3_:
.LFB2604:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	clReleaseProgram
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2604:
	.size	_ZN2cl6detail16ReferenceHandlerIP11_cl_programE7releaseES3_, .-_ZN2cl6detail16ReferenceHandlerIP11_cl_programE7releaseES3_
	.section	.text._ZN2cl6detail16ReferenceHandlerIP10_cl_kernelE7releaseES3_,"axG",@progbits,_ZN2cl6detail16ReferenceHandlerIP10_cl_kernelE7releaseES3_,comdat
	.weak	_ZN2cl6detail16ReferenceHandlerIP10_cl_kernelE7releaseES3_
	.type	_ZN2cl6detail16ReferenceHandlerIP10_cl_kernelE7releaseES3_, @function
_ZN2cl6detail16ReferenceHandlerIP10_cl_kernelE7releaseES3_:
.LFB2606:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	clReleaseKernel
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2606:
	.size	_ZN2cl6detail16ReferenceHandlerIP10_cl_kernelE7releaseES3_, .-_ZN2cl6detail16ReferenceHandlerIP10_cl_kernelE7releaseES3_
	.section	.text._ZN2cl6detail16ReferenceHandlerIP9_cl_eventE7releaseES3_,"axG",@progbits,_ZN2cl6detail16ReferenceHandlerIP9_cl_eventE7releaseES3_,comdat
	.weak	_ZN2cl6detail16ReferenceHandlerIP9_cl_eventE7releaseES3_
	.type	_ZN2cl6detail16ReferenceHandlerIP9_cl_eventE7releaseES3_, @function
_ZN2cl6detail16ReferenceHandlerIP9_cl_eventE7releaseES3_:
.LFB2608:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	clReleaseEvent
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2608:
	.size	_ZN2cl6detail16ReferenceHandlerIP9_cl_eventE7releaseES3_, .-_ZN2cl6detail16ReferenceHandlerIP9_cl_eventE7releaseES3_
	.text
	.type	_ZN2cl6detailL10getVersionEPKc, @function
_ZN2cl6detailL10getVersionEPKc:
.LFB2609:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -8(%rbp)
	movl	$7, -4(%rbp)
	jmp	.L48
.L49:
	movl	-12(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	addl	%eax, -12(%rbp)
	addl	$1, -4(%rbp)
.L48:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L49
	addl	$1, -4(%rbp)
	jmp	.L50
.L51:
	movl	-8(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	addl	%eax, -8(%rbp)
	addl	$1, -4(%rbp)
.L50:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	jne	.L51
	movl	-12(%rbp), %eax
	sall	$16, %eax
	orl	-8(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2609:
	.size	_ZN2cl6detailL10getVersionEPKc, .-_ZN2cl6detailL10getVersionEPKc
	.type	_ZN2cl6detailL18getPlatformVersionEP15_cl_platform_id, @function
_ZN2cl6detailL18getPlatformVersionEP15_cl_platform_id:
.LFB2610:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	$0, -32(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movl	$2305, %esi
	movq	%rax, %rdi
	call	clGetPlatformInfo
	movq	-32(%rbp), %rax
	leaq	15(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ebx
	movl	$0, %edx
	divq	%rbx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rdx
	leaq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rsi, %r8
	movl	$2305, %esi
	movq	%rax, %rdi
	call	clGetPlatformInfo
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6detailL10getVersionEPKc
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2610:
	.size	_ZN2cl6detailL18getPlatformVersionEP15_cl_platform_id, .-_ZN2cl6detailL18getPlatformVersionEP15_cl_platform_id
	.type	_ZN2cl6detailL24getDevicePlatformVersionEP13_cl_device_id, @function
_ZN2cl6detailL24getDevicePlatformVersionEP13_cl_device_id:
.LFB2611:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$8, %edx
	movl	$4145, %esi
	movq	%rax, %rdi
	call	clGetDeviceInfo
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6detailL18getPlatformVersionEP15_cl_platform_id
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2611:
	.size	_ZN2cl6detailL24getDevicePlatformVersionEP13_cl_device_id, .-_ZN2cl6detailL24getDevicePlatformVersionEP13_cl_device_id
	.section	.text._ZN2cl6detail7WrapperIP13_cl_device_idE20isReferenceCountableES3_,"axG",@progbits,_ZN2cl6detail7WrapperIP13_cl_device_idE20isReferenceCountableES3_,comdat
	.weak	_ZN2cl6detail7WrapperIP13_cl_device_idE20isReferenceCountableES3_
	.type	_ZN2cl6detail7WrapperIP13_cl_device_idE20isReferenceCountableES3_, @function
_ZN2cl6detail7WrapperIP13_cl_device_idE20isReferenceCountableES3_:
.LFB2622:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movb	$0, -5(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L58
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6detailL24getDevicePlatformVersionEP13_cl_device_id
	movl	%eax, -4(%rbp)
	cmpl	$65537, -4(%rbp)
	jle	.L59
	movb	$1, -5(%rbp)
.L59:
.L58:
	movzbl	-5(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2622:
	.size	_ZN2cl6detail7WrapperIP13_cl_device_idE20isReferenceCountableES3_, .-_ZN2cl6detail7WrapperIP13_cl_device_idE20isReferenceCountableES3_
	.section	.text._ZN2cl6detail7WrapperIP13_cl_device_idEC2Ev,"axG",@progbits,_ZN2cl6detail7WrapperIP13_cl_device_idEC5Ev,comdat
	.align 2
	.weak	_ZN2cl6detail7WrapperIP13_cl_device_idEC2Ev
	.type	_ZN2cl6detail7WrapperIP13_cl_device_idEC2Ev, @function
_ZN2cl6detail7WrapperIP13_cl_device_idEC2Ev:
.LFB2624:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movb	$0, 8(%rax)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2624:
	.size	_ZN2cl6detail7WrapperIP13_cl_device_idEC2Ev, .-_ZN2cl6detail7WrapperIP13_cl_device_idEC2Ev
	.weak	_ZN2cl6detail7WrapperIP13_cl_device_idEC1Ev
	.set	_ZN2cl6detail7WrapperIP13_cl_device_idEC1Ev,_ZN2cl6detail7WrapperIP13_cl_device_idEC2Ev
	.section	.text._ZN2cl6detail7WrapperIP13_cl_device_idEC2ERKS3_,"axG",@progbits,_ZN2cl6detail7WrapperIP13_cl_device_idEC5ERKS3_,comdat
	.align 2
	.weak	_ZN2cl6detail7WrapperIP13_cl_device_idEC2ERKS3_
	.type	_ZN2cl6detail7WrapperIP13_cl_device_idEC2ERKS3_, @function
_ZN2cl6detail7WrapperIP13_cl_device_idEC2ERKS3_:
.LFB2627:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movb	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZN2cl6detail7WrapperIP13_cl_device_idE20isReferenceCountableES3_
	movq	-8(%rbp), %rdx
	movb	%al, 8(%rdx)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2627:
	.size	_ZN2cl6detail7WrapperIP13_cl_device_idEC2ERKS3_, .-_ZN2cl6detail7WrapperIP13_cl_device_idEC2ERKS3_
	.weak	_ZN2cl6detail7WrapperIP13_cl_device_idEC1ERKS3_
	.set	_ZN2cl6detail7WrapperIP13_cl_device_idEC1ERKS3_,_ZN2cl6detail7WrapperIP13_cl_device_idEC2ERKS3_
	.section	.text._ZN2cl6detail7WrapperIP13_cl_device_idED2Ev,"axG",@progbits,_ZN2cl6detail7WrapperIP13_cl_device_idED5Ev,comdat
	.align 2
	.weak	_ZN2cl6detail7WrapperIP13_cl_device_idED2Ev
	.type	_ZN2cl6detail7WrapperIP13_cl_device_idED2Ev, @function
_ZN2cl6detail7WrapperIP13_cl_device_idED2Ev:
.LFB2630:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2630
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L63
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK2cl6detail7WrapperIP13_cl_device_idE7releaseEv
.L63:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2630:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZN2cl6detail7WrapperIP13_cl_device_idED2Ev,"aG",@progbits,_ZN2cl6detail7WrapperIP13_cl_device_idED5Ev,comdat
.LLSDA2630:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2630-.LLSDACSB2630
.LLSDACSB2630:
.LLSDACSE2630:
	.section	.text._ZN2cl6detail7WrapperIP13_cl_device_idED2Ev,"axG",@progbits,_ZN2cl6detail7WrapperIP13_cl_device_idED5Ev,comdat
	.size	_ZN2cl6detail7WrapperIP13_cl_device_idED2Ev, .-_ZN2cl6detail7WrapperIP13_cl_device_idED2Ev
	.weak	_ZN2cl6detail7WrapperIP13_cl_device_idED1Ev
	.set	_ZN2cl6detail7WrapperIP13_cl_device_idED1Ev,_ZN2cl6detail7WrapperIP13_cl_device_idED2Ev
	.section	.rodata
.LC2:
	.string	"Retain Object"
	.section	.text._ZN2cl6detail7WrapperIP13_cl_device_idEC2ERKS4_,"axG",@progbits,_ZN2cl6detail7WrapperIP13_cl_device_idEC5ERKS4_,comdat
	.align 2
	.weak	_ZN2cl6detail7WrapperIP13_cl_device_idEC2ERKS4_
	.type	_ZN2cl6detail7WrapperIP13_cl_device_idEC2ERKS4_, @function
_ZN2cl6detail7WrapperIP13_cl_device_idEC2ERKS4_:
.LFB2633:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZN2cl6detail7WrapperIP13_cl_device_idE20isReferenceCountableES3_
	movq	-8(%rbp), %rdx
	movb	%al, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L65
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK2cl6detail7WrapperIP13_cl_device_idE6retainEv
	movl	$.LC2, %esi
	movl	%eax, %edi
	call	_ZN2cl6detailL10errHandlerEiPKc
.L65:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2633:
	.size	_ZN2cl6detail7WrapperIP13_cl_device_idEC2ERKS4_, .-_ZN2cl6detail7WrapperIP13_cl_device_idEC2ERKS4_
	.weak	_ZN2cl6detail7WrapperIP13_cl_device_idEC1ERKS4_
	.set	_ZN2cl6detail7WrapperIP13_cl_device_idEC1ERKS4_,_ZN2cl6detail7WrapperIP13_cl_device_idEC2ERKS4_
	.section	.rodata
.LC3:
	.string	"Release Object"
	.section	.text._ZN2cl6detail7WrapperIP13_cl_device_idEaSERKS3_,"axG",@progbits,_ZN2cl6detail7WrapperIP13_cl_device_idEaSERKS3_,comdat
	.align 2
	.weak	_ZN2cl6detail7WrapperIP13_cl_device_idEaSERKS3_
	.type	_ZN2cl6detail7WrapperIP13_cl_device_idEaSERKS3_, @function
_ZN2cl6detail7WrapperIP13_cl_device_idEaSERKS3_:
.LFB2636:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L68
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK2cl6detail7WrapperIP13_cl_device_idE7releaseEv
	movl	$.LC3, %esi
	movl	%eax, %edi
	call	_ZN2cl6detailL10errHandlerEiPKc
.L68:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZN2cl6detail7WrapperIP13_cl_device_idE20isReferenceCountableES3_
	movq	-8(%rbp), %rdx
	movb	%al, 8(%rdx)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2636:
	.size	_ZN2cl6detail7WrapperIP13_cl_device_idEaSERKS3_, .-_ZN2cl6detail7WrapperIP13_cl_device_idEaSERKS3_
	.section	.text._ZNK2cl6detail7WrapperIP13_cl_device_idEclEv,"axG",@progbits,_ZNK2cl6detail7WrapperIP13_cl_device_idEclEv,comdat
	.align 2
	.weak	_ZNK2cl6detail7WrapperIP13_cl_device_idEclEv
	.type	_ZNK2cl6detail7WrapperIP13_cl_device_idEclEv, @function
_ZNK2cl6detail7WrapperIP13_cl_device_idEclEv:
.LFB2637:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2637:
	.size	_ZNK2cl6detail7WrapperIP13_cl_device_idEclEv, .-_ZNK2cl6detail7WrapperIP13_cl_device_idEclEv
	.section	.text._ZNK2cl6detail7WrapperIP13_cl_device_idE6retainEv,"axG",@progbits,_ZNK2cl6detail7WrapperIP13_cl_device_idE6retainEv,comdat
	.align 2
	.weak	_ZNK2cl6detail7WrapperIP13_cl_device_idE6retainEv
	.type	_ZNK2cl6detail7WrapperIP13_cl_device_idE6retainEv, @function
_ZNK2cl6detail7WrapperIP13_cl_device_idE6retainEv:
.LFB2639:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	8(%rax), %eax
	testb	%al, %al
	je	.L73
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZN2cl6detail16ReferenceHandlerIP13_cl_device_idE6retainES3_
	jmp	.L74
.L73:
	movl	$0, %eax
.L74:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2639:
	.size	_ZNK2cl6detail7WrapperIP13_cl_device_idE6retainEv, .-_ZNK2cl6detail7WrapperIP13_cl_device_idE6retainEv
	.section	.text._ZNK2cl6detail7WrapperIP13_cl_device_idE7releaseEv,"axG",@progbits,_ZNK2cl6detail7WrapperIP13_cl_device_idE7releaseEv,comdat
	.align 2
	.weak	_ZNK2cl6detail7WrapperIP13_cl_device_idE7releaseEv
	.type	_ZNK2cl6detail7WrapperIP13_cl_device_idE7releaseEv, @function
_ZNK2cl6detail7WrapperIP13_cl_device_idE7releaseEv:
.LFB2640:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	8(%rax), %eax
	testb	%al, %al
	je	.L76
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZN2cl6detail16ReferenceHandlerIP13_cl_device_idE7releaseES3_
	jmp	.L77
.L76:
	movl	$0, %eax
.L77:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2640:
	.size	_ZNK2cl6detail7WrapperIP13_cl_device_idE7releaseEv, .-_ZNK2cl6detail7WrapperIP13_cl_device_idE7releaseEv
	.section	.text._ZN2cl6DeviceC2Ev,"axG",@progbits,_ZN2cl6DeviceC5Ev,comdat
	.align 2
	.weak	_ZN2cl6DeviceC2Ev
	.type	_ZN2cl6DeviceC2Ev, @function
_ZN2cl6DeviceC2Ev:
.LFB2652:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6detail7WrapperIP13_cl_device_idEC2Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2652:
	.size	_ZN2cl6DeviceC2Ev, .-_ZN2cl6DeviceC2Ev
	.weak	_ZN2cl6DeviceC1Ev
	.set	_ZN2cl6DeviceC1Ev,_ZN2cl6DeviceC2Ev
	.section	.text._ZN2cl6DeviceC2ERKS0_,"axG",@progbits,_ZN2cl6DeviceC5ERKS0_,comdat
	.align 2
	.weak	_ZN2cl6DeviceC2ERKS0_
	.type	_ZN2cl6DeviceC2ERKS0_, @function
_ZN2cl6DeviceC2ERKS0_:
.LFB2655:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN2cl6detail7WrapperIP13_cl_device_idEC2ERKS4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2655:
	.size	_ZN2cl6DeviceC2ERKS0_, .-_ZN2cl6DeviceC2ERKS0_
	.weak	_ZN2cl6DeviceC1ERKS0_
	.set	_ZN2cl6DeviceC1ERKS0_,_ZN2cl6DeviceC2ERKS0_
	.section	.text._ZN2cl6DeviceC2ERKP13_cl_device_id,"axG",@progbits,_ZN2cl6DeviceC5ERKP13_cl_device_id,comdat
	.align 2
	.weak	_ZN2cl6DeviceC2ERKP13_cl_device_id
	.type	_ZN2cl6DeviceC2ERKP13_cl_device_id, @function
_ZN2cl6DeviceC2ERKP13_cl_device_id:
.LFB2658:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN2cl6detail7WrapperIP13_cl_device_idEC2ERKS3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2658:
	.size	_ZN2cl6DeviceC2ERKP13_cl_device_id, .-_ZN2cl6DeviceC2ERKP13_cl_device_id
	.weak	_ZN2cl6DeviceC1ERKP13_cl_device_id
	.set	_ZN2cl6DeviceC1ERKP13_cl_device_id,_ZN2cl6DeviceC2ERKP13_cl_device_id
	.section	.text._ZN2cl6DeviceaSERKP13_cl_device_id,"axG",@progbits,_ZN2cl6DeviceaSERKP13_cl_device_id,comdat
	.align 2
	.weak	_ZN2cl6DeviceaSERKP13_cl_device_id
	.type	_ZN2cl6DeviceaSERKP13_cl_device_id, @function
_ZN2cl6DeviceaSERKP13_cl_device_id:
.LFB2661:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN2cl6detail7WrapperIP13_cl_device_idEaSERKS3_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2661:
	.size	_ZN2cl6DeviceaSERKP13_cl_device_id, .-_ZN2cl6DeviceaSERKP13_cl_device_id
	.section	.text._ZN2cl8PlatformC2ERKP15_cl_platform_id,"axG",@progbits,_ZN2cl8PlatformC5ERKP15_cl_platform_id,comdat
	.align 2
	.weak	_ZN2cl8PlatformC2ERKP15_cl_platform_id
	.type	_ZN2cl8PlatformC2ERKP15_cl_platform_id, @function
_ZN2cl8PlatformC2ERKP15_cl_platform_id:
.LFB2673:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN2cl6detail7WrapperIP15_cl_platform_idEC2ERKS3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2673:
	.size	_ZN2cl8PlatformC2ERKP15_cl_platform_id, .-_ZN2cl8PlatformC2ERKP15_cl_platform_id
	.weak	_ZN2cl8PlatformC1ERKP15_cl_platform_id
	.set	_ZN2cl8PlatformC1ERKP15_cl_platform_id,_ZN2cl8PlatformC2ERKP15_cl_platform_id
	.section	.text._ZN2cl8PlatformaSERKP15_cl_platform_id,"axG",@progbits,_ZN2cl8PlatformaSERKP15_cl_platform_id,comdat
	.align 2
	.weak	_ZN2cl8PlatformaSERKP15_cl_platform_id
	.type	_ZN2cl8PlatformaSERKP15_cl_platform_id, @function
_ZN2cl8PlatformaSERKP15_cl_platform_id:
.LFB2676:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN2cl6detail7WrapperIP15_cl_platform_idEaSERKS3_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2676:
	.size	_ZN2cl8PlatformaSERKP15_cl_platform_id, .-_ZN2cl8PlatformaSERKP15_cl_platform_id
	.section	.rodata
.LC4:
	.string	"clGetDeviceIDs"
	.section	.text._ZNK2cl8Platform10getDevicesEmPSt6vectorINS_6DeviceESaIS2_EE,"axG",@progbits,_ZNK2cl8Platform10getDevicesEmPSt6vectorINS_6DeviceESaIS2_EE,comdat
	.align 2
	.weak	_ZNK2cl8Platform10getDevicesEmPSt6vectorINS_6DeviceESaIS2_EE
	.type	_ZNK2cl8Platform10getDevicesEmPSt6vectorINS_6DeviceESaIS2_EE, @function
_ZNK2cl8Platform10getDevicesEmPSt6vectorINS_6DeviceESaIS2_EE:
.LFB2679:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	$0, -32(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L87
	movl	$.LC4, %esi
	movl	$-50, %edi
	call	_ZN2cl6detailL10errHandlerEiPKc
	jmp	.L91
.L87:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	-32(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	clGetDeviceIDs
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L89
	movl	-28(%rbp), %eax
	movl	$.LC4, %esi
	movl	%eax, %edi
	call	_ZN2cl6detailL10errHandlerEiPKc
	jmp	.L91
.L89:
	movl	-32(%rbp), %eax
	movl	%eax, %eax
	salq	$3, %rax
	leaq	15(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ebx
	movl	$0, %edx
	divq	%rbx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	movq	%rax, -24(%rbp)
	movl	-32(%rbp), %edx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movl	$0, %r8d
	movq	%rax, %rdi
	call	clGetDeviceIDs
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L90
	movl	-28(%rbp), %eax
	movl	$.LC4, %esi
	movl	%eax, %edi
	call	_ZN2cl6detailL10errHandlerEiPKc
	jmp	.L91
.L90:
	movl	-32(%rbp), %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EE6assignIPP13_cl_device_idvEEvT_S8_
	movl	$0, %eax
.L91:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2679:
	.size	_ZNK2cl8Platform10getDevicesEmPSt6vectorINS_6DeviceESaIS2_EE, .-_ZNK2cl8Platform10getDevicesEmPSt6vectorINS_6DeviceESaIS2_EE
	.section	.rodata
.LC5:
	.string	"clGetPlatformIDs"
	.section	.text._ZN2cl8Platform3getEPSt6vectorIS0_SaIS0_EE,"axG",@progbits,_ZN2cl8Platform3getEPSt6vectorIS0_SaIS0_EE,comdat
	.weak	_ZN2cl8Platform3getEPSt6vectorIS0_SaIS0_EE
	.type	_ZN2cl8Platform3getEPSt6vectorIS0_SaIS0_EE, @function
_ZN2cl8Platform3getEPSt6vectorIS0_SaIS0_EE:
.LFB2680:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movl	$0, -32(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L93
	movl	$.LC5, %esi
	movl	$-50, %edi
	call	_ZN2cl6detailL10errHandlerEiPKc
	jmp	.L97
.L93:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	call	clGetPlatformIDs
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L95
	movl	-28(%rbp), %eax
	movl	$.LC5, %esi
	movl	%eax, %edi
	call	_ZN2cl6detailL10errHandlerEiPKc
	jmp	.L97
.L95:
	movl	-32(%rbp), %eax
	movl	%eax, %eax
	salq	$3, %rax
	leaq	15(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ebx
	movl	$0, %edx
	divq	%rbx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	movq	%rax, -24(%rbp)
	movl	-32(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	clGetPlatformIDs
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L96
	movl	-28(%rbp), %eax
	movl	$.LC5, %esi
	movl	%eax, %edi
	call	_ZN2cl6detailL10errHandlerEiPKc
	jmp	.L97
.L96:
	movl	-32(%rbp), %eax
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2cl8PlatformESaIS1_EE6assignIPP15_cl_platform_idvEEvT_S8_
	movl	$0, %eax
.L97:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2680:
	.size	_ZN2cl8Platform3getEPSt6vectorIS0_SaIS0_EE, .-_ZN2cl8Platform3getEPSt6vectorIS0_SaIS0_EE
	.section	.text._ZN2cl8PlatformD2Ev,"axG",@progbits,_ZN2cl8PlatformD5Ev,comdat
	.align 2
	.weak	_ZN2cl8PlatformD2Ev
	.type	_ZN2cl8PlatformD2Ev, @function
_ZN2cl8PlatformD2Ev:
.LFB2685:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6detail7WrapperIP15_cl_platform_idED2Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2685:
	.size	_ZN2cl8PlatformD2Ev, .-_ZN2cl8PlatformD2Ev
	.weak	_ZN2cl8PlatformD1Ev
	.set	_ZN2cl8PlatformD1Ev,_ZN2cl8PlatformD2Ev
	.section	.text._ZN2cl7ContextD2Ev,"axG",@progbits,_ZN2cl7ContextD5Ev,comdat
	.align 2
	.weak	_ZN2cl7ContextD2Ev
	.type	_ZN2cl7ContextD2Ev, @function
_ZN2cl7ContextD2Ev:
.LFB2690:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6detail7WrapperIP11_cl_contextED2Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2690:
	.size	_ZN2cl7ContextD2Ev, .-_ZN2cl7ContextD2Ev
	.weak	_ZN2cl7ContextD1Ev
	.set	_ZN2cl7ContextD1Ev,_ZN2cl7ContextD2Ev
	.section	.rodata
.LC6:
	.string	"clCreateContext"
	.section	.text._ZN2cl7ContextC2ERKNS_6DeviceEPlPFvPKcPKvmPvES9_Pi,"axG",@progbits,_ZN2cl7ContextC5ERKNS_6DeviceEPlPFvPKcPKvmPvES9_Pi,comdat
	.align 2
	.weak	_ZN2cl7ContextC2ERKNS_6DeviceEPlPFvPKcPKvmPvES9_Pi
	.type	_ZN2cl7ContextC2ERKNS_6DeviceEPlPFvPKcPKvmPvES9_Pi, @function
_ZN2cl7ContextC2ERKNS_6DeviceEPlPFvPKcPKvmPvES9_Pi:
.LFB2696:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2696
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6detail7WrapperIP11_cl_contextEC2Ev
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK2cl6detail7WrapperIP13_cl_device_idEclEv
	movq	%rax, -24(%rbp)
	leaq	-28(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-64(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$1, %esi
	movq	%rax, %rdi
.LEHB0:
	call	clCreateContext
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	movl	-28(%rbp), %eax
	movl	$.LC6, %esi
	movl	%eax, %edi
	call	_ZN2cl6detailL10errHandlerEiPKc
.LEHE0:
	cmpq	$0, -80(%rbp)
	je	.L106
	movl	-28(%rbp), %edx
	movq	-80(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L106
.L105:
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6detail7WrapperIP11_cl_contextED2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB1:
	call	_Unwind_Resume
.LEHE1:
.L106:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2696:
	.section	.gcc_except_table._ZN2cl7ContextC2ERKNS_6DeviceEPlPFvPKcPKvmPvES9_Pi,"aG",@progbits,_ZN2cl7ContextC5ERKNS_6DeviceEPlPFvPKcPKvmPvES9_Pi,comdat
.LLSDA2696:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2696-.LLSDACSB2696
.LLSDACSB2696:
	.uleb128 .LEHB0-.LFB2696
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L105-.LFB2696
	.uleb128 0
	.uleb128 .LEHB1-.LFB2696
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE2696:
	.section	.text._ZN2cl7ContextC2ERKNS_6DeviceEPlPFvPKcPKvmPvES9_Pi,"axG",@progbits,_ZN2cl7ContextC5ERKNS_6DeviceEPlPFvPKcPKvmPvES9_Pi,comdat
	.size	_ZN2cl7ContextC2ERKNS_6DeviceEPlPFvPKcPKvmPvES9_Pi, .-_ZN2cl7ContextC2ERKNS_6DeviceEPlPFvPKcPKvmPvES9_Pi
	.weak	_ZN2cl7ContextC1ERKNS_6DeviceEPlPFvPKcPKvmPvES9_Pi
	.set	_ZN2cl7ContextC1ERKNS_6DeviceEPlPFvPKcPKvmPvES9_Pi,_ZN2cl7ContextC2ERKNS_6DeviceEPlPFvPKcPKvmPvES9_Pi
	.section	.text._ZN2cl7ContextC2Ev,"axG",@progbits,_ZN2cl7ContextC5Ev,comdat
	.align 2
	.weak	_ZN2cl7ContextC2Ev
	.type	_ZN2cl7ContextC2Ev, @function
_ZN2cl7ContextC2Ev:
.LFB2703:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6detail7WrapperIP11_cl_contextEC2Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2703:
	.size	_ZN2cl7ContextC2Ev, .-_ZN2cl7ContextC2Ev
	.weak	_ZN2cl7ContextC1Ev
	.set	_ZN2cl7ContextC1Ev,_ZN2cl7ContextC2Ev
	.section	.text._ZN2cl7ContextC2ERKS0_,"axG",@progbits,_ZN2cl7ContextC5ERKS0_,comdat
	.align 2
	.weak	_ZN2cl7ContextC2ERKS0_
	.type	_ZN2cl7ContextC2ERKS0_, @function
_ZN2cl7ContextC2ERKS0_:
.LFB2706:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN2cl6detail7WrapperIP11_cl_contextEC2ERKS4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2706:
	.size	_ZN2cl7ContextC2ERKS0_, .-_ZN2cl7ContextC2ERKS0_
	.weak	_ZN2cl7ContextC1ERKS0_
	.set	_ZN2cl7ContextC1ERKS0_,_ZN2cl7ContextC2ERKS0_
	.section	.text._ZN2cl6DeviceD2Ev,"axG",@progbits,_ZN2cl6DeviceD5Ev,comdat
	.align 2
	.weak	_ZN2cl6DeviceD2Ev
	.type	_ZN2cl6DeviceD2Ev, @function
_ZN2cl6DeviceD2Ev:
.LFB2719:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6detail7WrapperIP13_cl_device_idED2Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2719:
	.size	_ZN2cl6DeviceD2Ev, .-_ZN2cl6DeviceD2Ev
	.weak	_ZN2cl6DeviceD1Ev
	.set	_ZN2cl6DeviceD1Ev,_ZN2cl6DeviceD2Ev
	.weak	_ZN2cl7Context20default_initialized_E
	.data
	.align 4
	.type	_ZN2cl7Context20default_initialized_E, @object
	.size	_ZN2cl7Context20default_initialized_E, 4
_ZN2cl7Context20default_initialized_E:
	.long	1
	.weak	_ZN2cl7Context8default_E
	.bss
	.align 8
	.type	_ZN2cl7Context8default_E, @object
	.size	_ZN2cl7Context8default_E, 8
_ZN2cl7Context8default_E:
	.zero	8
	.weak	_ZN2cl7Context14default_error_E
	.align 4
	.type	_ZN2cl7Context14default_error_E, @object
	.size	_ZN2cl7Context14default_error_E, 4
_ZN2cl7Context14default_error_E:
	.zero	4
	.section	.text._ZN2cl5EventaSERKP9_cl_event,"axG",@progbits,_ZN2cl5EventaSERKP9_cl_event,comdat
	.align 2
	.weak	_ZN2cl5EventaSERKP9_cl_event
	.type	_ZN2cl5EventaSERKP9_cl_event, @function
_ZN2cl5EventaSERKP9_cl_event:
.LFB2734:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN2cl6detail7WrapperIP9_cl_eventEaSERKS3_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2734:
	.size	_ZN2cl5EventaSERKP9_cl_event, .-_ZN2cl5EventaSERKP9_cl_event
	.section	.text._ZN2cl6MemoryD2Ev,"axG",@progbits,_ZN2cl6MemoryD5Ev,comdat
	.align 2
	.weak	_ZN2cl6MemoryD2Ev
	.type	_ZN2cl6MemoryD2Ev, @function
_ZN2cl6MemoryD2Ev:
.LFB2756:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6detail7WrapperIP7_cl_memED2Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2756:
	.size	_ZN2cl6MemoryD2Ev, .-_ZN2cl6MemoryD2Ev
	.weak	_ZN2cl6MemoryD1Ev
	.set	_ZN2cl6MemoryD1Ev,_ZN2cl6MemoryD2Ev
	.section	.text._ZN2cl6MemoryC2Ev,"axG",@progbits,_ZN2cl6MemoryC5Ev,comdat
	.align 2
	.weak	_ZN2cl6MemoryC2Ev
	.type	_ZN2cl6MemoryC2Ev, @function
_ZN2cl6MemoryC2Ev:
.LFB2759:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6detail7WrapperIP7_cl_memEC2Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2759:
	.size	_ZN2cl6MemoryC2Ev, .-_ZN2cl6MemoryC2Ev
	.weak	_ZN2cl6MemoryC1Ev
	.set	_ZN2cl6MemoryC1Ev,_ZN2cl6MemoryC2Ev
	.section	.text._ZN2cl6MemoryC2ERKS0_,"axG",@progbits,_ZN2cl6MemoryC5ERKS0_,comdat
	.align 2
	.weak	_ZN2cl6MemoryC2ERKS0_
	.type	_ZN2cl6MemoryC2ERKS0_, @function
_ZN2cl6MemoryC2ERKS0_:
.LFB2762:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN2cl6detail7WrapperIP7_cl_memEC2ERKS4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2762:
	.size	_ZN2cl6MemoryC2ERKS0_, .-_ZN2cl6MemoryC2ERKS0_
	.weak	_ZN2cl6MemoryC1ERKS0_
	.set	_ZN2cl6MemoryC1ERKS0_,_ZN2cl6MemoryC2ERKS0_
	.section	.rodata
.LC7:
	.string	"clCreateBuffer"
	.section	.text._ZN2cl6BufferC2ERKNS_7ContextEmmPvPi,"axG",@progbits,_ZN2cl6BufferC5ERKNS_7ContextEmmPvPi,comdat
	.align 2
	.weak	_ZN2cl6BufferC2ERKNS_7ContextEmmPvPi
	.type	_ZN2cl6BufferC2ERKNS_7ContextEmmPvPi, @function
_ZN2cl6BufferC2ERKNS_7ContextEmmPvPi:
.LFB2773:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2773
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6MemoryC2Ev
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK2cl6detail7WrapperIP11_cl_contextEclEv
	leaq	-20(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
.LEHB2:
	call	clCreateBuffer
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	movl	-20(%rbp), %eax
	movl	$.LC7, %esi
	movl	%eax, %edi
	call	_ZN2cl6detailL10errHandlerEiPKc
.LEHE2:
	cmpq	$0, -80(%rbp)
	je	.L121
	movl	-20(%rbp), %edx
	movq	-80(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L121
.L120:
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6MemoryD2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB3:
	call	_Unwind_Resume
.LEHE3:
.L121:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2773:
	.section	.gcc_except_table._ZN2cl6BufferC2ERKNS_7ContextEmmPvPi,"aG",@progbits,_ZN2cl6BufferC5ERKNS_7ContextEmmPvPi,comdat
.LLSDA2773:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2773-.LLSDACSB2773
.LLSDACSB2773:
	.uleb128 .LEHB2-.LFB2773
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L120-.LFB2773
	.uleb128 0
	.uleb128 .LEHB3-.LFB2773
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE2773:
	.section	.text._ZN2cl6BufferC2ERKNS_7ContextEmmPvPi,"axG",@progbits,_ZN2cl6BufferC5ERKNS_7ContextEmmPvPi,comdat
	.size	_ZN2cl6BufferC2ERKNS_7ContextEmmPvPi, .-_ZN2cl6BufferC2ERKNS_7ContextEmmPvPi
	.weak	_ZN2cl6BufferC1ERKNS_7ContextEmmPvPi
	.set	_ZN2cl6BufferC1ERKNS_7ContextEmmPvPi,_ZN2cl6BufferC2ERKNS_7ContextEmmPvPi
	.section	.text._ZN2cl6BufferC2ERKS0_,"axG",@progbits,_ZN2cl6BufferC5ERKS0_,comdat
	.align 2
	.weak	_ZN2cl6BufferC2ERKS0_
	.type	_ZN2cl6BufferC2ERKS0_, @function
_ZN2cl6BufferC2ERKS0_:
.LFB2783:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN2cl6MemoryC2ERKS0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2783:
	.size	_ZN2cl6BufferC2ERKS0_, .-_ZN2cl6BufferC2ERKS0_
	.weak	_ZN2cl6BufferC1ERKS0_
	.set	_ZN2cl6BufferC1ERKS0_,_ZN2cl6BufferC2ERKS0_
	.section	.text._ZN2cl6BufferD2Ev,"axG",@progbits,_ZN2cl6BufferD5Ev,comdat
	.align 2
	.weak	_ZN2cl6BufferD2Ev
	.type	_ZN2cl6BufferD2Ev, @function
_ZN2cl6BufferD2Ev:
.LFB2792:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6MemoryD2Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2792:
	.size	_ZN2cl6BufferD2Ev, .-_ZN2cl6BufferD2Ev
	.weak	_ZN2cl6BufferD1Ev
	.set	_ZN2cl6BufferD1Ev,_ZN2cl6BufferD2Ev
	.section	.text._ZN2cl7NDRangeC2Ev,"axG",@progbits,_ZN2cl7NDRangeC5Ev,comdat
	.align 2
	.weak	_ZN2cl7NDRangeC2Ev
	.type	_ZN2cl7NDRangeC2Ev, @function
_ZN2cl7NDRangeC2Ev:
.LFB2958:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6size_tILi3EEC1Ev
	movq	-8(%rbp), %rax
	movl	$0, 24(%rax)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2958:
	.size	_ZN2cl7NDRangeC2Ev, .-_ZN2cl7NDRangeC2Ev
	.weak	_ZN2cl7NDRangeC1Ev
	.set	_ZN2cl7NDRangeC1Ev,_ZN2cl7NDRangeC2Ev
	.section	.text._ZN2cl7NDRangeC2Em,"axG",@progbits,_ZN2cl7NDRangeC5Em,comdat
	.align 2
	.weak	_ZN2cl7NDRangeC2Em
	.type	_ZN2cl7NDRangeC2Em, @function
_ZN2cl7NDRangeC2Em:
.LFB2961:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6size_tILi3EEC1Ev
	movq	-8(%rbp), %rax
	movl	$1, 24(%rax)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZN2cl6size_tILi3EEixEi
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2961:
	.size	_ZN2cl7NDRangeC2Em, .-_ZN2cl7NDRangeC2Em
	.weak	_ZN2cl7NDRangeC1Em
	.set	_ZN2cl7NDRangeC1Em,_ZN2cl7NDRangeC2Em
	.section	.text._ZNK2cl7NDRangecvPKmEv,"axG",@progbits,_ZNK2cl7NDRangecvPKmEv,comdat
	.align 2
	.weak	_ZNK2cl7NDRangecvPKmEv
	.type	_ZNK2cl7NDRangecvPKmEv, @function
_ZNK2cl7NDRangecvPKmEv:
.LFB2969:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK2cl6size_tILi3EEcvPKmEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2969:
	.size	_ZNK2cl7NDRangecvPKmEv, .-_ZNK2cl7NDRangecvPKmEv
	.section	.text._ZNK2cl7NDRange10dimensionsEv,"axG",@progbits,_ZNK2cl7NDRange10dimensionsEv,comdat
	.align 2
	.weak	_ZNK2cl7NDRange10dimensionsEv
	.type	_ZNK2cl7NDRange10dimensionsEv, @function
_ZNK2cl7NDRange10dimensionsEv:
.LFB2970:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2970:
	.size	_ZNK2cl7NDRange10dimensionsEv, .-_ZNK2cl7NDRange10dimensionsEv
	.local	_ZN2clL9NullRangeE
	.comm	_ZN2clL9NullRangeE,32,32
	.section	.text._ZN2cl6KernelD2Ev,"axG",@progbits,_ZN2cl6KernelD5Ev,comdat
	.align 2
	.weak	_ZN2cl6KernelD2Ev
	.type	_ZN2cl6KernelD2Ev, @function
_ZN2cl6KernelD2Ev:
.LFB2978:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6detail7WrapperIP10_cl_kernelED2Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2978:
	.size	_ZN2cl6KernelD2Ev, .-_ZN2cl6KernelD2Ev
	.weak	_ZN2cl6KernelD1Ev
	.set	_ZN2cl6KernelD1Ev,_ZN2cl6KernelD2Ev
	.section	.rodata
.LC8:
	.string	"clCreateProgramWithSource"
	.section	.text._ZN2cl7ProgramC2ERKNS_7ContextERKSt6vectorISt4pairIPKcmESaIS8_EEPi,"axG",@progbits,_ZN2cl7ProgramC5ERKNS_7ContextERKSt6vectorISt4pairIPKcmESaIS8_EEPi,comdat
	.align 2
	.weak	_ZN2cl7ProgramC2ERKNS_7ContextERKSt6vectorISt4pairIPKcmESaIS8_EEPi
	.type	_ZN2cl7ProgramC2ERKNS_7ContextERKSt6vectorISt4pairIPKcmESaIS8_EEPi, @function
_ZN2cl7ProgramC2ERKNS_7ContextERKSt6vectorISt4pairIPKcmESaIS8_EEPi:
.LFB3007:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA3007
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6detail7WrapperIP11_cl_programEC2Ev
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt4pairIPKcmESaIS3_EE4sizeEv
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	salq	$3, %rax
	leaq	15(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ecx
	movl	$0, %edx
	divq	%rcx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	salq	$3, %rax
	leaq	15(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ecx
	movl	$0, %edx
	divq	%rcx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	movq	%rax, -24(%rbp)
	movq	$0, -48(%rbp)
	jmp	.L134
.L135:
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-48(%rbp), %rax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt4pairIPKcmESaIS3_EEixEm
	movq	(%rax), %rax
	movq	%rax, (%rbx)
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-48(%rbp), %rax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt6vectorISt4pairIPKcmESaIS3_EEixEm
	movq	8(%rax), %rax
	movq	%rax, (%rbx)
	addq	$1, -48(%rbp)
.L134:
	movq	-48(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L135
	movq	-40(%rbp), %rax
	movl	%eax, %ebx
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK2cl6detail7WrapperIP11_cl_contextEclEv
	leaq	-52(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rsi, %r8
	movl	%ebx, %esi
	movq	%rax, %rdi
.LEHB4:
	call	clCreateProgramWithSource
	movq	-72(%rbp), %rdx
	movq	%rax, (%rdx)
	movl	-52(%rbp), %eax
	movl	$.LC8, %esi
	movl	%eax, %edi
	call	_ZN2cl6detailL10errHandlerEiPKc
.LEHE4:
	cmpq	$0, -96(%rbp)
	je	.L139
	movl	-52(%rbp), %edx
	movq	-96(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L139
.L138:
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6detail7WrapperIP11_cl_programED2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB5:
	call	_Unwind_Resume
.LEHE5:
.L139:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3007:
	.section	.gcc_except_table._ZN2cl7ProgramC2ERKNS_7ContextERKSt6vectorISt4pairIPKcmESaIS8_EEPi,"aG",@progbits,_ZN2cl7ProgramC5ERKNS_7ContextERKSt6vectorISt4pairIPKcmESaIS8_EEPi,comdat
.LLSDA3007:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3007-.LLSDACSB3007
.LLSDACSB3007:
	.uleb128 .LEHB4-.LFB3007
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L138-.LFB3007
	.uleb128 0
	.uleb128 .LEHB5-.LFB3007
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE3007:
	.section	.text._ZN2cl7ProgramC2ERKNS_7ContextERKSt6vectorISt4pairIPKcmESaIS8_EEPi,"axG",@progbits,_ZN2cl7ProgramC5ERKNS_7ContextERKSt6vectorISt4pairIPKcmESaIS8_EEPi,comdat
	.size	_ZN2cl7ProgramC2ERKNS_7ContextERKSt6vectorISt4pairIPKcmESaIS8_EEPi, .-_ZN2cl7ProgramC2ERKNS_7ContextERKSt6vectorISt4pairIPKcmESaIS8_EEPi
	.weak	_ZN2cl7ProgramC1ERKNS_7ContextERKSt6vectorISt4pairIPKcmESaIS8_EEPi
	.set	_ZN2cl7ProgramC1ERKNS_7ContextERKSt6vectorISt4pairIPKcmESaIS8_EEPi,_ZN2cl7ProgramC2ERKNS_7ContextERKSt6vectorISt4pairIPKcmESaIS8_EEPi
	.section	.rodata
.LC9:
	.string	"clBuildProgram"
	.section	.text._ZNK2cl7Program5buildERKSt6vectorINS_6DeviceESaIS2_EEPKcPFvP11_cl_programPvESB_,"axG",@progbits,_ZNK2cl7Program5buildERKSt6vectorINS_6DeviceESaIS2_EEPKcPFvP11_cl_programPvESB_,comdat
	.align 2
	.weak	_ZNK2cl7Program5buildERKSt6vectorINS_6DeviceESaIS2_EEPKcPFvP11_cl_programPvESB_
	.type	_ZNK2cl7Program5buildERKSt6vectorINS_6DeviceESaIS2_EEPKcPFvP11_cl_programPvESB_, @function
_ZNK2cl7Program5buildERKSt6vectorINS_6DeviceESaIS2_EEPKcPFvP11_cl_programPvESB_:
.LFB3028:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIN2cl6DeviceESaIS1_EE4sizeEv
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	salq	$3, %rax
	leaq	15(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ebx
	movl	$0, %edx
	divq	%rbx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	movq	%rax, -24(%rbp)
	movq	$0, -40(%rbp)
	jmp	.L141
.L142:
	movq	-40(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt6vectorIN2cl6DeviceESaIS1_EEixEm
	movq	%rax, %rdi
	call	_ZNK2cl6detail7WrapperIP13_cl_device_idEclEv
	movq	%rax, (%rbx)
	addq	$1, -40(%rbp)
.L141:
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L142
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIN2cl6DeviceESaIS1_EE4sizeEv
	movl	%eax, %esi
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-88(%rbp), %r8
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	clBuildProgram
	movl	$.LC9, %esi
	movl	%eax, %edi
	call	_ZN2cl6detailL10errHandlerEiPKc
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3028:
	.size	_ZNK2cl7Program5buildERKSt6vectorINS_6DeviceESaIS2_EEPKcPFvP11_cl_programPvESB_, .-_ZNK2cl7Program5buildERKSt6vectorINS_6DeviceESaIS2_EEPKcPFvP11_cl_programPvESB_
	.section	.text._ZN2cl7ProgramD2Ev,"axG",@progbits,_ZN2cl7ProgramD5Ev,comdat
	.align 2
	.weak	_ZN2cl7ProgramD2Ev
	.type	_ZN2cl7ProgramD2Ev, @function
_ZN2cl7ProgramD2Ev:
.LFB3039:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6detail7WrapperIP11_cl_programED2Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3039:
	.size	_ZN2cl7ProgramD2Ev, .-_ZN2cl7ProgramD2Ev
	.weak	_ZN2cl7ProgramD1Ev
	.set	_ZN2cl7ProgramD1Ev,_ZN2cl7ProgramD2Ev
	.section	.rodata
.LC10:
	.string	"clCreateKernel"
	.section	.text._ZN2cl6KernelC2ERKNS_7ProgramEPKcPi,"axG",@progbits,_ZN2cl6KernelC5ERKNS_7ProgramEPKcPi,comdat
	.align 2
	.weak	_ZN2cl6KernelC2ERKNS_7ProgramEPKcPi
	.type	_ZN2cl6KernelC2ERKNS_7ProgramEPKcPi, @function
_ZN2cl6KernelC2ERKNS_7ProgramEPKcPi:
.LFB3046:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA3046
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6detail7WrapperIP10_cl_kernelEC2Ev
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK2cl6detail7WrapperIP11_cl_programEclEv
	leaq	-20(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB6:
	call	clCreateKernel
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	movl	-20(%rbp), %eax
	movl	$.LC10, %esi
	movl	%eax, %edi
	call	_ZN2cl6detailL10errHandlerEiPKc
.LEHE6:
	cmpq	$0, -64(%rbp)
	je	.L150
	movl	-20(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L150
.L149:
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6detail7WrapperIP10_cl_kernelED2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB7:
	call	_Unwind_Resume
.LEHE7:
.L150:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3046:
	.section	.gcc_except_table._ZN2cl6KernelC2ERKNS_7ProgramEPKcPi,"aG",@progbits,_ZN2cl6KernelC5ERKNS_7ProgramEPKcPi,comdat
.LLSDA3046:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3046-.LLSDACSB3046
.LLSDACSB3046:
	.uleb128 .LEHB6-.LFB3046
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L149-.LFB3046
	.uleb128 0
	.uleb128 .LEHB7-.LFB3046
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSE3046:
	.section	.text._ZN2cl6KernelC2ERKNS_7ProgramEPKcPi,"axG",@progbits,_ZN2cl6KernelC5ERKNS_7ProgramEPKcPi,comdat
	.size	_ZN2cl6KernelC2ERKNS_7ProgramEPKcPi, .-_ZN2cl6KernelC2ERKNS_7ProgramEPKcPi
	.weak	_ZN2cl6KernelC1ERKNS_7ProgramEPKcPi
	.set	_ZN2cl6KernelC1ERKNS_7ProgramEPKcPi,_ZN2cl6KernelC2ERKNS_7ProgramEPKcPi
	.section	.rodata
.LC11:
	.string	"clCreateCommandQueue"
	.section	.text._ZN2cl12CommandQueueC2ERKNS_7ContextERKNS_6DeviceEmPi,"axG",@progbits,_ZN2cl12CommandQueueC5ERKNS_7ContextERKNS_6DeviceEmPi,comdat
	.align 2
	.weak	_ZN2cl12CommandQueueC2ERKNS_7ContextERKNS_6DeviceEmPi
	.type	_ZN2cl12CommandQueueC2ERKNS_7ContextERKNS_6DeviceEmPi, @function
_ZN2cl12CommandQueueC2ERKNS_7ContextERKNS_6DeviceEmPi:
.LFB3055:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA3055
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6detail7WrapperIP17_cl_command_queueEC2Ev
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK2cl6detail7WrapperIP13_cl_device_idEclEv
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK2cl6detail7WrapperIP11_cl_contextEclEv
	leaq	-20(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
.LEHB8:
	call	clCreateCommandQueue
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	movl	-20(%rbp), %eax
	movl	$.LC11, %esi
	movl	%eax, %edi
	call	_ZN2cl6detailL10errHandlerEiPKc
.LEHE8:
	cmpq	$0, -72(%rbp)
	je	.L155
	movl	-20(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L155
.L154:
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6detail7WrapperIP17_cl_command_queueED2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB9:
	call	_Unwind_Resume
.LEHE9:
.L155:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3055:
	.section	.gcc_except_table._ZN2cl12CommandQueueC2ERKNS_7ContextERKNS_6DeviceEmPi,"aG",@progbits,_ZN2cl12CommandQueueC5ERKNS_7ContextERKNS_6DeviceEmPi,comdat
.LLSDA3055:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3055-.LLSDACSB3055
.LLSDACSB3055:
	.uleb128 .LEHB8-.LFB3055
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L154-.LFB3055
	.uleb128 0
	.uleb128 .LEHB9-.LFB3055
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSE3055:
	.section	.text._ZN2cl12CommandQueueC2ERKNS_7ContextERKNS_6DeviceEmPi,"axG",@progbits,_ZN2cl12CommandQueueC5ERKNS_7ContextERKNS_6DeviceEmPi,comdat
	.size	_ZN2cl12CommandQueueC2ERKNS_7ContextERKNS_6DeviceEmPi, .-_ZN2cl12CommandQueueC2ERKNS_7ContextERKNS_6DeviceEmPi
	.weak	_ZN2cl12CommandQueueC1ERKNS_7ContextERKNS_6DeviceEmPi
	.set	_ZN2cl12CommandQueueC1ERKNS_7ContextERKNS_6DeviceEmPi,_ZN2cl12CommandQueueC2ERKNS_7ContextERKNS_6DeviceEmPi
	.section	.text._ZN2cl12CommandQueueD2Ev,"axG",@progbits,_ZN2cl12CommandQueueD5Ev,comdat
	.align 2
	.weak	_ZN2cl12CommandQueueD2Ev
	.type	_ZN2cl12CommandQueueD2Ev, @function
_ZN2cl12CommandQueueD2Ev:
.LFB3059:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6detail7WrapperIP17_cl_command_queueED2Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3059:
	.size	_ZN2cl12CommandQueueD2Ev, .-_ZN2cl12CommandQueueD2Ev
	.weak	_ZN2cl12CommandQueueD1Ev
	.set	_ZN2cl12CommandQueueD1Ev,_ZN2cl12CommandQueueD2Ev
	.section	.text._ZN2cl12CommandQueueC2Ev,"axG",@progbits,_ZN2cl12CommandQueueC5Ev,comdat
	.align 2
	.weak	_ZN2cl12CommandQueueC2Ev
	.type	_ZN2cl12CommandQueueC2Ev, @function
_ZN2cl12CommandQueueC2Ev:
.LFB3062:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6detail7WrapperIP17_cl_command_queueEC2Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3062:
	.size	_ZN2cl12CommandQueueC2Ev, .-_ZN2cl12CommandQueueC2Ev
	.weak	_ZN2cl12CommandQueueC1Ev
	.set	_ZN2cl12CommandQueueC1Ev,_ZN2cl12CommandQueueC2Ev
	.section	.rodata
.LC12:
	.string	"clEnqueueReadBuffer"
	.section	.text._ZNK2cl12CommandQueue17enqueueReadBufferERKNS_6BufferEjmmPvPKSt6vectorINS_5EventESaIS6_EEPS6_,"axG",@progbits,_ZNK2cl12CommandQueue17enqueueReadBufferERKNS_6BufferEjmmPvPKSt6vectorINS_5EventESaIS6_EEPS6_,comdat
	.align 2
	.weak	_ZNK2cl12CommandQueue17enqueueReadBufferERKNS_6BufferEjmmPvPKSt6vectorINS_5EventESaIS6_EEPS6_
	.type	_ZNK2cl12CommandQueue17enqueueReadBufferERKNS_6BufferEjmmPvPKSt6vectorINS_5EventESaIS6_EEPS6_, @function
_ZNK2cl12CommandQueue17enqueueReadBufferERKNS_6BufferEjmmPvPKSt6vectorINS_5EventESaIS6_EEPS6_:
.LFB3074:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	cmpq	$0, 24(%rbp)
	je	.L160
	leaq	-40(%rbp), %r13
	jmp	.L161
.L160:
	movl	$0, %r13d
.L161:
	cmpq	$0, 16(%rbp)
	je	.L162
	movq	16(%rbp), %rdi
	call	_ZNKSt6vectorIN2cl5EventESaIS1_EE4sizeEv
	testq	%rax, %rax
	je	.L162
	movq	16(%rbp), %rdi
	call	_ZNKSt6vectorIN2cl5EventESaIS1_EE5frontEv
	movq	%rax, %r12
	jmp	.L163
.L162:
	movl	$0, %r12d
.L163:
	cmpq	$0, 16(%rbp)
	je	.L164
	movq	16(%rbp), %rdi
	call	_ZNKSt6vectorIN2cl5EventESaIS1_EE4sizeEv
	movl	%eax, %ebx
	jmp	.L165
.L164:
	movl	$0, %ebx
.L165:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK2cl6detail7WrapperIP7_cl_memEclEv
	movq	%rax, %rsi
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-96(%rbp), %r8
	movq	-88(%rbp), %rdi
	movq	-80(%rbp), %rcx
	movl	-68(%rbp), %edx
	movq	%r13, 16(%rsp)
	movq	%r12, 8(%rsp)
	movl	%ebx, (%rsp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	clEnqueueReadBuffer
	movl	$.LC12, %esi
	movl	%eax, %edi
	call	_ZN2cl6detailL10errHandlerEiPKc
	movl	%eax, -44(%rbp)
	cmpq	$0, 24(%rbp)
	je	.L166
	cmpl	$0, -44(%rbp)
	jne	.L166
	leaq	-40(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN2cl5EventaSERKP9_cl_event
.L166:
	movl	-44(%rbp), %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3074:
	.size	_ZNK2cl12CommandQueue17enqueueReadBufferERKNS_6BufferEjmmPvPKSt6vectorINS_5EventESaIS6_EEPS6_, .-_ZNK2cl12CommandQueue17enqueueReadBufferERKNS_6BufferEjmmPvPKSt6vectorINS_5EventESaIS6_EEPS6_
	.section	.rodata
.LC13:
	.string	"clEnqueueNDRangeKernel"
	.section	.text._ZNK2cl12CommandQueue20enqueueNDRangeKernelERKNS_6KernelERKNS_7NDRangeES6_S6_PKSt6vectorINS_5EventESaIS8_EEPS8_,"axG",@progbits,_ZNK2cl12CommandQueue20enqueueNDRangeKernelERKNS_6KernelERKNS_7NDRangeES6_S6_PKSt6vectorINS_5EventESaIS8_EEPS8_,comdat
	.align 2
	.weak	_ZNK2cl12CommandQueue20enqueueNDRangeKernelERKNS_6KernelERKNS_7NDRangeES6_S6_PKSt6vectorINS_5EventESaIS8_EEPS8_
	.type	_ZNK2cl12CommandQueue20enqueueNDRangeKernelERKNS_6KernelERKNS_7NDRangeES6_S6_PKSt6vectorINS_5EventESaIS8_EEPS8_, @function
_ZNK2cl12CommandQueue20enqueueNDRangeKernelERKNS_6KernelERKNS_7NDRangeES6_S6_PKSt6vectorINS_5EventESaIS8_EEPS8_:
.LFB3096:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	%r9, -112(%rbp)
	cmpq	$0, 16(%rbp)
	je	.L169
	leaq	-56(%rbp), %r14
	jmp	.L170
.L169:
	movl	$0, %r14d
.L170:
	cmpq	$0, -112(%rbp)
	je	.L171
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIN2cl5EventESaIS1_EE4sizeEv
	testq	%rax, %rax
	je	.L171
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIN2cl5EventESaIS1_EE5frontEv
	movq	%rax, %r13
	jmp	.L172
.L171:
	movl	$0, %r13d
.L172:
	cmpq	$0, -112(%rbp)
	je	.L173
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIN2cl5EventESaIS1_EE4sizeEv
	movl	%eax, %r12d
	jmp	.L174
.L173:
	movl	$0, %r12d
.L174:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK2cl7NDRange10dimensionsEv
	testq	%rax, %rax
	je	.L175
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK2cl7NDRangecvPKmEv
	movq	%rax, %r15
	jmp	.L176
.L175:
	movl	$0, %r15d
.L176:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK2cl7NDRangecvPKmEv
	movq	%rax, -120(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK2cl7NDRange10dimensionsEv
	testq	%rax, %rax
	je	.L177
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK2cl7NDRangecvPKmEv
	movq	%rax, %rbx
	jmp	.L178
.L177:
	movl	$0, %ebx
.L178:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK2cl7NDRange10dimensionsEv
	movl	%eax, -124(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK2cl6detail7WrapperIP10_cl_kernelEclEv
	movq	%rax, %rsi
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%r14, 16(%rsp)
	movq	%r13, 8(%rsp)
	movl	%r12d, (%rsp)
	movq	%r15, %r9
	movq	-120(%rbp), %r8
	movq	%rbx, %rcx
	movl	-124(%rbp), %edx
	movq	%rax, %rdi
	call	clEnqueueNDRangeKernel
	movl	$.LC13, %esi
	movl	%eax, %edi
	call	_ZN2cl6detailL10errHandlerEiPKc
	movl	%eax, -60(%rbp)
	cmpq	$0, 16(%rbp)
	je	.L179
	cmpl	$0, -60(%rbp)
	jne	.L179
	leaq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	16(%rbp), %rdi
	call	_ZN2cl5EventaSERKP9_cl_event
.L179:
	movl	-60(%rbp), %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3096:
	.size	_ZNK2cl12CommandQueue20enqueueNDRangeKernelERKNS_6KernelERKNS_7NDRangeES6_S6_PKSt6vectorINS_5EventESaIS8_EEPS8_, .-_ZNK2cl12CommandQueue20enqueueNDRangeKernelERKNS_6KernelERKNS_7NDRangeES6_S6_PKSt6vectorINS_5EventESaIS8_EEPS8_
	.section	.rodata
.LC14:
	.string	"clFlush"
	.section	.text._ZNK2cl12CommandQueue5flushEv,"axG",@progbits,_ZNK2cl12CommandQueue5flushEv,comdat
	.align 2
	.weak	_ZNK2cl12CommandQueue5flushEv
	.type	_ZNK2cl12CommandQueue5flushEv, @function
_ZNK2cl12CommandQueue5flushEv:
.LFB3102:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	clFlush
	movl	$.LC14, %esi
	movl	%eax, %edi
	call	_ZN2cl6detailL10errHandlerEiPKc
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3102:
	.size	_ZNK2cl12CommandQueue5flushEv, .-_ZNK2cl12CommandQueue5flushEv
	.section	.rodata
.LC15:
	.string	"clFinish"
	.section	.text._ZNK2cl12CommandQueue6finishEv,"axG",@progbits,_ZNK2cl12CommandQueue6finishEv,comdat
	.align 2
	.weak	_ZNK2cl12CommandQueue6finishEv
	.type	_ZNK2cl12CommandQueue6finishEv, @function
_ZNK2cl12CommandQueue6finishEv:
.LFB3103:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	clFinish
	movl	$.LC15, %esi
	movl	%eax, %edi
	call	_ZN2cl6detailL10errHandlerEiPKc
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3103:
	.size	_ZNK2cl12CommandQueue6finishEv, .-_ZNK2cl12CommandQueue6finishEv
	.weak	_ZN2cl12CommandQueue20default_initialized_E
	.data
	.align 4
	.type	_ZN2cl12CommandQueue20default_initialized_E, @object
	.size	_ZN2cl12CommandQueue20default_initialized_E, 4
_ZN2cl12CommandQueue20default_initialized_E:
	.long	1
	.weak	_ZN2cl12CommandQueue8default_E
	.bss
	.align 8
	.type	_ZN2cl12CommandQueue8default_E, @object
	.size	_ZN2cl12CommandQueue8default_E, 8
_ZN2cl12CommandQueue8default_E:
	.zero	8
	.weak	_ZN2cl12CommandQueue14default_error_E
	.align 4
	.type	_ZN2cl12CommandQueue14default_error_E, @object
	.size	_ZN2cl12CommandQueue14default_error_E, 4
_ZN2cl12CommandQueue14default_error_E:
	.zero	4
	.local	_ZL8max_time
	.comm	_ZL8max_time,8,8
	.local	_ZL4warp
	.comm	_ZL4warp,8,8
	.globl	Devs
	.data
	.align 4
	.type	Devs, @object
	.size	Devs, 12
Devs:
	.long	2
	.long	1
	.long	0
	.globl	ranges
	.align 16
	.type	ranges, @object
	.size	ranges, 16
ranges:
	.long	1202590843
	.long	1069841121
	.long	0
	.long	1071644672
	.globl	stuff
	.bss
	.align 32
	.type	stuff, @object
	.size	stuff, 88
stuff:
	.zero	88
	.globl	t_step
	.align 8
	.type	t_step, @object
	.size	t_step, 8
t_step:
	.zero	8
	.local	_ZL8n_frames
	.comm	_ZL8n_frames,4,4
	.text
	.globl	_Z12string2arraySsPd
	.type	_Z12string2arraySsPd, @function
_Z12string2arraySsPd:
.LFB3288:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA3288
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB10:
	call	_ZSt4stodRKSsPm
	movsd	%xmm0, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	leaq	-64(%rbp), %rax
	movq	-72(%rbp), %rsi
	movq	$-1, %rcx
	movq	%rax, %rdi
	call	_ZNKSs6substrEmm
.LEHE10:
	movq	-80(%rbp), %rax
	leaq	8(%rax), %rbx
	leaq	-24(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB11:
	call	_ZSt4stodRKSsPm
	movsd	%xmm0, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-80(%rbp), %rax
	leaq	16(%rax), %rbx
	movq	-24(%rbp), %rax
	leaq	2(%rax), %rdx
	leaq	-48(%rbp), %rax
	leaq	-64(%rbp), %rsi
	movq	$-1, %rcx
	movq	%rax, %rdi
	call	_ZNKSs6substrEmm
.LEHE11:
	leaq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
.LEHB12:
	call	_ZSt4stodRKSsPm
.LEHE12:
	movsd	%xmm0, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, (%rbx)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	movl	$1, %ebx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	movl	%ebx, %eax
	jmp	.L191
.L190:
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L188
.L189:
	movq	%rax, %rbx
.L188:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB13:
	call	_Unwind_Resume
.LEHE13:
.L191:
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3288:
	.section	.gcc_except_table,"a",@progbits
.LLSDA3288:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3288-.LLSDACSB3288
.LLSDACSB3288:
	.uleb128 .LEHB10-.LFB3288
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB3288
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L189-.LFB3288
	.uleb128 0
	.uleb128 .LEHB12-.LFB3288
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L190-.LFB3288
	.uleb128 0
	.uleb128 .LEHB13-.LFB3288
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
.LLSDACSE3288:
	.text
	.size	_Z12string2arraySsPd, .-_Z12string2arraySsPd
	.section	.rodata
.LC16:
	.string	"["
.LC17:
	.string	"%+.13e"
.LC18:
	.string	", "
.LC19:
	.string	"; "
.LC20:
	.string	"]\n"
	.text
	.globl	_Z13arraytostringPA4_di
	.type	_Z13arraytostringPA4_di, @function
_Z13arraytostringPA4_di:
.LFB3289:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA3289
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movl	%edx, -116(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-80(%rbp), %rdx
	movq	-104(%rbp), %rax
	movl	$.LC16, %esi
	movq	%rax, %rdi
.LEHB14:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE14:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	movl	$0, -88(%rbp)
	jmp	.L193
.L198:
	movl	$0, -84(%rbp)
	jmp	.L194
.L196:
	movl	-88(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-112(%rbp), %rax
	addq	%rax, %rdx
	movl	-84(%rbp), %eax
	cltq
	movq	(%rdx,%rax,8), %rax
	leaq	-64(%rbp), %rdx
	movq	%rax, -128(%rbp)
	movsd	-128(%rbp), %xmm0
	movl	$.LC17, %esi
	movq	%rdx, %rdi
	movl	$1, %eax
	call	sprintf
	leaq	-89(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-89(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB15:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE15:
	leaq	-80(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB16:
	call	_ZNSs6appendERKSs
.LEHE16:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-89(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	cmpl	$2, -84(%rbp)
	je	.L195
	movq	-104(%rbp), %rax
	movl	$.LC18, %esi
	movq	%rax, %rdi
.LEHB17:
	call	_ZNSs6appendEPKc
.L195:
	addl	$1, -84(%rbp)
.L194:
	cmpl	$2, -84(%rbp)
	jle	.L196
	movl	-116(%rbp), %eax
	subl	$1, %eax
	cmpl	-88(%rbp), %eax
	je	.L197
	movq	-104(%rbp), %rax
	movl	$.LC19, %esi
	movq	%rax, %rdi
	call	_ZNSs6appendEPKc
.L197:
	addl	$1, -88(%rbp)
.L193:
	movl	-88(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jl	.L198
	movq	-104(%rbp), %rax
	movl	$.LC20, %esi
	movq	%rax, %rdi
	call	_ZNSs6appendEPKc
.LEHE17:
	jmp	.L209
.L205:
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB18:
	call	_Unwind_Resume
.L207:
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L202
.L206:
	movq	%rax, %rbx
.L202:
	leaq	-89(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	jmp	.L203
.L208:
	movq	%rax, %rbx
.L203:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume
.LEHE18:
.L209:
	movq	-104(%rbp), %rax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L204
	call	__stack_chk_fail
.L204:
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3289:
	.section	.gcc_except_table
.LLSDA3289:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3289-.LLSDACSB3289
.LLSDACSB3289:
	.uleb128 .LEHB14-.LFB3289
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L205-.LFB3289
	.uleb128 0
	.uleb128 .LEHB15-.LFB3289
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L206-.LFB3289
	.uleb128 0
	.uleb128 .LEHB16-.LFB3289
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L207-.LFB3289
	.uleb128 0
	.uleb128 .LEHB17-.LFB3289
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L208-.LFB3289
	.uleb128 0
	.uleb128 .LEHB18-.LFB3289
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
.LLSDACSE3289:
	.text
	.size	_Z13arraytostringPA4_di, .-_Z13arraytostringPA4_di
	.globl	_Z13arraytostringPdi
	.type	_Z13arraytostringPdi, @function
_Z13arraytostringPdi:
.LFB3290:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA3290
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movl	%edx, -116(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-80(%rbp), %rdx
	movq	-104(%rbp), %rax
	movl	$.LC16, %esi
	movq	%rax, %rdi
.LEHB19:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE19:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	movl	$0, -84(%rbp)
	jmp	.L211
.L213:
	movl	-84(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	-64(%rbp), %rdx
	movq	%rax, -128(%rbp)
	movsd	-128(%rbp), %xmm0
	movl	$.LC17, %esi
	movq	%rdx, %rdi
	movl	$1, %eax
	call	sprintf
	leaq	-85(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-85(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB20:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE20:
	leaq	-80(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB21:
	call	_ZNSs6appendERKSs
.LEHE21:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-85(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	movl	-116(%rbp), %eax
	subl	$1, %eax
	cmpl	-84(%rbp), %eax
	je	.L212
	movq	-104(%rbp), %rax
	movl	$.LC18, %esi
	movq	%rax, %rdi
.LEHB22:
	call	_ZNSs6appendEPKc
.L212:
	addl	$1, -84(%rbp)
.L211:
	movl	-84(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jl	.L213
	movq	-104(%rbp), %rax
	movl	$.LC20, %esi
	movq	%rax, %rdi
	call	_ZNSs6appendEPKc
.LEHE22:
	jmp	.L224
.L220:
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB23:
	call	_Unwind_Resume
.L222:
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L217
.L221:
	movq	%rax, %rbx
.L217:
	leaq	-85(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	jmp	.L218
.L223:
	movq	%rax, %rbx
.L218:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume
.LEHE23:
.L224:
	movq	-104(%rbp), %rax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L219
	call	__stack_chk_fail
.L219:
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3290:
	.section	.gcc_except_table
.LLSDA3290:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3290-.LLSDACSB3290
.LLSDACSB3290:
	.uleb128 .LEHB19-.LFB3290
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L220-.LFB3290
	.uleb128 0
	.uleb128 .LEHB20-.LFB3290
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L221-.LFB3290
	.uleb128 0
	.uleb128 .LEHB21-.LFB3290
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L222-.LFB3290
	.uleb128 0
	.uleb128 .LEHB22-.LFB3290
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L223-.LFB3290
	.uleb128 0
	.uleb128 .LEHB23-.LFB3290
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
.LLSDACSE3290:
	.text
	.size	_Z13arraytostringPdi, .-_Z13arraytostringPdi
	.section	.text._ZNSt8iteratorISt18input_iterator_tagclPccEC2Ev,"axG",@progbits,_ZNSt8iteratorISt18input_iterator_tagclPccEC5Ev,comdat
	.align 2
	.weak	_ZNSt8iteratorISt18input_iterator_tagclPccEC2Ev
	.type	_ZNSt8iteratorISt18input_iterator_tagclPccEC2Ev, @function
_ZNSt8iteratorISt18input_iterator_tagclPccEC2Ev:
.LFB3294:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3294:
	.size	_ZNSt8iteratorISt18input_iterator_tagclPccEC2Ev, .-_ZNSt8iteratorISt18input_iterator_tagclPccEC2Ev
	.weak	_ZNSt8iteratorISt18input_iterator_tagclPccEC1Ev
	.set	_ZNSt8iteratorISt18input_iterator_tagclPccEC1Ev,_ZNSt8iteratorISt18input_iterator_tagclPccEC2Ev
	.section	.text._ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC1Ev,"axG",@progbits,_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC1Ev,comdat
	.align 2
	.weak	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC1Ev
	.type	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC1Ev, @function
_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC1Ev:
.LFB3297:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8iteratorISt18input_iterator_tagclPccEC2Ev
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	call	_ZNSt11char_traitsIcE3eofEv
	movq	-8(%rbp), %rdx
	movl	%eax, 8(%rdx)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3297:
	.size	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC1Ev, .-_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC1Ev
	.section	.text._ZSt7forwardIPKcEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardIPKcEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.weak	_ZSt7forwardIPKcEOT_RNSt16remove_referenceIS2_E4typeE
	.type	_ZSt7forwardIPKcEOT_RNSt16remove_referenceIS2_E4typeE, @function
_ZSt7forwardIPKcEOT_RNSt16remove_referenceIS2_E4typeE:
.LFB3299:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3299:
	.size	_ZSt7forwardIPKcEOT_RNSt16remove_referenceIS2_E4typeE, .-_ZSt7forwardIPKcEOT_RNSt16remove_referenceIS2_E4typeE
	.section	.text._ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE,"axG",@progbits,_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE,comdat
	.weak	_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE
	.type	_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE, @function
_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE:
.LFB3300:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3300:
	.size	_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE, .-_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE
	.section	.text._ZNSt4pairIPKcmEC1IS1_mvEEOT_OT0_,"axG",@progbits,_ZNSt4pairIPKcmEC1IS1_mvEEOT_OT0_,comdat
	.align 2
	.weak	_ZNSt4pairIPKcmEC1IS1_mvEEOT_OT0_
	.type	_ZNSt4pairIPKcmEC1IS1_mvEEOT_OT0_, @function
_ZNSt4pairIPKcmEC1IS1_mvEEOT_OT0_:
.LFB3303:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIPKcEOT_RNSt16remove_referenceIS2_E4typeE
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3303:
	.size	_ZNSt4pairIPKcmEC1IS1_mvEEOT_OT0_, .-_ZNSt4pairIPKcmEC1IS1_mvEEOT_OT0_
	.section	.text._ZSt9make_pairIPKcmESt4pairINSt17__decay_and_stripIT_E6__typeENS3_IT0_E6__typeEEOS4_OS7_,"axG",@progbits,_ZSt9make_pairIPKcmESt4pairINSt17__decay_and_stripIT_E6__typeENS3_IT0_E6__typeEEOS4_OS7_,comdat
	.weak	_ZSt9make_pairIPKcmESt4pairINSt17__decay_and_stripIT_E6__typeENS3_IT0_E6__typeEEOS4_OS7_
	.type	_ZSt9make_pairIPKcmESt4pairINSt17__decay_and_stripIT_E6__typeENS3_IT0_E6__typeEEOS4_OS7_, @function
_ZSt9make_pairIPKcmESt4pairINSt17__decay_and_stripIT_E6__typeENS3_IT0_E6__typeEEOS4_OS7_:
.LFB3298:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIPKcEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rcx
	leaq	-32(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIPKcmEC1IS1_mvEEOT_OT0_
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3298:
	.size	_ZSt9make_pairIPKcmESt4pairINSt17__decay_and_stripIT_E6__typeENS3_IT0_E6__typeEEOS4_OS7_, .-_ZSt9make_pairIPKcmESt4pairINSt17__decay_and_stripIT_E6__typeENS3_IT0_E6__typeEEOS4_OS7_
	.section	.rodata
.LC21:
	.string	"-cl-finite-math-only"
	.text
	.globl	_Z11kernel_initSsSsN2cl7ContextESt6vectorINS_6DeviceESaIS2_EE
	.type	_Z11kernel_initSsSsN2cl7ContextESt6vectorINS_6DeviceESaIS2_EE, @function
_Z11kernel_initSsSsN2cl7ContextESt6vectorINS_6DeviceESaIS2_EE:
.LFB3291:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA3291
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$680, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -648(%rbp)
	movq	%rsi, -656(%rbp)
	movq	%rdx, -664(%rbp)
	movq	%rcx, -672(%rbp)
	movq	%r8, -680(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-656(%rbp), %rcx
	leaq	-544(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB24:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1ERKSsSt13_Ios_Openmode
.LEHE24:
	leaq	-600(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC1Ev
	leaq	-544(%rbp), %rdx
	leaq	-592(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC1ERSi
	leaq	-600(%rbp), %r8
	movq	-576(%rbp), %rcx
	movq	-568(%rbp), %rdi
	movq	-592(%rbp), %rsi
	movq	-584(%rbp), %rdx
	leaq	-624(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
.LEHB25:
	call	_ZNSsC1ISt19istreambuf_iteratorIcSt11char_traitsIcEEEET_S4_RKSaIcE
.LEHE25:
	leaq	-600(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-625(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaISt4pairIPKcmEEC1Ev
	leaq	-624(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSs6lengthEv
	addq	$1, %rax
	movq	%rax, -600(%rbp)
	leaq	-624(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSs5c_strEv
	movq	%rax, -608(%rbp)
	leaq	-600(%rbp), %rdx
	leaq	-608(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt9make_pairIPKcmESt4pairINSt17__decay_and_stripIT_E6__typeENS3_IT0_E6__typeEEOS4_OS7_
	movq	%rax, -592(%rbp)
	movq	%rdx, -584(%rbp)
	leaq	-625(%rbp), %rcx
	leaq	-592(%rbp), %rdx
	leaq	-576(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
.LEHB26:
	call	_ZNSt6vectorISt4pairIPKcmESaIS3_EEC1EmRKS3_RKS4_
.LEHE26:
	leaq	-625(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaISt4pairIPKcmEED1Ev
	leaq	-576(%rbp), %rdx
	movq	-672(%rbp), %rsi
	leaq	-592(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
.LEHB27:
	call	_ZN2cl7ProgramC1ERKNS_7ContextERKSt6vectorISt4pairIPKcmESaIS8_EEPi
.LEHE27:
	movq	-680(%rbp), %rsi
	leaq	-592(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$.LC21, %edx
	movq	%rax, %rdi
.LEHB28:
	call	_ZNK2cl7Program5buildERKSt6vectorINS_6DeviceESaIS2_EEPKcPFvP11_cl_programPvESB_
	movq	-664(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSs5c_strEv
	movq	%rax, %rdx
	leaq	-592(%rbp), %rsi
	movq	-648(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	_ZN2cl6KernelC1ERKNS_7ProgramEPKcPi
.LEHE28:
	nop
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl7ProgramD1Ev
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt4pairIPKcmESaIS3_EED1Ev
	leaq	-624(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	movq	-648(%rbp), %rax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L242
	jmp	.L247
.L243:
	movq	%rax, %rbx
	leaq	-600(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	jmp	.L237
.L244:
	movq	%rax, %rbx
	leaq	-625(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaISt4pairIPKcmEED1Ev
	jmp	.L239
.L246:
	movq	%rax, %rbx
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl7ProgramD1Ev
	jmp	.L241
.L245:
	movq	%rax, %rbx
.L241:
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorISt4pairIPKcmESaIS3_EED1Ev
.L239:
	leaq	-624(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
.L237:
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB29:
	call	_Unwind_Resume
.LEHE29:
.L247:
	call	__stack_chk_fail
.L242:
	addq	$680, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3291:
	.section	.gcc_except_table
.LLSDA3291:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3291-.LLSDACSB3291
.LLSDACSB3291:
	.uleb128 .LEHB24-.LFB3291
	.uleb128 .LEHE24-.LEHB24
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB25-.LFB3291
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L243-.LFB3291
	.uleb128 0
	.uleb128 .LEHB26-.LFB3291
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L244-.LFB3291
	.uleb128 0
	.uleb128 .LEHB27-.LFB3291
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L245-.LFB3291
	.uleb128 0
	.uleb128 .LEHB28-.LFB3291
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L246-.LFB3291
	.uleb128 0
	.uleb128 .LEHB29-.LFB3291
	.uleb128 .LEHE29-.LEHB29
	.uleb128 0
	.uleb128 0
.LLSDACSE3291:
	.text
	.size	_Z11kernel_initSsSsN2cl7ContextESt6vectorINS_6DeviceESaIS2_EE, .-_Z11kernel_initSsSsN2cl7ContextESt6vectorINS_6DeviceESaIS2_EE
	.section	.rodata
.LC22:
	.string	"../Setup"
.LC23:
	.string	"/"
.LC24:
	.string	"r.vec"
.LC25:
	.string	"v.vec"
.LC26:
	.string	"w.vec"
.LC27:
	.string	"rad.vec"
.LC28:
	.string	"q.vec"
.LC29:
	.string	"m.vec"
.LC30:
	.string	""
	.align 8
.LC39:
	.string	"Insufficient frames for specified warp; frame intervals will be wierd\r\n"
.LC40:
	.string	"\n"
.LC44:
	.string	"Please Choose Device:\n\n"
.LC45:
	.string	"Device "
.LC46:
	.string	": "
.LC47:
	.string	"Fimp"
.LC48:
	.string	"F_Hybrid.cl"
.LC49:
	.string	"Tstep"
.LC50:
	.string	"kinetic.cl"
.LC51:
	.string	"rstep"
.LC52:
	.string	"position.cl"
.LC53:
	.string	"red"
.LC54:
	.string	"reduce.cl"
.LC55:
	.string	"rmove"
.LC56:
	.string	"translate.cl"
.LC57:
	.string	"rmove0"
.LC58:
	.string	"translate_0.cl"
.LC59:
	.string	"vstep"
.LC60:
	.string	"velocity.cl"
.LC61:
	.string	"zeroer"
.LC62:
	.string	"zero.cl"
.LC63:
	.string	"Scale"
.LC64:
	.string	"time_scaler.cl"
.LC65:
	.string	"../Outputs"
.LC66:
	.string	"Particle_tracks.dat"
.LC67:
	.string	"T_v_tracks.dat"
.LC68:
	.string	"T_w_tracks.dat"
.LC69:
	.string	"E_int_tracks.dat"
.LC70:
	.string	"V_tracks.dat"
.LC71:
	.string	"v_tracks.dat"
.LC72:
	.string	"w_tracks.dat"
	.align 8
.LC73:
	.string	"Kernels & Buffers set: simulation started.\n"
.LC76:
	.string	"%\n"
.LC80:
	.string	"First 512 steps runtime: "
.LC81:
	.string	"s; Estimated run time: "
.LC82:
	.string	"h"
.LC83:
	.string	"m"
.LC84:
	.string	"s\n"
.LC85:
	.string	"\nSimulation complete!\n\n"
.LC86:
	.string	"Runtime was: "
	.text
	.globl	main
	.type	main, @function
main:
.LFB3304:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA3304
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$18648, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movl	$32768, %edi
.LEHB30:
	call	_Znam
	movq	%rax, -15944(%rbp)
	movl	$32768, %edi
	call	_Znam
	movq	%rax, -15936(%rbp)
	movl	$32768, %edi
	call	_Znam
	movq	%rax, -15928(%rbp)
	movl	$8192, %edi
	call	_Znam
	movq	%rax, -15920(%rbp)
	movl	$8192, %edi
	call	_Znam
	movq	%rax, -15912(%rbp)
	movl	$8192, %edi
	call	_Znam
	movq	%rax, -15904(%rbp)
	leaq	-18560(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsC1Ev
.LEHE30:
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-14976(%rbp), %rdx
	leaq	-18544(%rbp), %rax
	movl	$.LC22, %esi
	movq	%rax, %rdi
.LEHB31:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE31:
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-18528(%rbp), %rax
	leaq	-18544(%rbp), %rcx
	movl	$.LC23, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB32:
	call	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_
.LEHE32:
	leaq	-18528(%rbp), %rdx
	leaq	-18560(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB33:
	call	_ZNSsaSEOSs
.LEHE33:
	leaq	-18528(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-18512(%rbp), %rax
	leaq	-18560(%rbp), %rcx
	movl	$.LC24, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB34:
	call	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_
.LEHE34:
	leaq	-18512(%rbp), %rcx
	leaq	-3200(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB35:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1ERKSsSt13_Ios_Openmode
.LEHE35:
	leaq	-18512(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-18496(%rbp), %rax
	leaq	-18560(%rbp), %rcx
	movl	$.LC25, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB36:
	call	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_
.LEHE36:
	leaq	-18496(%rbp), %rcx
	leaq	-2672(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB37:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1ERKSsSt13_Ios_Openmode
.LEHE37:
	leaq	-18496(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-18480(%rbp), %rax
	leaq	-18560(%rbp), %rcx
	movl	$.LC26, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB38:
	call	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_
.LEHE38:
	leaq	-18480(%rbp), %rcx
	leaq	-2144(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB39:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1ERKSsSt13_Ios_Openmode
.LEHE39:
	leaq	-18480(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-18464(%rbp), %rax
	leaq	-18560(%rbp), %rcx
	movl	$.LC27, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB40:
	call	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_
.LEHE40:
	leaq	-18464(%rbp), %rcx
	leaq	-1616(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB41:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1ERKSsSt13_Ios_Openmode
.LEHE41:
	leaq	-18464(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-18448(%rbp), %rax
	leaq	-18560(%rbp), %rcx
	movl	$.LC28, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB42:
	call	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_
.LEHE42:
	leaq	-18448(%rbp), %rcx
	leaq	-1088(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB43:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1ERKSsSt13_Ios_Openmode
.LEHE43:
	leaq	-18448(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-18432(%rbp), %rax
	leaq	-18560(%rbp), %rcx
	movl	$.LC29, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB44:
	call	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_
.LEHE44:
	leaq	-18432(%rbp), %rcx
	leaq	-560(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB45:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1ERKSsSt13_Ios_Openmode
.LEHE45:
	leaq	-18432(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	movl	$0, -18624(%rbp)
	jmp	.L249
.L252:
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-14976(%rbp), %rdx
	leaq	-15232(%rbp), %rax
	movl	$.LC30, %esi
	movq	%rax, %rdi
.LEHB46:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE46:
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-14976(%rbp), %rdx
	leaq	-15200(%rbp), %rax
	movl	$.LC30, %esi
	movq	%rax, %rdi
.LEHB47:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE47:
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-14976(%rbp), %rdx
	leaq	-15168(%rbp), %rax
	movl	$.LC30, %esi
	movq	%rax, %rdi
.LEHB48:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE48:
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-14976(%rbp), %rdx
	leaq	-15136(%rbp), %rax
	movl	$.LC30, %esi
	movq	%rax, %rdi
.LEHB49:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE49:
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-14976(%rbp), %rdx
	leaq	-15104(%rbp), %rax
	movl	$.LC30, %esi
	movq	%rax, %rdi
.LEHB50:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE50:
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-14976(%rbp), %rdx
	leaq	-15072(%rbp), %rax
	movl	$.LC30, %esi
	movq	%rax, %rdi
.LEHB51:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE51:
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	movl	$0, %eax
	movq	%rax, -15040(%rbp)
	movl	$0, %eax
	movq	%rax, -15032(%rbp)
	movl	$0, %eax
	movq	%rax, -15024(%rbp)
	movl	$0, %eax
	movq	%rax, -15016(%rbp)
	movl	$0, %eax
	movq	%rax, -15008(%rbp)
	movl	$0, %eax
	movq	%rax, -15000(%rbp)
	movl	$0, %eax
	movq	%rax, -14992(%rbp)
	movl	$0, %eax
	movq	%rax, -14984(%rbp)
	movl	$0, %eax
	movq	%rax, -14976(%rbp)
	movl	$0, %eax
	movq	%rax, -14968(%rbp)
	movl	$0, %eax
	movq	%rax, -14960(%rbp)
	movl	$0, %eax
	movq	%rax, -14952(%rbp)
	movl	$0, %eax
	movq	%rax, -15896(%rbp)
	movl	$0, %eax
	movq	%rax, -15888(%rbp)
	movl	$0, %eax
	movq	%rax, -15880(%rbp)
	leaq	-15232(%rbp), %rdx
	leaq	-3200(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB52:
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_E
	leaq	-15200(%rbp), %rdx
	leaq	-2672(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_E
	leaq	-15168(%rbp), %rdx
	leaq	-2144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_E
	leaq	-15136(%rbp), %rdx
	leaq	-1088(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_E
	leaq	-15104(%rbp), %rdx
	leaq	-560(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_E
	leaq	-15072(%rbp), %rdx
	leaq	-1616(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_E
	leaq	-15232(%rbp), %rdx
	leaq	-18416(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSsC1ERKSs
.LEHE52:
	leaq	-15040(%rbp), %rdx
	leaq	-18416(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB53:
	call	_Z12string2arraySsPd
.LEHE53:
	leaq	-18416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-15200(%rbp), %rdx
	leaq	-18400(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB54:
	call	_ZNSsC1ERKSs
.LEHE54:
	leaq	-15008(%rbp), %rdx
	leaq	-18400(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB55:
	call	_Z12string2arraySsPd
.LEHE55:
	leaq	-18400(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-15168(%rbp), %rdx
	leaq	-18384(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB56:
	call	_ZNSsC1ERKSs
.LEHE56:
	leaq	-14976(%rbp), %rdx
	leaq	-18384(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB57:
	call	_Z12string2arraySsPd
.LEHE57:
	leaq	-18384(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-15136(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
.LEHB58:
	call	_ZSt4stodRKSsPm
	movsd	%xmm0, -18648(%rbp)
	movq	-18648(%rbp), %rax
	movq	%rax, -15896(%rbp)
	leaq	-15104(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZSt4stodRKSsPm
	movsd	%xmm0, -18648(%rbp)
	movq	-18648(%rbp), %rax
	movq	%rax, -15880(%rbp)
	leaq	-15072(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZSt4stodRKSsPm
.LEHE58:
	movsd	%xmm0, -18648(%rbp)
	movq	-18648(%rbp), %rax
	movq	%rax, -15888(%rbp)
	movl	-18624(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-15920(%rbp), %rax
	addq	%rax, %rdx
	movq	-15896(%rbp), %rax
	movq	%rax, (%rdx)
	movl	-18624(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-15904(%rbp), %rax
	addq	%rax, %rdx
	movq	-15888(%rbp), %rax
	movq	%rax, (%rdx)
	movl	-18624(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-15912(%rbp), %rax
	addq	%rax, %rdx
	movq	-15880(%rbp), %rax
	movq	%rax, (%rdx)
	movl	$0, -18620(%rbp)
	jmp	.L250
.L251:
	movl	-18624(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-15944(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-18620(%rbp), %eax
	cltq
	movq	-15040(%rbp,%rax,8), %rax
	movl	-18620(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rax, (%rcx,%rdx,8)
	movl	-18624(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-15936(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-18620(%rbp), %eax
	cltq
	movq	-15008(%rbp,%rax,8), %rax
	movl	-18620(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rax, (%rcx,%rdx,8)
	movl	-18624(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-15928(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-18620(%rbp), %eax
	cltq
	movq	-14976(%rbp,%rax,8), %rax
	movl	-18620(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rax, (%rcx,%rdx,8)
	addl	$1, -18620(%rbp)
.L250:
	cmpl	$3, -18620(%rbp)
	jle	.L251
	leaq	-15072(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-15104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-15136(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-15168(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-15200(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-15232(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	addl	$1, -18624(%rbp)
.L249:
	cmpl	$1023, -18624(%rbp)
	jle	.L252
	movabsq	$4553139223271571456, %rax
	movq	%rax, stuff(%rip)
	movabsq	$4562254508917369340, %rax
	movq	%rax, stuff+8(%rip)
	movabsq	$4499125899939309867, %rax
	movq	%rax, stuff+16(%rip)
	movabsq	$4600877379321698714, %rax
	movq	%rax, stuff+32(%rip)
	movabsq	$4599075939470750515, %rax
	movq	%rax, stuff+40(%rip)
	movabsq	$4454720065436915262, %rax
	movq	%rax, stuff+48(%rip)
	movabsq	$4756009671265324389, %rax
	movq	%rax, stuff+56(%rip)
	movabsq	$4562254508917369340, %rax
	movq	%rax, stuff+64(%rip)
	movabsq	$4553139223271571456, %rax
	movq	%rax, stuff+72(%rip)
	movabsq	$4553139223271571456, %rax
	movq	%rax, stuff+80(%rip)
	movl	_ZL8n_frames(%rip), %eax
	cvtsi2sd	%eax, %xmm0
	movsd	_ZL8max_time(%rip), %xmm1
	movsd	stuff+72(%rip), %xmm2
	divsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.L253
	movl	$.LC39, %esi
	movl	$_ZSt4cout, %edi
.LEHB59:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	_ZL8max_time(%rip), %xmm0
	movsd	stuff+72(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -18648(%rbp)
	movl	_ZL8n_frames(%rip), %eax
	movl	%eax, %esi
	movl	$_ZSt4cout, %edi
	call	_ZNSolsEi
	movl	$.LC19, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movsd	-18648(%rbp), %xmm0
	movq	%rax, %rdi
	call	_ZNSolsEd
	movl	$.LC40, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L253:
	movl	$0, -18616(%rbp)
	movl	$0, -18584(%rbp)
	movl	$8192, %edi
	call	_Znam
	movq	%rax, -15872(%rbp)
	movl	$8192, %edi
	call	_Znam
	movq	%rax, -15864(%rbp)
	movl	$2095104, %edi
	call	_Znam
	movq	%rax, -15856(%rbp)
	movl	$2095104, %edi
	call	_Znam
	movq	%rax, -15848(%rbp)
	movl	$4194304, %edi
	call	_Znam
	movq	%rax, -15840(%rbp)
	movl	$523776, -18368(%rbp)
	movl	$1024, -18364(%rbp)
	movl	$0, -18612(%rbp)
	jmp	.L255
.L256:
	movl	-18612(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-15864(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	-18612(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-15912(%rbp), %rax
	addq	%rdx, %rax
	movsd	(%rax), %xmm0
	movapd	%xmm0, %xmm3
	addsd	%xmm0, %xmm3
	movsd	%xmm3, -18648(%rbp)
	movl	-18612(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-15904(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movabsq	$4611686018427387904, %rdx
	movq	%rdx, -18656(%rbp)
	movsd	-18656(%rbp), %xmm1
	movq	%rax, -18656(%rbp)
	movsd	-18656(%rbp), %xmm0
	call	pow
	mulsd	-18648(%rbp), %xmm0
	movsd	.LC42(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, (%rbx)
	addl	$1, -18612(%rbp)
.L255:
	cmpl	$1023, -18612(%rbp)
	jle	.L256
	movl	$1, -18608(%rbp)
	jmp	.L257
.L260:
	movl	$0, -18604(%rbp)
	jmp	.L258
.L259:
	cvtsi2sd	-18608(%rbp), %xmm0
	movsd	.LC43(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	movl	-18608(%rbp), %eax
	subl	$1, %eax
	cvtsi2sd	%eax, %xmm0
	mulsd	%xmm0, %xmm1
	cvtsi2sd	-18604(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -18580(%rbp)
	movl	-18580(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-15856(%rbp), %rax
	addq	%rax, %rdx
	movl	-18608(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-18580(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-15848(%rbp), %rax
	addq	%rax, %rdx
	movl	-18604(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-18608(%rbp), %eax
	cltq
	salq	$12, %rax
	movq	%rax, %rdx
	movq	-15840(%rbp), %rax
	addq	%rax, %rdx
	movl	-18580(%rbp), %eax
	leal	1(%rax), %ecx
	movl	-18604(%rbp), %eax
	cltq
	movl	%ecx, (%rdx,%rax,4)
	movl	-18604(%rbp), %eax
	cltq
	salq	$12, %rax
	movq	%rax, %rdx
	movq	-15840(%rbp), %rax
	addq	%rax, %rdx
	movl	-18580(%rbp), %eax
	notl	%eax
	movl	%eax, %ecx
	movl	-18608(%rbp), %eax
	cltq
	movl	%ecx, (%rdx,%rax,4)
	addl	$1, -18604(%rbp)
.L258:
	movl	-18604(%rbp), %eax
	cmpl	-18608(%rbp), %eax
	jl	.L259
	addl	$1, -18608(%rbp)
.L257:
	cmpl	$1023, -18608(%rbp)
	jle	.L260
	movl	$0, -18600(%rbp)
	jmp	.L261
.L262:
	movl	-18600(%rbp), %eax
	cltq
	salq	$12, %rax
	movq	%rax, %rdx
	movq	-15840(%rbp), %rax
	addq	%rax, %rdx
	movl	-18600(%rbp), %eax
	cltq
	movl	$0, (%rdx,%rax,4)
	addl	$1, -18600(%rbp)
.L261:
	cmpl	$1023, -18600(%rbp)
	jle	.L262
	leaq	-15776(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2cl8PlatformESaIS1_EEC1Ev
.LEHE59:
	leaq	-15744(%rbp), %rax
	movq	%rax, %rdi
.LEHB60:
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EEC1Ev
.LEHE60:
	leaq	-15712(%rbp), %rax
	movq	%rax, %rdi
.LEHB61:
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EEC1Ev
.LEHE61:
	leaq	-15680(%rbp), %rax
	movq	%rax, %rdi
.LEHB62:
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EEC1Ev
.LEHE62:
	leaq	-18352(%rbp), %rax
	movq	%rax, %rdi
.LEHB63:
	call	_ZNSsC1Ev
.LEHE63:
	leaq	-15808(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6DeviceC1Ev
	leaq	-15776(%rbp), %rax
	movq	%rax, %rdi
.LEHB64:
	call	_ZN2cl8Platform3getEPSt6vectorIS0_SaIS0_EE
	leaq	-15776(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2cl8PlatformESaIS1_EEixEm
	leaq	-15744(%rbp), %rdx
	movl	$4294967295, %esi
	movq	%rax, %rdi
	call	_ZNK2cl8Platform10getDevicesEmPSt6vectorINS_6DeviceESaIS2_EE
	movl	$.LC44, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$0, -18596(%rbp)
	jmp	.L263
.L264:
	movl	-18596(%rbp), %edx
	leaq	-15744(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EEixEm
	movq	%rax, %rcx
	leaq	-18336(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNK2cl6Device7getInfoILi4139EEENS_6detail12param_traitsINS2_14cl_device_infoEXT_EE10param_typeEPi
.LEHE64:
	leaq	-18336(%rbp), %rdx
	leaq	-18352(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB65:
	call	_ZNSsaSEOSs
.LEHE65:
	leaq	-18336(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	movl	$.LC45, %esi
	movl	$_ZSt4cout, %edi
.LEHB66:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	-18596(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZNSolsEj
	movl	$.LC46, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	-18352(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	addl	$1, -18596(%rbp)
.L263:
	movl	-18596(%rbp), %ebx
	leaq	-15744(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIN2cl6DeviceESaIS1_EE4sizeEv
	cmpq	%rax, %rbx
	setb	%al
	testb	%al, %al
	jne	.L264
	leaq	-18628(%rbp), %rax
	movq	%rax, %rsi
	movl	$_ZSt3cin, %edi
	call	_ZNSirsERi
.LEHE66:
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIN2cl6DeviceEEC1Ev
	movl	-18628(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-15744(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EEixEm
	movq	%rax, %rdx
	leaq	-15792(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB67:
	call	_ZN2cl6DeviceC1ERKS0_
.LEHE67:
	leaq	-15792(%rbp), %rax
	movq	%rax, %r12
	movl	$1, %r13d
	leaq	-14976(%rbp), %rdi
	movq	%r12, %rcx
	movq	%r13, %rbx
	movq	%r12, %rax
	movq	%r13, %rdx
	movq	%rcx, %rsi
	leaq	-15648(%rbp), %rax
	movq	%rdi, %rcx
	movq	%rax, %rdi
.LEHB68:
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EEC1ESt16initializer_listIS1_ERKS2_
.LEHE68:
	leaq	-15792(%rbp), %rbx
	addq	$16, %rbx
.L266:
	leaq	-15792(%rbp), %rax
	cmpq	%rax, %rbx
	je	.L265
	subq	$16, %rbx
	movq	%rbx, %rdi
	call	_ZN2cl6DeviceD1Ev
	jmp	.L266
.L265:
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIN2cl6DeviceEED1Ev
	leaq	-15648(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EEixEm
	movq	%rax, %rsi
	leaq	-18320(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
.LEHB69:
	call	_ZN2cl7ContextC1ERKNS_6DeviceEPlPFvPKcPKvmPvES9_Pi
.LEHE69:
	leaq	-15648(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EEixEm
	movq	%rax, %rdx
	leaq	-18320(%rbp), %rsi
	leaq	-18304(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
.LEHB70:
	call	_ZN2cl12CommandQueueC1ERKNS_7ContextERKNS_6DeviceEmPi
.LEHE70:
	leaq	-15648(%rbp), %rdx
	leaq	-15616(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB71:
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EEC1ERKS3_
.LEHE71:
	leaq	-18320(%rbp), %rdx
	leaq	-18240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB72:
	call	_ZN2cl7ContextC1ERKS0_
.LEHE72:
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-14976(%rbp), %rdx
	leaq	-18256(%rbp), %rax
	movl	$.LC47, %esi
	movq	%rax, %rdi
.LEHB73:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE73:
	leaq	-15008(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-15008(%rbp), %rdx
	leaq	-18272(%rbp), %rax
	movl	$.LC48, %esi
	movq	%rax, %rdi
.LEHB74:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE74:
	leaq	-18288(%rbp), %rax
	leaq	-15616(%rbp), %rdi
	leaq	-18240(%rbp), %rcx
	leaq	-18256(%rbp), %rdx
	leaq	-18272(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
.LEHB75:
	call	_Z11kernel_initSsSsN2cl7ContextESt6vectorINS_6DeviceESaIS2_EE
.LEHE75:
	leaq	-18272(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-15008(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-18256(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-18240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl7ContextD1Ev
	leaq	-15616(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EED1Ev
	leaq	-15648(%rbp), %rdx
	leaq	-15584(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB76:
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EEC1ERKS3_
.LEHE76:
	leaq	-18320(%rbp), %rdx
	leaq	-18176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB77:
	call	_ZN2cl7ContextC1ERKS0_
.LEHE77:
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-14976(%rbp), %rdx
	leaq	-18192(%rbp), %rax
	movl	$.LC49, %esi
	movq	%rax, %rdi
.LEHB78:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE78:
	leaq	-15008(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-15008(%rbp), %rdx
	leaq	-18208(%rbp), %rax
	movl	$.LC50, %esi
	movq	%rax, %rdi
.LEHB79:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE79:
	leaq	-18224(%rbp), %rax
	leaq	-15584(%rbp), %rdi
	leaq	-18176(%rbp), %rcx
	leaq	-18192(%rbp), %rdx
	leaq	-18208(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
.LEHB80:
	call	_Z11kernel_initSsSsN2cl7ContextESt6vectorINS_6DeviceESaIS2_EE
.LEHE80:
	leaq	-18208(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-15008(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-18192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-18176(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl7ContextD1Ev
	leaq	-15584(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EED1Ev
	leaq	-15648(%rbp), %rdx
	leaq	-15552(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB81:
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EEC1ERKS3_
.LEHE81:
	leaq	-18320(%rbp), %rdx
	leaq	-18112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB82:
	call	_ZN2cl7ContextC1ERKS0_
.LEHE82:
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-14976(%rbp), %rdx
	leaq	-18128(%rbp), %rax
	movl	$.LC51, %esi
	movq	%rax, %rdi
.LEHB83:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE83:
	leaq	-15008(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-15008(%rbp), %rdx
	leaq	-18144(%rbp), %rax
	movl	$.LC52, %esi
	movq	%rax, %rdi
.LEHB84:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE84:
	leaq	-18160(%rbp), %rax
	leaq	-15552(%rbp), %rdi
	leaq	-18112(%rbp), %rcx
	leaq	-18128(%rbp), %rdx
	leaq	-18144(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
.LEHB85:
	call	_Z11kernel_initSsSsN2cl7ContextESt6vectorINS_6DeviceESaIS2_EE
.LEHE85:
	leaq	-18144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-15008(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-18128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-18112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl7ContextD1Ev
	leaq	-15552(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EED1Ev
	leaq	-15648(%rbp), %rdx
	leaq	-15520(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB86:
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EEC1ERKS3_
.LEHE86:
	leaq	-18320(%rbp), %rdx
	leaq	-18048(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB87:
	call	_ZN2cl7ContextC1ERKS0_
.LEHE87:
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-14976(%rbp), %rdx
	leaq	-18064(%rbp), %rax
	movl	$.LC53, %esi
	movq	%rax, %rdi
.LEHB88:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE88:
	leaq	-15008(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-15008(%rbp), %rdx
	leaq	-18080(%rbp), %rax
	movl	$.LC54, %esi
	movq	%rax, %rdi
.LEHB89:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE89:
	leaq	-18096(%rbp), %rax
	leaq	-15520(%rbp), %rdi
	leaq	-18048(%rbp), %rcx
	leaq	-18064(%rbp), %rdx
	leaq	-18080(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
.LEHB90:
	call	_Z11kernel_initSsSsN2cl7ContextESt6vectorINS_6DeviceESaIS2_EE
.LEHE90:
	leaq	-18080(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-15008(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-18064(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-18048(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl7ContextD1Ev
	leaq	-15520(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EED1Ev
	leaq	-15648(%rbp), %rdx
	leaq	-15488(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB91:
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EEC1ERKS3_
.LEHE91:
	leaq	-18320(%rbp), %rdx
	leaq	-17984(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB92:
	call	_ZN2cl7ContextC1ERKS0_
.LEHE92:
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-14976(%rbp), %rdx
	leaq	-18000(%rbp), %rax
	movl	$.LC55, %esi
	movq	%rax, %rdi
.LEHB93:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE93:
	leaq	-15008(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-15008(%rbp), %rdx
	leaq	-18016(%rbp), %rax
	movl	$.LC56, %esi
	movq	%rax, %rdi
.LEHB94:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE94:
	leaq	-18032(%rbp), %rax
	leaq	-15488(%rbp), %rdi
	leaq	-17984(%rbp), %rcx
	leaq	-18000(%rbp), %rdx
	leaq	-18016(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
.LEHB95:
	call	_Z11kernel_initSsSsN2cl7ContextESt6vectorINS_6DeviceESaIS2_EE
.LEHE95:
	leaq	-18016(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-15008(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-18000(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-17984(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl7ContextD1Ev
	leaq	-15488(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EED1Ev
	leaq	-15648(%rbp), %rdx
	leaq	-15456(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB96:
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EEC1ERKS3_
.LEHE96:
	leaq	-18320(%rbp), %rdx
	leaq	-17920(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB97:
	call	_ZN2cl7ContextC1ERKS0_
.LEHE97:
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-14976(%rbp), %rdx
	leaq	-17936(%rbp), %rax
	movl	$.LC57, %esi
	movq	%rax, %rdi
.LEHB98:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE98:
	leaq	-15008(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-15008(%rbp), %rdx
	leaq	-17952(%rbp), %rax
	movl	$.LC58, %esi
	movq	%rax, %rdi
.LEHB99:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE99:
	leaq	-17968(%rbp), %rax
	leaq	-15456(%rbp), %rdi
	leaq	-17920(%rbp), %rcx
	leaq	-17936(%rbp), %rdx
	leaq	-17952(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
.LEHB100:
	call	_Z11kernel_initSsSsN2cl7ContextESt6vectorINS_6DeviceESaIS2_EE
.LEHE100:
	leaq	-17952(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-15008(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-17936(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-17920(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl7ContextD1Ev
	leaq	-15456(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EED1Ev
	leaq	-15648(%rbp), %rdx
	leaq	-15424(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB101:
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EEC1ERKS3_
.LEHE101:
	leaq	-18320(%rbp), %rdx
	leaq	-17856(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB102:
	call	_ZN2cl7ContextC1ERKS0_
.LEHE102:
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-14976(%rbp), %rdx
	leaq	-17872(%rbp), %rax
	movl	$.LC59, %esi
	movq	%rax, %rdi
.LEHB103:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE103:
	leaq	-15008(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-15008(%rbp), %rdx
	leaq	-17888(%rbp), %rax
	movl	$.LC60, %esi
	movq	%rax, %rdi
.LEHB104:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE104:
	leaq	-17904(%rbp), %rax
	leaq	-15424(%rbp), %rdi
	leaq	-17856(%rbp), %rcx
	leaq	-17872(%rbp), %rdx
	leaq	-17888(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
.LEHB105:
	call	_Z11kernel_initSsSsN2cl7ContextESt6vectorINS_6DeviceESaIS2_EE
.LEHE105:
	leaq	-17888(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-15008(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-17872(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-17856(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl7ContextD1Ev
	leaq	-15424(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EED1Ev
	leaq	-15648(%rbp), %rdx
	leaq	-15392(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB106:
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EEC1ERKS3_
.LEHE106:
	leaq	-18320(%rbp), %rdx
	leaq	-17792(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB107:
	call	_ZN2cl7ContextC1ERKS0_
.LEHE107:
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-14976(%rbp), %rdx
	leaq	-17808(%rbp), %rax
	movl	$.LC59, %esi
	movq	%rax, %rdi
.LEHB108:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE108:
	leaq	-15008(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-15008(%rbp), %rdx
	leaq	-17824(%rbp), %rax
	movl	$.LC60, %esi
	movq	%rax, %rdi
.LEHB109:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE109:
	leaq	-17840(%rbp), %rax
	leaq	-15392(%rbp), %rdi
	leaq	-17792(%rbp), %rcx
	leaq	-17808(%rbp), %rdx
	leaq	-17824(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
.LEHB110:
	call	_Z11kernel_initSsSsN2cl7ContextESt6vectorINS_6DeviceESaIS2_EE
.LEHE110:
	leaq	-17824(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-15008(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-17808(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-17792(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl7ContextD1Ev
	leaq	-15392(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EED1Ev
	leaq	-15648(%rbp), %rdx
	leaq	-15360(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB111:
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EEC1ERKS3_
.LEHE111:
	leaq	-18320(%rbp), %rdx
	leaq	-17728(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB112:
	call	_ZN2cl7ContextC1ERKS0_
.LEHE112:
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-14976(%rbp), %rdx
	leaq	-17744(%rbp), %rax
	movl	$.LC61, %esi
	movq	%rax, %rdi
.LEHB113:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE113:
	leaq	-15008(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-15008(%rbp), %rdx
	leaq	-17760(%rbp), %rax
	movl	$.LC62, %esi
	movq	%rax, %rdi
.LEHB114:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE114:
	leaq	-17776(%rbp), %rax
	leaq	-15360(%rbp), %rdi
	leaq	-17728(%rbp), %rcx
	leaq	-17744(%rbp), %rdx
	leaq	-17760(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
.LEHB115:
	call	_Z11kernel_initSsSsN2cl7ContextESt6vectorINS_6DeviceESaIS2_EE
.LEHE115:
	leaq	-17760(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-15008(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-17744(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-17728(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl7ContextD1Ev
	leaq	-15360(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EED1Ev
	leaq	-15648(%rbp), %rdx
	leaq	-15328(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB116:
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EEC1ERKS3_
.LEHE116:
	leaq	-18320(%rbp), %rdx
	leaq	-17664(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB117:
	call	_ZN2cl7ContextC1ERKS0_
.LEHE117:
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-14976(%rbp), %rdx
	leaq	-17680(%rbp), %rax
	movl	$.LC61, %esi
	movq	%rax, %rdi
.LEHB118:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE118:
	leaq	-15008(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-15008(%rbp), %rdx
	leaq	-17696(%rbp), %rax
	movl	$.LC62, %esi
	movq	%rax, %rdi
.LEHB119:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE119:
	leaq	-17712(%rbp), %rax
	leaq	-15328(%rbp), %rdi
	leaq	-17664(%rbp), %rcx
	leaq	-17680(%rbp), %rdx
	leaq	-17696(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
.LEHB120:
	call	_Z11kernel_initSsSsN2cl7ContextESt6vectorINS_6DeviceESaIS2_EE
.LEHE120:
	leaq	-17696(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-15008(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-17680(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-17664(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl7ContextD1Ev
	leaq	-15328(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EED1Ev
	leaq	-15648(%rbp), %rdx
	leaq	-15296(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB121:
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EEC1ERKS3_
.LEHE121:
	leaq	-18320(%rbp), %rdx
	leaq	-17600(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB122:
	call	_ZN2cl7ContextC1ERKS0_
.LEHE122:
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-14976(%rbp), %rdx
	leaq	-17616(%rbp), %rax
	movl	$.LC63, %esi
	movq	%rax, %rdi
.LEHB123:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE123:
	leaq	-15008(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-15008(%rbp), %rdx
	leaq	-17632(%rbp), %rax
	movl	$.LC64, %esi
	movq	%rax, %rdi
.LEHB124:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE124:
	leaq	-17648(%rbp), %rax
	leaq	-15296(%rbp), %rdi
	leaq	-17600(%rbp), %rcx
	leaq	-17616(%rbp), %rdx
	leaq	-17632(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
.LEHB125:
	call	_Z11kernel_initSsSsN2cl7ContextESt6vectorINS_6DeviceESaIS2_EE
.LEHE125:
	leaq	-17632(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-15008(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-17616(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-17600(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl7ContextD1Ev
	leaq	-15296(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EED1Ev
	movl	$0, %eax
	movq	%rax, -15264(%rbp)
	movl	$0, %eax
	movq	%rax, -15256(%rbp)
	movl	$0, %eax
	movq	%rax, -15248(%rbp)
	movl	$0, %eax
	movq	%rax, -15240(%rbp)
	movq	$32768, -15832(%rbp)
	leaq	-18368(%rbp), %rdx
	leaq	-18320(%rbp), %rsi
	leaq	-17584(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$8, %ecx
	movl	$36, %edx
	movq	%rax, %rdi
.LEHB126:
	call	_ZN2cl6BufferC1ERKNS_7ContextEmmPvPi
.LEHE126:
	movq	-15840(%rbp), %rdx
	leaq	-18320(%rbp), %rsi
	leaq	-17568(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$4194304, %ecx
	movl	$36, %edx
	movq	%rax, %rdi
.LEHB127:
	call	_ZN2cl6BufferC1ERKNS_7ContextEmmPvPi
.LEHE127:
	movq	-15848(%rbp), %rdx
	leaq	-18320(%rbp), %rsi
	leaq	-17552(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$2095104, %ecx
	movl	$36, %edx
	movq	%rax, %rdi
.LEHB128:
	call	_ZN2cl6BufferC1ERKNS_7ContextEmmPvPi
.LEHE128:
	movq	-15856(%rbp), %rdx
	leaq	-18320(%rbp), %rsi
	leaq	-17536(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$2095104, %ecx
	movl	$36, %edx
	movq	%rax, %rdi
.LEHB129:
	call	_ZN2cl6BufferC1ERKNS_7ContextEmmPvPi
.LEHE129:
	movq	-15920(%rbp), %rdx
	leaq	-18320(%rbp), %rsi
	leaq	-17520(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$8192, %ecx
	movl	$36, %edx
	movq	%rax, %rdi
.LEHB130:
	call	_ZN2cl6BufferC1ERKNS_7ContextEmmPvPi
.LEHE130:
	movq	-15912(%rbp), %rdx
	leaq	-18320(%rbp), %rsi
	leaq	-17504(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$8192, %ecx
	movl	$36, %edx
	movq	%rax, %rdi
.LEHB131:
	call	_ZN2cl6BufferC1ERKNS_7ContextEmmPvPi
.LEHE131:
	movq	-15904(%rbp), %rdx
	leaq	-18320(%rbp), %rsi
	leaq	-17488(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$8192, %ecx
	movl	$36, %edx
	movq	%rax, %rdi
.LEHB132:
	call	_ZN2cl6BufferC1ERKNS_7ContextEmmPvPi
.LEHE132:
	movq	-15864(%rbp), %rdx
	leaq	-18320(%rbp), %rsi
	leaq	-17472(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$8192, %ecx
	movl	$36, %edx
	movq	%rax, %rdi
.LEHB133:
	call	_ZN2cl6BufferC1ERKNS_7ContextEmmPvPi
.LEHE133:
	leaq	-18320(%rbp), %rsi
	leaq	-17456(%rbp), %rax
	movl	$0, %r9d
	movl	$stuff, %r8d
	movl	$88, %ecx
	movl	$33, %edx
	movq	%rax, %rdi
.LEHB134:
	call	_ZN2cl6BufferC1ERKNS_7ContextEmmPvPi
.LEHE134:
	leaq	-15264(%rbp), %rdx
	leaq	-18320(%rbp), %rsi
	leaq	-17440(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$32, %ecx
	movl	$33, %edx
	movq	%rax, %rdi
.LEHB135:
	call	_ZN2cl6BufferC1ERKNS_7ContextEmmPvPi
.LEHE135:
	movq	-15944(%rbp), %rcx
	movq	-15832(%rbp), %rdx
	leaq	-18320(%rbp), %rsi
	leaq	-17424(%rbp), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$33, %edx
	movq	%rax, %rdi
.LEHB136:
	call	_ZN2cl6BufferC1ERKNS_7ContextEmmPvPi
.LEHE136:
	movq	-15936(%rbp), %rcx
	movq	-15832(%rbp), %rdx
	leaq	-18320(%rbp), %rsi
	leaq	-17408(%rbp), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$33, %edx
	movq	%rax, %rdi
.LEHB137:
	call	_ZN2cl6BufferC1ERKNS_7ContextEmmPvPi
.LEHE137:
	movq	-15928(%rbp), %rcx
	movq	-15832(%rbp), %rdx
	leaq	-18320(%rbp), %rsi
	leaq	-17392(%rbp), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$33, %edx
	movq	%rax, %rdi
.LEHB138:
	call	_ZN2cl6BufferC1ERKNS_7ContextEmmPvPi
.LEHE138:
	leaq	-18320(%rbp), %rsi
	leaq	-17376(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$16760832, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
.LEHB139:
	call	_ZN2cl6BufferC1ERKNS_7ContextEmmPvPi
.LEHE139:
	leaq	-18320(%rbp), %rsi
	leaq	-17360(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$16760832, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
.LEHB140:
	call	_ZN2cl6BufferC1ERKNS_7ContextEmmPvPi
.LEHE140:
	movq	-15832(%rbp), %rdx
	leaq	-18320(%rbp), %rsi
	leaq	-17344(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
.LEHB141:
	call	_ZN2cl6BufferC1ERKNS_7ContextEmmPvPi
.LEHE141:
	movq	-15832(%rbp), %rdx
	leaq	-18320(%rbp), %rsi
	leaq	-17328(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
.LEHB142:
	call	_ZN2cl6BufferC1ERKNS_7ContextEmmPvPi
.LEHE142:
	movq	-15832(%rbp), %rdx
	leaq	-18320(%rbp), %rsi
	leaq	-17312(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
.LEHB143:
	call	_ZN2cl6BufferC1ERKNS_7ContextEmmPvPi
.LEHE143:
	movq	-15832(%rbp), %rdx
	leaq	-18320(%rbp), %rsi
	leaq	-17296(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
.LEHB144:
	call	_ZN2cl6BufferC1ERKNS_7ContextEmmPvPi
.LEHE144:
	leaq	-18320(%rbp), %rsi
	leaq	-17280(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$8192, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
.LEHB145:
	call	_ZN2cl6BufferC1ERKNS_7ContextEmmPvPi
.LEHE145:
	leaq	-18320(%rbp), %rsi
	leaq	-17264(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$4190208, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
.LEHB146:
	call	_ZN2cl6BufferC1ERKNS_7ContextEmmPvPi
.LEHE146:
	leaq	-18320(%rbp), %rsi
	leaq	-17248(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$8192, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
.LEHB147:
	call	_ZN2cl6BufferC1ERKNS_7ContextEmmPvPi
.LEHE147:
	leaq	-18320(%rbp), %rsi
	leaq	-17232(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$4190208, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
.LEHB148:
	call	_ZN2cl6BufferC1ERKNS_7ContextEmmPvPi
.LEHE148:
	leaq	-18320(%rbp), %rsi
	leaq	-17216(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$8192, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
.LEHB149:
	call	_ZN2cl6BufferC1ERKNS_7ContextEmmPvPi
.LEHE149:
	leaq	-18320(%rbp), %rsi
	leaq	-17200(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$8192, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
.LEHB150:
	call	_ZN2cl6BufferC1ERKNS_7ContextEmmPvPi
.LEHE150:
	leaq	-18544(%rbp), %rax
	movl	$.LC65, %esi
	movq	%rax, %rdi
.LEHB151:
	call	_ZNSsaSEPKc
	leaq	-17184(%rbp), %rax
	leaq	-18544(%rbp), %rcx
	movl	$.LC23, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_
.LEHE151:
	leaq	-17184(%rbp), %rdx
	leaq	-18560(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB152:
	call	_ZNSsaSEOSs
.LEHE152:
	leaq	-17184(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-17168(%rbp), %rax
	leaq	-18560(%rbp), %rcx
	movl	$.LC66, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB153:
	call	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_
.LEHE153:
	leaq	-17168(%rbp), %rcx
	leaq	-6784(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB154:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKSsSt13_Ios_Openmode
.LEHE154:
	leaq	-17168(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-17152(%rbp), %rax
	leaq	-18560(%rbp), %rcx
	movl	$.LC67, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB155:
	call	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_
.LEHE155:
	leaq	-17152(%rbp), %rcx
	leaq	-6272(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB156:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKSsSt13_Ios_Openmode
.LEHE156:
	leaq	-17152(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-17136(%rbp), %rax
	leaq	-18560(%rbp), %rcx
	movl	$.LC68, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB157:
	call	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_
.LEHE157:
	leaq	-17136(%rbp), %rcx
	leaq	-5760(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB158:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKSsSt13_Ios_Openmode
.LEHE158:
	leaq	-17136(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-17120(%rbp), %rax
	leaq	-18560(%rbp), %rcx
	movl	$.LC69, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB159:
	call	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_
.LEHE159:
	leaq	-17120(%rbp), %rcx
	leaq	-5248(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB160:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKSsSt13_Ios_Openmode
.LEHE160:
	leaq	-17120(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-17104(%rbp), %rax
	leaq	-18560(%rbp), %rcx
	movl	$.LC70, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB161:
	call	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_
.LEHE161:
	leaq	-17104(%rbp), %rcx
	leaq	-4736(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB162:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKSsSt13_Ios_Openmode
.LEHE162:
	leaq	-17104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-17088(%rbp), %rax
	leaq	-18560(%rbp), %rcx
	movl	$.LC71, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB163:
	call	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_
.LEHE163:
	leaq	-17088(%rbp), %rcx
	leaq	-4224(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB164:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKSsSt13_Ios_Openmode
.LEHE164:
	leaq	-17088(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-17072(%rbp), %rax
	leaq	-18560(%rbp), %rcx
	movl	$.LC72, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB165:
	call	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_
.LEHE165:
	leaq	-17072(%rbp), %rcx
	leaq	-3712(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB166:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKSsSt13_Ios_Openmode
.LEHE166:
	leaq	-17072(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-17520(%rbp), %rdx
	leaq	-17056(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB167:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE167:
	leaq	-17056(%rbp), %rdx
	leaq	-18288(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
.LEHB168:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE168:
	leaq	-17056(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17504(%rbp), %rdx
	leaq	-17040(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB169:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE169:
	leaq	-17040(%rbp), %rdx
	leaq	-18288(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
.LEHB170:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE170:
	leaq	-17040(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17472(%rbp), %rdx
	leaq	-17024(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB171:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE171:
	leaq	-17024(%rbp), %rdx
	leaq	-18288(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
.LEHB172:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE172:
	leaq	-17024(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17536(%rbp), %rdx
	leaq	-17008(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB173:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE173:
	leaq	-17008(%rbp), %rdx
	leaq	-18288(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
.LEHB174:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE174:
	leaq	-17008(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17552(%rbp), %rdx
	leaq	-16992(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB175:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE175:
	leaq	-16992(%rbp), %rdx
	leaq	-18288(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
.LEHB176:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE176:
	leaq	-16992(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17488(%rbp), %rdx
	leaq	-16976(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB177:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE177:
	leaq	-16976(%rbp), %rdx
	leaq	-18288(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
.LEHB178:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE178:
	leaq	-16976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17456(%rbp), %rdx
	leaq	-16960(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB179:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE179:
	leaq	-16960(%rbp), %rdx
	leaq	-18288(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
.LEHB180:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE180:
	leaq	-16960(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17424(%rbp), %rdx
	leaq	-16944(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB181:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE181:
	leaq	-16944(%rbp), %rdx
	leaq	-18288(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
.LEHB182:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE182:
	leaq	-16944(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17408(%rbp), %rdx
	leaq	-16928(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB183:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE183:
	leaq	-16928(%rbp), %rdx
	leaq	-18288(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
.LEHB184:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE184:
	leaq	-16928(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17392(%rbp), %rdx
	leaq	-16912(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB185:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE185:
	leaq	-16912(%rbp), %rdx
	leaq	-18288(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
.LEHB186:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE186:
	leaq	-16912(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17376(%rbp), %rdx
	leaq	-16896(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB187:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE187:
	leaq	-16896(%rbp), %rdx
	leaq	-18288(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
.LEHB188:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE188:
	leaq	-16896(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17360(%rbp), %rdx
	leaq	-16880(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB189:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE189:
	leaq	-16880(%rbp), %rdx
	leaq	-18288(%rbp), %rax
	movl	$11, %esi
	movq	%rax, %rdi
.LEHB190:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE190:
	leaq	-16880(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17264(%rbp), %rdx
	leaq	-16864(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB191:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE191:
	leaq	-16864(%rbp), %rdx
	leaq	-18288(%rbp), %rax
	movl	$12, %esi
	movq	%rax, %rdi
.LEHB192:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE192:
	leaq	-16864(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17232(%rbp), %rdx
	leaq	-16848(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB193:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE193:
	leaq	-16848(%rbp), %rdx
	leaq	-18288(%rbp), %rax
	movl	$13, %esi
	movq	%rax, %rdi
.LEHB194:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE194:
	leaq	-16848(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17440(%rbp), %rdx
	leaq	-16832(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB195:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE195:
	leaq	-16832(%rbp), %rdx
	leaq	-18288(%rbp), %rax
	movl	$14, %esi
	movq	%rax, %rdi
.LEHB196:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE196:
	leaq	-16832(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17376(%rbp), %rdx
	leaq	-16816(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB197:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE197:
	leaq	-16816(%rbp), %rdx
	leaq	-18096(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
.LEHB198:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE198:
	leaq	-16816(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17360(%rbp), %rdx
	leaq	-16800(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB199:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE199:
	leaq	-16800(%rbp), %rdx
	leaq	-18096(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
.LEHB200:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE200:
	leaq	-16800(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17344(%rbp), %rdx
	leaq	-16784(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB201:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE201:
	leaq	-16784(%rbp), %rdx
	leaq	-18096(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
.LEHB202:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE202:
	leaq	-16784(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17328(%rbp), %rdx
	leaq	-16768(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB203:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE203:
	leaq	-16768(%rbp), %rdx
	leaq	-18096(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
.LEHB204:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE204:
	leaq	-16768(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17568(%rbp), %rdx
	leaq	-16752(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB205:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE205:
	leaq	-16752(%rbp), %rdx
	leaq	-18096(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
.LEHB206:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE206:
	leaq	-16752(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17504(%rbp), %rdx
	leaq	-16736(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB207:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE207:
	leaq	-16736(%rbp), %rdx
	leaq	-18096(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
.LEHB208:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE208:
	leaq	-16736(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17472(%rbp), %rdx
	leaq	-16720(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB209:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE209:
	leaq	-16720(%rbp), %rdx
	leaq	-18096(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
.LEHB210:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE210:
	leaq	-16720(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17488(%rbp), %rdx
	leaq	-16704(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB211:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE211:
	leaq	-16704(%rbp), %rdx
	leaq	-18096(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
.LEHB212:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE212:
	leaq	-16704(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17584(%rbp), %rdx
	leaq	-16688(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB213:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE213:
	leaq	-16688(%rbp), %rdx
	leaq	-18096(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
.LEHB214:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE214:
	leaq	-16688(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17280(%rbp), %rdx
	leaq	-16672(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB215:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE215:
	leaq	-16672(%rbp), %rdx
	leaq	-18096(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
.LEHB216:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE216:
	leaq	-16672(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17264(%rbp), %rdx
	leaq	-16656(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB217:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE217:
	leaq	-16656(%rbp), %rdx
	leaq	-18096(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
.LEHB218:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE218:
	leaq	-16656(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17248(%rbp), %rdx
	leaq	-16640(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB219:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE219:
	leaq	-16640(%rbp), %rdx
	leaq	-18096(%rbp), %rax
	movl	$11, %esi
	movq	%rax, %rdi
.LEHB220:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE220:
	leaq	-16640(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17232(%rbp), %rdx
	leaq	-16624(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB221:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE221:
	leaq	-16624(%rbp), %rdx
	leaq	-18096(%rbp), %rax
	movl	$12, %esi
	movq	%rax, %rdi
.LEHB222:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE222:
	leaq	-16624(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17344(%rbp), %rdx
	leaq	-16608(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB223:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE223:
	leaq	-16608(%rbp), %rdx
	leaq	-17776(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
.LEHB224:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE224:
	leaq	-16608(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17280(%rbp), %rdx
	leaq	-16592(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB225:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE225:
	leaq	-16592(%rbp), %rdx
	leaq	-17776(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
.LEHB226:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE226:
	leaq	-16592(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17328(%rbp), %rdx
	leaq	-16576(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB227:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE227:
	leaq	-16576(%rbp), %rdx
	leaq	-17712(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
.LEHB228:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE228:
	leaq	-16576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17248(%rbp), %rdx
	leaq	-16560(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB229:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE229:
	leaq	-16560(%rbp), %rdx
	leaq	-17712(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
.LEHB230:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE230:
	leaq	-16560(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17408(%rbp), %rdx
	leaq	-16544(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB231:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE231:
	leaq	-16544(%rbp), %rdx
	leaq	-17904(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
.LEHB232:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE232:
	leaq	-16544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17344(%rbp), %rdx
	leaq	-16528(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB233:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE233:
	leaq	-16528(%rbp), %rdx
	leaq	-17904(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
.LEHB234:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE234:
	leaq	-16528(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17392(%rbp), %rdx
	leaq	-16512(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB235:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE235:
	leaq	-16512(%rbp), %rdx
	leaq	-17840(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
.LEHB236:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE236:
	leaq	-16512(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17328(%rbp), %rdx
	leaq	-16496(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB237:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE237:
	leaq	-16496(%rbp), %rdx
	leaq	-17840(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
.LEHB238:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE238:
	leaq	-16496(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17456(%rbp), %rdx
	leaq	-16480(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB239:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE239:
	leaq	-16480(%rbp), %rdx
	leaq	-18160(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
.LEHB240:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE240:
	leaq	-16480(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17424(%rbp), %rdx
	leaq	-16464(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB241:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE241:
	leaq	-16464(%rbp), %rdx
	leaq	-18160(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
.LEHB242:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE242:
	leaq	-16464(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17408(%rbp), %rdx
	leaq	-16448(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB243:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE243:
	leaq	-16448(%rbp), %rdx
	leaq	-18160(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
.LEHB244:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE244:
	leaq	-16448(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17424(%rbp), %rdx
	leaq	-16432(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB245:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE245:
	leaq	-16432(%rbp), %rdx
	leaq	-18032(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
.LEHB246:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE246:
	leaq	-16432(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17424(%rbp), %rdx
	leaq	-16416(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB247:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE247:
	leaq	-16416(%rbp), %rdx
	leaq	-17968(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
.LEHB248:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE248:
	leaq	-16416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17408(%rbp), %rdx
	leaq	-16400(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB249:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE249:
	leaq	-16400(%rbp), %rdx
	leaq	-18224(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
.LEHB250:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE250:
	leaq	-16400(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17392(%rbp), %rdx
	leaq	-16384(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB251:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE251:
	leaq	-16384(%rbp), %rdx
	leaq	-18224(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
.LEHB252:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE252:
	leaq	-16384(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17216(%rbp), %rdx
	leaq	-16368(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB253:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE253:
	leaq	-16368(%rbp), %rdx
	leaq	-18224(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
.LEHB254:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE254:
	leaq	-16368(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17200(%rbp), %rdx
	leaq	-16352(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB255:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE255:
	leaq	-16352(%rbp), %rdx
	leaq	-18224(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
.LEHB256:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE256:
	leaq	-16352(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17504(%rbp), %rdx
	leaq	-16336(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB257:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE257:
	leaq	-16336(%rbp), %rdx
	leaq	-18224(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
.LEHB258:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE258:
	leaq	-16336(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17472(%rbp), %rdx
	leaq	-16320(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB259:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE259:
	leaq	-16320(%rbp), %rdx
	leaq	-18224(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
.LEHB260:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE260:
	leaq	-16320(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-15232(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZN2cl7NDRangeC1Em
	leaq	-15200(%rbp), %rax
	movl	$1024, %esi
	movq	%rax, %rdi
	call	_ZN2cl7NDRangeC1Em
	leaq	-15168(%rbp), %rax
	movl	$1023, %esi
	movq	%rax, %rdi
	call	_ZN2cl7NDRangeC1Em
	leaq	-15136(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZN2cl7NDRangeC1Em
	leaq	-15104(%rbp), %rax
	movl	$523776, %esi
	movq	%rax, %rdi
	call	_ZN2cl7NDRangeC1Em
	leaq	-15072(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZN2cl7NDRangeC1Em
	leaq	-14976(%rbp), %rsi
	movl	$0, %eax
	movl	$1024, %edx
	movq	%rsi, %rdi
	movq	%rdx, %rcx
	rep stosq
	movl	$0, %eax
	movq	%rax, -15976(%rbp)
	movl	$0, -18592(%rbp)
	jmp	.L267
.L269:
	movl	-18592(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-15936(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movabsq	$4611686018427387904, %rdx
	movq	%rdx, -18648(%rbp)
	movsd	-18648(%rbp), %xmm1
	movq	%rax, -18648(%rbp)
	movsd	-18648(%rbp), %xmm0
	call	pow
	movsd	%xmm0, -18648(%rbp)
	movl	-18592(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-15936(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movabsq	$4611686018427387904, %rdx
	movq	%rdx, -18656(%rbp)
	movsd	-18656(%rbp), %xmm1
	movq	%rax, -18656(%rbp)
	movsd	-18656(%rbp), %xmm0
	call	pow
	movapd	%xmm0, %xmm4
	addsd	-18648(%rbp), %xmm4
	movsd	%xmm4, -18648(%rbp)
	movl	-18592(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-15936(%rbp), %rax
	addq	%rdx, %rax
	movq	16(%rax), %rax
	movabsq	$4611686018427387904, %rdx
	movq	%rdx, -18656(%rbp)
	movsd	-18656(%rbp), %xmm1
	movq	%rax, -18656(%rbp)
	movsd	-18656(%rbp), %xmm0
	call	pow
	addsd	-18648(%rbp), %xmm0
	call	sqrt
	movsd	%xmm0, -18648(%rbp)
	movq	-18648(%rbp), %rax
	movl	-18592(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rax, -14976(%rbp,%rdx,8)
	cmpl	$0, -18592(%rbp)
	jle	.L268
	movl	-18592(%rbp), %eax
	leal	-1(%rax), %edx
	leaq	-14976(%rbp), %rax
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	leaq	-14976(%rbp), %rax
	movl	-18592(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3maxIdERKT_S2_S2_
	movq	(%rax), %rax
	movq	%rax, -15976(%rbp)
.L268:
	addl	$1, -18592(%rbp)
.L267:
	cmpl	$1023, -18592(%rbp)
	jle	.L269
	movq	$0, -15040(%rbp)
	movq	$0, -15032(%rbp)
	movq	$0, -15024(%rbp)
	movq	$0, -15016(%rbp)
	leaq	-15072(%rbp), %rdi
	leaq	-15104(%rbp), %rcx
	leaq	-15232(%rbp), %rdx
	leaq	-18288(%rbp), %rsi
	leaq	-18304(%rbp), %rax
	movq	$0, (%rsp)
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
.LEHB261:
	call	_ZNK2cl12CommandQueue20enqueueNDRangeKernelERKNS_6KernelERKNS_7NDRangeES6_S6_PKSt6vectorINS_5EventESaIS8_EEPS8_
	movq	-15032(%rbp), %rax
	movq	%rax, -15008(%rbp)
	movq	-15032(%rbp), %rax
	movq	%rax, -15000(%rbp)
	movq	-15976(%rbp), %rax
	movq	%rax, -14992(%rbp)
	movq	-15976(%rbp), %rax
	movq	%rax, -14984(%rbp)
	leaq	-15008(%rbp), %rdx
	leaq	-18320(%rbp), %rsi
	leaq	-16304(%rbp), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$32, %ecx
	movl	$33, %edx
	movq	%rax, %rdi
	call	_ZN2cl6BufferC1ERKNS_7ContextEmmPvPi
.LEHE261:
	leaq	-16304(%rbp), %rdx
	leaq	-16288(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB262:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE262:
	leaq	-16288(%rbp), %rdx
	leaq	-18288(%rbp), %rax
	movl	$14, %esi
	movq	%rax, %rdi
.LEHB263:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE263:
	leaq	-16288(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-16304(%rbp), %rdx
	leaq	-16272(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB264:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE264:
	leaq	-16272(%rbp), %rdx
	leaq	-17904(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
.LEHB265:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE265:
	leaq	-16272(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17440(%rbp), %rdx
	leaq	-16256(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB266:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE266:
	leaq	-16256(%rbp), %rdx
	leaq	-17840(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
.LEHB267:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE267:
	leaq	-16256(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17456(%rbp), %rdx
	leaq	-16240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB268:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE268:
	leaq	-16240(%rbp), %rdx
	leaq	-17648(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
.LEHB269:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE269:
	leaq	-16240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-16304(%rbp), %rdx
	leaq	-16224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB270:
	call	_ZN2cl6BufferC1ERKS0_
.LEHE270:
	leaq	-16224(%rbp), %rdx
	leaq	-17648(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
.LEHB271:
	call	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
.LEHE271:
	leaq	-16224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	movl	$0, %eax
	movq	%rax, -15968(%rbp)
	movl	$0, %eax
	movq	%rax, -15960(%rbp)
	movw	$0, -18630(%rbp)
	movq	$0, -15952(%rbp)
	leaq	-16208(%rbp), %rax
	movq	%rax, %rdi
.LEHB272:
	call	_ZNSsC1Ev
.LEHE272:
	leaq	-15072(%rbp), %rdi
	leaq	-15200(%rbp), %rcx
	leaq	-15232(%rbp), %rdx
	leaq	-17776(%rbp), %rsi
	leaq	-18304(%rbp), %rax
	movq	$0, (%rsp)
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
.LEHB273:
	call	_ZNK2cl12CommandQueue20enqueueNDRangeKernelERKNS_6KernelERKNS_7NDRangeES6_S6_PKSt6vectorINS_5EventESaIS8_EEPS8_
	leaq	-15072(%rbp), %rdi
	leaq	-15200(%rbp), %rcx
	leaq	-15232(%rbp), %rdx
	leaq	-17712(%rbp), %rsi
	leaq	-18304(%rbp), %rax
	movq	$0, (%rsp)
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	_ZNK2cl12CommandQueue20enqueueNDRangeKernelERKNS_6KernelERKNS_7NDRangeES6_S6_PKSt6vectorINS_5EventESaIS8_EEPS8_
	movl	$.LC73, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC40, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$0, %edi
	call	time
	movq	%rax, -15824(%rbp)
	movl	$0, -18588(%rbp)
	jmp	.L270
.L277:
	movl	-18588(%rbp), %eax
	movl	%eax, %esi
	movl	$_ZSt4cout, %edi
	call	_ZNSolsEi
	movl	$.LC40, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	-15072(%rbp), %rdi
	leaq	-15200(%rbp), %rcx
	leaq	-15232(%rbp), %rdx
	leaq	-17904(%rbp), %rsi
	leaq	-18304(%rbp), %rax
	movq	$0, (%rsp)
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	_ZNK2cl12CommandQueue20enqueueNDRangeKernelERKNS_6KernelERKNS_7NDRangeES6_S6_PKSt6vectorINS_5EventESaIS8_EEPS8_
	leaq	-15072(%rbp), %rdi
	leaq	-15200(%rbp), %rcx
	leaq	-15232(%rbp), %rdx
	leaq	-17840(%rbp), %rsi
	leaq	-18304(%rbp), %rax
	movq	$0, (%rsp)
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	_ZNK2cl12CommandQueue20enqueueNDRangeKernelERKNS_6KernelERKNS_7NDRangeES6_S6_PKSt6vectorINS_5EventESaIS8_EEPS8_
	leaq	-15072(%rbp), %rdi
	leaq	-15200(%rbp), %rcx
	leaq	-15232(%rbp), %rdx
	leaq	-18224(%rbp), %rsi
	leaq	-18304(%rbp), %rax
	movq	$0, (%rsp)
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	_ZNK2cl12CommandQueue20enqueueNDRangeKernelERKNS_6KernelERKNS_7NDRangeES6_S6_PKSt6vectorINS_5EventESaIS8_EEPS8_
	leaq	-18304(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK2cl12CommandQueue5flushEv
	leaq	-18304(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK2cl12CommandQueue6finishEv
	xorpd	%xmm0, %xmm0
	ucomisd	-15968(%rbp), %xmm0
	jp	.L706
	xorpd	%xmm0, %xmm0
	ucomisd	-15968(%rbp), %xmm0
	je	.L271
.L706:
	movsd	-15968(%rbp), %xmm0
	subsd	-15960(%rbp), %xmm0
	movsd	_ZL4warp(%rip), %xmm2
	movsd	.LC74(%rip), %xmm1
	mulsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.L273
.L271:
	movl	_ZL8n_frames(%rip), %eax
	cmpl	%eax, -18616(%rbp)
	jge	.L273
	addl	$1, -18616(%rbp)
	movl	-18616(%rbp), %eax
	imull	$100, %eax, %eax
	movl	_ZL8n_frames(%rip), %ecx
	cltd
	idivl	%ecx
	cvtsi2sd	%eax, %xmm0
	call	floor
	movsd	%xmm0, -18648(%rbp)
	movswl	-18630(%rbp), %eax
	cvtsi2sd	%eax, %xmm0
	call	floor
	movsd	.LC75(%rip), %xmm1
	addsd	%xmm1, %xmm0
	movsd	-18648(%rbp), %xmm5
	ucomisd	%xmm0, %xmm5
	jbe	.L275
	movl	-18616(%rbp), %eax
	imull	$100, %eax, %eax
	movl	_ZL8n_frames(%rip), %ecx
	cltd
	idivl	%ecx
	cvtsi2sd	%eax, %xmm0
	call	floor
	cvttsd2si	%xmm0, %eax
	movw	%ax, -18630(%rbp)
	movswl	-18630(%rbp), %eax
	movl	%eax, %esi
	movl	$_ZSt4cout, %edi
	call	_ZNSolsEs
	movl	$.LC76, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L275:
	movq	-15944(%rbp), %rcx
	movq	-15832(%rbp), %rdx
	leaq	-17424(%rbp), %rsi
	leaq	-18304(%rbp), %rax
	movq	$0, 8(%rsp)
	movq	$0, (%rsp)
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	_ZNK2cl12CommandQueue17enqueueReadBufferERKNS_6BufferEjmmPvPKSt6vectorINS_5EventESaIS6_EEPS6_
	leaq	-16192(%rbp), %rax
	movq	-15944(%rbp), %rcx
	movl	$1024, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z13arraytostringPA4_di
.LEHE273:
	leaq	-16192(%rbp), %rdx
	leaq	-16208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB274:
	call	_ZNSsaSEOSs
.LEHE274:
	leaq	-16192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-16208(%rbp), %rdx
	leaq	-6784(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB275:
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E
	movq	-15872(%rbp), %rdx
	leaq	-17280(%rbp), %rsi
	leaq	-18304(%rbp), %rax
	movq	$0, 8(%rsp)
	movq	$0, (%rsp)
	movq	%rdx, %r9
	movl	$8192, %r8d
	movl	$0, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	_ZNK2cl12CommandQueue17enqueueReadBufferERKNS_6BufferEjmmPvPKSt6vectorINS_5EventESaIS6_EEPS6_
	leaq	-16176(%rbp), %rax
	movq	-15872(%rbp), %rcx
	movl	$1024, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z13arraytostringPdi
.LEHE275:
	leaq	-16176(%rbp), %rdx
	leaq	-16208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB276:
	call	_ZNSsaSEOSs
.LEHE276:
	leaq	-16176(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-16208(%rbp), %rdx
	leaq	-4736(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB277:
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E
	movq	-15872(%rbp), %rdx
	leaq	-17248(%rbp), %rsi
	leaq	-18304(%rbp), %rax
	movq	$0, 8(%rsp)
	movq	$0, (%rsp)
	movq	%rdx, %r9
	movl	$8192, %r8d
	movl	$0, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	_ZNK2cl12CommandQueue17enqueueReadBufferERKNS_6BufferEjmmPvPKSt6vectorINS_5EventESaIS6_EEPS6_
	leaq	-16160(%rbp), %rax
	movq	-15872(%rbp), %rcx
	movl	$1024, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z13arraytostringPdi
.LEHE277:
	leaq	-16160(%rbp), %rdx
	leaq	-16208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB278:
	call	_ZNSsaSEOSs
.LEHE278:
	leaq	-16160(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-16208(%rbp), %rdx
	leaq	-5248(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB279:
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E
	movq	-15872(%rbp), %rdx
	leaq	-17216(%rbp), %rsi
	leaq	-18304(%rbp), %rax
	movq	$0, 8(%rsp)
	movq	$0, (%rsp)
	movq	%rdx, %r9
	movl	$8192, %r8d
	movl	$0, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	_ZNK2cl12CommandQueue17enqueueReadBufferERKNS_6BufferEjmmPvPKSt6vectorINS_5EventESaIS6_EEPS6_
	leaq	-16144(%rbp), %rax
	movq	-15872(%rbp), %rcx
	movl	$1024, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z13arraytostringPdi
.LEHE279:
	leaq	-16144(%rbp), %rdx
	leaq	-16208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB280:
	call	_ZNSsaSEOSs
.LEHE280:
	leaq	-16144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-16208(%rbp), %rdx
	leaq	-6272(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB281:
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E
	movq	-15872(%rbp), %rdx
	leaq	-17200(%rbp), %rsi
	leaq	-18304(%rbp), %rax
	movq	$0, 8(%rsp)
	movq	$0, (%rsp)
	movq	%rdx, %r9
	movl	$8192, %r8d
	movl	$0, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	_ZNK2cl12CommandQueue17enqueueReadBufferERKNS_6BufferEjmmPvPKSt6vectorINS_5EventESaIS6_EEPS6_
	leaq	-16128(%rbp), %rax
	movq	-15872(%rbp), %rcx
	movl	$1024, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z13arraytostringPdi
.LEHE281:
	leaq	-16128(%rbp), %rdx
	leaq	-16208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB282:
	call	_ZNSsaSEOSs
.LEHE282:
	leaq	-16128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-16208(%rbp), %rdx
	leaq	-5760(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB283:
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E
	movq	-15936(%rbp), %rcx
	movq	-15832(%rbp), %rdx
	leaq	-17408(%rbp), %rsi
	leaq	-18304(%rbp), %rax
	movq	$0, 8(%rsp)
	movq	$0, (%rsp)
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	_ZNK2cl12CommandQueue17enqueueReadBufferERKNS_6BufferEjmmPvPKSt6vectorINS_5EventESaIS6_EEPS6_
	leaq	-16112(%rbp), %rax
	movq	-15936(%rbp), %rcx
	movl	$1024, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z13arraytostringPA4_di
.LEHE283:
	leaq	-16112(%rbp), %rdx
	leaq	-16208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB284:
	call	_ZNSsaSEOSs
.LEHE284:
	leaq	-16112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-16208(%rbp), %rdx
	leaq	-4224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB285:
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E
	movq	-15928(%rbp), %rcx
	movq	-15832(%rbp), %rdx
	leaq	-17392(%rbp), %rsi
	leaq	-18304(%rbp), %rax
	movq	$0, 8(%rsp)
	movq	$0, (%rsp)
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	_ZNK2cl12CommandQueue17enqueueReadBufferERKNS_6BufferEjmmPvPKSt6vectorINS_5EventESaIS6_EEPS6_
	leaq	-16096(%rbp), %rax
	movq	-15928(%rbp), %rcx
	movl	$1024, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z13arraytostringPA4_di
.LEHE285:
	leaq	-16096(%rbp), %rdx
	leaq	-16208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB286:
	call	_ZNSsaSEOSs
.LEHE286:
	leaq	-16096(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-16208(%rbp), %rdx
	leaq	-3712(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB287:
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E
	movq	-15968(%rbp), %rax
	movq	%rax, -15960(%rbp)
.L273:
	movsd	stuff(%rip), %xmm0
	movsd	-15968(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -15968(%rbp)
	leaq	-15072(%rbp), %rdi
	leaq	-15200(%rbp), %rcx
	leaq	-15232(%rbp), %rdx
	leaq	-17776(%rbp), %rsi
	leaq	-18304(%rbp), %rax
	movq	$0, (%rsp)
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	_ZNK2cl12CommandQueue20enqueueNDRangeKernelERKNS_6KernelERKNS_7NDRangeES6_S6_PKSt6vectorINS_5EventESaIS8_EEPS8_
	leaq	-15072(%rbp), %rdi
	leaq	-15200(%rbp), %rcx
	leaq	-15232(%rbp), %rdx
	leaq	-17712(%rbp), %rsi
	leaq	-18304(%rbp), %rax
	movq	$0, (%rsp)
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	_ZNK2cl12CommandQueue20enqueueNDRangeKernelERKNS_6KernelERKNS_7NDRangeES6_S6_PKSt6vectorINS_5EventESaIS8_EEPS8_
	leaq	-15072(%rbp), %rdi
	leaq	-15200(%rbp), %rcx
	leaq	-15232(%rbp), %rdx
	leaq	-18160(%rbp), %rsi
	leaq	-18304(%rbp), %rax
	movq	$0, (%rsp)
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	_ZNK2cl12CommandQueue20enqueueNDRangeKernelERKNS_6KernelERKNS_7NDRangeES6_S6_PKSt6vectorINS_5EventESaIS8_EEPS8_
	leaq	-15072(%rbp), %rdi
	leaq	-15104(%rbp), %rcx
	leaq	-15232(%rbp), %rdx
	leaq	-18288(%rbp), %rsi
	leaq	-18304(%rbp), %rax
	movq	$0, (%rsp)
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	_ZNK2cl12CommandQueue20enqueueNDRangeKernelERKNS_6KernelERKNS_7NDRangeES6_S6_PKSt6vectorINS_5EventESaIS8_EEPS8_
	leaq	-15072(%rbp), %rdi
	leaq	-15200(%rbp), %rcx
	leaq	-15232(%rbp), %rdx
	leaq	-18096(%rbp), %rsi
	leaq	-18304(%rbp), %rax
	movq	$0, (%rsp)
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	_ZNK2cl12CommandQueue20enqueueNDRangeKernelERKNS_6KernelERKNS_7NDRangeES6_S6_PKSt6vectorINS_5EventESaIS8_EEPS8_
	addq	$1, -15952(%rbp)
	leaq	-15072(%rbp), %rdi
	leaq	-15200(%rbp), %rcx
	leaq	-15232(%rbp), %rdx
	leaq	-17904(%rbp), %rsi
	leaq	-18304(%rbp), %rax
	movq	$0, (%rsp)
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	_ZNK2cl12CommandQueue20enqueueNDRangeKernelERKNS_6KernelERKNS_7NDRangeES6_S6_PKSt6vectorINS_5EventESaIS8_EEPS8_
	leaq	-15072(%rbp), %rdi
	leaq	-15200(%rbp), %rcx
	leaq	-15232(%rbp), %rdx
	leaq	-17840(%rbp), %rsi
	leaq	-18304(%rbp), %rax
	movq	$0, (%rsp)
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	_ZNK2cl12CommandQueue20enqueueNDRangeKernelERKNS_6KernelERKNS_7NDRangeES6_S6_PKSt6vectorINS_5EventESaIS8_EEPS8_
	leaq	-18304(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK2cl12CommandQueue5flushEv
	addl	$1, -18588(%rbp)
.L270:
	cmpl	$511, -18588(%rbp)
	jle	.L277
	movl	$0, %edi
	call	time
	movq	-15824(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	difftime
	cvttsd2siq	%xmm0, %rax
	movq	%rax, -15816(%rbp)
	cvtsi2ssq	-15816(%rbp), %xmm0
	unpcklps	%xmm0, %xmm0
	cvtps2pd	%xmm0, %xmm0
	movsd	.LC77(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	_ZL8max_time(%rip), %xmm0
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm0
	unpcklps	%xmm0, %xmm0
	cvtps2pd	%xmm0, %xmm0
	movsd	stuff(%rip), %xmm2
	divsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm6
	movss	%xmm6, -18576(%rbp)
	movss	-18576(%rbp), %xmm0
	movss	.LC78(%rip), %xmm1
	divss	%xmm1, %xmm0
	unpcklps	%xmm0, %xmm0
	cvtps2pd	%xmm0, %xmm0
	call	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -18572(%rbp)
	movss	-18576(%rbp), %xmm0
	movss	.LC79(%rip), %xmm1
	divss	%xmm1, %xmm0
	movl	-18572(%rbp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cvtsi2ss	%eax, %xmm1
	subss	%xmm1, %xmm0
	unpcklps	%xmm0, %xmm0
	cvtps2pd	%xmm0, %xmm0
	call	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -18568(%rbp)
	movl	-18568(%rbp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cvtsi2ss	%eax, %xmm0
	movss	-18576(%rbp), %xmm1
	subss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movl	-18572(%rbp), %eax
	imull	$3600, %eax, %eax
	cvtsi2ss	%eax, %xmm1
	subss	%xmm1, %xmm0
	unpcklps	%xmm0, %xmm0
	cvtps2pd	%xmm0, %xmm0
	call	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -18564(%rbp)
	cvtsi2ssq	-15816(%rbp), %xmm7
	movss	%xmm7, -18648(%rbp)
	movl	$.LC80, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movss	-18648(%rbp), %xmm0
	movq	%rax, %rdi
	call	_ZNSolsEf
	movl	$.LC81, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	-18572(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZNSolsEi
	movl	$.LC82, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	-18568(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZNSolsEi
	movl	$.LC83, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	-18564(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZNSolsEi
	movl	$.LC84, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	jmp	.L278
.L285:
	leaq	-15072(%rbp), %rdi
	leaq	-15200(%rbp), %rcx
	leaq	-15232(%rbp), %rdx
	leaq	-17904(%rbp), %rsi
	leaq	-18304(%rbp), %rax
	movq	$0, (%rsp)
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	_ZNK2cl12CommandQueue20enqueueNDRangeKernelERKNS_6KernelERKNS_7NDRangeES6_S6_PKSt6vectorINS_5EventESaIS8_EEPS8_
	leaq	-15072(%rbp), %rdi
	leaq	-15200(%rbp), %rcx
	leaq	-15232(%rbp), %rdx
	leaq	-17840(%rbp), %rsi
	leaq	-18304(%rbp), %rax
	movq	$0, (%rsp)
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	_ZNK2cl12CommandQueue20enqueueNDRangeKernelERKNS_6KernelERKNS_7NDRangeES6_S6_PKSt6vectorINS_5EventESaIS8_EEPS8_
	leaq	-15072(%rbp), %rdi
	leaq	-15200(%rbp), %rcx
	leaq	-15232(%rbp), %rdx
	leaq	-18224(%rbp), %rsi
	leaq	-18304(%rbp), %rax
	movq	$0, (%rsp)
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	_ZNK2cl12CommandQueue20enqueueNDRangeKernelERKNS_6KernelERKNS_7NDRangeES6_S6_PKSt6vectorINS_5EventESaIS8_EEPS8_
	leaq	-18304(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK2cl12CommandQueue5flushEv
	leaq	-18304(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK2cl12CommandQueue6finishEv
	xorpd	%xmm0, %xmm0
	ucomisd	-15968(%rbp), %xmm0
	jp	.L708
	xorpd	%xmm0, %xmm0
	ucomisd	-15968(%rbp), %xmm0
	je	.L279
.L708:
	movsd	-15968(%rbp), %xmm0
	subsd	-15960(%rbp), %xmm0
	movsd	_ZL4warp(%rip), %xmm2
	movsd	.LC74(%rip), %xmm1
	mulsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.L281
.L279:
	movl	_ZL8n_frames(%rip), %eax
	cmpl	%eax, -18616(%rbp)
	jge	.L281
	addl	$1, -18616(%rbp)
	movl	-18616(%rbp), %eax
	imull	$100, %eax, %eax
	movl	_ZL8n_frames(%rip), %ecx
	cltd
	idivl	%ecx
	cvtsi2sd	%eax, %xmm0
	call	floor
	movsd	%xmm0, -18648(%rbp)
	movswl	-18630(%rbp), %eax
	cvtsi2sd	%eax, %xmm0
	call	floor
	movsd	.LC75(%rip), %xmm1
	addsd	%xmm1, %xmm0
	movsd	-18648(%rbp), %xmm5
	ucomisd	%xmm0, %xmm5
	jbe	.L283
	movl	-18616(%rbp), %eax
	imull	$100, %eax, %eax
	movl	_ZL8n_frames(%rip), %ecx
	cltd
	idivl	%ecx
	cvtsi2sd	%eax, %xmm0
	call	floor
	cvttsd2si	%xmm0, %eax
	movw	%ax, -18630(%rbp)
	movswl	-18630(%rbp), %eax
	movl	%eax, %esi
	movl	$_ZSt4cout, %edi
	call	_ZNSolsEs
	movl	$.LC76, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L283:
	movq	-15944(%rbp), %rcx
	movq	-15832(%rbp), %rdx
	leaq	-17424(%rbp), %rsi
	leaq	-18304(%rbp), %rax
	movq	$0, 8(%rsp)
	movq	$0, (%rsp)
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	_ZNK2cl12CommandQueue17enqueueReadBufferERKNS_6BufferEjmmPvPKSt6vectorINS_5EventESaIS6_EEPS6_
	leaq	-16080(%rbp), %rax
	movq	-15944(%rbp), %rcx
	movl	$1024, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z13arraytostringPA4_di
.LEHE287:
	leaq	-16080(%rbp), %rdx
	leaq	-16208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB288:
	call	_ZNSsaSEOSs
.LEHE288:
	leaq	-16080(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-16208(%rbp), %rdx
	leaq	-6784(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB289:
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E
	movq	-15872(%rbp), %rdx
	leaq	-17280(%rbp), %rsi
	leaq	-18304(%rbp), %rax
	movq	$0, 8(%rsp)
	movq	$0, (%rsp)
	movq	%rdx, %r9
	movl	$8192, %r8d
	movl	$0, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	_ZNK2cl12CommandQueue17enqueueReadBufferERKNS_6BufferEjmmPvPKSt6vectorINS_5EventESaIS6_EEPS6_
	leaq	-16064(%rbp), %rax
	movq	-15872(%rbp), %rcx
	movl	$1024, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z13arraytostringPdi
.LEHE289:
	leaq	-16064(%rbp), %rdx
	leaq	-16208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB290:
	call	_ZNSsaSEOSs
.LEHE290:
	leaq	-16064(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-16208(%rbp), %rdx
	leaq	-4736(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB291:
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E
	movq	-15872(%rbp), %rdx
	leaq	-17248(%rbp), %rsi
	leaq	-18304(%rbp), %rax
	movq	$0, 8(%rsp)
	movq	$0, (%rsp)
	movq	%rdx, %r9
	movl	$8192, %r8d
	movl	$0, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	_ZNK2cl12CommandQueue17enqueueReadBufferERKNS_6BufferEjmmPvPKSt6vectorINS_5EventESaIS6_EEPS6_
	leaq	-16048(%rbp), %rax
	movq	-15872(%rbp), %rcx
	movl	$1024, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z13arraytostringPdi
.LEHE291:
	leaq	-16048(%rbp), %rdx
	leaq	-16208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB292:
	call	_ZNSsaSEOSs
.LEHE292:
	leaq	-16048(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-16208(%rbp), %rdx
	leaq	-5248(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB293:
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E
	movq	-15872(%rbp), %rdx
	leaq	-17216(%rbp), %rsi
	leaq	-18304(%rbp), %rax
	movq	$0, 8(%rsp)
	movq	$0, (%rsp)
	movq	%rdx, %r9
	movl	$8192, %r8d
	movl	$0, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	_ZNK2cl12CommandQueue17enqueueReadBufferERKNS_6BufferEjmmPvPKSt6vectorINS_5EventESaIS6_EEPS6_
	leaq	-16032(%rbp), %rax
	movq	-15872(%rbp), %rcx
	movl	$1024, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z13arraytostringPdi
.LEHE293:
	leaq	-16032(%rbp), %rdx
	leaq	-16208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB294:
	call	_ZNSsaSEOSs
.LEHE294:
	leaq	-16032(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-16208(%rbp), %rdx
	leaq	-6272(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB295:
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E
	movq	-15872(%rbp), %rdx
	leaq	-17200(%rbp), %rsi
	leaq	-18304(%rbp), %rax
	movq	$0, 8(%rsp)
	movq	$0, (%rsp)
	movq	%rdx, %r9
	movl	$8192, %r8d
	movl	$0, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	_ZNK2cl12CommandQueue17enqueueReadBufferERKNS_6BufferEjmmPvPKSt6vectorINS_5EventESaIS6_EEPS6_
	leaq	-16016(%rbp), %rax
	movq	-15872(%rbp), %rcx
	movl	$1024, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z13arraytostringPdi
.LEHE295:
	leaq	-16016(%rbp), %rdx
	leaq	-16208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB296:
	call	_ZNSsaSEOSs
.LEHE296:
	leaq	-16016(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-16208(%rbp), %rdx
	leaq	-5760(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB297:
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E
	movq	-15936(%rbp), %rcx
	movq	-15832(%rbp), %rdx
	leaq	-17408(%rbp), %rsi
	leaq	-18304(%rbp), %rax
	movq	$0, 8(%rsp)
	movq	$0, (%rsp)
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	_ZNK2cl12CommandQueue17enqueueReadBufferERKNS_6BufferEjmmPvPKSt6vectorINS_5EventESaIS6_EEPS6_
	leaq	-16000(%rbp), %rax
	movq	-15936(%rbp), %rcx
	movl	$1024, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z13arraytostringPA4_di
.LEHE297:
	leaq	-16000(%rbp), %rdx
	leaq	-16208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB298:
	call	_ZNSsaSEOSs
.LEHE298:
	leaq	-16000(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-16208(%rbp), %rdx
	leaq	-4224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB299:
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E
	movq	-15928(%rbp), %rcx
	movq	-15832(%rbp), %rdx
	leaq	-17392(%rbp), %rsi
	leaq	-18304(%rbp), %rax
	movq	$0, 8(%rsp)
	movq	$0, (%rsp)
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	_ZNK2cl12CommandQueue17enqueueReadBufferERKNS_6BufferEjmmPvPKSt6vectorINS_5EventESaIS6_EEPS6_
	leaq	-15984(%rbp), %rax
	movq	-15928(%rbp), %rcx
	movl	$1024, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z13arraytostringPA4_di
.LEHE299:
	leaq	-15984(%rbp), %rdx
	leaq	-16208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB300:
	call	_ZNSsaSEOSs
.LEHE300:
	leaq	-15984(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-16208(%rbp), %rdx
	leaq	-3712(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB301:
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E
	movq	-15968(%rbp), %rax
	movq	%rax, -15960(%rbp)
.L281:
	movsd	stuff(%rip), %xmm0
	movsd	-15968(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -15968(%rbp)
	leaq	-15072(%rbp), %rdi
	leaq	-15200(%rbp), %rcx
	leaq	-15232(%rbp), %rdx
	leaq	-17776(%rbp), %rsi
	leaq	-18304(%rbp), %rax
	movq	$0, (%rsp)
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	_ZNK2cl12CommandQueue20enqueueNDRangeKernelERKNS_6KernelERKNS_7NDRangeES6_S6_PKSt6vectorINS_5EventESaIS8_EEPS8_
	leaq	-15072(%rbp), %rdi
	leaq	-15200(%rbp), %rcx
	leaq	-15232(%rbp), %rdx
	leaq	-17712(%rbp), %rsi
	leaq	-18304(%rbp), %rax
	movq	$0, (%rsp)
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	_ZNK2cl12CommandQueue20enqueueNDRangeKernelERKNS_6KernelERKNS_7NDRangeES6_S6_PKSt6vectorINS_5EventESaIS8_EEPS8_
	leaq	-15072(%rbp), %rdi
	leaq	-15200(%rbp), %rcx
	leaq	-15232(%rbp), %rdx
	leaq	-18160(%rbp), %rsi
	leaq	-18304(%rbp), %rax
	movq	$0, (%rsp)
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	_ZNK2cl12CommandQueue20enqueueNDRangeKernelERKNS_6KernelERKNS_7NDRangeES6_S6_PKSt6vectorINS_5EventESaIS8_EEPS8_
	leaq	-15072(%rbp), %rdi
	leaq	-15104(%rbp), %rcx
	leaq	-15232(%rbp), %rdx
	leaq	-18288(%rbp), %rsi
	leaq	-18304(%rbp), %rax
	movq	$0, (%rsp)
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	_ZNK2cl12CommandQueue20enqueueNDRangeKernelERKNS_6KernelERKNS_7NDRangeES6_S6_PKSt6vectorINS_5EventESaIS8_EEPS8_
	leaq	-15072(%rbp), %rdi
	leaq	-15200(%rbp), %rcx
	leaq	-15232(%rbp), %rdx
	leaq	-18096(%rbp), %rsi
	leaq	-18304(%rbp), %rax
	movq	$0, (%rsp)
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	_ZNK2cl12CommandQueue20enqueueNDRangeKernelERKNS_6KernelERKNS_7NDRangeES6_S6_PKSt6vectorINS_5EventESaIS8_EEPS8_
	addq	$1, -15952(%rbp)
	leaq	-15072(%rbp), %rdi
	leaq	-15200(%rbp), %rcx
	leaq	-15232(%rbp), %rdx
	leaq	-17904(%rbp), %rsi
	leaq	-18304(%rbp), %rax
	movq	$0, (%rsp)
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	_ZNK2cl12CommandQueue20enqueueNDRangeKernelERKNS_6KernelERKNS_7NDRangeES6_S6_PKSt6vectorINS_5EventESaIS8_EEPS8_
	leaq	-15072(%rbp), %rdi
	leaq	-15200(%rbp), %rcx
	leaq	-15232(%rbp), %rdx
	leaq	-17840(%rbp), %rsi
	leaq	-18304(%rbp), %rax
	movq	$0, (%rsp)
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	_ZNK2cl12CommandQueue20enqueueNDRangeKernelERKNS_6KernelERKNS_7NDRangeES6_S6_PKSt6vectorINS_5EventESaIS8_EEPS8_
	leaq	-18304(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK2cl12CommandQueue5flushEv
.L278:
	movsd	_ZL8max_time(%rip), %xmm0
	ucomisd	-15968(%rbp), %xmm0
	ja	.L285
	movl	$.LC85, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$0, %edi
	call	time
	movq	-15824(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	difftime
	cvttsd2siq	%xmm0, %rax
	movq	%rax, -15816(%rbp)
	cvtsi2ssq	-15816(%rbp), %xmm6
	movss	%xmm6, -18648(%rbp)
	movl	$.LC86, %esi
	movl	$_ZSt4cout, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movss	-18648(%rbp), %xmm0
	movq	%rax, %rdi
	call	_ZNSolsEf
	movl	$.LC84, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.LEHE301:
	cmpq	$0, -15944(%rbp)
	je	.L286
	movq	-15944(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv
.L286:
	cmpq	$0, -15936(%rbp)
	je	.L287
	movq	-15936(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv
.L287:
	cmpq	$0, -15928(%rbp)
	je	.L288
	movq	-15928(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv
.L288:
	cmpq	$0, -15920(%rbp)
	je	.L289
	movq	-15920(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv
.L289:
	cmpq	$0, -15912(%rbp)
	je	.L290
	movq	-15912(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv
.L290:
	cmpq	$0, -15904(%rbp)
	je	.L291
	movq	-15904(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv
.L291:
	cmpq	$0, -15872(%rbp)
	je	.L292
	movq	-15872(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv
.L292:
	cmpq	$0, -15864(%rbp)
	je	.L293
	movq	-15864(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv
.L293:
	cmpq	$0, -15856(%rbp)
	je	.L294
	movq	-15856(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv
.L294:
	cmpq	$0, -15848(%rbp)
	je	.L295
	movq	-15848(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv
.L295:
	cmpq	$0, -15840(%rbp)
	je	.L296
	movq	-15840(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv
.L296:
	movl	$0, %ebx
	leaq	-16208(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-16304(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-3712(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	leaq	-4224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	leaq	-4736(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	leaq	-5248(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	leaq	-5760(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	leaq	-6272(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	leaq	-6784(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	leaq	-17200(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17216(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17232(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17248(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17264(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17280(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17296(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17312(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17328(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17344(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17360(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17376(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17392(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17408(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17424(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17440(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17456(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17472(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17488(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17504(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17520(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17536(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17552(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17568(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17584(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	leaq	-17648(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6KernelD1Ev
	leaq	-17712(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6KernelD1Ev
	leaq	-17776(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6KernelD1Ev
	leaq	-17840(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6KernelD1Ev
	leaq	-17904(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6KernelD1Ev
	leaq	-17968(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6KernelD1Ev
	leaq	-18032(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6KernelD1Ev
	leaq	-18096(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6KernelD1Ev
	leaq	-18160(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6KernelD1Ev
	leaq	-18224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6KernelD1Ev
	leaq	-18288(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6KernelD1Ev
	leaq	-18304(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl12CommandQueueD1Ev
	leaq	-18320(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl7ContextD1Ev
	leaq	-15648(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EED1Ev
	leaq	-15808(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6DeviceD1Ev
	leaq	-18352(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-15680(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EED1Ev
	leaq	-15712(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EED1Ev
	leaq	-15744(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EED1Ev
	leaq	-15776(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2cl8PlatformESaIS1_EED1Ev
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	leaq	-1088(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	leaq	-1616(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	leaq	-2144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	leaq	-2672(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	leaq	-3200(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	leaq	-18544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	leaq	-18560(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	movl	%ebx, %eax
	movq	-40(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L505
	jmp	.L710
.L506:
	movq	%rax, %rbx
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	jmp	.L299
.L508:
	movq	%rax, %rbx
	leaq	-18528(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L301
.L509:
	movq	%rax, %rbx
	leaq	-18512(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L301
.L511:
	movq	%rax, %rbx
	leaq	-18496(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L304
.L513:
	movq	%rax, %rbx
	leaq	-18480(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L306
.L515:
	movq	%rax, %rbx
	leaq	-18464(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L308
.L517:
	movq	%rax, %rbx
	leaq	-18448(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L310
.L519:
	movq	%rax, %rbx
	leaq	-18432(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L312
.L520:
	movq	%rax, %rbx
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	jmp	.L314
.L521:
	movq	%rax, %rbx
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	jmp	.L316
.L522:
	movq	%rax, %rbx
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	jmp	.L318
.L523:
	movq	%rax, %rbx
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	jmp	.L320
.L524:
	movq	%rax, %rbx
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	jmp	.L322
.L525:
	movq	%rax, %rbx
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	jmp	.L324
.L527:
	movq	%rax, %rbx
	leaq	-18416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L326
.L528:
	movq	%rax, %rbx
	leaq	-18400(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L326
.L529:
	movq	%rax, %rbx
	leaq	-18384(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L326
.L526:
	movq	%rax, %rbx
.L326:
	leaq	-15072(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
.L324:
	leaq	-15104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
.L322:
	leaq	-15136(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
.L320:
	leaq	-15168(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
.L318:
	leaq	-15200(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
.L316:
	leaq	-15232(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L314
.L536:
	movq	%rax, %rbx
	leaq	-18336(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L330
.L538:
	movq	%rax, %r12
	leaq	-15792(%rbp), %rbx
	addq	$16, %rbx
.L333:
	leaq	-15792(%rbp), %rax
	cmpq	%rax, %rbx
	je	.L332
	subq	$16, %rbx
	movq	%rbx, %rdi
	call	_ZN2cl6DeviceD1Ev
	jmp	.L333
.L332:
	movq	%r12, %rbx
	jmp	.L334
.L537:
	movq	%rax, %rbx
.L334:
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIN2cl6DeviceEED1Ev
	jmp	.L330
.L545:
	movq	%rax, %rbx
	leaq	-18272(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L336
.L544:
	movq	%rax, %rbx
.L336:
	leaq	-15008(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-18256(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L337
.L543:
	movq	%rax, %rbx
.L337:
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-18240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl7ContextD1Ev
	jmp	.L338
.L542:
	movq	%rax, %rbx
.L338:
	leaq	-15616(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EED1Ev
	jmp	.L339
.L550:
	movq	%rax, %rbx
	leaq	-18208(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L341
.L549:
	movq	%rax, %rbx
.L341:
	leaq	-15008(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-18192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L342
.L548:
	movq	%rax, %rbx
.L342:
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-18176(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl7ContextD1Ev
	jmp	.L343
.L547:
	movq	%rax, %rbx
.L343:
	leaq	-15584(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EED1Ev
	jmp	.L344
.L555:
	movq	%rax, %rbx
	leaq	-18144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L346
.L554:
	movq	%rax, %rbx
.L346:
	leaq	-15008(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-18128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L347
.L553:
	movq	%rax, %rbx
.L347:
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-18112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl7ContextD1Ev
	jmp	.L348
.L552:
	movq	%rax, %rbx
.L348:
	leaq	-15552(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EED1Ev
	jmp	.L349
.L560:
	movq	%rax, %rbx
	leaq	-18080(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L351
.L559:
	movq	%rax, %rbx
.L351:
	leaq	-15008(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-18064(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L352
.L558:
	movq	%rax, %rbx
.L352:
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-18048(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl7ContextD1Ev
	jmp	.L353
.L557:
	movq	%rax, %rbx
.L353:
	leaq	-15520(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EED1Ev
	jmp	.L354
.L565:
	movq	%rax, %rbx
	leaq	-18016(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L356
.L564:
	movq	%rax, %rbx
.L356:
	leaq	-15008(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-18000(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L357
.L563:
	movq	%rax, %rbx
.L357:
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-17984(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl7ContextD1Ev
	jmp	.L358
.L562:
	movq	%rax, %rbx
.L358:
	leaq	-15488(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EED1Ev
	jmp	.L359
.L570:
	movq	%rax, %rbx
	leaq	-17952(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L361
.L569:
	movq	%rax, %rbx
.L361:
	leaq	-15008(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-17936(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L362
.L568:
	movq	%rax, %rbx
.L362:
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-17920(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl7ContextD1Ev
	jmp	.L363
.L567:
	movq	%rax, %rbx
.L363:
	leaq	-15456(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EED1Ev
	jmp	.L364
.L575:
	movq	%rax, %rbx
	leaq	-17888(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L366
.L574:
	movq	%rax, %rbx
.L366:
	leaq	-15008(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-17872(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L367
.L573:
	movq	%rax, %rbx
.L367:
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-17856(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl7ContextD1Ev
	jmp	.L368
.L572:
	movq	%rax, %rbx
.L368:
	leaq	-15424(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EED1Ev
	jmp	.L369
.L580:
	movq	%rax, %rbx
	leaq	-17824(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L371
.L579:
	movq	%rax, %rbx
.L371:
	leaq	-15008(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-17808(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L372
.L578:
	movq	%rax, %rbx
.L372:
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-17792(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl7ContextD1Ev
	jmp	.L373
.L577:
	movq	%rax, %rbx
.L373:
	leaq	-15392(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EED1Ev
	jmp	.L374
.L585:
	movq	%rax, %rbx
	leaq	-17760(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L376
.L584:
	movq	%rax, %rbx
.L376:
	leaq	-15008(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-17744(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L377
.L583:
	movq	%rax, %rbx
.L377:
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-17728(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl7ContextD1Ev
	jmp	.L378
.L582:
	movq	%rax, %rbx
.L378:
	leaq	-15360(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EED1Ev
	jmp	.L379
.L590:
	movq	%rax, %rbx
	leaq	-17696(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L381
.L589:
	movq	%rax, %rbx
.L381:
	leaq	-15008(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-17680(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L382
.L588:
	movq	%rax, %rbx
.L382:
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-17664(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl7ContextD1Ev
	jmp	.L383
.L587:
	movq	%rax, %rbx
.L383:
	leaq	-15328(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EED1Ev
	jmp	.L384
.L595:
	movq	%rax, %rbx
	leaq	-17632(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L386
.L594:
	movq	%rax, %rbx
.L386:
	leaq	-15008(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-17616(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L387
.L593:
	movq	%rax, %rbx
.L387:
	leaq	-14976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-17600(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl7ContextD1Ev
	jmp	.L388
.L592:
	movq	%rax, %rbx
.L388:
	leaq	-15296(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EED1Ev
	jmp	.L389
.L622:
	movq	%rax, %rbx
	leaq	-17184(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L391
.L623:
	movq	%rax, %rbx
	leaq	-17168(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L391
.L625:
	movq	%rax, %rbx
	leaq	-17152(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L394
.L627:
	movq	%rax, %rbx
	leaq	-17136(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L396
.L629:
	movq	%rax, %rbx
	leaq	-17120(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L398
.L631:
	movq	%rax, %rbx
	leaq	-17104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L400
.L633:
	movq	%rax, %rbx
	leaq	-17088(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L402
.L635:
	movq	%rax, %rbx
	leaq	-17072(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L404
.L637:
	movq	%rax, %rbx
	leaq	-17056(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L406
.L638:
	movq	%rax, %rbx
	leaq	-17040(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L406
.L639:
	movq	%rax, %rbx
	leaq	-17024(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L406
.L640:
	movq	%rax, %rbx
	leaq	-17008(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L406
.L641:
	movq	%rax, %rbx
	leaq	-16992(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L406
.L642:
	movq	%rax, %rbx
	leaq	-16976(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L406
.L643:
	movq	%rax, %rbx
	leaq	-16960(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L406
.L644:
	movq	%rax, %rbx
	leaq	-16944(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L406
.L645:
	movq	%rax, %rbx
	leaq	-16928(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L406
.L646:
	movq	%rax, %rbx
	leaq	-16912(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L406
.L647:
	movq	%rax, %rbx
	leaq	-16896(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L406
.L648:
	movq	%rax, %rbx
	leaq	-16880(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L406
.L649:
	movq	%rax, %rbx
	leaq	-16864(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L406
.L650:
	movq	%rax, %rbx
	leaq	-16848(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L406
.L651:
	movq	%rax, %rbx
	leaq	-16832(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L406
.L652:
	movq	%rax, %rbx
	leaq	-16816(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L406
.L653:
	movq	%rax, %rbx
	leaq	-16800(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L406
.L654:
	movq	%rax, %rbx
	leaq	-16784(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L406
.L655:
	movq	%rax, %rbx
	leaq	-16768(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L406
.L656:
	movq	%rax, %rbx
	leaq	-16752(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L406
.L657:
	movq	%rax, %rbx
	leaq	-16736(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L406
.L658:
	movq	%rax, %rbx
	leaq	-16720(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L406
.L659:
	movq	%rax, %rbx
	leaq	-16704(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L406
.L660:
	movq	%rax, %rbx
	leaq	-16688(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L406
.L661:
	movq	%rax, %rbx
	leaq	-16672(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L406
.L662:
	movq	%rax, %rbx
	leaq	-16656(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L406
.L663:
	movq	%rax, %rbx
	leaq	-16640(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L406
.L664:
	movq	%rax, %rbx
	leaq	-16624(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L406
.L665:
	movq	%rax, %rbx
	leaq	-16608(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L406
.L666:
	movq	%rax, %rbx
	leaq	-16592(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L406
.L667:
	movq	%rax, %rbx
	leaq	-16576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L406
.L668:
	movq	%rax, %rbx
	leaq	-16560(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L406
.L669:
	movq	%rax, %rbx
	leaq	-16544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L406
.L670:
	movq	%rax, %rbx
	leaq	-16528(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L406
.L671:
	movq	%rax, %rbx
	leaq	-16512(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L406
.L672:
	movq	%rax, %rbx
	leaq	-16496(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L406
.L673:
	movq	%rax, %rbx
	leaq	-16480(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L406
.L674:
	movq	%rax, %rbx
	leaq	-16464(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L406
.L675:
	movq	%rax, %rbx
	leaq	-16448(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L406
.L676:
	movq	%rax, %rbx
	leaq	-16432(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L406
.L677:
	movq	%rax, %rbx
	leaq	-16416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L406
.L678:
	movq	%rax, %rbx
	leaq	-16400(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L406
.L679:
	movq	%rax, %rbx
	leaq	-16384(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L406
.L680:
	movq	%rax, %rbx
	leaq	-16368(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L406
.L681:
	movq	%rax, %rbx
	leaq	-16352(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L406
.L682:
	movq	%rax, %rbx
	leaq	-16336(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L406
.L683:
	movq	%rax, %rbx
	leaq	-16320(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L406
.L685:
	movq	%rax, %rbx
	leaq	-16288(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L454
.L686:
	movq	%rax, %rbx
	leaq	-16272(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L454
.L687:
	movq	%rax, %rbx
	leaq	-16256(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L454
.L688:
	movq	%rax, %rbx
	leaq	-16240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L454
.L689:
	movq	%rax, %rbx
	leaq	-16224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L454
.L691:
	movq	%rax, %rbx
	leaq	-16192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L460
.L692:
	movq	%rax, %rbx
	leaq	-16176(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L460
.L693:
	movq	%rax, %rbx
	leaq	-16160(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L460
.L694:
	movq	%rax, %rbx
	leaq	-16144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L460
.L695:
	movq	%rax, %rbx
	leaq	-16128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L460
.L696:
	movq	%rax, %rbx
	leaq	-16112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L460
.L697:
	movq	%rax, %rbx
	leaq	-16096(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L460
.L698:
	movq	%rax, %rbx
	leaq	-16080(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L460
.L699:
	movq	%rax, %rbx
	leaq	-16064(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L460
.L700:
	movq	%rax, %rbx
	leaq	-16048(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L460
.L701:
	movq	%rax, %rbx
	leaq	-16032(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L460
.L702:
	movq	%rax, %rbx
	leaq	-16016(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L460
.L703:
	movq	%rax, %rbx
	leaq	-16000(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L460
.L704:
	movq	%rax, %rbx
	leaq	-15984(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L460
.L690:
	movq	%rax, %rbx
.L460:
	leaq	-16208(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L454
.L684:
	movq	%rax, %rbx
.L454:
	leaq	-16304(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L406
.L636:
	movq	%rax, %rbx
.L406:
	leaq	-3712(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	jmp	.L404
.L634:
	movq	%rax, %rbx
.L404:
	leaq	-4224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	jmp	.L402
.L632:
	movq	%rax, %rbx
.L402:
	leaq	-4736(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	jmp	.L400
.L630:
	movq	%rax, %rbx
.L400:
	leaq	-5248(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	jmp	.L398
.L628:
	movq	%rax, %rbx
.L398:
	leaq	-5760(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	jmp	.L396
.L626:
	movq	%rax, %rbx
.L396:
	leaq	-6272(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	jmp	.L394
.L624:
	movq	%rax, %rbx
.L394:
	leaq	-6784(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	jmp	.L391
.L621:
	movq	%rax, %rbx
.L391:
	leaq	-17200(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L474
.L620:
	movq	%rax, %rbx
.L474:
	leaq	-17216(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L475
.L619:
	movq	%rax, %rbx
.L475:
	leaq	-17232(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L476
.L618:
	movq	%rax, %rbx
.L476:
	leaq	-17248(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L477
.L617:
	movq	%rax, %rbx
.L477:
	leaq	-17264(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L478
.L616:
	movq	%rax, %rbx
.L478:
	leaq	-17280(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L479
.L615:
	movq	%rax, %rbx
.L479:
	leaq	-17296(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L480
.L614:
	movq	%rax, %rbx
.L480:
	leaq	-17312(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L481
.L613:
	movq	%rax, %rbx
.L481:
	leaq	-17328(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L482
.L612:
	movq	%rax, %rbx
.L482:
	leaq	-17344(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L483
.L611:
	movq	%rax, %rbx
.L483:
	leaq	-17360(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L484
.L610:
	movq	%rax, %rbx
.L484:
	leaq	-17376(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L485
.L609:
	movq	%rax, %rbx
.L485:
	leaq	-17392(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L486
.L608:
	movq	%rax, %rbx
.L486:
	leaq	-17408(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L487
.L607:
	movq	%rax, %rbx
.L487:
	leaq	-17424(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L488
.L606:
	movq	%rax, %rbx
.L488:
	leaq	-17440(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L489
.L605:
	movq	%rax, %rbx
.L489:
	leaq	-17456(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L490
.L604:
	movq	%rax, %rbx
.L490:
	leaq	-17472(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L491
.L603:
	movq	%rax, %rbx
.L491:
	leaq	-17488(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L492
.L602:
	movq	%rax, %rbx
.L492:
	leaq	-17504(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L493
.L601:
	movq	%rax, %rbx
.L493:
	leaq	-17520(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L494
.L600:
	movq	%rax, %rbx
.L494:
	leaq	-17536(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L495
.L599:
	movq	%rax, %rbx
.L495:
	leaq	-17552(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L496
.L598:
	movq	%rax, %rbx
.L496:
	leaq	-17568(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L497
.L597:
	movq	%rax, %rbx
.L497:
	leaq	-17584(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6BufferD1Ev
	jmp	.L498
.L596:
	movq	%rax, %rbx
.L498:
	leaq	-17648(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6KernelD1Ev
	jmp	.L389
.L591:
	movq	%rax, %rbx
.L389:
	leaq	-17712(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6KernelD1Ev
	jmp	.L384
.L586:
	movq	%rax, %rbx
.L384:
	leaq	-17776(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6KernelD1Ev
	jmp	.L379
.L581:
	movq	%rax, %rbx
.L379:
	leaq	-17840(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6KernelD1Ev
	jmp	.L374
.L576:
	movq	%rax, %rbx
.L374:
	leaq	-17904(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6KernelD1Ev
	jmp	.L369
.L571:
	movq	%rax, %rbx
.L369:
	leaq	-17968(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6KernelD1Ev
	jmp	.L364
.L566:
	movq	%rax, %rbx
.L364:
	leaq	-18032(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6KernelD1Ev
	jmp	.L359
.L561:
	movq	%rax, %rbx
.L359:
	leaq	-18096(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6KernelD1Ev
	jmp	.L354
.L556:
	movq	%rax, %rbx
.L354:
	leaq	-18160(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6KernelD1Ev
	jmp	.L349
.L551:
	movq	%rax, %rbx
.L349:
	leaq	-18224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6KernelD1Ev
	jmp	.L344
.L546:
	movq	%rax, %rbx
.L344:
	leaq	-18288(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6KernelD1Ev
	jmp	.L339
.L541:
	movq	%rax, %rbx
.L339:
	leaq	-18304(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl12CommandQueueD1Ev
	jmp	.L499
.L540:
	movq	%rax, %rbx
.L499:
	leaq	-18320(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl7ContextD1Ev
	jmp	.L500
.L539:
	movq	%rax, %rbx
.L500:
	leaq	-15648(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EED1Ev
	jmp	.L330
.L535:
	movq	%rax, %rbx
.L330:
	leaq	-15808(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6DeviceD1Ev
	leaq	-18352(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	jmp	.L501
.L534:
	movq	%rax, %rbx
.L501:
	leaq	-15680(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EED1Ev
	jmp	.L502
.L533:
	movq	%rax, %rbx
.L502:
	leaq	-15712(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EED1Ev
	jmp	.L503
.L532:
	movq	%rax, %rbx
.L503:
	leaq	-15744(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EED1Ev
	jmp	.L504
.L531:
	movq	%rax, %rbx
.L504:
	leaq	-15776(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2cl8PlatformESaIS1_EED1Ev
	jmp	.L314
.L530:
	movq	%rax, %rbx
.L314:
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	jmp	.L312
.L518:
	movq	%rax, %rbx
.L312:
	leaq	-1088(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	jmp	.L310
.L516:
	movq	%rax, %rbx
.L310:
	leaq	-1616(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	jmp	.L308
.L514:
	movq	%rax, %rbx
.L308:
	leaq	-2144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	jmp	.L306
.L512:
	movq	%rax, %rbx
.L306:
	leaq	-2672(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	jmp	.L304
.L510:
	movq	%rax, %rbx
.L304:
	leaq	-3200(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	jmp	.L301
.L507:
	movq	%rax, %rbx
.L301:
	leaq	-18544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
.L299:
	leaq	-18560(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB302:
	call	_Unwind_Resume
.LEHE302:
.L710:
	call	__stack_chk_fail
.L505:
	addq	$18648, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3304:
	.section	.gcc_except_table
.LLSDA3304:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3304-.LLSDACSB3304
.LLSDACSB3304:
	.uleb128 .LEHB30-.LFB3304
	.uleb128 .LEHE30-.LEHB30
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB31-.LFB3304
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L506-.LFB3304
	.uleb128 0
	.uleb128 .LEHB32-.LFB3304
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L507-.LFB3304
	.uleb128 0
	.uleb128 .LEHB33-.LFB3304
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L508-.LFB3304
	.uleb128 0
	.uleb128 .LEHB34-.LFB3304
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L507-.LFB3304
	.uleb128 0
	.uleb128 .LEHB35-.LFB3304
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L509-.LFB3304
	.uleb128 0
	.uleb128 .LEHB36-.LFB3304
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L510-.LFB3304
	.uleb128 0
	.uleb128 .LEHB37-.LFB3304
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L511-.LFB3304
	.uleb128 0
	.uleb128 .LEHB38-.LFB3304
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L512-.LFB3304
	.uleb128 0
	.uleb128 .LEHB39-.LFB3304
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L513-.LFB3304
	.uleb128 0
	.uleb128 .LEHB40-.LFB3304
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L514-.LFB3304
	.uleb128 0
	.uleb128 .LEHB41-.LFB3304
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L515-.LFB3304
	.uleb128 0
	.uleb128 .LEHB42-.LFB3304
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L516-.LFB3304
	.uleb128 0
	.uleb128 .LEHB43-.LFB3304
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L517-.LFB3304
	.uleb128 0
	.uleb128 .LEHB44-.LFB3304
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L518-.LFB3304
	.uleb128 0
	.uleb128 .LEHB45-.LFB3304
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L519-.LFB3304
	.uleb128 0
	.uleb128 .LEHB46-.LFB3304
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L520-.LFB3304
	.uleb128 0
	.uleb128 .LEHB47-.LFB3304
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L521-.LFB3304
	.uleb128 0
	.uleb128 .LEHB48-.LFB3304
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L522-.LFB3304
	.uleb128 0
	.uleb128 .LEHB49-.LFB3304
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L523-.LFB3304
	.uleb128 0
	.uleb128 .LEHB50-.LFB3304
	.uleb128 .LEHE50-.LEHB50
	.uleb128 .L524-.LFB3304
	.uleb128 0
	.uleb128 .LEHB51-.LFB3304
	.uleb128 .LEHE51-.LEHB51
	.uleb128 .L525-.LFB3304
	.uleb128 0
	.uleb128 .LEHB52-.LFB3304
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L526-.LFB3304
	.uleb128 0
	.uleb128 .LEHB53-.LFB3304
	.uleb128 .LEHE53-.LEHB53
	.uleb128 .L527-.LFB3304
	.uleb128 0
	.uleb128 .LEHB54-.LFB3304
	.uleb128 .LEHE54-.LEHB54
	.uleb128 .L526-.LFB3304
	.uleb128 0
	.uleb128 .LEHB55-.LFB3304
	.uleb128 .LEHE55-.LEHB55
	.uleb128 .L528-.LFB3304
	.uleb128 0
	.uleb128 .LEHB56-.LFB3304
	.uleb128 .LEHE56-.LEHB56
	.uleb128 .L526-.LFB3304
	.uleb128 0
	.uleb128 .LEHB57-.LFB3304
	.uleb128 .LEHE57-.LEHB57
	.uleb128 .L529-.LFB3304
	.uleb128 0
	.uleb128 .LEHB58-.LFB3304
	.uleb128 .LEHE58-.LEHB58
	.uleb128 .L526-.LFB3304
	.uleb128 0
	.uleb128 .LEHB59-.LFB3304
	.uleb128 .LEHE59-.LEHB59
	.uleb128 .L530-.LFB3304
	.uleb128 0
	.uleb128 .LEHB60-.LFB3304
	.uleb128 .LEHE60-.LEHB60
	.uleb128 .L531-.LFB3304
	.uleb128 0
	.uleb128 .LEHB61-.LFB3304
	.uleb128 .LEHE61-.LEHB61
	.uleb128 .L532-.LFB3304
	.uleb128 0
	.uleb128 .LEHB62-.LFB3304
	.uleb128 .LEHE62-.LEHB62
	.uleb128 .L533-.LFB3304
	.uleb128 0
	.uleb128 .LEHB63-.LFB3304
	.uleb128 .LEHE63-.LEHB63
	.uleb128 .L534-.LFB3304
	.uleb128 0
	.uleb128 .LEHB64-.LFB3304
	.uleb128 .LEHE64-.LEHB64
	.uleb128 .L535-.LFB3304
	.uleb128 0
	.uleb128 .LEHB65-.LFB3304
	.uleb128 .LEHE65-.LEHB65
	.uleb128 .L536-.LFB3304
	.uleb128 0
	.uleb128 .LEHB66-.LFB3304
	.uleb128 .LEHE66-.LEHB66
	.uleb128 .L535-.LFB3304
	.uleb128 0
	.uleb128 .LEHB67-.LFB3304
	.uleb128 .LEHE67-.LEHB67
	.uleb128 .L537-.LFB3304
	.uleb128 0
	.uleb128 .LEHB68-.LFB3304
	.uleb128 .LEHE68-.LEHB68
	.uleb128 .L538-.LFB3304
	.uleb128 0
	.uleb128 .LEHB69-.LFB3304
	.uleb128 .LEHE69-.LEHB69
	.uleb128 .L539-.LFB3304
	.uleb128 0
	.uleb128 .LEHB70-.LFB3304
	.uleb128 .LEHE70-.LEHB70
	.uleb128 .L540-.LFB3304
	.uleb128 0
	.uleb128 .LEHB71-.LFB3304
	.uleb128 .LEHE71-.LEHB71
	.uleb128 .L541-.LFB3304
	.uleb128 0
	.uleb128 .LEHB72-.LFB3304
	.uleb128 .LEHE72-.LEHB72
	.uleb128 .L542-.LFB3304
	.uleb128 0
	.uleb128 .LEHB73-.LFB3304
	.uleb128 .LEHE73-.LEHB73
	.uleb128 .L543-.LFB3304
	.uleb128 0
	.uleb128 .LEHB74-.LFB3304
	.uleb128 .LEHE74-.LEHB74
	.uleb128 .L544-.LFB3304
	.uleb128 0
	.uleb128 .LEHB75-.LFB3304
	.uleb128 .LEHE75-.LEHB75
	.uleb128 .L545-.LFB3304
	.uleb128 0
	.uleb128 .LEHB76-.LFB3304
	.uleb128 .LEHE76-.LEHB76
	.uleb128 .L546-.LFB3304
	.uleb128 0
	.uleb128 .LEHB77-.LFB3304
	.uleb128 .LEHE77-.LEHB77
	.uleb128 .L547-.LFB3304
	.uleb128 0
	.uleb128 .LEHB78-.LFB3304
	.uleb128 .LEHE78-.LEHB78
	.uleb128 .L548-.LFB3304
	.uleb128 0
	.uleb128 .LEHB79-.LFB3304
	.uleb128 .LEHE79-.LEHB79
	.uleb128 .L549-.LFB3304
	.uleb128 0
	.uleb128 .LEHB80-.LFB3304
	.uleb128 .LEHE80-.LEHB80
	.uleb128 .L550-.LFB3304
	.uleb128 0
	.uleb128 .LEHB81-.LFB3304
	.uleb128 .LEHE81-.LEHB81
	.uleb128 .L551-.LFB3304
	.uleb128 0
	.uleb128 .LEHB82-.LFB3304
	.uleb128 .LEHE82-.LEHB82
	.uleb128 .L552-.LFB3304
	.uleb128 0
	.uleb128 .LEHB83-.LFB3304
	.uleb128 .LEHE83-.LEHB83
	.uleb128 .L553-.LFB3304
	.uleb128 0
	.uleb128 .LEHB84-.LFB3304
	.uleb128 .LEHE84-.LEHB84
	.uleb128 .L554-.LFB3304
	.uleb128 0
	.uleb128 .LEHB85-.LFB3304
	.uleb128 .LEHE85-.LEHB85
	.uleb128 .L555-.LFB3304
	.uleb128 0
	.uleb128 .LEHB86-.LFB3304
	.uleb128 .LEHE86-.LEHB86
	.uleb128 .L556-.LFB3304
	.uleb128 0
	.uleb128 .LEHB87-.LFB3304
	.uleb128 .LEHE87-.LEHB87
	.uleb128 .L557-.LFB3304
	.uleb128 0
	.uleb128 .LEHB88-.LFB3304
	.uleb128 .LEHE88-.LEHB88
	.uleb128 .L558-.LFB3304
	.uleb128 0
	.uleb128 .LEHB89-.LFB3304
	.uleb128 .LEHE89-.LEHB89
	.uleb128 .L559-.LFB3304
	.uleb128 0
	.uleb128 .LEHB90-.LFB3304
	.uleb128 .LEHE90-.LEHB90
	.uleb128 .L560-.LFB3304
	.uleb128 0
	.uleb128 .LEHB91-.LFB3304
	.uleb128 .LEHE91-.LEHB91
	.uleb128 .L561-.LFB3304
	.uleb128 0
	.uleb128 .LEHB92-.LFB3304
	.uleb128 .LEHE92-.LEHB92
	.uleb128 .L562-.LFB3304
	.uleb128 0
	.uleb128 .LEHB93-.LFB3304
	.uleb128 .LEHE93-.LEHB93
	.uleb128 .L563-.LFB3304
	.uleb128 0
	.uleb128 .LEHB94-.LFB3304
	.uleb128 .LEHE94-.LEHB94
	.uleb128 .L564-.LFB3304
	.uleb128 0
	.uleb128 .LEHB95-.LFB3304
	.uleb128 .LEHE95-.LEHB95
	.uleb128 .L565-.LFB3304
	.uleb128 0
	.uleb128 .LEHB96-.LFB3304
	.uleb128 .LEHE96-.LEHB96
	.uleb128 .L566-.LFB3304
	.uleb128 0
	.uleb128 .LEHB97-.LFB3304
	.uleb128 .LEHE97-.LEHB97
	.uleb128 .L567-.LFB3304
	.uleb128 0
	.uleb128 .LEHB98-.LFB3304
	.uleb128 .LEHE98-.LEHB98
	.uleb128 .L568-.LFB3304
	.uleb128 0
	.uleb128 .LEHB99-.LFB3304
	.uleb128 .LEHE99-.LEHB99
	.uleb128 .L569-.LFB3304
	.uleb128 0
	.uleb128 .LEHB100-.LFB3304
	.uleb128 .LEHE100-.LEHB100
	.uleb128 .L570-.LFB3304
	.uleb128 0
	.uleb128 .LEHB101-.LFB3304
	.uleb128 .LEHE101-.LEHB101
	.uleb128 .L571-.LFB3304
	.uleb128 0
	.uleb128 .LEHB102-.LFB3304
	.uleb128 .LEHE102-.LEHB102
	.uleb128 .L572-.LFB3304
	.uleb128 0
	.uleb128 .LEHB103-.LFB3304
	.uleb128 .LEHE103-.LEHB103
	.uleb128 .L573-.LFB3304
	.uleb128 0
	.uleb128 .LEHB104-.LFB3304
	.uleb128 .LEHE104-.LEHB104
	.uleb128 .L574-.LFB3304
	.uleb128 0
	.uleb128 .LEHB105-.LFB3304
	.uleb128 .LEHE105-.LEHB105
	.uleb128 .L575-.LFB3304
	.uleb128 0
	.uleb128 .LEHB106-.LFB3304
	.uleb128 .LEHE106-.LEHB106
	.uleb128 .L576-.LFB3304
	.uleb128 0
	.uleb128 .LEHB107-.LFB3304
	.uleb128 .LEHE107-.LEHB107
	.uleb128 .L577-.LFB3304
	.uleb128 0
	.uleb128 .LEHB108-.LFB3304
	.uleb128 .LEHE108-.LEHB108
	.uleb128 .L578-.LFB3304
	.uleb128 0
	.uleb128 .LEHB109-.LFB3304
	.uleb128 .LEHE109-.LEHB109
	.uleb128 .L579-.LFB3304
	.uleb128 0
	.uleb128 .LEHB110-.LFB3304
	.uleb128 .LEHE110-.LEHB110
	.uleb128 .L580-.LFB3304
	.uleb128 0
	.uleb128 .LEHB111-.LFB3304
	.uleb128 .LEHE111-.LEHB111
	.uleb128 .L581-.LFB3304
	.uleb128 0
	.uleb128 .LEHB112-.LFB3304
	.uleb128 .LEHE112-.LEHB112
	.uleb128 .L582-.LFB3304
	.uleb128 0
	.uleb128 .LEHB113-.LFB3304
	.uleb128 .LEHE113-.LEHB113
	.uleb128 .L583-.LFB3304
	.uleb128 0
	.uleb128 .LEHB114-.LFB3304
	.uleb128 .LEHE114-.LEHB114
	.uleb128 .L584-.LFB3304
	.uleb128 0
	.uleb128 .LEHB115-.LFB3304
	.uleb128 .LEHE115-.LEHB115
	.uleb128 .L585-.LFB3304
	.uleb128 0
	.uleb128 .LEHB116-.LFB3304
	.uleb128 .LEHE116-.LEHB116
	.uleb128 .L586-.LFB3304
	.uleb128 0
	.uleb128 .LEHB117-.LFB3304
	.uleb128 .LEHE117-.LEHB117
	.uleb128 .L587-.LFB3304
	.uleb128 0
	.uleb128 .LEHB118-.LFB3304
	.uleb128 .LEHE118-.LEHB118
	.uleb128 .L588-.LFB3304
	.uleb128 0
	.uleb128 .LEHB119-.LFB3304
	.uleb128 .LEHE119-.LEHB119
	.uleb128 .L589-.LFB3304
	.uleb128 0
	.uleb128 .LEHB120-.LFB3304
	.uleb128 .LEHE120-.LEHB120
	.uleb128 .L590-.LFB3304
	.uleb128 0
	.uleb128 .LEHB121-.LFB3304
	.uleb128 .LEHE121-.LEHB121
	.uleb128 .L591-.LFB3304
	.uleb128 0
	.uleb128 .LEHB122-.LFB3304
	.uleb128 .LEHE122-.LEHB122
	.uleb128 .L592-.LFB3304
	.uleb128 0
	.uleb128 .LEHB123-.LFB3304
	.uleb128 .LEHE123-.LEHB123
	.uleb128 .L593-.LFB3304
	.uleb128 0
	.uleb128 .LEHB124-.LFB3304
	.uleb128 .LEHE124-.LEHB124
	.uleb128 .L594-.LFB3304
	.uleb128 0
	.uleb128 .LEHB125-.LFB3304
	.uleb128 .LEHE125-.LEHB125
	.uleb128 .L595-.LFB3304
	.uleb128 0
	.uleb128 .LEHB126-.LFB3304
	.uleb128 .LEHE126-.LEHB126
	.uleb128 .L596-.LFB3304
	.uleb128 0
	.uleb128 .LEHB127-.LFB3304
	.uleb128 .LEHE127-.LEHB127
	.uleb128 .L597-.LFB3304
	.uleb128 0
	.uleb128 .LEHB128-.LFB3304
	.uleb128 .LEHE128-.LEHB128
	.uleb128 .L598-.LFB3304
	.uleb128 0
	.uleb128 .LEHB129-.LFB3304
	.uleb128 .LEHE129-.LEHB129
	.uleb128 .L599-.LFB3304
	.uleb128 0
	.uleb128 .LEHB130-.LFB3304
	.uleb128 .LEHE130-.LEHB130
	.uleb128 .L600-.LFB3304
	.uleb128 0
	.uleb128 .LEHB131-.LFB3304
	.uleb128 .LEHE131-.LEHB131
	.uleb128 .L601-.LFB3304
	.uleb128 0
	.uleb128 .LEHB132-.LFB3304
	.uleb128 .LEHE132-.LEHB132
	.uleb128 .L602-.LFB3304
	.uleb128 0
	.uleb128 .LEHB133-.LFB3304
	.uleb128 .LEHE133-.LEHB133
	.uleb128 .L603-.LFB3304
	.uleb128 0
	.uleb128 .LEHB134-.LFB3304
	.uleb128 .LEHE134-.LEHB134
	.uleb128 .L604-.LFB3304
	.uleb128 0
	.uleb128 .LEHB135-.LFB3304
	.uleb128 .LEHE135-.LEHB135
	.uleb128 .L605-.LFB3304
	.uleb128 0
	.uleb128 .LEHB136-.LFB3304
	.uleb128 .LEHE136-.LEHB136
	.uleb128 .L606-.LFB3304
	.uleb128 0
	.uleb128 .LEHB137-.LFB3304
	.uleb128 .LEHE137-.LEHB137
	.uleb128 .L607-.LFB3304
	.uleb128 0
	.uleb128 .LEHB138-.LFB3304
	.uleb128 .LEHE138-.LEHB138
	.uleb128 .L608-.LFB3304
	.uleb128 0
	.uleb128 .LEHB139-.LFB3304
	.uleb128 .LEHE139-.LEHB139
	.uleb128 .L609-.LFB3304
	.uleb128 0
	.uleb128 .LEHB140-.LFB3304
	.uleb128 .LEHE140-.LEHB140
	.uleb128 .L610-.LFB3304
	.uleb128 0
	.uleb128 .LEHB141-.LFB3304
	.uleb128 .LEHE141-.LEHB141
	.uleb128 .L611-.LFB3304
	.uleb128 0
	.uleb128 .LEHB142-.LFB3304
	.uleb128 .LEHE142-.LEHB142
	.uleb128 .L612-.LFB3304
	.uleb128 0
	.uleb128 .LEHB143-.LFB3304
	.uleb128 .LEHE143-.LEHB143
	.uleb128 .L613-.LFB3304
	.uleb128 0
	.uleb128 .LEHB144-.LFB3304
	.uleb128 .LEHE144-.LEHB144
	.uleb128 .L614-.LFB3304
	.uleb128 0
	.uleb128 .LEHB145-.LFB3304
	.uleb128 .LEHE145-.LEHB145
	.uleb128 .L615-.LFB3304
	.uleb128 0
	.uleb128 .LEHB146-.LFB3304
	.uleb128 .LEHE146-.LEHB146
	.uleb128 .L616-.LFB3304
	.uleb128 0
	.uleb128 .LEHB147-.LFB3304
	.uleb128 .LEHE147-.LEHB147
	.uleb128 .L617-.LFB3304
	.uleb128 0
	.uleb128 .LEHB148-.LFB3304
	.uleb128 .LEHE148-.LEHB148
	.uleb128 .L618-.LFB3304
	.uleb128 0
	.uleb128 .LEHB149-.LFB3304
	.uleb128 .LEHE149-.LEHB149
	.uleb128 .L619-.LFB3304
	.uleb128 0
	.uleb128 .LEHB150-.LFB3304
	.uleb128 .LEHE150-.LEHB150
	.uleb128 .L620-.LFB3304
	.uleb128 0
	.uleb128 .LEHB151-.LFB3304
	.uleb128 .LEHE151-.LEHB151
	.uleb128 .L621-.LFB3304
	.uleb128 0
	.uleb128 .LEHB152-.LFB3304
	.uleb128 .LEHE152-.LEHB152
	.uleb128 .L622-.LFB3304
	.uleb128 0
	.uleb128 .LEHB153-.LFB3304
	.uleb128 .LEHE153-.LEHB153
	.uleb128 .L621-.LFB3304
	.uleb128 0
	.uleb128 .LEHB154-.LFB3304
	.uleb128 .LEHE154-.LEHB154
	.uleb128 .L623-.LFB3304
	.uleb128 0
	.uleb128 .LEHB155-.LFB3304
	.uleb128 .LEHE155-.LEHB155
	.uleb128 .L624-.LFB3304
	.uleb128 0
	.uleb128 .LEHB156-.LFB3304
	.uleb128 .LEHE156-.LEHB156
	.uleb128 .L625-.LFB3304
	.uleb128 0
	.uleb128 .LEHB157-.LFB3304
	.uleb128 .LEHE157-.LEHB157
	.uleb128 .L626-.LFB3304
	.uleb128 0
	.uleb128 .LEHB158-.LFB3304
	.uleb128 .LEHE158-.LEHB158
	.uleb128 .L627-.LFB3304
	.uleb128 0
	.uleb128 .LEHB159-.LFB3304
	.uleb128 .LEHE159-.LEHB159
	.uleb128 .L628-.LFB3304
	.uleb128 0
	.uleb128 .LEHB160-.LFB3304
	.uleb128 .LEHE160-.LEHB160
	.uleb128 .L629-.LFB3304
	.uleb128 0
	.uleb128 .LEHB161-.LFB3304
	.uleb128 .LEHE161-.LEHB161
	.uleb128 .L630-.LFB3304
	.uleb128 0
	.uleb128 .LEHB162-.LFB3304
	.uleb128 .LEHE162-.LEHB162
	.uleb128 .L631-.LFB3304
	.uleb128 0
	.uleb128 .LEHB163-.LFB3304
	.uleb128 .LEHE163-.LEHB163
	.uleb128 .L632-.LFB3304
	.uleb128 0
	.uleb128 .LEHB164-.LFB3304
	.uleb128 .LEHE164-.LEHB164
	.uleb128 .L633-.LFB3304
	.uleb128 0
	.uleb128 .LEHB165-.LFB3304
	.uleb128 .LEHE165-.LEHB165
	.uleb128 .L634-.LFB3304
	.uleb128 0
	.uleb128 .LEHB166-.LFB3304
	.uleb128 .LEHE166-.LEHB166
	.uleb128 .L635-.LFB3304
	.uleb128 0
	.uleb128 .LEHB167-.LFB3304
	.uleb128 .LEHE167-.LEHB167
	.uleb128 .L636-.LFB3304
	.uleb128 0
	.uleb128 .LEHB168-.LFB3304
	.uleb128 .LEHE168-.LEHB168
	.uleb128 .L637-.LFB3304
	.uleb128 0
	.uleb128 .LEHB169-.LFB3304
	.uleb128 .LEHE169-.LEHB169
	.uleb128 .L636-.LFB3304
	.uleb128 0
	.uleb128 .LEHB170-.LFB3304
	.uleb128 .LEHE170-.LEHB170
	.uleb128 .L638-.LFB3304
	.uleb128 0
	.uleb128 .LEHB171-.LFB3304
	.uleb128 .LEHE171-.LEHB171
	.uleb128 .L636-.LFB3304
	.uleb128 0
	.uleb128 .LEHB172-.LFB3304
	.uleb128 .LEHE172-.LEHB172
	.uleb128 .L639-.LFB3304
	.uleb128 0
	.uleb128 .LEHB173-.LFB3304
	.uleb128 .LEHE173-.LEHB173
	.uleb128 .L636-.LFB3304
	.uleb128 0
	.uleb128 .LEHB174-.LFB3304
	.uleb128 .LEHE174-.LEHB174
	.uleb128 .L640-.LFB3304
	.uleb128 0
	.uleb128 .LEHB175-.LFB3304
	.uleb128 .LEHE175-.LEHB175
	.uleb128 .L636-.LFB3304
	.uleb128 0
	.uleb128 .LEHB176-.LFB3304
	.uleb128 .LEHE176-.LEHB176
	.uleb128 .L641-.LFB3304
	.uleb128 0
	.uleb128 .LEHB177-.LFB3304
	.uleb128 .LEHE177-.LEHB177
	.uleb128 .L636-.LFB3304
	.uleb128 0
	.uleb128 .LEHB178-.LFB3304
	.uleb128 .LEHE178-.LEHB178
	.uleb128 .L642-.LFB3304
	.uleb128 0
	.uleb128 .LEHB179-.LFB3304
	.uleb128 .LEHE179-.LEHB179
	.uleb128 .L636-.LFB3304
	.uleb128 0
	.uleb128 .LEHB180-.LFB3304
	.uleb128 .LEHE180-.LEHB180
	.uleb128 .L643-.LFB3304
	.uleb128 0
	.uleb128 .LEHB181-.LFB3304
	.uleb128 .LEHE181-.LEHB181
	.uleb128 .L636-.LFB3304
	.uleb128 0
	.uleb128 .LEHB182-.LFB3304
	.uleb128 .LEHE182-.LEHB182
	.uleb128 .L644-.LFB3304
	.uleb128 0
	.uleb128 .LEHB183-.LFB3304
	.uleb128 .LEHE183-.LEHB183
	.uleb128 .L636-.LFB3304
	.uleb128 0
	.uleb128 .LEHB184-.LFB3304
	.uleb128 .LEHE184-.LEHB184
	.uleb128 .L645-.LFB3304
	.uleb128 0
	.uleb128 .LEHB185-.LFB3304
	.uleb128 .LEHE185-.LEHB185
	.uleb128 .L636-.LFB3304
	.uleb128 0
	.uleb128 .LEHB186-.LFB3304
	.uleb128 .LEHE186-.LEHB186
	.uleb128 .L646-.LFB3304
	.uleb128 0
	.uleb128 .LEHB187-.LFB3304
	.uleb128 .LEHE187-.LEHB187
	.uleb128 .L636-.LFB3304
	.uleb128 0
	.uleb128 .LEHB188-.LFB3304
	.uleb128 .LEHE188-.LEHB188
	.uleb128 .L647-.LFB3304
	.uleb128 0
	.uleb128 .LEHB189-.LFB3304
	.uleb128 .LEHE189-.LEHB189
	.uleb128 .L636-.LFB3304
	.uleb128 0
	.uleb128 .LEHB190-.LFB3304
	.uleb128 .LEHE190-.LEHB190
	.uleb128 .L648-.LFB3304
	.uleb128 0
	.uleb128 .LEHB191-.LFB3304
	.uleb128 .LEHE191-.LEHB191
	.uleb128 .L636-.LFB3304
	.uleb128 0
	.uleb128 .LEHB192-.LFB3304
	.uleb128 .LEHE192-.LEHB192
	.uleb128 .L649-.LFB3304
	.uleb128 0
	.uleb128 .LEHB193-.LFB3304
	.uleb128 .LEHE193-.LEHB193
	.uleb128 .L636-.LFB3304
	.uleb128 0
	.uleb128 .LEHB194-.LFB3304
	.uleb128 .LEHE194-.LEHB194
	.uleb128 .L650-.LFB3304
	.uleb128 0
	.uleb128 .LEHB195-.LFB3304
	.uleb128 .LEHE195-.LEHB195
	.uleb128 .L636-.LFB3304
	.uleb128 0
	.uleb128 .LEHB196-.LFB3304
	.uleb128 .LEHE196-.LEHB196
	.uleb128 .L651-.LFB3304
	.uleb128 0
	.uleb128 .LEHB197-.LFB3304
	.uleb128 .LEHE197-.LEHB197
	.uleb128 .L636-.LFB3304
	.uleb128 0
	.uleb128 .LEHB198-.LFB3304
	.uleb128 .LEHE198-.LEHB198
	.uleb128 .L652-.LFB3304
	.uleb128 0
	.uleb128 .LEHB199-.LFB3304
	.uleb128 .LEHE199-.LEHB199
	.uleb128 .L636-.LFB3304
	.uleb128 0
	.uleb128 .LEHB200-.LFB3304
	.uleb128 .LEHE200-.LEHB200
	.uleb128 .L653-.LFB3304
	.uleb128 0
	.uleb128 .LEHB201-.LFB3304
	.uleb128 .LEHE201-.LEHB201
	.uleb128 .L636-.LFB3304
	.uleb128 0
	.uleb128 .LEHB202-.LFB3304
	.uleb128 .LEHE202-.LEHB202
	.uleb128 .L654-.LFB3304
	.uleb128 0
	.uleb128 .LEHB203-.LFB3304
	.uleb128 .LEHE203-.LEHB203
	.uleb128 .L636-.LFB3304
	.uleb128 0
	.uleb128 .LEHB204-.LFB3304
	.uleb128 .LEHE204-.LEHB204
	.uleb128 .L655-.LFB3304
	.uleb128 0
	.uleb128 .LEHB205-.LFB3304
	.uleb128 .LEHE205-.LEHB205
	.uleb128 .L636-.LFB3304
	.uleb128 0
	.uleb128 .LEHB206-.LFB3304
	.uleb128 .LEHE206-.LEHB206
	.uleb128 .L656-.LFB3304
	.uleb128 0
	.uleb128 .LEHB207-.LFB3304
	.uleb128 .LEHE207-.LEHB207
	.uleb128 .L636-.LFB3304
	.uleb128 0
	.uleb128 .LEHB208-.LFB3304
	.uleb128 .LEHE208-.LEHB208
	.uleb128 .L657-.LFB3304
	.uleb128 0
	.uleb128 .LEHB209-.LFB3304
	.uleb128 .LEHE209-.LEHB209
	.uleb128 .L636-.LFB3304
	.uleb128 0
	.uleb128 .LEHB210-.LFB3304
	.uleb128 .LEHE210-.LEHB210
	.uleb128 .L658-.LFB3304
	.uleb128 0
	.uleb128 .LEHB211-.LFB3304
	.uleb128 .LEHE211-.LEHB211
	.uleb128 .L636-.LFB3304
	.uleb128 0
	.uleb128 .LEHB212-.LFB3304
	.uleb128 .LEHE212-.LEHB212
	.uleb128 .L659-.LFB3304
	.uleb128 0
	.uleb128 .LEHB213-.LFB3304
	.uleb128 .LEHE213-.LEHB213
	.uleb128 .L636-.LFB3304
	.uleb128 0
	.uleb128 .LEHB214-.LFB3304
	.uleb128 .LEHE214-.LEHB214
	.uleb128 .L660-.LFB3304
	.uleb128 0
	.uleb128 .LEHB215-.LFB3304
	.uleb128 .LEHE215-.LEHB215
	.uleb128 .L636-.LFB3304
	.uleb128 0
	.uleb128 .LEHB216-.LFB3304
	.uleb128 .LEHE216-.LEHB216
	.uleb128 .L661-.LFB3304
	.uleb128 0
	.uleb128 .LEHB217-.LFB3304
	.uleb128 .LEHE217-.LEHB217
	.uleb128 .L636-.LFB3304
	.uleb128 0
	.uleb128 .LEHB218-.LFB3304
	.uleb128 .LEHE218-.LEHB218
	.uleb128 .L662-.LFB3304
	.uleb128 0
	.uleb128 .LEHB219-.LFB3304
	.uleb128 .LEHE219-.LEHB219
	.uleb128 .L636-.LFB3304
	.uleb128 0
	.uleb128 .LEHB220-.LFB3304
	.uleb128 .LEHE220-.LEHB220
	.uleb128 .L663-.LFB3304
	.uleb128 0
	.uleb128 .LEHB221-.LFB3304
	.uleb128 .LEHE221-.LEHB221
	.uleb128 .L636-.LFB3304
	.uleb128 0
	.uleb128 .LEHB222-.LFB3304
	.uleb128 .LEHE222-.LEHB222
	.uleb128 .L664-.LFB3304
	.uleb128 0
	.uleb128 .LEHB223-.LFB3304
	.uleb128 .LEHE223-.LEHB223
	.uleb128 .L636-.LFB3304
	.uleb128 0
	.uleb128 .LEHB224-.LFB3304
	.uleb128 .LEHE224-.LEHB224
	.uleb128 .L665-.LFB3304
	.uleb128 0
	.uleb128 .LEHB225-.LFB3304
	.uleb128 .LEHE225-.LEHB225
	.uleb128 .L636-.LFB3304
	.uleb128 0
	.uleb128 .LEHB226-.LFB3304
	.uleb128 .LEHE226-.LEHB226
	.uleb128 .L666-.LFB3304
	.uleb128 0
	.uleb128 .LEHB227-.LFB3304
	.uleb128 .LEHE227-.LEHB227
	.uleb128 .L636-.LFB3304
	.uleb128 0
	.uleb128 .LEHB228-.LFB3304
	.uleb128 .LEHE228-.LEHB228
	.uleb128 .L667-.LFB3304
	.uleb128 0
	.uleb128 .LEHB229-.LFB3304
	.uleb128 .LEHE229-.LEHB229
	.uleb128 .L636-.LFB3304
	.uleb128 0
	.uleb128 .LEHB230-.LFB3304
	.uleb128 .LEHE230-.LEHB230
	.uleb128 .L668-.LFB3304
	.uleb128 0
	.uleb128 .LEHB231-.LFB3304
	.uleb128 .LEHE231-.LEHB231
	.uleb128 .L636-.LFB3304
	.uleb128 0
	.uleb128 .LEHB232-.LFB3304
	.uleb128 .LEHE232-.LEHB232
	.uleb128 .L669-.LFB3304
	.uleb128 0
	.uleb128 .LEHB233-.LFB3304
	.uleb128 .LEHE233-.LEHB233
	.uleb128 .L636-.LFB3304
	.uleb128 0
	.uleb128 .LEHB234-.LFB3304
	.uleb128 .LEHE234-.LEHB234
	.uleb128 .L670-.LFB3304
	.uleb128 0
	.uleb128 .LEHB235-.LFB3304
	.uleb128 .LEHE235-.LEHB235
	.uleb128 .L636-.LFB3304
	.uleb128 0
	.uleb128 .LEHB236-.LFB3304
	.uleb128 .LEHE236-.LEHB236
	.uleb128 .L671-.LFB3304
	.uleb128 0
	.uleb128 .LEHB237-.LFB3304
	.uleb128 .LEHE237-.LEHB237
	.uleb128 .L636-.LFB3304
	.uleb128 0
	.uleb128 .LEHB238-.LFB3304
	.uleb128 .LEHE238-.LEHB238
	.uleb128 .L672-.LFB3304
	.uleb128 0
	.uleb128 .LEHB239-.LFB3304
	.uleb128 .LEHE239-.LEHB239
	.uleb128 .L636-.LFB3304
	.uleb128 0
	.uleb128 .LEHB240-.LFB3304
	.uleb128 .LEHE240-.LEHB240
	.uleb128 .L673-.LFB3304
	.uleb128 0
	.uleb128 .LEHB241-.LFB3304
	.uleb128 .LEHE241-.LEHB241
	.uleb128 .L636-.LFB3304
	.uleb128 0
	.uleb128 .LEHB242-.LFB3304
	.uleb128 .LEHE242-.LEHB242
	.uleb128 .L674-.LFB3304
	.uleb128 0
	.uleb128 .LEHB243-.LFB3304
	.uleb128 .LEHE243-.LEHB243
	.uleb128 .L636-.LFB3304
	.uleb128 0
	.uleb128 .LEHB244-.LFB3304
	.uleb128 .LEHE244-.LEHB244
	.uleb128 .L675-.LFB3304
	.uleb128 0
	.uleb128 .LEHB245-.LFB3304
	.uleb128 .LEHE245-.LEHB245
	.uleb128 .L636-.LFB3304
	.uleb128 0
	.uleb128 .LEHB246-.LFB3304
	.uleb128 .LEHE246-.LEHB246
	.uleb128 .L676-.LFB3304
	.uleb128 0
	.uleb128 .LEHB247-.LFB3304
	.uleb128 .LEHE247-.LEHB247
	.uleb128 .L636-.LFB3304
	.uleb128 0
	.uleb128 .LEHB248-.LFB3304
	.uleb128 .LEHE248-.LEHB248
	.uleb128 .L677-.LFB3304
	.uleb128 0
	.uleb128 .LEHB249-.LFB3304
	.uleb128 .LEHE249-.LEHB249
	.uleb128 .L636-.LFB3304
	.uleb128 0
	.uleb128 .LEHB250-.LFB3304
	.uleb128 .LEHE250-.LEHB250
	.uleb128 .L678-.LFB3304
	.uleb128 0
	.uleb128 .LEHB251-.LFB3304
	.uleb128 .LEHE251-.LEHB251
	.uleb128 .L636-.LFB3304
	.uleb128 0
	.uleb128 .LEHB252-.LFB3304
	.uleb128 .LEHE252-.LEHB252
	.uleb128 .L679-.LFB3304
	.uleb128 0
	.uleb128 .LEHB253-.LFB3304
	.uleb128 .LEHE253-.LEHB253
	.uleb128 .L636-.LFB3304
	.uleb128 0
	.uleb128 .LEHB254-.LFB3304
	.uleb128 .LEHE254-.LEHB254
	.uleb128 .L680-.LFB3304
	.uleb128 0
	.uleb128 .LEHB255-.LFB3304
	.uleb128 .LEHE255-.LEHB255
	.uleb128 .L636-.LFB3304
	.uleb128 0
	.uleb128 .LEHB256-.LFB3304
	.uleb128 .LEHE256-.LEHB256
	.uleb128 .L681-.LFB3304
	.uleb128 0
	.uleb128 .LEHB257-.LFB3304
	.uleb128 .LEHE257-.LEHB257
	.uleb128 .L636-.LFB3304
	.uleb128 0
	.uleb128 .LEHB258-.LFB3304
	.uleb128 .LEHE258-.LEHB258
	.uleb128 .L682-.LFB3304
	.uleb128 0
	.uleb128 .LEHB259-.LFB3304
	.uleb128 .LEHE259-.LEHB259
	.uleb128 .L636-.LFB3304
	.uleb128 0
	.uleb128 .LEHB260-.LFB3304
	.uleb128 .LEHE260-.LEHB260
	.uleb128 .L683-.LFB3304
	.uleb128 0
	.uleb128 .LEHB261-.LFB3304
	.uleb128 .LEHE261-.LEHB261
	.uleb128 .L636-.LFB3304
	.uleb128 0
	.uleb128 .LEHB262-.LFB3304
	.uleb128 .LEHE262-.LEHB262
	.uleb128 .L684-.LFB3304
	.uleb128 0
	.uleb128 .LEHB263-.LFB3304
	.uleb128 .LEHE263-.LEHB263
	.uleb128 .L685-.LFB3304
	.uleb128 0
	.uleb128 .LEHB264-.LFB3304
	.uleb128 .LEHE264-.LEHB264
	.uleb128 .L684-.LFB3304
	.uleb128 0
	.uleb128 .LEHB265-.LFB3304
	.uleb128 .LEHE265-.LEHB265
	.uleb128 .L686-.LFB3304
	.uleb128 0
	.uleb128 .LEHB266-.LFB3304
	.uleb128 .LEHE266-.LEHB266
	.uleb128 .L684-.LFB3304
	.uleb128 0
	.uleb128 .LEHB267-.LFB3304
	.uleb128 .LEHE267-.LEHB267
	.uleb128 .L687-.LFB3304
	.uleb128 0
	.uleb128 .LEHB268-.LFB3304
	.uleb128 .LEHE268-.LEHB268
	.uleb128 .L684-.LFB3304
	.uleb128 0
	.uleb128 .LEHB269-.LFB3304
	.uleb128 .LEHE269-.LEHB269
	.uleb128 .L688-.LFB3304
	.uleb128 0
	.uleb128 .LEHB270-.LFB3304
	.uleb128 .LEHE270-.LEHB270
	.uleb128 .L684-.LFB3304
	.uleb128 0
	.uleb128 .LEHB271-.LFB3304
	.uleb128 .LEHE271-.LEHB271
	.uleb128 .L689-.LFB3304
	.uleb128 0
	.uleb128 .LEHB272-.LFB3304
	.uleb128 .LEHE272-.LEHB272
	.uleb128 .L684-.LFB3304
	.uleb128 0
	.uleb128 .LEHB273-.LFB3304
	.uleb128 .LEHE273-.LEHB273
	.uleb128 .L690-.LFB3304
	.uleb128 0
	.uleb128 .LEHB274-.LFB3304
	.uleb128 .LEHE274-.LEHB274
	.uleb128 .L691-.LFB3304
	.uleb128 0
	.uleb128 .LEHB275-.LFB3304
	.uleb128 .LEHE275-.LEHB275
	.uleb128 .L690-.LFB3304
	.uleb128 0
	.uleb128 .LEHB276-.LFB3304
	.uleb128 .LEHE276-.LEHB276
	.uleb128 .L692-.LFB3304
	.uleb128 0
	.uleb128 .LEHB277-.LFB3304
	.uleb128 .LEHE277-.LEHB277
	.uleb128 .L690-.LFB3304
	.uleb128 0
	.uleb128 .LEHB278-.LFB3304
	.uleb128 .LEHE278-.LEHB278
	.uleb128 .L693-.LFB3304
	.uleb128 0
	.uleb128 .LEHB279-.LFB3304
	.uleb128 .LEHE279-.LEHB279
	.uleb128 .L690-.LFB3304
	.uleb128 0
	.uleb128 .LEHB280-.LFB3304
	.uleb128 .LEHE280-.LEHB280
	.uleb128 .L694-.LFB3304
	.uleb128 0
	.uleb128 .LEHB281-.LFB3304
	.uleb128 .LEHE281-.LEHB281
	.uleb128 .L690-.LFB3304
	.uleb128 0
	.uleb128 .LEHB282-.LFB3304
	.uleb128 .LEHE282-.LEHB282
	.uleb128 .L695-.LFB3304
	.uleb128 0
	.uleb128 .LEHB283-.LFB3304
	.uleb128 .LEHE283-.LEHB283
	.uleb128 .L690-.LFB3304
	.uleb128 0
	.uleb128 .LEHB284-.LFB3304
	.uleb128 .LEHE284-.LEHB284
	.uleb128 .L696-.LFB3304
	.uleb128 0
	.uleb128 .LEHB285-.LFB3304
	.uleb128 .LEHE285-.LEHB285
	.uleb128 .L690-.LFB3304
	.uleb128 0
	.uleb128 .LEHB286-.LFB3304
	.uleb128 .LEHE286-.LEHB286
	.uleb128 .L697-.LFB3304
	.uleb128 0
	.uleb128 .LEHB287-.LFB3304
	.uleb128 .LEHE287-.LEHB287
	.uleb128 .L690-.LFB3304
	.uleb128 0
	.uleb128 .LEHB288-.LFB3304
	.uleb128 .LEHE288-.LEHB288
	.uleb128 .L698-.LFB3304
	.uleb128 0
	.uleb128 .LEHB289-.LFB3304
	.uleb128 .LEHE289-.LEHB289
	.uleb128 .L690-.LFB3304
	.uleb128 0
	.uleb128 .LEHB290-.LFB3304
	.uleb128 .LEHE290-.LEHB290
	.uleb128 .L699-.LFB3304
	.uleb128 0
	.uleb128 .LEHB291-.LFB3304
	.uleb128 .LEHE291-.LEHB291
	.uleb128 .L690-.LFB3304
	.uleb128 0
	.uleb128 .LEHB292-.LFB3304
	.uleb128 .LEHE292-.LEHB292
	.uleb128 .L700-.LFB3304
	.uleb128 0
	.uleb128 .LEHB293-.LFB3304
	.uleb128 .LEHE293-.LEHB293
	.uleb128 .L690-.LFB3304
	.uleb128 0
	.uleb128 .LEHB294-.LFB3304
	.uleb128 .LEHE294-.LEHB294
	.uleb128 .L701-.LFB3304
	.uleb128 0
	.uleb128 .LEHB295-.LFB3304
	.uleb128 .LEHE295-.LEHB295
	.uleb128 .L690-.LFB3304
	.uleb128 0
	.uleb128 .LEHB296-.LFB3304
	.uleb128 .LEHE296-.LEHB296
	.uleb128 .L702-.LFB3304
	.uleb128 0
	.uleb128 .LEHB297-.LFB3304
	.uleb128 .LEHE297-.LEHB297
	.uleb128 .L690-.LFB3304
	.uleb128 0
	.uleb128 .LEHB298-.LFB3304
	.uleb128 .LEHE298-.LEHB298
	.uleb128 .L703-.LFB3304
	.uleb128 0
	.uleb128 .LEHB299-.LFB3304
	.uleb128 .LEHE299-.LEHB299
	.uleb128 .L690-.LFB3304
	.uleb128 0
	.uleb128 .LEHB300-.LFB3304
	.uleb128 .LEHE300-.LEHB300
	.uleb128 .L704-.LFB3304
	.uleb128 0
	.uleb128 .LEHB301-.LFB3304
	.uleb128 .LEHE301-.LEHB301
	.uleb128 .L690-.LFB3304
	.uleb128 0
	.uleb128 .LEHB302-.LFB3304
	.uleb128 .LEHE302-.LEHB302
	.uleb128 0
	.uleb128 0
.LLSDACSE3304:
	.text
	.size	main, .-main
	.section	.text._ZN9__gnu_cxx6__stoaIddcIEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIddcIEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.weak	_ZN9__gnu_cxx6__stoaIddcIEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.type	_ZN9__gnu_cxx6__stoaIddcIEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, @function
_ZN9__gnu_cxx6__stoaIddcIEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_:
.LFB3312:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	call	__errno_location
	movl	$0, (%rax)
	leaq	-24(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	movsd	%xmm0, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.L712
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt24__throw_invalid_argumentPKc
.L712:
	call	__errno_location
	movl	(%rax), %eax
	cmpl	$34, %eax
	jne	.L713
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt20__throw_out_of_rangePKc
.L713:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L714
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
.L714:
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	movsd	-72(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3312:
	.size	_ZN9__gnu_cxx6__stoaIddcIEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, .-_ZN9__gnu_cxx6__stoaIddcIEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.weak	_ZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.set	_ZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,_ZN9__gnu_cxx6__stoaIddcIEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.section	.text._ZNSt6vectorIN2cl6DeviceESaIS1_EE6assignIPP13_cl_device_idvEEvT_S8_,"axG",@progbits,_ZNSt6vectorIN2cl6DeviceESaIS1_EE6assignIPP13_cl_device_idvEEvT_S8_,comdat
	.align 2
	.weak	_ZNSt6vectorIN2cl6DeviceESaIS1_EE6assignIPP13_cl_device_idvEEvT_S8_
	.type	_ZNSt6vectorIN2cl6DeviceESaIS1_EE6assignIPP13_cl_device_idvEEvT_S8_, @function
_ZNSt6vectorIN2cl6DeviceESaIS1_EE6assignIPP13_cl_device_idvEEvT_S8_:
.LFB3360:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movb	%r8b, (%rsp)
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EE18_M_assign_dispatchIPP13_cl_device_idEEvT_S8_St12__false_type
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3360:
	.size	_ZNSt6vectorIN2cl6DeviceESaIS1_EE6assignIPP13_cl_device_idvEEvT_S8_, .-_ZNSt6vectorIN2cl6DeviceESaIS1_EE6assignIPP13_cl_device_idvEEvT_S8_
	.section	.text._ZN2cl6detail7WrapperIP15_cl_platform_idED2Ev,"axG",@progbits,_ZN2cl6detail7WrapperIP15_cl_platform_idED5Ev,comdat
	.align 2
	.weak	_ZN2cl6detail7WrapperIP15_cl_platform_idED2Ev
	.type	_ZN2cl6detail7WrapperIP15_cl_platform_idED2Ev, @function
_ZN2cl6detail7WrapperIP15_cl_platform_idED2Ev:
.LFB3365:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L717
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK2cl6detail7WrapperIP15_cl_platform_idE7releaseEv
.L717:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3365:
	.size	_ZN2cl6detail7WrapperIP15_cl_platform_idED2Ev, .-_ZN2cl6detail7WrapperIP15_cl_platform_idED2Ev
	.weak	_ZN2cl6detail7WrapperIP15_cl_platform_idED1Ev
	.set	_ZN2cl6detail7WrapperIP15_cl_platform_idED1Ev,_ZN2cl6detail7WrapperIP15_cl_platform_idED2Ev
	.section	.text._ZN2cl6detail7WrapperIP15_cl_platform_idEC2ERKS3_,"axG",@progbits,_ZN2cl6detail7WrapperIP15_cl_platform_idEC5ERKS3_,comdat
	.align 2
	.weak	_ZN2cl6detail7WrapperIP15_cl_platform_idEC2ERKS3_
	.type	_ZN2cl6detail7WrapperIP15_cl_platform_idEC2ERKS3_, @function
_ZN2cl6detail7WrapperIP15_cl_platform_idEC2ERKS3_:
.LFB3371:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3371:
	.size	_ZN2cl6detail7WrapperIP15_cl_platform_idEC2ERKS3_, .-_ZN2cl6detail7WrapperIP15_cl_platform_idEC2ERKS3_
	.weak	_ZN2cl6detail7WrapperIP15_cl_platform_idEC1ERKS3_
	.set	_ZN2cl6detail7WrapperIP15_cl_platform_idEC1ERKS3_,_ZN2cl6detail7WrapperIP15_cl_platform_idEC2ERKS3_
	.section	.text._ZN2cl6detail7WrapperIP15_cl_platform_idEaSERKS3_,"axG",@progbits,_ZN2cl6detail7WrapperIP15_cl_platform_idEaSERKS3_,comdat
	.align 2
	.weak	_ZN2cl6detail7WrapperIP15_cl_platform_idEaSERKS3_
	.type	_ZN2cl6detail7WrapperIP15_cl_platform_idEaSERKS3_, @function
_ZN2cl6detail7WrapperIP15_cl_platform_idEaSERKS3_:
.LFB3374:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L721
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK2cl6detail7WrapperIP15_cl_platform_idE7releaseEv
	movl	$.LC3, %esi
	movl	%eax, %edi
	call	_ZN2cl6detailL10errHandlerEiPKc
.L721:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3374:
	.size	_ZN2cl6detail7WrapperIP15_cl_platform_idEaSERKS3_, .-_ZN2cl6detail7WrapperIP15_cl_platform_idEaSERKS3_
	.section	.text._ZNSt6vectorIN2cl8PlatformESaIS1_EE6assignIPP15_cl_platform_idvEEvT_S8_,"axG",@progbits,_ZNSt6vectorIN2cl8PlatformESaIS1_EE6assignIPP15_cl_platform_idvEEvT_S8_,comdat
	.align 2
	.weak	_ZNSt6vectorIN2cl8PlatformESaIS1_EE6assignIPP15_cl_platform_idvEEvT_S8_
	.type	_ZNSt6vectorIN2cl8PlatformESaIS1_EE6assignIPP15_cl_platform_idvEEvT_S8_, @function
_ZNSt6vectorIN2cl8PlatformESaIS1_EE6assignIPP15_cl_platform_idvEEvT_S8_:
.LFB3376:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movb	%r8b, (%rsp)
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2cl8PlatformESaIS1_EE18_M_assign_dispatchIPP15_cl_platform_idEEvT_S8_St12__false_type
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3376:
	.size	_ZNSt6vectorIN2cl8PlatformESaIS1_EE6assignIPP15_cl_platform_idvEEvT_S8_, .-_ZNSt6vectorIN2cl8PlatformESaIS1_EE6assignIPP15_cl_platform_idvEEvT_S8_
	.section	.text._ZN2cl6detail7WrapperIP11_cl_contextED2Ev,"axG",@progbits,_ZN2cl6detail7WrapperIP11_cl_contextED5Ev,comdat
	.align 2
	.weak	_ZN2cl6detail7WrapperIP11_cl_contextED2Ev
	.type	_ZN2cl6detail7WrapperIP11_cl_contextED2Ev, @function
_ZN2cl6detail7WrapperIP11_cl_contextED2Ev:
.LFB3378:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA3378
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L724
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK2cl6detail7WrapperIP11_cl_contextE7releaseEv
.L724:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3378:
	.section	.gcc_except_table
.LLSDA3378:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3378-.LLSDACSB3378
.LLSDACSB3378:
.LLSDACSE3378:
	.section	.text._ZN2cl6detail7WrapperIP11_cl_contextED2Ev,"axG",@progbits,_ZN2cl6detail7WrapperIP11_cl_contextED5Ev,comdat
	.size	_ZN2cl6detail7WrapperIP11_cl_contextED2Ev, .-_ZN2cl6detail7WrapperIP11_cl_contextED2Ev
	.weak	_ZN2cl6detail7WrapperIP11_cl_contextED1Ev
	.set	_ZN2cl6detail7WrapperIP11_cl_contextED1Ev,_ZN2cl6detail7WrapperIP11_cl_contextED2Ev
	.section	.text._ZN2cl6detail7WrapperIP11_cl_contextEC2Ev,"axG",@progbits,_ZN2cl6detail7WrapperIP11_cl_contextEC5Ev,comdat
	.align 2
	.weak	_ZN2cl6detail7WrapperIP11_cl_contextEC2Ev
	.type	_ZN2cl6detail7WrapperIP11_cl_contextEC2Ev, @function
_ZN2cl6detail7WrapperIP11_cl_contextEC2Ev:
.LFB3381:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3381:
	.size	_ZN2cl6detail7WrapperIP11_cl_contextEC2Ev, .-_ZN2cl6detail7WrapperIP11_cl_contextEC2Ev
	.weak	_ZN2cl6detail7WrapperIP11_cl_contextEC1Ev
	.set	_ZN2cl6detail7WrapperIP11_cl_contextEC1Ev,_ZN2cl6detail7WrapperIP11_cl_contextEC2Ev
	.section	.text._ZNKSt6vectorIN2cl6DeviceESaIS1_EE4sizeEv,"axG",@progbits,_ZNKSt6vectorIN2cl6DeviceESaIS1_EE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIN2cl6DeviceESaIS1_EE4sizeEv
	.type	_ZNKSt6vectorIN2cl6DeviceESaIS1_EE4sizeEv, @function
_ZNKSt6vectorIN2cl6DeviceESaIS1_EE4sizeEv:
.LFB3383:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$4, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3383:
	.size	_ZNKSt6vectorIN2cl6DeviceESaIS1_EE4sizeEv, .-_ZNKSt6vectorIN2cl6DeviceESaIS1_EE4sizeEv
	.section	.text._ZNKSt6vectorIN2cl6DeviceESaIS1_EEixEm,"axG",@progbits,_ZNKSt6vectorIN2cl6DeviceESaIS1_EEixEm,comdat
	.align 2
	.weak	_ZNKSt6vectorIN2cl6DeviceESaIS1_EEixEm
	.type	_ZNKSt6vectorIN2cl6DeviceESaIS1_EEixEm, @function
_ZNKSt6vectorIN2cl6DeviceESaIS1_EEixEm:
.LFB3384:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3384:
	.size	_ZNKSt6vectorIN2cl6DeviceESaIS1_EEixEm, .-_ZNKSt6vectorIN2cl6DeviceESaIS1_EEixEm
	.section	.text._ZNSt6vectorIN2cl8PlatformESaIS1_EEC2Ev,"axG",@progbits,_ZNSt6vectorIN2cl8PlatformESaIS1_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorIN2cl8PlatformESaIS1_EEC2Ev
	.type	_ZNSt6vectorIN2cl8PlatformESaIS1_EEC2Ev, @function
_ZNSt6vectorIN2cl8PlatformESaIS1_EEC2Ev:
.LFB3386:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EEC2Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3386:
	.size	_ZNSt6vectorIN2cl8PlatformESaIS1_EEC2Ev, .-_ZNSt6vectorIN2cl8PlatformESaIS1_EEC2Ev
	.weak	_ZNSt6vectorIN2cl8PlatformESaIS1_EEC1Ev
	.set	_ZNSt6vectorIN2cl8PlatformESaIS1_EEC1Ev,_ZNSt6vectorIN2cl8PlatformESaIS1_EEC2Ev
	.section	.text._ZNSt6vectorIN2cl8PlatformESaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorIN2cl8PlatformESaIS1_EED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorIN2cl8PlatformESaIS1_EED2Ev
	.type	_ZNSt6vectorIN2cl8PlatformESaIS1_EED2Ev, @function
_ZNSt6vectorIN2cl8PlatformESaIS1_EED2Ev:
.LFB3389:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA3389
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPN2cl8PlatformES1_EvT_S3_RSaIT0_E
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EED2Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3389:
	.section	.gcc_except_table
.LLSDA3389:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3389-.LLSDACSB3389
.LLSDACSB3389:
.LLSDACSE3389:
	.section	.text._ZNSt6vectorIN2cl8PlatformESaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorIN2cl8PlatformESaIS1_EED5Ev,comdat
	.size	_ZNSt6vectorIN2cl8PlatformESaIS1_EED2Ev, .-_ZNSt6vectorIN2cl8PlatformESaIS1_EED2Ev
	.weak	_ZNSt6vectorIN2cl8PlatformESaIS1_EED1Ev
	.set	_ZNSt6vectorIN2cl8PlatformESaIS1_EED1Ev,_ZNSt6vectorIN2cl8PlatformESaIS1_EED2Ev
	.section	.text._ZNKSt6vectorIN2cl8PlatformESaIS1_EE4sizeEv,"axG",@progbits,_ZNKSt6vectorIN2cl8PlatformESaIS1_EE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIN2cl8PlatformESaIS1_EE4sizeEv
	.type	_ZNKSt6vectorIN2cl8PlatformESaIS1_EE4sizeEv, @function
_ZNKSt6vectorIN2cl8PlatformESaIS1_EE4sizeEv:
.LFB3391:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3391:
	.size	_ZNKSt6vectorIN2cl8PlatformESaIS1_EE4sizeEv, .-_ZNKSt6vectorIN2cl8PlatformESaIS1_EE4sizeEv
	.section	.text._ZNSt6vectorIN2cl6DeviceESaIS1_EEC2Ev,"axG",@progbits,_ZNSt6vectorIN2cl6DeviceESaIS1_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorIN2cl6DeviceESaIS1_EEC2Ev
	.type	_ZNSt6vectorIN2cl6DeviceESaIS1_EEC2Ev, @function
_ZNSt6vectorIN2cl6DeviceESaIS1_EEC2Ev:
.LFB3393:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EEC2Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3393:
	.size	_ZNSt6vectorIN2cl6DeviceESaIS1_EEC2Ev, .-_ZNSt6vectorIN2cl6DeviceESaIS1_EEC2Ev
	.weak	_ZNSt6vectorIN2cl6DeviceESaIS1_EEC1Ev
	.set	_ZNSt6vectorIN2cl6DeviceESaIS1_EEC1Ev,_ZNSt6vectorIN2cl6DeviceESaIS1_EEC2Ev
	.section	.text._ZNSt6vectorIN2cl6DeviceESaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorIN2cl6DeviceESaIS1_EED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorIN2cl6DeviceESaIS1_EED2Ev
	.type	_ZNSt6vectorIN2cl6DeviceESaIS1_EED2Ev, @function
_ZNSt6vectorIN2cl6DeviceESaIS1_EED2Ev:
.LFB3396:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA3396
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPN2cl6DeviceES1_EvT_S3_RSaIT0_E
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EED2Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3396:
	.section	.gcc_except_table
.LLSDA3396:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3396-.LLSDACSB3396
.LLSDACSB3396:
.LLSDACSE3396:
	.section	.text._ZNSt6vectorIN2cl6DeviceESaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorIN2cl6DeviceESaIS1_EED5Ev,comdat
	.size	_ZNSt6vectorIN2cl6DeviceESaIS1_EED2Ev, .-_ZNSt6vectorIN2cl6DeviceESaIS1_EED2Ev
	.weak	_ZNSt6vectorIN2cl6DeviceESaIS1_EED1Ev
	.set	_ZNSt6vectorIN2cl6DeviceESaIS1_EED1Ev,_ZNSt6vectorIN2cl6DeviceESaIS1_EED2Ev
	.section	.text._ZNSt6vectorIN2cl8PlatformESaIS1_EEixEm,"axG",@progbits,_ZNSt6vectorIN2cl8PlatformESaIS1_EEixEm,comdat
	.align 2
	.weak	_ZNSt6vectorIN2cl8PlatformESaIS1_EEixEm
	.type	_ZNSt6vectorIN2cl8PlatformESaIS1_EEixEm, @function
_ZNSt6vectorIN2cl8PlatformESaIS1_EEixEm:
.LFB3398:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3398:
	.size	_ZNSt6vectorIN2cl8PlatformESaIS1_EEixEm, .-_ZNSt6vectorIN2cl8PlatformESaIS1_EEixEm
	.section	.text._ZN2cl6detail7WrapperIP11_cl_contextEC2ERKS4_,"axG",@progbits,_ZN2cl6detail7WrapperIP11_cl_contextEC5ERKS4_,comdat
	.align 2
	.weak	_ZN2cl6detail7WrapperIP11_cl_contextEC2ERKS4_
	.type	_ZN2cl6detail7WrapperIP11_cl_contextEC2ERKS4_, @function
_ZN2cl6detail7WrapperIP11_cl_contextEC2ERKS4_:
.LFB3401:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L741
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK2cl6detail7WrapperIP11_cl_contextE6retainEv
	movl	$.LC2, %esi
	movl	%eax, %edi
	call	_ZN2cl6detailL10errHandlerEiPKc
.L741:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3401:
	.size	_ZN2cl6detail7WrapperIP11_cl_contextEC2ERKS4_, .-_ZN2cl6detail7WrapperIP11_cl_contextEC2ERKS4_
	.weak	_ZN2cl6detail7WrapperIP11_cl_contextEC1ERKS4_
	.set	_ZN2cl6detail7WrapperIP11_cl_contextEC1ERKS4_,_ZN2cl6detail7WrapperIP11_cl_contextEC2ERKS4_
	.section	.text._ZNSt6vectorIN2cl6DeviceESaIS1_EEixEm,"axG",@progbits,_ZNSt6vectorIN2cl6DeviceESaIS1_EEixEm,comdat
	.align 2
	.weak	_ZNSt6vectorIN2cl6DeviceESaIS1_EEixEm
	.type	_ZNSt6vectorIN2cl6DeviceESaIS1_EEixEm, @function
_ZNSt6vectorIN2cl6DeviceESaIS1_EEixEm:
.LFB3410:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3410:
	.size	_ZNSt6vectorIN2cl6DeviceESaIS1_EEixEm, .-_ZNSt6vectorIN2cl6DeviceESaIS1_EEixEm
	.section	.text._ZN2cl6detail7WrapperIP9_cl_eventEaSERKS3_,"axG",@progbits,_ZN2cl6detail7WrapperIP9_cl_eventEaSERKS3_,comdat
	.align 2
	.weak	_ZN2cl6detail7WrapperIP9_cl_eventEaSERKS3_
	.type	_ZN2cl6detail7WrapperIP9_cl_eventEaSERKS3_, @function
_ZN2cl6detail7WrapperIP9_cl_eventEaSERKS3_:
.LFB3424:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L746
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK2cl6detail7WrapperIP9_cl_eventE7releaseEv
	movl	$.LC3, %esi
	movl	%eax, %edi
	call	_ZN2cl6detailL10errHandlerEiPKc
.L746:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3424:
	.size	_ZN2cl6detail7WrapperIP9_cl_eventEaSERKS3_, .-_ZN2cl6detail7WrapperIP9_cl_eventEaSERKS3_
	.section	.text._ZNKSt6vectorIN2cl5EventESaIS1_EE4sizeEv,"axG",@progbits,_ZNKSt6vectorIN2cl5EventESaIS1_EE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIN2cl5EventESaIS1_EE4sizeEv
	.type	_ZNKSt6vectorIN2cl5EventESaIS1_EE4sizeEv, @function
_ZNKSt6vectorIN2cl5EventESaIS1_EE4sizeEv:
.LFB3425:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3425:
	.size	_ZNKSt6vectorIN2cl5EventESaIS1_EE4sizeEv, .-_ZNKSt6vectorIN2cl5EventESaIS1_EE4sizeEv
	.section	.text._ZNKSt6vectorIN2cl5EventESaIS1_EE5frontEv,"axG",@progbits,_ZNKSt6vectorIN2cl5EventESaIS1_EE5frontEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIN2cl5EventESaIS1_EE5frontEv
	.type	_ZNKSt6vectorIN2cl5EventESaIS1_EE5frontEv, @function
_ZNKSt6vectorIN2cl5EventESaIS1_EE5frontEv:
.LFB3426:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIN2cl5EventESaIS1_EE5beginEv
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKN2cl5EventESt6vectorIS2_SaIS2_EEEdeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3426:
	.size	_ZNKSt6vectorIN2cl5EventESaIS1_EE5frontEv, .-_ZNKSt6vectorIN2cl5EventESaIS1_EE5frontEv
	.section	.text._ZNK2cl6detail7WrapperIP11_cl_contextEclEv,"axG",@progbits,_ZNK2cl6detail7WrapperIP11_cl_contextEclEv,comdat
	.align 2
	.weak	_ZNK2cl6detail7WrapperIP11_cl_contextEclEv
	.type	_ZNK2cl6detail7WrapperIP11_cl_contextEclEv, @function
_ZNK2cl6detail7WrapperIP11_cl_contextEclEv:
.LFB3427:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3427:
	.size	_ZNK2cl6detail7WrapperIP11_cl_contextEclEv, .-_ZNK2cl6detail7WrapperIP11_cl_contextEclEv
	.section	.text._ZN2cl6detail7WrapperIP7_cl_memED2Ev,"axG",@progbits,_ZN2cl6detail7WrapperIP7_cl_memED5Ev,comdat
	.align 2
	.weak	_ZN2cl6detail7WrapperIP7_cl_memED2Ev
	.type	_ZN2cl6detail7WrapperIP7_cl_memED2Ev, @function
_ZN2cl6detail7WrapperIP7_cl_memED2Ev:
.LFB3429:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA3429
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L754
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK2cl6detail7WrapperIP7_cl_memE7releaseEv
.L754:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3429:
	.section	.gcc_except_table
.LLSDA3429:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3429-.LLSDACSB3429
.LLSDACSB3429:
.LLSDACSE3429:
	.section	.text._ZN2cl6detail7WrapperIP7_cl_memED2Ev,"axG",@progbits,_ZN2cl6detail7WrapperIP7_cl_memED5Ev,comdat
	.size	_ZN2cl6detail7WrapperIP7_cl_memED2Ev, .-_ZN2cl6detail7WrapperIP7_cl_memED2Ev
	.weak	_ZN2cl6detail7WrapperIP7_cl_memED1Ev
	.set	_ZN2cl6detail7WrapperIP7_cl_memED1Ev,_ZN2cl6detail7WrapperIP7_cl_memED2Ev
	.section	.text._ZN2cl6detail7WrapperIP7_cl_memEC2Ev,"axG",@progbits,_ZN2cl6detail7WrapperIP7_cl_memEC5Ev,comdat
	.align 2
	.weak	_ZN2cl6detail7WrapperIP7_cl_memEC2Ev
	.type	_ZN2cl6detail7WrapperIP7_cl_memEC2Ev, @function
_ZN2cl6detail7WrapperIP7_cl_memEC2Ev:
.LFB3432:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3432:
	.size	_ZN2cl6detail7WrapperIP7_cl_memEC2Ev, .-_ZN2cl6detail7WrapperIP7_cl_memEC2Ev
	.weak	_ZN2cl6detail7WrapperIP7_cl_memEC1Ev
	.set	_ZN2cl6detail7WrapperIP7_cl_memEC1Ev,_ZN2cl6detail7WrapperIP7_cl_memEC2Ev
	.section	.text._ZN2cl6detail7WrapperIP7_cl_memEC2ERKS4_,"axG",@progbits,_ZN2cl6detail7WrapperIP7_cl_memEC5ERKS4_,comdat
	.align 2
	.weak	_ZN2cl6detail7WrapperIP7_cl_memEC2ERKS4_
	.type	_ZN2cl6detail7WrapperIP7_cl_memEC2ERKS4_, @function
_ZN2cl6detail7WrapperIP7_cl_memEC2ERKS4_:
.LFB3435:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L757
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK2cl6detail7WrapperIP7_cl_memE6retainEv
	movl	$.LC2, %esi
	movl	%eax, %edi
	call	_ZN2cl6detailL10errHandlerEiPKc
.L757:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3435:
	.size	_ZN2cl6detail7WrapperIP7_cl_memEC2ERKS4_, .-_ZN2cl6detail7WrapperIP7_cl_memEC2ERKS4_
	.weak	_ZN2cl6detail7WrapperIP7_cl_memEC1ERKS4_
	.set	_ZN2cl6detail7WrapperIP7_cl_memEC1ERKS4_,_ZN2cl6detail7WrapperIP7_cl_memEC2ERKS4_
	.section	.text._ZNK2cl6detail7WrapperIP7_cl_memEclEv,"axG",@progbits,_ZNK2cl6detail7WrapperIP7_cl_memEclEv,comdat
	.align 2
	.weak	_ZNK2cl6detail7WrapperIP7_cl_memEclEv
	.type	_ZNK2cl6detail7WrapperIP7_cl_memEclEv, @function
_ZNK2cl6detail7WrapperIP7_cl_memEclEv:
.LFB3443:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3443:
	.size	_ZNK2cl6detail7WrapperIP7_cl_memEclEv, .-_ZNK2cl6detail7WrapperIP7_cl_memEclEv
	.section	.text._ZN2cl6size_tILi3EEC2Ev,"axG",@progbits,_ZN2cl6size_tILi3EEC5Ev,comdat
	.align 2
	.weak	_ZN2cl6size_tILi3EEC2Ev
	.type	_ZN2cl6size_tILi3EEC2Ev, @function
_ZN2cl6size_tILi3EEC2Ev:
.LFB3459:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L762
.L763:
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movq	$0, (%rax,%rdx,8)
	addl	$1, -4(%rbp)
.L762:
	cmpl	$2, -4(%rbp)
	jle	.L763
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3459:
	.size	_ZN2cl6size_tILi3EEC2Ev, .-_ZN2cl6size_tILi3EEC2Ev
	.weak	_ZN2cl6size_tILi3EEC1Ev
	.set	_ZN2cl6size_tILi3EEC1Ev,_ZN2cl6size_tILi3EEC2Ev
	.section	.text._ZN2cl6size_tILi3EEixEi,"axG",@progbits,_ZN2cl6size_tILi3EEixEi,comdat
	.align 2
	.weak	_ZN2cl6size_tILi3EEixEi
	.type	_ZN2cl6size_tILi3EEixEi, @function
_ZN2cl6size_tILi3EEixEi:
.LFB3461:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3461:
	.size	_ZN2cl6size_tILi3EEixEi, .-_ZN2cl6size_tILi3EEixEi
	.section	.text._ZNK2cl6size_tILi3EEcvPKmEv,"axG",@progbits,_ZNK2cl6size_tILi3EEcvPKmEv,comdat
	.align 2
	.weak	_ZNK2cl6size_tILi3EEcvPKmEv
	.type	_ZNK2cl6size_tILi3EEcvPKmEv, @function
_ZNK2cl6size_tILi3EEcvPKmEv:
.LFB3462:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3462:
	.size	_ZNK2cl6size_tILi3EEcvPKmEv, .-_ZNK2cl6size_tILi3EEcvPKmEv
	.section	.text._ZN2cl6detail7WrapperIP10_cl_kernelED2Ev,"axG",@progbits,_ZN2cl6detail7WrapperIP10_cl_kernelED5Ev,comdat
	.align 2
	.weak	_ZN2cl6detail7WrapperIP10_cl_kernelED2Ev
	.type	_ZN2cl6detail7WrapperIP10_cl_kernelED2Ev, @function
_ZN2cl6detail7WrapperIP10_cl_kernelED2Ev:
.LFB3464:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA3464
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L768
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK2cl6detail7WrapperIP10_cl_kernelE7releaseEv
.L768:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3464:
	.section	.gcc_except_table
.LLSDA3464:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3464-.LLSDACSB3464
.LLSDACSB3464:
.LLSDACSE3464:
	.section	.text._ZN2cl6detail7WrapperIP10_cl_kernelED2Ev,"axG",@progbits,_ZN2cl6detail7WrapperIP10_cl_kernelED5Ev,comdat
	.size	_ZN2cl6detail7WrapperIP10_cl_kernelED2Ev, .-_ZN2cl6detail7WrapperIP10_cl_kernelED2Ev
	.weak	_ZN2cl6detail7WrapperIP10_cl_kernelED1Ev
	.set	_ZN2cl6detail7WrapperIP10_cl_kernelED1Ev,_ZN2cl6detail7WrapperIP10_cl_kernelED2Ev
	.section	.text._ZN2cl6detail7WrapperIP10_cl_kernelEC2Ev,"axG",@progbits,_ZN2cl6detail7WrapperIP10_cl_kernelEC5Ev,comdat
	.align 2
	.weak	_ZN2cl6detail7WrapperIP10_cl_kernelEC2Ev
	.type	_ZN2cl6detail7WrapperIP10_cl_kernelEC2Ev, @function
_ZN2cl6detail7WrapperIP10_cl_kernelEC2Ev:
.LFB3467:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3467:
	.size	_ZN2cl6detail7WrapperIP10_cl_kernelEC2Ev, .-_ZN2cl6detail7WrapperIP10_cl_kernelEC2Ev
	.weak	_ZN2cl6detail7WrapperIP10_cl_kernelEC1Ev
	.set	_ZN2cl6detail7WrapperIP10_cl_kernelEC1Ev,_ZN2cl6detail7WrapperIP10_cl_kernelEC2Ev
	.section	.text._ZN2cl6detail7WrapperIP11_cl_programEC2Ev,"axG",@progbits,_ZN2cl6detail7WrapperIP11_cl_programEC5Ev,comdat
	.align 2
	.weak	_ZN2cl6detail7WrapperIP11_cl_programEC2Ev
	.type	_ZN2cl6detail7WrapperIP11_cl_programEC2Ev, @function
_ZN2cl6detail7WrapperIP11_cl_programEC2Ev:
.LFB3478:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3478:
	.size	_ZN2cl6detail7WrapperIP11_cl_programEC2Ev, .-_ZN2cl6detail7WrapperIP11_cl_programEC2Ev
	.weak	_ZN2cl6detail7WrapperIP11_cl_programEC1Ev
	.set	_ZN2cl6detail7WrapperIP11_cl_programEC1Ev,_ZN2cl6detail7WrapperIP11_cl_programEC2Ev
	.section	.text._ZN2cl6detail7WrapperIP11_cl_programED2Ev,"axG",@progbits,_ZN2cl6detail7WrapperIP11_cl_programED5Ev,comdat
	.align 2
	.weak	_ZN2cl6detail7WrapperIP11_cl_programED2Ev
	.type	_ZN2cl6detail7WrapperIP11_cl_programED2Ev, @function
_ZN2cl6detail7WrapperIP11_cl_programED2Ev:
.LFB3481:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA3481
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L772
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK2cl6detail7WrapperIP11_cl_programE7releaseEv
.L772:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3481:
	.section	.gcc_except_table
.LLSDA3481:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3481-.LLSDACSB3481
.LLSDACSB3481:
.LLSDACSE3481:
	.section	.text._ZN2cl6detail7WrapperIP11_cl_programED2Ev,"axG",@progbits,_ZN2cl6detail7WrapperIP11_cl_programED5Ev,comdat
	.size	_ZN2cl6detail7WrapperIP11_cl_programED2Ev, .-_ZN2cl6detail7WrapperIP11_cl_programED2Ev
	.weak	_ZN2cl6detail7WrapperIP11_cl_programED1Ev
	.set	_ZN2cl6detail7WrapperIP11_cl_programED1Ev,_ZN2cl6detail7WrapperIP11_cl_programED2Ev
	.section	.text._ZNKSt6vectorISt4pairIPKcmESaIS3_EE4sizeEv,"axG",@progbits,_ZNKSt6vectorISt4pairIPKcmESaIS3_EE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorISt4pairIPKcmESaIS3_EE4sizeEv
	.type	_ZNKSt6vectorISt4pairIPKcmESaIS3_EE4sizeEv, @function
_ZNKSt6vectorISt4pairIPKcmESaIS3_EE4sizeEv:
.LFB3484:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$4, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3484:
	.size	_ZNKSt6vectorISt4pairIPKcmESaIS3_EE4sizeEv, .-_ZNKSt6vectorISt4pairIPKcmESaIS3_EE4sizeEv
	.section	.text._ZNKSt6vectorISt4pairIPKcmESaIS3_EEixEm,"axG",@progbits,_ZNKSt6vectorISt4pairIPKcmESaIS3_EEixEm,comdat
	.align 2
	.weak	_ZNKSt6vectorISt4pairIPKcmESaIS3_EEixEm
	.type	_ZNKSt6vectorISt4pairIPKcmESaIS3_EEixEm, @function
_ZNKSt6vectorISt4pairIPKcmESaIS3_EEixEm:
.LFB3485:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3485:
	.size	_ZNKSt6vectorISt4pairIPKcmESaIS3_EEixEm, .-_ZNKSt6vectorISt4pairIPKcmESaIS3_EEixEm
	.section	.text._ZNK2cl6detail7WrapperIP11_cl_programEclEv,"axG",@progbits,_ZNK2cl6detail7WrapperIP11_cl_programEclEv,comdat
	.align 2
	.weak	_ZNK2cl6detail7WrapperIP11_cl_programEclEv
	.type	_ZNK2cl6detail7WrapperIP11_cl_programEclEv, @function
_ZNK2cl6detail7WrapperIP11_cl_programEclEv:
.LFB3529:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3529:
	.size	_ZNK2cl6detail7WrapperIP11_cl_programEclEv, .-_ZNK2cl6detail7WrapperIP11_cl_programEclEv
	.section	.text._ZN2cl6detail7WrapperIP17_cl_command_queueEC2Ev,"axG",@progbits,_ZN2cl6detail7WrapperIP17_cl_command_queueEC5Ev,comdat
	.align 2
	.weak	_ZN2cl6detail7WrapperIP17_cl_command_queueEC2Ev
	.type	_ZN2cl6detail7WrapperIP17_cl_command_queueEC2Ev, @function
_ZN2cl6detail7WrapperIP17_cl_command_queueEC2Ev:
.LFB3531:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3531:
	.size	_ZN2cl6detail7WrapperIP17_cl_command_queueEC2Ev, .-_ZN2cl6detail7WrapperIP17_cl_command_queueEC2Ev
	.weak	_ZN2cl6detail7WrapperIP17_cl_command_queueEC1Ev
	.set	_ZN2cl6detail7WrapperIP17_cl_command_queueEC1Ev,_ZN2cl6detail7WrapperIP17_cl_command_queueEC2Ev
	.section	.text._ZN2cl6detail7WrapperIP17_cl_command_queueED2Ev,"axG",@progbits,_ZN2cl6detail7WrapperIP17_cl_command_queueED5Ev,comdat
	.align 2
	.weak	_ZN2cl6detail7WrapperIP17_cl_command_queueED2Ev
	.type	_ZN2cl6detail7WrapperIP17_cl_command_queueED2Ev, @function
_ZN2cl6detail7WrapperIP17_cl_command_queueED2Ev:
.LFB3534:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA3534
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L781
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK2cl6detail7WrapperIP17_cl_command_queueE7releaseEv
.L781:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3534:
	.section	.gcc_except_table
.LLSDA3534:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3534-.LLSDACSB3534
.LLSDACSB3534:
.LLSDACSE3534:
	.section	.text._ZN2cl6detail7WrapperIP17_cl_command_queueED2Ev,"axG",@progbits,_ZN2cl6detail7WrapperIP17_cl_command_queueED5Ev,comdat
	.size	_ZN2cl6detail7WrapperIP17_cl_command_queueED2Ev, .-_ZN2cl6detail7WrapperIP17_cl_command_queueED2Ev
	.weak	_ZN2cl6detail7WrapperIP17_cl_command_queueED1Ev
	.set	_ZN2cl6detail7WrapperIP17_cl_command_queueED1Ev,_ZN2cl6detail7WrapperIP17_cl_command_queueED2Ev
	.section	.text._ZNK2cl6detail7WrapperIP10_cl_kernelEclEv,"axG",@progbits,_ZNK2cl6detail7WrapperIP10_cl_kernelEclEv,comdat
	.align 2
	.weak	_ZNK2cl6detail7WrapperIP10_cl_kernelEclEv
	.type	_ZNK2cl6detail7WrapperIP10_cl_kernelEclEv, @function
_ZNK2cl6detail7WrapperIP10_cl_kernelEclEv:
.LFB3547:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3547:
	.size	_ZNK2cl6detail7WrapperIP10_cl_kernelEclEv, .-_ZNK2cl6detail7WrapperIP10_cl_kernelEclEv
	.section	.text._ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC2ERSi,"axG",@progbits,_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC5ERSi,comdat
	.align 2
	.weak	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC2ERSi
	.type	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC2ERSi, @function
_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC2ERSi:
.LFB3578:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA3578
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8iteratorISt18input_iterator_tagclPccEC2Ev
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	subq	$24, %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	call	_ZNSt11char_traitsIcE3eofEv
	movq	-8(%rbp), %rdx
	movl	%eax, 8(%rdx)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3578:
	.section	.gcc_except_table
.LLSDA3578:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3578-.LLSDACSB3578
.LLSDACSB3578:
.LLSDACSE3578:
	.section	.text._ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC2ERSi,"axG",@progbits,_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC5ERSi,comdat
	.size	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC2ERSi, .-_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC2ERSi
	.weak	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC1ERSi
	.set	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC1ERSi,_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEC2ERSi
	.section	.text._ZNSsC2ISt19istreambuf_iteratorIcSt11char_traitsIcEEEET_S4_RKSaIcE,"axG",@progbits,_ZNSsC5ISt19istreambuf_iteratorIcSt11char_traitsIcEEEET_S4_RKSaIcE,comdat
	.align 2
	.weak	_ZNSsC2ISt19istreambuf_iteratorIcSt11char_traitsIcEEEET_S4_RKSaIcE
	.type	_ZNSsC2ISt19istreambuf_iteratorIcSt11char_traitsIcEEEET_S4_RKSaIcE, @function
_ZNSsC2ISt19istreambuf_iteratorIcSt11char_traitsIcEEEET_S4_RKSaIcE:
.LFB3581:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, %rax
	movq	%rdx, %rsi
	movq	%rsi, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, %rax
	movq	%r8, %rcx
	movq	%rcx, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%r9, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	_ZNSs12_S_constructISt19istreambuf_iteratorIcSt11char_traitsIcEEEEPcT_S5_RKSaIcE
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSs12_Alloc_hiderC1EPcRKSaIcE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3581:
	.size	_ZNSsC2ISt19istreambuf_iteratorIcSt11char_traitsIcEEEET_S4_RKSaIcE, .-_ZNSsC2ISt19istreambuf_iteratorIcSt11char_traitsIcEEEET_S4_RKSaIcE
	.weak	_ZNSsC1ISt19istreambuf_iteratorIcSt11char_traitsIcEEEET_S4_RKSaIcE
	.set	_ZNSsC1ISt19istreambuf_iteratorIcSt11char_traitsIcEEEET_S4_RKSaIcE,_ZNSsC2ISt19istreambuf_iteratorIcSt11char_traitsIcEEEET_S4_RKSaIcE
	.section	.text._ZNSaISt4pairIPKcmEEC2Ev,"axG",@progbits,_ZNSaISt4pairIPKcmEEC5Ev,comdat
	.align 2
	.weak	_ZNSaISt4pairIPKcmEEC2Ev
	.type	_ZNSaISt4pairIPKcmEEC2Ev, @function
_ZNSaISt4pairIPKcmEEC2Ev:
.LFB3584:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEEC2Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3584:
	.size	_ZNSaISt4pairIPKcmEEC2Ev, .-_ZNSaISt4pairIPKcmEEC2Ev
	.weak	_ZNSaISt4pairIPKcmEEC1Ev
	.set	_ZNSaISt4pairIPKcmEEC1Ev,_ZNSaISt4pairIPKcmEEC2Ev
	.section	.text._ZNSaISt4pairIPKcmEED2Ev,"axG",@progbits,_ZNSaISt4pairIPKcmEED5Ev,comdat
	.align 2
	.weak	_ZNSaISt4pairIPKcmEED2Ev
	.type	_ZNSaISt4pairIPKcmEED2Ev, @function
_ZNSaISt4pairIPKcmEED2Ev:
.LFB3587:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEED2Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3587:
	.size	_ZNSaISt4pairIPKcmEED2Ev, .-_ZNSaISt4pairIPKcmEED2Ev
	.weak	_ZNSaISt4pairIPKcmEED1Ev
	.set	_ZNSaISt4pairIPKcmEED1Ev,_ZNSaISt4pairIPKcmEED2Ev
	.section	.text._ZNSt6vectorISt4pairIPKcmESaIS3_EEC2EmRKS3_RKS4_,"axG",@progbits,_ZNSt6vectorISt4pairIPKcmESaIS3_EEC5EmRKS3_RKS4_,comdat
	.align 2
	.weak	_ZNSt6vectorISt4pairIPKcmESaIS3_EEC2EmRKS3_RKS4_
	.type	_ZNSt6vectorISt4pairIPKcmESaIS3_EEC2EmRKS3_RKS4_, @function
_ZNSt6vectorISt4pairIPKcmESaIS3_EEC2EmRKS3_RKS4_:
.LFB3590:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA3590
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB303:
	call	_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EEC2EmRKS4_
.LEHE303:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB304:
	call	_ZNSt6vectorISt4pairIPKcmESaIS3_EE18_M_fill_initializeEmRKS3_
.LEHE304:
	jmp	.L793
.L792:
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EED2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB305:
	call	_Unwind_Resume
.LEHE305:
.L793:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3590:
	.section	.gcc_except_table
.LLSDA3590:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3590-.LLSDACSB3590
.LLSDACSB3590:
	.uleb128 .LEHB303-.LFB3590
	.uleb128 .LEHE303-.LEHB303
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB304-.LFB3590
	.uleb128 .LEHE304-.LEHB304
	.uleb128 .L792-.LFB3590
	.uleb128 0
	.uleb128 .LEHB305-.LFB3590
	.uleb128 .LEHE305-.LEHB305
	.uleb128 0
	.uleb128 0
.LLSDACSE3590:
	.section	.text._ZNSt6vectorISt4pairIPKcmESaIS3_EEC2EmRKS3_RKS4_,"axG",@progbits,_ZNSt6vectorISt4pairIPKcmESaIS3_EEC5EmRKS3_RKS4_,comdat
	.size	_ZNSt6vectorISt4pairIPKcmESaIS3_EEC2EmRKS3_RKS4_, .-_ZNSt6vectorISt4pairIPKcmESaIS3_EEC2EmRKS3_RKS4_
	.weak	_ZNSt6vectorISt4pairIPKcmESaIS3_EEC1EmRKS3_RKS4_
	.set	_ZNSt6vectorISt4pairIPKcmESaIS3_EEC1EmRKS3_RKS4_,_ZNSt6vectorISt4pairIPKcmESaIS3_EEC2EmRKS3_RKS4_
	.section	.text._ZNSt6vectorISt4pairIPKcmESaIS3_EED2Ev,"axG",@progbits,_ZNSt6vectorISt4pairIPKcmESaIS3_EED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorISt4pairIPKcmESaIS3_EED2Ev
	.type	_ZNSt6vectorISt4pairIPKcmESaIS3_EED2Ev, @function
_ZNSt6vectorISt4pairIPKcmESaIS3_EED2Ev:
.LFB3593:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA3593
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPSt4pairIPKcmES3_EvT_S5_RSaIT0_E
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EED2Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3593:
	.section	.gcc_except_table
.LLSDA3593:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3593-.LLSDACSB3593
.LLSDACSB3593:
.LLSDACSE3593:
	.section	.text._ZNSt6vectorISt4pairIPKcmESaIS3_EED2Ev,"axG",@progbits,_ZNSt6vectorISt4pairIPKcmESaIS3_EED5Ev,comdat
	.size	_ZNSt6vectorISt4pairIPKcmESaIS3_EED2Ev, .-_ZNSt6vectorISt4pairIPKcmESaIS3_EED2Ev
	.weak	_ZNSt6vectorISt4pairIPKcmESaIS3_EED1Ev
	.set	_ZNSt6vectorISt4pairIPKcmESaIS3_EED1Ev,_ZNSt6vectorISt4pairIPKcmESaIS3_EED2Ev
	.section	.text._ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_,"axG",@progbits,_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_,comdat
	.weak	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_
	.type	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_, @function
_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_:
.LFB3598:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA3598
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB306:
	call	_ZNSsC1ERKSs
.LEHE306:
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB307:
	call	_ZNSs6appendEPKc
.LEHE307:
	jmp	.L800
.L799:
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB308:
	call	_Unwind_Resume
.LEHE308:
.L800:
	movq	-24(%rbp), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3598:
	.section	.gcc_except_table
.LLSDA3598:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3598-.LLSDACSB3598
.LLSDACSB3598:
	.uleb128 .LEHB306-.LFB3598
	.uleb128 .LEHE306-.LEHB306
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB307-.LFB3598
	.uleb128 .LEHE307-.LEHB307
	.uleb128 .L799-.LFB3598
	.uleb128 0
	.uleb128 .LEHB308-.LFB3598
	.uleb128 .LEHE308-.LEHB308
	.uleb128 0
	.uleb128 0
.LLSDACSE3598:
	.section	.text._ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_,"axG",@progbits,_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_,comdat
	.size	_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_, .-_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_
	.section	.text._ZNK2cl6Device7getInfoILi4139EEENS_6detail12param_traitsINS2_14cl_device_infoEXT_EE10param_typeEPi,"axG",@progbits,_ZNK2cl6Device7getInfoILi4139EEENS_6detail12param_traitsINS2_14cl_device_infoEXT_EE10param_typeEPi,comdat
	.align 2
	.weak	_ZNK2cl6Device7getInfoILi4139EEENS_6detail12param_traitsINS2_14cl_device_infoEXT_EE10param_typeEPi
	.type	_ZNK2cl6Device7getInfoILi4139EEENS_6detail12param_traitsINS2_14cl_device_infoEXT_EE10param_typeEPi, @function
_ZNK2cl6Device7getInfoILi4139EEENS_6detail12param_traitsINS2_14cl_device_infoEXT_EE10param_typeEPi:
.LFB3603:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA3603
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
.LEHB309:
	call	_ZNSsC1Ev
.LEHE309:
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	$4139, %esi
	movq	%rax, %rdi
.LEHB310:
	call	_ZNK2cl6Device7getInfoISsEEijPT_
.LEHE310:
	movl	%eax, -20(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L802
	movq	-56(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
.L802:
	jmp	.L806
.L805:
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSsD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB311:
	call	_Unwind_Resume
.LEHE311:
.L806:
	movq	-40(%rbp), %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3603:
	.section	.gcc_except_table
.LLSDA3603:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3603-.LLSDACSB3603
.LLSDACSB3603:
	.uleb128 .LEHB309-.LFB3603
	.uleb128 .LEHE309-.LEHB309
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB310-.LFB3603
	.uleb128 .LEHE310-.LEHB310
	.uleb128 .L805-.LFB3603
	.uleb128 0
	.uleb128 .LEHB311-.LFB3603
	.uleb128 .LEHE311-.LEHB311
	.uleb128 0
	.uleb128 0
.LLSDACSE3603:
	.section	.text._ZNK2cl6Device7getInfoILi4139EEENS_6detail12param_traitsINS2_14cl_device_infoEXT_EE10param_typeEPi,"axG",@progbits,_ZNK2cl6Device7getInfoILi4139EEENS_6detail12param_traitsINS2_14cl_device_infoEXT_EE10param_typeEPi,comdat
	.size	_ZNK2cl6Device7getInfoILi4139EEENS_6detail12param_traitsINS2_14cl_device_infoEXT_EE10param_typeEPi, .-_ZNK2cl6Device7getInfoILi4139EEENS_6detail12param_traitsINS2_14cl_device_infoEXT_EE10param_typeEPi
	.section	.text._ZNSaIN2cl6DeviceEEC2Ev,"axG",@progbits,_ZNSaIN2cl6DeviceEEC5Ev,comdat
	.align 2
	.weak	_ZNSaIN2cl6DeviceEEC2Ev
	.type	_ZNSaIN2cl6DeviceEEC2Ev, @function
_ZNSaIN2cl6DeviceEEC2Ev:
.LFB3609:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEEC2Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3609:
	.size	_ZNSaIN2cl6DeviceEEC2Ev, .-_ZNSaIN2cl6DeviceEEC2Ev
	.weak	_ZNSaIN2cl6DeviceEEC1Ev
	.set	_ZNSaIN2cl6DeviceEEC1Ev,_ZNSaIN2cl6DeviceEEC2Ev
	.section	.text._ZNSaIN2cl6DeviceEED2Ev,"axG",@progbits,_ZNSaIN2cl6DeviceEED5Ev,comdat
	.align 2
	.weak	_ZNSaIN2cl6DeviceEED2Ev
	.type	_ZNSaIN2cl6DeviceEED2Ev, @function
_ZNSaIN2cl6DeviceEED2Ev:
.LFB3612:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEED2Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3612:
	.size	_ZNSaIN2cl6DeviceEED2Ev, .-_ZNSaIN2cl6DeviceEED2Ev
	.weak	_ZNSaIN2cl6DeviceEED1Ev
	.set	_ZNSaIN2cl6DeviceEED1Ev,_ZNSaIN2cl6DeviceEED2Ev
	.section	.text._ZNKSt16initializer_listIN2cl6DeviceEE5beginEv,"axG",@progbits,_ZNKSt16initializer_listIN2cl6DeviceEE5beginEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIN2cl6DeviceEE5beginEv
	.type	_ZNKSt16initializer_listIN2cl6DeviceEE5beginEv, @function
_ZNKSt16initializer_listIN2cl6DeviceEE5beginEv:
.LFB3615:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3615:
	.size	_ZNKSt16initializer_listIN2cl6DeviceEE5beginEv, .-_ZNKSt16initializer_listIN2cl6DeviceEE5beginEv
	.section	.text._ZNKSt16initializer_listIN2cl6DeviceEE4sizeEv,"axG",@progbits,_ZNKSt16initializer_listIN2cl6DeviceEE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIN2cl6DeviceEE4sizeEv
	.type	_ZNKSt16initializer_listIN2cl6DeviceEE4sizeEv, @function
_ZNKSt16initializer_listIN2cl6DeviceEE4sizeEv:
.LFB3617:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3617:
	.size	_ZNKSt16initializer_listIN2cl6DeviceEE4sizeEv, .-_ZNKSt16initializer_listIN2cl6DeviceEE4sizeEv
	.section	.text._ZNKSt16initializer_listIN2cl6DeviceEE3endEv,"axG",@progbits,_ZNKSt16initializer_listIN2cl6DeviceEE3endEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIN2cl6DeviceEE3endEv
	.type	_ZNKSt16initializer_listIN2cl6DeviceEE3endEv, @function
_ZNKSt16initializer_listIN2cl6DeviceEE3endEv:
.LFB3616:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIN2cl6DeviceEE5beginEv
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIN2cl6DeviceEE4sizeEv
	salq	$4, %rax
	addq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3616:
	.size	_ZNKSt16initializer_listIN2cl6DeviceEE3endEv, .-_ZNKSt16initializer_listIN2cl6DeviceEE3endEv
	.section	.text._ZNSt6vectorIN2cl6DeviceESaIS1_EEC2ESt16initializer_listIS1_ERKS2_,"axG",@progbits,_ZNSt6vectorIN2cl6DeviceESaIS1_EEC5ESt16initializer_listIS1_ERKS2_,comdat
	.align 2
	.weak	_ZNSt6vectorIN2cl6DeviceESaIS1_EEC2ESt16initializer_listIS1_ERKS2_
	.type	_ZNSt6vectorIN2cl6DeviceESaIS1_EEC2ESt16initializer_listIS1_ERKS2_, @function
_ZNSt6vectorIN2cl6DeviceESaIS1_EEC2ESt16initializer_listIS1_ERKS2_:
.LFB3618:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA3618
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movq	%rsi, %rax
	movq	%rdx, %rsi
	movq	%rsi, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB312:
	call	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EEC2ERKS2_
.LEHE312:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIN2cl6DeviceEE3endEv
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIN2cl6DeviceEE5beginEv
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movb	%r12b, (%rsp)
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB313:
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EE19_M_range_initializeIPKS1_EEvT_S7_St20forward_iterator_tag
.LEHE313:
	jmp	.L819
.L818:
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EED2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB314:
	call	_Unwind_Resume
.LEHE314:
.L819:
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3618:
	.section	.gcc_except_table
.LLSDA3618:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3618-.LLSDACSB3618
.LLSDACSB3618:
	.uleb128 .LEHB312-.LFB3618
	.uleb128 .LEHE312-.LEHB312
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB313-.LFB3618
	.uleb128 .LEHE313-.LEHB313
	.uleb128 .L818-.LFB3618
	.uleb128 0
	.uleb128 .LEHB314-.LFB3618
	.uleb128 .LEHE314-.LEHB314
	.uleb128 0
	.uleb128 0
.LLSDACSE3618:
	.section	.text._ZNSt6vectorIN2cl6DeviceESaIS1_EEC2ESt16initializer_listIS1_ERKS2_,"axG",@progbits,_ZNSt6vectorIN2cl6DeviceESaIS1_EEC5ESt16initializer_listIS1_ERKS2_,comdat
	.size	_ZNSt6vectorIN2cl6DeviceESaIS1_EEC2ESt16initializer_listIS1_ERKS2_, .-_ZNSt6vectorIN2cl6DeviceESaIS1_EEC2ESt16initializer_listIS1_ERKS2_
	.weak	_ZNSt6vectorIN2cl6DeviceESaIS1_EEC1ESt16initializer_listIS1_ERKS2_
	.set	_ZNSt6vectorIN2cl6DeviceESaIS1_EEC1ESt16initializer_listIS1_ERKS2_,_ZNSt6vectorIN2cl6DeviceESaIS1_EEC2ESt16initializer_listIS1_ERKS2_
	.section	.text._ZNSt6vectorIN2cl6DeviceESaIS1_EEC2ERKS3_,"axG",@progbits,_ZNSt6vectorIN2cl6DeviceESaIS1_EEC5ERKS3_,comdat
	.align 2
	.weak	_ZNSt6vectorIN2cl6DeviceESaIS1_EEC2ERKS3_
	.type	_ZNSt6vectorIN2cl6DeviceESaIS1_EEC2ERKS3_, @function
_ZNSt6vectorIN2cl6DeviceESaIS1_EEC2ERKS3_:
.LFB3621:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA3621
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt12_Vector_baseIN2cl6DeviceESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	leaq	-33(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB315:
	call	_ZN9__gnu_cxx14__alloc_traitsISaIN2cl6DeviceEEE17_S_select_on_copyERKS3_
.LEHE315:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIN2cl6DeviceESaIS1_EE4sizeEv
	movq	%rax, %rcx
	movq	-56(%rbp), %rax
	leaq	-33(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB316:
	call	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EEC2EmRKS2_
.LEHE316:
	leaq	-33(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIN2cl6DeviceEED1Ev
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %r13
	movq	-56(%rbp), %rax
	movq	(%rax), %r12
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIN2cl6DeviceESaIS1_EE3endEv
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIN2cl6DeviceESaIS1_EE5beginEv
	movq	%r13, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
.LEHB317:
	call	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E
.LEHE317:
	movq	-56(%rbp), %rdx
	movq	%rax, 8(%rdx)
	jmp	.L825
.L823:
	movq	%rax, %rbx
	leaq	-33(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIN2cl6DeviceEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB318:
	call	_Unwind_Resume
.L824:
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EED2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume
.LEHE318:
.L825:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3621:
	.section	.gcc_except_table
.LLSDA3621:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3621-.LLSDACSB3621
.LLSDACSB3621:
	.uleb128 .LEHB315-.LFB3621
	.uleb128 .LEHE315-.LEHB315
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB316-.LFB3621
	.uleb128 .LEHE316-.LEHB316
	.uleb128 .L823-.LFB3621
	.uleb128 0
	.uleb128 .LEHB317-.LFB3621
	.uleb128 .LEHE317-.LEHB317
	.uleb128 .L824-.LFB3621
	.uleb128 0
	.uleb128 .LEHB318-.LFB3621
	.uleb128 .LEHE318-.LEHB318
	.uleb128 0
	.uleb128 0
.LLSDACSE3621:
	.section	.text._ZNSt6vectorIN2cl6DeviceESaIS1_EEC2ERKS3_,"axG",@progbits,_ZNSt6vectorIN2cl6DeviceESaIS1_EEC5ERKS3_,comdat
	.size	_ZNSt6vectorIN2cl6DeviceESaIS1_EEC2ERKS3_, .-_ZNSt6vectorIN2cl6DeviceESaIS1_EEC2ERKS3_
	.weak	_ZNSt6vectorIN2cl6DeviceESaIS1_EEC1ERKS3_
	.set	_ZNSt6vectorIN2cl6DeviceESaIS1_EEC1ERKS3_,_ZNSt6vectorIN2cl6DeviceESaIS1_EEC2ERKS3_
	.section	.rodata
.LC87:
	.string	"clSetKernelArg"
	.section	.text._ZN2cl6Kernel6setArgINS_6BufferEEEijT_,"axG",@progbits,_ZN2cl6Kernel6setArgINS_6BufferEEEijT_,comdat
	.align 2
	.weak	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
	.type	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_, @function
_ZN2cl6Kernel6setArgINS_6BufferEEEijT_:
.LFB3631:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6detail21KernelArgumentHandlerINS_6BufferEE3ptrERS2_
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6detail21KernelArgumentHandlerINS_6BufferEE4sizeERKS2_
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %esi
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	clSetKernelArg
	movl	$.LC87, %esi
	movl	%eax, %edi
	call	_ZN2cl6detailL10errHandlerEiPKc
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3631:
	.size	_ZN2cl6Kernel6setArgINS_6BufferEEEijT_, .-_ZN2cl6Kernel6setArgINS_6BufferEEEijT_
	.section	.text._ZSt3maxIdERKT_S2_S2_,"axG",@progbits,_ZSt3maxIdERKT_S2_S2_,comdat
	.weak	_ZSt3maxIdERKT_S2_S2_
	.type	_ZSt3maxIdERKT_S2_S2_, @function
_ZSt3maxIdERKT_S2_S2_:
.LFB3632:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm1
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.L833
	movq	-16(%rbp), %rax
	jmp	.L831
.L833:
	movq	-8(%rbp), %rax
.L831:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3632:
	.size	_ZSt3maxIdERKT_S2_S2_, .-_ZSt3maxIdERKT_S2_S2_
	.section	.text._ZNSt6vectorIN2cl6DeviceESaIS1_EE18_M_assign_dispatchIPP13_cl_device_idEEvT_S8_St12__false_type,"axG",@progbits,_ZNSt6vectorIN2cl6DeviceESaIS1_EE18_M_assign_dispatchIPP13_cl_device_idEEvT_S8_St12__false_type,comdat
	.align 2
	.weak	_ZNSt6vectorIN2cl6DeviceESaIS1_EE18_M_assign_dispatchIPP13_cl_device_idEEvT_S8_St12__false_type
	.type	_ZNSt6vectorIN2cl6DeviceESaIS1_EE18_M_assign_dispatchIPP13_cl_device_idEEvT_S8_St12__false_type, @function
_ZNSt6vectorIN2cl6DeviceESaIS1_EE18_M_assign_dispatchIPP13_cl_device_idEEvT_S8_St12__false_type:
.LFB3672:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movb	%r8b, (%rsp)
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EE13_M_assign_auxIPP13_cl_device_idEEvT_S8_St20forward_iterator_tag
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3672:
	.size	_ZNSt6vectorIN2cl6DeviceESaIS1_EE18_M_assign_dispatchIPP13_cl_device_idEEvT_S8_St12__false_type, .-_ZNSt6vectorIN2cl6DeviceESaIS1_EE18_M_assign_dispatchIPP13_cl_device_idEEvT_S8_St12__false_type
	.section	.text._ZNK2cl6detail7WrapperIP15_cl_platform_idE7releaseEv,"axG",@progbits,_ZNK2cl6detail7WrapperIP15_cl_platform_idE7releaseEv,comdat
	.align 2
	.weak	_ZNK2cl6detail7WrapperIP15_cl_platform_idE7releaseEv
	.type	_ZNK2cl6detail7WrapperIP15_cl_platform_idE7releaseEv, @function
_ZNK2cl6detail7WrapperIP15_cl_platform_idE7releaseEv:
.LFB3673:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZN2cl6detail16ReferenceHandlerIP15_cl_platform_idE7releaseES3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3673:
	.size	_ZNK2cl6detail7WrapperIP15_cl_platform_idE7releaseEv, .-_ZNK2cl6detail7WrapperIP15_cl_platform_idE7releaseEv
	.section	.text._ZNSt6vectorIN2cl8PlatformESaIS1_EE18_M_assign_dispatchIPP15_cl_platform_idEEvT_S8_St12__false_type,"axG",@progbits,_ZNSt6vectorIN2cl8PlatformESaIS1_EE18_M_assign_dispatchIPP15_cl_platform_idEEvT_S8_St12__false_type,comdat
	.align 2
	.weak	_ZNSt6vectorIN2cl8PlatformESaIS1_EE18_M_assign_dispatchIPP15_cl_platform_idEEvT_S8_St12__false_type
	.type	_ZNSt6vectorIN2cl8PlatformESaIS1_EE18_M_assign_dispatchIPP15_cl_platform_idEEvT_S8_St12__false_type, @function
_ZNSt6vectorIN2cl8PlatformESaIS1_EE18_M_assign_dispatchIPP15_cl_platform_idEEvT_S8_St12__false_type:
.LFB3676:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movb	%r8b, (%rsp)
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2cl8PlatformESaIS1_EE13_M_assign_auxIPP15_cl_platform_idEEvT_S8_St20forward_iterator_tag
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3676:
	.size	_ZNSt6vectorIN2cl8PlatformESaIS1_EE18_M_assign_dispatchIPP15_cl_platform_idEEvT_S8_St12__false_type, .-_ZNSt6vectorIN2cl8PlatformESaIS1_EE18_M_assign_dispatchIPP15_cl_platform_idEEvT_S8_St12__false_type
	.section	.text._ZNK2cl6detail7WrapperIP11_cl_contextE7releaseEv,"axG",@progbits,_ZNK2cl6detail7WrapperIP11_cl_contextE7releaseEv,comdat
	.align 2
	.weak	_ZNK2cl6detail7WrapperIP11_cl_contextE7releaseEv
	.type	_ZNK2cl6detail7WrapperIP11_cl_contextE7releaseEv, @function
_ZNK2cl6detail7WrapperIP11_cl_contextE7releaseEv:
.LFB3677:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZN2cl6detail16ReferenceHandlerIP11_cl_contextE7releaseES3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3677:
	.size	_ZNK2cl6detail7WrapperIP11_cl_contextE7releaseEv, .-_ZNK2cl6detail7WrapperIP11_cl_contextE7releaseEv
	.section	.text._ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE12_Vector_implD2Ev:
.LFB3680:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIN2cl8PlatformEED2Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3680:
	.size	_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE12_Vector_implD1Ev,_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EEC2Ev
	.type	_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EEC2Ev, @function
_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EEC2Ev:
.LFB3682:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE12_Vector_implC1Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3682:
	.size	_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EEC2Ev, .-_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EEC2Ev
	.weak	_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EEC1Ev
	.set	_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EEC1Ev,_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EEC2Ev
	.section	.text._ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EED2Ev
	.type	_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EED2Ev, @function
_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EED2Ev:
.LFB3685:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA3685
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE13_M_deallocateEPS1_m
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE12_Vector_implD1Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3685:
	.section	.gcc_except_table
.LLSDA3685:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3685-.LLSDACSB3685
.LLSDACSB3685:
.LLSDACSE3685:
	.section	.text._ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EED5Ev,comdat
	.size	_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EED2Ev, .-_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EED2Ev
	.weak	_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EED1Ev
	.set	_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EED1Ev,_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EED2Ev
	.section	.text._ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE19_M_get_Tp_allocatorEv:
.LFB3687:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3687:
	.size	_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE19_M_get_Tp_allocatorEv
	.section	.text._ZSt8_DestroyIPN2cl8PlatformES1_EvT_S3_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPN2cl8PlatformES1_EvT_S3_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPN2cl8PlatformES1_EvT_S3_RSaIT0_E
	.type	_ZSt8_DestroyIPN2cl8PlatformES1_EvT_S3_RSaIT0_E, @function
_ZSt8_DestroyIPN2cl8PlatformES1_EvT_S3_RSaIT0_E:
.LFB3688:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPN2cl8PlatformEEvT_S3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3688:
	.size	_ZSt8_DestroyIPN2cl8PlatformES1_EvT_S3_RSaIT0_E, .-_ZSt8_DestroyIPN2cl8PlatformES1_EvT_S3_RSaIT0_E
	.section	.text._ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE12_Vector_implD2Ev:
.LFB3691:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIN2cl6DeviceEED2Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3691:
	.size	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE12_Vector_implD1Ev,_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EEC2Ev
	.type	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EEC2Ev, @function
_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EEC2Ev:
.LFB3693:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE12_Vector_implC1Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3693:
	.size	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EEC2Ev, .-_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EEC2Ev
	.weak	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EEC1Ev
	.set	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EEC1Ev,_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EEC2Ev
	.section	.text._ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EED2Ev
	.type	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EED2Ev, @function
_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EED2Ev:
.LFB3696:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA3696
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$4, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE13_M_deallocateEPS1_m
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE12_Vector_implD1Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3696:
	.section	.gcc_except_table
.LLSDA3696:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3696-.LLSDACSB3696
.LLSDACSB3696:
.LLSDACSE3696:
	.section	.text._ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EED5Ev,comdat
	.size	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EED2Ev, .-_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EED2Ev
	.weak	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EED1Ev
	.set	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EED1Ev,_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EED2Ev
	.section	.text._ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE19_M_get_Tp_allocatorEv:
.LFB3698:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3698:
	.size	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE19_M_get_Tp_allocatorEv
	.section	.text._ZSt8_DestroyIPN2cl6DeviceES1_EvT_S3_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPN2cl6DeviceES1_EvT_S3_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPN2cl6DeviceES1_EvT_S3_RSaIT0_E
	.type	_ZSt8_DestroyIPN2cl6DeviceES1_EvT_S3_RSaIT0_E, @function
_ZSt8_DestroyIPN2cl6DeviceES1_EvT_S3_RSaIT0_E:
.LFB3699:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPN2cl6DeviceEEvT_S3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3699:
	.size	_ZSt8_DestroyIPN2cl6DeviceES1_EvT_S3_RSaIT0_E, .-_ZSt8_DestroyIPN2cl6DeviceES1_EvT_S3_RSaIT0_E
	.section	.text._ZNK2cl6detail7WrapperIP11_cl_contextE6retainEv,"axG",@progbits,_ZNK2cl6detail7WrapperIP11_cl_contextE6retainEv,comdat
	.align 2
	.weak	_ZNK2cl6detail7WrapperIP11_cl_contextE6retainEv
	.type	_ZNK2cl6detail7WrapperIP11_cl_contextE6retainEv, @function
_ZNK2cl6detail7WrapperIP11_cl_contextE6retainEv:
.LFB3700:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZN2cl6detail16ReferenceHandlerIP11_cl_contextE6retainES3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3700:
	.size	_ZNK2cl6detail7WrapperIP11_cl_contextE6retainEv, .-_ZNK2cl6detail7WrapperIP11_cl_contextE6retainEv
	.section	.text._ZNK2cl6detail7WrapperIP9_cl_eventE7releaseEv,"axG",@progbits,_ZNK2cl6detail7WrapperIP9_cl_eventE7releaseEv,comdat
	.align 2
	.weak	_ZNK2cl6detail7WrapperIP9_cl_eventE7releaseEv
	.type	_ZNK2cl6detail7WrapperIP9_cl_eventE7releaseEv, @function
_ZNK2cl6detail7WrapperIP9_cl_eventE7releaseEv:
.LFB3706:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZN2cl6detail16ReferenceHandlerIP9_cl_eventE7releaseES3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3706:
	.size	_ZNK2cl6detail7WrapperIP9_cl_eventE7releaseEv, .-_ZNK2cl6detail7WrapperIP9_cl_eventE7releaseEv
	.section	.text._ZNKSt6vectorIN2cl5EventESaIS1_EE5beginEv,"axG",@progbits,_ZNKSt6vectorIN2cl5EventESaIS1_EE5beginEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIN2cl5EventESaIS1_EE5beginEv
	.type	_ZNKSt6vectorIN2cl5EventESaIS1_EE5beginEv, @function
_ZNKSt6vectorIN2cl5EventESaIS1_EE5beginEv:
.LFB3708:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPKN2cl5EventESt6vectorIS2_SaIS2_EEEC1ERKS4_
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3708:
	.size	_ZNKSt6vectorIN2cl5EventESaIS1_EE5beginEv, .-_ZNKSt6vectorIN2cl5EventESaIS1_EE5beginEv
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPKN2cl5EventESt6vectorIS2_SaIS2_EEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPKN2cl5EventESt6vectorIS2_SaIS2_EEEdeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPKN2cl5EventESt6vectorIS2_SaIS2_EEEdeEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPKN2cl5EventESt6vectorIS2_SaIS2_EEEdeEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPKN2cl5EventESt6vectorIS2_SaIS2_EEEdeEv:
.LFB3709:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3709:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPKN2cl5EventESt6vectorIS2_SaIS2_EEEdeEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPKN2cl5EventESt6vectorIS2_SaIS2_EEEdeEv
	.section	.text._ZNK2cl6detail7WrapperIP7_cl_memE7releaseEv,"axG",@progbits,_ZNK2cl6detail7WrapperIP7_cl_memE7releaseEv,comdat
	.align 2
	.weak	_ZNK2cl6detail7WrapperIP7_cl_memE7releaseEv
	.type	_ZNK2cl6detail7WrapperIP7_cl_memE7releaseEv, @function
_ZNK2cl6detail7WrapperIP7_cl_memE7releaseEv:
.LFB3710:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZN2cl6detail16ReferenceHandlerIP7_cl_memE7releaseES3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3710:
	.size	_ZNK2cl6detail7WrapperIP7_cl_memE7releaseEv, .-_ZNK2cl6detail7WrapperIP7_cl_memE7releaseEv
	.section	.text._ZNK2cl6detail7WrapperIP7_cl_memE6retainEv,"axG",@progbits,_ZNK2cl6detail7WrapperIP7_cl_memE6retainEv,comdat
	.align 2
	.weak	_ZNK2cl6detail7WrapperIP7_cl_memE6retainEv
	.type	_ZNK2cl6detail7WrapperIP7_cl_memE6retainEv, @function
_ZNK2cl6detail7WrapperIP7_cl_memE6retainEv:
.LFB3711:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZN2cl6detail16ReferenceHandlerIP7_cl_memE6retainES3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3711:
	.size	_ZNK2cl6detail7WrapperIP7_cl_memE6retainEv, .-_ZNK2cl6detail7WrapperIP7_cl_memE6retainEv
	.section	.text._ZNK2cl6detail7WrapperIP10_cl_kernelE7releaseEv,"axG",@progbits,_ZNK2cl6detail7WrapperIP10_cl_kernelE7releaseEv,comdat
	.align 2
	.weak	_ZNK2cl6detail7WrapperIP10_cl_kernelE7releaseEv
	.type	_ZNK2cl6detail7WrapperIP10_cl_kernelE7releaseEv, @function
_ZNK2cl6detail7WrapperIP10_cl_kernelE7releaseEv:
.LFB3714:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZN2cl6detail16ReferenceHandlerIP10_cl_kernelE7releaseES3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3714:
	.size	_ZNK2cl6detail7WrapperIP10_cl_kernelE7releaseEv, .-_ZNK2cl6detail7WrapperIP10_cl_kernelE7releaseEv
	.section	.text._ZNK2cl6detail7WrapperIP11_cl_programE7releaseEv,"axG",@progbits,_ZNK2cl6detail7WrapperIP11_cl_programE7releaseEv,comdat
	.align 2
	.weak	_ZNK2cl6detail7WrapperIP11_cl_programE7releaseEv
	.type	_ZNK2cl6detail7WrapperIP11_cl_programE7releaseEv, @function
_ZNK2cl6detail7WrapperIP11_cl_programE7releaseEv:
.LFB3716:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZN2cl6detail16ReferenceHandlerIP11_cl_programE7releaseES3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3716:
	.size	_ZNK2cl6detail7WrapperIP11_cl_programE7releaseEv, .-_ZNK2cl6detail7WrapperIP11_cl_programE7releaseEv
	.section	.text._ZNK2cl6detail7WrapperIP17_cl_command_queueE7releaseEv,"axG",@progbits,_ZNK2cl6detail7WrapperIP17_cl_command_queueE7releaseEv,comdat
	.align 2
	.weak	_ZNK2cl6detail7WrapperIP17_cl_command_queueE7releaseEv
	.type	_ZNK2cl6detail7WrapperIP17_cl_command_queueE7releaseEv, @function
_ZNK2cl6detail7WrapperIP17_cl_command_queueE7releaseEv:
.LFB3763:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZN2cl6detail16ReferenceHandlerIP17_cl_command_queueE7releaseES3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3763:
	.size	_ZNK2cl6detail7WrapperIP17_cl_command_queueE7releaseEv, .-_ZNK2cl6detail7WrapperIP17_cl_command_queueE7releaseEv
	.section	.text._ZNSs12_S_constructISt19istreambuf_iteratorIcSt11char_traitsIcEEEEPcT_S5_RKSaIcE,"axG",@progbits,_ZNSs12_S_constructISt19istreambuf_iteratorIcSt11char_traitsIcEEEEPcT_S5_RKSaIcE,comdat
	.weak	_ZNSs12_S_constructISt19istreambuf_iteratorIcSt11char_traitsIcEEEEPcT_S5_RKSaIcE
	.type	_ZNSs12_S_constructISt19istreambuf_iteratorIcSt11char_traitsIcEEEEPcT_S5_RKSaIcE, @function
_ZNSs12_S_constructISt19istreambuf_iteratorIcSt11char_traitsIcEEEEPcT_S5_RKSaIcE:
.LFB3820:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, %rax
	movq	%rsi, %r9
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%r9, %rdi
	movq	%rsi, -32(%rbp)
	movq	%rdi, -24(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -56(%rbp)
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movb	%r10b, (%rsp)
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	_ZNSs16_S_construct_auxISt19istreambuf_iteratorIcSt11char_traitsIcEEEEPcT_S5_RKSaIcESt12__false_type
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3820:
	.size	_ZNSs12_S_constructISt19istreambuf_iteratorIcSt11char_traitsIcEEEEPcT_S5_RKSaIcE, .-_ZNSs12_S_constructISt19istreambuf_iteratorIcSt11char_traitsIcEEEEPcT_S5_RKSaIcE
	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEEC2Ev:
.LFB3825:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3825:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEEC2Ev, .-_ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEEC1Ev,_ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEED2Ev, @function
_ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEED2Ev:
.LFB3828:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3828:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEED2Ev, .-_ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEED1Ev,_ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEED2Ev
	.section	.text._ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE12_Vector_implD2Ev:
.LFB3832:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaISt4pairIPKcmEED2Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3832:
	.size	_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE12_Vector_implD1Ev,_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EEC2EmRKS4_,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EEC5EmRKS4_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EEC2EmRKS4_
	.type	_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EEC2EmRKS4_, @function
_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EEC2EmRKS4_:
.LFB3834:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA3834
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE12_Vector_implC1ERKS4_
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB319:
	call	_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE17_M_create_storageEm
.LEHE319:
	jmp	.L884
.L883:
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE12_Vector_implD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB320:
	call	_Unwind_Resume
.LEHE320:
.L884:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3834:
	.section	.gcc_except_table
.LLSDA3834:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3834-.LLSDACSB3834
.LLSDACSB3834:
	.uleb128 .LEHB319-.LFB3834
	.uleb128 .LEHE319-.LEHB319
	.uleb128 .L883-.LFB3834
	.uleb128 0
	.uleb128 .LEHB320-.LFB3834
	.uleb128 .LEHE320-.LEHB320
	.uleb128 0
	.uleb128 0
.LLSDACSE3834:
	.section	.text._ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EEC2EmRKS4_,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EEC5EmRKS4_,comdat
	.size	_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EEC2EmRKS4_, .-_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EEC2EmRKS4_
	.weak	_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EEC1EmRKS4_
	.set	_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EEC1EmRKS4_,_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EEC2EmRKS4_
	.section	.text._ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EED2Ev
	.type	_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EED2Ev, @function
_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EED2Ev:
.LFB3837:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA3837
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$4, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE13_M_deallocateEPS3_m
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE12_Vector_implD1Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3837:
	.section	.gcc_except_table
.LLSDA3837:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3837-.LLSDACSB3837
.LLSDACSB3837:
.LLSDACSE3837:
	.section	.text._ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EED5Ev,comdat
	.size	_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EED2Ev, .-_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EED2Ev
	.weak	_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EED1Ev
	.set	_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EED1Ev,_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EED2Ev
	.section	.text._ZNSt6vectorISt4pairIPKcmESaIS3_EE18_M_fill_initializeEmRKS3_,"axG",@progbits,_ZNSt6vectorISt4pairIPKcmESaIS3_EE18_M_fill_initializeEmRKS3_,comdat
	.align 2
	.weak	_ZNSt6vectorISt4pairIPKcmESaIS3_EE18_M_fill_initializeEmRKS3_
	.type	_ZNSt6vectorISt4pairIPKcmESaIS3_EE18_M_fill_initializeEmRKS3_, @function
_ZNSt6vectorISt4pairIPKcmESaIS3_EE18_M_fill_initializeEmRKS3_:
.LFB3839:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	call	_ZSt24__uninitialized_fill_n_aIPSt4pairIPKcmEmS3_S3_EvT_T0_RKT1_RSaIT2_E
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3839:
	.size	_ZNSt6vectorISt4pairIPKcmESaIS3_EE18_M_fill_initializeEmRKS3_, .-_ZNSt6vectorISt4pairIPKcmESaIS3_EE18_M_fill_initializeEmRKS3_
	.section	.text._ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE19_M_get_Tp_allocatorEv:
.LFB3840:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3840:
	.size	_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE19_M_get_Tp_allocatorEv
	.section	.text._ZSt8_DestroyIPSt4pairIPKcmES3_EvT_S5_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPSt4pairIPKcmES3_EvT_S5_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPSt4pairIPKcmES3_EvT_S5_RSaIT0_E
	.type	_ZSt8_DestroyIPSt4pairIPKcmES3_EvT_S5_RSaIT0_E, @function
_ZSt8_DestroyIPSt4pairIPKcmES3_EvT_S5_RSaIT0_E:
.LFB3841:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPSt4pairIPKcmEEvT_S5_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3841:
	.size	_ZSt8_DestroyIPSt4pairIPKcmES3_EvT_S5_RSaIT0_E, .-_ZSt8_DestroyIPSt4pairIPKcmES3_EvT_S5_RSaIT0_E
	.section	.rodata
.LC88:
	.string	"clGetDeviceInfo"
	.section	.text._ZNK2cl6Device7getInfoISsEEijPT_,"axG",@progbits,_ZNK2cl6Device7getInfoISsEEijPT_,comdat
	.align 2
	.weak	_ZNK2cl6Device7getInfoISsEEijPT_
	.type	_ZNK2cl6Device7getInfoISsEEijPT_, @function
_ZNK2cl6Device7getInfoISsEEijPT_:
.LFB3844:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	-12(%rbp), %edx
	movq	%rax, %rsi
	movl	$clGetDeviceInfo, %edi
	call	_ZN2cl6detail7getInfoIPFiP13_cl_device_idjmPvPmES3_SsEEiT_RKT0_jPT1_
	movl	$.LC88, %esi
	movl	%eax, %edi
	call	_ZN2cl6detailL10errHandlerEiPKc
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3844:
	.size	_ZNK2cl6Device7getInfoISsEEijPT_, .-_ZNK2cl6Device7getInfoISsEEijPT_
	.section	.text._ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEEC2Ev:
.LFB3847:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3847:
	.size	_ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEEC2Ev, .-_ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEEC1Ev,_ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEED2Ev, @function
_ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEED2Ev:
.LFB3850:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3850:
	.size	_ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEED2Ev, .-_ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEED1Ev,_ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEED2Ev
	.section	.text._ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EEC2ERKS2_,"axG",@progbits,_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EEC5ERKS2_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EEC2ERKS2_
	.type	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EEC2ERKS2_, @function
_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EEC2ERKS2_:
.LFB3853:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE12_Vector_implC1ERKS2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3853:
	.size	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EEC2ERKS2_, .-_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EEC2ERKS2_
	.weak	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EEC1ERKS2_
	.set	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EEC1ERKS2_,_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EEC2ERKS2_
	.section	.text._ZNSt6vectorIN2cl6DeviceESaIS1_EE19_M_range_initializeIPKS1_EEvT_S7_St20forward_iterator_tag,"axG",@progbits,_ZNSt6vectorIN2cl6DeviceESaIS1_EE19_M_range_initializeIPKS1_EEvT_S7_St20forward_iterator_tag,comdat
	.align 2
	.weak	_ZNSt6vectorIN2cl6DeviceESaIS1_EE19_M_range_initializeIPKS1_EEvT_S7_St20forward_iterator_tag
	.type	_ZNSt6vectorIN2cl6DeviceESaIS1_EE19_M_range_initializeIPKS1_EEvT_S7_St20forward_iterator_tag, @function
_ZNSt6vectorIN2cl6DeviceESaIS1_EE19_M_range_initializeIPKS1_EEvT_S7_St20forward_iterator_tag:
.LFB3855:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8distanceIPKN2cl6DeviceEENSt15iterator_traitsIT_E15difference_typeES5_S5_
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE11_M_allocateEm
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	salq	$4, %rdx
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt22__uninitialized_copy_aIPKN2cl6DeviceEPS1_S1_ET0_T_S6_S5_RSaIT1_E
	movq	-24(%rbp), %rdx
	movq	%rax, 8(%rdx)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3855:
	.size	_ZNSt6vectorIN2cl6DeviceESaIS1_EE19_M_range_initializeIPKS1_EEvT_S7_St20forward_iterator_tag, .-_ZNSt6vectorIN2cl6DeviceESaIS1_EE19_M_range_initializeIPKS1_EEvT_S7_St20forward_iterator_tag
	.section	.text._ZN9__gnu_cxx14__alloc_traitsISaIN2cl6DeviceEEE17_S_select_on_copyERKS3_,"axG",@progbits,_ZN9__gnu_cxx14__alloc_traitsISaIN2cl6DeviceEEE17_S_select_on_copyERKS3_,comdat
	.weak	_ZN9__gnu_cxx14__alloc_traitsISaIN2cl6DeviceEEE17_S_select_on_copyERKS3_
	.type	_ZN9__gnu_cxx14__alloc_traitsISaIN2cl6DeviceEEE17_S_select_on_copyERKS3_, @function
_ZN9__gnu_cxx14__alloc_traitsISaIN2cl6DeviceEEE17_S_select_on_copyERKS3_:
.LFB3856:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIN2cl6DeviceEEE37select_on_container_copy_constructionERKS2_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3856:
	.size	_ZN9__gnu_cxx14__alloc_traitsISaIN2cl6DeviceEEE17_S_select_on_copyERKS3_, .-_ZN9__gnu_cxx14__alloc_traitsISaIN2cl6DeviceEEE17_S_select_on_copyERKS3_
	.section	.text._ZNKSt12_Vector_baseIN2cl6DeviceESaIS1_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseIN2cl6DeviceESaIS1_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt12_Vector_baseIN2cl6DeviceESaIS1_EE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseIN2cl6DeviceESaIS1_EE19_M_get_Tp_allocatorEv, @function
_ZNKSt12_Vector_baseIN2cl6DeviceESaIS1_EE19_M_get_Tp_allocatorEv:
.LFB3857:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3857:
	.size	_ZNKSt12_Vector_baseIN2cl6DeviceESaIS1_EE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseIN2cl6DeviceESaIS1_EE19_M_get_Tp_allocatorEv
	.section	.text._ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EEC2EmRKS2_,"axG",@progbits,_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EEC5EmRKS2_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EEC2EmRKS2_
	.type	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EEC2EmRKS2_, @function
_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EEC2EmRKS2_:
.LFB3859:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA3859
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE12_Vector_implC1ERKS2_
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB321:
	call	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE17_M_create_storageEm
.LEHE321:
	jmp	.L905
.L904:
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE12_Vector_implD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB322:
	call	_Unwind_Resume
.LEHE322:
.L905:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3859:
	.section	.gcc_except_table
.LLSDA3859:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3859-.LLSDACSB3859
.LLSDACSB3859:
	.uleb128 .LEHB321-.LFB3859
	.uleb128 .LEHE321-.LEHB321
	.uleb128 .L904-.LFB3859
	.uleb128 0
	.uleb128 .LEHB322-.LFB3859
	.uleb128 .LEHE322-.LEHB322
	.uleb128 0
	.uleb128 0
.LLSDACSE3859:
	.section	.text._ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EEC2EmRKS2_,"axG",@progbits,_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EEC5EmRKS2_,comdat
	.size	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EEC2EmRKS2_, .-_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EEC2EmRKS2_
	.weak	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EEC1EmRKS2_
	.set	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EEC1EmRKS2_,_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EEC2EmRKS2_
	.section	.text._ZNKSt6vectorIN2cl6DeviceESaIS1_EE5beginEv,"axG",@progbits,_ZNKSt6vectorIN2cl6DeviceESaIS1_EE5beginEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIN2cl6DeviceESaIS1_EE5beginEv
	.type	_ZNKSt6vectorIN2cl6DeviceESaIS1_EE5beginEv, @function
_ZNKSt6vectorIN2cl6DeviceESaIS1_EE5beginEv:
.LFB3861:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS2_SaIS2_EEEC1ERKS4_
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3861:
	.size	_ZNKSt6vectorIN2cl6DeviceESaIS1_EE5beginEv, .-_ZNKSt6vectorIN2cl6DeviceESaIS1_EE5beginEv
	.section	.text._ZNKSt6vectorIN2cl6DeviceESaIS1_EE3endEv,"axG",@progbits,_ZNKSt6vectorIN2cl6DeviceESaIS1_EE3endEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIN2cl6DeviceESaIS1_EE3endEv
	.type	_ZNKSt6vectorIN2cl6DeviceESaIS1_EE3endEv, @function
_ZNKSt6vectorIN2cl6DeviceESaIS1_EE3endEv:
.LFB3862:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	leaq	-8(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS2_SaIS2_EEEC1ERKS4_
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3862:
	.size	_ZNKSt6vectorIN2cl6DeviceESaIS1_EE3endEv, .-_ZNKSt6vectorIN2cl6DeviceESaIS1_EE3endEv
	.section	.text._ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E
	.type	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E, @function
_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E:
.LFB3863:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -8(%rbp)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3863:
	.size	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E, .-_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E
	.section	.text._ZN2cl6detail21KernelArgumentHandlerINS_6BufferEE4sizeERKS2_,"axG",@progbits,_ZN2cl6detail21KernelArgumentHandlerINS_6BufferEE4sizeERKS2_,comdat
	.weak	_ZN2cl6detail21KernelArgumentHandlerINS_6BufferEE4sizeERKS2_
	.type	_ZN2cl6detail21KernelArgumentHandlerINS_6BufferEE4sizeERKS2_, @function
_ZN2cl6detail21KernelArgumentHandlerINS_6BufferEE4sizeERKS2_:
.LFB3873:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$8, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3873:
	.size	_ZN2cl6detail21KernelArgumentHandlerINS_6BufferEE4sizeERKS2_, .-_ZN2cl6detail21KernelArgumentHandlerINS_6BufferEE4sizeERKS2_
	.section	.text._ZN2cl6detail21KernelArgumentHandlerINS_6BufferEE3ptrERS2_,"axG",@progbits,_ZN2cl6detail21KernelArgumentHandlerINS_6BufferEE3ptrERS2_,comdat
	.weak	_ZN2cl6detail21KernelArgumentHandlerINS_6BufferEE3ptrERS2_
	.type	_ZN2cl6detail21KernelArgumentHandlerINS_6BufferEE3ptrERS2_, @function
_ZN2cl6detail21KernelArgumentHandlerINS_6BufferEE3ptrERS2_:
.LFB3874:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3874:
	.size	_ZN2cl6detail21KernelArgumentHandlerINS_6BufferEE3ptrERS2_, .-_ZN2cl6detail21KernelArgumentHandlerINS_6BufferEE3ptrERS2_
	.section	.text._ZNSt6vectorIN2cl6DeviceESaIS1_EE13_M_assign_auxIPP13_cl_device_idEEvT_S8_St20forward_iterator_tag,"axG",@progbits,_ZNSt6vectorIN2cl6DeviceESaIS1_EE13_M_assign_auxIPP13_cl_device_idEEvT_S8_St20forward_iterator_tag,comdat
	.align 2
	.weak	_ZNSt6vectorIN2cl6DeviceESaIS1_EE13_M_assign_auxIPP13_cl_device_idEEvT_S8_St20forward_iterator_tag
	.type	_ZNSt6vectorIN2cl6DeviceESaIS1_EE13_M_assign_auxIPP13_cl_device_idEEvT_S8_St20forward_iterator_tag, @function
_ZNSt6vectorIN2cl6DeviceESaIS1_EE13_M_assign_auxIPP13_cl_device_idEEvT_S8_St20forward_iterator_tag:
.LFB3895:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8distanceIPP13_cl_device_idENSt15iterator_traitsIT_E15difference_typeES4_S4_
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIN2cl6DeviceESaIS1_EE8capacityEv
	cmpq	-16(%rbp), %rax
	setb	%al
	testb	%al, %al
	je	.L917
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EE20_M_allocate_and_copyIPP13_cl_device_idEEPS1_mT_S9_
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPN2cl6DeviceES1_EvT_S3_RSaIT0_E
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$4, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE13_M_deallocateEPS1_m
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$4, %rdx
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 16(%rax)
	jmp	.L916
.L917:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIN2cl6DeviceESaIS1_EE4sizeEv
	cmpq	-16(%rbp), %rax
	setnb	%al
	testb	%al, %al
	je	.L919
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIPP13_cl_device_idPN2cl6DeviceEET0_T_S7_S6_
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2cl6DeviceESaIS1_EE15_M_erase_at_endEPS1_
	jmp	.L916
.L919:
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIN2cl6DeviceESaIS1_EE4sizeEv
	movq	%rax, %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt7advanceIPP13_cl_device_idmEvRT_T0_
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIPP13_cl_device_idPN2cl6DeviceEET0_T_S7_S6_
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	call	_ZSt22__uninitialized_copy_aIPP13_cl_device_idPN2cl6DeviceES4_ET0_T_S7_S6_RSaIT1_E
	movq	-40(%rbp), %rdx
	movq	%rax, 8(%rdx)
.L916:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3895:
	.size	_ZNSt6vectorIN2cl6DeviceESaIS1_EE13_M_assign_auxIPP13_cl_device_idEEvT_S8_St20forward_iterator_tag, .-_ZNSt6vectorIN2cl6DeviceESaIS1_EE13_M_assign_auxIPP13_cl_device_idEEvT_S8_St20forward_iterator_tag
	.section	.text._ZNSt6vectorIN2cl8PlatformESaIS1_EE13_M_assign_auxIPP15_cl_platform_idEEvT_S8_St20forward_iterator_tag,"axG",@progbits,_ZNSt6vectorIN2cl8PlatformESaIS1_EE13_M_assign_auxIPP15_cl_platform_idEEvT_S8_St20forward_iterator_tag,comdat
	.align 2
	.weak	_ZNSt6vectorIN2cl8PlatformESaIS1_EE13_M_assign_auxIPP15_cl_platform_idEEvT_S8_St20forward_iterator_tag
	.type	_ZNSt6vectorIN2cl8PlatformESaIS1_EE13_M_assign_auxIPP15_cl_platform_idEEvT_S8_St20forward_iterator_tag, @function
_ZNSt6vectorIN2cl8PlatformESaIS1_EE13_M_assign_auxIPP15_cl_platform_idEEvT_S8_St20forward_iterator_tag:
.LFB3897:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8distanceIPP15_cl_platform_idENSt15iterator_traitsIT_E15difference_typeES4_S4_
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIN2cl8PlatformESaIS1_EE8capacityEv
	cmpq	-16(%rbp), %rax
	setb	%al
	testb	%al, %al
	je	.L921
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2cl8PlatformESaIS1_EE20_M_allocate_and_copyIPP15_cl_platform_idEEPS1_mT_S9_
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPN2cl8PlatformES1_EvT_S3_RSaIT0_E
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE13_M_deallocateEPS1_m
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 16(%rax)
	jmp	.L920
.L921:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIN2cl8PlatformESaIS1_EE4sizeEv
	cmpq	-16(%rbp), %rax
	setnb	%al
	testb	%al, %al
	je	.L923
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIPP15_cl_platform_idPN2cl8PlatformEET0_T_S7_S6_
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2cl8PlatformESaIS1_EE15_M_erase_at_endEPS1_
	jmp	.L920
.L923:
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIN2cl8PlatformESaIS1_EE4sizeEv
	movq	%rax, %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt7advanceIPP15_cl_platform_idmEvRT_T0_
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIPP15_cl_platform_idPN2cl8PlatformEET0_T_S7_S6_
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	call	_ZSt22__uninitialized_copy_aIPP15_cl_platform_idPN2cl8PlatformES4_ET0_T_S7_S6_RSaIT1_E
	movq	-40(%rbp), %rdx
	movq	%rax, 8(%rdx)
.L920:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3897:
	.size	_ZNSt6vectorIN2cl8PlatformESaIS1_EE13_M_assign_auxIPP15_cl_platform_idEEvT_S8_St20forward_iterator_tag, .-_ZNSt6vectorIN2cl8PlatformESaIS1_EE13_M_assign_auxIPP15_cl_platform_idEEvT_S8_St20forward_iterator_tag
	.section	.text._ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE12_Vector_implC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE12_Vector_implC2Ev
	.type	_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE12_Vector_implC2Ev, @function
_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE12_Vector_implC2Ev:
.LFB3899:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIN2cl8PlatformEEC2Ev
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3899:
	.size	_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE12_Vector_implC2Ev, .-_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE12_Vector_implC2Ev
	.weak	_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE12_Vector_implC1Ev
	.set	_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE12_Vector_implC1Ev,_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE12_Vector_implC2Ev
	.section	.text._ZNSaIN2cl8PlatformEED2Ev,"axG",@progbits,_ZNSaIN2cl8PlatformEED5Ev,comdat
	.align 2
	.weak	_ZNSaIN2cl8PlatformEED2Ev
	.type	_ZNSaIN2cl8PlatformEED2Ev, @function
_ZNSaIN2cl8PlatformEED2Ev:
.LFB3902:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIN2cl8PlatformEED2Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3902:
	.size	_ZNSaIN2cl8PlatformEED2Ev, .-_ZNSaIN2cl8PlatformEED2Ev
	.weak	_ZNSaIN2cl8PlatformEED1Ev
	.set	_ZNSaIN2cl8PlatformEED1Ev,_ZNSaIN2cl8PlatformEED2Ev
	.section	.text._ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE13_M_deallocateEPS1_m,"axG",@progbits,_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE13_M_deallocateEPS1_m,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE13_M_deallocateEPS1_m
	.type	_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE13_M_deallocateEPS1_m, @function
_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE13_M_deallocateEPS1_m:
.LFB3904:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L927
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIN2cl8PlatformEE10deallocateEPS2_m
.L927:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3904:
	.size	_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE13_M_deallocateEPS1_m, .-_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE13_M_deallocateEPS1_m
	.section	.text._ZSt8_DestroyIPN2cl8PlatformEEvT_S3_,"axG",@progbits,_ZSt8_DestroyIPN2cl8PlatformEEvT_S3_,comdat
	.weak	_ZSt8_DestroyIPN2cl8PlatformEEvT_S3_
	.type	_ZSt8_DestroyIPN2cl8PlatformEEvT_S3_, @function
_ZSt8_DestroyIPN2cl8PlatformEEvT_S3_:
.LFB3905:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Destroy_auxILb0EE9__destroyIPN2cl8PlatformEEEvT_S5_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3905:
	.size	_ZSt8_DestroyIPN2cl8PlatformEEvT_S3_, .-_ZSt8_DestroyIPN2cl8PlatformEEvT_S3_
	.section	.text._ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE12_Vector_implC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE12_Vector_implC2Ev
	.type	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE12_Vector_implC2Ev, @function
_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE12_Vector_implC2Ev:
.LFB3907:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIN2cl6DeviceEEC2Ev
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3907:
	.size	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE12_Vector_implC2Ev, .-_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE12_Vector_implC2Ev
	.weak	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE12_Vector_implC1Ev
	.set	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE12_Vector_implC1Ev,_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE12_Vector_implC2Ev
	.section	.text._ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE13_M_deallocateEPS1_m,"axG",@progbits,_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE13_M_deallocateEPS1_m,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE13_M_deallocateEPS1_m
	.type	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE13_M_deallocateEPS1_m, @function
_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE13_M_deallocateEPS1_m:
.LFB3909:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L931
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEE10deallocateEPS2_m
.L931:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3909:
	.size	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE13_M_deallocateEPS1_m, .-_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE13_M_deallocateEPS1_m
	.section	.text._ZSt8_DestroyIPN2cl6DeviceEEvT_S3_,"axG",@progbits,_ZSt8_DestroyIPN2cl6DeviceEEvT_S3_,comdat
	.weak	_ZSt8_DestroyIPN2cl6DeviceEEvT_S3_
	.type	_ZSt8_DestroyIPN2cl6DeviceEEvT_S3_, @function
_ZSt8_DestroyIPN2cl6DeviceEEvT_S3_:
.LFB3910:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Destroy_auxILb0EE9__destroyIPN2cl6DeviceEEEvT_S5_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3910:
	.size	_ZSt8_DestroyIPN2cl6DeviceEEvT_S3_, .-_ZSt8_DestroyIPN2cl6DeviceEEvT_S3_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPKN2cl5EventESt6vectorIS2_SaIS2_EEEC2ERKS4_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPKN2cl5EventESt6vectorIS2_SaIS2_EEEC5ERKS4_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKN2cl5EventESt6vectorIS2_SaIS2_EEEC2ERKS4_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPKN2cl5EventESt6vectorIS2_SaIS2_EEEC2ERKS4_, @function
_ZN9__gnu_cxx17__normal_iteratorIPKN2cl5EventESt6vectorIS2_SaIS2_EEEC2ERKS4_:
.LFB3917:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3917:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPKN2cl5EventESt6vectorIS2_SaIS2_EEEC2ERKS4_, .-_ZN9__gnu_cxx17__normal_iteratorIPKN2cl5EventESt6vectorIS2_SaIS2_EEEC2ERKS4_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKN2cl5EventESt6vectorIS2_SaIS2_EEEC1ERKS4_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPKN2cl5EventESt6vectorIS2_SaIS2_EEEC1ERKS4_,_ZN9__gnu_cxx17__normal_iteratorIPKN2cl5EventESt6vectorIS2_SaIS2_EEEC2ERKS4_
	.section	.text._ZNSs16_S_construct_auxISt19istreambuf_iteratorIcSt11char_traitsIcEEEEPcT_S5_RKSaIcESt12__false_type,"axG",@progbits,_ZNSs16_S_construct_auxISt19istreambuf_iteratorIcSt11char_traitsIcEEEEPcT_S5_RKSaIcESt12__false_type,comdat
	.weak	_ZNSs16_S_construct_auxISt19istreambuf_iteratorIcSt11char_traitsIcEEEEPcT_S5_RKSaIcESt12__false_type
	.type	_ZNSs16_S_construct_auxISt19istreambuf_iteratorIcSt11char_traitsIcEEEEPcT_S5_RKSaIcESt12__false_type, @function
_ZNSs16_S_construct_auxISt19istreambuf_iteratorIcSt11char_traitsIcEEEEPcT_S5_RKSaIcESt12__false_type:
.LFB3997:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, %rax
	movq	%rsi, %r9
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%r9, %rdi
	movq	%rsi, -32(%rbp)
	movq	%rdi, -24(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -56(%rbp)
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movb	%r10b, (%rsp)
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	_ZNSs12_S_constructISt19istreambuf_iteratorIcSt11char_traitsIcEEEEPcT_S5_RKSaIcESt18input_iterator_tag
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3997:
	.size	_ZNSs16_S_construct_auxISt19istreambuf_iteratorIcSt11char_traitsIcEEEEPcT_S5_RKSaIcESt12__false_type, .-_ZNSs16_S_construct_auxISt19istreambuf_iteratorIcSt11char_traitsIcEEEEPcT_S5_RKSaIcESt12__false_type
	.section	.text._ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE12_Vector_implC2ERKS4_,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE12_Vector_implC5ERKS4_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE12_Vector_implC2ERKS4_
	.type	_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE12_Vector_implC2ERKS4_, @function
_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE12_Vector_implC2ERKS4_:
.LFB3999:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaISt4pairIPKcmEEC2ERKS3_
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3999:
	.size	_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE12_Vector_implC2ERKS4_, .-_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE12_Vector_implC2ERKS4_
	.weak	_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE12_Vector_implC1ERKS4_
	.set	_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE12_Vector_implC1ERKS4_,_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE12_Vector_implC2ERKS4_
	.section	.text._ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE17_M_create_storageEm,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE17_M_create_storageEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE17_M_create_storageEm
	.type	_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE17_M_create_storageEm, @function
_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE17_M_create_storageEm:
.LFB4001:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE11_M_allocateEm
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$4, %rdx
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4001:
	.size	_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE17_M_create_storageEm, .-_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE17_M_create_storageEm
	.section	.text._ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE13_M_deallocateEPS3_m,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE13_M_deallocateEPS3_m,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE13_M_deallocateEPS3_m
	.type	_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE13_M_deallocateEPS3_m, @function
_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE13_M_deallocateEPS3_m:
.LFB4002:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L939
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEE10deallocateEPS4_m
.L939:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4002:
	.size	_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE13_M_deallocateEPS3_m, .-_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE13_M_deallocateEPS3_m
	.section	.text._ZSt24__uninitialized_fill_n_aIPSt4pairIPKcmEmS3_S3_EvT_T0_RKT1_RSaIT2_E,"axG",@progbits,_ZSt24__uninitialized_fill_n_aIPSt4pairIPKcmEmS3_S3_EvT_T0_RKT1_RSaIT2_E,comdat
	.weak	_ZSt24__uninitialized_fill_n_aIPSt4pairIPKcmEmS3_S3_EvT_T0_RKT1_RSaIT2_E
	.type	_ZSt24__uninitialized_fill_n_aIPSt4pairIPKcmEmS3_S3_EvT_T0_RKT1_RSaIT2_E, @function
_ZSt24__uninitialized_fill_n_aIPSt4pairIPKcmEmS3_S3_EvT_T0_RKT1_RSaIT2_E:
.LFB4003:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt20uninitialized_fill_nIPSt4pairIPKcmEmS3_EvT_T0_RKT1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4003:
	.size	_ZSt24__uninitialized_fill_n_aIPSt4pairIPKcmEmS3_S3_EvT_T0_RKT1_RSaIT2_E, .-_ZSt24__uninitialized_fill_n_aIPSt4pairIPKcmEmS3_S3_EvT_T0_RKT1_RSaIT2_E
	.section	.text._ZSt8_DestroyIPSt4pairIPKcmEEvT_S5_,"axG",@progbits,_ZSt8_DestroyIPSt4pairIPKcmEEvT_S5_,comdat
	.weak	_ZSt8_DestroyIPSt4pairIPKcmEEvT_S5_
	.type	_ZSt8_DestroyIPSt4pairIPKcmEEvT_S5_, @function
_ZSt8_DestroyIPSt4pairIPKcmEEvT_S5_:
.LFB4004:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIPKcmEEEvT_S7_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4004:
	.size	_ZSt8_DestroyIPSt4pairIPKcmEEvT_S5_, .-_ZSt8_DestroyIPSt4pairIPKcmEEvT_S5_
	.section	.text._ZN2cl6detail7getInfoIPFiP13_cl_device_idjmPvPmES3_SsEEiT_RKT0_jPT1_,"axG",@progbits,_ZN2cl6detail7getInfoIPFiP13_cl_device_idjmPvPmES3_SsEEiT_RKT0_jPT1_,comdat
	.weak	_ZN2cl6detail7getInfoIPFiP13_cl_device_idjmPvPmES3_SsEEiT_RKT0_jPT1_
	.type	_ZN2cl6detail7getInfoIPFiP13_cl_device_idjmPvPmES3_SsEEiT_RKT0_jPT1_, @function
_ZN2cl6detail7getInfoIPFiP13_cl_device_idjmPvPmES3_SsEEiT_RKT0_jPT1_:
.LFB4007:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rcx
	movl	-36(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	_ZN2cl6detail13getInfoHelperINS0_15GetInfoFunctor0IPFiP13_cl_device_idjmPvPmES4_EEEEiT_jPSsl
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4007:
	.size	_ZN2cl6detail7getInfoIPFiP13_cl_device_idjmPvPmES3_SsEEiT_RKT0_jPT1_, .-_ZN2cl6detail7getInfoIPFiP13_cl_device_idjmPvPmES3_SsEEiT_RKT0_jPT1_
	.section	.text._ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE12_Vector_implC2ERKS2_,"axG",@progbits,_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE12_Vector_implC5ERKS2_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE12_Vector_implC2ERKS2_
	.type	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE12_Vector_implC2ERKS2_, @function
_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE12_Vector_implC2ERKS2_:
.LFB4009:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaIN2cl6DeviceEEC2ERKS1_
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4009:
	.size	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE12_Vector_implC2ERKS2_, .-_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE12_Vector_implC2ERKS2_
	.weak	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE12_Vector_implC1ERKS2_
	.set	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE12_Vector_implC1ERKS2_,_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE12_Vector_implC2ERKS2_
	.section	.text._ZSt8distanceIPKN2cl6DeviceEENSt15iterator_traitsIT_E15difference_typeES5_S5_,"axG",@progbits,_ZSt8distanceIPKN2cl6DeviceEENSt15iterator_traitsIT_E15difference_typeES5_S5_,comdat
	.weak	_ZSt8distanceIPKN2cl6DeviceEENSt15iterator_traitsIT_E15difference_typeES5_S5_
	.type	_ZSt8distanceIPKN2cl6DeviceEENSt15iterator_traitsIT_E15difference_typeES5_S5_, @function
_ZSt8distanceIPKN2cl6DeviceEENSt15iterator_traitsIT_E15difference_typeES5_S5_:
.LFB4011:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt19__iterator_categoryIPKN2cl6DeviceEENSt15iterator_traitsIT_E17iterator_categoryERKS5_
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movb	%bl, (%rsp)
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt10__distanceIPKN2cl6DeviceEENSt15iterator_traitsIT_E15difference_typeES5_S5_St26random_access_iterator_tag
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4011:
	.size	_ZSt8distanceIPKN2cl6DeviceEENSt15iterator_traitsIT_E15difference_typeES5_S5_, .-_ZSt8distanceIPKN2cl6DeviceEENSt15iterator_traitsIT_E15difference_typeES5_S5_
	.section	.text._ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE11_M_allocateEm
	.type	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE11_M_allocateEm, @function
_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE11_M_allocateEm:
.LFB4012:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L949
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEE8allocateEmPKv
	jmp	.L950
.L949:
	movl	$0, %eax
.L950:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4012:
	.size	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE11_M_allocateEm, .-_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE11_M_allocateEm
	.section	.text._ZSt22__uninitialized_copy_aIPKN2cl6DeviceEPS1_S1_ET0_T_S6_S5_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aIPKN2cl6DeviceEPS1_S1_ET0_T_S6_S5_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aIPKN2cl6DeviceEPS1_S1_ET0_T_S6_S5_RSaIT1_E
	.type	_ZSt22__uninitialized_copy_aIPKN2cl6DeviceEPS1_S1_ET0_T_S6_S5_RSaIT1_E, @function
_ZSt22__uninitialized_copy_aIPKN2cl6DeviceEPS1_S1_ET0_T_S6_S5_RSaIT1_E:
.LFB4013:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt18uninitialized_copyIPKN2cl6DeviceEPS1_ET0_T_S6_S5_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4013:
	.size	_ZSt22__uninitialized_copy_aIPKN2cl6DeviceEPS1_S1_ET0_T_S6_S5_RSaIT1_E, .-_ZSt22__uninitialized_copy_aIPKN2cl6DeviceEPS1_S1_ET0_T_S6_S5_RSaIT1_E
	.section	.text._ZNSt16allocator_traitsISaIN2cl6DeviceEEE37select_on_container_copy_constructionERKS2_,"axG",@progbits,_ZNSt16allocator_traitsISaIN2cl6DeviceEEE37select_on_container_copy_constructionERKS2_,comdat
	.weak	_ZNSt16allocator_traitsISaIN2cl6DeviceEEE37select_on_container_copy_constructionERKS2_
	.type	_ZNSt16allocator_traitsISaIN2cl6DeviceEEE37select_on_container_copy_constructionERKS2_, @function
_ZNSt16allocator_traitsISaIN2cl6DeviceEEE37select_on_container_copy_constructionERKS2_:
.LFB4014:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIN2cl6DeviceEEE9_S_selectIKS2_EENSt9enable_ifIXntsrNS3_15__select_helperIT_EE5valueES8_E4typeERS8_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4014:
	.size	_ZNSt16allocator_traitsISaIN2cl6DeviceEEE37select_on_container_copy_constructionERKS2_, .-_ZNSt16allocator_traitsISaIN2cl6DeviceEEE37select_on_container_copy_constructionERKS2_
	.section	.text._ZNSaIN2cl6DeviceEEC2ERKS1_,"axG",@progbits,_ZNSaIN2cl6DeviceEEC5ERKS1_,comdat
	.align 2
	.weak	_ZNSaIN2cl6DeviceEEC2ERKS1_
	.type	_ZNSaIN2cl6DeviceEEC2ERKS1_, @function
_ZNSaIN2cl6DeviceEEC2ERKS1_:
.LFB4016:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEEC2ERKS3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4016:
	.size	_ZNSaIN2cl6DeviceEEC2ERKS1_, .-_ZNSaIN2cl6DeviceEEC2ERKS1_
	.weak	_ZNSaIN2cl6DeviceEEC1ERKS1_
	.set	_ZNSaIN2cl6DeviceEEC1ERKS1_,_ZNSaIN2cl6DeviceEEC2ERKS1_
	.section	.text._ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE17_M_create_storageEm,"axG",@progbits,_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE17_M_create_storageEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE17_M_create_storageEm
	.type	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE17_M_create_storageEm, @function
_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE17_M_create_storageEm:
.LFB4018:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE11_M_allocateEm
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$4, %rdx
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4018:
	.size	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE17_M_create_storageEm, .-_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE17_M_create_storageEm
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS2_SaIS2_EEEC2ERKS4_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS2_SaIS2_EEEC5ERKS4_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS2_SaIS2_EEEC2ERKS4_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS2_SaIS2_EEEC2ERKS4_, @function
_ZN9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS2_SaIS2_EEEC2ERKS4_:
.LFB4020:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4020:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS2_SaIS2_EEEC2ERKS4_, .-_ZN9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS2_SaIS2_EEEC2ERKS4_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS2_SaIS2_EEEC1ERKS4_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS2_SaIS2_EEEC1ERKS4_,_ZN9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS2_SaIS2_EEEC2ERKS4_
	.section	.text._ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_,"axG",@progbits,_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_,comdat
	.weak	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_
	.type	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_, @function
_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_:
.LFB4022:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4022:
	.size	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_, .-_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_
	.section	.text._ZSt8distanceIPP13_cl_device_idENSt15iterator_traitsIT_E15difference_typeES4_S4_,"axG",@progbits,_ZSt8distanceIPP13_cl_device_idENSt15iterator_traitsIT_E15difference_typeES4_S4_,comdat
	.weak	_ZSt8distanceIPP13_cl_device_idENSt15iterator_traitsIT_E15difference_typeES4_S4_
	.type	_ZSt8distanceIPP13_cl_device_idENSt15iterator_traitsIT_E15difference_typeES4_S4_, @function
_ZSt8distanceIPP13_cl_device_idENSt15iterator_traitsIT_E15difference_typeES4_S4_:
.LFB4025:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt19__iterator_categoryIPP13_cl_device_idENSt15iterator_traitsIT_E17iterator_categoryERKS4_
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movb	%bl, (%rsp)
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt10__distanceIPP13_cl_device_idENSt15iterator_traitsIT_E15difference_typeES4_S4_St26random_access_iterator_tag
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4025:
	.size	_ZSt8distanceIPP13_cl_device_idENSt15iterator_traitsIT_E15difference_typeES4_S4_, .-_ZSt8distanceIPP13_cl_device_idENSt15iterator_traitsIT_E15difference_typeES4_S4_
	.section	.text._ZNKSt6vectorIN2cl6DeviceESaIS1_EE8capacityEv,"axG",@progbits,_ZNKSt6vectorIN2cl6DeviceESaIS1_EE8capacityEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIN2cl6DeviceESaIS1_EE8capacityEv
	.type	_ZNKSt6vectorIN2cl6DeviceESaIS1_EE8capacityEv, @function
_ZNKSt6vectorIN2cl6DeviceESaIS1_EE8capacityEv:
.LFB4026:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$4, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4026:
	.size	_ZNKSt6vectorIN2cl6DeviceESaIS1_EE8capacityEv, .-_ZNKSt6vectorIN2cl6DeviceESaIS1_EE8capacityEv
	.section	.text._ZNSt6vectorIN2cl6DeviceESaIS1_EE20_M_allocate_and_copyIPP13_cl_device_idEEPS1_mT_S9_,"axG",@progbits,_ZNSt6vectorIN2cl6DeviceESaIS1_EE20_M_allocate_and_copyIPP13_cl_device_idEEPS1_mT_S9_,comdat
	.align 2
	.weak	_ZNSt6vectorIN2cl6DeviceESaIS1_EE20_M_allocate_and_copyIPP13_cl_device_idEEPS1_mT_S9_
	.type	_ZNSt6vectorIN2cl6DeviceESaIS1_EE20_M_allocate_and_copyIPP13_cl_device_idEEPS1_mT_S9_, @function
_ZNSt6vectorIN2cl6DeviceESaIS1_EE20_M_allocate_and_copyIPP13_cl_device_idEEPS1_mT_S9_:
.LFB4027:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA4027
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB323:
	call	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE11_M_allocateEm
.LEHE323:
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
.LEHB324:
	call	_ZSt22__uninitialized_copy_aIPP13_cl_device_idPN2cl6DeviceES4_ET0_T_S7_S6_RSaIT1_E
.LEHE324:
	movq	-24(%rbp), %rax
	jmp	.L971
.L970:
	movq	%rax, %rbx
	call	__cxa_end_catch
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB325:
	call	_Unwind_Resume
.LEHE325:
.L969:
	movq	%rax, %rdi
	call	__cxa_begin_catch
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE13_M_deallocateEPS1_m
.LEHB326:
	call	__cxa_rethrow
.LEHE326:
.L971:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4027:
	.section	.gcc_except_table
	.align 4
.LLSDA4027:
	.byte	0xff
	.byte	0x3
	.uleb128 .LLSDATT4027-.LLSDATTD4027
.LLSDATTD4027:
	.byte	0x1
	.uleb128 .LLSDACSE4027-.LLSDACSB4027
.LLSDACSB4027:
	.uleb128 .LEHB323-.LFB4027
	.uleb128 .LEHE323-.LEHB323
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB324-.LFB4027
	.uleb128 .LEHE324-.LEHB324
	.uleb128 .L969-.LFB4027
	.uleb128 0x1
	.uleb128 .LEHB325-.LFB4027
	.uleb128 .LEHE325-.LEHB325
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB326-.LFB4027
	.uleb128 .LEHE326-.LEHB326
	.uleb128 .L970-.LFB4027
	.uleb128 0
.LLSDACSE4027:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT4027:
	.section	.text._ZNSt6vectorIN2cl6DeviceESaIS1_EE20_M_allocate_and_copyIPP13_cl_device_idEEPS1_mT_S9_,"axG",@progbits,_ZNSt6vectorIN2cl6DeviceESaIS1_EE20_M_allocate_and_copyIPP13_cl_device_idEEPS1_mT_S9_,comdat
	.size	_ZNSt6vectorIN2cl6DeviceESaIS1_EE20_M_allocate_and_copyIPP13_cl_device_idEEPS1_mT_S9_, .-_ZNSt6vectorIN2cl6DeviceESaIS1_EE20_M_allocate_and_copyIPP13_cl_device_idEEPS1_mT_S9_
	.section	.text._ZNSt6vectorIN2cl6DeviceESaIS1_EE15_M_erase_at_endEPS1_,"axG",@progbits,_ZNSt6vectorIN2cl6DeviceESaIS1_EE15_M_erase_at_endEPS1_,comdat
	.align 2
	.weak	_ZNSt6vectorIN2cl6DeviceESaIS1_EE15_M_erase_at_endEPS1_
	.type	_ZNSt6vectorIN2cl6DeviceESaIS1_EE15_M_erase_at_endEPS1_, @function
_ZNSt6vectorIN2cl6DeviceESaIS1_EE15_M_erase_at_endEPS1_:
.LFB4028:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2cl6DeviceESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPN2cl6DeviceES1_EvT_S3_RSaIT0_E
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4028:
	.size	_ZNSt6vectorIN2cl6DeviceESaIS1_EE15_M_erase_at_endEPS1_, .-_ZNSt6vectorIN2cl6DeviceESaIS1_EE15_M_erase_at_endEPS1_
	.section	.text._ZSt4copyIPP13_cl_device_idPN2cl6DeviceEET0_T_S7_S6_,"axG",@progbits,_ZSt4copyIPP13_cl_device_idPN2cl6DeviceEET0_T_S7_S6_,comdat
	.weak	_ZSt4copyIPP13_cl_device_idPN2cl6DeviceEET0_T_S7_S6_
	.type	_ZSt4copyIPP13_cl_device_idPN2cl6DeviceEET0_T_S7_S6_, @function
_ZSt4copyIPP13_cl_device_idPN2cl6DeviceEET0_T_S7_S6_:
.LFB4029:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIPP13_cl_device_idENSt11_Miter_baseIT_E13iterator_typeES4_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIPP13_cl_device_idENSt11_Miter_baseIT_E13iterator_typeES4_
	movq	-40(%rbp), %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt14__copy_move_a2ILb0EPP13_cl_device_idPN2cl6DeviceEET1_T0_S7_S6_
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4029:
	.size	_ZSt4copyIPP13_cl_device_idPN2cl6DeviceEET0_T_S7_S6_, .-_ZSt4copyIPP13_cl_device_idPN2cl6DeviceEET0_T_S7_S6_
	.section	.text._ZSt7advanceIPP13_cl_device_idmEvRT_T0_,"axG",@progbits,_ZSt7advanceIPP13_cl_device_idmEvRT_T0_,comdat
	.weak	_ZSt7advanceIPP13_cl_device_idmEvRT_T0_
	.type	_ZSt7advanceIPP13_cl_device_idmEvRT_T0_, @function
_ZSt7advanceIPP13_cl_device_idmEvRT_T0_:
.LFB4030:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt19__iterator_categoryIPP13_cl_device_idENSt15iterator_traitsIT_E17iterator_categoryERKS4_
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movb	%bl, (%rsp)
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt9__advanceIPP13_cl_device_idlEvRT_T0_St26random_access_iterator_tag
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4030:
	.size	_ZSt7advanceIPP13_cl_device_idmEvRT_T0_, .-_ZSt7advanceIPP13_cl_device_idmEvRT_T0_
	.section	.text._ZSt22__uninitialized_copy_aIPP13_cl_device_idPN2cl6DeviceES4_ET0_T_S7_S6_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aIPP13_cl_device_idPN2cl6DeviceES4_ET0_T_S7_S6_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aIPP13_cl_device_idPN2cl6DeviceES4_ET0_T_S7_S6_RSaIT1_E
	.type	_ZSt22__uninitialized_copy_aIPP13_cl_device_idPN2cl6DeviceES4_ET0_T_S7_S6_RSaIT1_E, @function
_ZSt22__uninitialized_copy_aIPP13_cl_device_idPN2cl6DeviceES4_ET0_T_S7_S6_RSaIT1_E:
.LFB4031:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt18uninitialized_copyIPP13_cl_device_idPN2cl6DeviceEET0_T_S7_S6_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4031:
	.size	_ZSt22__uninitialized_copy_aIPP13_cl_device_idPN2cl6DeviceES4_ET0_T_S7_S6_RSaIT1_E, .-_ZSt22__uninitialized_copy_aIPP13_cl_device_idPN2cl6DeviceES4_ET0_T_S7_S6_RSaIT1_E
	.section	.text._ZSt8distanceIPP15_cl_platform_idENSt15iterator_traitsIT_E15difference_typeES4_S4_,"axG",@progbits,_ZSt8distanceIPP15_cl_platform_idENSt15iterator_traitsIT_E15difference_typeES4_S4_,comdat
	.weak	_ZSt8distanceIPP15_cl_platform_idENSt15iterator_traitsIT_E15difference_typeES4_S4_
	.type	_ZSt8distanceIPP15_cl_platform_idENSt15iterator_traitsIT_E15difference_typeES4_S4_, @function
_ZSt8distanceIPP15_cl_platform_idENSt15iterator_traitsIT_E15difference_typeES4_S4_:
.LFB4032:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt19__iterator_categoryIPP15_cl_platform_idENSt15iterator_traitsIT_E17iterator_categoryERKS4_
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movb	%bl, (%rsp)
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt10__distanceIPP15_cl_platform_idENSt15iterator_traitsIT_E15difference_typeES4_S4_St26random_access_iterator_tag
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4032:
	.size	_ZSt8distanceIPP15_cl_platform_idENSt15iterator_traitsIT_E15difference_typeES4_S4_, .-_ZSt8distanceIPP15_cl_platform_idENSt15iterator_traitsIT_E15difference_typeES4_S4_
	.section	.text._ZNKSt6vectorIN2cl8PlatformESaIS1_EE8capacityEv,"axG",@progbits,_ZNKSt6vectorIN2cl8PlatformESaIS1_EE8capacityEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIN2cl8PlatformESaIS1_EE8capacityEv
	.type	_ZNKSt6vectorIN2cl8PlatformESaIS1_EE8capacityEv, @function
_ZNKSt6vectorIN2cl8PlatformESaIS1_EE8capacityEv:
.LFB4033:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4033:
	.size	_ZNKSt6vectorIN2cl8PlatformESaIS1_EE8capacityEv, .-_ZNKSt6vectorIN2cl8PlatformESaIS1_EE8capacityEv
	.section	.text._ZNSt6vectorIN2cl8PlatformESaIS1_EE20_M_allocate_and_copyIPP15_cl_platform_idEEPS1_mT_S9_,"axG",@progbits,_ZNSt6vectorIN2cl8PlatformESaIS1_EE20_M_allocate_and_copyIPP15_cl_platform_idEEPS1_mT_S9_,comdat
	.align 2
	.weak	_ZNSt6vectorIN2cl8PlatformESaIS1_EE20_M_allocate_and_copyIPP15_cl_platform_idEEPS1_mT_S9_
	.type	_ZNSt6vectorIN2cl8PlatformESaIS1_EE20_M_allocate_and_copyIPP15_cl_platform_idEEPS1_mT_S9_, @function
_ZNSt6vectorIN2cl8PlatformESaIS1_EE20_M_allocate_and_copyIPP15_cl_platform_idEEPS1_mT_S9_:
.LFB4034:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA4034
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB327:
	call	_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE11_M_allocateEm
.LEHE327:
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
.LEHB328:
	call	_ZSt22__uninitialized_copy_aIPP15_cl_platform_idPN2cl8PlatformES4_ET0_T_S7_S6_RSaIT1_E
.LEHE328:
	movq	-24(%rbp), %rax
	jmp	.L988
.L987:
	movq	%rax, %rbx
	call	__cxa_end_catch
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB329:
	call	_Unwind_Resume
.LEHE329:
.L986:
	movq	%rax, %rdi
	call	__cxa_begin_catch
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE13_M_deallocateEPS1_m
.LEHB330:
	call	__cxa_rethrow
.LEHE330:
.L988:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4034:
	.section	.gcc_except_table
	.align 4
.LLSDA4034:
	.byte	0xff
	.byte	0x3
	.uleb128 .LLSDATT4034-.LLSDATTD4034
.LLSDATTD4034:
	.byte	0x1
	.uleb128 .LLSDACSE4034-.LLSDACSB4034
.LLSDACSB4034:
	.uleb128 .LEHB327-.LFB4034
	.uleb128 .LEHE327-.LEHB327
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB328-.LFB4034
	.uleb128 .LEHE328-.LEHB328
	.uleb128 .L986-.LFB4034
	.uleb128 0x1
	.uleb128 .LEHB329-.LFB4034
	.uleb128 .LEHE329-.LEHB329
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB330-.LFB4034
	.uleb128 .LEHE330-.LEHB330
	.uleb128 .L987-.LFB4034
	.uleb128 0
.LLSDACSE4034:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT4034:
	.section	.text._ZNSt6vectorIN2cl8PlatformESaIS1_EE20_M_allocate_and_copyIPP15_cl_platform_idEEPS1_mT_S9_,"axG",@progbits,_ZNSt6vectorIN2cl8PlatformESaIS1_EE20_M_allocate_and_copyIPP15_cl_platform_idEEPS1_mT_S9_,comdat
	.size	_ZNSt6vectorIN2cl8PlatformESaIS1_EE20_M_allocate_and_copyIPP15_cl_platform_idEEPS1_mT_S9_, .-_ZNSt6vectorIN2cl8PlatformESaIS1_EE20_M_allocate_and_copyIPP15_cl_platform_idEEPS1_mT_S9_
	.section	.text._ZNSt6vectorIN2cl8PlatformESaIS1_EE15_M_erase_at_endEPS1_,"axG",@progbits,_ZNSt6vectorIN2cl8PlatformESaIS1_EE15_M_erase_at_endEPS1_,comdat
	.align 2
	.weak	_ZNSt6vectorIN2cl8PlatformESaIS1_EE15_M_erase_at_endEPS1_
	.type	_ZNSt6vectorIN2cl8PlatformESaIS1_EE15_M_erase_at_endEPS1_, @function
_ZNSt6vectorIN2cl8PlatformESaIS1_EE15_M_erase_at_endEPS1_:
.LFB4035:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPN2cl8PlatformES1_EvT_S3_RSaIT0_E
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4035:
	.size	_ZNSt6vectorIN2cl8PlatformESaIS1_EE15_M_erase_at_endEPS1_, .-_ZNSt6vectorIN2cl8PlatformESaIS1_EE15_M_erase_at_endEPS1_
	.section	.text._ZSt4copyIPP15_cl_platform_idPN2cl8PlatformEET0_T_S7_S6_,"axG",@progbits,_ZSt4copyIPP15_cl_platform_idPN2cl8PlatformEET0_T_S7_S6_,comdat
	.weak	_ZSt4copyIPP15_cl_platform_idPN2cl8PlatformEET0_T_S7_S6_
	.type	_ZSt4copyIPP15_cl_platform_idPN2cl8PlatformEET0_T_S7_S6_, @function
_ZSt4copyIPP15_cl_platform_idPN2cl8PlatformEET0_T_S7_S6_:
.LFB4036:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIPP15_cl_platform_idENSt11_Miter_baseIT_E13iterator_typeES4_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIPP15_cl_platform_idENSt11_Miter_baseIT_E13iterator_typeES4_
	movq	-40(%rbp), %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt14__copy_move_a2ILb0EPP15_cl_platform_idPN2cl8PlatformEET1_T0_S7_S6_
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4036:
	.size	_ZSt4copyIPP15_cl_platform_idPN2cl8PlatformEET0_T_S7_S6_, .-_ZSt4copyIPP15_cl_platform_idPN2cl8PlatformEET0_T_S7_S6_
	.section	.text._ZSt7advanceIPP15_cl_platform_idmEvRT_T0_,"axG",@progbits,_ZSt7advanceIPP15_cl_platform_idmEvRT_T0_,comdat
	.weak	_ZSt7advanceIPP15_cl_platform_idmEvRT_T0_
	.type	_ZSt7advanceIPP15_cl_platform_idmEvRT_T0_, @function
_ZSt7advanceIPP15_cl_platform_idmEvRT_T0_:
.LFB4037:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt19__iterator_categoryIPP15_cl_platform_idENSt15iterator_traitsIT_E17iterator_categoryERKS4_
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movb	%bl, (%rsp)
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt9__advanceIPP15_cl_platform_idlEvRT_T0_St26random_access_iterator_tag
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4037:
	.size	_ZSt7advanceIPP15_cl_platform_idmEvRT_T0_, .-_ZSt7advanceIPP15_cl_platform_idmEvRT_T0_
	.section	.text._ZSt22__uninitialized_copy_aIPP15_cl_platform_idPN2cl8PlatformES4_ET0_T_S7_S6_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aIPP15_cl_platform_idPN2cl8PlatformES4_ET0_T_S7_S6_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aIPP15_cl_platform_idPN2cl8PlatformES4_ET0_T_S7_S6_RSaIT1_E
	.type	_ZSt22__uninitialized_copy_aIPP15_cl_platform_idPN2cl8PlatformES4_ET0_T_S7_S6_RSaIT1_E, @function
_ZSt22__uninitialized_copy_aIPP15_cl_platform_idPN2cl8PlatformES4_ET0_T_S7_S6_RSaIT1_E:
.LFB4038:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt18uninitialized_copyIPP15_cl_platform_idPN2cl8PlatformEET0_T_S7_S6_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4038:
	.size	_ZSt22__uninitialized_copy_aIPP15_cl_platform_idPN2cl8PlatformES4_ET0_T_S7_S6_RSaIT1_E, .-_ZSt22__uninitialized_copy_aIPP15_cl_platform_idPN2cl8PlatformES4_ET0_T_S7_S6_RSaIT1_E
	.section	.text._ZNSaIN2cl8PlatformEEC2Ev,"axG",@progbits,_ZNSaIN2cl8PlatformEEC5Ev,comdat
	.align 2
	.weak	_ZNSaIN2cl8PlatformEEC2Ev
	.type	_ZNSaIN2cl8PlatformEEC2Ev, @function
_ZNSaIN2cl8PlatformEEC2Ev:
.LFB4040:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIN2cl8PlatformEEC2Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4040:
	.size	_ZNSaIN2cl8PlatformEEC2Ev, .-_ZNSaIN2cl8PlatformEEC2Ev
	.weak	_ZNSaIN2cl8PlatformEEC1Ev
	.set	_ZNSaIN2cl8PlatformEEC1Ev,_ZNSaIN2cl8PlatformEEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorIN2cl8PlatformEED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIN2cl8PlatformEED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIN2cl8PlatformEED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIN2cl8PlatformEED2Ev, @function
_ZN9__gnu_cxx13new_allocatorIN2cl8PlatformEED2Ev:
.LFB4043:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4043:
	.size	_ZN9__gnu_cxx13new_allocatorIN2cl8PlatformEED2Ev, .-_ZN9__gnu_cxx13new_allocatorIN2cl8PlatformEED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIN2cl8PlatformEED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIN2cl8PlatformEED1Ev,_ZN9__gnu_cxx13new_allocatorIN2cl8PlatformEED2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorIN2cl8PlatformEE10deallocateEPS2_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIN2cl8PlatformEE10deallocateEPS2_m,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIN2cl8PlatformEE10deallocateEPS2_m
	.type	_ZN9__gnu_cxx13new_allocatorIN2cl8PlatformEE10deallocateEPS2_m, @function
_ZN9__gnu_cxx13new_allocatorIN2cl8PlatformEE10deallocateEPS2_m:
.LFB4045:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4045:
	.size	_ZN9__gnu_cxx13new_allocatorIN2cl8PlatformEE10deallocateEPS2_m, .-_ZN9__gnu_cxx13new_allocatorIN2cl8PlatformEE10deallocateEPS2_m
	.section	.text._ZNSt12_Destroy_auxILb0EE9__destroyIPN2cl8PlatformEEEvT_S5_,"axG",@progbits,_ZNSt12_Destroy_auxILb0EE9__destroyIPN2cl8PlatformEEEvT_S5_,comdat
	.weak	_ZNSt12_Destroy_auxILb0EE9__destroyIPN2cl8PlatformEEEvT_S5_
	.type	_ZNSt12_Destroy_auxILb0EE9__destroyIPN2cl8PlatformEEEvT_S5_, @function
_ZNSt12_Destroy_auxILb0EE9__destroyIPN2cl8PlatformEEEvT_S5_:
.LFB4046:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	jmp	.L1000
.L1001:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofIN2cl8PlatformEEPT_RS2_
	movq	%rax, %rdi
	call	_ZSt8_DestroyIN2cl8PlatformEEvPT_
	addq	$8, -8(%rbp)
.L1000:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.L1001
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4046:
	.size	_ZNSt12_Destroy_auxILb0EE9__destroyIPN2cl8PlatformEEEvT_S5_, .-_ZNSt12_Destroy_auxILb0EE9__destroyIPN2cl8PlatformEEEvT_S5_
	.section	.text._ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEE10deallocateEPS2_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEE10deallocateEPS2_m,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEE10deallocateEPS2_m
	.type	_ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEE10deallocateEPS2_m, @function
_ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEE10deallocateEPS2_m:
.LFB4047:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4047:
	.size	_ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEE10deallocateEPS2_m, .-_ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEE10deallocateEPS2_m
	.section	.text._ZNSt12_Destroy_auxILb0EE9__destroyIPN2cl6DeviceEEEvT_S5_,"axG",@progbits,_ZNSt12_Destroy_auxILb0EE9__destroyIPN2cl6DeviceEEEvT_S5_,comdat
	.weak	_ZNSt12_Destroy_auxILb0EE9__destroyIPN2cl6DeviceEEEvT_S5_
	.type	_ZNSt12_Destroy_auxILb0EE9__destroyIPN2cl6DeviceEEEvT_S5_, @function
_ZNSt12_Destroy_auxILb0EE9__destroyIPN2cl6DeviceEEEvT_S5_:
.LFB4048:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	jmp	.L1004
.L1005:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofIN2cl6DeviceEEPT_RS2_
	movq	%rax, %rdi
	call	_ZSt8_DestroyIN2cl6DeviceEEvPT_
	addq	$16, -8(%rbp)
.L1004:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.L1005
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4048:
	.size	_ZNSt12_Destroy_auxILb0EE9__destroyIPN2cl6DeviceEEEvT_S5_, .-_ZNSt12_Destroy_auxILb0EE9__destroyIPN2cl6DeviceEEEvT_S5_
	.section	.text._ZNSs12_S_constructISt19istreambuf_iteratorIcSt11char_traitsIcEEEEPcT_S5_RKSaIcESt18input_iterator_tag,"axG",@progbits,_ZNSs12_S_constructISt19istreambuf_iteratorIcSt11char_traitsIcEEEEPcT_S5_RKSaIcESt18input_iterator_tag,comdat
	.align 2
	.weak	_ZNSs12_S_constructISt19istreambuf_iteratorIcSt11char_traitsIcEEEEPcT_S5_RKSaIcESt18input_iterator_tag
	.type	_ZNSs12_S_constructISt19istreambuf_iteratorIcSt11char_traitsIcEEEEPcT_S5_RKSaIcESt18input_iterator_tag, @function
_ZNSs12_S_constructISt19istreambuf_iteratorIcSt11char_traitsIcEEEEPcT_S5_RKSaIcESt18input_iterator_tag:
.LFB4136:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA4136
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$224, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, %rax
	movq	%rsi, %r9
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%r9, %rdi
	movq	%rsi, -208(%rbp)
	movq	%rdi, -200(%rbp)
	movq	%rdx, -224(%rbp)
	movq	%rcx, -216(%rbp)
	movq	%r8, -232(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$0, %ebx
	leaq	-224(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB331:
	call	_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_
.LEHE331:
	testb	%al, %al
	je	.L1007
	leaq	-185(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	movl	$1, %ebx
	leaq	-185(%rbp), %rdx
	movq	-232(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSteqIcEbRKSaIT_ES3_
	testb	%al, %al
	je	.L1007
	movl	$1, %eax
	jmp	.L1008
.L1007:
	movl	$0, %eax
.L1008:
	movl	%eax, %r12d
	testb	%bl, %bl
	je	.L1009
	nop
	leaq	-185(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
.L1009:
	testb	%r12b, %r12b
	je	.L1010
.LEHB332:
	call	_ZNSs12_S_empty_repEv
	movq	%rax, %rdi
	call	_ZNSs4_Rep10_M_refdataEv
	jmp	.L1019
.L1010:
	movq	$0, -184(%rbp)
	jmp	.L1012
.L1015:
	movq	-184(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -184(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv
	movb	%al, -160(%rbp,%rbx)
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv
.L1012:
	leaq	-224(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_
	testb	%al, %al
	je	.L1013
	movl	$128, %eax
	cmpq	-184(%rbp), %rax
	jbe	.L1013
	movl	$1, %eax
	jmp	.L1014
.L1013:
	movl	$0, %eax
.L1014:
	testb	%al, %al
	jne	.L1015
	movq	-232(%rbp), %rdx
	movq	-184(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSs4_Rep9_S_createEmmRKSaIcE
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSs4_Rep10_M_refdataEv
	movq	-184(%rbp), %rdx
	leaq	-160(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSs7_M_copyEPcPKcm
.LEHE332:
	jmp	.L1016
.L1018:
	movq	-176(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-184(%rbp), %rax
	jne	.L1017
	movq	-184(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	-232(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
.LEHB333:
	call	_ZNSs4_Rep9_S_createEmmRKSaIcE
	movq	%rax, -168(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSs4_Rep10_M_refdataEv
	movq	%rax, %rbx
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSs4_Rep10_M_refdataEv
	movq	-184(%rbp), %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZNSs7_M_copyEPcPKcm
	movq	-232(%rbp), %rdx
	movq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSs4_Rep10_M_destroyERKSaIcE
	movq	-168(%rbp), %rax
	movq	%rax, -176(%rbp)
.L1017:
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSs4_Rep10_M_refdataEv
	movq	%rax, %rdx
	movq	-184(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -184(%rbp)
	leaq	(%rdx,%rax), %rbx
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv
	movb	%al, (%rbx)
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv
.L1016:
	leaq	-224(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_
.LEHE333:
	testb	%al, %al
	jne	.L1018
	movq	-184(%rbp), %rdx
	movq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB334:
	call	_ZNSs4_Rep26_M_set_length_and_sharableEm
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSs4_Rep10_M_refdataEv
.L1019:
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L1024
	jmp	.L1028
.L1025:
	movq	%rax, %r12
	testb	%bl, %bl
	je	.L1029
	nop
	leaq	-185(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	jmp	.L1021
.L1029:
	nop
.L1021:
	movq	%r12, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume
.LEHE334:
.L1027:
	movq	%rax, %rbx
	call	__cxa_end_catch
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB335:
	call	_Unwind_Resume
.LEHE335:
.L1026:
	movq	%rax, %rdi
	call	__cxa_begin_catch
	movq	-232(%rbp), %rdx
	movq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSs4_Rep10_M_destroyERKSaIcE
.LEHB336:
	call	__cxa_rethrow
.LEHE336:
.L1028:
	call	__stack_chk_fail
.L1024:
	addq	$224, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4136:
	.section	.gcc_except_table
	.align 4
.LLSDA4136:
	.byte	0xff
	.byte	0x3
	.uleb128 .LLSDATT4136-.LLSDATTD4136
.LLSDATTD4136:
	.byte	0x1
	.uleb128 .LLSDACSE4136-.LLSDACSB4136
.LLSDACSB4136:
	.uleb128 .LEHB331-.LFB4136
	.uleb128 .LEHE331-.LEHB331
	.uleb128 .L1025-.LFB4136
	.uleb128 0
	.uleb128 .LEHB332-.LFB4136
	.uleb128 .LEHE332-.LEHB332
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB333-.LFB4136
	.uleb128 .LEHE333-.LEHB333
	.uleb128 .L1026-.LFB4136
	.uleb128 0x1
	.uleb128 .LEHB334-.LFB4136
	.uleb128 .LEHE334-.LEHB334
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB335-.LFB4136
	.uleb128 .LEHE335-.LEHB335
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB336-.LFB4136
	.uleb128 .LEHE336-.LEHB336
	.uleb128 .L1027-.LFB4136
	.uleb128 0
.LLSDACSE4136:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT4136:
	.section	.text._ZNSs12_S_constructISt19istreambuf_iteratorIcSt11char_traitsIcEEEEPcT_S5_RKSaIcESt18input_iterator_tag,"axG",@progbits,_ZNSs12_S_constructISt19istreambuf_iteratorIcSt11char_traitsIcEEEEPcT_S5_RKSaIcESt18input_iterator_tag,comdat
	.size	_ZNSs12_S_constructISt19istreambuf_iteratorIcSt11char_traitsIcEEEEPcT_S5_RKSaIcESt18input_iterator_tag, .-_ZNSs12_S_constructISt19istreambuf_iteratorIcSt11char_traitsIcEEEEPcT_S5_RKSaIcESt18input_iterator_tag
	.section	.text._ZNSaISt4pairIPKcmEEC2ERKS3_,"axG",@progbits,_ZNSaISt4pairIPKcmEEC5ERKS3_,comdat
	.align 2
	.weak	_ZNSaISt4pairIPKcmEEC2ERKS3_
	.type	_ZNSaISt4pairIPKcmEEC2ERKS3_, @function
_ZNSaISt4pairIPKcmEEC2ERKS3_:
.LFB4138:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEEC2ERKS5_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4138:
	.size	_ZNSaISt4pairIPKcmEEC2ERKS3_, .-_ZNSaISt4pairIPKcmEEC2ERKS3_
	.weak	_ZNSaISt4pairIPKcmEEC1ERKS3_
	.set	_ZNSaISt4pairIPKcmEEC1ERKS3_,_ZNSaISt4pairIPKcmEEC2ERKS3_
	.section	.text._ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE11_M_allocateEm
	.type	_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE11_M_allocateEm, @function
_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE11_M_allocateEm:
.LFB4140:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L1032
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEE8allocateEmPKv
	jmp	.L1033
.L1032:
	movl	$0, %eax
.L1033:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4140:
	.size	_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE11_M_allocateEm, .-_ZNSt12_Vector_baseISt4pairIPKcmESaIS3_EE11_M_allocateEm
	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEE10deallocateEPS4_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEE10deallocateEPS4_m,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEE10deallocateEPS4_m
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEE10deallocateEPS4_m, @function
_ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEE10deallocateEPS4_m:
.LFB4141:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4141:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEE10deallocateEPS4_m, .-_ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEE10deallocateEPS4_m
	.section	.text._ZSt20uninitialized_fill_nIPSt4pairIPKcmEmS3_EvT_T0_RKT1_,"axG",@progbits,_ZSt20uninitialized_fill_nIPSt4pairIPKcmEmS3_EvT_T0_RKT1_,comdat
	.weak	_ZSt20uninitialized_fill_nIPSt4pairIPKcmEmS3_EvT_T0_RKT1_
	.type	_ZSt20uninitialized_fill_nIPSt4pairIPKcmEmS3_EvT_T0_RKT1_, @function
_ZSt20uninitialized_fill_nIPSt4pairIPKcmEmS3_EvT_T0_RKT1_:
.LFB4142:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt4pairIPKcmEmS5_EEvT_T0_RKT1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4142:
	.size	_ZSt20uninitialized_fill_nIPSt4pairIPKcmEmS3_EvT_T0_RKT1_, .-_ZSt20uninitialized_fill_nIPSt4pairIPKcmEmS3_EvT_T0_RKT1_
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIPKcmEEEvT_S7_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIPKcmEEEvT_S7_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIPKcmEEEvT_S7_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIPKcmEEEvT_S7_, @function
_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIPKcmEEEvT_S7_:
.LFB4143:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4143:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIPKcmEEEvT_S7_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIPSt4pairIPKcmEEEvT_S7_
	.section	.text._ZN2cl6detail13getInfoHelperINS0_15GetInfoFunctor0IPFiP13_cl_device_idjmPvPmES4_EEEEiT_jPSsl,"axG",@progbits,_ZN2cl6detail13getInfoHelperINS0_15GetInfoFunctor0IPFiP13_cl_device_idjmPvPmES4_EEEEiT_jPSsl,comdat
	.weak	_ZN2cl6detail13getInfoHelperINS0_15GetInfoFunctor0IPFiP13_cl_device_idjmPvPmES4_EEEEiT_jPSsl
	.type	_ZN2cl6detail13getInfoHelperINS0_15GetInfoFunctor0IPFiP13_cl_device_idjmPvPmES4_EEEEiT_jPSsl, @function
_ZN2cl6detail13getInfoHelperINS0_15GetInfoFunctor0IPFiP13_cl_device_idjmPvPmES4_EEEEiT_jPSsl:
.LFB4144:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, %rax
	movq	%rsi, %r9
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%r9, %rdi
	movq	%rsi, -64(%rbp)
	movq	%rdi, -56(%rbp)
	movl	%edx, -68(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	leaq	-32(%rbp), %rdx
	movl	-68(%rbp), %esi
	leaq	-64(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	_ZN2cl6detail15GetInfoFunctor0IPFiP13_cl_device_idjmPvPmES3_EclEjmS4_S5_
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L1039
	movl	-36(%rbp), %eax
	jmp	.L1042
.L1039:
	movq	-32(%rbp), %rax
	leaq	15(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ebx
	movl	$0, %edx
	divq	%rbx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movl	-68(%rbp), %esi
	leaq	-64(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	_ZN2cl6detail15GetInfoFunctor0IPFiP13_cl_device_idjmPvPmES3_EclEjmS4_S5_
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L1041
	movl	-36(%rbp), %eax
	jmp	.L1042
.L1041:
	movq	-24(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSsaSEPKc
	movl	$0, %eax
.L1042:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4144:
	.size	_ZN2cl6detail13getInfoHelperINS0_15GetInfoFunctor0IPFiP13_cl_device_idjmPvPmES4_EEEEiT_jPSsl, .-_ZN2cl6detail13getInfoHelperINS0_15GetInfoFunctor0IPFiP13_cl_device_idjmPvPmES4_EEEEiT_jPSsl
	.section	.text._ZSt19__iterator_categoryIPKN2cl6DeviceEENSt15iterator_traitsIT_E17iterator_categoryERKS5_,"axG",@progbits,_ZSt19__iterator_categoryIPKN2cl6DeviceEENSt15iterator_traitsIT_E17iterator_categoryERKS5_,comdat
	.weak	_ZSt19__iterator_categoryIPKN2cl6DeviceEENSt15iterator_traitsIT_E17iterator_categoryERKS5_
	.type	_ZSt19__iterator_categoryIPKN2cl6DeviceEENSt15iterator_traitsIT_E17iterator_categoryERKS5_, @function
_ZSt19__iterator_categoryIPKN2cl6DeviceEENSt15iterator_traitsIT_E17iterator_categoryERKS5_:
.LFB4145:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4145:
	.size	_ZSt19__iterator_categoryIPKN2cl6DeviceEENSt15iterator_traitsIT_E17iterator_categoryERKS5_, .-_ZSt19__iterator_categoryIPKN2cl6DeviceEENSt15iterator_traitsIT_E17iterator_categoryERKS5_
	.section	.text._ZSt10__distanceIPKN2cl6DeviceEENSt15iterator_traitsIT_E15difference_typeES5_S5_St26random_access_iterator_tag,"axG",@progbits,_ZSt10__distanceIPKN2cl6DeviceEENSt15iterator_traitsIT_E15difference_typeES5_S5_St26random_access_iterator_tag,comdat
	.weak	_ZSt10__distanceIPKN2cl6DeviceEENSt15iterator_traitsIT_E15difference_typeES5_S5_St26random_access_iterator_tag
	.type	_ZSt10__distanceIPKN2cl6DeviceEENSt15iterator_traitsIT_E15difference_typeES5_S5_St26random_access_iterator_tag, @function
_ZSt10__distanceIPKN2cl6DeviceEENSt15iterator_traitsIT_E15difference_typeES5_S5_St26random_access_iterator_tag:
.LFB4146:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$4, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4146:
	.size	_ZSt10__distanceIPKN2cl6DeviceEENSt15iterator_traitsIT_E15difference_typeES5_S5_St26random_access_iterator_tag, .-_ZSt10__distanceIPKN2cl6DeviceEENSt15iterator_traitsIT_E15difference_typeES5_S5_St26random_access_iterator_tag
	.section	.text._ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEE8allocateEmPKv:
.LFB4147:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorIN2cl6DeviceEE8max_sizeEv
	cmpq	-16(%rbp), %rax
	setb	%al
	testb	%al, %al
	je	.L1048
	call	_ZSt17__throw_bad_allocv
.L1048:
	movq	-16(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdi
	call	_Znwm
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4147:
	.size	_ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEE8allocateEmPKv
	.section	.text._ZSt18uninitialized_copyIPKN2cl6DeviceEPS1_ET0_T_S6_S5_,"axG",@progbits,_ZSt18uninitialized_copyIPKN2cl6DeviceEPS1_ET0_T_S6_S5_,comdat
	.weak	_ZSt18uninitialized_copyIPKN2cl6DeviceEPS1_ET0_T_S6_S5_
	.type	_ZSt18uninitialized_copyIPKN2cl6DeviceEPS1_ET0_T_S6_S5_, @function
_ZSt18uninitialized_copyIPKN2cl6DeviceEPS1_ET0_T_S6_S5_:
.LFB4148:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN2cl6DeviceEPS3_EET0_T_S8_S7_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4148:
	.size	_ZSt18uninitialized_copyIPKN2cl6DeviceEPS1_ET0_T_S6_S5_, .-_ZSt18uninitialized_copyIPKN2cl6DeviceEPS1_ET0_T_S6_S5_
	.section	.text._ZNSt16allocator_traitsISaIN2cl6DeviceEEE9_S_selectIKS2_EENSt9enable_ifIXntsrNS3_15__select_helperIT_EE5valueES8_E4typeERS8_,"axG",@progbits,_ZNSt16allocator_traitsISaIN2cl6DeviceEEE9_S_selectIKS2_EENSt9enable_ifIXntsrNS3_15__select_helperIT_EE5valueES8_E4typeERS8_,comdat
	.weak	_ZNSt16allocator_traitsISaIN2cl6DeviceEEE9_S_selectIKS2_EENSt9enable_ifIXntsrNS3_15__select_helperIT_EE5valueES8_E4typeERS8_
	.type	_ZNSt16allocator_traitsISaIN2cl6DeviceEEE9_S_selectIKS2_EENSt9enable_ifIXntsrNS3_15__select_helperIT_EE5valueES8_E4typeERS8_, @function
_ZNSt16allocator_traitsISaIN2cl6DeviceEEE9_S_selectIKS2_EENSt9enable_ifIXntsrNS3_15__select_helperIT_EE5valueES8_E4typeERS8_:
.LFB4149:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaIN2cl6DeviceEEC1ERKS1_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4149:
	.size	_ZNSt16allocator_traitsISaIN2cl6DeviceEEE9_S_selectIKS2_EENSt9enable_ifIXntsrNS3_15__select_helperIT_EE5valueES8_E4typeERS8_, .-_ZNSt16allocator_traitsISaIN2cl6DeviceEEE9_S_selectIKS2_EENSt9enable_ifIXntsrNS3_15__select_helperIT_EE5valueES8_E4typeERS8_
	.section	.text._ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEEC2ERKS3_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEEC5ERKS3_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEEC2ERKS3_
	.type	_ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEEC2ERKS3_, @function
_ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEEC2ERKS3_:
.LFB4151:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4151:
	.size	_ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEEC2ERKS3_, .-_ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEEC2ERKS3_
	.weak	_ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEEC1ERKS3_
	.set	_ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEEC1ERKS3_,_ZN9__gnu_cxx13new_allocatorIN2cl6DeviceEEC2ERKS3_
	.section	.text._ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_,"axG",@progbits,_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_,comdat
	.weak	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_
	.type	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_, @function
_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_:
.LFB4153:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA4153
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -48(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1056
.L1057:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS2_SaIS2_EEEdeEv
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofIN2cl6DeviceEEPT_RS2_
	movq	%rbx, %rsi
	movq	%rax, %rdi
.LEHB337:
	call	_ZSt10_ConstructIN2cl6DeviceEIRKS1_EEvPT_DpOT0_
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS2_SaIS2_EEEppEv
	addq	$16, -24(%rbp)
.L1056:
	leaq	-64(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxneIPKN2cl6DeviceESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_
.LEHE337:
	testb	%al, %al
	jne	.L1057
	movq	-24(%rbp), %rax
	jmp	.L1063
.L1061:
	movq	%rax, %rbx
	call	__cxa_end_catch
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB338:
	call	_Unwind_Resume
.LEHE338:
.L1062:
	movq	%rax, %rdi
	call	__cxa_begin_catch
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB339:
	call	_ZSt8_DestroyIPN2cl6DeviceEEvT_S3_
	call	__cxa_rethrow
.LEHE339:
.L1063:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4153:
	.section	.gcc_except_table
	.align 4
.LLSDA4153:
	.byte	0xff
	.byte	0x3
	.uleb128 .LLSDATT4153-.LLSDATTD4153
.LLSDATTD4153:
	.byte	0x1
	.uleb128 .LLSDACSE4153-.LLSDACSB4153
.LLSDACSB4153:
	.uleb128 .LEHB337-.LFB4153
	.uleb128 .LEHE337-.LEHB337
	.uleb128 .L1062-.LFB4153
	.uleb128 0x1
	.uleb128 .LEHB338-.LFB4153
	.uleb128 .LEHE338-.LEHB338
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB339-.LFB4153
	.uleb128 .LEHE339-.LEHB339
	.uleb128 .L1061-.LFB4153
	.uleb128 0
.LLSDACSE4153:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT4153:
	.section	.text._ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_,"axG",@progbits,_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_,comdat
	.size	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_, .-_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_
	.section	.text._ZSt19__iterator_categoryIPP13_cl_device_idENSt15iterator_traitsIT_E17iterator_categoryERKS4_,"axG",@progbits,_ZSt19__iterator_categoryIPP13_cl_device_idENSt15iterator_traitsIT_E17iterator_categoryERKS4_,comdat
	.weak	_ZSt19__iterator_categoryIPP13_cl_device_idENSt15iterator_traitsIT_E17iterator_categoryERKS4_
	.type	_ZSt19__iterator_categoryIPP13_cl_device_idENSt15iterator_traitsIT_E17iterator_categoryERKS4_, @function
_ZSt19__iterator_categoryIPP13_cl_device_idENSt15iterator_traitsIT_E17iterator_categoryERKS4_:
.LFB4156:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4156:
	.size	_ZSt19__iterator_categoryIPP13_cl_device_idENSt15iterator_traitsIT_E17iterator_categoryERKS4_, .-_ZSt19__iterator_categoryIPP13_cl_device_idENSt15iterator_traitsIT_E17iterator_categoryERKS4_
	.section	.text._ZSt10__distanceIPP13_cl_device_idENSt15iterator_traitsIT_E15difference_typeES4_S4_St26random_access_iterator_tag,"axG",@progbits,_ZSt10__distanceIPP13_cl_device_idENSt15iterator_traitsIT_E15difference_typeES4_S4_St26random_access_iterator_tag,comdat
	.weak	_ZSt10__distanceIPP13_cl_device_idENSt15iterator_traitsIT_E15difference_typeES4_S4_St26random_access_iterator_tag
	.type	_ZSt10__distanceIPP13_cl_device_idENSt15iterator_traitsIT_E15difference_typeES4_S4_St26random_access_iterator_tag, @function
_ZSt10__distanceIPP13_cl_device_idENSt15iterator_traitsIT_E15difference_typeES4_S4_St26random_access_iterator_tag:
.LFB4157:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4157:
	.size	_ZSt10__distanceIPP13_cl_device_idENSt15iterator_traitsIT_E15difference_typeES4_S4_St26random_access_iterator_tag, .-_ZSt10__distanceIPP13_cl_device_idENSt15iterator_traitsIT_E15difference_typeES4_S4_St26random_access_iterator_tag
	.section	.text._ZSt12__miter_baseIPP13_cl_device_idENSt11_Miter_baseIT_E13iterator_typeES4_,"axG",@progbits,_ZSt12__miter_baseIPP13_cl_device_idENSt11_Miter_baseIT_E13iterator_typeES4_,comdat
	.weak	_ZSt12__miter_baseIPP13_cl_device_idENSt11_Miter_baseIT_E13iterator_typeES4_
	.type	_ZSt12__miter_baseIPP13_cl_device_idENSt11_Miter_baseIT_E13iterator_typeES4_, @function
_ZSt12__miter_baseIPP13_cl_device_idENSt11_Miter_baseIT_E13iterator_typeES4_:
.LFB4158:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Iter_baseIPP13_cl_device_idLb0EE7_S_baseES2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4158:
	.size	_ZSt12__miter_baseIPP13_cl_device_idENSt11_Miter_baseIT_E13iterator_typeES4_, .-_ZSt12__miter_baseIPP13_cl_device_idENSt11_Miter_baseIT_E13iterator_typeES4_
	.section	.text._ZSt14__copy_move_a2ILb0EPP13_cl_device_idPN2cl6DeviceEET1_T0_S7_S6_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPP13_cl_device_idPN2cl6DeviceEET1_T0_S7_S6_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EPP13_cl_device_idPN2cl6DeviceEET1_T0_S7_S6_
	.type	_ZSt14__copy_move_a2ILb0EPP13_cl_device_idPN2cl6DeviceEET1_T0_S7_S6_, @function
_ZSt14__copy_move_a2ILb0EPP13_cl_device_idPN2cl6DeviceEET1_T0_S7_S6_:
.LFB4159:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPN2cl6DeviceEENSt11_Niter_baseIT_E13iterator_typeES4_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPP13_cl_device_idENSt11_Niter_baseIT_E13iterator_typeES4_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPP13_cl_device_idENSt11_Niter_baseIT_E13iterator_typeES4_
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt13__copy_move_aILb0EPP13_cl_device_idPN2cl6DeviceEET1_T0_S7_S6_
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4159:
	.size	_ZSt14__copy_move_a2ILb0EPP13_cl_device_idPN2cl6DeviceEET1_T0_S7_S6_, .-_ZSt14__copy_move_a2ILb0EPP13_cl_device_idPN2cl6DeviceEET1_T0_S7_S6_
	.section	.text._ZSt9__advanceIPP13_cl_device_idlEvRT_T0_St26random_access_iterator_tag,"axG",@progbits,_ZSt9__advanceIPP13_cl_device_idlEvRT_T0_St26random_access_iterator_tag,comdat
	.weak	_ZSt9__advanceIPP13_cl_device_idlEvRT_T0_St26random_access_iterator_tag
	.type	_ZSt9__advanceIPP13_cl_device_idlEvRT_T0_St26random_access_iterator_tag, @function
_ZSt9__advanceIPP13_cl_device_idlEvRT_T0_St26random_access_iterator_tag:
.LFB4160:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4160:
	.size	_ZSt9__advanceIPP13_cl_device_idlEvRT_T0_St26random_access_iterator_tag, .-_ZSt9__advanceIPP13_cl_device_idlEvRT_T0_St26random_access_iterator_tag
	.section	.text._ZSt18uninitialized_copyIPP13_cl_device_idPN2cl6DeviceEET0_T_S7_S6_,"axG",@progbits,_ZSt18uninitialized_copyIPP13_cl_device_idPN2cl6DeviceEET0_T_S7_S6_,comdat
	.weak	_ZSt18uninitialized_copyIPP13_cl_device_idPN2cl6DeviceEET0_T_S7_S6_
	.type	_ZSt18uninitialized_copyIPP13_cl_device_idPN2cl6DeviceEET0_T_S7_S6_, @function
_ZSt18uninitialized_copyIPP13_cl_device_idPN2cl6DeviceEET0_T_S7_S6_:
.LFB4161:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPP13_cl_device_idPN2cl6DeviceEEET0_T_S9_S8_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4161:
	.size	_ZSt18uninitialized_copyIPP13_cl_device_idPN2cl6DeviceEET0_T_S7_S6_, .-_ZSt18uninitialized_copyIPP13_cl_device_idPN2cl6DeviceEET0_T_S7_S6_
	.section	.text._ZSt19__iterator_categoryIPP15_cl_platform_idENSt15iterator_traitsIT_E17iterator_categoryERKS4_,"axG",@progbits,_ZSt19__iterator_categoryIPP15_cl_platform_idENSt15iterator_traitsIT_E17iterator_categoryERKS4_,comdat
	.weak	_ZSt19__iterator_categoryIPP15_cl_platform_idENSt15iterator_traitsIT_E17iterator_categoryERKS4_
	.type	_ZSt19__iterator_categoryIPP15_cl_platform_idENSt15iterator_traitsIT_E17iterator_categoryERKS4_, @function
_ZSt19__iterator_categoryIPP15_cl_platform_idENSt15iterator_traitsIT_E17iterator_categoryERKS4_:
.LFB4162:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4162:
	.size	_ZSt19__iterator_categoryIPP15_cl_platform_idENSt15iterator_traitsIT_E17iterator_categoryERKS4_, .-_ZSt19__iterator_categoryIPP15_cl_platform_idENSt15iterator_traitsIT_E17iterator_categoryERKS4_
	.section	.text._ZSt10__distanceIPP15_cl_platform_idENSt15iterator_traitsIT_E15difference_typeES4_S4_St26random_access_iterator_tag,"axG",@progbits,_ZSt10__distanceIPP15_cl_platform_idENSt15iterator_traitsIT_E15difference_typeES4_S4_St26random_access_iterator_tag,comdat
	.weak	_ZSt10__distanceIPP15_cl_platform_idENSt15iterator_traitsIT_E15difference_typeES4_S4_St26random_access_iterator_tag
	.type	_ZSt10__distanceIPP15_cl_platform_idENSt15iterator_traitsIT_E15difference_typeES4_S4_St26random_access_iterator_tag, @function
_ZSt10__distanceIPP15_cl_platform_idENSt15iterator_traitsIT_E15difference_typeES4_S4_St26random_access_iterator_tag:
.LFB4163:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4163:
	.size	_ZSt10__distanceIPP15_cl_platform_idENSt15iterator_traitsIT_E15difference_typeES4_S4_St26random_access_iterator_tag, .-_ZSt10__distanceIPP15_cl_platform_idENSt15iterator_traitsIT_E15difference_typeES4_S4_St26random_access_iterator_tag
	.section	.text._ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE11_M_allocateEm
	.type	_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE11_M_allocateEm, @function
_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE11_M_allocateEm:
.LFB4164:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L1080
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIN2cl8PlatformEE8allocateEmPKv
	jmp	.L1081
.L1080:
	movl	$0, %eax
.L1081:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4164:
	.size	_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE11_M_allocateEm, .-_ZNSt12_Vector_baseIN2cl8PlatformESaIS1_EE11_M_allocateEm
	.section	.text._ZSt12__miter_baseIPP15_cl_platform_idENSt11_Miter_baseIT_E13iterator_typeES4_,"axG",@progbits,_ZSt12__miter_baseIPP15_cl_platform_idENSt11_Miter_baseIT_E13iterator_typeES4_,comdat
	.weak	_ZSt12__miter_baseIPP15_cl_platform_idENSt11_Miter_baseIT_E13iterator_typeES4_
	.type	_ZSt12__miter_baseIPP15_cl_platform_idENSt11_Miter_baseIT_E13iterator_typeES4_, @function
_ZSt12__miter_baseIPP15_cl_platform_idENSt11_Miter_baseIT_E13iterator_typeES4_:
.LFB4165:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Iter_baseIPP15_cl_platform_idLb0EE7_S_baseES2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4165:
	.size	_ZSt12__miter_baseIPP15_cl_platform_idENSt11_Miter_baseIT_E13iterator_typeES4_, .-_ZSt12__miter_baseIPP15_cl_platform_idENSt11_Miter_baseIT_E13iterator_typeES4_
	.section	.text._ZSt14__copy_move_a2ILb0EPP15_cl_platform_idPN2cl8PlatformEET1_T0_S7_S6_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPP15_cl_platform_idPN2cl8PlatformEET1_T0_S7_S6_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EPP15_cl_platform_idPN2cl8PlatformEET1_T0_S7_S6_
	.type	_ZSt14__copy_move_a2ILb0EPP15_cl_platform_idPN2cl8PlatformEET1_T0_S7_S6_, @function
_ZSt14__copy_move_a2ILb0EPP15_cl_platform_idPN2cl8PlatformEET1_T0_S7_S6_:
.LFB4166:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPN2cl8PlatformEENSt11_Niter_baseIT_E13iterator_typeES4_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPP15_cl_platform_idENSt11_Niter_baseIT_E13iterator_typeES4_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPP15_cl_platform_idENSt11_Niter_baseIT_E13iterator_typeES4_
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt13__copy_move_aILb0EPP15_cl_platform_idPN2cl8PlatformEET1_T0_S7_S6_
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4166:
	.size	_ZSt14__copy_move_a2ILb0EPP15_cl_platform_idPN2cl8PlatformEET1_T0_S7_S6_, .-_ZSt14__copy_move_a2ILb0EPP15_cl_platform_idPN2cl8PlatformEET1_T0_S7_S6_
	.section	.text._ZSt9__advanceIPP15_cl_platform_idlEvRT_T0_St26random_access_iterator_tag,"axG",@progbits,_ZSt9__advanceIPP15_cl_platform_idlEvRT_T0_St26random_access_iterator_tag,comdat
	.weak	_ZSt9__advanceIPP15_cl_platform_idlEvRT_T0_St26random_access_iterator_tag
	.type	_ZSt9__advanceIPP15_cl_platform_idlEvRT_T0_St26random_access_iterator_tag, @function
_ZSt9__advanceIPP15_cl_platform_idlEvRT_T0_St26random_access_iterator_tag:
.LFB4167:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4167:
	.size	_ZSt9__advanceIPP15_cl_platform_idlEvRT_T0_St26random_access_iterator_tag, .-_ZSt9__advanceIPP15_cl_platform_idlEvRT_T0_St26random_access_iterator_tag
	.section	.text._ZSt18uninitialized_copyIPP15_cl_platform_idPN2cl8PlatformEET0_T_S7_S6_,"axG",@progbits,_ZSt18uninitialized_copyIPP15_cl_platform_idPN2cl8PlatformEET0_T_S7_S6_,comdat
	.weak	_ZSt18uninitialized_copyIPP15_cl_platform_idPN2cl8PlatformEET0_T_S7_S6_
	.type	_ZSt18uninitialized_copyIPP15_cl_platform_idPN2cl8PlatformEET0_T_S7_S6_, @function
_ZSt18uninitialized_copyIPP15_cl_platform_idPN2cl8PlatformEET0_T_S7_S6_:
.LFB4168:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPP15_cl_platform_idPN2cl8PlatformEEET0_T_S9_S8_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4168:
	.size	_ZSt18uninitialized_copyIPP15_cl_platform_idPN2cl8PlatformEET0_T_S7_S6_, .-_ZSt18uninitialized_copyIPP15_cl_platform_idPN2cl8PlatformEET0_T_S7_S6_
	.section	.text._ZN9__gnu_cxx13new_allocatorIN2cl8PlatformEEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIN2cl8PlatformEEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIN2cl8PlatformEEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIN2cl8PlatformEEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorIN2cl8PlatformEEC2Ev:
.LFB4170:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4170:
	.size	_ZN9__gnu_cxx13new_allocatorIN2cl8PlatformEEC2Ev, .-_ZN9__gnu_cxx13new_allocatorIN2cl8PlatformEEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIN2cl8PlatformEEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIN2cl8PlatformEEC1Ev,_ZN9__gnu_cxx13new_allocatorIN2cl8PlatformEEC2Ev
	.section	.text._ZSt11__addressofIN2cl8PlatformEEPT_RS2_,"axG",@progbits,_ZSt11__addressofIN2cl8PlatformEEPT_RS2_,comdat
	.weak	_ZSt11__addressofIN2cl8PlatformEEPT_RS2_
	.type	_ZSt11__addressofIN2cl8PlatformEEPT_RS2_, @function
_ZSt11__addressofIN2cl8PlatformEEPT_RS2_:
.LFB4172:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4172:
	.size	_ZSt11__addressofIN2cl8PlatformEEPT_RS2_, .-_ZSt11__addressofIN2cl8PlatformEEPT_RS2_
	.section	.text._ZSt8_DestroyIN2cl8PlatformEEvPT_,"axG",@progbits,_ZSt8_DestroyIN2cl8PlatformEEvPT_,comdat
	.weak	_ZSt8_DestroyIN2cl8PlatformEEvPT_
	.type	_ZSt8_DestroyIN2cl8PlatformEEvPT_, @function
_ZSt8_DestroyIN2cl8PlatformEEvPT_:
.LFB4173:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl8PlatformD1Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4173:
	.size	_ZSt8_DestroyIN2cl8PlatformEEvPT_, .-_ZSt8_DestroyIN2cl8PlatformEEvPT_
	.section	.text._ZSt11__addressofIN2cl6DeviceEEPT_RS2_,"axG",@progbits,_ZSt11__addressofIN2cl6DeviceEEPT_RS2_,comdat
	.weak	_ZSt11__addressofIN2cl6DeviceEEPT_RS2_
	.type	_ZSt11__addressofIN2cl6DeviceEEPT_RS2_, @function
_ZSt11__addressofIN2cl6DeviceEEPT_RS2_:
.LFB4174:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4174:
	.size	_ZSt11__addressofIN2cl6DeviceEEPT_RS2_, .-_ZSt11__addressofIN2cl6DeviceEEPT_RS2_
	.section	.text._ZSt8_DestroyIN2cl6DeviceEEvPT_,"axG",@progbits,_ZSt8_DestroyIN2cl6DeviceEEvPT_,comdat
	.weak	_ZSt8_DestroyIN2cl6DeviceEEvPT_
	.type	_ZSt8_DestroyIN2cl6DeviceEEvPT_, @function
_ZSt8_DestroyIN2cl6DeviceEEvPT_:
.LFB4175:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2cl6DeviceD1Ev
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4175:
	.size	_ZSt8_DestroyIN2cl6DeviceEEvPT_, .-_ZSt8_DestroyIN2cl6DeviceEEvPT_
	.section	.text._ZSteqIcEbRKSaIT_ES3_,"axG",@progbits,_ZSteqIcEbRKSaIT_ES3_,comdat
	.weak	_ZSteqIcEbRKSaIT_ES3_
	.type	_ZSteqIcEbRKSaIT_ES3_, @function
_ZSteqIcEbRKSaIT_ES3_:
.LFB4238:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4238:
	.size	_ZSteqIcEbRKSaIT_ES3_, .-_ZSteqIcEbRKSaIT_ES3_
	.section	.text._ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_,"axG",@progbits,_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_,comdat
	.weak	_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_
	.type	_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_, @function
_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_:
.LFB4239:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE5equalERKS2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4239:
	.size	_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_, .-_ZSteqIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_
	.section	.text._ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_,"axG",@progbits,_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_,comdat
	.weak	_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_
	.type	_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_, @function
_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_:
.LFB4240:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE5equalERKS2_
	xorl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4240:
	.size	_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_, .-_ZStneIcSt11char_traitsIcEEbRKSt19istreambuf_iteratorIT_T0_ES7_
	.section	.text._ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv,"axG",@progbits,_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv,comdat
	.align 2
	.weak	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv
	.type	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv, @function
_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv:
.LFB4241:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE6_M_getEv
	movl	%eax, -4(%rbp)
	leaq	-4(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11char_traitsIcE12to_char_typeERKi
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4241:
	.size	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv, .-_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEEdeEv
	.section	.text._ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv,"axG",@progbits,_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv,comdat
	.align 2
	.weak	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv
	.type	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv, @function
_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv:
.LFB4242:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L1106
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZNSt15basic_streambufIcSt11char_traitsIcEE6sbumpcEv
	call	_ZNSt11char_traitsIcE3eofEv
	movq	-8(%rbp), %rdx
	movl	%eax, 8(%rdx)
.L1106:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4242:
	.size	_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv, .-_ZNSt19istreambuf_iteratorIcSt11char_traitsIcEEppEv
	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEEC2ERKS5_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEEC5ERKS5_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEEC2ERKS5_
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEEC2ERKS5_, @function
_ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEEC2ERKS5_:
.LFB4246:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4246:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEEC2ERKS5_, .-_ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEEC2ERKS5_
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEEC1ERKS5_
	.set	_ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEEC1ERKS5_,_ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEEC2ERKS5_
	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEE8allocateEmPKv:
.LFB4248:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorISt4pairIPKcmEE8max_sizeEv
	cmpq	-16(%rbp), %rax
	setb	%al
	testb	%al, %al
	je	.L1110
	call	_ZSt17__throw_bad_allocv
.L1110:
	movq	-16(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdi
	call	_Znwm
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4248:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorISt4pairIPKcmEE8allocateEmPKv
	.section	.text._ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt4pairIPKcmEmS5_EEvT_T0_RKT1_,"axG",@progbits,_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt4pairIPKcmEmS5_EEvT_T0_RKT1_,comdat
	.weak	_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt4pairIPKcmEmS5_EEvT_T0_RKT1_
	.type	_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt4pairIPKcmEmS5_EEvT_T0_RKT1_, @function
_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt4pairIPKcmEmS5_EEvT_T0_RKT1_:
.LFB4249:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L1113
.L1114:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofISt4pairIPKcmEEPT_RS4_
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt10_ConstructISt4pairIPKcmEIRKS3_EEvPT_DpOT0_
	subq	$1, -32(%rbp)
	addq	$16, -8(%rbp)
.L1113:
	cmpq	$0, -32(%rbp)
	jne	.L1114
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4249:
	.size	_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt4pairIPKcmEmS5_EEvT_T0_RKT1_, .-_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt4pairIPKcmEmS5_EEvT_T0_RKT1_
	.section	.text._ZN2cl6detail15GetInfoFunctor0IPFiP13_cl_device_idjmPvPmES3_EclEjmS4_S5_,"axG",@progbits,_ZN2cl6detail15GetInfoFunctor0IPFiP13_cl_device_idjmPvPmES3_EclEjmS4_S5_,comdat
	.align 2
	.weak	_ZN2cl6detail15GetInfoFunctor0IPFiP13_cl_device_idjmPvPmES3_EclEjmS4_S5_
	.type	_ZN2cl6detail15GetInfoFunctor0IPFiP13_cl_device_idjmPvPmES3_EclEjmS4_S5_, @function
_ZN2cl6detail15GetInfoFunctor0IPFiP13_cl_device_idjmPvPmES3_EclEjmS4_S5_:
.LFB4250:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	(%rdx), %rdi
	movq	-40(%rbp), %r8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	call	*%rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4250:
	.size	_ZN2cl6detail15GetInfoFunctor0IPFiP13_cl_device_idjmPvPmES3_EclEjmS4_S5_, .-_ZN2cl6detail15GetInfoFunctor0IPFiP13_cl_device_idjmPvPmES3_EclEjmS4_S5_
	.section	.text._ZNK9__gnu_cxx13new_allocatorIN2cl6DeviceEE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIN2cl6DeviceEE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIN2cl6DeviceEE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIN2cl6DeviceEE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIN2cl6DeviceEE8max_sizeEv:
.LFB4251:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movabsq	$1152921504606846975, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4251:
	.size	_ZNK9__gnu_cxx13new_allocatorIN2cl6DeviceEE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIN2cl6DeviceEE8max_sizeEv
	.section	.text._ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN2cl6DeviceEPS3_EET0_T_S8_S7_,"axG",@progbits,_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN2cl6DeviceEPS3_EET0_T_S8_S7_,comdat
	.weak	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN2cl6DeviceEPS3_EET0_T_S8_S7_
	.type	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN2cl6DeviceEPS3_EET0_T_S8_S7_, @function
_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN2cl6DeviceEPS3_EET0_T_S8_S7_:
.LFB4252:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA4252
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1120
.L1121:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofIN2cl6DeviceEEPT_RS2_
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB340:
	call	_ZSt10_ConstructIN2cl6DeviceEIRKS1_EEvPT_DpOT0_
.LEHE340:
	addq	$16, -40(%rbp)
	addq	$16, -24(%rbp)
.L1120:
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.L1121
	movq	-24(%rbp), %rax
	jmp	.L1127
.L1126:
	movq	%rax, %rbx
	call	__cxa_end_catch
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB341:
	call	_Unwind_Resume
.LEHE341:
.L1125:
	movq	%rax, %rdi
	call	__cxa_begin_catch
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB342:
	call	_ZSt8_DestroyIPN2cl6DeviceEEvT_S3_
	call	__cxa_rethrow
.LEHE342:
.L1127:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4252:
	.section	.gcc_except_table
	.align 4
.LLSDA4252:
	.byte	0xff
	.byte	0x3
	.uleb128 .LLSDATT4252-.LLSDATTD4252
.LLSDATTD4252:
	.byte	0x1
	.uleb128 .LLSDACSE4252-.LLSDACSB4252
.LLSDACSB4252:
	.uleb128 .LEHB340-.LFB4252
	.uleb128 .LEHE340-.LEHB340
	.uleb128 .L1125-.LFB4252
	.uleb128 0x1
	.uleb128 .LEHB341-.LFB4252
	.uleb128 .LEHE341-.LEHB341
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB342-.LFB4252
	.uleb128 .LEHE342-.LEHB342
	.uleb128 .L1126-.LFB4252
	.uleb128 0
.LLSDACSE4252:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT4252:
	.section	.text._ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN2cl6DeviceEPS3_EET0_T_S8_S7_,"axG",@progbits,_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN2cl6DeviceEPS3_EET0_T_S8_S7_,comdat
	.size	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN2cl6DeviceEPS3_EET0_T_S8_S7_, .-_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKN2cl6DeviceEPS3_EET0_T_S8_S7_
	.section	.text._ZN9__gnu_cxxneIPKN2cl6DeviceESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_,"axG",@progbits,_ZN9__gnu_cxxneIPKN2cl6DeviceESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_,comdat
	.weak	_ZN9__gnu_cxxneIPKN2cl6DeviceESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_
	.type	_ZN9__gnu_cxxneIPKN2cl6DeviceESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_, @function
_ZN9__gnu_cxxneIPKN2cl6DeviceESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_:
.LFB4253:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rax
	cmpq	%rax, %rbx
	setne	%al
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4253:
	.size	_ZN9__gnu_cxxneIPKN2cl6DeviceESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_, .-_ZN9__gnu_cxxneIPKN2cl6DeviceESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS2_SaIS2_EEEppEv,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS2_SaIS2_EEEppEv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS2_SaIS2_EEEppEv
	.type	_ZN9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS2_SaIS2_EEEppEv, @function
_ZN9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS2_SaIS2_EEEppEv:
.LFB4254:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4254:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS2_SaIS2_EEEppEv, .-_ZN9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS2_SaIS2_EEEppEv
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS2_SaIS2_EEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS2_SaIS2_EEEdeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS2_SaIS2_EEEdeEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS2_SaIS2_EEEdeEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS2_SaIS2_EEEdeEv:
.LFB4255:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4255:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS2_SaIS2_EEEdeEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS2_SaIS2_EEEdeEv
	.section	.text._ZSt7forwardIRKN2cl6DeviceEEOT_RNSt16remove_referenceIS4_E4typeE,"axG",@progbits,_ZSt7forwardIRKN2cl6DeviceEEOT_RNSt16remove_referenceIS4_E4typeE,comdat
	.weak	_ZSt7forwardIRKN2cl6DeviceEEOT_RNSt16remove_referenceIS4_E4typeE
	.type	_ZSt7forwardIRKN2cl6DeviceEEOT_RNSt16remove_referenceIS4_E4typeE, @function
_ZSt7forwardIRKN2cl6DeviceEEOT_RNSt16remove_referenceIS4_E4typeE:
.LFB4257:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4257:
	.size	_ZSt7forwardIRKN2cl6DeviceEEOT_RNSt16remove_referenceIS4_E4typeE, .-_ZSt7forwardIRKN2cl6DeviceEEOT_RNSt16remove_referenceIS4_E4typeE
	.section	.text._ZSt10_ConstructIN2cl6DeviceEIRKS1_EEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructIN2cl6DeviceEIRKS1_EEvPT_DpOT0_,comdat
	.weak	_ZSt10_ConstructIN2cl6DeviceEIRKS1_EEvPT_DpOT0_
	.type	_ZSt10_ConstructIN2cl6DeviceEIRKS1_EEvPT_DpOT0_, @function
_ZSt10_ConstructIN2cl6DeviceEIRKS1_EEvPT_DpOT0_:
.LFB4256:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA4256
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKN2cl6DeviceEEOT_RNSt16remove_referenceIS4_E4typeE
	movq	%rax, %r13
	movq	-40(%rbp), %r12
	movq	%r12, %rsi
	movl	$16, %edi
	call	_ZnwmPv
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.L1137
	movq	%r13, %rsi
	movq	%rbx, %rdi
.LEHB343:
	call	_ZN2cl6DeviceC1ERKS0_
.LEHE343:
	jmp	.L1136
.L1137:
	jmp	.L1136
.L1140:
	movq	%rax, %r13
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	_ZdlPvS_
	movq	%r13, %rax
	movq	%rax, %rdi
.LEHB344:
	call	_Unwind_Resume
.LEHE344:
.L1136:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4256:
	.section	.gcc_except_table
.LLSDA4256:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4256-.LLSDACSB4256
.LLSDACSB4256:
	.uleb128 .LEHB343-.LFB4256
	.uleb128 .LEHE343-.LEHB343
	.uleb128 .L1140-.LFB4256
	.uleb128 0
	.uleb128 .LEHB344-.LFB4256
	.uleb128 .LEHE344-.LEHB344
	.uleb128 0
	.uleb128 0
.LLSDACSE4256:
	.section	.text._ZSt10_ConstructIN2cl6DeviceEIRKS1_EEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructIN2cl6DeviceEIRKS1_EEvPT_DpOT0_,comdat
	.size	_ZSt10_ConstructIN2cl6DeviceEIRKS1_EEvPT_DpOT0_, .-_ZSt10_ConstructIN2cl6DeviceEIRKS1_EEvPT_DpOT0_
	.weak	_ZSt10_ConstructIN2cl6DeviceEJRKS1_EEvPT_DpOT0_
	.set	_ZSt10_ConstructIN2cl6DeviceEJRKS1_EEvPT_DpOT0_,_ZSt10_ConstructIN2cl6DeviceEIRKS1_EEvPT_DpOT0_
	.section	.text._ZNSt10_Iter_baseIPP13_cl_device_idLb0EE7_S_baseES2_,"axG",@progbits,_ZNSt10_Iter_baseIPP13_cl_device_idLb0EE7_S_baseES2_,comdat
	.weak	_ZNSt10_Iter_baseIPP13_cl_device_idLb0EE7_S_baseES2_
	.type	_ZNSt10_Iter_baseIPP13_cl_device_idLb0EE7_S_baseES2_, @function
_ZNSt10_Iter_baseIPP13_cl_device_idLb0EE7_S_baseES2_:
.LFB4266:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4266:
	.size	_ZNSt10_Iter_baseIPP13_cl_device_idLb0EE7_S_baseES2_, .-_ZNSt10_Iter_baseIPP13_cl_device_idLb0EE7_S_baseES2_
	.section	.text._ZSt12__niter_baseIPP13_cl_device_idENSt11_Niter_baseIT_E13iterator_typeES4_,"axG",@progbits,_ZSt12__niter_baseIPP13_cl_device_idENSt11_Niter_baseIT_E13iterator_typeES4_,comdat
	.weak	_ZSt12__niter_baseIPP13_cl_device_idENSt11_Niter_baseIT_E13iterator_typeES4_
	.type	_ZSt12__niter_baseIPP13_cl_device_idENSt11_Niter_baseIT_E13iterator_typeES4_, @function
_ZSt12__niter_baseIPP13_cl_device_idENSt11_Niter_baseIT_E13iterator_typeES4_:
.LFB4267:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Iter_baseIPP13_cl_device_idLb0EE7_S_baseES2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4267:
	.size	_ZSt12__niter_baseIPP13_cl_device_idENSt11_Niter_baseIT_E13iterator_typeES4_, .-_ZSt12__niter_baseIPP13_cl_device_idENSt11_Niter_baseIT_E13iterator_typeES4_
	.section	.text._ZSt12__niter_baseIPN2cl6DeviceEENSt11_Niter_baseIT_E13iterator_typeES4_,"axG",@progbits,_ZSt12__niter_baseIPN2cl6DeviceEENSt11_Niter_baseIT_E13iterator_typeES4_,comdat
	.weak	_ZSt12__niter_baseIPN2cl6DeviceEENSt11_Niter_baseIT_E13iterator_typeES4_
	.type	_ZSt12__niter_baseIPN2cl6DeviceEENSt11_Niter_baseIT_E13iterator_typeES4_, @function
_ZSt12__niter_baseIPN2cl6DeviceEENSt11_Niter_baseIT_E13iterator_typeES4_:
.LFB4268:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Iter_baseIPN2cl6DeviceELb0EE7_S_baseES2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4268:
	.size	_ZSt12__niter_baseIPN2cl6DeviceEENSt11_Niter_baseIT_E13iterator_typeES4_, .-_ZSt12__niter_baseIPN2cl6DeviceEENSt11_Niter_baseIT_E13iterator_typeES4_
	.section	.text._ZSt13__copy_move_aILb0EPP13_cl_device_idPN2cl6DeviceEET1_T0_S7_S6_,"axG",@progbits,_ZSt13__copy_move_aILb0EPP13_cl_device_idPN2cl6DeviceEET1_T0_S7_S6_,comdat
	.weak	_ZSt13__copy_move_aILb0EPP13_cl_device_idPN2cl6DeviceEET1_T0_S7_S6_
	.type	_ZSt13__copy_move_aILb0EPP13_cl_device_idPN2cl6DeviceEET1_T0_S7_S6_, @function
_ZSt13__copy_move_aILb0EPP13_cl_device_idPN2cl6DeviceEET1_T0_S7_S6_:
.LFB4269:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movb	$0, -1(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPP13_cl_device_idPN2cl6DeviceEEET0_T_SA_S9_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4269:
	.size	_ZSt13__copy_move_aILb0EPP13_cl_device_idPN2cl6DeviceEET1_T0_S7_S6_, .-_ZSt13__copy_move_aILb0EPP13_cl_device_idPN2cl6DeviceEET1_T0_S7_S6_
	.section	.text._ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPP13_cl_device_idPN2cl6DeviceEEET0_T_S9_S8_,"axG",@progbits,_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPP13_cl_device_idPN2cl6DeviceEEET0_T_S9_S8_,comdat
	.weak	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPP13_cl_device_idPN2cl6DeviceEEET0_T_S9_S8_
	.type	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPP13_cl_device_idPN2cl6DeviceEEET0_T_S9_S8_, @function
_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPP13_cl_device_idPN2cl6DeviceEEET0_T_S9_S8_:
.LFB4270:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA4270
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1150
.L1151:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofIN2cl6DeviceEEPT_RS2_
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB345:
	call	_ZSt10_ConstructIN2cl6DeviceEIRP13_cl_device_idEEvPT_DpOT0_
.LEHE345:
	addq	$8, -40(%rbp)
	addq	$16, -24(%rbp)
.L1150:
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.L1151
	movq	-24(%rbp), %rax
	jmp	.L1157
.L1156:
	movq	%rax, %rbx
	call	__cxa_end_catch
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB346:
	call	_Unwind_Resume
.LEHE346:
.L1155:
	movq	%rax, %rdi
	call	__cxa_begin_catch
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB347:
	call	_ZSt8_DestroyIPN2cl6DeviceEEvT_S3_
	call	__cxa_rethrow
.LEHE347:
.L1157:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4270:
	.section	.gcc_except_table
	.align 4
.LLSDA4270:
	.byte	0xff
	.byte	0x3
	.uleb128 .LLSDATT4270-.LLSDATTD4270
.LLSDATTD4270:
	.byte	0x1
	.uleb128 .LLSDACSE4270-.LLSDACSB4270
.LLSDACSB4270:
	.uleb128 .LEHB345-.LFB4270
	.uleb128 .LEHE345-.LEHB345
	.uleb128 .L1155-.LFB4270
	.uleb128 0x1
	.uleb128 .LEHB346-.LFB4270
	.uleb128 .LEHE346-.LEHB346
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB347-.LFB4270
	.uleb128 .LEHE347-.LEHB347
	.uleb128 .L1156-.LFB4270
	.uleb128 0
.LLSDACSE4270:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT4270:
	.section	.text._ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPP13_cl_device_idPN2cl6DeviceEEET0_T_S9_S8_,"axG",@progbits,_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPP13_cl_device_idPN2cl6DeviceEEET0_T_S9_S8_,comdat
	.size	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPP13_cl_device_idPN2cl6DeviceEEET0_T_S9_S8_, .-_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPP13_cl_device_idPN2cl6DeviceEEET0_T_S9_S8_
	.section	.text._ZN9__gnu_cxx13new_allocatorIN2cl8PlatformEE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIN2cl8PlatformEE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIN2cl8PlatformEE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorIN2cl8PlatformEE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorIN2cl8PlatformEE8allocateEmPKv:
.LFB4271:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorIN2cl8PlatformEE8max_sizeEv
	cmpq	-16(%rbp), %rax
	setb	%al
	testb	%al, %al
	je	.L1159
	call	_ZSt17__throw_bad_allocv
.L1159:
	movq	-16(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	_Znwm
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4271:
	.size	_ZN9__gnu_cxx13new_allocatorIN2cl8PlatformEE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorIN2cl8PlatformEE8allocateEmPKv
	.section	.text._ZNSt10_Iter_baseIPP15_cl_platform_idLb0EE7_S_baseES2_,"axG",@progbits,_ZNSt10_Iter_baseIPP15_cl_platform_idLb0EE7_S_baseES2_,comdat
	.weak	_ZNSt10_Iter_baseIPP15_cl_platform_idLb0EE7_S_baseES2_
	.type	_ZNSt10_Iter_baseIPP15_cl_platform_idLb0EE7_S_baseES2_, @function
_ZNSt10_Iter_baseIPP15_cl_platform_idLb0EE7_S_baseES2_:
.LFB4272:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4272:
	.size	_ZNSt10_Iter_baseIPP15_cl_platform_idLb0EE7_S_baseES2_, .-_ZNSt10_Iter_baseIPP15_cl_platform_idLb0EE7_S_baseES2_
	.section	.text._ZSt12__niter_baseIPP15_cl_platform_idENSt11_Niter_baseIT_E13iterator_typeES4_,"axG",@progbits,_ZSt12__niter_baseIPP15_cl_platform_idENSt11_Niter_baseIT_E13iterator_typeES4_,comdat
	.weak	_ZSt12__niter_baseIPP15_cl_platform_idENSt11_Niter_baseIT_E13iterator_typeES4_
	.type	_ZSt12__niter_baseIPP15_cl_platform_idENSt11_Niter_baseIT_E13iterator_typeES4_, @function
_ZSt12__niter_baseIPP15_cl_platform_idENSt11_Niter_baseIT_E13iterator_typeES4_:
.LFB4273:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Iter_baseIPP15_cl_platform_idLb0EE7_S_baseES2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4273:
	.size	_ZSt12__niter_baseIPP15_cl_platform_idENSt11_Niter_baseIT_E13iterator_typeES4_, .-_ZSt12__niter_baseIPP15_cl_platform_idENSt11_Niter_baseIT_E13iterator_typeES4_
	.section	.text._ZSt12__niter_baseIPN2cl8PlatformEENSt11_Niter_baseIT_E13iterator_typeES4_,"axG",@progbits,_ZSt12__niter_baseIPN2cl8PlatformEENSt11_Niter_baseIT_E13iterator_typeES4_,comdat
	.weak	_ZSt12__niter_baseIPN2cl8PlatformEENSt11_Niter_baseIT_E13iterator_typeES4_
	.type	_ZSt12__niter_baseIPN2cl8PlatformEENSt11_Niter_baseIT_E13iterator_typeES4_, @function
_ZSt12__niter_baseIPN2cl8PlatformEENSt11_Niter_baseIT_E13iterator_typeES4_:
.LFB4274:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Iter_baseIPN2cl8PlatformELb0EE7_S_baseES2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4274:
	.size	_ZSt12__niter_baseIPN2cl8PlatformEENSt11_Niter_baseIT_E13iterator_typeES4_, .-_ZSt12__niter_baseIPN2cl8PlatformEENSt11_Niter_baseIT_E13iterator_typeES4_
	.section	.text._ZSt13__copy_move_aILb0EPP15_cl_platform_idPN2cl8PlatformEET1_T0_S7_S6_,"axG",@progbits,_ZSt13__copy_move_aILb0EPP15_cl_platform_idPN2cl8PlatformEET1_T0_S7_S6_,comdat
	.weak	_ZSt13__copy_move_aILb0EPP15_cl_platform_idPN2cl8PlatformEET1_T0_S7_S6_
	.type	_ZSt13__copy_move_aILb0EPP15_cl_platform_idPN2cl8PlatformEET1_T0_S7_S6_, @function
_ZSt13__copy_move_aILb0EPP15_cl_platform_idPN2cl8PlatformEET1_T0_S7_S6_:
.LFB4275:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movb	$0, -1(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPP15_cl_platform_idPN2cl8PlatformEEET0_T_SA_S9_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4275:
	.size	_ZSt13__copy_move_aILb0EPP15_cl_platform_idPN2cl8PlatformEET1_T0_S7_S6_, .-_ZSt13__copy_move_aILb0EPP15_cl_platform_idPN2cl8PlatformEET1_T0_S7_S6_
	.section	.text._ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPP15_cl_platform_idPN2cl8PlatformEEET0_T_S9_S8_,"axG",@progbits,_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPP15_cl_platform_idPN2cl8PlatformEEET0_T_S9_S8_,comdat
	.weak	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPP15_cl_platform_idPN2cl8PlatformEEET0_T_S9_S8_
	.type	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPP15_cl_platform_idPN2cl8PlatformEEET0_T_S9_S8_, @function
_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPP15_cl_platform_idPN2cl8PlatformEEET0_T_S9_S8_:
.LFB4276:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA4276
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L1170
.L1171:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofIN2cl8PlatformEEPT_RS2_
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB348:
	call	_ZSt10_ConstructIN2cl8PlatformEIRP15_cl_platform_idEEvPT_DpOT0_
.LEHE348:
	addq	$8, -40(%rbp)
	addq	$8, -24(%rbp)
.L1170:
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.L1171
	movq	-24(%rbp), %rax
	jmp	.L1177
.L1176:
	movq	%rax, %rbx
	call	__cxa_end_catch
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB349:
	call	_Unwind_Resume
.LEHE349:
.L1175:
	movq	%rax, %rdi
	call	__cxa_begin_catch
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB350:
	call	_ZSt8_DestroyIPN2cl8PlatformEEvT_S3_
	call	__cxa_rethrow
.LEHE350:
.L1177:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4276:
	.section	.gcc_except_table
	.align 4
.LLSDA4276:
	.byte	0xff
	.byte	0x3
	.uleb128 .LLSDATT4276-.LLSDATTD4276
.LLSDATTD4276:
	.byte	0x1
	.uleb128 .LLSDACSE4276-.LLSDACSB4276
.LLSDACSB4276:
	.uleb128 .LEHB348-.LFB4276
	.uleb128 .LEHE348-.LEHB348
	.uleb128 .L1175-.LFB4276
	.uleb128 0x1
	.uleb128 .LEHB349-.LFB4276
	.uleb128 .LEHE349-.LEHB349
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB350-.LFB4276
	.uleb128 .LEHE350-.LEHB350
	.uleb128 .L1176-.LFB4276
	.uleb128 0
.LLSDACSE4276:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT4276:
	.section	.text._ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPP15_cl_platform_idPN2cl8PlatformEEET0_T_S9_S8_,"axG",@progbits,_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPP15_cl_platform_idPN2cl8PlatformEEET0_T_S9_S8_,comdat
	.size	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPP15_cl_platform_idPN2cl8PlatformEEET0_T_S9_S8_, .-_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPP15_cl_platform_idPN2cl8PlatformEEET0_T_S9_S8_
	.section	.text._ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE5equalERKS2_,"axG",@progbits,_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE5equalERKS2_,comdat
	.align 2
	.weak	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE5equalERKS2_
	.type	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE5equalERKS2_, @function
_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE5equalERKS2_:
.LFB4301:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv
	movl	%eax, %ebx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv
	cmpb	%al, %bl
	sete	%al
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4301:
	.size	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE5equalERKS2_, .-_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE5equalERKS2_
	.section	.text._ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE6_M_getEv,"axG",@progbits,_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE6_M_getEv,comdat
	.align 2
	.weak	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE6_M_getEv
	.type	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE6_M_getEv, @function
_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE6_M_getEv:
.LFB4302:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$-1, -8(%rbp)
	movl	$-1, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L1181
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt11char_traitsIcE11eq_int_typeERKiS2_
	xorl	$1, %eax
	testb	%al, %al
	je	.L1182
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -4(%rbp)
	jmp	.L1181
.L1182:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv
	movl	%eax, -4(%rbp)
	leaq	-8(%rbp), %rdx
	leaq	-4(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11char_traitsIcE11eq_int_typeERKiS2_
	xorl	$1, %eax
	testb	%al, %al
	je	.L1184
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 8(%rax)
	jmp	.L1181
.L1184:
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
.L1181:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4302:
	.size	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE6_M_getEv, .-_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE6_M_getEv
	.section	.text._ZNK9__gnu_cxx13new_allocatorISt4pairIPKcmEE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorISt4pairIPKcmEE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorISt4pairIPKcmEE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorISt4pairIPKcmEE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorISt4pairIPKcmEE8max_sizeEv:
.LFB4305:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movabsq	$1152921504606846975, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4305:
	.size	_ZNK9__gnu_cxx13new_allocatorISt4pairIPKcmEE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorISt4pairIPKcmEE8max_sizeEv
	.section	.text._ZSt11__addressofISt4pairIPKcmEEPT_RS4_,"axG",@progbits,_ZSt11__addressofISt4pairIPKcmEEPT_RS4_,comdat
	.weak	_ZSt11__addressofISt4pairIPKcmEEPT_RS4_
	.type	_ZSt11__addressofISt4pairIPKcmEEPT_RS4_, @function
_ZSt11__addressofISt4pairIPKcmEEPT_RS4_:
.LFB4306:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4306:
	.size	_ZSt11__addressofISt4pairIPKcmEEPT_RS4_, .-_ZSt11__addressofISt4pairIPKcmEEPT_RS4_
	.section	.text._ZSt7forwardIRKSt4pairIPKcmEEOT_RNSt16remove_referenceIS6_E4typeE,"axG",@progbits,_ZSt7forwardIRKSt4pairIPKcmEEOT_RNSt16remove_referenceIS6_E4typeE,comdat
	.weak	_ZSt7forwardIRKSt4pairIPKcmEEOT_RNSt16remove_referenceIS6_E4typeE
	.type	_ZSt7forwardIRKSt4pairIPKcmEEOT_RNSt16remove_referenceIS6_E4typeE, @function
_ZSt7forwardIRKSt4pairIPKcmEEOT_RNSt16remove_referenceIS6_E4typeE:
.LFB4308:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4308:
	.size	_ZSt7forwardIRKSt4pairIPKcmEEOT_RNSt16remove_referenceIS6_E4typeE, .-_ZSt7forwardIRKSt4pairIPKcmEEOT_RNSt16remove_referenceIS6_E4typeE
	.section	.text._ZSt10_ConstructISt4pairIPKcmEIRKS3_EEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructISt4pairIPKcmEIRKS3_EEvPT_DpOT0_,comdat
	.weak	_ZSt10_ConstructISt4pairIPKcmEIRKS3_EEvPT_DpOT0_
	.type	_ZSt10_ConstructISt4pairIPKcmEIRKS3_EEvPT_DpOT0_, @function
_ZSt10_ConstructISt4pairIPKcmEIRKS3_EEvPT_DpOT0_:
.LFB4307:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKSt4pairIPKcmEEOT_RNSt16remove_referenceIS6_E4typeE
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$16, %edi
	call	_ZnwmPv
	movq	%rax, %rcx
	testq	%rcx, %rcx
	je	.L1192
	movq	(%rbx), %rax
	movq	8(%rbx), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
.L1192:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4307:
	.size	_ZSt10_ConstructISt4pairIPKcmEIRKS3_EEvPT_DpOT0_, .-_ZSt10_ConstructISt4pairIPKcmEIRKS3_EEvPT_DpOT0_
	.weak	_ZSt10_ConstructISt4pairIPKcmEJRKS3_EEvPT_DpOT0_
	.set	_ZSt10_ConstructISt4pairIPKcmEJRKS3_EEvPT_DpOT0_,_ZSt10_ConstructISt4pairIPKcmEIRKS3_EEvPT_DpOT0_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS2_SaIS2_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS2_SaIS2_EEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS2_SaIS2_EEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS2_SaIS2_EEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS2_SaIS2_EEE4baseEv:
.LFB4309:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4309:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS2_SaIS2_EEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPKN2cl6DeviceESt6vectorIS2_SaIS2_EEE4baseEv
	.section	.text._ZNSt10_Iter_baseIPN2cl6DeviceELb0EE7_S_baseES2_,"axG",@progbits,_ZNSt10_Iter_baseIPN2cl6DeviceELb0EE7_S_baseES2_,comdat
	.weak	_ZNSt10_Iter_baseIPN2cl6DeviceELb0EE7_S_baseES2_
	.type	_ZNSt10_Iter_baseIPN2cl6DeviceELb0EE7_S_baseES2_, @function
_ZNSt10_Iter_baseIPN2cl6DeviceELb0EE7_S_baseES2_:
.LFB4316:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4316:
	.size	_ZNSt10_Iter_baseIPN2cl6DeviceELb0EE7_S_baseES2_, .-_ZNSt10_Iter_baseIPN2cl6DeviceELb0EE7_S_baseES2_
	.section	.text._ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPP13_cl_device_idPN2cl6DeviceEEET0_T_SA_S9_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPP13_cl_device_idPN2cl6DeviceEEET0_T_SA_S9_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPP13_cl_device_idPN2cl6DeviceEEET0_T_SA_S9_
	.type	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPP13_cl_device_idPN2cl6DeviceEEET0_T_SA_S9_, @function
_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPP13_cl_device_idPN2cl6DeviceEEET0_T_SA_S9_:
.LFB4317:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	movq	%rax, -8(%rbp)
	jmp	.L1200
.L1201:
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN2cl6DeviceaSERKP13_cl_device_id
	addq	$8, -24(%rbp)
	addq	$16, -40(%rbp)
	subq	$1, -8(%rbp)
.L1200:
	cmpq	$0, -8(%rbp)
	jg	.L1201
	movq	-40(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4317:
	.size	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPP13_cl_device_idPN2cl6DeviceEEET0_T_SA_S9_, .-_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPP13_cl_device_idPN2cl6DeviceEEET0_T_SA_S9_
	.section	.text._ZSt7forwardIRP13_cl_device_idEOT_RNSt16remove_referenceIS3_E4typeE,"axG",@progbits,_ZSt7forwardIRP13_cl_device_idEOT_RNSt16remove_referenceIS3_E4typeE,comdat
	.weak	_ZSt7forwardIRP13_cl_device_idEOT_RNSt16remove_referenceIS3_E4typeE
	.type	_ZSt7forwardIRP13_cl_device_idEOT_RNSt16remove_referenceIS3_E4typeE, @function
_ZSt7forwardIRP13_cl_device_idEOT_RNSt16remove_referenceIS3_E4typeE:
.LFB4319:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4319:
	.size	_ZSt7forwardIRP13_cl_device_idEOT_RNSt16remove_referenceIS3_E4typeE, .-_ZSt7forwardIRP13_cl_device_idEOT_RNSt16remove_referenceIS3_E4typeE
	.section	.text._ZSt10_ConstructIN2cl6DeviceEIRP13_cl_device_idEEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructIN2cl6DeviceEIRP13_cl_device_idEEvPT_DpOT0_,comdat
	.weak	_ZSt10_ConstructIN2cl6DeviceEIRP13_cl_device_idEEvPT_DpOT0_
	.type	_ZSt10_ConstructIN2cl6DeviceEIRP13_cl_device_idEEvPT_DpOT0_, @function
_ZSt10_ConstructIN2cl6DeviceEIRP13_cl_device_idEEvPT_DpOT0_:
.LFB4318:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA4318
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRP13_cl_device_idEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %r13
	movq	-40(%rbp), %r12
	movq	%r12, %rsi
	movl	$16, %edi
	call	_ZnwmPv
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.L1206
	movq	%r13, %rsi
	movq	%rbx, %rdi
.LEHB351:
	call	_ZN2cl6DeviceC1ERKP13_cl_device_id
.LEHE351:
	jmp	.L1205
.L1206:
	jmp	.L1205
.L1209:
	movq	%rax, %r13
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	_ZdlPvS_
	movq	%r13, %rax
	movq	%rax, %rdi
.LEHB352:
	call	_Unwind_Resume
.LEHE352:
.L1205:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4318:
	.section	.gcc_except_table
.LLSDA4318:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4318-.LLSDACSB4318
.LLSDACSB4318:
	.uleb128 .LEHB351-.LFB4318
	.uleb128 .LEHE351-.LEHB351
	.uleb128 .L1209-.LFB4318
	.uleb128 0
	.uleb128 .LEHB352-.LFB4318
	.uleb128 .LEHE352-.LEHB352
	.uleb128 0
	.uleb128 0
.LLSDACSE4318:
	.section	.text._ZSt10_ConstructIN2cl6DeviceEIRP13_cl_device_idEEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructIN2cl6DeviceEIRP13_cl_device_idEEvPT_DpOT0_,comdat
	.size	_ZSt10_ConstructIN2cl6DeviceEIRP13_cl_device_idEEvPT_DpOT0_, .-_ZSt10_ConstructIN2cl6DeviceEIRP13_cl_device_idEEvPT_DpOT0_
	.weak	_ZSt10_ConstructIN2cl6DeviceEJRP13_cl_device_idEEvPT_DpOT0_
	.set	_ZSt10_ConstructIN2cl6DeviceEJRP13_cl_device_idEEvPT_DpOT0_,_ZSt10_ConstructIN2cl6DeviceEIRP13_cl_device_idEEvPT_DpOT0_
	.section	.text._ZNK9__gnu_cxx13new_allocatorIN2cl8PlatformEE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIN2cl8PlatformEE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIN2cl8PlatformEE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIN2cl8PlatformEE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIN2cl8PlatformEE8max_sizeEv:
.LFB4320:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movabsq	$2305843009213693951, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4320:
	.size	_ZNK9__gnu_cxx13new_allocatorIN2cl8PlatformEE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIN2cl8PlatformEE8max_sizeEv
	.section	.text._ZNSt10_Iter_baseIPN2cl8PlatformELb0EE7_S_baseES2_,"axG",@progbits,_ZNSt10_Iter_baseIPN2cl8PlatformELb0EE7_S_baseES2_,comdat
	.weak	_ZNSt10_Iter_baseIPN2cl8PlatformELb0EE7_S_baseES2_
	.type	_ZNSt10_Iter_baseIPN2cl8PlatformELb0EE7_S_baseES2_, @function
_ZNSt10_Iter_baseIPN2cl8PlatformELb0EE7_S_baseES2_:
.LFB4321:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4321:
	.size	_ZNSt10_Iter_baseIPN2cl8PlatformELb0EE7_S_baseES2_, .-_ZNSt10_Iter_baseIPN2cl8PlatformELb0EE7_S_baseES2_
	.section	.text._ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPP15_cl_platform_idPN2cl8PlatformEEET0_T_SA_S9_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPP15_cl_platform_idPN2cl8PlatformEEET0_T_SA_S9_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPP15_cl_platform_idPN2cl8PlatformEEET0_T_SA_S9_
	.type	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPP15_cl_platform_idPN2cl8PlatformEEET0_T_SA_S9_, @function
_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPP15_cl_platform_idPN2cl8PlatformEEET0_T_SA_S9_:
.LFB4322:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	movq	%rax, -8(%rbp)
	jmp	.L1215
.L1216:
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN2cl8PlatformaSERKP15_cl_platform_id
	addq	$8, -24(%rbp)
	addq	$8, -40(%rbp)
	subq	$1, -8(%rbp)
.L1215:
	cmpq	$0, -8(%rbp)
	jg	.L1216
	movq	-40(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4322:
	.size	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPP15_cl_platform_idPN2cl8PlatformEEET0_T_SA_S9_, .-_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPP15_cl_platform_idPN2cl8PlatformEEET0_T_SA_S9_
	.section	.text._ZSt7forwardIRP15_cl_platform_idEOT_RNSt16remove_referenceIS3_E4typeE,"axG",@progbits,_ZSt7forwardIRP15_cl_platform_idEOT_RNSt16remove_referenceIS3_E4typeE,comdat
	.weak	_ZSt7forwardIRP15_cl_platform_idEOT_RNSt16remove_referenceIS3_E4typeE
	.type	_ZSt7forwardIRP15_cl_platform_idEOT_RNSt16remove_referenceIS3_E4typeE, @function
_ZSt7forwardIRP15_cl_platform_idEOT_RNSt16remove_referenceIS3_E4typeE:
.LFB4324:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4324:
	.size	_ZSt7forwardIRP15_cl_platform_idEOT_RNSt16remove_referenceIS3_E4typeE, .-_ZSt7forwardIRP15_cl_platform_idEOT_RNSt16remove_referenceIS3_E4typeE
	.section	.text._ZSt10_ConstructIN2cl8PlatformEIRP15_cl_platform_idEEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructIN2cl8PlatformEIRP15_cl_platform_idEEvPT_DpOT0_,comdat
	.weak	_ZSt10_ConstructIN2cl8PlatformEIRP15_cl_platform_idEEvPT_DpOT0_
	.type	_ZSt10_ConstructIN2cl8PlatformEIRP15_cl_platform_idEEvPT_DpOT0_, @function
_ZSt10_ConstructIN2cl8PlatformEIRP15_cl_platform_idEEvPT_DpOT0_:
.LFB4323:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRP15_cl_platform_idEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$8, %edi
	call	_ZnwmPv
	testq	%rax, %rax
	je	.L1220
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZN2cl8PlatformC1ERKP15_cl_platform_id
.L1220:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4323:
	.size	_ZSt10_ConstructIN2cl8PlatformEIRP15_cl_platform_idEEvPT_DpOT0_, .-_ZSt10_ConstructIN2cl8PlatformEIRP15_cl_platform_idEEvPT_DpOT0_
	.weak	_ZSt10_ConstructIN2cl8PlatformEJRP15_cl_platform_idEEvPT_DpOT0_
	.set	_ZSt10_ConstructIN2cl8PlatformEJRP15_cl_platform_idEEvPT_DpOT0_,_ZSt10_ConstructIN2cl8PlatformEIRP15_cl_platform_idEEvPT_DpOT0_
	.section	.text._ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv,"axG",@progbits,_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv,comdat
	.align 2
	.weak	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv
	.type	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv, @function
_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv:
.LFB4343:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$-1, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE6_M_getEv
	movl	%eax, -4(%rbp)
	leaq	-8(%rbp), %rdx
	leaq	-4(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11char_traitsIcE11eq_int_typeERKiS2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4343:
	.size	_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv, .-_ZNKSt19istreambuf_iteratorIcSt11char_traitsIcEE9_M_at_eofEv
	.weak	_ZTVN2cl5ErrorE
	.section	.rodata._ZTVN2cl5ErrorE,"aG",@progbits,_ZTVN2cl5ErrorE,comdat
	.align 32
	.type	_ZTVN2cl5ErrorE, @object
	.size	_ZTVN2cl5ErrorE, 40
_ZTVN2cl5ErrorE:
	.quad	0
	.quad	_ZTIN2cl5ErrorE
	.quad	_ZN2cl5ErrorD1Ev
	.quad	_ZN2cl5ErrorD0Ev
	.quad	_ZNK2cl5Error4whatEv
	.weak	_ZTSN2cl5ErrorE
	.section	.rodata._ZTSN2cl5ErrorE,"aG",@progbits,_ZTSN2cl5ErrorE,comdat
	.type	_ZTSN2cl5ErrorE, @object
	.size	_ZTSN2cl5ErrorE, 12
_ZTSN2cl5ErrorE:
	.string	"N2cl5ErrorE"
	.weak	_ZTIN2cl5ErrorE
	.section	.rodata._ZTIN2cl5ErrorE,"aG",@progbits,_ZTIN2cl5ErrorE,comdat
	.align 16
	.type	_ZTIN2cl5ErrorE, @object
	.size	_ZTIN2cl5ErrorE, 24
_ZTIN2cl5ErrorE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSN2cl5ErrorE
	.quad	_ZTISt9exception
	.weak	_ZGVN2cl7Context8default_E
	.bss
	.align 8
	.type	_ZGVN2cl7Context8default_E, @object
	.size	_ZGVN2cl7Context8default_E, 8
_ZGVN2cl7Context8default_E:
	.zero	8
	.weak	_ZGVN2cl12CommandQueue8default_E
	.align 8
	.type	_ZGVN2cl12CommandQueue8default_E, @object
	.size	_ZGVN2cl12CommandQueue8default_E, 8
_ZGVN2cl12CommandQueue8default_E:
	.zero	8
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB4385:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L1225
	cmpl	$65535, -8(%rbp)
	jne	.L1225
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	call	__cxa_atexit
	movl	$_ZGVN2cl7Context8default_E, %eax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L1227
	movl	$_ZGVN2cl7Context8default_E, %eax
	movb	$1, (%rax)
	movl	$_ZN2cl7Context8default_E, %edi
	call	_ZN2cl7ContextC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZN2cl7Context8default_E, %esi
	movl	$_ZN2cl7ContextD1Ev, %edi
	call	__cxa_atexit
.L1227:
	movl	$_ZN2clL9NullRangeE, %edi
	call	_ZN2cl7NDRangeC1Ev
	movl	$_ZGVN2cl12CommandQueue8default_E, %eax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L1228
	movl	$_ZGVN2cl12CommandQueue8default_E, %eax
	movb	$1, (%rax)
	movl	$_ZN2cl12CommandQueue8default_E, %edi
	call	_ZN2cl12CommandQueueC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZN2cl12CommandQueue8default_E, %esi
	movl	$_ZN2cl12CommandQueueD1Ev, %edi
	call	__cxa_atexit
.L1228:
	movabsq	$4652218415073722368, %rax
	movq	%rax, _ZL8max_time(%rip)
	movabsq	$4611686018427387904, %rax
	movq	%rax, _ZL4warp(%rip)
	movsd	_ZL8max_time(%rip), %xmm1
	movsd	.LC90(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	_ZL4warp(%rip), %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, _ZL8n_frames(%rip)
.L1225:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4385:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.section	.rodata
	.align 4
	.type	_ZL1n, @object
	.size	_ZL1n, 4
_ZL1n:
	.long	1024
	.align 32
	.type	_ZL8settings, @object
	.size	_ZL8settings, 80
_ZL8settings:
	.long	0
	.long	1083179008
	.long	0
	.long	1060110336
	.long	0
	.long	1060110336
	.long	3539053052
	.long	1062232653
	.long	698640683
	.long	1047534379
	.long	0
	.long	0
	.long	2576980378
	.long	1071225241
	.long	858993459
	.long	1070805811
	.long	3539053052
	.long	1062232653
	.long	0
	.long	1073741824
	.align 4
	.type	_ZL14workgroup_size, @object
	.size	_ZL14workgroup_size, 4
_ZL14workgroup_size:
	.long	2
	.align 4
	.type	_ZL5nDevs, @object
	.size	_ZL5nDevs, 4
_ZL5nDevs:
	.long	2
	.align 4
	.type	_ZL4n_el, @object
	.size	_ZL4n_el, 4
_ZL4n_el:
	.long	523776
	.text
	.type	_GLOBAL__sub_I_Devs, @function
_GLOBAL__sub_I_Devs:
.LFB4386:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4386:
	.size	_GLOBAL__sub_I_Devs, .-_GLOBAL__sub_I_Devs
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_Devs
	.section	.rodata
	.align 8
	.type	_ZZL18__gthread_active_pvE20__gthread_active_ptr, @object
	.size	_ZZL18__gthread_active_pvE20__gthread_active_ptr, 8
_ZZL18__gthread_active_pvE20__gthread_active_ptr:
	.quad	_ZL28__gthrw___pthread_key_createPjPFvPvE
	.weakref	_ZL28__gthrw___pthread_key_createPjPFvPvE,__pthread_key_create
	.align 8
.LC42:
	.long	0
	.long	1075052544
	.align 8
.LC43:
	.long	0
	.long	1071644672
	.align 8
.LC74:
	.long	0
	.long	1066401792
	.align 8
.LC75:
	.long	0
	.long	1074790400
	.align 8
.LC77:
	.long	0
	.long	1063256064
	.align 4
.LC78:
	.long	1163984896
	.align 4
.LC79:
	.long	1114636288
	.align 8
.LC90:
	.long	0
	.long	1078984704
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.1) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
