	.file	"reverse.c"
# GNU C17 (Ubuntu 11.3.0-1ubuntu1~22.04) version 11.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.3.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.globl	print_array
	.type	print_array, @function
print_array:
.LFB0:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# array, array
	movl	%esi, -28(%rbp)	# size, size
# reverse.c:4: 	for (int i = 0; i < size; ++i) {
	movl	$0, -4(%rbp)	#, i
# reverse.c:4: 	for (int i = 0; i < size; ++i) {
	jmp	.L2	#
.L3:
# reverse.c:5: 		printf("%c", array[i]);
	movl	-4(%rbp), %eax	# i, tmp86
	movslq	%eax, %rdx	# tmp86, _1
	movq	-24(%rbp), %rax	# array, tmp87
	addq	%rdx, %rax	# _1, _2
	movzbl	(%rax), %eax	# *_2, _3
# reverse.c:5: 		printf("%c", array[i]);
	movsbl	%al, %eax	# _3, _4
	movl	%eax, %edi	# _4,
	call	putchar@PLT	#
# reverse.c:4: 	for (int i = 0; i < size; ++i) {
	addl	$1, -4(%rbp)	#, i
.L2:
# reverse.c:4: 	for (int i = 0; i < size; ++i) {
	movl	-4(%rbp), %eax	# i, tmp88
	cmpl	-28(%rbp), %eax	# size, tmp88
	jl	.L3	#,
# reverse.c:7: }
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	print_array, .-print_array
	.globl	reverse
	.type	reverse, @function
reverse:
.LFB1:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# characters, characters
	movl	%esi, -60(%rbp)	# size, size
# reverse.c:11: void reverse(char* characters, int size) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp135
	movq	%rax, -24(%rbp)	# tmp135, D.2398
	xorl	%eax, %eax	# tmp135
	movq	%rsp, %rax	#, tmp103
	movq	%rax, %rsi	# tmp103, saved_stack.2_26
# reverse.c:12: 	char reversed[size];
	movl	-60(%rbp), %eax	# size, size.0_28
# reverse.c:12: 	char reversed[size];
	movslq	%eax, %rdx	# size.0_28, _1
	subq	$1, %rdx	#, _2
	movq	%rdx, -40(%rbp)	# _3, D.2384
	movslq	%eax, %rdx	# size.0_28, _4
	movq	%rdx, %r8	# _4, _5
	movl	$0, %r9d	#, _5
	movslq	%eax, %rdx	# size.0_28, _8
	movq	%rdx, %rcx	# _8, _9
	movl	$0, %ebx	#, _9
	cltq
	movl	$16, %edx	#, tmp133
	subq	$1, %rdx	#, tmp104
	addq	%rdx, %rax	# tmp104, tmp105
	movl	$16, %ebx	#, tmp134
	movl	$0, %edx	#, tmp108
	divq	%rbx	# tmp134
	imulq	$16, %rax, %rax	#, tmp107, tmp109
	movq	%rax, %rcx	# tmp109, tmp111
	andq	$-4096, %rcx	#, tmp111
	movq	%rsp, %rdx	#, tmp112
	subq	%rcx, %rdx	# tmp111, tmp112
.L5:
	cmpq	%rdx, %rsp	# tmp112,
	je	.L6	#,
	subq	$4096, %rsp	#,
	orq	$0, 4088(%rsp)	#,
	jmp	.L5	#
.L6:
	movq	%rax, %rdx	# tmp109, tmp113
	andl	$4095, %edx	#, tmp113
	subq	%rdx, %rsp	# tmp113,
	movq	%rax, %rdx	# tmp109, tmp114
	andl	$4095, %edx	#, tmp114
	testq	%rdx, %rdx	# tmp114
	je	.L7	#,
	andl	$4095, %eax	#, tmp115
	subq	$8, %rax	#, tmp115
	addq	%rsp, %rax	#, tmp116
	orq	$0, (%rax)	#,
.L7:
	movq	%rsp, %rax	#, tmp110
	addq	$0, %rax	#, tmp117
	movq	%rax, -32(%rbp)	# tmp117, reversed.1
# reverse.c:15: 	for (int i = size - 1; i >= 0; --i) {
	movl	-60(%rbp), %eax	# size, tmp121
	subl	$1, %eax	#, tmp120
	movl	%eax, -48(%rbp)	# tmp120, i
# reverse.c:15: 	for (int i = size - 1; i >= 0; --i) {
	jmp	.L8	#
.L9:
# reverse.c:16: 		reversed[i] = characters[(size - 1) - i];
	movl	-60(%rbp), %eax	# size, tmp122
	subl	$1, %eax	#, _12
