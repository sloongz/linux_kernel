
test:     file format elf32-i386


Disassembly of section .init:

080482ac <_init>:
 80482ac:	53                   	push   %ebx
 80482ad:	83 ec 08             	sub    $0x8,%esp
 80482b0:	e8 8b 00 00 00       	call   8048340 <__x86.get_pc_thunk.bx>
 80482b5:	81 c3 4b 1d 00 00    	add    $0x1d4b,%ebx
 80482bb:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 80482c1:	85 c0                	test   %eax,%eax
 80482c3:	74 05                	je     80482ca <_init+0x1e>
 80482c5:	e8 36 00 00 00       	call   8048300 <__libc_start_main@plt+0x10>
 80482ca:	83 c4 08             	add    $0x8,%esp
 80482cd:	5b                   	pop    %ebx
 80482ce:	c3                   	ret    

Disassembly of section .plt:

080482d0 <printf@plt-0x10>:
 80482d0:	ff 35 04 a0 04 08    	pushl  0x804a004
 80482d6:	ff 25 08 a0 04 08    	jmp    *0x804a008
 80482dc:	00 00                	add    %al,(%eax)
	...

080482e0 <printf@plt>:
 80482e0:	ff 25 0c a0 04 08    	jmp    *0x804a00c
 80482e6:	68 00 00 00 00       	push   $0x0
 80482eb:	e9 e0 ff ff ff       	jmp    80482d0 <_init+0x24>

080482f0 <__libc_start_main@plt>:
 80482f0:	ff 25 10 a0 04 08    	jmp    *0x804a010
 80482f6:	68 08 00 00 00       	push   $0x8
 80482fb:	e9 d0 ff ff ff       	jmp    80482d0 <_init+0x24>

Disassembly of section .plt.got:

08048300 <.plt.got>:
 8048300:	ff 25 fc 9f 04 08    	jmp    *0x8049ffc
 8048306:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

08048310 <_start>:
 8048310:	31 ed                	xor    %ebp,%ebp
 8048312:	5e                   	pop    %esi
 8048313:	89 e1                	mov    %esp,%ecx
 8048315:	83 e4 f0             	and    $0xfffffff0,%esp
 8048318:	50                   	push   %eax
 8048319:	54                   	push   %esp
 804831a:	52                   	push   %edx
 804831b:	68 10 85 04 08       	push   $0x8048510
 8048320:	68 b0 84 04 08       	push   $0x80484b0
 8048325:	51                   	push   %ecx
 8048326:	56                   	push   %esi
 8048327:	68 3c 84 04 08       	push   $0x804843c
 804832c:	e8 bf ff ff ff       	call   80482f0 <__libc_start_main@plt>
 8048331:	f4                   	hlt    
 8048332:	66 90                	xchg   %ax,%ax
 8048334:	66 90                	xchg   %ax,%ax
 8048336:	66 90                	xchg   %ax,%ax
 8048338:	66 90                	xchg   %ax,%ax
 804833a:	66 90                	xchg   %ax,%ax
 804833c:	66 90                	xchg   %ax,%ax
 804833e:	66 90                	xchg   %ax,%ax

08048340 <__x86.get_pc_thunk.bx>:
 8048340:	8b 1c 24             	mov    (%esp),%ebx
 8048343:	c3                   	ret    
 8048344:	66 90                	xchg   %ax,%ax
 8048346:	66 90                	xchg   %ax,%ax
 8048348:	66 90                	xchg   %ax,%ax
 804834a:	66 90                	xchg   %ax,%ax
 804834c:	66 90                	xchg   %ax,%ax
 804834e:	66 90                	xchg   %ax,%ax

08048350 <deregister_tm_clones>:
 8048350:	b8 1f a0 04 08       	mov    $0x804a01f,%eax
 8048355:	2d 1c a0 04 08       	sub    $0x804a01c,%eax
 804835a:	83 f8 06             	cmp    $0x6,%eax
 804835d:	76 1a                	jbe    8048379 <deregister_tm_clones+0x29>
 804835f:	b8 00 00 00 00       	mov    $0x0,%eax
 8048364:	85 c0                	test   %eax,%eax
 8048366:	74 11                	je     8048379 <deregister_tm_clones+0x29>
 8048368:	55                   	push   %ebp
 8048369:	89 e5                	mov    %esp,%ebp
 804836b:	83 ec 14             	sub    $0x14,%esp
 804836e:	68 1c a0 04 08       	push   $0x804a01c
 8048373:	ff d0                	call   *%eax
 8048375:	83 c4 10             	add    $0x10,%esp
 8048378:	c9                   	leave  
 8048379:	f3 c3                	repz ret 
 804837b:	90                   	nop
 804837c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08048380 <register_tm_clones>:
 8048380:	b8 1c a0 04 08       	mov    $0x804a01c,%eax
 8048385:	2d 1c a0 04 08       	sub    $0x804a01c,%eax
 804838a:	c1 f8 02             	sar    $0x2,%eax
 804838d:	89 c2                	mov    %eax,%edx
 804838f:	c1 ea 1f             	shr    $0x1f,%edx
 8048392:	01 d0                	add    %edx,%eax
 8048394:	d1 f8                	sar    %eax
 8048396:	74 1b                	je     80483b3 <register_tm_clones+0x33>
 8048398:	ba 00 00 00 00       	mov    $0x0,%edx
 804839d:	85 d2                	test   %edx,%edx
 804839f:	74 12                	je     80483b3 <register_tm_clones+0x33>
 80483a1:	55                   	push   %ebp
 80483a2:	89 e5                	mov    %esp,%ebp
 80483a4:	83 ec 10             	sub    $0x10,%esp
 80483a7:	50                   	push   %eax
 80483a8:	68 1c a0 04 08       	push   $0x804a01c
 80483ad:	ff d2                	call   *%edx
 80483af:	83 c4 10             	add    $0x10,%esp
 80483b2:	c9                   	leave  
 80483b3:	f3 c3                	repz ret 
 80483b5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80483b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

