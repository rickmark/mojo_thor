0xffffff7f92f2ca16: pushq  %rbp
0xffffff7f92f2ca17: movq   %rsp, %rbp
0xffffff7f92f2ca1a: pushq  %r14
0xffffff7f92f2ca1c: pushq  %rbx
0xffffff7f92f2ca1d: subq   $0x70, %rsp
0xffffff7f92f2ca21: movq   0x15e0(%rip), %r14
0xffffff7f92f2ca28: movq   (%r14), %r14
0xffffff7f92f2ca2b: movq   %r14, -0x18(%rbp)
0xffffff7f92f2ca2f: leaq   0x13b2(%rip), %rdi
0xffffff7f92f2ca36: leaq   -0x70(%rbp), %rsi
0xffffff7f92f2ca3a: movl   $0x50, %edx
0xffffff7f92f2ca3f: callq  0xffffff800f917f20        ; PE_parse_boot_argn at bootargs.c:191
0xffffff7f92f2ca44: testl  %eax, %eax
0xffffff7f92f2ca46: je     0xffffff7f92f2ca9e
0xffffff7f92f2ca48: leaq   0x13a8(%rip), %rsi
0xffffff7f92f2ca4f: leaq   -0x70(%rbp), %rdi
0xffffff7f92f2ca53: movl   $0x50, %edx
0xffffff7f92f2ca58: callq  0xffffff800f3c02c0        ; strncmp at subrs.c:198
0xffffff7f92f2ca5d: testl  %eax, %eax
0xffffff7f92f2ca5f: je     0xffffff7f92f2ca7c
0xffffff7f92f2ca61: leaq   0x1394(%rip), %rsi
0xffffff7f92f2ca68: leaq   -0x70(%rbp), %rdi
0xffffff7f92f2ca6c: movl   $0x50, %edx
0xffffff7f92f2ca71: callq  0xffffff800f3c02c0        ; strncmp at subrs.c:198
0xffffff7f92f2ca76: xorl   %ebx, %ebx
0xffffff7f92f2ca78: testl  %eax, %eax
0xffffff7f92f2ca7a: jne    0xffffff7f92f2ca81
0xffffff7f92f2ca7c: movl   $0x1, %ebx
0xffffff7f92f2ca81: leaq   0x137a(%rip), %rsi
0xffffff7f92f2ca88: leaq   -0x70(%rbp), %rdi
0xffffff7f92f2ca8c: movl   $0x50, %edx
0xffffff7f92f2ca91: callq  0xffffff800f3c02c0        ; strncmp at subrs.c:198
0xffffff7f92f2ca96: testl  %eax, %eax
0xffffff7f92f2ca98: je     0xffffff7f92f2caae
0xffffff7f92f2ca9a: testl  %ebx, %ebx
0xffffff7f92f2ca9c: jne    0xffffff7f92f2cab8
0xffffff7f92f2ca9e: leaq   0x1363(%rip), %rdi
0xffffff7f92f2caa5: xorl   %eax, %eax
0xffffff7f92f2caa7: callq  0xffffff800f919b70        ; kprintf at pe_kprintf.c:109
0xffffff7f92f2caac: jmp    0xffffff7f92f2cb05
0xffffff7f92f2caae: movl   $0x1, 0x1fb8(%rip)
0xffffff7f92f2cab8: leaq   0x5c(%rip), %rdi
0xffffff7f92f2cabf: xorl   %esi, %esi
0xffffff7f92f2cac1: callq  0xffffff800f40cee0        ; kdp_register_callout at kdp_machdep.c:710
0xffffff7f92f2cac6: leaq   0x1008(%rip), %rdi
0xffffff7f92f2cacd: leaq   0x1073(%rip), %rsi
0xffffff7f92f2cad4: callq  0xffffff800f2bf1f0        ; kdp_register_send_receive at kdp_udp.c:418
0xffffff7f92f2cad9: movb   $0x6b, -0x80(%rbp)
0xffffff7f92f2cadd: movb   $0x64, -0x7f(%rbp)
0xffffff7f92f2cae1: movb   $0x70, -0x7e(%rbp)
0xffffff7f92f2cae5: movb   $0x6d, -0x7d(%rbp)
0xffffff7f92f2cae9: movb   $0x6a, -0x7c(%rbp)
0xffffff7f92f2caed: movb   $0x6f, -0x7b(%rbp)
0xffffff7f92f2caf1: movl   $0x100007f, -0x78(%rbp)   ; imm = 0x100007F
0xffffff7f92f2caf8: leaq   -0x78(%rbp), %rdi
0xffffff7f92f2cafc: leaq   -0x80(%rbp), %rsi
0xffffff7f92f2cb00: callq  0xffffff800f2bf4b0        ; kdp_set_ip_and_mac_addresses at kdp_udp.c:736
0xffffff7f92f2cb05: cmpq   -0x18(%rbp), %r14
0xffffff7f92f2cb09: jne    0xffffff7f92f2cb16
0xffffff7f92f2cb0b: xorl   %eax, %eax
0xffffff7f92f2cb0d: addq   $0x70, %rsp
0xffffff7f92f2cb11: popq   %rbx
0xffffff7f92f2cb12: popq   %r14
0xffffff7f92f2cb14: popq   %rbp
0xffffff7f92f2cb15: retq
0xffffff7f92f2cb16: callq  0xffffff800f2b5cb0        ; __stack_chk_fail at stack_protector.c:36
0xffffff7f92f2cb1b: cmpl   $0x1, %esi
0xffffff7f92f2cb1e: jne    0xffffff7f92f2cb3e
0xffffff7f92f2cb20: movl   0x1e62(%rip), %eax
0xffffff7f92f2cb26: testl  %eax, %eax
0xffffff7f92f2cb28: jne    0xffffff7f92f2cb3e
0xffffff7f92f2cb2a: pushq  %rbp
0xffffff7f92f2cb2b: movq   %rsp, %rbp
0xffffff7f92f2cb2e: callq  0xffffff7f92f2cbfc
0xffffff7f92f2cb33: movl   $0x1, 0x1e4b(%rip)
0xffffff7f92f2cb3d: popq   %rbp
0xffffff7f92f2cb3e: retq
0xffffff7f92f2cb3f: pushq  %rbp
0xffffff7f92f2cb40: movq   %rsp, %rbp
0xffffff7f92f2cb43: xorl   %eax, %eax
0xffffff7f92f2cb45: popq   %rbp
0xffffff7f92f2cb46: retq
0xffffff7f92f2cb47: pushq  %rbp
0xffffff7f92f2cb48: movq   %rsp, %rbp
0xffffff7f92f2cb4b: cmpl   $0x0, 0x1f1e(%rip)
0xffffff7f92f2cb52: jne    0xffffff7f92f2cb6a
0xffffff7f92f2cb54: leaq   0x1f45(%rip), %rdi
0xffffff7f92f2cb5b: callq  0xffffff7f92f2d1c8
0xffffff7f92f2cb60: movl   %eax, 0x1f0e(%rip)
0xffffff7f92f2cb66: testl  %eax, %eax
0xffffff7f92f2cb68: jne    0xffffff7f92f2cb76
0xffffff7f92f2cb6a: leaq   0x1f2f(%rip), %rdi
0xffffff7f92f2cb71: callq  0xffffff7f92f2cd17
0xffffff7f92f2cb76: movl   0x1f24(%rip), %esi
0xffffff7f92f2cb7c: leaq   0x12a7(%rip), %rdi
0xffffff7f92f2cb83: xorl   %eax, %eax
0xffffff7f92f2cb85: callq  0xffffff800f919b70        ; kprintf at pe_kprintf.c:109
0xffffff7f92f2cb8a: movl   $0x3ff, %edi              ; imm = 0x3FF
0xffffff7f92f2cb8f: movl   $0x5a, %esi
0xffffff7f92f2cb94: callq  0xffffff7f92f2d4c4
0xffffff7f92f2cb99: movl   $0x3ff, %edi              ; imm = 0x3FF
0xffffff7f92f2cb9e: callq  0xffffff7f92f2d49f
0xffffff7f92f2cba3: movzbl %al, %eax
0xffffff7f92f2cba6: cmpl   $0x5a, %eax
0xffffff7f92f2cba9: je     0xffffff7f92f2cbb9
0xffffff7f92f2cbab: leaq   0x12a8(%rip), %rdi
0xffffff7f92f2cbb2: xorl   %eax, %eax
0xffffff7f92f2cbb4: callq  0xffffff800f919b70        ; kprintf at pe_kprintf.c:109
0xffffff7f92f2cbb9: movl   $0x3ff, %edi              ; imm = 0x3FF
0xffffff7f92f2cbbe: movl   $0xa5, %esi
0xffffff7f92f2cbc3: callq  0xffffff7f92f2d4c4
0xffffff7f92f2cbc8: movl   $0x3ff, %edi              ; imm = 0x3FF
0xffffff7f92f2cbcd: callq  0xffffff7f92f2d49f
0xffffff7f92f2cbd2: movzbl %al, %eax
0xffffff7f92f2cbd5: cmpl   $0xa5, %eax
0xffffff7f92f2cbda: je     0xffffff7f92f2cbea
0xffffff7f92f2cbdc: leaq   0x128c(%rip), %rdi
0xffffff7f92f2cbe3: xorl   %eax, %eax
0xffffff7f92f2cbe5: callq  0xffffff800f919b70        ; kprintf at pe_kprintf.c:109
0xffffff7f92f2cbea: callq  0xffffff800f919e60        ; serial_init at pe_serial.c:372
0xffffff7f92f2cbef: testl  %eax, %eax
0xffffff7f92f2cbf1: sete   %al
0xffffff7f92f2cbf4: movzbl %al, %eax
0xffffff7f92f2cbf7: leal   (%rax,%rax,4), %eax
0xffffff7f92f2cbfa: popq   %rbp
0xffffff7f92f2cbfb: retq
0xffffff7f92f2cbfc: cmpl   $0x0, 0x1e9d(%rip)
0xffffff7f92f2cc03: je     0xffffff7f92f2cc19
0xffffff7f92f2cc05: pushq  %rbp
0xffffff7f92f2cc06: movq   %rsp, %rbp
0xffffff7f92f2cc09: cmpl   $0x0, 0x1e64(%rip)
0xffffff7f92f2cc10: je     0xffffff7f92f2cc1a
0xffffff7f92f2cc12: callq  0xffffff7f92f2d122
0xffffff7f92f2cc17: jmp    0xffffff7f92f2cc1f
0xffffff7f92f2cc19: retq
0xffffff7f92f2cc1a: callq  0xffffff7f92f2cc38
0xffffff7f92f2cc1f: movl   $0x0, 0x1e77(%rip)
0xffffff7f92f2cc29: leaq   0x1254(%rip), %rdi
0xffffff7f92f2cc30: xorl   %eax, %eax
0xffffff7f92f2cc32: popq   %rbp
0xffffff7f92f2cc33: jmp    0xffffff800f919b70        ; kprintf at pe_kprintf.c:109
0xffffff7f92f2cc38: pushq  %rbp
0xffffff7f92f2cc39: movq   %rsp, %rbp
0xffffff7f92f2cc3c: pushq  %rbx
0xffffff7f92f2cc3d: pushq  %rax
0xffffff7f92f2cc3e: movb   $0x0, -0x9(%rbp)
0xffffff7f92f2cc42: leaq   -0x9(%rbp), %rdx
0xffffff7f92f2cc46: movl   $0x7a444247, %edi         ; imm = 0x7A444247
0xffffff7f92f2cc4b: movl   $0x1, %esi
0xffffff7f92f2cc50: callq  0xffffff7f92f2d03a
0xffffff7f92f2cc55: xorl   %ebx, %ebx
0xffffff7f92f2cc57: testl  %eax, %eax
0xffffff7f92f2cc59: je     0xffffff7f92f2cc7a
0xffffff7f92f2cc5b: movb   $0x0, -0x9(%rbp)
0xffffff7f92f2cc5f: leaq   -0x9(%rbp), %rdx
0xffffff7f92f2cc63: movl   $0x5343494c, %edi         ; imm = 0x5343494C
0xffffff7f92f2cc68: movl   $0x1, %esi
0xffffff7f92f2cc6d: callq  0xffffff7f92f2d03a
0xffffff7f92f2cc72: testl  %eax, %eax
0xffffff7f92f2cc74: setne  %al
0xffffff7f92f2cc77: movzbl %al, %ebx
0xffffff7f92f2cc7a: leaq   0x121b(%rip), %rdi
0xffffff7f92f2cc81: xorl   %eax, %eax
0xffffff7f92f2cc83: movl   %ebx, %esi
0xffffff7f92f2cc85: callq  0xffffff800f919b70        ; kprintf at pe_kprintf.c:109
0xffffff7f92f2cc8a: movl   %ebx, %eax
0xffffff7f92f2cc8c: addq   $0x8, %rsp
0xffffff7f92f2cc90: popq   %rbx
0xffffff7f92f2cc91: popq   %rbp
0xffffff7f92f2cc92: retq
0xffffff7f92f2cc93: pushq  %rbp
0xffffff7f92f2cc94: movq   %rsp, %rbp
0xffffff7f92f2cc97: pushq  %rbx
0xffffff7f92f2cc98: pushq  %rax
0xffffff7f92f2cc99: movb   $0x2, -0x9(%rbp)
0xffffff7f92f2cc9d: leaq   -0x9(%rbp), %rdx
0xffffff7f92f2cca1: movl   $0x7a444247, %edi         ; imm = 0x7A444247
0xffffff7f92f2cca6: movl   $0x1, %esi
0xffffff7f92f2ccab: callq  0xffffff7f92f2d03a
0xffffff7f92f2ccb0: testl  %eax, %eax
0xffffff7f92f2ccb2: setne  %al
0xffffff7f92f2ccb5: movzbl %al, %ebx
0xffffff7f92f2ccb8: leaq   0x11f2(%rip), %rdi
0xffffff7f92f2ccbf: xorl   %eax, %eax
0xffffff7f92f2ccc1: movl   %ebx, %esi
0xffffff7f92f2ccc3: callq  0xffffff800f919b70        ; kprintf at pe_kprintf.c:109
0xffffff7f92f2ccc8: movl   %ebx, %eax
0xffffff7f92f2ccca: addq   $0x8, %rsp
0xffffff7f92f2ccce: popq   %rbx
0xffffff7f92f2cccf: popq   %rbp
0xffffff7f92f2ccd0: retq
0xffffff7f92f2ccd1: pushq  %rbp
0xffffff7f92f2ccd2: movq   %rsp, %rbp
0xffffff7f92f2ccd5: pushq  %rbx
0xffffff7f92f2ccd6: pushq  %rax
0xffffff7f92f2ccd7: movb   %dil, -0x9(%rbp)
0xffffff7f92f2ccdb: leaq   -0x9(%rbp), %rdx
0xffffff7f92f2ccdf: movl   $0x5343494c, %edi         ; imm = 0x5343494C
0xffffff7f92f2cce4: movl   $0x1, %esi
0xffffff7f92f2cce9: callq  0xffffff7f92f2d03a
0xffffff7f92f2ccee: xorl   %ebx, %ebx
0xffffff7f92f2ccf0: testl  %eax, %eax
0xffffff7f92f2ccf2: je     0xffffff7f92f2ccfe
0xffffff7f92f2ccf4: callq  0xffffff7f92f2d38f
0xffffff7f92f2ccf9: movl   $0x1, %ebx
0xffffff7f92f2ccfe: leaq   0x11c0(%rip), %rdi
0xffffff7f92f2cd05: xorl   %eax, %eax
0xffffff7f92f2cd07: movl   %ebx, %esi
0xffffff7f92f2cd09: callq  0xffffff800f919b70        ; kprintf at pe_kprintf.c:109
0xffffff7f92f2cd0e: movl   %ebx, %eax
0xffffff7f92f2cd10: addq   $0x8, %rsp
0xffffff7f92f2cd14: popq   %rbx
0xffffff7f92f2cd15: popq   %rbp
0xffffff7f92f2cd16: retq
0xffffff7f92f2cd17: pushq  %rbp
0xffffff7f92f2cd18: movq   %rsp, %rbp
0xffffff7f92f2cd1b: pushq  %r15
0xffffff7f92f2cd1d: pushq  %r14
0xffffff7f92f2cd1f: pushq  %rbx
0xffffff7f92f2cd20: pushq  %rax
0xffffff7f92f2cd21: movq   %rdi, %r14
0xffffff7f92f2cd24: leaq   -0x1a(%rbp), %rdx
0xffffff7f92f2cd28: movl   $0x7a444247, %edi         ; imm = 0x7A444247
0xffffff7f92f2cd2d: movl   $0x1, %esi
0xffffff7f92f2cd32: callq  0xffffff7f92f2cf7b
0xffffff7f92f2cd37: xorl   %ebx, %ebx
0xffffff7f92f2cd39: testl  %eax, %eax
0xffffff7f92f2cd3b: je     0xffffff7f92f2cdb5
0xffffff7f92f2cd3d: movzbl -0x1a(%rbp), %eax
0xffffff7f92f2cd41: cmpl   $0x1, %eax
0xffffff7f92f2cd44: movl   $0x0, %edx
0xffffff7f92f2cd49: je     0xffffff7f92f2cdb7
0xffffff7f92f2cd4b: movb   $0x2, -0x19(%rbp)
0xffffff7f92f2cd4f: leaq   -0x19(%rbp), %rdx
0xffffff7f92f2cd53: movl   $0x7a444247, %edi         ; imm = 0x7A444247
0xffffff7f92f2cd58: movl   $0x1, %esi
0xffffff7f92f2cd5d: callq  0xffffff7f92f2d03a
0xffffff7f92f2cd62: movl   %eax, %r15d
0xffffff7f92f2cd65: testl  %r15d, %r15d
0xffffff7f92f2cd68: setne  %al
0xffffff7f92f2cd6b: movzbl %al, %esi
0xffffff7f92f2cd6e: leaq   0x113c(%rip), %rdi
0xffffff7f92f2cd75: xorl   %ebx, %ebx
0xffffff7f92f2cd77: xorl   %eax, %eax
0xffffff7f92f2cd79: callq  0xffffff800f919b70        ; kprintf at pe_kprintf.c:109
0xffffff7f92f2cd7e: testl  %r15d, %r15d
0xffffff7f92f2cd81: movl   $0x0, %edx
0xffffff7f92f2cd86: je     0xffffff7f92f2cdb7
0xffffff7f92f2cd88: cmpb   $0x0, -0x1a(%rbp)
0xffffff7f92f2cd8c: sete   %al
0xffffff7f92f2cd8f: movzbl %al, %eax
0xffffff7f92f2cd92: movl   %eax, (%r14)
0xffffff7f92f2cd95: movl   $0x2, %edi
0xffffff7f92f2cd9a: callq  0xffffff7f92f2ccd1
0xffffff7f92f2cd9f: testl  %eax, %eax
0xffffff7f92f2cda1: setne  %al
0xffffff7f92f2cda4: movzbl %al, %ebx
0xffffff7f92f2cda7: jne    0xffffff7f92f2cdae
0xffffff7f92f2cda9: callq  0xffffff7f92f2cc38
0xffffff7f92f2cdae: movl   $0x1, %edx
0xffffff7f92f2cdb3: jmp    0xffffff7f92f2cdb7
0xffffff7f92f2cdb5: xorl   %edx, %edx
0xffffff7f92f2cdb7: leaq   0x1116(%rip), %rdi
0xffffff7f92f2cdbe: xorl   %eax, %eax
0xffffff7f92f2cdc0: movl   %ebx, %esi
0xffffff7f92f2cdc2: callq  0xffffff800f919b70        ; kprintf at pe_kprintf.c:109
0xffffff7f92f2cdc7: movl   %ebx, %eax
0xffffff7f92f2cdc9: addq   $0x8, %rsp
0xffffff7f92f2cdcd: popq   %rbx
0xffffff7f92f2cdce: popq   %r14
0xffffff7f92f2cdd0: popq   %r15
0xffffff7f92f2cdd2: popq   %rbp
0xffffff7f92f2cdd3: retq
0xffffff7f92f2cdd4: pushq  %rbp
0xffffff7f92f2cdd5: movq   %rsp, %rbp
0xffffff7f92f2cdd8: pushq  %r15
0xffffff7f92f2cdda: pushq  %r14
0xffffff7f92f2cddc: pushq  %r13
0xffffff7f92f2cdde: pushq  %r12
0xffffff7f92f2cde0: pushq  %rbx
0xffffff7f92f2cde1: pushq  %rax
0xffffff7f92f2cde2: movq   %rcx, %r14
0xffffff7f92f2cde5: movq   %rdx, %r13
0xffffff7f92f2cde8: movq   %rsi, %r15
0xffffff7f92f2cdeb: movl   %edi, %r12d
0xffffff7f92f2cdee: movl   $0x4, %edi
0xffffff7f92f2cdf3: xorl   %esi, %esi
0xffffff7f92f2cdf5: callq  0xffffff7f92f2d0d7
0xffffff7f92f2cdfa: testl  %eax, %eax
0xffffff7f92f2cdfc: je     0xffffff7f92f2ce7a
0xffffff7f92f2cdfe: movl   $0x13, %edi
0xffffff7f92f2ce03: callq  0xffffff7f92f2ce8b
0xffffff7f92f2ce08: testl  %eax, %eax
0xffffff7f92f2ce0a: je     0xffffff7f92f2ce7a
0xffffff7f92f2ce0c: movl   %r12d, %edi
0xffffff7f92f2ce0f: callq  0xffffff7f92f2ced2
0xffffff7f92f2ce14: testl  %eax, %eax
0xffffff7f92f2ce16: je     0xffffff7f92f2ce7a
0xffffff7f92f2ce18: movq   %r15, %rdi
0xffffff7f92f2ce1b: callq  0xffffff7f92f2cf1e
0xffffff7f92f2ce20: testl  %eax, %eax
0xffffff7f92f2ce22: je     0xffffff7f92f2ce7a
0xffffff7f92f2ce24: movq   %r13, %rdi
0xffffff7f92f2ce27: callq  0xffffff7f92f2cf1e
0xffffff7f92f2ce2c: testl  %eax, %eax
0xffffff7f92f2ce2e: sete   %cl
0xffffff7f92f2ce31: xorl   %ebx, %ebx
0xffffff7f92f2ce33: testb  $0x1, %cl
0xffffff7f92f2ce36: jne    0xffffff7f92f2ce7a
0xffffff7f92f2ce38: shll   $0x8, (%r13)
0xffffff7f92f2ce3d: incb   %bl
0xffffff7f92f2ce3f: movq   %r13, %rdi
0xffffff7f92f2ce42: callq  0xffffff7f92f2cf1e
0xffffff7f92f2ce47: testl  %eax, %eax
0xffffff7f92f2ce49: sete   %cl
0xffffff7f92f2ce4c: movzbl %bl, %edx
0xffffff7f92f2ce4f: cmpl   $0x3, %edx
0xffffff7f92f2ce52: jb     0xffffff7f92f2ce33
0xffffff7f92f2ce54: testl  %eax, %eax
0xffffff7f92f2ce56: je     0xffffff7f92f2ce7a
0xffffff7f92f2ce58: movq   %r14, %rdi
0xffffff7f92f2ce5b: callq  0xffffff7f92f2cf1e
0xffffff7f92f2ce60: testl  %eax, %eax
0xffffff7f92f2ce62: je     0xffffff7f92f2ce7a
0xffffff7f92f2ce64: movl   $0x4, %edi
0xffffff7f92f2ce69: xorl   %esi, %esi
0xffffff7f92f2ce6b: callq  0xffffff7f92f2d0d7
0xffffff7f92f2ce70: testl  %eax, %eax
0xffffff7f92f2ce72: setne  %al
0xffffff7f92f2ce75: movzbl %al, %eax
0xffffff7f92f2ce78: jmp    0xffffff7f92f2ce7c
0xffffff7f92f2ce7a: xorl   %eax, %eax
0xffffff7f92f2ce7c: addq   $0x8, %rsp
0xffffff7f92f2ce80: popq   %rbx
0xffffff7f92f2ce81: popq   %r12
0xffffff7f92f2ce83: popq   %r13
0xffffff7f92f2ce85: popq   %r14
0xffffff7f92f2ce87: popq   %r15
0xffffff7f92f2ce89: popq   %rbp
0xffffff7f92f2ce8a: retq
0xffffff7f92f2ce8b: pushq  %rbp
0xffffff7f92f2ce8c: movq   %rsp, %rbp
0xffffff7f92f2ce8f: pushq  %rbx
0xffffff7f92f2ce90: pushq  %rax
0xffffff7f92f2ce91: movl   %edi, %ebx
0xffffff7f92f2ce93: movl   $0x2, %edi
0xffffff7f92f2ce98: xorl   %esi, %esi
0xffffff7f92f2ce9a: callq  0xffffff7f92f2d0d7
0xffffff7f92f2ce9f: testl  %eax, %eax
0xffffff7f92f2cea1: je     0xffffff7f92f2cec9
0xffffff7f92f2cea3: movzbl %bl, %esi
0xffffff7f92f2cea6: movl   $0x304, %edi              ; imm = 0x304
0xffffff7f92f2ceab: callq  0xffffff7f92f2d4c4
0xffffff7f92f2ceb0: movl   $0x4, %edi
0xffffff7f92f2ceb5: movl   $0x4, %esi
0xffffff7f92f2ceba: callq  0xffffff7f92f2d0d7
0xffffff7f92f2cebf: testl  %eax, %eax
0xffffff7f92f2cec1: setne  %al
0xffffff7f92f2cec4: movzbl %al, %eax
0xffffff7f92f2cec7: jmp    0xffffff7f92f2cecb
0xffffff7f92f2cec9: xorl   %eax, %eax
0xffffff7f92f2cecb: addq   $0x8, %rsp
0xffffff7f92f2cecf: popq   %rbx
0xffffff7f92f2ced0: popq   %rbp
0xffffff7f92f2ced1: retq
0xffffff7f92f2ced2: pushq  %rbp
0xffffff7f92f2ced3: movq   %rsp, %rbp
0xffffff7f92f2ced6: pushq  %rbx
0xffffff7f92f2ced7: pushq  %rax
0xffffff7f92f2ced8: movl   %edi, %ebx
0xffffff7f92f2ceda: shrl   $0x18, %edi
0xffffff7f92f2cedd: callq  0xffffff7f92f2d004
0xffffff7f92f2cee2: testl  %eax, %eax
0xffffff7f92f2cee4: je     0xffffff7f92f2cf15
0xffffff7f92f2cee6: movl   %ebx, %eax
0xffffff7f92f2cee8: shrl   $0x10, %eax
0xffffff7f92f2ceeb: movzbl %al, %edi
0xffffff7f92f2ceee: callq  0xffffff7f92f2d004
0xffffff7f92f2cef3: testl  %eax, %eax
0xffffff7f92f2cef5: je     0xffffff7f92f2cf15
0xffffff7f92f2cef7: movzbl %bh, %edi
0xffffff7f92f2cefa: callq  0xffffff7f92f2d004
0xffffff7f92f2ceff: testl  %eax, %eax
0xffffff7f92f2cf01: je     0xffffff7f92f2cf15
0xffffff7f92f2cf03: movzbl %bl, %edi
0xffffff7f92f2cf06: callq  0xffffff7f92f2d004
0xffffff7f92f2cf0b: testl  %eax, %eax
0xffffff7f92f2cf0d: setne  %al
0xffffff7f92f2cf10: movzbl %al, %eax
0xffffff7f92f2cf13: jmp    0xffffff7f92f2cf17
0xffffff7f92f2cf15: xorl   %eax, %eax
0xffffff7f92f2cf17: addq   $0x8, %rsp
0xffffff7f92f2cf1b: popq   %rbx
0xffffff7f92f2cf1c: popq   %rbp
0xffffff7f92f2cf1d: retq
0xffffff7f92f2cf1e: pushq  %rbp
0xffffff7f92f2cf1f: movq   %rsp, %rbp
0xffffff7f92f2cf22: pushq  %rbx
0xffffff7f92f2cf23: pushq  %rax
0xffffff7f92f2cf24: movq   %rdi, %rbx
0xffffff7f92f2cf27: movl   $0x4, %edi
0xffffff7f92f2cf2c: movl   $0x4, %esi
0xffffff7f92f2cf31: callq  0xffffff7f92f2d0d7
0xffffff7f92f2cf36: testl  %eax, %eax
0xffffff7f92f2cf38: je     0xffffff7f92f2cf72
0xffffff7f92f2cf3a: movl   $0x1, %edi
0xffffff7f92f2cf3f: movl   $0x1, %esi
0xffffff7f92f2cf44: callq  0xffffff7f92f2d0d7
0xffffff7f92f2cf49: testl  %eax, %eax
0xffffff7f92f2cf4b: je     0xffffff7f92f2cf72
0xffffff7f92f2cf4d: movl   $0x300, %edi              ; imm = 0x300
0xffffff7f92f2cf52: callq  0xffffff7f92f2d49f
0xffffff7f92f2cf57: movb   %al, (%rbx)
0xffffff7f92f2cf59: movl   $0x4, %edi
0xffffff7f92f2cf5e: movl   $0x4, %esi
0xffffff7f92f2cf63: callq  0xffffff7f92f2d0d7
0xffffff7f92f2cf68: testl  %eax, %eax
0xffffff7f92f2cf6a: setne  %al
0xffffff7f92f2cf6d: movzbl %al, %eax
0xffffff7f92f2cf70: jmp    0xffffff7f92f2cf74
0xffffff7f92f2cf72: xorl   %eax, %eax
0xffffff7f92f2cf74: addq   $0x8, %rsp
0xffffff7f92f2cf78: popq   %rbx
0xffffff7f92f2cf79: popq   %rbp
0xffffff7f92f2cf7a: retq
0xffffff7f92f2cf7b: pushq  %rbp
0xffffff7f92f2cf7c: movq   %rsp, %rbp
0xffffff7f92f2cf7f: pushq  %r15
0xffffff7f92f2cf81: pushq  %r14
0xffffff7f92f2cf83: pushq  %r12
0xffffff7f92f2cf85: pushq  %rbx
0xffffff7f92f2cf86: movq   %rdx, %r15
0xffffff7f92f2cf89: movl   %esi, %r14d
0xffffff7f92f2cf8c: movl   %edi, %ebx
0xffffff7f92f2cf8e: movl   $0x4, %edi
0xffffff7f92f2cf93: xorl   %esi, %esi
0xffffff7f92f2cf95: callq  0xffffff7f92f2d0d7
0xffffff7f92f2cf9a: testl  %eax, %eax
0xffffff7f92f2cf9c: je     0xffffff7f92f2cff9
0xffffff7f92f2cf9e: movl   $0x10, %edi
0xffffff7f92f2cfa3: callq  0xffffff7f92f2ce8b
0xffffff7f92f2cfa8: testl  %eax, %eax
0xffffff7f92f2cfaa: je     0xffffff7f92f2cff9
0xffffff7f92f2cfac: movl   %ebx, %edi
0xffffff7f92f2cfae: callq  0xffffff7f92f2ced2
0xffffff7f92f2cfb3: testl  %eax, %eax
0xffffff7f92f2cfb5: je     0xffffff7f92f2cff9
0xffffff7f92f2cfb7: movzbl %r14b, %r12d
0xffffff7f92f2cfbb: movl   %r12d, %edi
0xffffff7f92f2cfbe: callq  0xffffff7f92f2d004
0xffffff7f92f2cfc3: testl  %eax, %eax
0xffffff7f92f2cfc5: je     0xffffff7f92f2cff9
0xffffff7f92f2cfc7: testb  %r14b, %r14b
0xffffff7f92f2cfca: je     0xffffff7f92f2cfe3
0xffffff7f92f2cfcc: xorl   %ebx, %ebx
0xffffff7f92f2cfce: leaq   (%r15,%rbx), %rdi
0xffffff7f92f2cfd2: callq  0xffffff7f92f2cf1e
0xffffff7f92f2cfd7: testl  %eax, %eax
0xffffff7f92f2cfd9: je     0xffffff7f92f2cff9
0xffffff7f92f2cfdb: incq   %rbx
0xffffff7f92f2cfde: cmpq   %r12, %rbx
0xffffff7f92f2cfe1: jb     0xffffff7f92f2cfce
0xffffff7f92f2cfe3: movl   $0x4, %edi
0xffffff7f92f2cfe8: xorl   %esi, %esi
0xffffff7f92f2cfea: callq  0xffffff7f92f2d0d7
0xffffff7f92f2cfef: testl  %eax, %eax
0xffffff7f92f2cff1: setne  %al
0xffffff7f92f2cff4: movzbl %al, %eax
0xffffff7f92f2cff7: jmp    0xffffff7f92f2cffb
0xffffff7f92f2cff9: xorl   %eax, %eax
0xffffff7f92f2cffb: popq   %rbx
0xffffff7f92f2cffc: popq   %r12
0xffffff7f92f2cffe: popq   %r14
0xffffff7f92f2d000: popq   %r15
0xffffff7f92f2d002: popq   %rbp
0xffffff7f92f2d003: retq
0xffffff7f92f2d004: pushq  %rbp
0xffffff7f92f2d005: movq   %rsp, %rbp
0xffffff7f92f2d008: pushq  %r14
0xffffff7f92f2d00a: pushq  %rbx
0xffffff7f92f2d00b: movl   %edi, %r14d
0xffffff7f92f2d00e: xorl   %ebx, %ebx
0xffffff7f92f2d010: movl   $0x2, %edi
0xffffff7f92f2d015: xorl   %esi, %esi
0xffffff7f92f2d017: callq  0xffffff7f92f2d0d7
0xffffff7f92f2d01c: testl  %eax, %eax
0xffffff7f92f2d01e: je     0xffffff7f92f2d033
0xffffff7f92f2d020: movzbl %r14b, %esi
0xffffff7f92f2d024: movl   $0x300, %edi              ; imm = 0x300
0xffffff7f92f2d029: callq  0xffffff7f92f2d4c4
0xffffff7f92f2d02e: movl   $0x1, %ebx
0xffffff7f92f2d033: movl   %ebx, %eax
0xffffff7f92f2d035: popq   %rbx
0xffffff7f92f2d036: popq   %r14
0xffffff7f92f2d038: popq   %rbp
0xffffff7f92f2d039: retq
0xffffff7f92f2d03a: pushq  %rbp
0xffffff7f92f2d03b: movq   %rsp, %rbp
0xffffff7f92f2d03e: pushq  %r15
0xffffff7f92f2d040: pushq  %r14
0xffffff7f92f2d042: pushq  %r12
0xffffff7f92f2d044: pushq  %rbx
0xffffff7f92f2d045: movq   %rdx, %r15
0xffffff7f92f2d048: movl   %esi, %r14d
0xffffff7f92f2d04b: movl   %edi, %ebx
0xffffff7f92f2d04d: movl   $0x4, %edi
0xffffff7f92f2d052: xorl   %esi, %esi
0xffffff7f92f2d054: callq  0xffffff7f92f2d0d7
0xffffff7f92f2d059: testl  %eax, %eax
0xffffff7f92f2d05b: je     0xffffff7f92f2d0cc
0xffffff7f92f2d05d: movl   $0x11, %edi
0xffffff7f92f2d062: callq  0xffffff7f92f2ce8b
0xffffff7f92f2d067: testl  %eax, %eax
0xffffff7f92f2d069: je     0xffffff7f92f2d0cc
0xffffff7f92f2d06b: movl   $0x4, %edi
0xffffff7f92f2d070: movl   $0x4, %esi
0xffffff7f92f2d075: callq  0xffffff7f92f2d0d7
0xffffff7f92f2d07a: testl  %eax, %eax
0xffffff7f92f2d07c: je     0xffffff7f92f2d0cc
0xffffff7f92f2d07e: movl   %ebx, %edi
0xffffff7f92f2d080: callq  0xffffff7f92f2ced2
0xffffff7f92f2d085: testl  %eax, %eax
0xffffff7f92f2d087: je     0xffffff7f92f2d0cc
0xffffff7f92f2d089: movzbl %r14b, %r12d
0xffffff7f92f2d08d: movl   %r12d, %edi
0xffffff7f92f2d090: callq  0xffffff7f92f2d004
0xffffff7f92f2d095: testl  %eax, %eax
0xffffff7f92f2d097: je     0xffffff7f92f2d0cc
0xffffff7f92f2d099: testb  %r14b, %r14b
0xffffff7f92f2d09c: je     0xffffff7f92f2d0b6
0xffffff7f92f2d09e: xorl   %ebx, %ebx
0xffffff7f92f2d0a0: movzbl (%r15,%rbx), %edi
0xffffff7f92f2d0a5: callq  0xffffff7f92f2d004
0xffffff7f92f2d0aa: testl  %eax, %eax
0xffffff7f92f2d0ac: je     0xffffff7f92f2d0cc
0xffffff7f92f2d0ae: incq   %rbx
0xffffff7f92f2d0b1: cmpq   %r12, %rbx
0xffffff7f92f2d0b4: jb     0xffffff7f92f2d0a0
0xffffff7f92f2d0b6: movl   $0x4, %edi
0xffffff7f92f2d0bb: xorl   %esi, %esi
0xffffff7f92f2d0bd: callq  0xffffff7f92f2d0d7
0xffffff7f92f2d0c2: testl  %eax, %eax
0xffffff7f92f2d0c4: setne  %al
0xffffff7f92f2d0c7: movzbl %al, %eax
0xffffff7f92f2d0ca: jmp    0xffffff7f92f2d0ce
0xffffff7f92f2d0cc: xorl   %eax, %eax
0xffffff7f92f2d0ce: popq   %rbx
0xffffff7f92f2d0cf: popq   %r12
0xffffff7f92f2d0d1: popq   %r14
0xffffff7f92f2d0d3: popq   %r15
0xffffff7f92f2d0d5: popq   %rbp
0xffffff7f92f2d0d6: retq
0xffffff7f92f2d0d7: pushq  %rbp
0xffffff7f92f2d0d8: movq   %rsp, %rbp
0xffffff7f92f2d0db: pushq  %r15
0xffffff7f92f2d0dd: pushq  %r14
0xffffff7f92f2d0df: pushq  %rbx
0xffffff7f92f2d0e0: pushq  %rax
0xffffff7f92f2d0e1: movl   %edi, %r14d
0xffffff7f92f2d0e4: movl   $0xfffffc18, %ebx         ; imm = 0xFFFFFC18
0xffffff7f92f2d0e9: movzbl %sil, %r15d
0xffffff7f92f2d0ed: movl   $0x304, %edi              ; imm = 0x304
0xffffff7f92f2d0f2: callq  0xffffff7f92f2d49f
0xffffff7f92f2d0f7: andb   %r14b, %al
0xffffff7f92f2d0fa: movzbl %al, %ecx
0xffffff7f92f2d0fd: movl   $0x1, %eax
0xffffff7f92f2d102: cmpl   %r15d, %ecx
0xffffff7f92f2d105: je     0xffffff7f92f2d117
0xffffff7f92f2d107: movl   $0x64, %edi
0xffffff7f92f2d10c: callq  0xffffff800f883770        ; ::IODelay(unsigned int) at IOLib.cpp:1131
0xffffff7f92f2d111: xorl   %eax, %eax
0xffffff7f92f2d113: incl   %ebx
0xffffff7f92f2d115: jne    0xffffff7f92f2d0ed
0xffffff7f92f2d117: addq   $0x8, %rsp
0xffffff7f92f2d11b: popq   %rbx
0xffffff7f92f2d11c: popq   %r14
0xffffff7f92f2d11e: popq   %r15
0xffffff7f92f2d120: popq   %rbp
0xffffff7f92f2d121: retq
0xffffff7f92f2d122: pushq  %rbp
0xffffff7f92f2d123: movq   %rsp, %rbp
0xffffff7f92f2d126: pushq  %rbx
0xffffff7f92f2d127: pushq  %rax
0xffffff7f92f2d128: movb   $0x0, -0x9(%rbp)
0xffffff7f92f2d12c: leaq   -0x9(%rbp), %rdx
0xffffff7f92f2d130: movl   $0x7a4d4f4a, %edi         ; imm = 0x7A4D4F4A
0xffffff7f92f2d135: movl   $0x1, %esi
0xffffff7f92f2d13a: callq  0xffffff7f92f2d03a
0xffffff7f92f2d13f: testl  %eax, %eax
0xffffff7f92f2d141: setne  %al
0xffffff7f92f2d144: movzbl %al, %ebx
0xffffff7f92f2d147: leaq   0xdaa(%rip), %rdi
0xffffff7f92f2d14e: xorl   %eax, %eax
0xffffff7f92f2d150: movl   %ebx, %esi
0xffffff7f92f2d152: callq  0xffffff800f919b70        ; kprintf at pe_kprintf.c:109
0xffffff7f92f2d157: movl   %ebx, %eax
0xffffff7f92f2d159: addq   $0x8, %rsp
0xffffff7f92f2d15d: popq   %rbx
0xffffff7f92f2d15e: popq   %rbp
0xffffff7f92f2d15f: retq
0xffffff7f92f2d160: pushq  %rbp
0xffffff7f92f2d161: movq   %rsp, %rbp
0xffffff7f92f2d164: pushq  %rbx
0xffffff7f92f2d165: pushq  %rax
0xffffff7f92f2d166: leaq   -0xd(%rbp), %rsi
0xffffff7f92f2d16a: leaq   -0xc(%rbp), %rdx
0xffffff7f92f2d16e: leaq   -0xf(%rbp), %rcx
0xffffff7f92f2d172: movl   $0x7a4d4f4a, %edi         ; imm = 0x7A4D4F4A
0xffffff7f92f2d177: callq  0xffffff7f92f2cdd4
0xffffff7f92f2d17c: xorl   %ebx, %ebx
0xffffff7f92f2d17e: testl  %eax, %eax
0xffffff7f92f2d180: je     0xffffff7f92f2d1bf
0xffffff7f92f2d182: leaq   -0xd(%rbp), %rsi
0xffffff7f92f2d186: leaq   -0xc(%rbp), %rdx
0xffffff7f92f2d18a: leaq   -0xf(%rbp), %rcx
0xffffff7f92f2d18e: movl   $0x4d4f4a4f, %edi         ; imm = 0x4D4F4A4F
0xffffff7f92f2d193: callq  0xffffff7f92f2cdd4
0xffffff7f92f2d198: testl  %eax, %eax
0xffffff7f92f2d19a: je     0xffffff7f92f2d1bf
0xffffff7f92f2d19c: movb   $0x1, %al
0xffffff7f92f2d19e: movb   %al, -0xd(%rbp)
0xffffff7f92f2d1a1: movb   %al, -0xe(%rbp)
0xffffff7f92f2d1a4: leaq   -0xe(%rbp), %rdx
0xffffff7f92f2d1a8: movl   $0x7a4d4f4a, %edi         ; imm = 0x7A4D4F4A
0xffffff7f92f2d1ad: movl   $0x1, %esi
0xffffff7f92f2d1b2: callq  0xffffff7f92f2d03a
0xffffff7f92f2d1b7: testl  %eax, %eax
0xffffff7f92f2d1b9: setne  %al
0xffffff7f92f2d1bc: movzbl %al, %ebx
0xffffff7f92f2d1bf: movl   %ebx, %eax
0xffffff7f92f2d1c1: addq   $0x8, %rsp
0xffffff7f92f2d1c5: popq   %rbx
0xffffff7f92f2d1c6: popq   %rbp
0xffffff7f92f2d1c7: retq
0xffffff7f92f2d1c8: pushq  %rbp
0xffffff7f92f2d1c9: movq   %rsp, %rbp
0xffffff7f92f2d1cc: pushq  %r15
0xffffff7f92f2d1ce: pushq  %r14
0xffffff7f92f2d1d0: pushq  %r12
0xffffff7f92f2d1d2: pushq  %rbx
0xffffff7f92f2d1d3: subq   $0x10, %rsp
0xffffff7f92f2d1d7: movq   %rdi, %r15
0xffffff7f92f2d1da: leaq   -0x25(%rbp), %rdx
0xffffff7f92f2d1de: movl   $0x7a444247, %edi         ; imm = 0x7A444247
0xffffff7f92f2d1e3: movl   $0x1, %esi
0xffffff7f92f2d1e8: callq  0xffffff7f92f2cf7b
0xffffff7f92f2d1ed: xorl   %r14d, %r14d
0xffffff7f92f2d1f0: testl  %eax, %eax
0xffffff7f92f2d1f2: je     0xffffff7f92f2d2ed
0xffffff7f92f2d1f8: movzbl -0x25(%rbp), %eax
0xffffff7f92f2d1fc: cmpl   $0x1, %eax
0xffffff7f92f2d1ff: je     0xffffff7f92f2d2ed
0xffffff7f92f2d205: callq  0xffffff7f92f2d160
0xffffff7f92f2d20a: testl  %eax, %eax
0xffffff7f92f2d20c: movl   $0x0, %ebx
0xffffff7f92f2d211: je     0xffffff7f92f2d2ef
0xffffff7f92f2d217: cmpb   $0x0, -0x25(%rbp)
0xffffff7f92f2d21b: sete   %al
0xffffff7f92f2d21e: movzbl %al, %eax
0xffffff7f92f2d221: movl   %eax, (%r15)
0xffffff7f92f2d224: movb   $0x1, -0x25(%rbp)
0xffffff7f92f2d228: movl   $0x1, %r14d
0xffffff7f92f2d22e: leaq   -0x25(%rbp), %rdx
0xffffff7f92f2d232: movl   $0x4d4f4a4f, %edi         ; imm = 0x4D4F4A4F
0xffffff7f92f2d237: movl   $0x1, %esi
0xffffff7f92f2d23c: callq  0xffffff7f92f2d03a
0xffffff7f92f2d241: testl  %eax, %eax
0xffffff7f92f2d243: je     0xffffff7f92f2d2ae
0xffffff7f92f2d245: leaq   -0x24(%rbp), %r12
0xffffff7f92f2d249: leaq   0xcd4(%rip), %r15
0xffffff7f92f2d250: leaq   -0x25(%rbp), %rbx
0xffffff7f92f2d254: movl   $0x7a120, %edi            ; imm = 0x7A120
0xffffff7f92f2d259: callq  0xffffff800f883770        ; ::IODelay(unsigned int) at IOLib.cpp:1131
0xffffff7f92f2d25e: movl   $0x5354444b, %edi         ; imm = 0x5354444B
0xffffff7f92f2d263: movl   $0x2, %esi
0xffffff7f92f2d268: movq   %r12, %rdx
0xffffff7f92f2d26b: callq  0xffffff7f92f2cf7b
0xffffff7f92f2d270: testl  %eax, %eax
0xffffff7f92f2d272: je     0xffffff7f92f2d280
0xffffff7f92f2d274: cmpw   $0x0, -0x24(%rbp)
0xffffff7f92f2d279: je     0xffffff7f92f2d28a
0xffffff7f92f2d27b: jmp    0xffffff7f92f2d311
0xffffff7f92f2d280: xorl   %eax, %eax
0xffffff7f92f2d282: movq   %r15, %rdi
0xffffff7f92f2d285: callq  0xffffff800f919b70        ; kprintf at pe_kprintf.c:109
0xffffff7f92f2d28a: movl   $0x7a120, %edi            ; imm = 0x7A120
0xffffff7f92f2d28f: callq  0xffffff800f883770        ; ::IODelay(unsigned int) at IOLib.cpp:1131
0xffffff7f92f2d294: movb   $0x1, -0x25(%rbp)
0xffffff7f92f2d298: movl   $0x4d4f4a4f, %edi         ; imm = 0x4D4F4A4F
0xffffff7f92f2d29d: movl   $0x1, %esi
0xffffff7f92f2d2a2: movq   %rbx, %rdx
0xffffff7f92f2d2a5: callq  0xffffff7f92f2d03a
0xffffff7f92f2d2aa: testl  %eax, %eax
0xffffff7f92f2d2ac: jne    0xffffff7f92f2d254
0xffffff7f92f2d2ae: leaq   0xc59(%rip), %rdi
0xffffff7f92f2d2b5: xorl   %ebx, %ebx
0xffffff7f92f2d2b7: xorl   %eax, %eax
0xffffff7f92f2d2b9: callq  0xffffff800f883790        ; ::IOLog(const char *, ...) at IOLib.cpp:1154
0xffffff7f92f2d2be: movb   $0x0, -0x21(%rbp)
0xffffff7f92f2d2c2: leaq   -0x21(%rbp), %rdx
0xffffff7f92f2d2c6: movl   $0x7a4d4f4a, %edi         ; imm = 0x7A4D4F4A
0xffffff7f92f2d2cb: movl   $0x1, %esi
0xffffff7f92f2d2d0: callq  0xffffff7f92f2d03a
0xffffff7f92f2d2d5: testl  %eax, %eax
0xffffff7f92f2d2d7: setne  %al
0xffffff7f92f2d2da: movzbl %al, %esi
0xffffff7f92f2d2dd: leaq   0xc14(%rip), %rdi
0xffffff7f92f2d2e4: xorl   %eax, %eax
0xffffff7f92f2d2e6: callq  0xffffff800f919b70        ; kprintf at pe_kprintf.c:109
0xffffff7f92f2d2eb: jmp    0xffffff7f92f2d2ef
0xffffff7f92f2d2ed: xorl   %ebx, %ebx
0xffffff7f92f2d2ef: leaq   0xbde(%rip), %rdi
0xffffff7f92f2d2f6: xorl   %eax, %eax
0xffffff7f92f2d2f8: movl   %ebx, %esi
0xffffff7f92f2d2fa: movl   %r14d, %edx
0xffffff7f92f2d2fd: callq  0xffffff800f919b70        ; kprintf at pe_kprintf.c:109
0xffffff7f92f2d302: movl   %ebx, %eax
0xffffff7f92f2d304: addq   $0x10, %rsp
0xffffff7f92f2d308: popq   %rbx
0xffffff7f92f2d309: popq   %r12
0xffffff7f92f2d30b: popq   %r14
0xffffff7f92f2d30d: popq   %r15
0xffffff7f92f2d30f: popq   %rbp
0xffffff7f92f2d310: retq
0xffffff7f92f2d311: callq  0xffffff7f92f2d346
0xffffff7f92f2d316: callq  0xffffff7f92f2d328
0xffffff7f92f2d31b: movl   $0x1, %r14d
0xffffff7f92f2d321: movl   $0x1, %ebx
0xffffff7f92f2d326: jmp    0xffffff7f92f2d2ef
0xffffff7f92f2d328: pushq  %rbp
0xffffff7f92f2d329: movq   %rsp, %rbp
0xffffff7f92f2d32c: movl   $0x3fa, %edi              ; imm = 0x3FA
0xffffff7f92f2d331: callq  0xffffff7f92f2d49f
0xffffff7f92f2d336: orb    $0x2, %al
0xffffff7f92f2d338: movzbl %al, %esi
0xffffff7f92f2d33b: movl   $0x3fa, %edi              ; imm = 0x3FA
0xffffff7f92f2d340: popq   %rbp
0xffffff7f92f2d341: jmp    0xffffff7f92f2d4c4
0xffffff7f92f2d346: pushq  %rbp
0xffffff7f92f2d347: movq   %rsp, %rbp
0xffffff7f92f2d34a: movl   $0x3fa, %edi              ; imm = 0x3FA
0xffffff7f92f2d34f: callq  0xffffff7f92f2d49f
0xffffff7f92f2d354: orb    $0x4, %al
0xffffff7f92f2d356: movzbl %al, %esi
0xffffff7f92f2d359: movl   $0x3fa, %edi              ; imm = 0x3FA
0xffffff7f92f2d35e: popq   %rbp
0xffffff7f92f2d35f: jmp    0xffffff7f92f2d4c4
0xffffff7f92f2d364: pushq  %rbp
0xffffff7f92f2d365: movq   %rsp, %rbp
0xffffff7f92f2d368: movl   $0x3ff, %edi              ; imm = 0x3FF
0xffffff7f92f2d36d: movl   $0x21, %esi
0xffffff7f92f2d372: callq  0xffffff7f92f2d4c4
0xffffff7f92f2d377: movl   $0x3ff, %edi              ; imm = 0x3FF
0xffffff7f92f2d37c: callq  0xffffff7f92f2d49f
0xffffff7f92f2d381: movzbl %al, %eax
0xffffff7f92f2d384: cmpl   $0x21, %eax
0xffffff7f92f2d387: sete   %al
0xffffff7f92f2d38a: movzbl %al, %eax
0xffffff7f92f2d38d: popq   %rbp
0xffffff7f92f2d38e: retq
0xffffff7f92f2d38f: pushq  %rbp
0xffffff7f92f2d390: movq   %rsp, %rbp
0xffffff7f92f2d393: movl   $0x3fb, %edi              ; imm = 0x3FB
0xffffff7f92f2d398: movl   $0x80, %esi
0xffffff7f92f2d39d: callq  0xffffff7f92f2d4c4
0xffffff7f92f2d3a2: movl   $0x3f9, %edi              ; imm = 0x3F9
0xffffff7f92f2d3a7: xorl   %esi, %esi
0xffffff7f92f2d3a9: callq  0xffffff7f92f2d4c4
0xffffff7f92f2d3ae: movl   $0x3f8, %edi              ; imm = 0x3F8
0xffffff7f92f2d3b3: movl   $0x1, %esi
0xffffff7f92f2d3b8: callq  0xffffff7f92f2d4c4
0xffffff7f92f2d3bd: movl   $0x3fa, %edi              ; imm = 0x3FA
0xffffff7f92f2d3c2: movl   $0x1, %esi
0xffffff7f92f2d3c7: callq  0xffffff7f92f2d4c4
0xffffff7f92f2d3cc: movl   $0x3fb, %edi              ; imm = 0x3FB
0xffffff7f92f2d3d1: movl   $0x3, %esi
0xffffff7f92f2d3d6: callq  0xffffff7f92f2d4c4
0xffffff7f92f2d3db: movl   $0x3fc, %edi              ; imm = 0x3FC
0xffffff7f92f2d3e0: movl   $0x3, %esi
0xffffff7f92f2d3e5: popq   %rbp
0xffffff7f92f2d3e6: jmp    0xffffff7f92f2d4c4
0xffffff7f92f2d3eb: pushq  %rbp
0xffffff7f92f2d3ec: movq   %rsp, %rbp
0xffffff7f92f2d3ef: pushq  %rbx
0xffffff7f92f2d3f0: pushq  %rax
0xffffff7f92f2d3f1: movq   %rdi, %rbx
0xffffff7f92f2d3f4: movl   $0x3fd, %edi              ; imm = 0x3FD
0xffffff7f92f2d3f9: callq  0xffffff7f92f2d49f
0xffffff7f92f2d3fe: movb   %al, %cl
0xffffff7f92f2d400: xorl   %eax, %eax
0xffffff7f92f2d402: testb  $0x1, %cl
0xffffff7f92f2d405: je     0xffffff7f92f2d418
0xffffff7f92f2d407: movl   $0x3f8, %edi              ; imm = 0x3F8
0xffffff7f92f2d40c: callq  0xffffff7f92f2d49f
0xffffff7f92f2d411: movb   %al, (%rbx)
0xffffff7f92f2d413: movl   $0x1, %eax
0xffffff7f92f2d418: addq   $0x8, %rsp
0xffffff7f92f2d41c: popq   %rbx
0xffffff7f92f2d41d: popq   %rbp
0xffffff7f92f2d41e: retq
0xffffff7f92f2d41f: pushq  %rbp
0xffffff7f92f2d420: movq   %rsp, %rbp
0xffffff7f92f2d423: pushq  %rbx
0xffffff7f92f2d424: pushq  %rax
0xffffff7f92f2d425: movq   %rdi, %rbx
0xffffff7f92f2d428: movq   %rbx, %rdi
0xffffff7f92f2d42b: callq  0xffffff7f92f2d3eb
0xffffff7f92f2d430: testl  %eax, %eax
0xffffff7f92f2d432: je     0xffffff7f92f2d428
0xffffff7f92f2d434: addq   $0x8, %rsp
0xffffff7f92f2d438: popq   %rbx
0xffffff7f92f2d439: popq   %rbp
0xffffff7f92f2d43a: retq
0xffffff7f92f2d43b: pushq  %rbp
0xffffff7f92f2d43c: movq   %rsp, %rbp
0xffffff7f92f2d43f: movl   %edi, %eax
0xffffff7f92f2d441: movl   $0x3f8, %edi              ; imm = 0x3F8
0xffffff7f92f2d446: movl   %eax, %esi
0xffffff7f92f2d448: callq  0xffffff7f92f2d4c4
0xffffff7f92f2d44d: movl   $0x3fd, %edi              ; imm = 0x3FD
0xffffff7f92f2d452: callq  0xffffff7f92f2d49f
0xffffff7f92f2d457: testb  $0x40, %al
0xffffff7f92f2d459: je     0xffffff7f92f2d44d
0xffffff7f92f2d45b: popq   %rbp
0xffffff7f92f2d45c: retq
0xffffff7f92f2d45d: pushq  %rbp
0xffffff7f92f2d45e: movq   %rsp, %rbp
0xffffff7f92f2d461: pushq  %rbx
0xffffff7f92f2d462: pushq  %rax
0xffffff7f92f2d463: movq   %rdi, %rbx
0xffffff7f92f2d466: testq  %rbx, %rbx
0xffffff7f92f2d469: je     0xffffff7f92f2d498
0xffffff7f92f2d46b: movb   (%rbx), %al
0xffffff7f92f2d46d: testb  %al, %al
0xffffff7f92f2d46f: je     0xffffff7f92f2d498
0xffffff7f92f2d471: incq   %rbx
0xffffff7f92f2d474: movzbl %al, %edi
0xffffff7f92f2d477: callq  0xffffff7f92f2d43b
0xffffff7f92f2d47c: movzbl -0x1(%rbx), %eax
0xffffff7f92f2d480: cmpl   $0xa, %eax
0xffffff7f92f2d483: jne    0xffffff7f92f2d48f
0xffffff7f92f2d485: movl   $0xd, %edi
0xffffff7f92f2d48a: callq  0xffffff7f92f2d43b
0xffffff7f92f2d48f: movb   (%rbx), %al
0xffffff7f92f2d491: incq   %rbx
0xffffff7f92f2d494: testb  %al, %al
0xffffff7f92f2d496: jne    0xffffff7f92f2d474
0xffffff7f92f2d498: addq   $0x8, %rsp
0xffffff7f92f2d49c: popq   %rbx
0xffffff7f92f2d49d: popq   %rbp
0xffffff7f92f2d49e: retq
0xffffff7f92f2d49f: pushq  %rbp
0xffffff7f92f2d4a0: movq   %rsp, %rbp
0xffffff7f92f2d4a3: movw   %di, %dx
0xffffff7f92f2d4a6: inb    %dx, %al
0xffffff7f92f2d4a7: movzbl %al, %eax
0xffffff7f92f2d4aa: popq   %rbp
0xffffff7f92f2d4ab: retq
0xffffff7f92f2d4ac: pushq  %rbp
0xffffff7f92f2d4ad: movq   %rsp, %rbp
0xffffff7f92f2d4b0: movw   %di, %dx
0xffffff7f92f2d4b3: inw    %dx, %ax
0xffffff7f92f2d4b5: movzwl %ax, %eax
0xffffff7f92f2d4b8: popq   %rbp
0xffffff7f92f2d4b9: retq
0xffffff7f92f2d4ba: pushq  %rbp
0xffffff7f92f2d4bb: movq   %rsp, %rbp
0xffffff7f92f2d4be: movw   %di, %dx
0xffffff7f92f2d4c1: inl    %dx, %eax
0xffffff7f92f2d4c2: popq   %rbp
0xffffff7f92f2d4c3: retq
0xffffff7f92f2d4c4: pushq  %rbp
0xffffff7f92f2d4c5: movq   %rsp, %rbp
0xffffff7f92f2d4c8: movb   %sil, %al
0xffffff7f92f2d4cb: movw   %di, %dx
0xffffff7f92f2d4ce: outb   %al, %dx
0xffffff7f92f2d4cf: popq   %rbp
0xffffff7f92f2d4d0: retq
0xffffff7f92f2d4d1: pushq  %rbp
0xffffff7f92f2d4d2: movq   %rsp, %rbp
0xffffff7f92f2d4d5: movw   %si, %ax
0xffffff7f92f2d4d8: movw   %di, %dx
0xffffff7f92f2d4db: outw   %ax, %dx
0xffffff7f92f2d4dd: popq   %rbp
0xffffff7f92f2d4de: retq
0xffffff7f92f2d4df: pushq  %rbp
0xffffff7f92f2d4e0: movq   %rsp, %rbp
0xffffff7f92f2d4e3: movl   %esi, %eax
0xffffff7f92f2d4e5: movw   %di, %dx
0xffffff7f92f2d4e8: outl   %eax, %dx
0xffffff7f92f2d4e9: popq   %rbp
0xffffff7f92f2d4ea: retq
0xffffff7f92f2d4eb: nop
0xffffff7f92f2d4ec: pushq  %rbp
0xffffff7f92f2d4ed: movq   %rsp, %rbp
0xffffff7f92f2d4f0: pushq  %rbx
0xffffff7f92f2d4f1: pushq  %rax
0xffffff7f92f2d4f2: movq   %rdi, %rbx
0xffffff7f92f2d4f5: leaq   0xa3d(%rip), %rsi
0xffffff7f92f2d4fc: movq   0xafd(%rip), %rdx
0xffffff7f92f2d503: movl   $0x88, %ecx
0xffffff7f92f2d508: callq  0xffffff800f833990        ; OSMetaClass::OSMetaClass at OSMetaClass.cpp:387
0xffffff7f92f2d50d: leaq   0x139c(%rip), %rax
0xffffff7f92f2d514: movq   %rax, (%rbx)
0xffffff7f92f2d517: addq   $0x8, %rsp
0xffffff7f92f2d51b: popq   %rbx
0xffffff7f92f2d51c: popq   %rbp
0xffffff7f92f2d51d: retq
0xffffff7f92f2d51e: pushq  %rbp
0xffffff7f92f2d51f: movq   %rsp, %rbp
0xffffff7f92f2d522: popq   %rbp
0xffffff7f92f2d523: jmp    0xffffff800f8340b0        ; OSMetaClass::~OSMetaClass at OSMetaClass.cpp:452
0xffffff7f92f2d528: pushq  %rbp
0xffffff7f92f2d529: movq   %rsp, %rbp
0xffffff7f92f2d52c: pushq  %rbx
0xffffff7f92f2d52d: pushq  %rax
0xffffff7f92f2d52e: movq   %rdi, %rbx
0xffffff7f92f2d531: callq  0xffffff800f89b7e0        ; IOService::IOService at IOService.cpp:77
0xffffff7f92f2d536: leaq   0xb0b(%rip), %rax
0xffffff7f92f2d53d: movq   %rax, (%rbx)
0xffffff7f92f2d540: addq   $0x8, %rsp
0xffffff7f92f2d544: popq   %rbx
0xffffff7f92f2d545: popq   %rbp
0xffffff7f92f2d546: retq
0xffffff7f92f2d547: nop
0xffffff7f92f2d548: pushq  %rbp
0xffffff7f92f2d549: movq   %rsp, %rbp
0xffffff7f92f2d54c: pushq  %rbx
0xffffff7f92f2d54d: pushq  %rax
0xffffff7f92f2d54e: movq   %rdi, %rbx
0xffffff7f92f2d551: callq  0xffffff800f89b7e0        ; IOService::IOService at IOService.cpp:77
0xffffff7f92f2d556: leaq   0xaeb(%rip), %rax
0xffffff7f92f2d55d: movq   %rax, (%rbx)
0xffffff7f92f2d560: addq   $0x8, %rsp
0xffffff7f92f2d564: popq   %rbx
0xffffff7f92f2d565: popq   %rbp
0xffffff7f92f2d566: retq
0xffffff7f92f2d567: nop
0xffffff7f92f2d568: pushq  %rbp
0xffffff7f92f2d569: movq   %rsp, %rbp
0xffffff7f92f2d56c: popq   %rbp
0xffffff7f92f2d56d: jmp    0xffffff800f89b820        ; IOService::~IOService at IOService.cpp:77
0xffffff7f92f2d572: pushq  %rbp
0xffffff7f92f2d573: movq   %rsp, %rbp
0xffffff7f92f2d576: popq   %rbp
0xffffff7f92f2d577: jmp    0xffffff800f89b820        ; IOService::~IOService at IOService.cpp:77
0xffffff7f92f2d57c: pushq  %rbp
0xffffff7f92f2d57d: movq   %rsp, %rbp
0xffffff7f92f2d580: pushq  %rbx
0xffffff7f92f2d581: pushq  %rax
0xffffff7f92f2d582: movq   %rdi, %rbx
0xffffff7f92f2d585: callq  0xffffff800f89b820        ; IOService::~IOService at IOService.cpp:77
0xffffff7f92f2d58a: movl   $0x88, %esi
0xffffff7f92f2d58f: movq   %rbx, %rdi
0xffffff7f92f2d592: addq   $0x8, %rsp
0xffffff7f92f2d596: popq   %rbx
0xffffff7f92f2d597: popq   %rbp
0xffffff7f92f2d598: jmp    0xffffff800f835d40        ; OSObject::operator delete at OSObject.cpp:268
0xffffff7f92f2d59d: nop
0xffffff7f92f2d59e: pushq  %rbp
0xffffff7f92f2d59f: movq   %rsp, %rbp
0xffffff7f92f2d5a2: leaq   0x14cf(%rip), %rax
0xffffff7f92f2d5a9: popq   %rbp
0xffffff7f92f2d5aa: retq
0xffffff7f92f2d5ab: nop
0xffffff7f92f2d5ac: pushq  %rbp
0xffffff7f92f2d5ad: movq   %rsp, %rbp
0xffffff7f92f2d5b0: pushq  %rbx
0xffffff7f92f2d5b1: pushq  %rax
0xffffff7f92f2d5b2: movq   %rdi, %rbx
0xffffff7f92f2d5b5: leaq   0x97d(%rip), %rsi
0xffffff7f92f2d5bc: movq   0xa3d(%rip), %rdx
0xffffff7f92f2d5c3: movl   $0x88, %ecx
0xffffff7f92f2d5c8: callq  0xffffff800f833990        ; OSMetaClass::OSMetaClass at OSMetaClass.cpp:387
0xffffff7f92f2d5cd: leaq   0x12dc(%rip), %rax
0xffffff7f92f2d5d4: movq   %rax, (%rbx)
0xffffff7f92f2d5d7: addq   $0x8, %rsp
0xffffff7f92f2d5db: popq   %rbx
0xffffff7f92f2d5dc: popq   %rbp
0xffffff7f92f2d5dd: retq
0xffffff7f92f2d5de: pushq  %rbp
0xffffff7f92f2d5df: movq   %rsp, %rbp
0xffffff7f92f2d5e2: pushq  %r14
0xffffff7f92f2d5e4: pushq  %rbx
0xffffff7f92f2d5e5: movl   $0x88, %edi
0xffffff7f92f2d5ea: callq  0xffffff800f835dc0        ; OSObject::operator new at OSObject.cpp:254
0xffffff7f92f2d5ef: movq   %rax, %rbx
0xffffff7f92f2d5f2: leaq   0x147f(%rip), %r14
0xffffff7f92f2d5f9: movq   %rbx, %rdi
0xffffff7f92f2d5fc: movq   %r14, %rsi
0xffffff7f92f2d5ff: callq  0xffffff800f89b7e0        ; IOService::IOService at IOService.cpp:77
0xffffff7f92f2d604: leaq   0xa3d(%rip), %rax
0xffffff7f92f2d60b: movq   %rax, (%rbx)
0xffffff7f92f2d60e: movq   %r14, %rdi
0xffffff7f92f2d611: callq  0xffffff800f834780        ; OSMetaClass::instanceConstructed at OSMetaClass.cpp:749
0xffffff7f92f2d616: movq   %rbx, %rax
0xffffff7f92f2d619: popq   %rbx
0xffffff7f92f2d61a: popq   %r14
0xffffff7f92f2d61c: popq   %rbp
0xffffff7f92f2d61d: retq
0xffffff7f92f2d61e: pushq  %rbp
0xffffff7f92f2d61f: movq   %rsp, %rbp
0xffffff7f92f2d622: pushq  %r14
0xffffff7f92f2d624: pushq  %rbx
0xffffff7f92f2d625: movq   %rdi, %rbx
0xffffff7f92f2d628: leaq   0x1449(%rip), %r14
0xffffff7f92f2d62f: movq   %r14, %rsi
0xffffff7f92f2d632: callq  0xffffff800f89b7e0        ; IOService::IOService at IOService.cpp:77
0xffffff7f92f2d637: leaq   0xa0a(%rip), %rax
0xffffff7f92f2d63e: movq   %rax, (%rbx)
0xffffff7f92f2d641: movq   %r14, %rdi
0xffffff7f92f2d644: popq   %rbx
0xffffff7f92f2d645: popq   %r14
0xffffff7f92f2d647: popq   %rbp
0xffffff7f92f2d648: jmp    0xffffff800f834780        ; OSMetaClass::instanceConstructed at OSMetaClass.cpp:749
0xffffff7f92f2d64d: nop
0xffffff7f92f2d64e: pushq  %rbp
0xffffff7f92f2d64f: movq   %rsp, %rbp
0xffffff7f92f2d652: pushq  %r14
0xffffff7f92f2d654: pushq  %rbx
0xffffff7f92f2d655: movq   %rdi, %rbx
0xffffff7f92f2d658: leaq   0x1419(%rip), %r14
0xffffff7f92f2d65f: movq   %r14, %rsi
0xffffff7f92f2d662: callq  0xffffff800f89b7e0        ; IOService::IOService at IOService.cpp:77
0xffffff7f92f2d667: leaq   0x9da(%rip), %rax
0xffffff7f92f2d66e: movq   %rax, (%rbx)
0xffffff7f92f2d671: movq   %r14, %rdi
0xffffff7f92f2d674: popq   %rbx
0xffffff7f92f2d675: popq   %r14
0xffffff7f92f2d677: popq   %rbp
0xffffff7f92f2d678: jmp    0xffffff800f834780        ; OSMetaClass::instanceConstructed at OSMetaClass.cpp:749
0xffffff7f92f2d67d: nop
0xffffff7f92f2d67e: pushq  %rbp
0xffffff7f92f2d67f: movq   %rsp, %rbp
0xffffff7f92f2d682: popq   %rbp
0xffffff7f92f2d683: retq
0xffffff7f92f2d684: pushq  %rbp
0xffffff7f92f2d685: movq   %rsp, %rbp
0xffffff7f92f2d688: popq   %rbp
0xffffff7f92f2d689: jmp    0xffffff800f8340b0        ; OSMetaClass::~OSMetaClass at OSMetaClass.cpp:452
0xffffff7f92f2d68e: pushq  %rbp
0xffffff7f92f2d68f: movq   %rsp, %rbp
0xffffff7f92f2d692: leaq   0x13df(%rip), %rdi
0xffffff7f92f2d699: leaq   0x899(%rip), %rsi
0xffffff7f92f2d6a0: movq   0x959(%rip), %rdx
0xffffff7f92f2d6a7: movl   $0x88, %ecx
0xffffff7f92f2d6ac: callq  0xffffff800f833990        ; OSMetaClass::OSMetaClass at OSMetaClass.cpp:387
0xffffff7f92f2d6b1: leaq   0x11f8(%rip), %rax
0xffffff7f92f2d6b8: movq   %rax, 0x13b9(%rip)
0xffffff7f92f2d6bf: popq   %rbp
0xffffff7f92f2d6c0: retq
0xffffff7f92f2d6c1: pushq  %rbp
0xffffff7f92f2d6c2: movq   %rsp, %rbp
0xffffff7f92f2d6c5: leaq   0x13ac(%rip), %rdi
0xffffff7f92f2d6cc: popq   %rbp
0xffffff7f92f2d6cd: jmp    0xffffff800f8340b0        ; OSMetaClass::~OSMetaClass at OSMetaClass.cpp:452
0xffffff7f92f2d6d2: pushq  %rbp
0xffffff7f92f2d6d3: movq   %rsp, %rbp
0xffffff7f92f2d6d6: pushq  %r15
0xffffff7f92f2d6d8: pushq  %r14
0xffffff7f92f2d6da: pushq  %r13
0xffffff7f92f2d6dc: pushq  %r12
0xffffff7f92f2d6de: pushq  %rbx
0xffffff7f92f2d6df: pushq  %rax
0xffffff7f92f2d6e0: movq   %rdx, %rbx
0xffffff7f92f2d6e3: movl   %esi, %r14d
0xffffff7f92f2d6e6: movq   %rdi, %r13
0xffffff7f92f2d6e9: movl   %r14d, %edx
0xffffff7f92f2d6ec: xorl   %edi, %edi
0xffffff7f92f2d6ee: movq   %r13, %rsi
0xffffff7f92f2d6f1: callq  0xffffff800f4ef700        ; crc32 at crc32.c:94
0xffffff7f92f2d6f6: movl   %eax, %r15d
0xffffff7f92f2d6f9: movl   $0xfffffffa, %edi         ; imm = 0xFFFFFFFA
0xffffff7f92f2d6fe: callq  *%rbx
0xffffff7f92f2d700: movb   %r15b, %al
0xffffff7f92f2d703: addb   $0x6, %al
0xffffff7f92f2d705: movzbl %al, %eax
0xffffff7f92f2d708: cmpl   $0x10, %eax
0xffffff7f92f2d70b: ja     0xffffff7f92f2d729
0xffffff7f92f2d70d: movl   $0x10013, %ecx            ; imm = 0x10013
0xffffff7f92f2d712: btq    %rax, %rcx
0xffffff7f92f2d716: jae    0xffffff7f92f2d729
0xffffff7f92f2d718: movl   $0xfffffffe, %edi         ; imm = 0xFFFFFFFE
0xffffff7f92f2d71d: callq  *%rbx
0xffffff7f92f2d71f: movq   %rbx, %rcx
0xffffff7f92f2d722: movb   %r15b, %al
0xffffff7f92f2d725: notb   %al
0xffffff7f92f2d727: jmp    0xffffff7f92f2d72f
0xffffff7f92f2d729: movb   %r15b, %al
0xffffff7f92f2d72c: movq   %rbx, %rcx
0xffffff7f92f2d72f: movsbl %al, %edi
0xffffff7f92f2d732: movq   %rcx, %rbx
0xffffff7f92f2d735: callq  *%rbx
0xffffff7f92f2d737: movq   %rbx, %rdx
0xffffff7f92f2d73a: movl   %r15d, %r12d
0xffffff7f92f2d73d: shrl   $0x8, %r12d
0xffffff7f92f2d741: movb   %r12b, %al
0xffffff7f92f2d744: addb   $0x6, %al
0xffffff7f92f2d746: movzbl %al, %eax
0xffffff7f92f2d749: cmpl   $0x10, %eax
0xffffff7f92f2d74c: ja     0xffffff7f92f2d76b
0xffffff7f92f2d74e: movl   $0x10013, %ecx            ; imm = 0x10013
0xffffff7f92f2d753: btq    %rax, %rcx
0xffffff7f92f2d757: jae    0xffffff7f92f2d76b
0xffffff7f92f2d759: movl   $0xfffffffe, %edi         ; imm = 0xFFFFFFFE
0xffffff7f92f2d75e: movq   %rdx, %rbx
0xffffff7f92f2d761: callq  *%rbx
0xffffff7f92f2d763: movq   %rbx, %rax
0xffffff7f92f2d766: notb   %r12b
0xffffff7f92f2d769: jmp    0xffffff7f92f2d76e
0xffffff7f92f2d76b: movq   %rdx, %rax
0xffffff7f92f2d76e: movsbl %r12b, %edi
0xffffff7f92f2d772: movq   %rax, %rbx
0xffffff7f92f2d775: callq  *%rbx
0xffffff7f92f2d777: movq   %rbx, %rdx
0xffffff7f92f2d77a: movl   %r15d, %r12d
0xffffff7f92f2d77d: shrl   $0x10, %r12d
0xffffff7f92f2d781: movb   %r12b, %al
0xffffff7f92f2d784: addb   $0x6, %al
0xffffff7f92f2d786: movzbl %al, %eax
0xffffff7f92f2d789: cmpl   $0x10, %eax
0xffffff7f92f2d78c: ja     0xffffff7f92f2d7ab
0xffffff7f92f2d78e: movl   $0x10013, %ecx            ; imm = 0x10013
0xffffff7f92f2d793: btq    %rax, %rcx
0xffffff7f92f2d797: jae    0xffffff7f92f2d7ab
0xffffff7f92f2d799: movl   $0xfffffffe, %edi         ; imm = 0xFFFFFFFE
0xffffff7f92f2d79e: movq   %rdx, %rbx
0xffffff7f92f2d7a1: callq  *%rbx
0xffffff7f92f2d7a3: movq   %rbx, %rax
0xffffff7f92f2d7a6: notb   %r12b
0xffffff7f92f2d7a9: jmp    0xffffff7f92f2d7ae
0xffffff7f92f2d7ab: movq   %rdx, %rax
0xffffff7f92f2d7ae: movsbl %r12b, %edi
0xffffff7f92f2d7b2: movq   %rax, %rbx
0xffffff7f92f2d7b5: callq  *%rbx
0xffffff7f92f2d7b7: movq   %rbx, %rdx
0xffffff7f92f2d7ba: shrl   $0x18, %r15d
0xffffff7f92f2d7be: movb   %r15b, %al
0xffffff7f92f2d7c1: addb   $0x6, %al
0xffffff7f92f2d7c3: movzbl %al, %eax
0xffffff7f92f2d7c6: cmpl   $0x10, %eax
0xffffff7f92f2d7c9: ja     0xffffff7f92f2d7e8
0xffffff7f92f2d7cb: movl   $0x10013, %ecx            ; imm = 0x10013
0xffffff7f92f2d7d0: btq    %rax, %rcx
0xffffff7f92f2d7d4: jae    0xffffff7f92f2d7e8
0xffffff7f92f2d7d6: movl   $0xfffffffe, %edi         ; imm = 0xFFFFFFFE
0xffffff7f92f2d7db: movq   %rdx, %rbx
0xffffff7f92f2d7de: callq  *%rbx
0xffffff7f92f2d7e0: movq   %rbx, %rax
0xffffff7f92f2d7e3: notb   %r15b
0xffffff7f92f2d7e6: jmp    0xffffff7f92f2d7eb
0xffffff7f92f2d7e8: movq   %rdx, %rax
0xffffff7f92f2d7eb: movsbl %r15b, %edi
0xffffff7f92f2d7ef: movq   %rax, %rbx
0xffffff7f92f2d7f2: callq  *%rbx
0xffffff7f92f2d7f4: movl   $0xfffffffa, %edi         ; imm = 0xFFFFFFFA
0xffffff7f92f2d7f9: callq  *%rbx
0xffffff7f92f2d7fb: movq   %rbx, %rcx
0xffffff7f92f2d7fe: testl  %r14d, %r14d
0xffffff7f92f2d801: je     0xffffff7f92f2d849
0xffffff7f92f2d803: movl   $0x10013, %r15d           ; imm = 0x10013
0xffffff7f92f2d809: movb   (%r13), %r12b
0xffffff7f92f2d80d: movb   %r12b, %al
0xffffff7f92f2d810: addb   $0x6, %al
0xffffff7f92f2d812: movzbl %al, %eax
0xffffff7f92f2d815: cmpl   $0x10, %eax
0xffffff7f92f2d818: ja     0xffffff7f92f2d832
0xffffff7f92f2d81a: btq    %rax, %r15
0xffffff7f92f2d81e: jae    0xffffff7f92f2d832
0xffffff7f92f2d820: movl   $0xfffffffe, %edi         ; imm = 0xFFFFFFFE
0xffffff7f92f2d825: movq   %rcx, %rbx
0xffffff7f92f2d828: callq  *%rbx
0xffffff7f92f2d82a: movq   %rbx, %rax
0xffffff7f92f2d82d: notb   %r12b
0xffffff7f92f2d830: jmp    0xffffff7f92f2d835
0xffffff7f92f2d832: movq   %rcx, %rax
0xffffff7f92f2d835: incq   %r13
0xffffff7f92f2d838: movsbl %r12b, %edi
0xffffff7f92f2d83c: movq   %rax, %rbx
0xffffff7f92f2d83f: callq  *%rbx
0xffffff7f92f2d841: movq   %rbx, %rcx
0xffffff7f92f2d844: decl   %r14d
0xffffff7f92f2d847: jne    0xffffff7f92f2d809
0xffffff7f92f2d849: movl   $0xfffffffb, %edi         ; imm = 0xFFFFFFFB
0xffffff7f92f2d84e: addq   $0x8, %rsp
0xffffff7f92f2d852: popq   %rbx
0xffffff7f92f2d853: popq   %r12
0xffffff7f92f2d855: popq   %r13
0xffffff7f92f2d857: popq   %r14
0xffffff7f92f2d859: popq   %r15
0xffffff7f92f2d85b: popq   %rbp
0xffffff7f92f2d85c: jmpq   *%rcx
0xffffff7f92f2d85e: pushq  %rbp
0xffffff7f92f2d85f: movq   %rsp, %rbp
0xffffff7f92f2d862: pushq  %r15
0xffffff7f92f2d864: pushq  %r14
0xffffff7f92f2d866: pushq  %r13
0xffffff7f92f2d868: pushq  %r12
0xffffff7f92f2d86a: pushq  %rbx
0xffffff7f92f2d86b: pushq  %rax
0xffffff7f92f2d86c: movq   %rdx, %r15
0xffffff7f92f2d86f: movq   %rsi, %r14
0xffffff7f92f2d872: movl   %edi, %ebx
0xffffff7f92f2d874: movl   0x123e(%rip), %eax
0xffffff7f92f2d87a: cmpl   $0x2, %eax
0xffffff7f92f2d87d: je     0xffffff7f92f2d8d4
0xffffff7f92f2d87f: cmpl   $0x1, %eax
0xffffff7f92f2d882: je     0xffffff7f92f2d938
0xffffff7f92f2d888: testl  %eax, %eax
0xffffff7f92f2d88a: jne    0xffffff7f92f2da3f
0xffffff7f92f2d890: movzbl %bl, %eax
0xffffff7f92f2d893: cmpl   $0xfa, %eax
0xffffff7f92f2d898: jne    0xffffff7f92f2da3f
0xffffff7f92f2d89e: leaq   0x53f(%rip), %rax
0xffffff7f92f2d8a5: cmpl   $0x0, (%rax)
0xffffff7f92f2d8a8: je     0xffffff7f92f2d8c5
0xffffff7f92f2d8aa: leaq   0x690(%rip), %rbx
0xffffff7f92f2d8b1: xorl   %eax, %eax
0xffffff7f92f2d8b3: movq   %rbx, %rdi
0xffffff7f92f2d8b6: callq  0xffffff800f919b70        ; kprintf at pe_kprintf.c:109
0xffffff7f92f2d8bb: xorl   %eax, %eax
0xffffff7f92f2d8bd: movq   %rbx, %rdi
0xffffff7f92f2d8c0: callq  0xffffff800f2fc730        ; printf at printf.c:837
0xffffff7f92f2d8c5: movl   $0x1, 0x11e9(%rip)
0xffffff7f92f2d8cf: jmp    0xffffff7f92f2dab9
0xffffff7f92f2d8d4: leaq   0x509(%rip), %rax
0xffffff7f92f2d8db: cmpl   $0x0, (%rax)
0xffffff7f92f2d8de: je     0xffffff7f92f2d911
0xffffff7f92f2d8e0: movzbl %bl, %r15d
0xffffff7f92f2d8e4: movl   %r15d, %r12d
0xffffff7f92f2d8e7: notl   %r12d
0xffffff7f92f2d8ea: leaq   0x6ad(%rip), %r13
0xffffff7f92f2d8f1: xorl   %eax, %eax
0xffffff7f92f2d8f3: movq   %r13, %rdi
0xffffff7f92f2d8f6: movl   %r15d, %esi
0xffffff7f92f2d8f9: movl   %r12d, %edx
0xffffff7f92f2d8fc: callq  0xffffff800f919b70        ; kprintf at pe_kprintf.c:109
0xffffff7f92f2d901: xorl   %eax, %eax
0xffffff7f92f2d903: movq   %r13, %rdi
0xffffff7f92f2d906: movl   %r15d, %esi
0xffffff7f92f2d909: movl   %r12d, %edx
0xffffff7f92f2d90c: callq  0xffffff800f2fc730        ; printf at printf.c:837
0xffffff7f92f2d911: notb   %bl
0xffffff7f92f2d913: movq   0x118e(%rip), %rax
0xffffff7f92f2d91a: leaq   0x1(%rax), %rcx
0xffffff7f92f2d91e: movq   %rcx, 0x1183(%rip)
0xffffff7f92f2d925: movb   %bl, (%r14,%rax)
0xffffff7f92f2d929: movl   $0x1, 0x1185(%rip)
0xffffff7f92f2d933: jmp    0xffffff7f92f2da3f
0xffffff7f92f2d938: movzbl %bl, %eax
0xffffff7f92f2d93b: cmpl   $0xfa, %eax
0xffffff7f92f2d940: je     0xffffff7f92f2d965
0xffffff7f92f2d942: cmpl   $0xfb, %eax
0xffffff7f92f2d947: je     0xffffff7f92f2d9a7
0xffffff7f92f2d949: cmpl   $0xfe, %eax
0xffffff7f92f2d94e: jne    0xffffff7f92f2da29
0xffffff7f92f2d954: movl   $0x2, 0x115a(%rip)
0xffffff7f92f2d95e: xorl   %eax, %eax
0xffffff7f92f2d960: jmp    0xffffff7f92f2dac6
0xffffff7f92f2d965: cmpq   $0x4, 0x113b(%rip)
0xffffff7f92f2d96d: jb     0xffffff7f92f2da65
0xffffff7f92f2d973: movb   $0x1, 0x113a(%rip)
0xffffff7f92f2d97a: movzbl (%r14), %eax
0xffffff7f92f2d97e: movzbl 0x1(%r14), %ecx
0xffffff7f92f2d983: shll   $0x8, %ecx
0xffffff7f92f2d986: orl    %eax, %ecx
0xffffff7f92f2d988: movzbl 0x2(%r14), %eax
0xffffff7f92f2d98d: shll   $0x10, %eax
0xffffff7f92f2d990: orl    %ecx, %eax
0xffffff7f92f2d992: movzbl 0x3(%r14), %ecx
0xffffff7f92f2d997: shll   $0x18, %ecx
0xffffff7f92f2d99a: orl    %eax, %ecx
0xffffff7f92f2d99c: movl   %ecx, 0x110e(%rip)
0xffffff7f92f2d9a2: jmp    0xffffff7f92f2dab9
0xffffff7f92f2d9a7: leaq   0x436(%rip), %rax
0xffffff7f92f2d9ae: movl   (%rax), %ebx
0xffffff7f92f2d9b0: testl  %ebx, %ebx
0xffffff7f92f2d9b2: je     0xffffff7f92f2d9cf
0xffffff7f92f2d9b4: leaq   0x5b8(%rip), %r12
0xffffff7f92f2d9bb: xorl   %eax, %eax
0xffffff7f92f2d9bd: movq   %r12, %rdi
0xffffff7f92f2d9c0: callq  0xffffff800f919b70        ; kprintf at pe_kprintf.c:109
0xffffff7f92f2d9c5: xorl   %eax, %eax
0xffffff7f92f2d9c7: movq   %r12, %rdi
0xffffff7f92f2d9ca: callq  0xffffff800f2fc730        ; printf at printf.c:837
0xffffff7f92f2d9cf: movl   $0x0, 0x10df(%rip)
0xffffff7f92f2d9d9: movzbl 0x10d4(%rip), %eax
0xffffff7f92f2d9e0: andl   $0x1, %eax
0xffffff7f92f2d9e3: cmpl   $0x1, %eax
0xffffff7f92f2d9e6: jne    0xffffff7f92f2da0b
0xffffff7f92f2d9e8: movq   0x10b9(%rip), %rdx
0xffffff7f92f2d9ef: xorl   %edi, %edi
0xffffff7f92f2d9f1: movq   %r14, %rsi
0xffffff7f92f2d9f4: callq  0xffffff800f4ef700        ; crc32 at crc32.c:94
0xffffff7f92f2d9f9: movl   %eax, %r12d
0xffffff7f92f2d9fc: movl   0x10ae(%rip), %edx
0xffffff7f92f2da02: cmpl   %edx, %r12d
0xffffff7f92f2da05: jne    0xffffff7f92f2da8e
0xffffff7f92f2da0b: movl   0x1097(%rip), %eax
0xffffff7f92f2da11: movl   %eax, (%r15)
0xffffff7f92f2da14: movq   $0x0, 0x1089(%rip)
0xffffff7f92f2da1f: movl   $0x1, %eax
0xffffff7f92f2da24: jmp    0xffffff7f92f2dac6
0xffffff7f92f2da29: movq   0x1078(%rip), %rax
0xffffff7f92f2da30: leaq   0x1(%rax), %rcx
0xffffff7f92f2da34: movq   %rcx, 0x106d(%rip)
0xffffff7f92f2da3b: movb   %bl, (%r14,%rax)
0xffffff7f92f2da3f: xorl   %eax, %eax
0xffffff7f92f2da41: cmpq   $0x5ee, 0x105c(%rip)      ; imm = 0x5EE
0xffffff7f92f2da4c: jne    0xffffff7f92f2dac6
0xffffff7f92f2da4e: movl   $0x0, 0x1060(%rip)
0xffffff7f92f2da58: movq   $0x0, 0x1045(%rip)
0xffffff7f92f2da63: jmp    0xffffff7f92f2dac6
0xffffff7f92f2da65: leaq   0x378(%rip), %rax
0xffffff7f92f2da6c: cmpl   $0x0, (%rax)
0xffffff7f92f2da6f: je     0xffffff7f92f2dab9
0xffffff7f92f2da71: leaq   0x4d9(%rip), %rbx
0xffffff7f92f2da78: xorl   %eax, %eax
0xffffff7f92f2da7a: movq   %rbx, %rdi
0xffffff7f92f2da7d: callq  0xffffff800f919b70        ; kprintf at pe_kprintf.c:109
0xffffff7f92f2da82: xorl   %eax, %eax
0xffffff7f92f2da84: movq   %rbx, %rdi
0xffffff7f92f2da87: callq  0xffffff800f2fc730        ; printf at printf.c:837
0xffffff7f92f2da8c: jmp    0xffffff7f92f2dab9
0xffffff7f92f2da8e: testl  %ebx, %ebx
0xffffff7f92f2da90: je     0xffffff7f92f2dab9
0xffffff7f92f2da92: leaq   0x4e8(%rip), %r14
0xffffff7f92f2da99: xorl   %eax, %eax
0xffffff7f92f2da9b: movq   %r14, %rdi
0xffffff7f92f2da9e: movl   %r12d, %esi
0xffffff7f92f2daa1: callq  0xffffff800f919b70        ; kprintf at pe_kprintf.c:109
0xffffff7f92f2daa6: movl   0x1004(%rip), %edx
0xffffff7f92f2daac: xorl   %eax, %eax
0xffffff7f92f2daae: movq   %r14, %rdi
0xffffff7f92f2dab1: movl   %r12d, %esi
0xffffff7f92f2dab4: callq  0xffffff800f2fc730        ; printf at printf.c:837
0xffffff7f92f2dab9: movq   $0x0, 0xfe4(%rip)
0xffffff7f92f2dac4: xorl   %eax, %eax
0xffffff7f92f2dac6: addq   $0x8, %rsp
0xffffff7f92f2daca: popq   %rbx
0xffffff7f92f2dacb: popq   %r12
0xffffff7f92f2dacd: popq   %r13
0xffffff7f92f2dacf: popq   %r14
0xffffff7f92f2dad1: popq   %r15
0xffffff7f92f2dad3: popq   %rbp
0xffffff7f92f2dad4: retq
0xffffff7f92f2dad5: pushq  %rbp
0xffffff7f92f2dad6: movq   %rsp, %rbp
0xffffff7f92f2dad9: pushq  %r15
0xffffff7f92f2dadb: pushq  %r14
0xffffff7f92f2dadd: pushq  %rbx
0xffffff7f92f2dade: pushq  %rax
0xffffff7f92f2dadf: movl   %esi, %ebx
0xffffff7f92f2dae1: movq   %rdi, %r14
0xffffff7f92f2dae4: leaq   0xe9d(%rip), %r15
0xffffff7f92f2daeb: cmpl   $0x0, (%r15)
0xffffff7f92f2daef: je     0xffffff7f92f2db01
0xffffff7f92f2daf1: callq  0xffffff7f92f2cb47
0xffffff7f92f2daf6: testl  %eax, %eax
0xffffff7f92f2daf8: jne    0xffffff7f92f2db01
0xffffff7f92f2dafa: movl   $0x0, (%r15)
0xffffff7f92f2db01: leaq   0x2dc(%rip), %rax
0xffffff7f92f2db08: cmpl   $0x0, (%rax)
0xffffff7f92f2db0b: je     0xffffff7f92f2db2c
0xffffff7f92f2db0d: leaq   0x4a3(%rip), %r15
0xffffff7f92f2db14: xorl   %eax, %eax
0xffffff7f92f2db16: movq   %r15, %rdi
0xffffff7f92f2db19: movl   %ebx, %esi
0xffffff7f92f2db1b: callq  0xffffff800f919b70        ; kprintf at pe_kprintf.c:109
0xffffff7f92f2db20: xorl   %eax, %eax
0xffffff7f92f2db22: movq   %r15, %rdi
0xffffff7f92f2db25: movl   %ebx, %esi
0xffffff7f92f2db27: callq  0xffffff800f2fc730        ; printf at printf.c:837
0xffffff7f92f2db2c: movq   0x4dd(%rip), %rdx
0xffffff7f92f2db33: movq   %r14, %rdi
0xffffff7f92f2db36: movl   %ebx, %esi
0xffffff7f92f2db38: addq   $0x8, %rsp
0xffffff7f92f2db3c: popq   %rbx
0xffffff7f92f2db3d: popq   %r14
0xffffff7f92f2db3f: popq   %r15
0xffffff7f92f2db41: popq   %rbp
0xffffff7f92f2db42: jmp    0xffffff7f92f2d6d2
0xffffff7f92f2db47: pushq  %rbp
0xffffff7f92f2db48: movq   %rsp, %rbp
0xffffff7f92f2db4b: pushq  %r15
0xffffff7f92f2db4d: pushq  %r14
0xffffff7f92f2db4f: pushq  %r13
0xffffff7f92f2db51: pushq  %r12
0xffffff7f92f2db53: pushq  %rbx
0xffffff7f92f2db54: subq   $0x38, %rsp
0xffffff7f92f2db58: movl   %edx, %ebx
0xffffff7f92f2db5a: movq   %rsi, -0x40(%rbp)
0xffffff7f92f2db5e: movq   %rdi, -0x48(%rbp)
0xffffff7f92f2db62: leaq   0xe1f(%rip), %r14
0xffffff7f92f2db69: cmpl   $0x0, (%r14)
0xffffff7f92f2db6d: je     0xffffff7f92f2db7f
0xffffff7f92f2db6f: callq  0xffffff7f92f2cb47
0xffffff7f92f2db74: testl  %eax, %eax
0xffffff7f92f2db76: jne    0xffffff7f92f2db7f
0xffffff7f92f2db78: movl   $0x0, (%r14)
0xffffff7f92f2db7f: leaq   -0x38(%rbp), %rdx
0xffffff7f92f2db83: movl   $0xf4240, %esi            ; imm = 0xF4240
0xffffff7f92f2db88: movl   %ebx, %edi
0xffffff7f92f2db8a: callq  0xffffff800f2e5bc0        ; clock_interval_to_deadline at clock.c:1017
0xffffff7f92f2db8f: movq   0xf2a(%rip), %rax
0xffffff7f92f2db96: leaq   0x247(%rip), %rcx
0xffffff7f92f2db9d: movl   (%rcx), %r14d
0xffffff7f92f2dba0: testw  $0x3fff, %ax              ; imm = 0x3FFF
0xffffff7f92f2dba4: jne    0xffffff7f92f2dbc6
0xffffff7f92f2dba6: testl  %r14d, %r14d
0xffffff7f92f2dba9: je     0xffffff7f92f2dbc6
0xffffff7f92f2dbab: leaq   0x414(%rip), %rbx
0xffffff7f92f2dbb2: xorl   %eax, %eax
0xffffff7f92f2dbb4: movq   %rbx, %rdi
0xffffff7f92f2dbb7: callq  0xffffff800f919b70        ; kprintf at pe_kprintf.c:109
0xffffff7f92f2dbbc: xorl   %eax, %eax
0xffffff7f92f2dbbe: movq   %rbx, %rdi
0xffffff7f92f2dbc1: callq  0xffffff800f2fc730        ; printf at printf.c:837
0xffffff7f92f2dbc6: leaq   -0x30(%rbp), %rdi
0xffffff7f92f2dbca: callq  0xffffff800f2e5cc0        ; clock_get_uptime at clock.c:1044
0xffffff7f92f2dbcf: movq   -0x30(%rbp), %rax
0xffffff7f92f2dbd3: cmpq   -0x38(%rbp), %rax
0xffffff7f92f2dbd7: jae    0xffffff7f92f2dd21
0xffffff7f92f2dbdd: leaq   0x3e4(%rip), %r13
0xffffff7f92f2dbe4: movl   $0x0, -0x4c(%rbp)
0xffffff7f92f2dbeb: movl   $0x0, -0x50(%rbp)
0xffffff7f92f2dbf2: xorl   %r12d, %r12d
0xffffff7f92f2dbf5: xorl   %ebx, %ebx
0xffffff7f92f2dbf7: callq  0xffffff800f91a3a0        ; serial_getc [inlined] uart_getc at pe_serial.c:431
0xffffff7f92f2dbfc: movl   %eax, %r15d
0xffffff7f92f2dbff: testl  %r15d, %r15d
0xffffff7f92f2dc02: js     0xffffff7f92f2dc44
0xffffff7f92f2dc04: testl  %r14d, %r14d
0xffffff7f92f2dc07: je     0xffffff7f92f2dc23
0xffffff7f92f2dc09: xorl   %eax, %eax
0xffffff7f92f2dc0b: movq   %r13, %rdi
0xffffff7f92f2dc0e: movl   %r15d, %esi
0xffffff7f92f2dc11: callq  0xffffff800f919b70        ; kprintf at pe_kprintf.c:109
0xffffff7f92f2dc16: xorl   %eax, %eax
0xffffff7f92f2dc18: movq   %r13, %rdi
0xffffff7f92f2dc1b: movl   %r15d, %esi
0xffffff7f92f2dc1e: callq  0xffffff800f2fc730        ; printf at printf.c:837
0xffffff7f92f2dc23: incq   %rbx
0xffffff7f92f2dc26: movzbl %r15b, %edi
0xffffff7f92f2dc2a: movq   -0x48(%rbp), %rsi
0xffffff7f92f2dc2e: movq   -0x40(%rbp), %rdx
0xffffff7f92f2dc32: callq  0xffffff7f92f2d85e
0xffffff7f92f2dc37: testl  %eax, %eax
0xffffff7f92f2dc39: je     0xffffff7f92f2dcc0
0xffffff7f92f2dc3f: jmp    0xffffff7f92f2dd4b
0xffffff7f92f2dc44: cmpl   $-0x2, %r15d
0xffffff7f92f2dc48: je     0xffffff7f92f2dc89
0xffffff7f92f2dc4a: cmpl   $-0x1, %r15d
0xffffff7f92f2dc4e: jne    0xffffff7f92f2dcc0
0xffffff7f92f2dc50: testl  %r12d, %r12d
0xffffff7f92f2dc53: movl   $0x1, %eax
0xffffff7f92f2dc58: cmovel %eax, %r12d
0xffffff7f92f2dc5c: jne    0xffffff7f92f2dc84
0xffffff7f92f2dc5e: testl  %r14d, %r14d
0xffffff7f92f2dc61: je     0xffffff7f92f2dc84
0xffffff7f92f2dc63: xorl   %eax, %eax
0xffffff7f92f2dc65: leaq   0x37f(%rip), %r15
0xffffff7f92f2dc6c: movq   %r15, %rdi
0xffffff7f92f2dc6f: callq  0xffffff800f919b70        ; kprintf at pe_kprintf.c:109
0xffffff7f92f2dc74: xorl   %eax, %eax
0xffffff7f92f2dc76: movq   %r15, %rdi
0xffffff7f92f2dc79: callq  0xffffff800f2fc730        ; printf at printf.c:837
0xffffff7f92f2dc7e: movl   $0x1, %r12d
0xffffff7f92f2dc84: incl   -0x4c(%rbp)
0xffffff7f92f2dc87: jmp    0xffffff7f92f2dcc0
0xffffff7f92f2dc89: testl  %r12d, %r12d
0xffffff7f92f2dc8c: movl   $0x1, %eax
0xffffff7f92f2dc91: cmovel %eax, %r12d
0xffffff7f92f2dc95: jne    0xffffff7f92f2dcbd
0xffffff7f92f2dc97: testl  %r14d, %r14d
0xffffff7f92f2dc9a: je     0xffffff7f92f2dcbd
0xffffff7f92f2dc9c: xorl   %eax, %eax
0xffffff7f92f2dc9e: leaq   0x348(%rip), %r15
0xffffff7f92f2dca5: movq   %r15, %rdi
0xffffff7f92f2dca8: callq  0xffffff800f919b70        ; kprintf at pe_kprintf.c:109
0xffffff7f92f2dcad: xorl   %eax, %eax
0xffffff7f92f2dcaf: movq   %r15, %rdi
0xffffff7f92f2dcb2: callq  0xffffff800f2fc730        ; printf at printf.c:837
0xffffff7f92f2dcb7: movl   $0x1, %r12d
0xffffff7f92f2dcbd: incl   -0x50(%rbp)
0xffffff7f92f2dcc0: leaq   -0x30(%rbp), %rdi
0xffffff7f92f2dcc4: callq  0xffffff800f2e5cc0        ; clock_get_uptime at clock.c:1044
0xffffff7f92f2dcc9: movq   -0x30(%rbp), %rax
0xffffff7f92f2dccd: cmpq   -0x38(%rbp), %rax
0xffffff7f92f2dcd1: jb     0xffffff7f92f2dbf7
0xffffff7f92f2dcd7: movq   0xde2(%rip), %rax
0xffffff7f92f2dcde: movl   %eax, %ecx
0xffffff7f92f2dce0: andl   $0x3fff, %ecx             ; imm = 0x3FFF
0xffffff7f92f2dce6: testl  %r14d, %r14d
0xffffff7f92f2dce9: je     0xffffff7f92f2dd28
0xffffff7f92f2dceb: testl  %r12d, %r12d
0xffffff7f92f2dcee: je     0xffffff7f92f2dd28
0xffffff7f92f2dcf0: testq  %rcx, %rcx
0xffffff7f92f2dcf3: jne    0xffffff7f92f2dd28
0xffffff7f92f2dcf5: leaq   0x2f3(%rip), %r14
0xffffff7f92f2dcfc: xorl   %eax, %eax
0xffffff7f92f2dcfe: movq   %r14, %rdi
0xffffff7f92f2dd01: movl   -0x50(%rbp), %r15d
0xffffff7f92f2dd05: movl   %r15d, %esi
0xffffff7f92f2dd08: movl   -0x4c(%rbp), %ebx
0xffffff7f92f2dd0b: movl   %ebx, %edx
0xffffff7f92f2dd0d: callq  0xffffff800f919b70        ; kprintf at pe_kprintf.c:109
0xffffff7f92f2dd12: xorl   %eax, %eax
0xffffff7f92f2dd14: movq   %r14, %rdi
0xffffff7f92f2dd17: movl   %r15d, %esi
0xffffff7f92f2dd1a: movl   %ebx, %edx
0xffffff7f92f2dd1c: callq  0xffffff800f2fc730        ; printf at printf.c:837
0xffffff7f92f2dd21: movq   0xd98(%rip), %rax
0xffffff7f92f2dd28: incq   %rax
0xffffff7f92f2dd2b: movq   %rax, 0xd8e(%rip)
0xffffff7f92f2dd32: movq   -0x40(%rbp), %rax
0xffffff7f92f2dd36: movl   $0x0, (%rax)
0xffffff7f92f2dd3c: addq   $0x38, %rsp
0xffffff7f92f2dd40: popq   %rbx
0xffffff7f92f2dd41: popq   %r12
0xffffff7f92f2dd43: popq   %r13
0xffffff7f92f2dd45: popq   %r14
0xffffff7f92f2dd47: popq   %r15
0xffffff7f92f2dd49: popq   %rbp
0xffffff7f92f2dd4a: retq
0xffffff7f92f2dd4b: testl  %r14d, %r14d
0xffffff7f92f2dd4e: je     0xffffff7f92f2dd3c
0xffffff7f92f2dd50: leaq   0x280(%rip), %r14
0xffffff7f92f2dd57: xorl   %eax, %eax
0xffffff7f92f2dd59: movq   %r14, %rdi
0xffffff7f92f2dd5c: movq   -0x48(%rbp), %r15
0xffffff7f92f2dd60: movq   %r15, %rsi
0xffffff7f92f2dd63: movq   %rbx, %rdx
0xffffff7f92f2dd66: callq  0xffffff800f919b70        ; kprintf at pe_kprintf.c:109
0xffffff7f92f2dd6b: xorl   %eax, %eax
0xffffff7f92f2dd6d: movq   %r14, %rdi
0xffffff7f92f2dd70: movq   %r15, %rsi
0xffffff7f92f2dd73: movq   %rbx, %rdx
0xffffff7f92f2dd76: callq  0xffffff800f2fc730        ; printf at printf.c:837
0xffffff7f92f2dd7b: jmp    0xffffff7f92f2dd3c
0xffffff7f92f2dd7d: pushq  %rbp
0xffffff7f92f2dd7e: movq   %rsp, %rbp
0xffffff7f92f2dd81: leaq   0xcd0(%rip), %rax
0xffffff7f92f2dd88: movq   (%rax), %rax
0xffffff7f92f2dd8b: testq  %rax, %rax
0xffffff7f92f2dd8e: je     0xffffff7f92f2dd93
0xffffff7f92f2dd90: popq   %rbp
0xffffff7f92f2dd91: jmpq   *%rax
0xffffff7f92f2dd93: xorl   %eax, %eax
0xffffff7f92f2dd95: popq   %rbp
0xffffff7f92f2dd96: retq
0xffffff7f92f2dd97: pushq  %rbp
0xffffff7f92f2dd98: movq   %rsp, %rbp
0xffffff7f92f2dd9b: leaq   0xbee(%rip), %rax
0xffffff7f92f2dda2: addq   $0x10, %rax
0xffffff7f92f2dda6: popq   %rbp
0xffffff7f92f2dda7: retq
0xffffff7f92f2dda8: pushq  %rbp
0xffffff7f92f2dda9: movq   %rsp, %rbp
0xffffff7f92f2ddac: leaq   0xbdd(%rip), %rax
0xffffff7f92f2ddb3: addq   $0x50, %rax
0xffffff7f92f2ddb7: popq   %rbp
0xffffff7f92f2ddb8: retq
0xffffff7f92f2ddb9: pushq  %rbp
0xffffff7f92f2ddba: movq   %rsp, %rbp
0xffffff7f92f2ddbd: leaq   0xbcc(%rip), %rax
0xffffff7f92f2ddc4: movl   0xc(%rax), %eax
0xffffff7f92f2ddc7: popq   %rbp
0xffffff7f92f2ddc8: retq
0xffffff7f92f2ddc9: pushq  %rbp
0xffffff7f92f2ddca: movq   %rsp, %rbp
0xffffff7f92f2ddcd: leaq   0xc8c(%rip), %rax
0xffffff7f92f2ddd4: movq   (%rax), %rax
0xffffff7f92f2ddd7: testq  %rax, %rax
0xffffff7f92f2ddda: je     0xffffff7f92f2dddf
0xffffff7f92f2dddc: popq   %rbp
0xffffff7f92f2dddd: jmpq   *%rax
0xffffff7f92f2dddf: xorl   %eax, %eax
0xffffff7f92f2dde1: popq   %rbp
0xffffff7f92f2dde2: retq