# reverse.c:16: 		reversed[i] = characters[(size - 1) - i];
	subl	-48(%rbp), %eax	# i, _13
	movslq	%eax, %rdx	# _13, _14
# reverse.c:16: 		reversed[i] = characters[(size - 1) - i];
	movq	-56(%rbp), %rax	# characters, tmp123
	addq	%rdx, %rax	# _14, _15
	movzbl	(%rax), %ecx	# *_15, _16
# reverse.c:16: 		reversed[i] = characters[(size - 1) - i];
	movq	-32(%rbp), %rdx	# reversed.1, tmp124
	movl	-48(%rbp), %eax	# i, tmp126
	cltq
	movb	%cl, (%rdx,%rax)	# _16, (*reversed.1_35)[i_20]
# reverse.c:15: 	for (int i = size - 1; i >= 0; --i) {
	subl	$1, -48(%rbp)	#, i
.L8:
# reverse.c:15: 	for (int i = size - 1; i >= 0; --i) {
	cmpl	$0, -48(%rbp)	#, i
	jns	.L9	#,
# reverse.c:20: 	for (int i = 0; i < size; ++i) {
	movl	$0, -44(%rbp)	#, i
# reverse.c:20: 	for (int i = 0; i < size; ++i) {
	jmp	.L10	#
.L11:
# reverse.c:21: 		characters[i] = reversed[i];
	movl	-44(%rbp), %eax	# i, tmp127
	movslq	%eax, %rdx	# tmp127, _17
	movq	-56(%rbp), %rax	# characters, tmp128
	leaq	(%rdx,%rax), %rcx	#, _18
# reverse.c:21: 		characters[i] = reversed[i];
	movq	-32(%rbp), %rdx	# reversed.1, tmp129
	movl	-44(%rbp), %eax	# i, tmp131
	cltq
	movzbl	(%rdx,%rax), %eax	# (*reversed.1_35)[i_21], _19
# reverse.c:21: 		characters[i] = reversed[i];
	movb	%al, (%rcx)	# _19, *_18
# reverse.c:20: 	for (int i = 0; i < size; ++i) {
	addl	$1, -44(%rbp)	#, i
.L10:
# reverse.c:20: 	for (int i = 0; i < size; ++i) {
	movl	-44(%rbp), %eax	# i, tmp132
	cmpl	-60(%rbp), %eax	# size, tmp132
	jl	.L11	#,
	movq	%rsi, %rsp	# saved_stack.2_26,
# reverse.c:23: }
	nop	
	movq	-24(%rbp), %rax	# D.2398, tmp136
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp136
	je	.L12	#,
	call	__stack_chk_fail@PLT	#
.L12:
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	reverse, .-reverse
	.globl	reverse_ip
	.type	reverse_ip, @function
reverse_ip:
.LFB2:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# characters, characters
	movl	%esi, -44(%rbp)	# size, size
# reverse.c:27: 	char* lp = characters;
	movq	-40(%rbp), %rax	# characters, tmp116
	movq	%rax, -16(%rbp)	# tmp116, lp
# reverse.c:28: 	char* rp = characters + (size - 1);
	movl	-44(%rbp), %eax	# size, tmp117
	cltq
	leaq	-1(%rax), %rdx	#, _2
# reverse.c:28: 	char* rp = characters + (size - 1);
	movq	-40(%rbp), %rax	# characters, tmp121
	addq	%rdx, %rax	# _2, tmp120
	movq	%rax, -8(%rbp)	# tmp120, rp
# reverse.c:30: 	for (int i = 0; i < (size/2); ++i) {
	movl	$0, -20(%rbp)	#, i
# reverse.c:30: 	for (int i = 0; i < (size/2); ++i) {
	jmp	.L14	#
.L15:
# reverse.c:31: 		*(lp + i) ^= *(rp - i);
	movl	-20(%rbp), %eax	# i, tmp122
	movslq	%eax, %rdx	# tmp122, _3
	movq	-16(%rbp), %rax	# lp, tmp123
	addq	%rdx, %rax	# _3, _4
	movzbl	(%rax), %ecx	# *_4, _5
# reverse.c:31: 		*(lp + i) ^= *(rp - i);
	movl	-20(%rbp), %eax	# i, tmp124
	cltq
	negq	%rax	# _6
	movq	%rax, %rdx	# _6, _7
	movq	-8(%rbp), %rax	# rp, tmp125
	addq	%rdx, %rax	# _7, _8
# reverse.c:31: 		*(lp + i) ^= *(rp - i);
	movzbl	(%rax), %edx	# *_8, _9