080483c0 <__do_global_dtors_aux>:
 80483c0:	80 3d 1c a0 04 08 00 	cmpb   $0x0,0x804a01c
 80483c7:	75 13                	jne    80483dc <__do_global_dtors_aux+0x1c>
 80483c9:	55                   	push   %ebp
 80483ca:	89 e5                	mov    %esp,%ebp
 80483cc:	83 ec 08             	sub    $0x8,%esp
 80483cf:	e8 7c ff ff ff       	call   8048350 <deregister_tm_clones>
 80483d4:	c6 05 1c a0 04 08 01 	movb   $0x1,0x804a01c
 80483db:	c9                   	leave  
 80483dc:	f3 c3                	repz ret 
 80483de:	66 90                	xchg   %ax,%ax

080483e0 <frame_dummy>:
 80483e0:	b8 10 9f 04 08       	mov    $0x8049f10,%eax
 80483e5:	8b 10                	mov    (%eax),%edx
 80483e7:	85 d2                	test   %edx,%edx
 80483e9:	75 05                	jne    80483f0 <frame_dummy+0x10>
 80483eb:	eb 93                	jmp    8048380 <register_tm_clones>
 80483ed:	8d 76 00             	lea    0x0(%esi),%esi
 80483f0:	ba 00 00 00 00       	mov    $0x0,%edx
 80483f5:	85 d2                	test   %edx,%edx
 80483f7:	74 f2                	je     80483eb <frame_dummy+0xb>
 80483f9:	55                   	push   %ebp
 80483fa:	89 e5                	mov    %esp,%ebp
 80483fc:	83 ec 14             	sub    $0x14,%esp
 80483ff:	50                   	push   %eax
 8048400:	ff d2                	call   *%edx
 8048402:	83 c4 10             	add    $0x10,%esp
 8048405:	c9                   	leave  
 8048406:	e9 75 ff ff ff       	jmp    8048380 <register_tm_clones>

0804840b <p1>:
#include <stdio.h>

void p1(char c)
{
 804840b:	55                   	push   %ebp
 804840c:	89 e5                	mov    %esp,%ebp
 804840e:	83 ec 18             	sub    $0x18,%esp
 8048411:	8b 45 08             	mov    0x8(%ebp),%eax
 8048414:	88 45 f4             	mov    %al,-0xc(%ebp)
	printf("%c\n", c);
 8048417:	0f be 45 f4          	movsbl -0xc(%ebp),%eax
 804841b:	83 ec 08             	sub    $0x8,%esp
 804841e:	50                   	push   %eax
 804841f:	68 30 85 04 08       	push   $0x8048530
 8048424:	e8 b7 fe ff ff       	call   80482e0 <printf@plt>
 8048429:	83 c4 10             	add    $0x10,%esp
}
 804842c:	90                   	nop
 804842d:	c9                   	leave  
 804842e:	c3                   	ret    

0804842f <p2>:

int p2(int x, int y)
{
 804842f:	55                   	push   %ebp
 8048430:	89 e5                	mov    %esp,%ebp
	return x + y;
 8048432:	8b 55 08             	mov    0x8(%ebp),%edx
 8048435:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048438:	01 d0                	add    %edx,%eax
}
 804843a:	5d                   	pop    %ebp
 804843b:	c3                   	ret    

0804843c <main>:

int main(void)
{
 804843c:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 8048440:	83 e4 f0             	and    $0xfffffff0,%esp
 8048443:	ff 71 fc             	pushl  -0x4(%ecx)
 8048446:	55                   	push   %ebp
 8048447:	89 e5                	mov    %esp,%ebp
 8048449:	51                   	push   %ecx
 804844a:	83 ec 14             	sub    $0x14,%esp
	char c = 'a';
 804844d:	c6 45 eb 61          	movb   $0x61,-0x15(%ebp)
	int x, y, z;
	x = 1;
 8048451:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%ebp)
	y = 2;
 8048458:	c7 45 f0 02 00 00 00 	movl   $0x2,-0x10(%ebp)
	p1(c);
 804845f:	0f be 45 eb          	movsbl -0x15(%ebp),%eax
 8048463:	83 ec 0c             	sub    $0xc,%esp
 8048466:	50                   	push   %eax
 8048467:	e8 9f ff ff ff       	call   804840b <p1>
 804846c:	83 c4 10             	add    $0x10,%esp
	z=p2(x,y);
 804846f:	83 ec 08             	sub    $0x8,%esp
 8048472:	ff 75 f0             	pushl  -0x10(%ebp)
 8048475:	ff 75 ec             	pushl  -0x14(%ebp)
 8048478:	e8 b2 ff ff ff       	call   804842f <p2>
 804847d:	83 c4 10             	add    $0x10,%esp
 8048480:	89 45 f4             	mov    %eax,-0xc(%ebp)
	printf("%d=%d+%d\n", z, x, y);
 8048483:	ff 75 f0             	pushl  -0x10(%ebp)
 8048486:	ff 75 ec             	pushl  -0x14(%ebp)
 8048489:	ff 75 f4             	pushl  -0xc(%ebp)
 804848c:	68 34 85 04 08       	push   $0x8048534
 8048491:	e8 4a fe ff ff       	call   80482e0 <printf@plt>
 8048496:	83 c4 10             	add    $0x10,%esp
 8048499:	b8 00 00 00 00       	mov    $0x0,%eax
}
 804849e:	8b 4d fc             	mov    -0x4(%ebp),%ecx
 80484a1:	c9                   	leave  
 80484a2:	8d 61 fc             	lea    -0x4(%ecx),%esp
 80484a5:	c3                   	ret    
 80484a6:	66 90                	xchg   %ax,%ax
 80484a8:	66 90                	xchg   %ax,%ax
 80484aa:	66 90                	xchg   %ax,%ax
 80484ac:	66 90                	xchg   %ax,%ax
 80484ae:	66 90                	xchg   %ax,%ax

080484b0 <__libc_csu_init>:
 80484b0:	55                   	push   %ebp
 80484b1:	57                   	push   %edi
 80484b2:	56                   	push   %esi
 80484b3:	53                   	push   %ebx
 80484b4:	e8 87 fe ff ff       	call   8048340 <__x86.get_pc_thunk.bx>
 80484b9:	81 c3 47 1b 00 00    	add    $0x1b47,%ebx
 80484bf:	83 ec 0c             	sub    $0xc,%esp
 80484c2:	8b 6c 24 20          	mov    0x20(%esp),%ebp
 80484c6:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 80484cc:	e8 db fd ff ff       	call   80482ac <_init>
 80484d1:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 80484d7:	29 c6                	sub    %eax,%esi
 80484d9:	c1 fe 02             	sar    $0x2,%esi
 80484dc:	85 f6                	test   %esi,%esi
 80484de:	74 25                	je     8048505 <__libc_csu_init+0x55>
 80484e0:	31 ff                	xor    %edi,%edi
 80484e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80484e8:	83 ec 04             	sub    $0x4,%esp
 80484eb:	ff 74 24 2c          	pushl  0x2c(%esp)
 80484ef:	ff 74 24 2c          	pushl  0x2c(%esp)
 80484f3:	55                   	push   %ebp
 80484f4:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 80484fb:	83 c7 01             	add    $0x1,%edi
 80484fe:	83 c4 10             	add    $0x10,%esp
 8048501:	39 f7                	cmp    %esi,%edi
 8048503:	75 e3                	jne    80484e8 <__libc_csu_init+0x38>
 8048505:	83 c4 0c             	add    $0xc,%esp
 8048508:	5b                   	pop    %ebx
 8048509:	5e                   	pop    %esi
 804850a:	5f                   	pop    %edi
 804850b:	5d                   	pop    %ebp
 804850c:	c3                   	ret    
 804850d:	8d 76 00             	lea    0x0(%esi),%esi

08048510 <__libc_csu_fini>:
 8048510:	f3 c3                	repz ret 

Disassembly of section .fini:

08048514 <_fini>:
 8048514:	53                   	push   %ebx
 8048515:	83 ec 08             	sub    $0x8,%esp
 8048518:	e8 23 fe ff ff       	call   8048340 <__x86.get_pc_thunk.bx>
 804851d:	81 c3 e3 1a 00 00    	add    $0x1ae3,%ebx
 8048523:	83 c4 08             	add    $0x8,%esp
 8048526:	5b                   	pop    %ebx
 8048527:	c3                   	ret    
