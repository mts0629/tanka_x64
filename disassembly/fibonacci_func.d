
./bin/fibonacci_func:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <free@plt-0x10>:
    1020:	ff 35 82 2f 00 00    	push   0x2f82(%rip)        # 3fa8 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 84 2f 00 00    	jmp    *0x2f84(%rip)        # 3fb0 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <free@plt>:
    1030:	ff 25 82 2f 00 00    	jmp    *0x2f82(%rip)        # 3fb8 <free@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001040 <printf@plt>:
    1040:	ff 25 7a 2f 00 00    	jmp    *0x2f7a(%rip)        # 3fc0 <printf@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	push   $0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001050 <malloc@plt>:
    1050:	ff 25 72 2f 00 00    	jmp    *0x2f72(%rip)        # 3fc8 <malloc@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	push   $0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001060 <atoi@plt>:
    1060:	ff 25 6a 2f 00 00    	jmp    *0x2f6a(%rip)        # 3fd0 <atoi@GLIBC_2.2.5>
    1066:	68 03 00 00 00       	push   $0x3
    106b:	e9 b0 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .plt.got:

0000000000001070 <__cxa_finalize@plt>:
    1070:	ff 25 82 2f 00 00    	jmp    *0x2f82(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1076:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000001080 <_start>:
    1080:	f3 0f 1e fa          	endbr64 
    1084:	31 ed                	xor    %ebp,%ebp
    1086:	49 89 d1             	mov    %rdx,%r9
    1089:	5e                   	pop    %rsi
    108a:	48 89 e2             	mov    %rsp,%rdx
    108d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1091:	50                   	push   %rax
    1092:	54                   	push   %rsp
    1093:	45 31 c0             	xor    %r8d,%r8d
    1096:	31 c9                	xor    %ecx,%ecx
    1098:	48 8d 3d ca 00 00 00 	lea    0xca(%rip),%rdi        # 1169 <main>
    109f:	ff 15 33 2f 00 00    	call   *0x2f33(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    10a5:	f4                   	hlt    
    10a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    10ad:	00 00 00 

00000000000010b0 <deregister_tm_clones>:
    10b0:	48 8d 3d 59 2f 00 00 	lea    0x2f59(%rip),%rdi        # 4010 <__TMC_END__>
    10b7:	48 8d 05 52 2f 00 00 	lea    0x2f52(%rip),%rax        # 4010 <__TMC_END__>
    10be:	48 39 f8             	cmp    %rdi,%rax
    10c1:	74 15                	je     10d8 <deregister_tm_clones+0x28>
    10c3:	48 8b 05 16 2f 00 00 	mov    0x2f16(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    10ca:	48 85 c0             	test   %rax,%rax
    10cd:	74 09                	je     10d8 <deregister_tm_clones+0x28>
    10cf:	ff e0                	jmp    *%rax
    10d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10d8:	c3                   	ret    
    10d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010e0 <register_tm_clones>:
    10e0:	48 8d 3d 29 2f 00 00 	lea    0x2f29(%rip),%rdi        # 4010 <__TMC_END__>
    10e7:	48 8d 35 22 2f 00 00 	lea    0x2f22(%rip),%rsi        # 4010 <__TMC_END__>
    10ee:	48 29 fe             	sub    %rdi,%rsi
    10f1:	48 89 f0             	mov    %rsi,%rax
    10f4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    10f8:	48 c1 f8 03          	sar    $0x3,%rax
    10fc:	48 01 c6             	add    %rax,%rsi
    10ff:	48 d1 fe             	sar    %rsi
    1102:	74 14                	je     1118 <register_tm_clones+0x38>
    1104:	48 8b 05 e5 2e 00 00 	mov    0x2ee5(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    110b:	48 85 c0             	test   %rax,%rax
    110e:	74 08                	je     1118 <register_tm_clones+0x38>
    1110:	ff e0                	jmp    *%rax
    1112:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1118:	c3                   	ret    
    1119:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001120 <__do_global_dtors_aux>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	80 3d e5 2e 00 00 00 	cmpb   $0x0,0x2ee5(%rip)        # 4010 <__TMC_END__>
    112b:	75 2b                	jne    1158 <__do_global_dtors_aux+0x38>
    112d:	55                   	push   %rbp
    112e:	48 83 3d c2 2e 00 00 	cmpq   $0x0,0x2ec2(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1135:	00 
    1136:	48 89 e5             	mov    %rsp,%rbp
    1139:	74 0c                	je     1147 <__do_global_dtors_aux+0x27>
    113b:	48 8b 3d c6 2e 00 00 	mov    0x2ec6(%rip),%rdi        # 4008 <__dso_handle>
    1142:	e8 29 ff ff ff       	call   1070 <__cxa_finalize@plt>
    1147:	e8 64 ff ff ff       	call   10b0 <deregister_tm_clones>
    114c:	c6 05 bd 2e 00 00 01 	movb   $0x1,0x2ebd(%rip)        # 4010 <__TMC_END__>
    1153:	5d                   	pop    %rbp
    1154:	c3                   	ret    
    1155:	0f 1f 00             	nopl   (%rax)
    1158:	c3                   	ret    
    1159:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001160 <frame_dummy>:
    1160:	f3 0f 1e fa          	endbr64 
    1164:	e9 77 ff ff ff       	jmp    10e0 <register_tm_clones>

0000000000001169 <main>:
    1169:	f3 0f 1e fa          	endbr64 
    116d:	55                   	push   %rbp
    116e:	48 89 e5             	mov    %rsp,%rbp
    1171:	48 83 ec 20          	sub    $0x20,%rsp
    1175:	89 7d ec             	mov    %edi,-0x14(%rbp)
    1178:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    117c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1180:	48 83 c0 08          	add    $0x8,%rax
    1184:	48 8b 00             	mov    (%rax),%rax
    1187:	48 89 c7             	mov    %rax,%rdi
    118a:	e8 d1 fe ff ff       	call   1060 <atoi@plt>
    118f:	89 45 f4             	mov    %eax,-0xc(%rbp)
    1192:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1195:	48 98                	cltq   
    1197:	48 c1 e0 02          	shl    $0x2,%rax
    119b:	48 89 c7             	mov    %rax,%rdi
    119e:	e8 ad fe ff ff       	call   1050 <malloc@plt>
    11a3:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    11a7:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    11ab:	8b 45 f4             	mov    -0xc(%rbp),%eax
    11ae:	48 89 d6             	mov    %rdx,%rsi
    11b1:	89 c7                	mov    %eax,%edi
    11b3:	e8 54 00 00 00       	call   120c <fibonacci>
    11b8:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
    11bf:	eb 30                	jmp    11f1 <main+0x88>
    11c1:	8b 45 f0             	mov    -0x10(%rbp),%eax
    11c4:	48 98                	cltq   
    11c6:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    11cd:	00 
    11ce:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    11d2:	48 01 d0             	add    %rdx,%rax
    11d5:	8b 00                	mov    (%rax),%eax
    11d7:	89 c6                	mov    %eax,%esi
    11d9:	48 8d 05 24 0e 00 00 	lea    0xe24(%rip),%rax        # 2004 <_IO_stdin_used+0x4>
    11e0:	48 89 c7             	mov    %rax,%rdi
    11e3:	b8 00 00 00 00       	mov    $0x0,%eax
    11e8:	e8 53 fe ff ff       	call   1040 <printf@plt>
    11ed:	83 45 f0 01          	addl   $0x1,-0x10(%rbp)
    11f1:	8b 45 f0             	mov    -0x10(%rbp),%eax
    11f4:	3b 45 f4             	cmp    -0xc(%rbp),%eax
    11f7:	7c c8                	jl     11c1 <main+0x58>
    11f9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    11fd:	48 89 c7             	mov    %rax,%rdi
    1200:	e8 2b fe ff ff       	call   1030 <free@plt>
    1205:	b8 00 00 00 00       	mov    $0x0,%eax
    120a:	c9                   	leave  
    120b:	c3                   	ret    

000000000000120c <fibonacci>:
    120c:	6a 01                	push   $0x1
    120e:	5a                   	pop    %rdx
    120f:	31 c0                	xor    %eax,%eax
    1211:	83 ff 00             	cmp    $0x0,%edi
    1214:	74 10                	je     1226 <fibonacci+0x1a>
    1216:	89 06                	mov    %eax,(%rsi)
    1218:	90                   	nop
    1219:	89 d0                	mov    %edx,%eax
    121b:	03 16                	add    (%rsi),%edx
    121d:	48 83 c6 04          	add    $0x4,%rsi
    1221:	48 ff cf             	dec    %rdi
    1224:	eb eb                	jmp    1211 <fibonacci+0x5>
    1226:	48 89 c0             	mov    %rax,%rax
    1229:	90                   	nop
    122a:	c3                   	ret    

Disassembly of section .fini:

000000000000122c <_fini>:
    122c:	f3 0f 1e fa          	endbr64 
    1230:	48 83 ec 08          	sub    $0x8,%rsp
    1234:	48 83 c4 08          	add    $0x8,%rsp
    1238:	c3                   	ret    