# reverse.c:31: 		*(lp + i) ^= *(rp - i);
	movl	-20(%rbp), %eax	# i, tmp126
	movslq	%eax, %rsi	# tmp126, _10
	movq	-16(%rbp), %rax	# lp, tmp127
	addq	%rsi, %rax	# _10, _11
	xorl	%ecx, %edx	# _5, _12
	movb	%dl, (%rax)	# _12, *_11
# reverse.c:32: 		*(rp - i) ^= *(lp + i);
	movl	-20(%rbp), %eax	# i, tmp128
	cltq
	negq	%rax	# _13
	movq	%rax, %rdx	# _13, _14
	movq	-8(%rbp), %rax	# rp, tmp129
	addq	%rdx, %rax	# _14, _15
	movzbl	(%rax), %ecx	# *_15, _16
# reverse.c:32: 		*(rp - i) ^= *(lp + i);
	movl	-20(%rbp), %eax	# i, tmp130
	movslq	%eax, %rdx	# tmp130, _17
	movq	-16(%rbp), %rax	# lp, tmp131
	addq	%rdx, %rax	# _17, _18
# reverse.c:32: 		*(rp - i) ^= *(lp + i);
	movzbl	(%rax), %edx	# *_18, _19
# reverse.c:32: 		*(rp - i) ^= *(lp + i);
	movl	-20(%rbp), %eax	# i, tmp132
	cltq
	negq	%rax	# _20
	movq	%rax, %rsi	# _20, _21
	movq	-8(%rbp), %rax	# rp, tmp133
	addq	%rsi, %rax	# _21, _22
	xorl	%ecx, %edx	# _16, _23
	movb	%dl, (%rax)	# _23, *_22
# reverse.c:33: 		*(lp + i) ^= *(rp - i);
	movl	-20(%rbp), %eax	# i, tmp134
	movslq	%eax, %rdx	# tmp134, _24
	movq	-16(%rbp), %rax	# lp, tmp135
	addq	%rdx, %rax	# _24, _25
	movzbl	(%rax), %ecx	# *_25, _26
# reverse.c:33: 		*(lp + i) ^= *(rp - i);
	movl	-20(%rbp), %eax	# i, tmp136
	cltq
	negq	%rax	# _27
	movq	%rax, %rdx	# _27, _28
	movq	-8(%rbp), %rax	# rp, tmp137
	addq	%rdx, %rax	# _28, _29
# reverse.c:33: 		*(lp + i) ^= *(rp - i);
	movzbl	(%rax), %edx	# *_29, _30
# reverse.c:33: 		*(lp + i) ^= *(rp - i);
	movl	-20(%rbp), %eax	# i, tmp138
	movslq	%eax, %rsi	# tmp138, _31
	movq	-16(%rbp), %rax	# lp, tmp139
	addq	%rsi, %rax	# _31, _32
	xorl	%ecx, %edx	# _26, _33
	movb	%dl, (%rax)	# _33, *_32
# reverse.c:30: 	for (int i = 0; i < (size/2); ++i) {
	addl	$1, -20(%rbp)	#, i
.L14:
# reverse.c:30: 	for (int i = 0; i < (size/2); ++i) {
	movl	-44(%rbp), %eax	# size, tmp140
	movl	%eax, %edx	# tmp140, tmp141
	shrl	$31, %edx	#, tmp141
	addl	%edx, %eax	# tmp141, tmp142
	sarl	%eax	# tmp143
# reverse.c:30: 	for (int i = 0; i < (size/2); ++i) {
	cmpl	%eax, -20(%rbp)	# _34, i
	jl	.L15	#,
# reverse.c:35: }	
	nop	
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2:
	.size	reverse_ip, .-reverse_ip
	.globl	main
	.type	main, @function
main:
.LFB3:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# reverse.c:37: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp87
	movq	%rax, -8(%rbp)	# tmp87, D.2401
	xorl	%eax, %eax	# tmp87
# reverse.c:38: 	char text[] = {'A', 'P', 'P', 'L', 'E'};
	movl	$1280331841, -13(%rbp)	#, text
	movb	$69, -9(%rbp)	#, text
# reverse.c:40: 	reverse_ip(text, 5);
	leaq	-13(%rbp), %rax	#, tmp84
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp84,
	call	reverse_ip	#
# reverse.c:41: 	print_array(text, 5);	
	leaq	-13(%rbp), %rax	#, tmp85
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp85,
	call	print_array	#
# reverse.c:43: 	return 0;
	movl	$0, %eax	#, _5
# reverse.c:44: }
	movq	-8(%rbp), %rdx	# D.2401, tmp88
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp88
	je	.L18	#,
	call	__stack_chk_fail@PLT	#
.L18:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
