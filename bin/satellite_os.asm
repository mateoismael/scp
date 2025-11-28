
bin/satellite_os.elf:     file format elf32-littleriscv


Disassembly of section .text:

80000000 <_start>:
80000000:	30401073          	csrw	mie,zero
80000004:	34401073          	csrw	mip,zero
80000008:	00005117          	auipc	sp,0x5
8000000c:	06c10113          	addi	sp,sp,108 # 80005074 <_stack_top>
80000010:	00006297          	auipc	t0,0x6
80000014:	29c28293          	addi	t0,t0,668 # 800062ac <_bss_end>
80000018:	00006317          	auipc	t1,0x6
8000001c:	29430313          	addi	t1,t1,660 # 800062ac <_bss_end>

80000020 <clear_bss>:
80000020:	00628863          	beq	t0,t1,80000030 <bss_done>
80000024:	0002a023          	sw	zero,0(t0)
80000028:	00428293          	addi	t0,t0,4
8000002c:	ff5ff06f          	j	80000020 <clear_bss>

80000030 <bss_done>:
80000030:	00000097          	auipc	ra,0x0
80000034:	010080e7          	jalr	16(ra) # 80000040 <main>

80000038 <halt>:
80000038:	10500073          	wfi
8000003c:	ffdff06f          	j	80000038 <halt>

80000040 <main>:
80000040:	ff010113          	addi	sp,sp,-16
80000044:	00112623          	sw	ra,12(sp)
80000048:	00002097          	auipc	ra,0x2
8000004c:	674080e7          	jalr	1652(ra) # 800026bc <uart_init>
80000050:	00004517          	auipc	a0,0x4
80000054:	ba850513          	addi	a0,a0,-1112 # 80003bf8 <__clzsi2+0x4c>
80000058:	00002097          	auipc	ra,0x2
8000005c:	6b0080e7          	jalr	1712(ra) # 80002708 <uart_puts>
80000060:	00004517          	auipc	a0,0x4
80000064:	bcc50513          	addi	a0,a0,-1076 # 80003c2c <__clzsi2+0x80>
80000068:	00002097          	auipc	ra,0x2
8000006c:	6a0080e7          	jalr	1696(ra) # 80002708 <uart_puts>
80000070:	00004517          	auipc	a0,0x4
80000074:	bd450513          	addi	a0,a0,-1068 # 80003c44 <__clzsi2+0x98>
80000078:	00002097          	auipc	ra,0x2
8000007c:	690080e7          	jalr	1680(ra) # 80002708 <uart_puts>
80000080:	00000097          	auipc	ra,0x0
80000084:	2a0080e7          	jalr	672(ra) # 80000320 <metrics_init>
80000088:	00004517          	auipc	a0,0x4
8000008c:	be850513          	addi	a0,a0,-1048 # 80003c70 <__clzsi2+0xc4>
80000090:	00002097          	auipc	ra,0x2
80000094:	678080e7          	jalr	1656(ra) # 80002708 <uart_puts>
80000098:	00003097          	auipc	ra,0x3
8000009c:	9f0080e7          	jalr	-1552(ra) # 80002a88 <satellite_init>
800000a0:	00004517          	auipc	a0,0x4
800000a4:	c0050513          	addi	a0,a0,-1024 # 80003ca0 <__clzsi2+0xf4>
800000a8:	00002097          	auipc	ra,0x2
800000ac:	660080e7          	jalr	1632(ra) # 80002708 <uart_puts>
800000b0:	00001097          	auipc	ra,0x1
800000b4:	168080e7          	jalr	360(ra) # 80001218 <process_init>
800000b8:	00004517          	auipc	a0,0x4
800000bc:	c1450513          	addi	a0,a0,-1004 # 80003ccc <__clzsi2+0x120>
800000c0:	00002097          	auipc	ra,0x2
800000c4:	648080e7          	jalr	1608(ra) # 80002708 <uart_puts>
800000c8:	00300513          	li	a0,3
800000cc:	00001097          	auipc	ra,0x1
800000d0:	234080e7          	jalr	564(ra) # 80001300 <scheduler_init>
800000d4:	00004517          	auipc	a0,0x4
800000d8:	c1c50513          	addi	a0,a0,-996 # 80003cf0 <__clzsi2+0x144>
800000dc:	00002097          	auipc	ra,0x2
800000e0:	62c080e7          	jalr	1580(ra) # 80002708 <uart_puts>
800000e4:	00001097          	auipc	ra,0x1
800000e8:	2bc080e7          	jalr	700(ra) # 800013a0 <scheduler_run>
800000ec:	00004517          	auipc	a0,0x4
800000f0:	c3450513          	addi	a0,a0,-972 # 80003d20 <__clzsi2+0x174>
800000f4:	00002097          	auipc	ra,0x2
800000f8:	614080e7          	jalr	1556(ra) # 80002708 <uart_puts>
800000fc:	00000097          	auipc	ra,0x0
80000100:	2b0080e7          	jalr	688(ra) # 800003ac <metrics_print_summary>
80000104:	00004517          	auipc	a0,0x4
80000108:	c2050513          	addi	a0,a0,-992 # 80003d24 <__clzsi2+0x178>
8000010c:	00002097          	auipc	ra,0x2
80000110:	5fc080e7          	jalr	1532(ra) # 80002708 <uart_puts>
80000114:	00001097          	auipc	ra,0x1
80000118:	8ec080e7          	jalr	-1812(ra) # 80000a00 <metrics_print_detailed>
8000011c:	00004517          	auipc	a0,0x4
80000120:	c0c50513          	addi	a0,a0,-1012 # 80003d28 <__clzsi2+0x17c>
80000124:	00002097          	auipc	ra,0x2
80000128:	5e4080e7          	jalr	1508(ra) # 80002708 <uart_puts>
8000012c:	0000006f          	j	8000012c <main+0xec>

80000130 <print_metric_value_64>:
80000130:	fb010113          	addi	sp,sp,-80
80000134:	04112623          	sw	ra,76(sp)
80000138:	00012423          	sw	zero,8(sp)
8000013c:	00012623          	sw	zero,12(sp)
80000140:	00012823          	sw	zero,16(sp)
80000144:	00012a23          	sw	zero,20(sp)
80000148:	00012c23          	sw	zero,24(sp)
8000014c:	00012e23          	sw	zero,28(sp)
80000150:	00b567b3          	or	a5,a0,a1
80000154:	0e078063          	beqz	a5,80000234 <print_metric_value_64+0x104>
80000158:	04812423          	sw	s0,72(sp)
8000015c:	04912223          	sw	s1,68(sp)
80000160:	03312e23          	sw	s3,60(sp)
80000164:	03412c23          	sw	s4,56(sp)
80000168:	03512a23          	sw	s5,52(sp)
8000016c:	05212023          	sw	s2,64(sp)
80000170:	03612823          	sw	s6,48(sp)
80000174:	03712623          	sw	s7,44(sp)
80000178:	00050493          	mv	s1,a0
8000017c:	00058413          	mv	s0,a1
80000180:	00000993          	li	s3,0
80000184:	00810a13          	addi	s4,sp,8
80000188:	01700a93          	li	s5,23
8000018c:	00a00613          	li	a2,10
80000190:	00000693          	li	a3,0
80000194:	00048513          	mv	a0,s1
80000198:	00040593          	mv	a1,s0
8000019c:	00003097          	auipc	ra,0x3
800001a0:	f88080e7          	jalr	-120(ra) # 80003124 <__umoddi3>
800001a4:	00198993          	addi	s3,s3,1
800001a8:	03050793          	addi	a5,a0,48
800001ac:	013a0933          	add	s2,s4,s3
800001b0:	00048513          	mv	a0,s1
800001b4:	00040593          	mv	a1,s0
800001b8:	00a00613          	li	a2,10
800001bc:	00000693          	li	a3,0
800001c0:	fef90fa3          	sb	a5,-1(s2)
800001c4:	00003097          	auipc	ra,0x3
800001c8:	92c080e7          	jalr	-1748(ra) # 80002af0 <__udivdi3>
800001cc:	00040b13          	mv	s6,s0
800001d0:	00048b93          	mv	s7,s1
800001d4:	00058413          	mv	s0,a1
800001d8:	00050493          	mv	s1,a0
800001dc:	040b0463          	beqz	s6,80000224 <print_metric_value_64+0xf4>
800001e0:	fb5996e3          	bne	s3,s5,8000018c <print_metric_value_64+0x5c>
800001e4:	fff94503          	lbu	a0,-1(s2)
800001e8:	fff90913          	addi	s2,s2,-1
800001ec:	00002097          	auipc	ra,0x2
800001f0:	4d4080e7          	jalr	1236(ra) # 800026c0 <uart_putc>
800001f4:	ff2a18e3          	bne	s4,s2,800001e4 <print_metric_value_64+0xb4>
800001f8:	04812403          	lw	s0,72(sp)
800001fc:	04c12083          	lw	ra,76(sp)
80000200:	04412483          	lw	s1,68(sp)
80000204:	04012903          	lw	s2,64(sp)
80000208:	03c12983          	lw	s3,60(sp)
8000020c:	03812a03          	lw	s4,56(sp)
80000210:	03412a83          	lw	s5,52(sp)
80000214:	03012b03          	lw	s6,48(sp)
80000218:	02c12b83          	lw	s7,44(sp)
8000021c:	05010113          	addi	sp,sp,80
80000220:	00008067          	ret
80000224:	00900793          	li	a5,9
80000228:	fb77fee3          	bgeu	a5,s7,800001e4 <print_metric_value_64+0xb4>
8000022c:	f75990e3          	bne	s3,s5,8000018c <print_metric_value_64+0x5c>
80000230:	fb5ff06f          	j	800001e4 <print_metric_value_64+0xb4>
80000234:	04c12083          	lw	ra,76(sp)
80000238:	03000513          	li	a0,48
8000023c:	05010113          	addi	sp,sp,80
80000240:	00002317          	auipc	t1,0x2
80000244:	48030067          	jr	1152(t1) # 800026c0 <uart_putc>

80000248 <print_metric_value>:
80000248:	fd010113          	addi	sp,sp,-48
8000024c:	02112623          	sw	ra,44(sp)
80000250:	00012223          	sw	zero,4(sp)
80000254:	00012423          	sw	zero,8(sp)
80000258:	00012623          	sw	zero,12(sp)
8000025c:	0a050863          	beqz	a0,8000030c <print_metric_value+0xc4>
80000260:	02912223          	sw	s1,36(sp)
80000264:	03212023          	sw	s2,32(sp)
80000268:	01312e23          	sw	s3,28(sp)
8000026c:	01512a23          	sw	s5,20(sp)
80000270:	01612823          	sw	s6,16(sp)
80000274:	02812423          	sw	s0,40(sp)
80000278:	01412c23          	sw	s4,24(sp)
8000027c:	00050493          	mv	s1,a0
80000280:	00000913          	li	s2,0
80000284:	00410993          	addi	s3,sp,4
80000288:	00900a93          	li	s5,9
8000028c:	00b00b13          	li	s6,11
80000290:	00a00593          	li	a1,10
80000294:	00048513          	mv	a0,s1
80000298:	00004097          	auipc	ra,0x4
8000029c:	8b0080e7          	jalr	-1872(ra) # 80003b48 <__umodsi3>
800002a0:	00190913          	addi	s2,s2,1
800002a4:	03050793          	addi	a5,a0,48
800002a8:	01298433          	add	s0,s3,s2
800002ac:	00048513          	mv	a0,s1
800002b0:	00a00593          	li	a1,10
800002b4:	fef40fa3          	sb	a5,-1(s0)
800002b8:	00048a13          	mv	s4,s1
800002bc:	00004097          	auipc	ra,0x4
800002c0:	844080e7          	jalr	-1980(ra) # 80003b00 <__hidden___udivsi3>
800002c4:	00050493          	mv	s1,a0
800002c8:	014af463          	bgeu	s5,s4,800002d0 <print_metric_value+0x88>
800002cc:	fd6912e3          	bne	s2,s6,80000290 <print_metric_value+0x48>
800002d0:	fff44503          	lbu	a0,-1(s0)
800002d4:	fff40413          	addi	s0,s0,-1
800002d8:	00002097          	auipc	ra,0x2
800002dc:	3e8080e7          	jalr	1000(ra) # 800026c0 <uart_putc>
800002e0:	fe8998e3          	bne	s3,s0,800002d0 <print_metric_value+0x88>
800002e4:	02812403          	lw	s0,40(sp)
800002e8:	02c12083          	lw	ra,44(sp)
800002ec:	02412483          	lw	s1,36(sp)
800002f0:	02012903          	lw	s2,32(sp)
800002f4:	01c12983          	lw	s3,28(sp)
800002f8:	01812a03          	lw	s4,24(sp)
800002fc:	01412a83          	lw	s5,20(sp)
80000300:	01012b03          	lw	s6,16(sp)
80000304:	03010113          	addi	sp,sp,48
80000308:	00008067          	ret
8000030c:	02c12083          	lw	ra,44(sp)
80000310:	03000513          	li	a0,48
80000314:	03010113          	addi	sp,sp,48
80000318:	00002317          	auipc	t1,0x2
8000031c:	3a830067          	jr	936(t1) # 800026c0 <uart_putc>

80000320 <metrics_init>:
80000320:	00006797          	auipc	a5,0x6
80000324:	d6078793          	addi	a5,a5,-672 # 80006080 <system_metrics>
80000328:	00000693          	li	a3,0
8000032c:	00000713          	li	a4,0
80000330:	00004517          	auipc	a0,0x4
80000334:	a2850513          	addi	a0,a0,-1496 # 80003d58 <__clzsi2+0x1ac>
80000338:	0007a023          	sw	zero,0(a5)
8000033c:	0007a223          	sw	zero,4(a5)
80000340:	0007a423          	sw	zero,8(a5)
80000344:	0007a623          	sw	zero,12(a5)
80000348:	0007a823          	sw	zero,16(a5)
8000034c:	0007aa23          	sw	zero,20(a5)
80000350:	00d7ac23          	sw	a3,24(a5)
80000354:	00e7ae23          	sw	a4,28(a5)
80000358:	02d7a023          	sw	a3,32(a5)
8000035c:	02e7a223          	sw	a4,36(a5)
80000360:	02d7a423          	sw	a3,40(a5)
80000364:	02e7a623          	sw	a4,44(a5)
80000368:	02d7a823          	sw	a3,48(a5)
8000036c:	02e7aa23          	sw	a4,52(a5)
80000370:	0207ac23          	sw	zero,56(a5)
80000374:	0207ae23          	sw	zero,60(a5)
80000378:	0407a023          	sw	zero,64(a5)
8000037c:	0407a223          	sw	zero,68(a5)
80000380:	0407a423          	sw	zero,72(a5)
80000384:	0407a623          	sw	zero,76(a5)
80000388:	0407a823          	sw	zero,80(a5)
8000038c:	0407aa23          	sw	zero,84(a5)
80000390:	0407ac23          	sw	zero,88(a5)
80000394:	0407ae23          	sw	zero,92(a5)
80000398:	0607a023          	sw	zero,96(a5)
8000039c:	0607a223          	sw	zero,100(a5)
800003a0:	0607a423          	sw	zero,104(a5)
800003a4:	00002317          	auipc	t1,0x2
800003a8:	36430067          	jr	868(t1) # 80002708 <uart_puts>

800003ac <metrics_print_summary>:
800003ac:	ff010113          	addi	sp,sp,-16
800003b0:	00004517          	auipc	a0,0x4
800003b4:	97450513          	addi	a0,a0,-1676 # 80003d24 <__clzsi2+0x178>
800003b8:	00112623          	sw	ra,12(sp)
800003bc:	00812423          	sw	s0,8(sp)
800003c0:	00002097          	auipc	ra,0x2
800003c4:	348080e7          	jalr	840(ra) # 80002708 <uart_puts>
800003c8:	00004517          	auipc	a0,0x4
800003cc:	9bc50513          	addi	a0,a0,-1604 # 80003d84 <__clzsi2+0x1d8>
800003d0:	00002097          	auipc	ra,0x2
800003d4:	338080e7          	jalr	824(ra) # 80002708 <uart_puts>
800003d8:	00004517          	auipc	a0,0x4
800003dc:	a5c50513          	addi	a0,a0,-1444 # 80003e34 <__clzsi2+0x288>
800003e0:	00002097          	auipc	ra,0x2
800003e4:	328080e7          	jalr	808(ra) # 80002708 <uart_puts>
800003e8:	00004517          	auipc	a0,0x4
800003ec:	a8c50513          	addi	a0,a0,-1396 # 80003e74 <__clzsi2+0x2c8>
800003f0:	00002097          	auipc	ra,0x2
800003f4:	318080e7          	jalr	792(ra) # 80002708 <uart_puts>
800003f8:	00004517          	auipc	a0,0x4
800003fc:	92c50513          	addi	a0,a0,-1748 # 80003d24 <__clzsi2+0x178>
80000400:	00002097          	auipc	ra,0x2
80000404:	308080e7          	jalr	776(ra) # 80002708 <uart_puts>
80000408:	00004517          	auipc	a0,0x4
8000040c:	b1c50513          	addi	a0,a0,-1252 # 80003f24 <__clzsi2+0x378>
80000410:	00002097          	auipc	ra,0x2
80000414:	2f8080e7          	jalr	760(ra) # 80002708 <uart_puts>
80000418:	00004517          	auipc	a0,0x4
8000041c:	b2850513          	addi	a0,a0,-1240 # 80003f40 <__clzsi2+0x394>
80000420:	00006417          	auipc	s0,0x6
80000424:	c6040413          	addi	s0,s0,-928 # 80006080 <system_metrics>
80000428:	00002097          	auipc	ra,0x2
8000042c:	2e0080e7          	jalr	736(ra) # 80002708 <uart_puts>
80000430:	00042503          	lw	a0,0(s0)
80000434:	00000097          	auipc	ra,0x0
80000438:	e14080e7          	jalr	-492(ra) # 80000248 <print_metric_value>
8000043c:	00004517          	auipc	a0,0x4
80000440:	b2050513          	addi	a0,a0,-1248 # 80003f5c <__clzsi2+0x3b0>
80000444:	00002097          	auipc	ra,0x2
80000448:	2c4080e7          	jalr	708(ra) # 80002708 <uart_puts>
8000044c:	00004517          	auipc	a0,0x4
80000450:	b2850513          	addi	a0,a0,-1240 # 80003f74 <__clzsi2+0x3c8>
80000454:	00002097          	auipc	ra,0x2
80000458:	2b4080e7          	jalr	692(ra) # 80002708 <uart_puts>
8000045c:	00442503          	lw	a0,4(s0)
80000460:	00000097          	auipc	ra,0x0
80000464:	de8080e7          	jalr	-536(ra) # 80000248 <print_metric_value>
80000468:	00004517          	auipc	a0,0x4
8000046c:	8bc50513          	addi	a0,a0,-1860 # 80003d24 <__clzsi2+0x178>
80000470:	00002097          	auipc	ra,0x2
80000474:	298080e7          	jalr	664(ra) # 80002708 <uart_puts>
80000478:	00004517          	auipc	a0,0x4
8000047c:	b1850513          	addi	a0,a0,-1256 # 80003f90 <__clzsi2+0x3e4>
80000480:	00002097          	auipc	ra,0x2
80000484:	288080e7          	jalr	648(ra) # 80002708 <uart_puts>
80000488:	00842503          	lw	a0,8(s0)
8000048c:	00000097          	auipc	ra,0x0
80000490:	dbc080e7          	jalr	-580(ra) # 80000248 <print_metric_value>
80000494:	00004517          	auipc	a0,0x4
80000498:	88c50513          	addi	a0,a0,-1908 # 80003d20 <__clzsi2+0x174>
8000049c:	00002097          	auipc	ra,0x2
800004a0:	26c080e7          	jalr	620(ra) # 80002708 <uart_puts>
800004a4:	00004517          	auipc	a0,0x4
800004a8:	b0850513          	addi	a0,a0,-1272 # 80003fac <__clzsi2+0x400>
800004ac:	00002097          	auipc	ra,0x2
800004b0:	25c080e7          	jalr	604(ra) # 80002708 <uart_puts>
800004b4:	00004517          	auipc	a0,0x4
800004b8:	b1450513          	addi	a0,a0,-1260 # 80003fc8 <__clzsi2+0x41c>
800004bc:	00002097          	auipc	ra,0x2
800004c0:	24c080e7          	jalr	588(ra) # 80002708 <uart_puts>
800004c4:	00c42503          	lw	a0,12(s0)
800004c8:	00000097          	auipc	ra,0x0
800004cc:	d80080e7          	jalr	-640(ra) # 80000248 <print_metric_value>
800004d0:	00004517          	auipc	a0,0x4
800004d4:	b1450513          	addi	a0,a0,-1260 # 80003fe4 <__clzsi2+0x438>
800004d8:	00002097          	auipc	ra,0x2
800004dc:	230080e7          	jalr	560(ra) # 80002708 <uart_puts>
800004e0:	00842583          	lw	a1,8(s0)
800004e4:	00c42783          	lw	a5,12(s0)
800004e8:	4c058e63          	beqz	a1,800009c4 <metrics_print_summary+0x618>
800004ec:	00179513          	slli	a0,a5,0x1
800004f0:	00f50533          	add	a0,a0,a5
800004f4:	00351513          	slli	a0,a0,0x3
800004f8:	00f50533          	add	a0,a0,a5
800004fc:	00251513          	slli	a0,a0,0x2
80000500:	00003097          	auipc	ra,0x3
80000504:	600080e7          	jalr	1536(ra) # 80003b00 <__hidden___udivsi3>
80000508:	00000097          	auipc	ra,0x0
8000050c:	d40080e7          	jalr	-704(ra) # 80000248 <print_metric_value>
80000510:	02500513          	li	a0,37
80000514:	00002097          	auipc	ra,0x2
80000518:	1ac080e7          	jalr	428(ra) # 800026c0 <uart_putc>
8000051c:	00004517          	auipc	a0,0x4
80000520:	24850513          	addi	a0,a0,584 # 80004764 <__clzsi2+0xbb8>
80000524:	00002097          	auipc	ra,0x2
80000528:	1e4080e7          	jalr	484(ra) # 80002708 <uart_puts>
8000052c:	00004517          	auipc	a0,0x4
80000530:	ac050513          	addi	a0,a0,-1344 # 80003fec <__clzsi2+0x440>
80000534:	00002097          	auipc	ra,0x2
80000538:	1d4080e7          	jalr	468(ra) # 80002708 <uart_puts>
8000053c:	01042503          	lw	a0,16(s0)
80000540:	00000097          	auipc	ra,0x0
80000544:	d08080e7          	jalr	-760(ra) # 80000248 <print_metric_value>
80000548:	00004517          	auipc	a0,0x4
8000054c:	a9c50513          	addi	a0,a0,-1380 # 80003fe4 <__clzsi2+0x438>
80000550:	00002097          	auipc	ra,0x2
80000554:	1b8080e7          	jalr	440(ra) # 80002708 <uart_puts>
80000558:	00842583          	lw	a1,8(s0)
8000055c:	01042783          	lw	a5,16(s0)
80000560:	48058663          	beqz	a1,800009ec <metrics_print_summary+0x640>
80000564:	00179513          	slli	a0,a5,0x1
80000568:	00f50533          	add	a0,a0,a5
8000056c:	00351513          	slli	a0,a0,0x3
80000570:	00f50533          	add	a0,a0,a5
80000574:	00251513          	slli	a0,a0,0x2
80000578:	00003097          	auipc	ra,0x3
8000057c:	588080e7          	jalr	1416(ra) # 80003b00 <__hidden___udivsi3>
80000580:	00000097          	auipc	ra,0x0
80000584:	cc8080e7          	jalr	-824(ra) # 80000248 <print_metric_value>
80000588:	02500513          	li	a0,37
8000058c:	00002097          	auipc	ra,0x2
80000590:	134080e7          	jalr	308(ra) # 800026c0 <uart_putc>
80000594:	00004517          	auipc	a0,0x4
80000598:	1d050513          	addi	a0,a0,464 # 80004764 <__clzsi2+0xbb8>
8000059c:	00002097          	auipc	ra,0x2
800005a0:	16c080e7          	jalr	364(ra) # 80002708 <uart_puts>
800005a4:	00004517          	auipc	a0,0x4
800005a8:	a6450513          	addi	a0,a0,-1436 # 80004008 <__clzsi2+0x45c>
800005ac:	00002097          	auipc	ra,0x2
800005b0:	15c080e7          	jalr	348(ra) # 80002708 <uart_puts>
800005b4:	01442503          	lw	a0,20(s0)
800005b8:	00000097          	auipc	ra,0x0
800005bc:	c90080e7          	jalr	-880(ra) # 80000248 <print_metric_value>
800005c0:	00004517          	auipc	a0,0x4
800005c4:	a2450513          	addi	a0,a0,-1500 # 80003fe4 <__clzsi2+0x438>
800005c8:	00002097          	auipc	ra,0x2
800005cc:	140080e7          	jalr	320(ra) # 80002708 <uart_puts>
800005d0:	00842583          	lw	a1,8(s0)
800005d4:	01442783          	lw	a5,20(s0)
800005d8:	40058063          	beqz	a1,800009d8 <metrics_print_summary+0x62c>
800005dc:	00179513          	slli	a0,a5,0x1
800005e0:	00f50533          	add	a0,a0,a5
800005e4:	00351513          	slli	a0,a0,0x3
800005e8:	00f50533          	add	a0,a0,a5
800005ec:	00251513          	slli	a0,a0,0x2
800005f0:	00003097          	auipc	ra,0x3
800005f4:	510080e7          	jalr	1296(ra) # 80003b00 <__hidden___udivsi3>
800005f8:	00000097          	auipc	ra,0x0
800005fc:	c50080e7          	jalr	-944(ra) # 80000248 <print_metric_value>
80000600:	02500513          	li	a0,37
80000604:	00002097          	auipc	ra,0x2
80000608:	0bc080e7          	jalr	188(ra) # 800026c0 <uart_putc>
8000060c:	00004517          	auipc	a0,0x4
80000610:	1d450513          	addi	a0,a0,468 # 800047e0 <__clzsi2+0xc34>
80000614:	00002097          	auipc	ra,0x2
80000618:	0f4080e7          	jalr	244(ra) # 80002708 <uart_puts>
8000061c:	00004517          	auipc	a0,0x4
80000620:	a0850513          	addi	a0,a0,-1528 # 80004024 <__clzsi2+0x478>
80000624:	00002097          	auipc	ra,0x2
80000628:	0e4080e7          	jalr	228(ra) # 80002708 <uart_puts>
8000062c:	00004517          	auipc	a0,0x4
80000630:	a1c50513          	addi	a0,a0,-1508 # 80004048 <__clzsi2+0x49c>
80000634:	00002097          	auipc	ra,0x2
80000638:	0d4080e7          	jalr	212(ra) # 80002708 <uart_puts>
8000063c:	00c42603          	lw	a2,12(s0)
80000640:	00000513          	li	a0,0
80000644:	00000593          	li	a1,0
80000648:	00060c63          	beqz	a2,80000660 <metrics_print_summary+0x2b4>
8000064c:	01842503          	lw	a0,24(s0)
80000650:	01c42583          	lw	a1,28(s0)
80000654:	00000693          	li	a3,0
80000658:	00002097          	auipc	ra,0x2
8000065c:	498080e7          	jalr	1176(ra) # 80002af0 <__udivdi3>
80000660:	00000097          	auipc	ra,0x0
80000664:	ad0080e7          	jalr	-1328(ra) # 80000130 <print_metric_value_64>
80000668:	00004517          	auipc	a0,0x4
8000066c:	9fc50513          	addi	a0,a0,-1540 # 80004064 <__clzsi2+0x4b8>
80000670:	00002097          	auipc	ra,0x2
80000674:	098080e7          	jalr	152(ra) # 80002708 <uart_puts>
80000678:	00004517          	auipc	a0,0x4
8000067c:	9f850513          	addi	a0,a0,-1544 # 80004070 <__clzsi2+0x4c4>
80000680:	00002097          	auipc	ra,0x2
80000684:	088080e7          	jalr	136(ra) # 80002708 <uart_puts>
80000688:	01042603          	lw	a2,16(s0)
8000068c:	00000513          	li	a0,0
80000690:	00000593          	li	a1,0
80000694:	00060c63          	beqz	a2,800006ac <metrics_print_summary+0x300>
80000698:	02042503          	lw	a0,32(s0)
8000069c:	02442583          	lw	a1,36(s0)
800006a0:	00000693          	li	a3,0
800006a4:	00002097          	auipc	ra,0x2
800006a8:	44c080e7          	jalr	1100(ra) # 80002af0 <__udivdi3>
800006ac:	00000097          	auipc	ra,0x0
800006b0:	a84080e7          	jalr	-1404(ra) # 80000130 <print_metric_value_64>
800006b4:	00004517          	auipc	a0,0x4
800006b8:	9b050513          	addi	a0,a0,-1616 # 80004064 <__clzsi2+0x4b8>
800006bc:	00002097          	auipc	ra,0x2
800006c0:	04c080e7          	jalr	76(ra) # 80002708 <uart_puts>
800006c4:	00004517          	auipc	a0,0x4
800006c8:	9c850513          	addi	a0,a0,-1592 # 8000408c <__clzsi2+0x4e0>
800006cc:	00002097          	auipc	ra,0x2
800006d0:	03c080e7          	jalr	60(ra) # 80002708 <uart_puts>
800006d4:	01442603          	lw	a2,20(s0)
800006d8:	00000513          	li	a0,0
800006dc:	00000593          	li	a1,0
800006e0:	00060c63          	beqz	a2,800006f8 <metrics_print_summary+0x34c>
800006e4:	02842503          	lw	a0,40(s0)
800006e8:	02c42583          	lw	a1,44(s0)
800006ec:	00000693          	li	a3,0
800006f0:	00002097          	auipc	ra,0x2
800006f4:	400080e7          	jalr	1024(ra) # 80002af0 <__udivdi3>
800006f8:	00000097          	auipc	ra,0x0
800006fc:	a38080e7          	jalr	-1480(ra) # 80000130 <print_metric_value_64>
80000700:	00004517          	auipc	a0,0x4
80000704:	96450513          	addi	a0,a0,-1692 # 80004064 <__clzsi2+0x4b8>
80000708:	00002097          	auipc	ra,0x2
8000070c:	000080e7          	jalr	ra # 80002708 <uart_puts>
80000710:	00004517          	auipc	a0,0x4
80000714:	99850513          	addi	a0,a0,-1640 # 800040a8 <__clzsi2+0x4fc>
80000718:	00002097          	auipc	ra,0x2
8000071c:	ff0080e7          	jalr	-16(ra) # 80002708 <uart_puts>
80000720:	01c42583          	lw	a1,28(s0)
80000724:	01842503          	lw	a0,24(s0)
80000728:	00000097          	auipc	ra,0x0
8000072c:	a08080e7          	jalr	-1528(ra) # 80000130 <print_metric_value_64>
80000730:	00004517          	auipc	a0,0x4
80000734:	93450513          	addi	a0,a0,-1740 # 80004064 <__clzsi2+0x4b8>
80000738:	00002097          	auipc	ra,0x2
8000073c:	fd0080e7          	jalr	-48(ra) # 80002708 <uart_puts>
80000740:	00004517          	auipc	a0,0x4
80000744:	98450513          	addi	a0,a0,-1660 # 800040c4 <__clzsi2+0x518>
80000748:	00002097          	auipc	ra,0x2
8000074c:	fc0080e7          	jalr	-64(ra) # 80002708 <uart_puts>
80000750:	02442583          	lw	a1,36(s0)
80000754:	02042503          	lw	a0,32(s0)
80000758:	00000097          	auipc	ra,0x0
8000075c:	9d8080e7          	jalr	-1576(ra) # 80000130 <print_metric_value_64>
80000760:	00004517          	auipc	a0,0x4
80000764:	90450513          	addi	a0,a0,-1788 # 80004064 <__clzsi2+0x4b8>
80000768:	00002097          	auipc	ra,0x2
8000076c:	fa0080e7          	jalr	-96(ra) # 80002708 <uart_puts>
80000770:	00004517          	auipc	a0,0x4
80000774:	97050513          	addi	a0,a0,-1680 # 800040e0 <__clzsi2+0x534>
80000778:	00002097          	auipc	ra,0x2
8000077c:	f90080e7          	jalr	-112(ra) # 80002708 <uart_puts>
80000780:	02c42583          	lw	a1,44(s0)
80000784:	02842503          	lw	a0,40(s0)
80000788:	00000097          	auipc	ra,0x0
8000078c:	9a8080e7          	jalr	-1624(ra) # 80000130 <print_metric_value_64>
80000790:	00004517          	auipc	a0,0x4
80000794:	96c50513          	addi	a0,a0,-1684 # 800040fc <__clzsi2+0x550>
80000798:	00002097          	auipc	ra,0x2
8000079c:	f70080e7          	jalr	-144(ra) # 80002708 <uart_puts>
800007a0:	00004517          	auipc	a0,0x4
800007a4:	96850513          	addi	a0,a0,-1688 # 80004108 <__clzsi2+0x55c>
800007a8:	00002097          	auipc	ra,0x2
800007ac:	f60080e7          	jalr	-160(ra) # 80002708 <uart_puts>
800007b0:	00004517          	auipc	a0,0x4
800007b4:	97450513          	addi	a0,a0,-1676 # 80004124 <__clzsi2+0x578>
800007b8:	00002097          	auipc	ra,0x2
800007bc:	f50080e7          	jalr	-176(ra) # 80002708 <uart_puts>
800007c0:	03842503          	lw	a0,56(s0)
800007c4:	00000097          	auipc	ra,0x0
800007c8:	a84080e7          	jalr	-1404(ra) # 80000248 <print_metric_value>
800007cc:	00003517          	auipc	a0,0x3
800007d0:	55850513          	addi	a0,a0,1368 # 80003d24 <__clzsi2+0x178>
800007d4:	00002097          	auipc	ra,0x2
800007d8:	f34080e7          	jalr	-204(ra) # 80002708 <uart_puts>
800007dc:	00004517          	auipc	a0,0x4
800007e0:	96450513          	addi	a0,a0,-1692 # 80004140 <__clzsi2+0x594>
800007e4:	00002097          	auipc	ra,0x2
800007e8:	f24080e7          	jalr	-220(ra) # 80002708 <uart_puts>
800007ec:	03c42503          	lw	a0,60(s0)
800007f0:	00000097          	auipc	ra,0x0
800007f4:	a58080e7          	jalr	-1448(ra) # 80000248 <print_metric_value>
800007f8:	00003517          	auipc	a0,0x3
800007fc:	52c50513          	addi	a0,a0,1324 # 80003d24 <__clzsi2+0x178>
80000800:	00002097          	auipc	ra,0x2
80000804:	f08080e7          	jalr	-248(ra) # 80002708 <uart_puts>
80000808:	00004517          	auipc	a0,0x4
8000080c:	95450513          	addi	a0,a0,-1708 # 8000415c <__clzsi2+0x5b0>
80000810:	00002097          	auipc	ra,0x2
80000814:	ef8080e7          	jalr	-264(ra) # 80002708 <uart_puts>
80000818:	04042503          	lw	a0,64(s0)
8000081c:	00000097          	auipc	ra,0x0
80000820:	a2c080e7          	jalr	-1492(ra) # 80000248 <print_metric_value>
80000824:	00003517          	auipc	a0,0x3
80000828:	4fc50513          	addi	a0,a0,1276 # 80003d20 <__clzsi2+0x174>
8000082c:	00002097          	auipc	ra,0x2
80000830:	edc080e7          	jalr	-292(ra) # 80002708 <uart_puts>
80000834:	00004517          	auipc	a0,0x4
80000838:	94450513          	addi	a0,a0,-1724 # 80004178 <__clzsi2+0x5cc>
8000083c:	00002097          	auipc	ra,0x2
80000840:	ecc080e7          	jalr	-308(ra) # 80002708 <uart_puts>
80000844:	00004517          	auipc	a0,0x4
80000848:	95050513          	addi	a0,a0,-1712 # 80004194 <__clzsi2+0x5e8>
8000084c:	00002097          	auipc	ra,0x2
80000850:	ebc080e7          	jalr	-324(ra) # 80002708 <uart_puts>
80000854:	04442503          	lw	a0,68(s0)
80000858:	00000097          	auipc	ra,0x0
8000085c:	9f0080e7          	jalr	-1552(ra) # 80000248 <print_metric_value>
80000860:	00003517          	auipc	a0,0x3
80000864:	4c450513          	addi	a0,a0,1220 # 80003d24 <__clzsi2+0x178>
80000868:	00002097          	auipc	ra,0x2
8000086c:	ea0080e7          	jalr	-352(ra) # 80002708 <uart_puts>
80000870:	00004517          	auipc	a0,0x4
80000874:	94050513          	addi	a0,a0,-1728 # 800041b0 <__clzsi2+0x604>
80000878:	00002097          	auipc	ra,0x2
8000087c:	e90080e7          	jalr	-368(ra) # 80002708 <uart_puts>
80000880:	04842503          	lw	a0,72(s0)
80000884:	00000097          	auipc	ra,0x0
80000888:	9c4080e7          	jalr	-1596(ra) # 80000248 <print_metric_value>
8000088c:	00003517          	auipc	a0,0x3
80000890:	49850513          	addi	a0,a0,1176 # 80003d24 <__clzsi2+0x178>
80000894:	00002097          	auipc	ra,0x2
80000898:	e74080e7          	jalr	-396(ra) # 80002708 <uart_puts>
8000089c:	00004517          	auipc	a0,0x4
800008a0:	93050513          	addi	a0,a0,-1744 # 800041cc <__clzsi2+0x620>
800008a4:	00002097          	auipc	ra,0x2
800008a8:	e64080e7          	jalr	-412(ra) # 80002708 <uart_puts>
800008ac:	04c42503          	lw	a0,76(s0)
800008b0:	00000097          	auipc	ra,0x0
800008b4:	998080e7          	jalr	-1640(ra) # 80000248 <print_metric_value>
800008b8:	00004517          	auipc	a0,0x4
800008bc:	93050513          	addi	a0,a0,-1744 # 800041e8 <__clzsi2+0x63c>
800008c0:	00002097          	auipc	ra,0x2
800008c4:	e48080e7          	jalr	-440(ra) # 80002708 <uart_puts>
800008c8:	00004517          	auipc	a0,0x4
800008cc:	92850513          	addi	a0,a0,-1752 # 800041f0 <__clzsi2+0x644>
800008d0:	00002097          	auipc	ra,0x2
800008d4:	e38080e7          	jalr	-456(ra) # 80002708 <uart_puts>
800008d8:	00004517          	auipc	a0,0x4
800008dc:	92850513          	addi	a0,a0,-1752 # 80004200 <__clzsi2+0x654>
800008e0:	00002097          	auipc	ra,0x2
800008e4:	e28080e7          	jalr	-472(ra) # 80002708 <uart_puts>
800008e8:	05c42503          	lw	a0,92(s0)
800008ec:	00000097          	auipc	ra,0x0
800008f0:	95c080e7          	jalr	-1700(ra) # 80000248 <print_metric_value>
800008f4:	00003517          	auipc	a0,0x3
800008f8:	43050513          	addi	a0,a0,1072 # 80003d24 <__clzsi2+0x178>
800008fc:	00002097          	auipc	ra,0x2
80000900:	e0c080e7          	jalr	-500(ra) # 80002708 <uart_puts>
80000904:	00004517          	auipc	a0,0x4
80000908:	91850513          	addi	a0,a0,-1768 # 8000421c <__clzsi2+0x670>
8000090c:	00002097          	auipc	ra,0x2
80000910:	dfc080e7          	jalr	-516(ra) # 80002708 <uart_puts>
80000914:	06042503          	lw	a0,96(s0)
80000918:	00000097          	auipc	ra,0x0
8000091c:	930080e7          	jalr	-1744(ra) # 80000248 <print_metric_value>
80000920:	00003517          	auipc	a0,0x3
80000924:	40050513          	addi	a0,a0,1024 # 80003d20 <__clzsi2+0x174>
80000928:	00002097          	auipc	ra,0x2
8000092c:	de0080e7          	jalr	-544(ra) # 80002708 <uart_puts>
80000930:	06442783          	lw	a5,100(s0)
80000934:	06842703          	lw	a4,104(s0)
80000938:	00e7e7b3          	or	a5,a5,a4
8000093c:	06078663          	beqz	a5,800009a8 <metrics_print_summary+0x5fc>
80000940:	00004517          	auipc	a0,0x4
80000944:	8f850513          	addi	a0,a0,-1800 # 80004238 <__clzsi2+0x68c>
80000948:	00002097          	auipc	ra,0x2
8000094c:	dc0080e7          	jalr	-576(ra) # 80002708 <uart_puts>
80000950:	00004517          	auipc	a0,0x4
80000954:	90850513          	addi	a0,a0,-1784 # 80004258 <__clzsi2+0x6ac>
80000958:	00002097          	auipc	ra,0x2
8000095c:	db0080e7          	jalr	-592(ra) # 80002708 <uart_puts>
80000960:	06842503          	lw	a0,104(s0)
80000964:	00000097          	auipc	ra,0x0
80000968:	8e4080e7          	jalr	-1820(ra) # 80000248 <print_metric_value>
8000096c:	00003517          	auipc	a0,0x3
80000970:	3b850513          	addi	a0,a0,952 # 80003d24 <__clzsi2+0x178>
80000974:	00002097          	auipc	ra,0x2
80000978:	d94080e7          	jalr	-620(ra) # 80002708 <uart_puts>
8000097c:	00004517          	auipc	a0,0x4
80000980:	8f850513          	addi	a0,a0,-1800 # 80004274 <__clzsi2+0x6c8>
80000984:	00002097          	auipc	ra,0x2
80000988:	d84080e7          	jalr	-636(ra) # 80002708 <uart_puts>
8000098c:	06442503          	lw	a0,100(s0)
80000990:	00000097          	auipc	ra,0x0
80000994:	8b8080e7          	jalr	-1864(ra) # 80000248 <print_metric_value>
80000998:	00003517          	auipc	a0,0x3
8000099c:	38850513          	addi	a0,a0,904 # 80003d20 <__clzsi2+0x174>
800009a0:	00002097          	auipc	ra,0x2
800009a4:	d68080e7          	jalr	-664(ra) # 80002708 <uart_puts>
800009a8:	00812403          	lw	s0,8(sp)
800009ac:	00c12083          	lw	ra,12(sp)
800009b0:	00004517          	auipc	a0,0x4
800009b4:	8e050513          	addi	a0,a0,-1824 # 80004290 <__clzsi2+0x6e4>
800009b8:	01010113          	addi	sp,sp,16
800009bc:	00002317          	auipc	t1,0x2
800009c0:	d4c30067          	jr	-692(t1) # 80002708 <uart_puts>
800009c4:	00003517          	auipc	a0,0x3
800009c8:	62450513          	addi	a0,a0,1572 # 80003fe8 <__clzsi2+0x43c>
800009cc:	00002097          	auipc	ra,0x2
800009d0:	d3c080e7          	jalr	-708(ra) # 80002708 <uart_puts>
800009d4:	b49ff06f          	j	8000051c <metrics_print_summary+0x170>
800009d8:	00003517          	auipc	a0,0x3
800009dc:	61050513          	addi	a0,a0,1552 # 80003fe8 <__clzsi2+0x43c>
800009e0:	00002097          	auipc	ra,0x2
800009e4:	d28080e7          	jalr	-728(ra) # 80002708 <uart_puts>
800009e8:	c25ff06f          	j	8000060c <metrics_print_summary+0x260>
800009ec:	00003517          	auipc	a0,0x3
800009f0:	5fc50513          	addi	a0,a0,1532 # 80003fe8 <__clzsi2+0x43c>
800009f4:	00002097          	auipc	ra,0x2
800009f8:	d14080e7          	jalr	-748(ra) # 80002708 <uart_puts>
800009fc:	b99ff06f          	j	80000594 <metrics_print_summary+0x1e8>

80000a00 <metrics_print_detailed>:
80000a00:	ff010113          	addi	sp,sp,-16
80000a04:	00003517          	auipc	a0,0x3
80000a08:	32050513          	addi	a0,a0,800 # 80003d24 <__clzsi2+0x178>
80000a0c:	00112623          	sw	ra,12(sp)
80000a10:	00812423          	sw	s0,8(sp)
80000a14:	00002097          	auipc	ra,0x2
80000a18:	cf4080e7          	jalr	-780(ra) # 80002708 <uart_puts>
80000a1c:	00003517          	auipc	a0,0x3
80000a20:	36850513          	addi	a0,a0,872 # 80003d84 <__clzsi2+0x1d8>
80000a24:	00002097          	auipc	ra,0x2
80000a28:	ce4080e7          	jalr	-796(ra) # 80002708 <uart_puts>
80000a2c:	00004517          	auipc	a0,0x4
80000a30:	91050513          	addi	a0,a0,-1776 # 8000433c <__clzsi2+0x790>
80000a34:	00002097          	auipc	ra,0x2
80000a38:	cd4080e7          	jalr	-812(ra) # 80002708 <uart_puts>
80000a3c:	00003517          	auipc	a0,0x3
80000a40:	43850513          	addi	a0,a0,1080 # 80003e74 <__clzsi2+0x2c8>
80000a44:	00002097          	auipc	ra,0x2
80000a48:	cc4080e7          	jalr	-828(ra) # 80002708 <uart_puts>
80000a4c:	00003517          	auipc	a0,0x3
80000a50:	2d850513          	addi	a0,a0,728 # 80003d24 <__clzsi2+0x178>
80000a54:	00002097          	auipc	ra,0x2
80000a58:	cb4080e7          	jalr	-844(ra) # 80002708 <uart_puts>
80000a5c:	00004517          	auipc	a0,0x4
80000a60:	92050513          	addi	a0,a0,-1760 # 8000437c <__clzsi2+0x7d0>
80000a64:	00002097          	auipc	ra,0x2
80000a68:	ca4080e7          	jalr	-860(ra) # 80002708 <uart_puts>
80000a6c:	00004517          	auipc	a0,0x4
80000a70:	93050513          	addi	a0,a0,-1744 # 8000439c <__clzsi2+0x7f0>
80000a74:	00002097          	auipc	ra,0x2
80000a78:	c94080e7          	jalr	-876(ra) # 80002708 <uart_puts>
80000a7c:	00005417          	auipc	s0,0x5
80000a80:	60440413          	addi	s0,s0,1540 # 80006080 <system_metrics>
80000a84:	00042583          	lw	a1,0(s0)
80000a88:	30058063          	beqz	a1,80000d88 <metrics_print_detailed+0x388>
80000a8c:	00842503          	lw	a0,8(s0)
80000a90:	00003097          	auipc	ra,0x3
80000a94:	070080e7          	jalr	112(ra) # 80003b00 <__hidden___udivsi3>
80000a98:	fffff097          	auipc	ra,0xfffff
80000a9c:	7b0080e7          	jalr	1968(ra) # 80000248 <print_metric_value>
80000aa0:	00003517          	auipc	a0,0x3
80000aa4:	28450513          	addi	a0,a0,644 # 80003d24 <__clzsi2+0x178>
80000aa8:	00002097          	auipc	ra,0x2
80000aac:	c60080e7          	jalr	-928(ra) # 80002708 <uart_puts>
80000ab0:	00004517          	auipc	a0,0x4
80000ab4:	90850513          	addi	a0,a0,-1784 # 800043b8 <__clzsi2+0x80c>
80000ab8:	00002097          	auipc	ra,0x2
80000abc:	c50080e7          	jalr	-944(ra) # 80002708 <uart_puts>
80000ac0:	00842583          	lw	a1,8(s0)
80000ac4:	2e058c63          	beqz	a1,80000dbc <metrics_print_detailed+0x3bc>
80000ac8:	00442783          	lw	a5,4(s0)
80000acc:	00179513          	slli	a0,a5,0x1
80000ad0:	00f50533          	add	a0,a0,a5
80000ad4:	00351513          	slli	a0,a0,0x3
80000ad8:	00f50533          	add	a0,a0,a5
80000adc:	00251513          	slli	a0,a0,0x2
80000ae0:	00003097          	auipc	ra,0x3
80000ae4:	020080e7          	jalr	32(ra) # 80003b00 <__hidden___udivsi3>
80000ae8:	fffff097          	auipc	ra,0xfffff
80000aec:	760080e7          	jalr	1888(ra) # 80000248 <print_metric_value>
80000af0:	02500513          	li	a0,37
80000af4:	00002097          	auipc	ra,0x2
80000af8:	bcc080e7          	jalr	-1076(ra) # 800026c0 <uart_putc>
80000afc:	00003517          	auipc	a0,0x3
80000b00:	22450513          	addi	a0,a0,548 # 80003d20 <__clzsi2+0x174>
80000b04:	00002097          	auipc	ra,0x2
80000b08:	c04080e7          	jalr	-1020(ra) # 80002708 <uart_puts>
80000b0c:	00004517          	auipc	a0,0x4
80000b10:	8c850513          	addi	a0,a0,-1848 # 800043d4 <__clzsi2+0x828>
80000b14:	00002097          	auipc	ra,0x2
80000b18:	bf4080e7          	jalr	-1036(ra) # 80002708 <uart_puts>
80000b1c:	00004517          	auipc	a0,0x4
80000b20:	8d450513          	addi	a0,a0,-1836 # 800043f0 <__clzsi2+0x844>
80000b24:	00002097          	auipc	ra,0x2
80000b28:	be4080e7          	jalr	-1052(ra) # 80002708 <uart_puts>
80000b2c:	03842583          	lw	a1,56(s0)
80000b30:	2e058863          	beqz	a1,80000e20 <metrics_print_detailed+0x420>
80000b34:	04042783          	lw	a5,64(s0)
80000b38:	00179513          	slli	a0,a5,0x1
80000b3c:	00f50533          	add	a0,a0,a5
80000b40:	00351513          	slli	a0,a0,0x3
80000b44:	00f50533          	add	a0,a0,a5
80000b48:	00251513          	slli	a0,a0,0x2
80000b4c:	00003097          	auipc	ra,0x3
80000b50:	fb4080e7          	jalr	-76(ra) # 80003b00 <__hidden___udivsi3>
80000b54:	fffff097          	auipc	ra,0xfffff
80000b58:	6f4080e7          	jalr	1780(ra) # 80000248 <print_metric_value>
80000b5c:	02500513          	li	a0,37
80000b60:	00002097          	auipc	ra,0x2
80000b64:	b60080e7          	jalr	-1184(ra) # 800026c0 <uart_putc>
80000b68:	00003517          	auipc	a0,0x3
80000b6c:	1bc50513          	addi	a0,a0,444 # 80003d24 <__clzsi2+0x178>
80000b70:	00002097          	auipc	ra,0x2
80000b74:	b98080e7          	jalr	-1128(ra) # 80002708 <uart_puts>
80000b78:	00004517          	auipc	a0,0x4
80000b7c:	89450513          	addi	a0,a0,-1900 # 8000440c <__clzsi2+0x860>
80000b80:	00002097          	auipc	ra,0x2
80000b84:	b88080e7          	jalr	-1144(ra) # 80002708 <uart_puts>
80000b88:	03842583          	lw	a1,56(s0)
80000b8c:	28058063          	beqz	a1,80000e0c <metrics_print_detailed+0x40c>
80000b90:	03c42783          	lw	a5,60(s0)
80000b94:	00179513          	slli	a0,a5,0x1
80000b98:	00f50533          	add	a0,a0,a5
80000b9c:	00351513          	slli	a0,a0,0x3
80000ba0:	00f50533          	add	a0,a0,a5
80000ba4:	00251513          	slli	a0,a0,0x2
80000ba8:	00003097          	auipc	ra,0x3
80000bac:	f58080e7          	jalr	-168(ra) # 80003b00 <__hidden___udivsi3>
80000bb0:	fffff097          	auipc	ra,0xfffff
80000bb4:	698080e7          	jalr	1688(ra) # 80000248 <print_metric_value>
80000bb8:	02500513          	li	a0,37
80000bbc:	00002097          	auipc	ra,0x2
80000bc0:	b04080e7          	jalr	-1276(ra) # 800026c0 <uart_putc>
80000bc4:	00003517          	auipc	a0,0x3
80000bc8:	15c50513          	addi	a0,a0,348 # 80003d20 <__clzsi2+0x174>
80000bcc:	00002097          	auipc	ra,0x2
80000bd0:	b3c080e7          	jalr	-1220(ra) # 80002708 <uart_puts>
80000bd4:	00004517          	auipc	a0,0x4
80000bd8:	85450513          	addi	a0,a0,-1964 # 80004428 <__clzsi2+0x87c>
80000bdc:	00002097          	auipc	ra,0x2
80000be0:	b2c080e7          	jalr	-1236(ra) # 80002708 <uart_puts>
80000be4:	00004517          	auipc	a0,0x4
80000be8:	86450513          	addi	a0,a0,-1948 # 80004448 <__clzsi2+0x89c>
80000bec:	00002097          	auipc	ra,0x2
80000bf0:	b1c080e7          	jalr	-1252(ra) # 80002708 <uart_puts>
80000bf4:	04042583          	lw	a1,64(s0)
80000bf8:	20058063          	beqz	a1,80000df8 <metrics_print_detailed+0x3f8>
80000bfc:	04442783          	lw	a5,68(s0)
80000c00:	00179513          	slli	a0,a5,0x1
80000c04:	00f50533          	add	a0,a0,a5
80000c08:	00351513          	slli	a0,a0,0x3
80000c0c:	00f50533          	add	a0,a0,a5
80000c10:	00251513          	slli	a0,a0,0x2
80000c14:	00003097          	auipc	ra,0x3
80000c18:	eec080e7          	jalr	-276(ra) # 80003b00 <__hidden___udivsi3>
80000c1c:	fffff097          	auipc	ra,0xfffff
80000c20:	62c080e7          	jalr	1580(ra) # 80000248 <print_metric_value>
80000c24:	02500513          	li	a0,37
80000c28:	00002097          	auipc	ra,0x2
80000c2c:	a98080e7          	jalr	-1384(ra) # 800026c0 <uart_putc>
80000c30:	00003517          	auipc	a0,0x3
80000c34:	0f450513          	addi	a0,a0,244 # 80003d24 <__clzsi2+0x178>
80000c38:	00002097          	auipc	ra,0x2
80000c3c:	ad0080e7          	jalr	-1328(ra) # 80002708 <uart_puts>
80000c40:	00004517          	auipc	a0,0x4
80000c44:	82450513          	addi	a0,a0,-2012 # 80004464 <__clzsi2+0x8b8>
80000c48:	00002097          	auipc	ra,0x2
80000c4c:	ac0080e7          	jalr	-1344(ra) # 80002708 <uart_puts>
80000c50:	04442583          	lw	a1,68(s0)
80000c54:	18058863          	beqz	a1,80000de4 <metrics_print_detailed+0x3e4>
80000c58:	04c42503          	lw	a0,76(s0)
80000c5c:	00003097          	auipc	ra,0x3
80000c60:	ea4080e7          	jalr	-348(ra) # 80003b00 <__hidden___udivsi3>
80000c64:	fffff097          	auipc	ra,0xfffff
80000c68:	5e4080e7          	jalr	1508(ra) # 80000248 <print_metric_value>
80000c6c:	00004517          	auipc	a0,0x4
80000c70:	81450513          	addi	a0,a0,-2028 # 80004480 <__clzsi2+0x8d4>
80000c74:	00002097          	auipc	ra,0x2
80000c78:	a94080e7          	jalr	-1388(ra) # 80002708 <uart_puts>
80000c7c:	00003517          	auipc	a0,0x3
80000c80:	0a850513          	addi	a0,a0,168 # 80003d24 <__clzsi2+0x178>
80000c84:	00002097          	auipc	ra,0x2
80000c88:	a84080e7          	jalr	-1404(ra) # 80002708 <uart_puts>
80000c8c:	00004517          	auipc	a0,0x4
80000c90:	81450513          	addi	a0,a0,-2028 # 800044a0 <__clzsi2+0x8f4>
80000c94:	00002097          	auipc	ra,0x2
80000c98:	a74080e7          	jalr	-1420(ra) # 80002708 <uart_puts>
80000c9c:	00004517          	auipc	a0,0x4
80000ca0:	82050513          	addi	a0,a0,-2016 # 800044bc <__clzsi2+0x910>
80000ca4:	00002097          	auipc	ra,0x2
80000ca8:	a64080e7          	jalr	-1436(ra) # 80002708 <uart_puts>
80000cac:	06042583          	lw	a1,96(s0)
80000cb0:	12058063          	beqz	a1,80000dd0 <metrics_print_detailed+0x3d0>
80000cb4:	05c42503          	lw	a0,92(s0)
80000cb8:	00003097          	auipc	ra,0x3
80000cbc:	e48080e7          	jalr	-440(ra) # 80003b00 <__hidden___udivsi3>
80000cc0:	fffff097          	auipc	ra,0xfffff
80000cc4:	588080e7          	jalr	1416(ra) # 80000248 <print_metric_value>
80000cc8:	00004517          	auipc	a0,0x4
80000ccc:	81050513          	addi	a0,a0,-2032 # 800044d8 <__clzsi2+0x92c>
80000cd0:	00002097          	auipc	ra,0x2
80000cd4:	a38080e7          	jalr	-1480(ra) # 80002708 <uart_puts>
80000cd8:	00003517          	auipc	a0,0x3
80000cdc:	04c50513          	addi	a0,a0,76 # 80003d24 <__clzsi2+0x178>
80000ce0:	00002097          	auipc	ra,0x2
80000ce4:	a28080e7          	jalr	-1496(ra) # 80002708 <uart_puts>
80000ce8:	00003517          	auipc	a0,0x3
80000cec:	7f850513          	addi	a0,a0,2040 # 800044e0 <__clzsi2+0x934>
80000cf0:	00002097          	auipc	ra,0x2
80000cf4:	a18080e7          	jalr	-1512(ra) # 80002708 <uart_puts>
80000cf8:	00004517          	auipc	a0,0x4
80000cfc:	80450513          	addi	a0,a0,-2044 # 800044fc <__clzsi2+0x950>
80000d00:	00002097          	auipc	ra,0x2
80000d04:	a08080e7          	jalr	-1528(ra) # 80002708 <uart_puts>
80000d08:	00003537          	lui	a0,0x3
80000d0c:	fffff097          	auipc	ra,0xfffff
80000d10:	53c080e7          	jalr	1340(ra) # 80000248 <print_metric_value>
80000d14:	00003517          	auipc	a0,0x3
80000d18:	7c450513          	addi	a0,a0,1988 # 800044d8 <__clzsi2+0x92c>
80000d1c:	00002097          	auipc	ra,0x2
80000d20:	9ec080e7          	jalr	-1556(ra) # 80002708 <uart_puts>
80000d24:	00003517          	auipc	a0,0x3
80000d28:	7f450513          	addi	a0,a0,2036 # 80004518 <__clzsi2+0x96c>
80000d2c:	00002097          	auipc	ra,0x2
80000d30:	9dc080e7          	jalr	-1572(ra) # 80002708 <uart_puts>
80000d34:	18c00513          	li	a0,396
80000d38:	fffff097          	auipc	ra,0xfffff
80000d3c:	510080e7          	jalr	1296(ra) # 80000248 <print_metric_value>
80000d40:	00003517          	auipc	a0,0x3
80000d44:	7f450513          	addi	a0,a0,2036 # 80004534 <__clzsi2+0x988>
80000d48:	00002097          	auipc	ra,0x2
80000d4c:	9c0080e7          	jalr	-1600(ra) # 80002708 <uart_puts>
80000d50:	08400513          	li	a0,132
80000d54:	fffff097          	auipc	ra,0xfffff
80000d58:	4f4080e7          	jalr	1268(ra) # 80000248 <print_metric_value>
80000d5c:	00003517          	auipc	a0,0x3
80000d60:	7e450513          	addi	a0,a0,2020 # 80004540 <__clzsi2+0x994>
80000d64:	00002097          	auipc	ra,0x2
80000d68:	9a4080e7          	jalr	-1628(ra) # 80002708 <uart_puts>
80000d6c:	00812403          	lw	s0,8(sp)
80000d70:	00c12083          	lw	ra,12(sp)
80000d74:	00003517          	auipc	a0,0x3
80000d78:	51c50513          	addi	a0,a0,1308 # 80004290 <__clzsi2+0x6e4>
80000d7c:	01010113          	addi	sp,sp,16
80000d80:	00002317          	auipc	t1,0x2
80000d84:	98830067          	jr	-1656(t1) # 80002708 <uart_puts>
80000d88:	03000513          	li	a0,48
80000d8c:	00002097          	auipc	ra,0x2
80000d90:	934080e7          	jalr	-1740(ra) # 800026c0 <uart_putc>
80000d94:	00003517          	auipc	a0,0x3
80000d98:	f9050513          	addi	a0,a0,-112 # 80003d24 <__clzsi2+0x178>
80000d9c:	00002097          	auipc	ra,0x2
80000da0:	96c080e7          	jalr	-1684(ra) # 80002708 <uart_puts>
80000da4:	00003517          	auipc	a0,0x3
80000da8:	61450513          	addi	a0,a0,1556 # 800043b8 <__clzsi2+0x80c>
80000dac:	00002097          	auipc	ra,0x2
80000db0:	95c080e7          	jalr	-1700(ra) # 80002708 <uart_puts>
80000db4:	00842583          	lw	a1,8(s0)
80000db8:	d00598e3          	bnez	a1,80000ac8 <metrics_print_detailed+0xc8>
80000dbc:	00003517          	auipc	a0,0x3
80000dc0:	22c50513          	addi	a0,a0,556 # 80003fe8 <__clzsi2+0x43c>
80000dc4:	00002097          	auipc	ra,0x2
80000dc8:	944080e7          	jalr	-1724(ra) # 80002708 <uart_puts>
80000dcc:	d31ff06f          	j	80000afc <metrics_print_detailed+0xfc>
80000dd0:	00003517          	auipc	a0,0x3
80000dd4:	6c850513          	addi	a0,a0,1736 # 80004498 <__clzsi2+0x8ec>
80000dd8:	00002097          	auipc	ra,0x2
80000ddc:	930080e7          	jalr	-1744(ra) # 80002708 <uart_puts>
80000de0:	ef9ff06f          	j	80000cd8 <metrics_print_detailed+0x2d8>
80000de4:	00003517          	auipc	a0,0x3
80000de8:	6b450513          	addi	a0,a0,1716 # 80004498 <__clzsi2+0x8ec>
80000dec:	00002097          	auipc	ra,0x2
80000df0:	91c080e7          	jalr	-1764(ra) # 80002708 <uart_puts>
80000df4:	e89ff06f          	j	80000c7c <metrics_print_detailed+0x27c>
80000df8:	00003517          	auipc	a0,0x3
80000dfc:	1f050513          	addi	a0,a0,496 # 80003fe8 <__clzsi2+0x43c>
80000e00:	00002097          	auipc	ra,0x2
80000e04:	908080e7          	jalr	-1784(ra) # 80002708 <uart_puts>
80000e08:	e29ff06f          	j	80000c30 <metrics_print_detailed+0x230>
80000e0c:	00003517          	auipc	a0,0x3
80000e10:	1dc50513          	addi	a0,a0,476 # 80003fe8 <__clzsi2+0x43c>
80000e14:	00002097          	auipc	ra,0x2
80000e18:	8f4080e7          	jalr	-1804(ra) # 80002708 <uart_puts>
80000e1c:	da9ff06f          	j	80000bc4 <metrics_print_detailed+0x1c4>
80000e20:	00003517          	auipc	a0,0x3
80000e24:	1c850513          	addi	a0,a0,456 # 80003fe8 <__clzsi2+0x43c>
80000e28:	00002097          	auipc	ra,0x2
80000e2c:	8e0080e7          	jalr	-1824(ra) # 80002708 <uart_puts>
80000e30:	d39ff06f          	j	80000b68 <metrics_print_detailed+0x168>

80000e34 <metrics_inc_cycle>:
80000e34:	00005717          	auipc	a4,0x5
80000e38:	24c70713          	addi	a4,a4,588 # 80006080 <system_metrics>
80000e3c:	00072783          	lw	a5,0(a4)
80000e40:	00178793          	addi	a5,a5,1
80000e44:	00f72023          	sw	a5,0(a4)
80000e48:	00008067          	ret

80000e4c <metrics_inc_context_switch>:
80000e4c:	00005717          	auipc	a4,0x5
80000e50:	23470713          	addi	a4,a4,564 # 80006080 <system_metrics>
80000e54:	00472783          	lw	a5,4(a4)
80000e58:	00178793          	addi	a5,a5,1
80000e5c:	00f72223          	sw	a5,4(a4)
80000e60:	00008067          	ret

80000e64 <metrics_inc_process_execution>:
80000e64:	00005797          	auipc	a5,0x5
80000e68:	21c78793          	addi	a5,a5,540 # 80006080 <system_metrics>
80000e6c:	0087a703          	lw	a4,8(a5)
80000e70:	00170713          	addi	a4,a4,1
80000e74:	00e7a423          	sw	a4,8(a5)
80000e78:	00200713          	li	a4,2
80000e7c:	02e50a63          	beq	a0,a4,80000eb0 <metrics_inc_process_execution+0x4c>
80000e80:	00300713          	li	a4,3
80000e84:	00e50e63          	beq	a0,a4,80000ea0 <metrics_inc_process_execution+0x3c>
80000e88:	00100713          	li	a4,1
80000e8c:	02e51063          	bne	a0,a4,80000eac <metrics_inc_process_execution+0x48>
80000e90:	00c7a703          	lw	a4,12(a5)
80000e94:	00170713          	addi	a4,a4,1
80000e98:	00e7a623          	sw	a4,12(a5)
80000e9c:	00008067          	ret
80000ea0:	0147a703          	lw	a4,20(a5)
80000ea4:	00170713          	addi	a4,a4,1
80000ea8:	00e7aa23          	sw	a4,20(a5)
80000eac:	00008067          	ret
80000eb0:	0107a703          	lw	a4,16(a5)
80000eb4:	00170713          	addi	a4,a4,1
80000eb8:	00e7a823          	sw	a4,16(a5)
80000ebc:	00008067          	ret

80000ec0 <metrics_inc_temp_reading>:
80000ec0:	00005717          	auipc	a4,0x5
80000ec4:	1c070713          	addi	a4,a4,448 # 80006080 <system_metrics>
80000ec8:	03872783          	lw	a5,56(a4)
80000ecc:	00178793          	addi	a5,a5,1
80000ed0:	02f72c23          	sw	a5,56(a4)
80000ed4:	00008067          	ret

80000ed8 <metrics_inc_temp_transmission>:
80000ed8:	00005717          	auipc	a4,0x5
80000edc:	1a870713          	addi	a4,a4,424 # 80006080 <system_metrics>
80000ee0:	03c72783          	lw	a5,60(a4)
80000ee4:	00178793          	addi	a5,a5,1
80000ee8:	02f72e23          	sw	a5,60(a4)
80000eec:	00008067          	ret

80000ef0 <metrics_inc_temp_anomaly>:
80000ef0:	05a00793          	li	a5,90
80000ef4:	00a7fc63          	bgeu	a5,a0,80000f0c <metrics_inc_temp_anomaly+0x1c>
80000ef8:	00005717          	auipc	a4,0x5
80000efc:	18870713          	addi	a4,a4,392 # 80006080 <system_metrics>
80000f00:	04072783          	lw	a5,64(a4)
80000f04:	00178793          	addi	a5,a5,1
80000f08:	04f72023          	sw	a5,64(a4)
80000f0c:	00008067          	ret

80000f10 <metrics_inc_cooling_activation>:
80000f10:	00005717          	auipc	a4,0x5
80000f14:	17070713          	addi	a4,a4,368 # 80006080 <system_metrics>
80000f18:	04472783          	lw	a5,68(a4)
80000f1c:	00178793          	addi	a5,a5,1
80000f20:	04f72223          	sw	a5,68(a4)
80000f24:	00008067          	ret

80000f28 <metrics_inc_cooling_deactivation>:
80000f28:	00005717          	auipc	a4,0x5
80000f2c:	15870713          	addi	a4,a4,344 # 80006080 <system_metrics>
80000f30:	04872783          	lw	a5,72(a4)
80000f34:	00178793          	addi	a5,a5,1
80000f38:	04f72423          	sw	a5,72(a4)
80000f3c:	00008067          	ret

80000f40 <metrics_inc_cooling_time>:
80000f40:	00005717          	auipc	a4,0x5
80000f44:	14070713          	addi	a4,a4,320 # 80006080 <system_metrics>
80000f48:	04c72783          	lw	a5,76(a4)
80000f4c:	00178793          	addi	a5,a5,1
80000f50:	04f72623          	sw	a5,76(a4)
80000f54:	00008067          	ret

80000f58 <metrics_inc_uart_bytes>:
80000f58:	00005717          	auipc	a4,0x5
80000f5c:	12870713          	addi	a4,a4,296 # 80006080 <system_metrics>
80000f60:	05c72783          	lw	a5,92(a4)
80000f64:	00a787b3          	add	a5,a5,a0
80000f68:	04f72e23          	sw	a5,92(a4)
80000f6c:	00008067          	ret

80000f70 <metrics_inc_uart_message>:
80000f70:	00005717          	auipc	a4,0x5
80000f74:	11070713          	addi	a4,a4,272 # 80006080 <system_metrics>
80000f78:	06072783          	lw	a5,96(a4)
80000f7c:	00178793          	addi	a5,a5,1
80000f80:	06f72023          	sw	a5,96(a4)
80000f84:	00008067          	ret

80000f88 <metrics_inc_data_loss>:
80000f88:	00005717          	auipc	a4,0x5
80000f8c:	0f870713          	addi	a4,a4,248 # 80006080 <system_metrics>
80000f90:	06472783          	lw	a5,100(a4)
80000f94:	00178793          	addi	a5,a5,1
80000f98:	06f72223          	sw	a5,100(a4)
80000f9c:	00008067          	ret

80000fa0 <metrics_inc_abrupt_switch>:
80000fa0:	00005717          	auipc	a4,0x5
80000fa4:	0e070713          	addi	a4,a4,224 # 80006080 <system_metrics>
80000fa8:	06872783          	lw	a5,104(a4)
80000fac:	00178793          	addi	a5,a5,1
80000fb0:	06f72423          	sw	a5,104(a4)
80000fb4:	00008067          	ret

80000fb8 <metrics_get>:
80000fb8:	00005517          	auipc	a0,0x5
80000fbc:	0c850513          	addi	a0,a0,200 # 80006080 <system_metrics>
80000fc0:	00008067          	ret

80000fc4 <metrics_get_avg_context_switch_rate>:
80000fc4:	ff010113          	addi	sp,sp,-16
80000fc8:	00005797          	auipc	a5,0x5
80000fcc:	0b878793          	addi	a5,a5,184 # 80006080 <system_metrics>
80000fd0:	00812423          	sw	s0,8(sp)
80000fd4:	0087a403          	lw	s0,8(a5)
80000fd8:	00112623          	sw	ra,12(sp)
80000fdc:	00000513          	li	a0,0
80000fe0:	02040a63          	beqz	s0,80001014 <metrics_get_avg_context_switch_rate+0x50>
80000fe4:	0047a503          	lw	a0,4(a5)
80000fe8:	00003097          	auipc	ra,0x3
80000fec:	a0c080e7          	jalr	-1524(ra) # 800039f4 <__floatunsisf>
80000ff0:	00050793          	mv	a5,a0
80000ff4:	00040513          	mv	a0,s0
80000ff8:	00078413          	mv	s0,a5
80000ffc:	00003097          	auipc	ra,0x3
80001000:	9f8080e7          	jalr	-1544(ra) # 800039f4 <__floatunsisf>
80001004:	00050593          	mv	a1,a0
80001008:	00040513          	mv	a0,s0
8000100c:	00002097          	auipc	ra,0x2
80001010:	640080e7          	jalr	1600(ra) # 8000364c <__divsf3>
80001014:	00c12083          	lw	ra,12(sp)
80001018:	00812403          	lw	s0,8(sp)
8000101c:	01010113          	addi	sp,sp,16
80001020:	00008067          	ret

80001024 <metrics_get_cooling_efficiency>:
80001024:	ff010113          	addi	sp,sp,-16
80001028:	00005797          	auipc	a5,0x5
8000102c:	05878793          	addi	a5,a5,88 # 80006080 <system_metrics>
80001030:	00812423          	sw	s0,8(sp)
80001034:	0407a403          	lw	s0,64(a5)
80001038:	00112623          	sw	ra,12(sp)
8000103c:	00000513          	li	a0,0
80001040:	02040a63          	beqz	s0,80001074 <metrics_get_cooling_efficiency+0x50>
80001044:	0447a503          	lw	a0,68(a5)
80001048:	00003097          	auipc	ra,0x3
8000104c:	9ac080e7          	jalr	-1620(ra) # 800039f4 <__floatunsisf>
80001050:	00050793          	mv	a5,a0
80001054:	00040513          	mv	a0,s0
80001058:	00078413          	mv	s0,a5
8000105c:	00003097          	auipc	ra,0x3
80001060:	998080e7          	jalr	-1640(ra) # 800039f4 <__floatunsisf>
80001064:	00050593          	mv	a1,a0
80001068:	00040513          	mv	a0,s0
8000106c:	00002097          	auipc	ra,0x2
80001070:	5e0080e7          	jalr	1504(ra) # 8000364c <__divsf3>
80001074:	00c12083          	lw	ra,12(sp)
80001078:	00812403          	lw	s0,8(sp)
8000107c:	01010113          	addi	sp,sp,16
80001080:	00008067          	ret

80001084 <metrics_start_process_timing>:
80001084:	c00026f3          	rdcycle	a3
80001088:	c8002773          	rdcycleh	a4
8000108c:	00005797          	auipc	a5,0x5
80001090:	ff478793          	addi	a5,a5,-12 # 80006080 <system_metrics>
80001094:	02d7a823          	sw	a3,48(a5)
80001098:	02e7aa23          	sw	a4,52(a5)
8000109c:	00008067          	ret

800010a0 <metrics_stop_process_timing>:
800010a0:	c0002673          	rdcycle	a2
800010a4:	c80026f3          	rdcycleh	a3
800010a8:	00005717          	auipc	a4,0x5
800010ac:	fd870713          	addi	a4,a4,-40 # 80006080 <system_metrics>
800010b0:	03072783          	lw	a5,48(a4)
800010b4:	03472803          	lw	a6,52(a4)
800010b8:	00200593          	li	a1,2
800010bc:	40f607b3          	sub	a5,a2,a5
800010c0:	00f63633          	sltu	a2,a2,a5
800010c4:	410686b3          	sub	a3,a3,a6
800010c8:	40c686b3          	sub	a3,a3,a2
800010cc:	04b50e63          	beq	a0,a1,80001128 <metrics_stop_process_timing+0x88>
800010d0:	00300613          	li	a2,3
800010d4:	02c50863          	beq	a0,a2,80001104 <metrics_stop_process_timing+0x64>
800010d8:	00100613          	li	a2,1
800010dc:	04c51463          	bne	a0,a2,80001124 <metrics_stop_process_timing+0x84>
800010e0:	01872603          	lw	a2,24(a4)
800010e4:	01c72583          	lw	a1,28(a4)
800010e8:	00f607b3          	add	a5,a2,a5
800010ec:	00c7b633          	sltu	a2,a5,a2
800010f0:	00d586b3          	add	a3,a1,a3
800010f4:	00d60633          	add	a2,a2,a3
800010f8:	00f72c23          	sw	a5,24(a4)
800010fc:	00c72e23          	sw	a2,28(a4)
80001100:	00008067          	ret
80001104:	02872603          	lw	a2,40(a4)
80001108:	02c72583          	lw	a1,44(a4)
8000110c:	00f607b3          	add	a5,a2,a5
80001110:	00c7b633          	sltu	a2,a5,a2
80001114:	00d586b3          	add	a3,a1,a3
80001118:	00d60633          	add	a2,a2,a3
8000111c:	02f72423          	sw	a5,40(a4)
80001120:	02c72623          	sw	a2,44(a4)
80001124:	00008067          	ret
80001128:	02072603          	lw	a2,32(a4)
8000112c:	02472583          	lw	a1,36(a4)
80001130:	00f607b3          	add	a5,a2,a5
80001134:	00c7b633          	sltu	a2,a5,a2
80001138:	00d586b3          	add	a3,a1,a3
8000113c:	00d60633          	add	a2,a2,a3
80001140:	02f72023          	sw	a5,32(a4)
80001144:	02c72223          	sw	a2,36(a4)
80001148:	00008067          	ret

8000114c <metrics_get_process_avg_cycles>:
8000114c:	ff010113          	addi	sp,sp,-16
80001150:	00112623          	sw	ra,12(sp)
80001154:	00200713          	li	a4,2
80001158:	08e50463          	beq	a0,a4,800011e0 <metrics_get_process_avg_cycles+0x94>
8000115c:	00300713          	li	a4,3
80001160:	00050793          	mv	a5,a0
80001164:	04e50263          	beq	a0,a4,800011a8 <metrics_get_process_avg_cycles+0x5c>
80001168:	00100713          	li	a4,1
8000116c:	00000513          	li	a0,0
80001170:	00000593          	li	a1,0
80001174:	02e79463          	bne	a5,a4,8000119c <metrics_get_process_avg_cycles+0x50>
80001178:	00005797          	auipc	a5,0x5
8000117c:	f0878793          	addi	a5,a5,-248 # 80006080 <system_metrics>
80001180:	00c7a603          	lw	a2,12(a5)
80001184:	00060c63          	beqz	a2,8000119c <metrics_get_process_avg_cycles+0x50>
80001188:	0187a503          	lw	a0,24(a5)
8000118c:	01c7a583          	lw	a1,28(a5)
80001190:	00000693          	li	a3,0
80001194:	00002097          	auipc	ra,0x2
80001198:	95c080e7          	jalr	-1700(ra) # 80002af0 <__udivdi3>
8000119c:	00c12083          	lw	ra,12(sp)
800011a0:	01010113          	addi	sp,sp,16
800011a4:	00008067          	ret
800011a8:	00005797          	auipc	a5,0x5
800011ac:	ed878793          	addi	a5,a5,-296 # 80006080 <system_metrics>
800011b0:	0147a603          	lw	a2,20(a5)
800011b4:	00000513          	li	a0,0
800011b8:	00000593          	li	a1,0
800011bc:	fe0600e3          	beqz	a2,8000119c <metrics_get_process_avg_cycles+0x50>
800011c0:	0287a503          	lw	a0,40(a5)
800011c4:	02c7a583          	lw	a1,44(a5)
800011c8:	00000693          	li	a3,0
800011cc:	00002097          	auipc	ra,0x2
800011d0:	924080e7          	jalr	-1756(ra) # 80002af0 <__udivdi3>
800011d4:	00c12083          	lw	ra,12(sp)
800011d8:	01010113          	addi	sp,sp,16
800011dc:	00008067          	ret
800011e0:	00005797          	auipc	a5,0x5
800011e4:	ea078793          	addi	a5,a5,-352 # 80006080 <system_metrics>
800011e8:	0107a603          	lw	a2,16(a5)
800011ec:	00000513          	li	a0,0
800011f0:	00000593          	li	a1,0
800011f4:	fa0604e3          	beqz	a2,8000119c <metrics_get_process_avg_cycles+0x50>
800011f8:	0207a503          	lw	a0,32(a5)
800011fc:	0247a583          	lw	a1,36(a5)
80001200:	00000693          	li	a3,0
80001204:	00002097          	auipc	ra,0x2
80001208:	8ec080e7          	jalr	-1812(ra) # 80002af0 <__udivdi3>
8000120c:	00c12083          	lw	ra,12(sp)
80001210:	01010113          	addi	sp,sp,16
80001214:	00008067          	ret

80001218 <process_init>:
80001218:	ff010113          	addi	sp,sp,-16
8000121c:	00112623          	sw	ra,12(sp)
80001220:	00005797          	auipc	a5,0x5
80001224:	ed078793          	addi	a5,a5,-304 # 800060f0 <process_table>
80001228:	00100593          	li	a1,1
8000122c:	00200613          	li	a2,2
80001230:	00300693          	li	a3,3
80001234:	00001737          	lui	a4,0x1
80001238:	08b7a023          	sw	a1,128(a5)
8000123c:	08b7a423          	sw	a1,136(a5)
80001240:	10c7aa23          	sw	a2,276(a5)
80001244:	800105b7          	lui	a1,0x80010
80001248:	10c7ae23          	sw	a2,284(a5)
8000124c:	1ad7a423          	sw	a3,424(a5)
80001250:	80020637          	lui	a2,0x80020
80001254:	1ad7a823          	sw	a3,432(a5)
80001258:	800306b7          	lui	a3,0x80030
8000125c:	0807a223          	sw	zero,132(a5)
80001260:	0007a023          	sw	zero,0(a5)
80001264:	08b7a623          	sw	a1,140(a5)
80001268:	08e7a823          	sw	a4,144(a5)
8000126c:	1007ac23          	sw	zero,280(a5)
80001270:	0807aa23          	sw	zero,148(a5)
80001274:	12c7a023          	sw	a2,288(a5)
80001278:	12e7a223          	sw	a4,292(a5)
8000127c:	1a07a623          	sw	zero,428(a5)
80001280:	1207a423          	sw	zero,296(a5)
80001284:	1ad7aa23          	sw	a3,436(a5)
80001288:	1ae7ac23          	sw	a4,440(a5)
8000128c:	00001097          	auipc	ra,0x1
80001290:	dec080e7          	jalr	-532(ra) # 80002078 <process_init_p1>
80001294:	00001097          	auipc	ra,0x1
80001298:	f94080e7          	jalr	-108(ra) # 80002228 <process_init_p2>
8000129c:	00001097          	auipc	ra,0x1
800012a0:	1dc080e7          	jalr	476(ra) # 80002478 <process_init_p3>
800012a4:	00c12083          	lw	ra,12(sp)
800012a8:	00003517          	auipc	a0,0x3
800012ac:	2a850513          	addi	a0,a0,680 # 80004550 <__clzsi2+0x9a4>
800012b0:	01010113          	addi	sp,sp,16
800012b4:	00001317          	auipc	t1,0x1
800012b8:	45430067          	jr	1108(t1) # 80002708 <uart_puts>

800012bc <process_get_pcb>:
800012bc:	fff50513          	addi	a0,a0,-1
800012c0:	00200793          	li	a5,2
800012c4:	02a7e463          	bltu	a5,a0,800012ec <process_get_pcb+0x30>
800012c8:	00351793          	slli	a5,a0,0x3
800012cc:	00a787b3          	add	a5,a5,a0
800012d0:	00279793          	slli	a5,a5,0x2
800012d4:	00a787b3          	add	a5,a5,a0
800012d8:	00279793          	slli	a5,a5,0x2
800012dc:	00005517          	auipc	a0,0x5
800012e0:	e1450513          	addi	a0,a0,-492 # 800060f0 <process_table>
800012e4:	00f50533          	add	a0,a0,a5
800012e8:	00008067          	ret
800012ec:	00000513          	li	a0,0
800012f0:	00008067          	ret

800012f4 <process_get_all_pcbs>:
800012f4:	00005517          	auipc	a0,0x5
800012f8:	dfc50513          	addi	a0,a0,-516 # 800060f0 <process_table>
800012fc:	00008067          	ret

80001300 <scheduler_init>:
80001300:	ff010113          	addi	sp,sp,-16
80001304:	00812423          	sw	s0,8(sp)
80001308:	00050413          	mv	s0,a0
8000130c:	00003517          	auipc	a0,0x3
80001310:	26c50513          	addi	a0,a0,620 # 80004578 <__clzsi2+0x9cc>
80001314:	00005797          	auipc	a5,0x5
80001318:	fc87aa23          	sw	s0,-44(a5) # 800062e8 <current_mode>
8000131c:	00005797          	auipc	a5,0x5
80001320:	fc07a423          	sw	zero,-56(a5) # 800062e4 <scheduler_cycles>
80001324:	00112623          	sw	ra,12(sp)
80001328:	00001097          	auipc	ra,0x1
8000132c:	3e0080e7          	jalr	992(ra) # 80002708 <uart_puts>
80001330:	00200793          	li	a5,2
80001334:	04f40863          	beq	s0,a5,80001384 <scheduler_init+0x84>
80001338:	0287e663          	bltu	a5,s0,80001364 <scheduler_init+0x64>
8000133c:	00003517          	auipc	a0,0x3
80001340:	28850513          	addi	a0,a0,648 # 800045c4 <__clzsi2+0xa18>
80001344:	00041663          	bnez	s0,80001350 <scheduler_init+0x50>
80001348:	00003517          	auipc	a0,0x3
8000134c:	25850513          	addi	a0,a0,600 # 800045a0 <__clzsi2+0x9f4>
80001350:	00812403          	lw	s0,8(sp)
80001354:	00c12083          	lw	ra,12(sp)
80001358:	01010113          	addi	sp,sp,16
8000135c:	00001317          	auipc	t1,0x1
80001360:	3ac30067          	jr	940(t1) # 80002708 <uart_puts>
80001364:	00300793          	li	a5,3
80001368:	00003517          	auipc	a0,0x3
8000136c:	2a050513          	addi	a0,a0,672 # 80004608 <__clzsi2+0xa5c>
80001370:	fef400e3          	beq	s0,a5,80001350 <scheduler_init+0x50>
80001374:	00c12083          	lw	ra,12(sp)
80001378:	00812403          	lw	s0,8(sp)
8000137c:	01010113          	addi	sp,sp,16
80001380:	00008067          	ret
80001384:	00812403          	lw	s0,8(sp)
80001388:	00c12083          	lw	ra,12(sp)
8000138c:	00003517          	auipc	a0,0x3
80001390:	26050513          	addi	a0,a0,608 # 800045ec <__clzsi2+0xa40>
80001394:	01010113          	addi	sp,sp,16
80001398:	00001317          	auipc	t1,0x1
8000139c:	37030067          	jr	880(t1) # 80002708 <uart_puts>

800013a0 <scheduler_run>:
800013a0:	fb010113          	addi	sp,sp,-80
800013a4:	00003517          	auipc	a0,0x3
800013a8:	27c50513          	addi	a0,a0,636 # 80004620 <__clzsi2+0xa74>
800013ac:	04112623          	sw	ra,76(sp)
800013b0:	04912223          	sw	s1,68(sp)
800013b4:	05212023          	sw	s2,64(sp)
800013b8:	03312e23          	sw	s3,60(sp)
800013bc:	03412c23          	sw	s4,56(sp)
800013c0:	03512a23          	sw	s5,52(sp)
800013c4:	03612823          	sw	s6,48(sp)
800013c8:	03812423          	sw	s8,40(sp)
800013cc:	03a12023          	sw	s10,32(sp)
800013d0:	04812423          	sw	s0,72(sp)
800013d4:	03712623          	sw	s7,44(sp)
800013d8:	03912223          	sw	s9,36(sp)
800013dc:	01b12e23          	sw	s11,28(sp)
800013e0:	00001097          	auipc	ra,0x1
800013e4:	328080e7          	jalr	808(ra) # 80002708 <uart_puts>
800013e8:	00003517          	auipc	a0,0x3
800013ec:	93c50513          	addi	a0,a0,-1732 # 80003d24 <__clzsi2+0x178>
800013f0:	00001097          	auipc	ra,0x1
800013f4:	318080e7          	jalr	792(ra) # 80002708 <uart_puts>
800013f8:	00003517          	auipc	a0,0x3
800013fc:	98c50513          	addi	a0,a0,-1652 # 80003d84 <__clzsi2+0x1d8>
80001400:	00001097          	auipc	ra,0x1
80001404:	308080e7          	jalr	776(ra) # 80002708 <uart_puts>
80001408:	00003517          	auipc	a0,0x3
8000140c:	24850513          	addi	a0,a0,584 # 80004650 <__clzsi2+0xaa4>
80001410:	00001097          	auipc	ra,0x1
80001414:	2f8080e7          	jalr	760(ra) # 80002708 <uart_puts>
80001418:	03000513          	li	a0,48
8000141c:	00003b37          	lui	s6,0x3
80001420:	00001097          	auipc	ra,0x1
80001424:	2a0080e7          	jalr	672(ra) # 800026c0 <uart_putc>
80001428:	00000993          	li	s3,0
8000142c:	00005d17          	auipc	s10,0x5
80001430:	ebcd0d13          	addi	s10,s10,-324 # 800062e8 <current_mode>
80001434:	030b0b13          	addi	s6,s6,48 # 3030 <COOLING_THRESHOLD_ON+0x2fd6>
80001438:	03100c13          	li	s8,49
8000143c:	00410493          	addi	s1,sp,4
80001440:	00900913          	li	s2,9
80001444:	00005a97          	auipc	s5,0x5
80001448:	ea0a8a93          	addi	s5,s5,-352 # 800062e4 <scheduler_cycles>
8000144c:	00005a17          	auipc	s4,0x5
80001450:	e94a0a13          	addi	s4,s4,-364 # 800062e0 <saved_p1_pc>
80001454:	00003517          	auipc	a0,0x3
80001458:	20850513          	addi	a0,a0,520 # 8000465c <__clzsi2+0xab0>
8000145c:	00001097          	auipc	ra,0x1
80001460:	2ac080e7          	jalr	684(ra) # 80002708 <uart_puts>
80001464:	03100513          	li	a0,49
80001468:	01611223          	sh	s6,4(sp)
8000146c:	01810323          	sb	s8,6(sp)
80001470:	00001097          	auipc	ra,0x1
80001474:	250080e7          	jalr	592(ra) # 800026c0 <uart_putc>
80001478:	03000513          	li	a0,48
8000147c:	00001097          	auipc	ra,0x1
80001480:	244080e7          	jalr	580(ra) # 800026c0 <uart_putc>
80001484:	03000513          	li	a0,48
80001488:	00001097          	auipc	ra,0x1
8000148c:	238080e7          	jalr	568(ra) # 800026c0 <uart_putc>
80001490:	00003517          	auipc	a0,0x3
80001494:	1d450513          	addi	a0,a0,468 # 80004664 <__clzsi2+0xab8>
80001498:	00001097          	auipc	ra,0x1
8000149c:	270080e7          	jalr	624(ra) # 80002708 <uart_puts>
800014a0:	00098d93          	mv	s11,s3
800014a4:	00000b93          	li	s7,0
800014a8:	2c098c63          	beqz	s3,80001780 <scheduler_run+0x3e0>
800014ac:	00a00593          	li	a1,10
800014b0:	000d8513          	mv	a0,s11
800014b4:	00002097          	auipc	ra,0x2
800014b8:	694080e7          	jalr	1684(ra) # 80003b48 <__umodsi3>
800014bc:	001b8b93          	addi	s7,s7,1
800014c0:	03050793          	addi	a5,a0,48
800014c4:	01748433          	add	s0,s1,s7
800014c8:	000d8513          	mv	a0,s11
800014cc:	00a00593          	li	a1,10
800014d0:	fef40fa3          	sb	a5,-1(s0)
800014d4:	000d8c93          	mv	s9,s11
800014d8:	00002097          	auipc	ra,0x2
800014dc:	628080e7          	jalr	1576(ra) # 80003b00 <__hidden___udivsi3>
800014e0:	00050d93          	mv	s11,a0
800014e4:	fd9964e3          	bltu	s2,s9,800014ac <scheduler_run+0x10c>
800014e8:	fff44503          	lbu	a0,-1(s0)
800014ec:	fff40413          	addi	s0,s0,-1
800014f0:	00001097          	auipc	ra,0x1
800014f4:	1d0080e7          	jalr	464(ra) # 800026c0 <uart_putc>
800014f8:	fe8498e3          	bne	s1,s0,800014e8 <scheduler_run+0x148>
800014fc:	00003517          	auipc	a0,0x3
80001500:	17450513          	addi	a0,a0,372 # 80004670 <__clzsi2+0xac4>
80001504:	00001097          	auipc	ra,0x1
80001508:	204080e7          	jalr	516(ra) # 80002708 <uart_puts>
8000150c:	00003517          	auipc	a0,0x3
80001510:	16850513          	addi	a0,a0,360 # 80004674 <__clzsi2+0xac8>
80001514:	00001097          	auipc	ra,0x1
80001518:	1f4080e7          	jalr	500(ra) # 80002708 <uart_puts>
8000151c:	00003517          	auipc	a0,0x3
80001520:	95850513          	addi	a0,a0,-1704 # 80003e74 <__clzsi2+0x2c8>
80001524:	00001097          	auipc	ra,0x1
80001528:	1e4080e7          	jalr	484(ra) # 80002708 <uart_puts>
8000152c:	000d2783          	lw	a5,0(s10)
80001530:	00200713          	li	a4,2
80001534:	6ee78463          	beq	a5,a4,80001c1c <scheduler_run+0x87c>
80001538:	24f76c63          	bltu	a4,a5,80001790 <scheduler_run+0x3f0>
8000153c:	50078663          	beqz	a5,80001a48 <scheduler_run+0x6a8>
80001540:	00100513          	li	a0,1
80001544:	00000097          	auipc	ra,0x0
80001548:	920080e7          	jalr	-1760(ra) # 80000e64 <metrics_inc_process_execution>
8000154c:	00003517          	auipc	a0,0x3
80001550:	14450513          	addi	a0,a0,324 # 80004690 <__clzsi2+0xae4>
80001554:	00001097          	auipc	ra,0x1
80001558:	1b4080e7          	jalr	436(ra) # 80002708 <uart_puts>
8000155c:	03100513          	li	a0,49
80001560:	00001097          	auipc	ra,0x1
80001564:	160080e7          	jalr	352(ra) # 800026c0 <uart_putc>
80001568:	00003517          	auipc	a0,0x3
8000156c:	14450513          	addi	a0,a0,324 # 800046ac <__clzsi2+0xb00>
80001570:	00001097          	auipc	ra,0x1
80001574:	198080e7          	jalr	408(ra) # 80002708 <uart_puts>
80001578:	00000097          	auipc	ra,0x0
8000157c:	b0c080e7          	jalr	-1268(ra) # 80001084 <metrics_start_process_timing>
80001580:	00001097          	auipc	ra,0x1
80001584:	b40080e7          	jalr	-1216(ra) # 800020c0 <process_p1_temp_acquisition>
80001588:	00100513          	li	a0,1
8000158c:	00000097          	auipc	ra,0x0
80001590:	b14080e7          	jalr	-1260(ra) # 800010a0 <metrics_stop_process_timing>
80001594:	00a00513          	li	a0,10
80001598:	00001097          	auipc	ra,0x1
8000159c:	128080e7          	jalr	296(ra) # 800026c0 <uart_putc>
800015a0:	00003517          	auipc	a0,0x3
800015a4:	18c50513          	addi	a0,a0,396 # 8000472c <__clzsi2+0xb80>
800015a8:	00001097          	auipc	ra,0x1
800015ac:	160080e7          	jalr	352(ra) # 80002708 <uart_puts>
800015b0:	00000097          	auipc	ra,0x0
800015b4:	9f0080e7          	jalr	-1552(ra) # 80000fa0 <metrics_inc_abrupt_switch>
800015b8:	00000097          	auipc	ra,0x0
800015bc:	9d0080e7          	jalr	-1584(ra) # 80000f88 <metrics_inc_data_loss>
800015c0:	00300513          	li	a0,3
800015c4:	00000097          	auipc	ra,0x0
800015c8:	8a0080e7          	jalr	-1888(ra) # 80000e64 <metrics_inc_process_execution>
800015cc:	00003517          	auipc	a0,0x3
800015d0:	0c450513          	addi	a0,a0,196 # 80004690 <__clzsi2+0xae4>
800015d4:	00001097          	auipc	ra,0x1
800015d8:	134080e7          	jalr	308(ra) # 80002708 <uart_puts>
800015dc:	03300513          	li	a0,51
800015e0:	00001097          	auipc	ra,0x1
800015e4:	0e0080e7          	jalr	224(ra) # 800026c0 <uart_putc>
800015e8:	00003517          	auipc	a0,0x3
800015ec:	0c450513          	addi	a0,a0,196 # 800046ac <__clzsi2+0xb00>
800015f0:	00001097          	auipc	ra,0x1
800015f4:	118080e7          	jalr	280(ra) # 80002708 <uart_puts>
800015f8:	00000097          	auipc	ra,0x0
800015fc:	a8c080e7          	jalr	-1396(ra) # 80001084 <metrics_start_process_timing>
80001600:	00001097          	auipc	ra,0x1
80001604:	e98080e7          	jalr	-360(ra) # 80002498 <process_p3_uart_display>
80001608:	00300513          	li	a0,3
8000160c:	00000097          	auipc	ra,0x0
80001610:	a94080e7          	jalr	-1388(ra) # 800010a0 <metrics_stop_process_timing>
80001614:	00a00513          	li	a0,10
80001618:	00001097          	auipc	ra,0x1
8000161c:	0a8080e7          	jalr	168(ra) # 800026c0 <uart_putc>
80001620:	00003517          	auipc	a0,0x3
80001624:	14850513          	addi	a0,a0,328 # 80004768 <__clzsi2+0xbbc>
80001628:	00001097          	auipc	ra,0x1
8000162c:	0e0080e7          	jalr	224(ra) # 80002708 <uart_puts>
80001630:	00000097          	auipc	ra,0x0
80001634:	970080e7          	jalr	-1680(ra) # 80000fa0 <metrics_inc_abrupt_switch>
80001638:	00000097          	auipc	ra,0x0
8000163c:	950080e7          	jalr	-1712(ra) # 80000f88 <metrics_inc_data_loss>
80001640:	00200513          	li	a0,2
80001644:	00000097          	auipc	ra,0x0
80001648:	820080e7          	jalr	-2016(ra) # 80000e64 <metrics_inc_process_execution>
8000164c:	00003517          	auipc	a0,0x3
80001650:	04450513          	addi	a0,a0,68 # 80004690 <__clzsi2+0xae4>
80001654:	00001097          	auipc	ra,0x1
80001658:	0b4080e7          	jalr	180(ra) # 80002708 <uart_puts>
8000165c:	03200513          	li	a0,50
80001660:	00001097          	auipc	ra,0x1
80001664:	060080e7          	jalr	96(ra) # 800026c0 <uart_putc>
80001668:	00003517          	auipc	a0,0x3
8000166c:	04450513          	addi	a0,a0,68 # 800046ac <__clzsi2+0xb00>
80001670:	00001097          	auipc	ra,0x1
80001674:	098080e7          	jalr	152(ra) # 80002708 <uart_puts>
80001678:	00000097          	auipc	ra,0x0
8000167c:	a0c080e7          	jalr	-1524(ra) # 80001084 <metrics_start_process_timing>
80001680:	00001097          	auipc	ra,0x1
80001684:	bec080e7          	jalr	-1044(ra) # 8000226c <process_p2_cooling_control>
80001688:	00200513          	li	a0,2
8000168c:	00000097          	auipc	ra,0x0
80001690:	a14080e7          	jalr	-1516(ra) # 800010a0 <metrics_stop_process_timing>
80001694:	00a00513          	li	a0,10
80001698:	00001097          	auipc	ra,0x1
8000169c:	028080e7          	jalr	40(ra) # 800026c0 <uart_putc>
800016a0:	000aa783          	lw	a5,0(s5)
800016a4:	00178793          	addi	a5,a5,1
800016a8:	00faa023          	sw	a5,0(s5)
800016ac:	fffff097          	auipc	ra,0xfffff
800016b0:	788080e7          	jalr	1928(ra) # 80000e34 <metrics_inc_cycle>
800016b4:	00003517          	auipc	a0,0x3
800016b8:	0f450513          	addi	a0,a0,244 # 800047a8 <__clzsi2+0xbfc>
800016bc:	00001097          	auipc	ra,0x1
800016c0:	04c080e7          	jalr	76(ra) # 80002708 <uart_puts>
800016c4:	00003517          	auipc	a0,0x3
800016c8:	2f050513          	addi	a0,a0,752 # 800049b4 <__clzsi2+0xe08>
800016cc:	00001097          	auipc	ra,0x1
800016d0:	03c080e7          	jalr	60(ra) # 80002708 <uart_puts>
800016d4:	00198993          	addi	s3,s3,1
800016d8:	06400793          	li	a5,100
800016dc:	32f98263          	beq	s3,a5,80001a00 <scheduler_run+0x660>
800016e0:	00002517          	auipc	a0,0x2
800016e4:	64450513          	addi	a0,a0,1604 # 80003d24 <__clzsi2+0x178>
800016e8:	00001097          	auipc	ra,0x1
800016ec:	020080e7          	jalr	32(ra) # 80002708 <uart_puts>
800016f0:	00002517          	auipc	a0,0x2
800016f4:	69450513          	addi	a0,a0,1684 # 80003d84 <__clzsi2+0x1d8>
800016f8:	00001097          	auipc	ra,0x1
800016fc:	010080e7          	jalr	16(ra) # 80002708 <uart_puts>
80001700:	00003517          	auipc	a0,0x3
80001704:	f5050513          	addi	a0,a0,-176 # 80004650 <__clzsi2+0xaa4>
80001708:	00001097          	auipc	ra,0x1
8000170c:	000080e7          	jalr	ra # 80002708 <uart_puts>
80001710:	00098d93          	mv	s11,s3
80001714:	00000b93          	li	s7,0
80001718:	00a00593          	li	a1,10
8000171c:	000d8513          	mv	a0,s11
80001720:	00002097          	auipc	ra,0x2
80001724:	428080e7          	jalr	1064(ra) # 80003b48 <__umodsi3>
80001728:	001b8b93          	addi	s7,s7,1
8000172c:	03050793          	addi	a5,a0,48
80001730:	01748433          	add	s0,s1,s7
80001734:	000d8513          	mv	a0,s11
80001738:	00a00593          	li	a1,10
8000173c:	fef40fa3          	sb	a5,-1(s0)
80001740:	000d8c93          	mv	s9,s11
80001744:	00002097          	auipc	ra,0x2
80001748:	3bc080e7          	jalr	956(ra) # 80003b00 <__hidden___udivsi3>
8000174c:	00050d93          	mv	s11,a0
80001750:	fd9964e3          	bltu	s2,s9,80001718 <scheduler_run+0x378>
80001754:	fff44503          	lbu	a0,-1(s0)
80001758:	fff40413          	addi	s0,s0,-1
8000175c:	00001097          	auipc	ra,0x1
80001760:	f64080e7          	jalr	-156(ra) # 800026c0 <uart_putc>
80001764:	ce8488e3          	beq	s1,s0,80001454 <scheduler_run+0xb4>
80001768:	fff44503          	lbu	a0,-1(s0)
8000176c:	fff40413          	addi	s0,s0,-1
80001770:	00001097          	auipc	ra,0x1
80001774:	f50080e7          	jalr	-176(ra) # 800026c0 <uart_putc>
80001778:	fc849ee3          	bne	s1,s0,80001754 <scheduler_run+0x3b4>
8000177c:	cd9ff06f          	j	80001454 <scheduler_run+0xb4>
80001780:	03000513          	li	a0,48
80001784:	00001097          	auipc	ra,0x1
80001788:	f3c080e7          	jalr	-196(ra) # 800026c0 <uart_putc>
8000178c:	d71ff06f          	j	800014fc <scheduler_run+0x15c>
80001790:	00300713          	li	a4,3
80001794:	f2e798e3          	bne	a5,a4,800016c4 <scheduler_run+0x324>
80001798:	00003517          	auipc	a0,0x3
8000179c:	0ec50513          	addi	a0,a0,236 # 80004884 <__clzsi2+0xcd8>
800017a0:	00001097          	auipc	ra,0x1
800017a4:	f68080e7          	jalr	-152(ra) # 80002708 <uart_puts>
800017a8:	00003517          	auipc	a0,0x3
800017ac:	11050513          	addi	a0,a0,272 # 800048b8 <__clzsi2+0xd0c>
800017b0:	00001097          	auipc	ra,0x1
800017b4:	f58080e7          	jalr	-168(ra) # 80002708 <uart_puts>
800017b8:	00000797          	auipc	a5,0x0
800017bc:	00003517          	auipc	a0,0x3
800017c0:	11450513          	addi	a0,a0,276 # 800048d0 <__clzsi2+0xd24>
800017c4:	00fa2023          	sw	a5,0(s4)
800017c8:	01c00d93          	li	s11,28
800017cc:	00001097          	auipc	ra,0x1
800017d0:	f3c080e7          	jalr	-196(ra) # 80002708 <uart_puts>
800017d4:	ffc00413          	li	s0,-4
800017d8:	000a2783          	lw	a5,0(s4)
800017dc:	01b7d7b3          	srl	a5,a5,s11
800017e0:	00f7f713          	andi	a4,a5,15
800017e4:	03770513          	addi	a0,a4,55 # 1037 <COOLING_THRESHOLD_ON+0xfdd>
800017e8:	00e96463          	bltu	s2,a4,800017f0 <scheduler_run+0x450>
800017ec:	03070513          	addi	a0,a4,48
800017f0:	ffcd8d93          	addi	s11,s11,-4
800017f4:	00001097          	auipc	ra,0x1
800017f8:	ecc080e7          	jalr	-308(ra) # 800026c0 <uart_putc>
800017fc:	fc8d9ee3          	bne	s11,s0,800017d8 <scheduler_run+0x438>
80001800:	00a00513          	li	a0,10
80001804:	00001097          	auipc	ra,0x1
80001808:	ebc080e7          	jalr	-324(ra) # 800026c0 <uart_putc>
8000180c:	00100513          	li	a0,1
80001810:	fffff097          	auipc	ra,0xfffff
80001814:	654080e7          	jalr	1620(ra) # 80000e64 <metrics_inc_process_execution>
80001818:	00003517          	auipc	a0,0x3
8000181c:	e7850513          	addi	a0,a0,-392 # 80004690 <__clzsi2+0xae4>
80001820:	00001097          	auipc	ra,0x1
80001824:	ee8080e7          	jalr	-280(ra) # 80002708 <uart_puts>
80001828:	03100513          	li	a0,49
8000182c:	00001097          	auipc	ra,0x1
80001830:	e94080e7          	jalr	-364(ra) # 800026c0 <uart_putc>
80001834:	00003517          	auipc	a0,0x3
80001838:	e7850513          	addi	a0,a0,-392 # 800046ac <__clzsi2+0xb00>
8000183c:	00001097          	auipc	ra,0x1
80001840:	ecc080e7          	jalr	-308(ra) # 80002708 <uart_puts>
80001844:	00000097          	auipc	ra,0x0
80001848:	840080e7          	jalr	-1984(ra) # 80001084 <metrics_start_process_timing>
8000184c:	00001097          	auipc	ra,0x1
80001850:	874080e7          	jalr	-1932(ra) # 800020c0 <process_p1_temp_acquisition>
80001854:	00100513          	li	a0,1
80001858:	00000097          	auipc	ra,0x0
8000185c:	848080e7          	jalr	-1976(ra) # 800010a0 <metrics_stop_process_timing>
80001860:	00a00513          	li	a0,10
80001864:	00001097          	auipc	ra,0x1
80001868:	e5c080e7          	jalr	-420(ra) # 800026c0 <uart_putc>
8000186c:	00003517          	auipc	a0,0x3
80001870:	08450513          	addi	a0,a0,132 # 800048f0 <__clzsi2+0xd44>
80001874:	00001097          	auipc	ra,0x1
80001878:	e94080e7          	jalr	-364(ra) # 80002708 <uart_puts>
8000187c:	00003517          	auipc	a0,0x3
80001880:	0a850513          	addi	a0,a0,168 # 80004924 <__clzsi2+0xd78>
80001884:	00001097          	auipc	ra,0x1
80001888:	e84080e7          	jalr	-380(ra) # 80002708 <uart_puts>
8000188c:	fffff097          	auipc	ra,0xfffff
80001890:	5c0080e7          	jalr	1472(ra) # 80000e4c <metrics_inc_context_switch>
80001894:	00200513          	li	a0,2
80001898:	fffff097          	auipc	ra,0xfffff
8000189c:	5cc080e7          	jalr	1484(ra) # 80000e64 <metrics_inc_process_execution>
800018a0:	00003517          	auipc	a0,0x3
800018a4:	df050513          	addi	a0,a0,-528 # 80004690 <__clzsi2+0xae4>
800018a8:	00001097          	auipc	ra,0x1
800018ac:	e60080e7          	jalr	-416(ra) # 80002708 <uart_puts>
800018b0:	03200513          	li	a0,50
800018b4:	00001097          	auipc	ra,0x1
800018b8:	e0c080e7          	jalr	-500(ra) # 800026c0 <uart_putc>
800018bc:	00003517          	auipc	a0,0x3
800018c0:	df050513          	addi	a0,a0,-528 # 800046ac <__clzsi2+0xb00>
800018c4:	00001097          	auipc	ra,0x1
800018c8:	e44080e7          	jalr	-444(ra) # 80002708 <uart_puts>
800018cc:	fffff097          	auipc	ra,0xfffff
800018d0:	7b8080e7          	jalr	1976(ra) # 80001084 <metrics_start_process_timing>
800018d4:	00001097          	auipc	ra,0x1
800018d8:	998080e7          	jalr	-1640(ra) # 8000226c <process_p2_cooling_control>
800018dc:	00200513          	li	a0,2
800018e0:	fffff097          	auipc	ra,0xfffff
800018e4:	7c0080e7          	jalr	1984(ra) # 800010a0 <metrics_stop_process_timing>
800018e8:	00a00513          	li	a0,10
800018ec:	00001097          	auipc	ra,0x1
800018f0:	dd4080e7          	jalr	-556(ra) # 800026c0 <uart_putc>
800018f4:	00003517          	auipc	a0,0x3
800018f8:	05050513          	addi	a0,a0,80 # 80004944 <__clzsi2+0xd98>
800018fc:	00001097          	auipc	ra,0x1
80001900:	e0c080e7          	jalr	-500(ra) # 80002708 <uart_puts>
80001904:	01c00d93          	li	s11,28
80001908:	ffc00413          	li	s0,-4
8000190c:	000a2783          	lw	a5,0(s4)
80001910:	01b7d7b3          	srl	a5,a5,s11
80001914:	00f7f713          	andi	a4,a5,15
80001918:	03770513          	addi	a0,a4,55
8000191c:	00e96463          	bltu	s2,a4,80001924 <scheduler_run+0x584>
80001920:	03070513          	addi	a0,a4,48
80001924:	ffcd8d93          	addi	s11,s11,-4
80001928:	00001097          	auipc	ra,0x1
8000192c:	d98080e7          	jalr	-616(ra) # 800026c0 <uart_putc>
80001930:	fc8d9ee3          	bne	s11,s0,8000190c <scheduler_run+0x56c>
80001934:	00a00513          	li	a0,10
80001938:	00001097          	auipc	ra,0x1
8000193c:	d88080e7          	jalr	-632(ra) # 800026c0 <uart_putc>
80001940:	fffff097          	auipc	ra,0xfffff
80001944:	50c080e7          	jalr	1292(ra) # 80000e4c <metrics_inc_context_switch>
80001948:	00003517          	auipc	a0,0x3
8000194c:	02450513          	addi	a0,a0,36 # 8000496c <__clzsi2+0xdc0>
80001950:	00001097          	auipc	ra,0x1
80001954:	db8080e7          	jalr	-584(ra) # 80002708 <uart_puts>
80001958:	fffff097          	auipc	ra,0xfffff
8000195c:	4f4080e7          	jalr	1268(ra) # 80000e4c <metrics_inc_context_switch>
80001960:	00300513          	li	a0,3
80001964:	fffff097          	auipc	ra,0xfffff
80001968:	500080e7          	jalr	1280(ra) # 80000e64 <metrics_inc_process_execution>
8000196c:	00003517          	auipc	a0,0x3
80001970:	d2450513          	addi	a0,a0,-732 # 80004690 <__clzsi2+0xae4>
80001974:	00001097          	auipc	ra,0x1
80001978:	d94080e7          	jalr	-620(ra) # 80002708 <uart_puts>
8000197c:	03300513          	li	a0,51
80001980:	00001097          	auipc	ra,0x1
80001984:	d40080e7          	jalr	-704(ra) # 800026c0 <uart_putc>
80001988:	00003517          	auipc	a0,0x3
8000198c:	d2450513          	addi	a0,a0,-732 # 800046ac <__clzsi2+0xb00>
80001990:	00001097          	auipc	ra,0x1
80001994:	d78080e7          	jalr	-648(ra) # 80002708 <uart_puts>
80001998:	fffff097          	auipc	ra,0xfffff
8000199c:	6ec080e7          	jalr	1772(ra) # 80001084 <metrics_start_process_timing>
800019a0:	00001097          	auipc	ra,0x1
800019a4:	af8080e7          	jalr	-1288(ra) # 80002498 <process_p3_uart_display>
800019a8:	00300513          	li	a0,3
800019ac:	fffff097          	auipc	ra,0xfffff
800019b0:	6f4080e7          	jalr	1780(ra) # 800010a0 <metrics_stop_process_timing>
800019b4:	00a00513          	li	a0,10
800019b8:	00001097          	auipc	ra,0x1
800019bc:	d08080e7          	jalr	-760(ra) # 800026c0 <uart_putc>
800019c0:	000aa783          	lw	a5,0(s5)
800019c4:	00198993          	addi	s3,s3,1
800019c8:	00178793          	addi	a5,a5,1 # 800017b9 <scheduler_run+0x419>
800019cc:	00faa023          	sw	a5,0(s5)
800019d0:	fffff097          	auipc	ra,0xfffff
800019d4:	464080e7          	jalr	1124(ra) # 80000e34 <metrics_inc_cycle>
800019d8:	00003517          	auipc	a0,0x3
800019dc:	fb450513          	addi	a0,a0,-76 # 8000498c <__clzsi2+0xde0>
800019e0:	00001097          	auipc	ra,0x1
800019e4:	d28080e7          	jalr	-728(ra) # 80002708 <uart_puts>
800019e8:	00003517          	auipc	a0,0x3
800019ec:	fcc50513          	addi	a0,a0,-52 # 800049b4 <__clzsi2+0xe08>
800019f0:	00001097          	auipc	ra,0x1
800019f4:	d18080e7          	jalr	-744(ra) # 80002708 <uart_puts>
800019f8:	06400793          	li	a5,100
800019fc:	cef992e3          	bne	s3,a5,800016e0 <scheduler_run+0x340>
80001a00:	04812403          	lw	s0,72(sp)
80001a04:	04c12083          	lw	ra,76(sp)
80001a08:	04412483          	lw	s1,68(sp)
80001a0c:	04012903          	lw	s2,64(sp)
80001a10:	03c12983          	lw	s3,60(sp)
80001a14:	03812a03          	lw	s4,56(sp)
80001a18:	03412a83          	lw	s5,52(sp)
80001a1c:	03012b03          	lw	s6,48(sp)
80001a20:	02c12b83          	lw	s7,44(sp)
80001a24:	02812c03          	lw	s8,40(sp)
80001a28:	02412c83          	lw	s9,36(sp)
80001a2c:	02012d03          	lw	s10,32(sp)
80001a30:	01c12d83          	lw	s11,28(sp)
80001a34:	00003517          	auipc	a0,0x3
80001a38:	02c50513          	addi	a0,a0,44 # 80004a60 <__clzsi2+0xeb4>
80001a3c:	05010113          	addi	sp,sp,80
80001a40:	00001317          	auipc	t1,0x1
80001a44:	cc830067          	jr	-824(t1) # 80002708 <uart_puts>
80001a48:	00100513          	li	a0,1
80001a4c:	fffff097          	auipc	ra,0xfffff
80001a50:	418080e7          	jalr	1048(ra) # 80000e64 <metrics_inc_process_execution>
80001a54:	00003517          	auipc	a0,0x3
80001a58:	c3c50513          	addi	a0,a0,-964 # 80004690 <__clzsi2+0xae4>
80001a5c:	00001097          	auipc	ra,0x1
80001a60:	cac080e7          	jalr	-852(ra) # 80002708 <uart_puts>
80001a64:	03100513          	li	a0,49
80001a68:	00001097          	auipc	ra,0x1
80001a6c:	c58080e7          	jalr	-936(ra) # 800026c0 <uart_putc>
80001a70:	00003517          	auipc	a0,0x3
80001a74:	c3c50513          	addi	a0,a0,-964 # 800046ac <__clzsi2+0xb00>
80001a78:	00001097          	auipc	ra,0x1
80001a7c:	c90080e7          	jalr	-880(ra) # 80002708 <uart_puts>
80001a80:	fffff097          	auipc	ra,0xfffff
80001a84:	604080e7          	jalr	1540(ra) # 80001084 <metrics_start_process_timing>
80001a88:	00000097          	auipc	ra,0x0
80001a8c:	638080e7          	jalr	1592(ra) # 800020c0 <process_p1_temp_acquisition>
80001a90:	00100513          	li	a0,1
80001a94:	fffff097          	auipc	ra,0xfffff
80001a98:	60c080e7          	jalr	1548(ra) # 800010a0 <metrics_stop_process_timing>
80001a9c:	00a00513          	li	a0,10
80001aa0:	00001097          	auipc	ra,0x1
80001aa4:	c20080e7          	jalr	-992(ra) # 800026c0 <uart_putc>
80001aa8:	00200513          	li	a0,2
80001aac:	fffff097          	auipc	ra,0xfffff
80001ab0:	3b8080e7          	jalr	952(ra) # 80000e64 <metrics_inc_process_execution>
80001ab4:	00003517          	auipc	a0,0x3
80001ab8:	bdc50513          	addi	a0,a0,-1060 # 80004690 <__clzsi2+0xae4>
80001abc:	00001097          	auipc	ra,0x1
80001ac0:	c4c080e7          	jalr	-948(ra) # 80002708 <uart_puts>
80001ac4:	03200513          	li	a0,50
80001ac8:	00001097          	auipc	ra,0x1
80001acc:	bf8080e7          	jalr	-1032(ra) # 800026c0 <uart_putc>
80001ad0:	00003517          	auipc	a0,0x3
80001ad4:	bdc50513          	addi	a0,a0,-1060 # 800046ac <__clzsi2+0xb00>
80001ad8:	00001097          	auipc	ra,0x1
80001adc:	c30080e7          	jalr	-976(ra) # 80002708 <uart_puts>
80001ae0:	fffff097          	auipc	ra,0xfffff
80001ae4:	5a4080e7          	jalr	1444(ra) # 80001084 <metrics_start_process_timing>
80001ae8:	00000097          	auipc	ra,0x0
80001aec:	784080e7          	jalr	1924(ra) # 8000226c <process_p2_cooling_control>
80001af0:	00200513          	li	a0,2
80001af4:	fffff097          	auipc	ra,0xfffff
80001af8:	5ac080e7          	jalr	1452(ra) # 800010a0 <metrics_stop_process_timing>
80001afc:	00a00513          	li	a0,10
80001b00:	00001097          	auipc	ra,0x1
80001b04:	bc0080e7          	jalr	-1088(ra) # 800026c0 <uart_putc>
80001b08:	00300513          	li	a0,3
80001b0c:	fffff097          	auipc	ra,0xfffff
80001b10:	358080e7          	jalr	856(ra) # 80000e64 <metrics_inc_process_execution>
80001b14:	00003517          	auipc	a0,0x3
80001b18:	b7c50513          	addi	a0,a0,-1156 # 80004690 <__clzsi2+0xae4>
80001b1c:	00001097          	auipc	ra,0x1
80001b20:	bec080e7          	jalr	-1044(ra) # 80002708 <uart_puts>
80001b24:	03300513          	li	a0,51
80001b28:	00001097          	auipc	ra,0x1
80001b2c:	b98080e7          	jalr	-1128(ra) # 800026c0 <uart_putc>
80001b30:	00003517          	auipc	a0,0x3
80001b34:	b7c50513          	addi	a0,a0,-1156 # 800046ac <__clzsi2+0xb00>
80001b38:	00001097          	auipc	ra,0x1
80001b3c:	bd0080e7          	jalr	-1072(ra) # 80002708 <uart_puts>
80001b40:	fffff097          	auipc	ra,0xfffff
80001b44:	544080e7          	jalr	1348(ra) # 80001084 <metrics_start_process_timing>
80001b48:	00001097          	auipc	ra,0x1
80001b4c:	950080e7          	jalr	-1712(ra) # 80002498 <process_p3_uart_display>
80001b50:	00300513          	li	a0,3
80001b54:	fffff097          	auipc	ra,0xfffff
80001b58:	54c080e7          	jalr	1356(ra) # 800010a0 <metrics_stop_process_timing>
80001b5c:	00a00513          	li	a0,10
80001b60:	00001097          	auipc	ra,0x1
80001b64:	b60080e7          	jalr	-1184(ra) # 800026c0 <uart_putc>
80001b68:	000aa783          	lw	a5,0(s5)
80001b6c:	00000b93          	li	s7,0
80001b70:	00178793          	addi	a5,a5,1
80001b74:	00faa023          	sw	a5,0(s5)
80001b78:	fffff097          	auipc	ra,0xfffff
80001b7c:	2bc080e7          	jalr	700(ra) # 80000e34 <metrics_inc_cycle>
80001b80:	00003517          	auipc	a0,0x3
80001b84:	b3450513          	addi	a0,a0,-1228 # 800046b4 <__clzsi2+0xb08>
80001b88:	00001097          	auipc	ra,0x1
80001b8c:	b80080e7          	jalr	-1152(ra) # 80002708 <uart_puts>
80001b90:	00003517          	auipc	a0,0x3
80001b94:	b5050513          	addi	a0,a0,-1200 # 800046e0 <__clzsi2+0xb34>
80001b98:	00001097          	auipc	ra,0x1
80001b9c:	b70080e7          	jalr	-1168(ra) # 80002708 <uart_puts>
80001ba0:	000aa403          	lw	s0,0(s5)
80001ba4:	20040063          	beqz	s0,80001da4 <scheduler_run+0xa04>
80001ba8:	00a00593          	li	a1,10
80001bac:	00040513          	mv	a0,s0
80001bb0:	00002097          	auipc	ra,0x2
80001bb4:	f98080e7          	jalr	-104(ra) # 80003b48 <__umodsi3>
80001bb8:	001b8b93          	addi	s7,s7,1
80001bbc:	03050793          	addi	a5,a0,48
80001bc0:	01748db3          	add	s11,s1,s7
80001bc4:	00040513          	mv	a0,s0
80001bc8:	00a00593          	li	a1,10
80001bcc:	fefd8fa3          	sb	a5,-1(s11)
80001bd0:	00040c93          	mv	s9,s0
80001bd4:	00002097          	auipc	ra,0x2
80001bd8:	f2c080e7          	jalr	-212(ra) # 80003b00 <__hidden___udivsi3>
80001bdc:	00050413          	mv	s0,a0
80001be0:	fd9964e3          	bltu	s2,s9,80001ba8 <scheduler_run+0x808>
80001be4:	fffdc503          	lbu	a0,-1(s11)
80001be8:	fffd8d93          	addi	s11,s11,-1
80001bec:	00001097          	auipc	ra,0x1
80001bf0:	ad4080e7          	jalr	-1324(ra) # 800026c0 <uart_putc>
80001bf4:	ffb498e3          	bne	s1,s11,80001be4 <scheduler_run+0x844>
80001bf8:	00003517          	auipc	a0,0x3
80001bfc:	afc50513          	addi	a0,a0,-1284 # 800046f4 <__clzsi2+0xb48>
80001c00:	00001097          	auipc	ra,0x1
80001c04:	b08080e7          	jalr	-1272(ra) # 80002708 <uart_puts>
80001c08:	00003517          	auipc	a0,0x3
80001c0c:	af850513          	addi	a0,a0,-1288 # 80004700 <__clzsi2+0xb54>
80001c10:	00001097          	auipc	ra,0x1
80001c14:	af8080e7          	jalr	-1288(ra) # 80002708 <uart_puts>
80001c18:	aadff06f          	j	800016c4 <scheduler_run+0x324>
80001c1c:	00200513          	li	a0,2
80001c20:	fffff097          	auipc	ra,0xfffff
80001c24:	244080e7          	jalr	580(ra) # 80000e64 <metrics_inc_process_execution>
80001c28:	00003517          	auipc	a0,0x3
80001c2c:	a6850513          	addi	a0,a0,-1432 # 80004690 <__clzsi2+0xae4>
80001c30:	00001097          	auipc	ra,0x1
80001c34:	ad8080e7          	jalr	-1320(ra) # 80002708 <uart_puts>
80001c38:	03200513          	li	a0,50
80001c3c:	00001097          	auipc	ra,0x1
80001c40:	a84080e7          	jalr	-1404(ra) # 800026c0 <uart_putc>
80001c44:	00003517          	auipc	a0,0x3
80001c48:	a6850513          	addi	a0,a0,-1432 # 800046ac <__clzsi2+0xb00>
80001c4c:	00001097          	auipc	ra,0x1
80001c50:	abc080e7          	jalr	-1348(ra) # 80002708 <uart_puts>
80001c54:	fffff097          	auipc	ra,0xfffff
80001c58:	430080e7          	jalr	1072(ra) # 80001084 <metrics_start_process_timing>
80001c5c:	00000097          	auipc	ra,0x0
80001c60:	610080e7          	jalr	1552(ra) # 8000226c <process_p2_cooling_control>
80001c64:	00200513          	li	a0,2
80001c68:	fffff097          	auipc	ra,0xfffff
80001c6c:	438080e7          	jalr	1080(ra) # 800010a0 <metrics_stop_process_timing>
80001c70:	00a00513          	li	a0,10
80001c74:	00001097          	auipc	ra,0x1
80001c78:	a4c080e7          	jalr	-1460(ra) # 800026c0 <uart_putc>
80001c7c:	00003517          	auipc	a0,0x3
80001c80:	b6850513          	addi	a0,a0,-1176 # 800047e4 <__clzsi2+0xc38>
80001c84:	00001097          	auipc	ra,0x1
80001c88:	a84080e7          	jalr	-1404(ra) # 80002708 <uart_puts>
80001c8c:	fffff097          	auipc	ra,0xfffff
80001c90:	314080e7          	jalr	788(ra) # 80000fa0 <metrics_inc_abrupt_switch>
80001c94:	fffff097          	auipc	ra,0xfffff
80001c98:	2f4080e7          	jalr	756(ra) # 80000f88 <metrics_inc_data_loss>
80001c9c:	00100513          	li	a0,1
80001ca0:	fffff097          	auipc	ra,0xfffff
80001ca4:	1c4080e7          	jalr	452(ra) # 80000e64 <metrics_inc_process_execution>
80001ca8:	00003517          	auipc	a0,0x3
80001cac:	9e850513          	addi	a0,a0,-1560 # 80004690 <__clzsi2+0xae4>
80001cb0:	00001097          	auipc	ra,0x1
80001cb4:	a58080e7          	jalr	-1448(ra) # 80002708 <uart_puts>
80001cb8:	03100513          	li	a0,49
80001cbc:	00001097          	auipc	ra,0x1
80001cc0:	a04080e7          	jalr	-1532(ra) # 800026c0 <uart_putc>
80001cc4:	00003517          	auipc	a0,0x3
80001cc8:	9e850513          	addi	a0,a0,-1560 # 800046ac <__clzsi2+0xb00>
80001ccc:	00001097          	auipc	ra,0x1
80001cd0:	a3c080e7          	jalr	-1476(ra) # 80002708 <uart_puts>
80001cd4:	fffff097          	auipc	ra,0xfffff
80001cd8:	3b0080e7          	jalr	944(ra) # 80001084 <metrics_start_process_timing>
80001cdc:	00000097          	auipc	ra,0x0
80001ce0:	3e4080e7          	jalr	996(ra) # 800020c0 <process_p1_temp_acquisition>
80001ce4:	00100513          	li	a0,1
80001ce8:	fffff097          	auipc	ra,0xfffff
80001cec:	3b8080e7          	jalr	952(ra) # 800010a0 <metrics_stop_process_timing>
80001cf0:	00a00513          	li	a0,10
80001cf4:	00001097          	auipc	ra,0x1
80001cf8:	9cc080e7          	jalr	-1588(ra) # 800026c0 <uart_putc>
80001cfc:	00003517          	auipc	a0,0x3
80001d00:	b2050513          	addi	a0,a0,-1248 # 8000481c <__clzsi2+0xc70>
80001d04:	00001097          	auipc	ra,0x1
80001d08:	a04080e7          	jalr	-1532(ra) # 80002708 <uart_puts>
80001d0c:	fffff097          	auipc	ra,0xfffff
80001d10:	294080e7          	jalr	660(ra) # 80000fa0 <metrics_inc_abrupt_switch>
80001d14:	fffff097          	auipc	ra,0xfffff
80001d18:	274080e7          	jalr	628(ra) # 80000f88 <metrics_inc_data_loss>
80001d1c:	00300513          	li	a0,3
80001d20:	fffff097          	auipc	ra,0xfffff
80001d24:	144080e7          	jalr	324(ra) # 80000e64 <metrics_inc_process_execution>
80001d28:	00003517          	auipc	a0,0x3
80001d2c:	96850513          	addi	a0,a0,-1688 # 80004690 <__clzsi2+0xae4>
80001d30:	00001097          	auipc	ra,0x1
80001d34:	9d8080e7          	jalr	-1576(ra) # 80002708 <uart_puts>
80001d38:	03300513          	li	a0,51
80001d3c:	00001097          	auipc	ra,0x1
80001d40:	984080e7          	jalr	-1660(ra) # 800026c0 <uart_putc>
80001d44:	00003517          	auipc	a0,0x3
80001d48:	96850513          	addi	a0,a0,-1688 # 800046ac <__clzsi2+0xb00>
80001d4c:	00001097          	auipc	ra,0x1
80001d50:	9bc080e7          	jalr	-1604(ra) # 80002708 <uart_puts>
80001d54:	fffff097          	auipc	ra,0xfffff
80001d58:	330080e7          	jalr	816(ra) # 80001084 <metrics_start_process_timing>
80001d5c:	00000097          	auipc	ra,0x0
80001d60:	73c080e7          	jalr	1852(ra) # 80002498 <process_p3_uart_display>
80001d64:	00300513          	li	a0,3
80001d68:	fffff097          	auipc	ra,0xfffff
80001d6c:	338080e7          	jalr	824(ra) # 800010a0 <metrics_stop_process_timing>
80001d70:	00a00513          	li	a0,10
80001d74:	00001097          	auipc	ra,0x1
80001d78:	94c080e7          	jalr	-1716(ra) # 800026c0 <uart_putc>
80001d7c:	000aa783          	lw	a5,0(s5)
80001d80:	00178793          	addi	a5,a5,1
80001d84:	00faa023          	sw	a5,0(s5)
80001d88:	fffff097          	auipc	ra,0xfffff
80001d8c:	0ac080e7          	jalr	172(ra) # 80000e34 <metrics_inc_cycle>
80001d90:	00003517          	auipc	a0,0x3
80001d94:	ac050513          	addi	a0,a0,-1344 # 80004850 <__clzsi2+0xca4>
80001d98:	00001097          	auipc	ra,0x1
80001d9c:	970080e7          	jalr	-1680(ra) # 80002708 <uart_puts>
80001da0:	925ff06f          	j	800016c4 <scheduler_run+0x324>
80001da4:	03000513          	li	a0,48
80001da8:	00001097          	auipc	ra,0x1
80001dac:	918080e7          	jalr	-1768(ra) # 800026c0 <uart_putc>
80001db0:	00003517          	auipc	a0,0x3
80001db4:	94450513          	addi	a0,a0,-1724 # 800046f4 <__clzsi2+0xb48>
80001db8:	00001097          	auipc	ra,0x1
80001dbc:	950080e7          	jalr	-1712(ra) # 80002708 <uart_puts>
80001dc0:	00003517          	auipc	a0,0x3
80001dc4:	94050513          	addi	a0,a0,-1728 # 80004700 <__clzsi2+0xb54>
80001dc8:	00001097          	auipc	ra,0x1
80001dcc:	940080e7          	jalr	-1728(ra) # 80002708 <uart_puts>
80001dd0:	8f5ff06f          	j	800016c4 <scheduler_run+0x324>

80001dd4 <scheduler_get_next_process>:
80001dd4:	fe010113          	addi	sp,sp,-32
80001dd8:	00812c23          	sw	s0,24(sp)
80001ddc:	00112e23          	sw	ra,28(sp)
80001de0:	fffff097          	auipc	ra,0xfffff
80001de4:	514080e7          	jalr	1300(ra) # 800012f4 <process_get_all_pcbs>
80001de8:	00004797          	auipc	a5,0x4
80001dec:	5007a783          	lw	a5,1280(a5) # 800062e8 <current_mode>
80001df0:	00100713          	li	a4,1
80001df4:	00050413          	mv	s0,a0
80001df8:	0ae78663          	beq	a5,a4,80001ea4 <scheduler_get_next_process+0xd0>
80001dfc:	00200693          	li	a3,2
80001e00:	04d78463          	beq	a5,a3,80001e48 <scheduler_get_next_process+0x74>
80001e04:	02079863          	bnez	a5,80001e34 <scheduler_get_next_process+0x60>
80001e08:	00300593          	li	a1,3
80001e0c:	00004517          	auipc	a0,0x4
80001e10:	4d852503          	lw	a0,1240(a0) # 800062e4 <scheduler_cycles>
80001e14:	00002097          	auipc	ra,0x2
80001e18:	d34080e7          	jalr	-716(ra) # 80003b48 <__umodsi3>
80001e1c:	00351793          	slli	a5,a0,0x3
80001e20:	00a787b3          	add	a5,a5,a0
80001e24:	00279793          	slli	a5,a5,0x2
80001e28:	00a787b3          	add	a5,a5,a0
80001e2c:	00279793          	slli	a5,a5,0x2
80001e30:	00f40433          	add	s0,s0,a5
80001e34:	01c12083          	lw	ra,28(sp)
80001e38:	00040513          	mv	a0,s0
80001e3c:	01812403          	lw	s0,24(sp)
80001e40:	02010113          	addi	sp,sp,32
80001e44:	00008067          	ret
80001e48:	00300593          	li	a1,3
80001e4c:	00004517          	auipc	a0,0x4
80001e50:	49852503          	lw	a0,1176(a0) # 800062e4 <scheduler_cycles>
80001e54:	00e12223          	sw	a4,4(sp)
80001e58:	00012423          	sw	zero,8(sp)
80001e5c:	00f12623          	sw	a5,12(sp)
80001e60:	00002097          	auipc	ra,0x2
80001e64:	ce8080e7          	jalr	-792(ra) # 80003b48 <__umodsi3>
80001e68:	00251513          	slli	a0,a0,0x2
80001e6c:	01050793          	addi	a5,a0,16
80001e70:	00278533          	add	a0,a5,sp
80001e74:	ff452703          	lw	a4,-12(a0)
80001e78:	01c12083          	lw	ra,28(sp)
80001e7c:	00371793          	slli	a5,a4,0x3
80001e80:	00e787b3          	add	a5,a5,a4
80001e84:	00279793          	slli	a5,a5,0x2
80001e88:	00e787b3          	add	a5,a5,a4
80001e8c:	00279793          	slli	a5,a5,0x2
80001e90:	00f40433          	add	s0,s0,a5
80001e94:	00040513          	mv	a0,s0
80001e98:	01812403          	lw	s0,24(sp)
80001e9c:	02010113          	addi	sp,sp,32
80001ea0:	00008067          	ret
80001ea4:	00200713          	li	a4,2
80001ea8:	00300593          	li	a1,3
80001eac:	00004517          	auipc	a0,0x4
80001eb0:	43852503          	lw	a0,1080(a0) # 800062e4 <scheduler_cycles>
80001eb4:	00012223          	sw	zero,4(sp)
80001eb8:	00e12423          	sw	a4,8(sp)
80001ebc:	fa1ff06f          	j	80001e5c <scheduler_get_next_process+0x88>

80001ec0 <scheduler_yield>:
80001ec0:	00003517          	auipc	a0,0x3
80001ec4:	bc450513          	addi	a0,a0,-1084 # 80004a84 <__clzsi2+0xed8>
80001ec8:	00001317          	auipc	t1,0x1
80001ecc:	84030067          	jr	-1984(t1) # 80002708 <uart_puts>

80001ed0 <scheduler_switch_context>:
80001ed0:	ff010113          	addi	sp,sp,-16
80001ed4:	00912223          	sw	s1,4(sp)
80001ed8:	00050493          	mv	s1,a0
80001edc:	00003517          	auipc	a0,0x3
80001ee0:	bc850513          	addi	a0,a0,-1080 # 80004aa4 <__clzsi2+0xef8>
80001ee4:	00112623          	sw	ra,12(sp)
80001ee8:	00812423          	sw	s0,8(sp)
80001eec:	00058413          	mv	s0,a1
80001ef0:	00001097          	auipc	ra,0x1
80001ef4:	818080e7          	jalr	-2024(ra) # 80002708 <uart_puts>
80001ef8:	0804a503          	lw	a0,128(s1)
80001efc:	03050513          	addi	a0,a0,48
80001f00:	0ff57513          	zext.b	a0,a0
80001f04:	00000097          	auipc	ra,0x0
80001f08:	7bc080e7          	jalr	1980(ra) # 800026c0 <uart_putc>
80001f0c:	00003517          	auipc	a0,0x3
80001f10:	bb850513          	addi	a0,a0,-1096 # 80004ac4 <__clzsi2+0xf18>
80001f14:	00000097          	auipc	ra,0x0
80001f18:	7f4080e7          	jalr	2036(ra) # 80002708 <uart_puts>
80001f1c:	08042503          	lw	a0,128(s0)
80001f20:	03050513          	addi	a0,a0,48
80001f24:	0ff57513          	zext.b	a0,a0
80001f28:	00000097          	auipc	ra,0x0
80001f2c:	798080e7          	jalr	1944(ra) # 800026c0 <uart_putc>
80001f30:	00812403          	lw	s0,8(sp)
80001f34:	00c12083          	lw	ra,12(sp)
80001f38:	00412483          	lw	s1,4(sp)
80001f3c:	00a00513          	li	a0,10
80001f40:	01010113          	addi	sp,sp,16
80001f44:	00000317          	auipc	t1,0x0
80001f48:	77c30067          	jr	1916(t1) # 800026c0 <uart_putc>

80001f4c <context_save>:
80001f4c:	00152223          	sw	ra,4(a0)
80001f50:	00252423          	sw	sp,8(a0)
80001f54:	00352623          	sw	gp,12(a0)
80001f58:	00452823          	sw	tp,16(a0)
80001f5c:	00552a23          	sw	t0,20(a0)
80001f60:	00652c23          	sw	t1,24(a0)
80001f64:	00752e23          	sw	t2,28(a0)
80001f68:	02852023          	sw	s0,32(a0)
80001f6c:	02952223          	sw	s1,36(a0)
80001f70:	02a52423          	sw	a0,40(a0)
80001f74:	02b52623          	sw	a1,44(a0)
80001f78:	02c52823          	sw	a2,48(a0)
80001f7c:	02d52a23          	sw	a3,52(a0)
80001f80:	02e52c23          	sw	a4,56(a0)
80001f84:	02f52e23          	sw	a5,60(a0)
80001f88:	05052023          	sw	a6,64(a0)
80001f8c:	05152223          	sw	a7,68(a0)
80001f90:	05252423          	sw	s2,72(a0)
80001f94:	05352623          	sw	s3,76(a0)
80001f98:	05452823          	sw	s4,80(a0)
80001f9c:	05552a23          	sw	s5,84(a0)
80001fa0:	05652c23          	sw	s6,88(a0)
80001fa4:	05752e23          	sw	s7,92(a0)
80001fa8:	07852023          	sw	s8,96(a0)
80001fac:	07952223          	sw	s9,100(a0)
80001fb0:	07a52423          	sw	s10,104(a0)
80001fb4:	07b52623          	sw	s11,108(a0)
80001fb8:	07c52823          	sw	t3,112(a0)
80001fbc:	07d52a23          	sw	t4,116(a0)
80001fc0:	07e52c23          	sw	t5,120(a0)
80001fc4:	07f52e23          	sw	t6,124(a0)
80001fc8:	341022f3          	csrr	t0,mepc
80001fcc:	00552023          	sw	t0,0(a0)
80001fd0:	00008067          	ret

80001fd4 <context_restore>:
80001fd4:	00052283          	lw	t0,0(a0)
80001fd8:	34129073          	csrw	mepc,t0
80001fdc:	00452083          	lw	ra,4(a0)
80001fe0:	00852103          	lw	sp,8(a0)
80001fe4:	00c52183          	lw	gp,12(a0)
80001fe8:	01052203          	lw	tp,16(a0)
80001fec:	01452283          	lw	t0,20(a0)
80001ff0:	01852303          	lw	t1,24(a0)
80001ff4:	01c52383          	lw	t2,28(a0)
80001ff8:	02052403          	lw	s0,32(a0)
80001ffc:	02452483          	lw	s1,36(a0)
80002000:	02c52583          	lw	a1,44(a0)
80002004:	03052603          	lw	a2,48(a0)
80002008:	03452683          	lw	a3,52(a0)
8000200c:	03852703          	lw	a4,56(a0)
80002010:	03c52783          	lw	a5,60(a0)
80002014:	04052803          	lw	a6,64(a0)
80002018:	04452883          	lw	a7,68(a0)
8000201c:	04852903          	lw	s2,72(a0)
80002020:	04c52983          	lw	s3,76(a0)
80002024:	05052a03          	lw	s4,80(a0)
80002028:	05452a83          	lw	s5,84(a0)
8000202c:	05852b03          	lw	s6,88(a0)
80002030:	05c52b83          	lw	s7,92(a0)
80002034:	06052c03          	lw	s8,96(a0)
80002038:	06452c83          	lw	s9,100(a0)
8000203c:	06852d03          	lw	s10,104(a0)
80002040:	06c52d83          	lw	s11,108(a0)
80002044:	07052e03          	lw	t3,112(a0)
80002048:	07452e83          	lw	t4,116(a0)
8000204c:	07852f03          	lw	t5,120(a0)
80002050:	07c52f83          	lw	t6,124(a0)
80002054:	02852503          	lw	a0,40(a0)
80002058:	00008067          	ret

8000205c <context_switch>:
8000205c:	00050663          	beqz	a0,80002068 <skip_save>
80002060:	00000097          	auipc	ra,0x0
80002064:	eec080e7          	jalr	-276(ra) # 80001f4c <context_save>

80002068 <skip_save>:
80002068:	00058513          	mv	a0,a1
8000206c:	00000097          	auipc	ra,0x0
80002070:	f68080e7          	jalr	-152(ra) # 80001fd4 <context_restore>
80002074:	30200073          	mret

80002078 <process_init_p1>:
80002078:	ff010113          	addi	sp,sp,-16
8000207c:	00112623          	sw	ra,12(sp)
80002080:	00004297          	auipc	t0,0x4
80002084:	23028293          	addi	t0,t0,560 # 800062b0 <p1_current_minute>
80002088:	0002a023          	sw	zero,0(t0)
8000208c:	00004297          	auipc	t0,0x4
80002090:	22828293          	addi	t0,t0,552 # 800062b4 <p1_current_temp>
80002094:	00028023          	sb	zero,0(t0)
80002098:	00004297          	auipc	t0,0x4
8000209c:	21d28293          	addi	t0,t0,541 # 800062b5 <p1_sensor_active>
800020a0:	00100313          	li	t1,1
800020a4:	00628023          	sb	t1,0(t0)
800020a8:	00004297          	auipc	t0,0x4
800020ac:	20e28293          	addi	t0,t0,526 # 800062b6 <p1_limit_pc>
800020b0:	0002a023          	sw	zero,0(t0)
800020b4:	00c12083          	lw	ra,12(sp)
800020b8:	01010113          	addi	sp,sp,16
800020bc:	00008067          	ret

800020c0 <process_p1_temp_acquisition>:
800020c0:	fe010113          	addi	sp,sp,-32
800020c4:	00112e23          	sw	ra,28(sp)
800020c8:	00812c23          	sw	s0,24(sp)
800020cc:	00912a23          	sw	s1,20(sp)
800020d0:	01212823          	sw	s2,16(sp)
800020d4:	01312623          	sw	s3,12(sp)
800020d8:	00004417          	auipc	s0,0x4
800020dc:	1d840413          	addi	s0,s0,472 # 800062b0 <p1_current_minute>
800020e0:	00042483          	lw	s1,0(s0)
800020e4:	800202b7          	lui	t0,0x80020
800020e8:	009282b3          	add	t0,t0,s1
800020ec:	0002c903          	lbu	s2,0(t0) # 80020000 <TEMP_DATA_ADDR>
800020f0:	00004297          	auipc	t0,0x4
800020f4:	1c428293          	addi	t0,t0,452 # 800062b4 <p1_current_temp>
800020f8:	01228023          	sb	s2,0(t0)
800020fc:	00004297          	auipc	t0,0x4
80002100:	1d828293          	addi	t0,t0,472 # 800062d4 <satellite>
80002104:	01228023          	sb	s2,0(t0)
80002108:	00928123          	sb	s1,2(t0)
8000210c:	fffff097          	auipc	ra,0xfffff
80002110:	db4080e7          	jalr	-588(ra) # 80000ec0 <metrics_inc_temp_reading>
80002114:	00048313          	mv	t1,s1
80002118:	00600393          	li	t2,6

8000211c <mod_loop>:
8000211c:	00734663          	blt	t1,t2,80002128 <mod_done>
80002120:	40730333          	sub	t1,t1,t2
80002124:	ff9ff06f          	j	8000211c <mod_loop>

80002128 <mod_done>:
80002128:	00500293          	li	t0,5
8000212c:	02534663          	blt	t1,t0,80002158 <sensing_phase>

80002130 <transmission_phase>:
80002130:	00003517          	auipc	a0,0x3
80002134:	9b850513          	addi	a0,a0,-1608 # 80004ae8 <str_p1_transmission>
80002138:	00000097          	auipc	ra,0x0
8000213c:	5d0080e7          	jalr	1488(ra) # 80002708 <uart_puts>
80002140:	00090513          	mv	a0,s2
80002144:	00000097          	auipc	ra,0x0
80002148:	674080e7          	jalr	1652(ra) # 800027b8 <uart_send_temp>
8000214c:	fffff097          	auipc	ra,0xfffff
80002150:	d8c080e7          	jalr	-628(ra) # 80000ed8 <metrics_inc_temp_transmission>
80002154:	0300006f          	j	80002184 <check_temp_limit>

80002158 <sensing_phase>:
80002158:	00003517          	auipc	a0,0x3
8000215c:	9c350513          	addi	a0,a0,-1597 # 80004b1b <str_p1_sensing>
80002160:	00000097          	auipc	ra,0x0
80002164:	5a8080e7          	jalr	1448(ra) # 80002708 <uart_puts>
80002168:	00003517          	auipc	a0,0x3
8000216c:	9dc50513          	addi	a0,a0,-1572 # 80004b44 <str_p1_reading>
80002170:	00000097          	auipc	ra,0x0
80002174:	598080e7          	jalr	1432(ra) # 80002708 <uart_puts>
80002178:	00090513          	mv	a0,s2
8000217c:	00000097          	auipc	ra,0x0
80002180:	63c080e7          	jalr	1596(ra) # 800027b8 <uart_send_temp>

80002184 <check_temp_limit>:
80002184:	05a00293          	li	t0,90
80002188:	0522de63          	bge	t0,s2,800021e4 <no_limit_exceeded>

8000218c <limit_exceeded>:
8000218c:	00000317          	auipc	t1,0x0
80002190:	00004297          	auipc	t0,0x4
80002194:	12628293          	addi	t0,t0,294 # 800062b6 <p1_limit_pc>
80002198:	0062a023          	sw	t1,0(t0)
8000219c:	00003517          	auipc	a0,0x3
800021a0:	9b650513          	addi	a0,a0,-1610 # 80004b52 <str_p1_limit_alert>
800021a4:	00000097          	auipc	ra,0x0
800021a8:	564080e7          	jalr	1380(ra) # 80002708 <uart_puts>
800021ac:	00003517          	auipc	a0,0x3
800021b0:	9da50513          	addi	a0,a0,-1574 # 80004b86 <str_p1_pc_captured>
800021b4:	00000097          	auipc	ra,0x0
800021b8:	554080e7          	jalr	1364(ra) # 80002708 <uart_puts>
800021bc:	00030513          	mv	a0,t1
800021c0:	00001097          	auipc	ra,0x1
800021c4:	800080e7          	jalr	-2048(ra) # 800029c0 <uart_print_hex>
800021c8:	00003517          	auipc	a0,0x3
800021cc:	9d750513          	addi	a0,a0,-1577 # 80004b9f <str_newline>
800021d0:	00000097          	auipc	ra,0x0
800021d4:	538080e7          	jalr	1336(ra) # 80002708 <uart_puts>
800021d8:	00090513          	mv	a0,s2
800021dc:	fffff097          	auipc	ra,0xfffff
800021e0:	d14080e7          	jalr	-748(ra) # 80000ef0 <metrics_inc_temp_anomaly>

800021e4 <no_limit_exceeded>:
800021e4:	00148493          	addi	s1,s1,1
800021e8:	06400293          	li	t0,100
800021ec:	0054da63          	bge	s1,t0,80002200 <reset_minute>
800021f0:	00004297          	auipc	t0,0x4
800021f4:	0c028293          	addi	t0,t0,192 # 800062b0 <p1_current_minute>
800021f8:	0092a023          	sw	s1,0(t0)
800021fc:	0100006f          	j	8000220c <p1_exit>

80002200 <reset_minute>:
80002200:	00004297          	auipc	t0,0x4
80002204:	0b028293          	addi	t0,t0,176 # 800062b0 <p1_current_minute>
80002208:	0002a023          	sw	zero,0(t0)

8000220c <p1_exit>:
8000220c:	00c12983          	lw	s3,12(sp)
80002210:	01012903          	lw	s2,16(sp)
80002214:	01412483          	lw	s1,20(sp)
80002218:	01812403          	lw	s0,24(sp)
8000221c:	01c12083          	lw	ra,28(sp)
80002220:	02010113          	addi	sp,sp,32
80002224:	00008067          	ret

80002228 <process_init_p2>:
80002228:	ff010113          	addi	sp,sp,-16
8000222c:	00112623          	sw	ra,12(sp)
80002230:	00004297          	auipc	t0,0x4
80002234:	09028293          	addi	t0,t0,144 # 800062c0 <p2_cooling_active>
80002238:	00028023          	sb	zero,0(t0)
8000223c:	00004297          	auipc	t0,0x4
80002240:	08528293          	addi	t0,t0,133 # 800062c1 <p2_last_temp>
80002244:	00028023          	sb	zero,0(t0)
80002248:	00004297          	auipc	t0,0x4
8000224c:	07a28293          	addi	t0,t0,122 # 800062c2 <p2_activation_pc>
80002250:	0002a023          	sw	zero,0(t0)
80002254:	00004297          	auipc	t0,0x4
80002258:	07228293          	addi	t0,t0,114 # 800062c6 <p2_deactivation_pc>
8000225c:	0002a023          	sw	zero,0(t0)
80002260:	00c12083          	lw	ra,12(sp)
80002264:	01010113          	addi	sp,sp,16
80002268:	00008067          	ret

8000226c <process_p2_cooling_control>:
8000226c:	fe010113          	addi	sp,sp,-32
80002270:	00112e23          	sw	ra,28(sp)
80002274:	00812c23          	sw	s0,24(sp)
80002278:	00912a23          	sw	s1,20(sp)
8000227c:	01212823          	sw	s2,16(sp)
80002280:	01312623          	sw	s3,12(sp)
80002284:	00004297          	auipc	t0,0x4
80002288:	05028293          	addi	t0,t0,80 # 800062d4 <satellite>
8000228c:	0002c403          	lbu	s0,0(t0)
80002290:	00004297          	auipc	t0,0x4
80002294:	03128293          	addi	t0,t0,49 # 800062c1 <p2_last_temp>
80002298:	00828023          	sb	s0,0(t0)
8000229c:	00004297          	auipc	t0,0x4
800022a0:	02428293          	addi	t0,t0,36 # 800062c0 <p2_cooling_active>
800022a4:	0002c483          	lbu	s1,0(t0)
800022a8:	0a049a63          	bnez	s1,8000235c <check_deactivation>

800022ac <check_activation>:
800022ac:	05a00293          	li	t0,90
800022b0:	1882d063          	bge	t0,s0,80002430 <cooling_standby>

800022b4 <activate_cooling>:
800022b4:	00000317          	auipc	t1,0x0
800022b8:	00004297          	auipc	t0,0x4
800022bc:	00a28293          	addi	t0,t0,10 # 800062c2 <p2_activation_pc>
800022c0:	0062a023          	sw	t1,0(t0)
800022c4:	00004297          	auipc	t0,0x4
800022c8:	ffc28293          	addi	t0,t0,-4 # 800062c0 <p2_cooling_active>
800022cc:	00100313          	li	t1,1
800022d0:	00628023          	sb	t1,0(t0)
800022d4:	00004297          	auipc	t0,0x4
800022d8:	00028293          	mv	t0,t0
800022dc:	006280a3          	sb	t1,1(t0) # 800062d5 <satellite+0x1>
800022e0:	fffff097          	auipc	ra,0xfffff
800022e4:	c30080e7          	jalr	-976(ra) # 80000f10 <metrics_inc_cooling_activation>
800022e8:	00003517          	auipc	a0,0x3
800022ec:	8bc50513          	addi	a0,a0,-1860 # 80004ba4 <str_p2_activated_header>
800022f0:	00000097          	auipc	ra,0x0
800022f4:	418080e7          	jalr	1048(ra) # 80002708 <uart_puts>
800022f8:	00003517          	auipc	a0,0x3
800022fc:	8dc50513          	addi	a0,a0,-1828 # 80004bd4 <str_p2_temp_exceeded>
80002300:	00000097          	auipc	ra,0x0
80002304:	408080e7          	jalr	1032(ra) # 80002708 <uart_puts>
80002308:	00040513          	mv	a0,s0
8000230c:	00000097          	auipc	ra,0x0
80002310:	4ac080e7          	jalr	1196(ra) # 800027b8 <uart_send_temp>
80002314:	00003517          	auipc	a0,0x3
80002318:	8e250513          	addi	a0,a0,-1822 # 80004bf6 <str_p2_deploying>
8000231c:	00000097          	auipc	ra,0x0
80002320:	3ec080e7          	jalr	1004(ra) # 80002708 <uart_puts>
80002324:	00003517          	auipc	a0,0x3
80002328:	90350513          	addi	a0,a0,-1789 # 80004c27 <str_p2_pc_activation>
8000232c:	00000097          	auipc	ra,0x0
80002330:	3dc080e7          	jalr	988(ra) # 80002708 <uart_puts>
80002334:	00004297          	auipc	t0,0x4
80002338:	f8e28293          	addi	t0,t0,-114 # 800062c2 <p2_activation_pc>
8000233c:	0002a503          	lw	a0,0(t0)
80002340:	00000097          	auipc	ra,0x0
80002344:	680080e7          	jalr	1664(ra) # 800029c0 <uart_print_hex>
80002348:	00003517          	auipc	a0,0x3
8000234c:	9d450513          	addi	a0,a0,-1580 # 80004d1c <str_newline>
80002350:	00000097          	auipc	ra,0x0
80002354:	3b8080e7          	jalr	952(ra) # 80002708 <uart_puts>
80002358:	0f40006f          	j	8000244c <p2_exit>

8000235c <check_deactivation>:
8000235c:	03700293          	li	t0,55
80002360:	0a545463          	bge	s0,t0,80002408 <cooling_active_state>

80002364 <deactivate_cooling>:
80002364:	00000317          	auipc	t1,0x0
80002368:	00004297          	auipc	t0,0x4
8000236c:	f5e28293          	addi	t0,t0,-162 # 800062c6 <p2_deactivation_pc>
80002370:	0062a023          	sw	t1,0(t0)
80002374:	00004297          	auipc	t0,0x4
80002378:	f4c28293          	addi	t0,t0,-180 # 800062c0 <p2_cooling_active>
8000237c:	00028023          	sb	zero,0(t0)
80002380:	00004297          	auipc	t0,0x4
80002384:	f5428293          	addi	t0,t0,-172 # 800062d4 <satellite>
80002388:	000280a3          	sb	zero,1(t0)
8000238c:	fffff097          	auipc	ra,0xfffff
80002390:	b9c080e7          	jalr	-1124(ra) # 80000f28 <metrics_inc_cooling_deactivation>
80002394:	00003517          	auipc	a0,0x3
80002398:	8ad50513          	addi	a0,a0,-1875 # 80004c41 <str_p2_deactivated_header>
8000239c:	00000097          	auipc	ra,0x0
800023a0:	36c080e7          	jalr	876(ra) # 80002708 <uart_puts>
800023a4:	00003517          	auipc	a0,0x3
800023a8:	8d050513          	addi	a0,a0,-1840 # 80004c74 <str_p2_temp_normalized>
800023ac:	00000097          	auipc	ra,0x0
800023b0:	35c080e7          	jalr	860(ra) # 80002708 <uart_puts>
800023b4:	00040513          	mv	a0,s0
800023b8:	00000097          	auipc	ra,0x0
800023bc:	400080e7          	jalr	1024(ra) # 800027b8 <uart_send_temp>
800023c0:	00003517          	auipc	a0,0x3
800023c4:	8d350513          	addi	a0,a0,-1837 # 80004c93 <str_p2_standby_mode>
800023c8:	00000097          	auipc	ra,0x0
800023cc:	340080e7          	jalr	832(ra) # 80002708 <uart_puts>
800023d0:	00003517          	auipc	a0,0x3
800023d4:	8e850513          	addi	a0,a0,-1816 # 80004cb8 <str_p2_pc_deactivation>
800023d8:	00000097          	auipc	ra,0x0
800023dc:	330080e7          	jalr	816(ra) # 80002708 <uart_puts>
800023e0:	00004297          	auipc	t0,0x4
800023e4:	ee628293          	addi	t0,t0,-282 # 800062c6 <p2_deactivation_pc>
800023e8:	0002a503          	lw	a0,0(t0)
800023ec:	00000097          	auipc	ra,0x0
800023f0:	5d4080e7          	jalr	1492(ra) # 800029c0 <uart_print_hex>
800023f4:	00003517          	auipc	a0,0x3
800023f8:	92850513          	addi	a0,a0,-1752 # 80004d1c <str_newline>
800023fc:	00000097          	auipc	ra,0x0
80002400:	30c080e7          	jalr	780(ra) # 80002708 <uart_puts>
80002404:	0480006f          	j	8000244c <p2_exit>

80002408 <cooling_active_state>:
80002408:	fffff097          	auipc	ra,0xfffff
8000240c:	b38080e7          	jalr	-1224(ra) # 80000f40 <metrics_inc_cooling_time>
80002410:	00003517          	auipc	a0,0x3
80002414:	8c550513          	addi	a0,a0,-1851 # 80004cd5 <str_p2_cooling_active>
80002418:	00000097          	auipc	ra,0x0
8000241c:	2f0080e7          	jalr	752(ra) # 80002708 <uart_puts>
80002420:	00040513          	mv	a0,s0
80002424:	00000097          	auipc	ra,0x0
80002428:	394080e7          	jalr	916(ra) # 800027b8 <uart_send_temp>
8000242c:	0200006f          	j	8000244c <p2_exit>

80002430 <cooling_standby>:
80002430:	00003517          	auipc	a0,0x3
80002434:	8c750513          	addi	a0,a0,-1849 # 80004cf7 <str_p2_cooling_standby>
80002438:	00000097          	auipc	ra,0x0
8000243c:	2d0080e7          	jalr	720(ra) # 80002708 <uart_puts>
80002440:	00040513          	mv	a0,s0
80002444:	00000097          	auipc	ra,0x0
80002448:	374080e7          	jalr	884(ra) # 800027b8 <uart_send_temp>

8000244c <p2_exit>:
8000244c:	00c12983          	lw	s3,12(sp)
80002450:	01012903          	lw	s2,16(sp)
80002454:	01412483          	lw	s1,20(sp)
80002458:	01812403          	lw	s0,24(sp)
8000245c:	01c12083          	lw	ra,28(sp)
80002460:	02010113          	addi	sp,sp,32
80002464:	00008067          	ret

80002468 <p2_is_cooling_active>:
80002468:	00004297          	auipc	t0,0x4
8000246c:	e5828293          	addi	t0,t0,-424 # 800062c0 <p2_cooling_active>
80002470:	0002c503          	lbu	a0,0(t0)
80002474:	00008067          	ret

80002478 <process_init_p3>:
80002478:	ff010113          	addi	sp,sp,-16
8000247c:	00112623          	sw	ra,12(sp)
80002480:	00004297          	auipc	t0,0x4
80002484:	e5028293          	addi	t0,t0,-432 # 800062d0 <p3_display_count>
80002488:	0002a023          	sw	zero,0(t0)
8000248c:	00c12083          	lw	ra,12(sp)
80002490:	01010113          	addi	sp,sp,16
80002494:	00008067          	ret

80002498 <process_p3_uart_display>:
80002498:	fe010113          	addi	sp,sp,-32
8000249c:	00112e23          	sw	ra,28(sp)
800024a0:	00812c23          	sw	s0,24(sp)
800024a4:	00912a23          	sw	s1,20(sp)
800024a8:	01212823          	sw	s2,16(sp)
800024ac:	01312623          	sw	s3,12(sp)
800024b0:	00004297          	auipc	t0,0x4
800024b4:	e2028293          	addi	t0,t0,-480 # 800062d0 <p3_display_count>
800024b8:	0002a303          	lw	t1,0(t0)
800024bc:	00130313          	addi	t1,t1,1 # 80002365 <deactivate_cooling+0x1>
800024c0:	0062a023          	sw	t1,0(t0)
800024c4:	00003517          	auipc	a0,0x3
800024c8:	85c50513          	addi	a0,a0,-1956 # 80004d20 <str_p3_header>
800024cc:	00000097          	auipc	ra,0x0
800024d0:	23c080e7          	jalr	572(ra) # 80002708 <uart_puts>
800024d4:	00004417          	auipc	s0,0x4
800024d8:	e0040413          	addi	s0,s0,-512 # 800062d4 <satellite>
800024dc:	00044483          	lbu	s1,0(s0)
800024e0:	00144903          	lbu	s2,1(s0)
800024e4:	00244983          	lbu	s3,2(s0)
800024e8:	00003517          	auipc	a0,0x3
800024ec:	86950513          	addi	a0,a0,-1943 # 80004d51 <str_p3_temp>
800024f0:	00000097          	auipc	ra,0x0
800024f4:	218080e7          	jalr	536(ra) # 80002708 <uart_puts>
800024f8:	00048513          	mv	a0,s1
800024fc:	00000097          	auipc	ra,0x0
80002500:	2bc080e7          	jalr	700(ra) # 800027b8 <uart_send_temp>
80002504:	00003517          	auipc	a0,0x3
80002508:	86050513          	addi	a0,a0,-1952 # 80004d64 <str_p3_cooling>
8000250c:	00000097          	auipc	ra,0x0
80002510:	1fc080e7          	jalr	508(ra) # 80002708 <uart_puts>
80002514:	00091c63          	bnez	s2,8000252c <cooling_is_active>

80002518 <cooling_is_off>:
80002518:	00003517          	auipc	a0,0x3
8000251c:	87350513          	addi	a0,a0,-1933 # 80004d8b <str_p3_cooling_off>
80002520:	00000097          	auipc	ra,0x0
80002524:	1e8080e7          	jalr	488(ra) # 80002708 <uart_puts>
80002528:	0140006f          	j	8000253c <show_orbital_pos>

8000252c <cooling_is_active>:
8000252c:	00003517          	auipc	a0,0x3
80002530:	85750513          	addi	a0,a0,-1961 # 80004d83 <str_p3_cooling_on>
80002534:	00000097          	auipc	ra,0x0
80002538:	1d4080e7          	jalr	468(ra) # 80002708 <uart_puts>

8000253c <show_orbital_pos>:
8000253c:	00003517          	auipc	a0,0x3
80002540:	85a50513          	addi	a0,a0,-1958 # 80004d96 <str_p3_orbital>
80002544:	00000097          	auipc	ra,0x0
80002548:	1c4080e7          	jalr	452(ra) # 80002708 <uart_puts>
8000254c:	02a00293          	li	t0,42
80002550:	0059cc63          	blt	s3,t0,80002568 <bright_zone>

80002554 <dark_zone>:
80002554:	00003517          	auipc	a0,0x3
80002558:	87350513          	addi	a0,a0,-1933 # 80004dc7 <str_p3_zone_dark>
8000255c:	00000097          	auipc	ra,0x0
80002560:	1ac080e7          	jalr	428(ra) # 80002708 <uart_puts>
80002564:	0140006f          	j	80002578 <show_minute>

80002568 <bright_zone>:
80002568:	00003517          	auipc	a0,0x3
8000256c:	84250513          	addi	a0,a0,-1982 # 80004daa <str_p3_zone_bright>
80002570:	00000097          	auipc	ra,0x0
80002574:	198080e7          	jalr	408(ra) # 80002708 <uart_puts>

80002578 <show_minute>:
80002578:	00003517          	auipc	a0,0x3
8000257c:	86a50513          	addi	a0,a0,-1942 # 80004de2 <str_p3_minute>
80002580:	00000097          	auipc	ra,0x0
80002584:	188080e7          	jalr	392(ra) # 80002708 <uart_puts>
80002588:	00098513          	mv	a0,s3
8000258c:	00000097          	auipc	ra,0x0
80002590:	094080e7          	jalr	148(ra) # 80002620 <uart_print_decimal>
80002594:	00003517          	auipc	a0,0x3
80002598:	86650513          	addi	a0,a0,-1946 # 80004dfa <str_p3_of_100>
8000259c:	00000097          	auipc	ra,0x0
800025a0:	16c080e7          	jalr	364(ra) # 80002708 <uart_puts>
800025a4:	00003517          	auipc	a0,0x3
800025a8:	85e50513          	addi	a0,a0,-1954 # 80004e02 <str_p3_system_status>
800025ac:	00000097          	auipc	ra,0x0
800025b0:	15c080e7          	jalr	348(ra) # 80002708 <uart_puts>
800025b4:	05a00293          	li	t0,90
800025b8:	0292c063          	blt	t0,s1,800025d8 <system_warning>
800025bc:	02d00293          	li	t0,45
800025c0:	0054cc63          	blt	s1,t0,800025d8 <system_warning>

800025c4 <system_nominal>:
800025c4:	00003517          	auipc	a0,0x3
800025c8:	85850513          	addi	a0,a0,-1960 # 80004e1c <str_p3_status_ok>
800025cc:	00000097          	auipc	ra,0x0
800025d0:	13c080e7          	jalr	316(ra) # 80002708 <uart_puts>
800025d4:	0140006f          	j	800025e8 <p3_footer>

800025d8 <system_warning>:
800025d8:	00003517          	auipc	a0,0x3
800025dc:	84c50513          	addi	a0,a0,-1972 # 80004e24 <str_p3_status_warning>
800025e0:	00000097          	auipc	ra,0x0
800025e4:	128080e7          	jalr	296(ra) # 80002708 <uart_puts>

800025e8 <p3_footer>:
800025e8:	00003517          	auipc	a0,0x3
800025ec:	86d50513          	addi	a0,a0,-1939 # 80004e55 <str_p3_separator>
800025f0:	00000097          	auipc	ra,0x0
800025f4:	118080e7          	jalr	280(ra) # 80002708 <uart_puts>
800025f8:	0c800513          	li	a0,200
800025fc:	fffff097          	auipc	ra,0xfffff
80002600:	95c080e7          	jalr	-1700(ra) # 80000f58 <metrics_inc_uart_bytes>

80002604 <p3_exit>:
80002604:	00c12983          	lw	s3,12(sp)
80002608:	01012903          	lw	s2,16(sp)
8000260c:	01412483          	lw	s1,20(sp)
80002610:	01812403          	lw	s0,24(sp)
80002614:	01c12083          	lw	ra,28(sp)
80002618:	02010113          	addi	sp,sp,32
8000261c:	00008067          	ret

80002620 <uart_print_decimal>:
80002620:	fe010113          	addi	sp,sp,-32
80002624:	00112e23          	sw	ra,28(sp)
80002628:	00812c23          	sw	s0,24(sp)
8000262c:	00912a23          	sw	s1,20(sp)
80002630:	00050413          	mv	s0,a0
80002634:	00810493          	addi	s1,sp,8
80002638:	00041a63          	bnez	s0,8000264c <convert_loop>
8000263c:	03000513          	li	a0,48
80002640:	00000097          	auipc	ra,0x0
80002644:	080080e7          	jalr	128(ra) # 800026c0 <uart_putc>
80002648:	0600006f          	j	800026a8 <print_decimal_exit>

8000264c <convert_loop>:
8000264c:	00000393          	li	t2,0
80002650:	00040293          	mv	t0,s0

80002654 <digit_loop>:
80002654:	02028c63          	beqz	t0,8000268c <print_digits>
80002658:	00a00313          	li	t1,10
8000265c:	00028e13          	mv	t3,t0
80002660:	00000e93          	li	t4,0

80002664 <div_loop>:
80002664:	006e4863          	blt	t3,t1,80002674 <div_done>
80002668:	406e0e33          	sub	t3,t3,t1
8000266c:	001e8e93          	addi	t4,t4,1
80002670:	ff5ff06f          	j	80002664 <div_loop>

80002674 <div_done>:
80002674:	030e0e13          	addi	t3,t3,48
80002678:	00748f33          	add	t5,s1,t2
8000267c:	01cf0023          	sb	t3,0(t5)
80002680:	000e8293          	mv	t0,t4
80002684:	00138393          	addi	t2,t2,1
80002688:	fcdff06f          	j	80002654 <digit_loop>

8000268c <print_digits>:
8000268c:	00038e63          	beqz	t2,800026a8 <print_decimal_exit>
80002690:	fff38393          	addi	t2,t2,-1
80002694:	00748eb3          	add	t4,s1,t2
80002698:	000ec503          	lbu	a0,0(t4)
8000269c:	00000097          	auipc	ra,0x0
800026a0:	024080e7          	jalr	36(ra) # 800026c0 <uart_putc>
800026a4:	fe9ff06f          	j	8000268c <print_digits>

800026a8 <print_decimal_exit>:
800026a8:	01412483          	lw	s1,20(sp)
800026ac:	01812403          	lw	s0,24(sp)
800026b0:	01c12083          	lw	ra,28(sp)
800026b4:	02010113          	addi	sp,sp,32
800026b8:	00008067          	ret

800026bc <uart_init>:
800026bc:	00008067          	ret

800026c0 <uart_putc>:
800026c0:	10000737          	lui	a4,0x10000
800026c4:	00570713          	addi	a4,a4,5 # 10000005 <COOLING_THRESHOLD_ON+0xfffffab>
800026c8:	00074783          	lbu	a5,0(a4)
800026cc:	0207f793          	andi	a5,a5,32
800026d0:	fe078ce3          	beqz	a5,800026c8 <uart_putc+0x8>
800026d4:	100007b7          	lui	a5,0x10000
800026d8:	00a78023          	sb	a0,0(a5) # 10000000 <COOLING_THRESHOLD_ON+0xfffffa6>
800026dc:	00100513          	li	a0,1
800026e0:	fffff317          	auipc	t1,0xfffff
800026e4:	87830067          	jr	-1928(t1) # 80000f58 <metrics_inc_uart_bytes>

800026e8 <uart_getc>:
800026e8:	10000737          	lui	a4,0x10000
800026ec:	00570713          	addi	a4,a4,5 # 10000005 <COOLING_THRESHOLD_ON+0xfffffab>
800026f0:	00074783          	lbu	a5,0(a4)
800026f4:	0017f793          	andi	a5,a5,1
800026f8:	fe078ce3          	beqz	a5,800026f0 <uart_getc+0x8>
800026fc:	100007b7          	lui	a5,0x10000
80002700:	0007c503          	lbu	a0,0(a5) # 10000000 <COOLING_THRESHOLD_ON+0xfffffa6>
80002704:	00008067          	ret

80002708 <uart_puts>:
80002708:	00054783          	lbu	a5,0(a0)
8000270c:	0a078463          	beqz	a5,800027b4 <uart_puts+0xac>
80002710:	fe010113          	addi	sp,sp,-32
80002714:	00812c23          	sw	s0,24(sp)
80002718:	10000437          	lui	s0,0x10000
8000271c:	00912a23          	sw	s1,20(sp)
80002720:	01212823          	sw	s2,16(sp)
80002724:	01312623          	sw	s3,12(sp)
80002728:	01412423          	sw	s4,8(sp)
8000272c:	00112e23          	sw	ra,28(sp)
80002730:	00050493          	mv	s1,a0
80002734:	00a00993          	li	s3,10
80002738:	10000937          	lui	s2,0x10000
8000273c:	00540413          	addi	s0,s0,5 # 10000005 <COOLING_THRESHOLD_ON+0xfffffab>
80002740:	00d00a13          	li	s4,13
80002744:	05378863          	beq	a5,s3,80002794 <uart_puts+0x8c>
80002748:	0004c703          	lbu	a4,0(s1)
8000274c:	00148493          	addi	s1,s1,1
80002750:	00044783          	lbu	a5,0(s0)
80002754:	0207f793          	andi	a5,a5,32
80002758:	fe078ce3          	beqz	a5,80002750 <uart_puts+0x48>
8000275c:	00e90023          	sb	a4,0(s2) # 10000000 <COOLING_THRESHOLD_ON+0xfffffa6>
80002760:	00100513          	li	a0,1
80002764:	ffffe097          	auipc	ra,0xffffe
80002768:	7f4080e7          	jalr	2036(ra) # 80000f58 <metrics_inc_uart_bytes>
8000276c:	0004c783          	lbu	a5,0(s1)
80002770:	fc079ae3          	bnez	a5,80002744 <uart_puts+0x3c>
80002774:	01c12083          	lw	ra,28(sp)
80002778:	01812403          	lw	s0,24(sp)
8000277c:	01412483          	lw	s1,20(sp)
80002780:	01012903          	lw	s2,16(sp)
80002784:	00c12983          	lw	s3,12(sp)
80002788:	00812a03          	lw	s4,8(sp)
8000278c:	02010113          	addi	sp,sp,32
80002790:	00008067          	ret
80002794:	00044783          	lbu	a5,0(s0)
80002798:	0207f793          	andi	a5,a5,32
8000279c:	fe078ce3          	beqz	a5,80002794 <uart_puts+0x8c>
800027a0:	01490023          	sb	s4,0(s2)
800027a4:	00100513          	li	a0,1
800027a8:	ffffe097          	auipc	ra,0xffffe
800027ac:	7b0080e7          	jalr	1968(ra) # 80000f58 <metrics_inc_uart_bytes>
800027b0:	f99ff06f          	j	80002748 <uart_puts+0x40>
800027b4:	00008067          	ret

800027b8 <uart_send_temp>:
800027b8:	fd010113          	addi	sp,sp,-48
800027bc:	02812423          	sw	s0,40(sp)
800027c0:	10000437          	lui	s0,0x10000
800027c4:	02912223          	sw	s1,36(sp)
800027c8:	03212023          	sw	s2,32(sp)
800027cc:	01312e23          	sw	s3,28(sp)
800027d0:	01412c23          	sw	s4,24(sp)
800027d4:	01512a23          	sw	s5,20(sp)
800027d8:	02112623          	sw	ra,44(sp)
800027dc:	01612823          	sw	s6,16(sp)
800027e0:	00050493          	mv	s1,a0
800027e4:	00002917          	auipc	s2,0x2
800027e8:	2e890913          	addi	s2,s2,744 # 80004acc <__clzsi2+0xf20>
800027ec:	100009b7          	lui	s3,0x10000
800027f0:	00540413          	addi	s0,s0,5 # 10000005 <COOLING_THRESHOLD_ON+0xfffffab>
800027f4:	00a00a13          	li	s4,10
800027f8:	00d00a93          	li	s5,13
800027fc:	00094703          	lbu	a4,0(s2)
80002800:	00190913          	addi	s2,s2,1
80002804:	00044783          	lbu	a5,0(s0)
80002808:	0207f793          	andi	a5,a5,32
8000280c:	fe078ce3          	beqz	a5,80002804 <uart_send_temp+0x4c>
80002810:	00e98023          	sb	a4,0(s3) # 10000000 <COOLING_THRESHOLD_ON+0xfffffa6>
80002814:	00100513          	li	a0,1
80002818:	ffffe097          	auipc	ra,0xffffe
8000281c:	740080e7          	jalr	1856(ra) # 80000f58 <metrics_inc_uart_bytes>
80002820:	00094783          	lbu	a5,0(s2)
80002824:	02078463          	beqz	a5,8000284c <uart_send_temp+0x94>
80002828:	fd479ae3          	bne	a5,s4,800027fc <uart_send_temp+0x44>
8000282c:	00044783          	lbu	a5,0(s0)
80002830:	0207f793          	andi	a5,a5,32
80002834:	fe078ce3          	beqz	a5,8000282c <uart_send_temp+0x74>
80002838:	01598023          	sb	s5,0(s3)
8000283c:	00100513          	li	a0,1
80002840:	ffffe097          	auipc	ra,0xffffe
80002844:	718080e7          	jalr	1816(ra) # 80000f58 <metrics_inc_uart_bytes>
80002848:	fb5ff06f          	j	800027fc <uart_send_temp+0x44>
8000284c:	00012223          	sw	zero,4(sp)
80002850:	00012423          	sw	zero,8(sp)
80002854:	00012623          	sw	zero,12(sp)
80002858:	00048413          	mv	s0,s1
8000285c:	00000913          	li	s2,0
80002860:	00410993          	addi	s3,sp,4
80002864:	00900a93          	li	s5,9
80002868:	00b00b13          	li	s6,11
8000286c:	0e048e63          	beqz	s1,80002968 <uart_send_temp+0x1b0>
80002870:	00a00593          	li	a1,10
80002874:	00040513          	mv	a0,s0
80002878:	00001097          	auipc	ra,0x1
8000287c:	2d0080e7          	jalr	720(ra) # 80003b48 <__umodsi3>
80002880:	00190913          	addi	s2,s2,1
80002884:	03050793          	addi	a5,a0,48
80002888:	012984b3          	add	s1,s3,s2
8000288c:	00040513          	mv	a0,s0
80002890:	00a00593          	li	a1,10
80002894:	fef48fa3          	sb	a5,-1(s1)
80002898:	00040a13          	mv	s4,s0
8000289c:	00001097          	auipc	ra,0x1
800028a0:	264080e7          	jalr	612(ra) # 80003b00 <__hidden___udivsi3>
800028a4:	00050413          	mv	s0,a0
800028a8:	014af463          	bgeu	s5,s4,800028b0 <uart_send_temp+0xf8>
800028ac:	fd6912e3          	bne	s2,s6,80002870 <uart_send_temp+0xb8>
800028b0:	10000437          	lui	s0,0x10000
800028b4:	10000937          	lui	s2,0x10000
800028b8:	00540413          	addi	s0,s0,5 # 10000005 <COOLING_THRESHOLD_ON+0xfffffab>
800028bc:	fff4c703          	lbu	a4,-1(s1)
800028c0:	00044783          	lbu	a5,0(s0)
800028c4:	0207f793          	andi	a5,a5,32
800028c8:	fe078ce3          	beqz	a5,800028c0 <uart_send_temp+0x108>
800028cc:	00e90023          	sb	a4,0(s2) # 10000000 <COOLING_THRESHOLD_ON+0xfffffa6>
800028d0:	00100513          	li	a0,1
800028d4:	fff48493          	addi	s1,s1,-1
800028d8:	ffffe097          	auipc	ra,0xffffe
800028dc:	680080e7          	jalr	1664(ra) # 80000f58 <metrics_inc_uart_bytes>
800028e0:	fc999ee3          	bne	s3,s1,800028bc <uart_send_temp+0x104>
800028e4:	10000737          	lui	a4,0x10000
800028e8:	00570713          	addi	a4,a4,5 # 10000005 <COOLING_THRESHOLD_ON+0xfffffab>
800028ec:	00074783          	lbu	a5,0(a4)
800028f0:	0207f793          	andi	a5,a5,32
800028f4:	fe078ce3          	beqz	a5,800028ec <uart_send_temp+0x134>
800028f8:	04300713          	li	a4,67
800028fc:	100007b7          	lui	a5,0x10000
80002900:	00e78023          	sb	a4,0(a5) # 10000000 <COOLING_THRESHOLD_ON+0xfffffa6>
80002904:	00100513          	li	a0,1
80002908:	ffffe097          	auipc	ra,0xffffe
8000290c:	650080e7          	jalr	1616(ra) # 80000f58 <metrics_inc_uart_bytes>
80002910:	10000737          	lui	a4,0x10000
80002914:	00570713          	addi	a4,a4,5 # 10000005 <COOLING_THRESHOLD_ON+0xfffffab>
80002918:	00074783          	lbu	a5,0(a4)
8000291c:	0207f793          	andi	a5,a5,32
80002920:	fe078ce3          	beqz	a5,80002918 <uart_send_temp+0x160>
80002924:	100007b7          	lui	a5,0x10000
80002928:	00a00713          	li	a4,10
8000292c:	00e78023          	sb	a4,0(a5) # 10000000 <COOLING_THRESHOLD_ON+0xfffffa6>
80002930:	00100513          	li	a0,1
80002934:	ffffe097          	auipc	ra,0xffffe
80002938:	624080e7          	jalr	1572(ra) # 80000f58 <metrics_inc_uart_bytes>
8000293c:	02812403          	lw	s0,40(sp)
80002940:	02c12083          	lw	ra,44(sp)
80002944:	02412483          	lw	s1,36(sp)
80002948:	02012903          	lw	s2,32(sp)
8000294c:	01c12983          	lw	s3,28(sp)
80002950:	01812a03          	lw	s4,24(sp)
80002954:	01412a83          	lw	s5,20(sp)
80002958:	01012b03          	lw	s6,16(sp)
8000295c:	03010113          	addi	sp,sp,48
80002960:	ffffe317          	auipc	t1,0xffffe
80002964:	61030067          	jr	1552(t1) # 80000f70 <metrics_inc_uart_message>
80002968:	10000737          	lui	a4,0x10000
8000296c:	00570713          	addi	a4,a4,5 # 10000005 <COOLING_THRESHOLD_ON+0xfffffab>
80002970:	00074783          	lbu	a5,0(a4)
80002974:	0207f793          	andi	a5,a5,32
80002978:	fe078ce3          	beqz	a5,80002970 <uart_send_temp+0x1b8>
8000297c:	100007b7          	lui	a5,0x10000
80002980:	03000713          	li	a4,48
80002984:	00e78023          	sb	a4,0(a5) # 10000000 <COOLING_THRESHOLD_ON+0xfffffa6>
80002988:	00100513          	li	a0,1
8000298c:	ffffe097          	auipc	ra,0xffffe
80002990:	5cc080e7          	jalr	1484(ra) # 80000f58 <metrics_inc_uart_bytes>
80002994:	f51ff06f          	j	800028e4 <uart_send_temp+0x12c>

80002998 <uart_recv_temp>:
80002998:	10000737          	lui	a4,0x10000
8000299c:	00570713          	addi	a4,a4,5 # 10000005 <COOLING_THRESHOLD_ON+0xfffffab>
800029a0:	00074783          	lbu	a5,0(a4)
800029a4:	0017f793          	andi	a5,a5,1
800029a8:	fe078ce3          	beqz	a5,800029a0 <uart_recv_temp+0x8>
800029ac:	100007b7          	lui	a5,0x10000
800029b0:	0007c503          	lbu	a0,0(a5) # 10000000 <COOLING_THRESHOLD_ON+0xfffffa6>
800029b4:	fd050513          	addi	a0,a0,-48
800029b8:	0ff57513          	zext.b	a0,a0
800029bc:	00008067          	ret

800029c0 <uart_print_hex>:
800029c0:	00002797          	auipc	a5,0x2
800029c4:	11478793          	addi	a5,a5,276 # 80004ad4 <__clzsi2+0xf28>
800029c8:	0087a683          	lw	a3,8(a5)
800029cc:	0007a583          	lw	a1,0(a5)
800029d0:	0047a603          	lw	a2,4(a5)
800029d4:	00c7a703          	lw	a4,12(a5)
800029d8:	0107c783          	lbu	a5,16(a5)
800029dc:	fc010113          	addi	sp,sp,-64
800029e0:	02912a23          	sw	s1,52(sp)
800029e4:	00410493          	addi	s1,sp,4
800029e8:	00d12a23          	sw	a3,20(sp)
800029ec:	00f10e23          	sb	a5,28(sp)
800029f0:	02112e23          	sw	ra,60(sp)
800029f4:	02812c23          	sw	s0,56(sp)
800029f8:	03212823          	sw	s2,48(sp)
800029fc:	03312623          	sw	s3,44(sp)
80002a00:	00b12623          	sw	a1,12(sp)
80002a04:	00c12823          	sw	a2,16(sp)
80002a08:	00e12c23          	sw	a4,24(sp)
80002a0c:	ffc10693          	addi	a3,sp,-4
80002a10:	00048793          	mv	a5,s1
80002a14:	00f57713          	andi	a4,a0,15
80002a18:	02070713          	addi	a4,a4,32
80002a1c:	00270733          	add	a4,a4,sp
80002a20:	fec74703          	lbu	a4,-20(a4)
80002a24:	fff78793          	addi	a5,a5,-1
80002a28:	00455513          	srli	a0,a0,0x4
80002a2c:	00e78423          	sb	a4,8(a5)
80002a30:	fed792e3          	bne	a5,a3,80002a14 <uart_print_hex+0x54>
80002a34:	10000437          	lui	s0,0x10000
80002a38:	00848993          	addi	s3,s1,8
80002a3c:	10000937          	lui	s2,0x10000
80002a40:	00540413          	addi	s0,s0,5 # 10000005 <COOLING_THRESHOLD_ON+0xfffffab>
80002a44:	0004c703          	lbu	a4,0(s1)
80002a48:	00044783          	lbu	a5,0(s0)
80002a4c:	0207f793          	andi	a5,a5,32
80002a50:	fe078ce3          	beqz	a5,80002a48 <uart_print_hex+0x88>
80002a54:	00e90023          	sb	a4,0(s2) # 10000000 <COOLING_THRESHOLD_ON+0xfffffa6>
80002a58:	00100513          	li	a0,1
80002a5c:	00148493          	addi	s1,s1,1
80002a60:	ffffe097          	auipc	ra,0xffffe
80002a64:	4f8080e7          	jalr	1272(ra) # 80000f58 <metrics_inc_uart_bytes>
80002a68:	fd349ee3          	bne	s1,s3,80002a44 <uart_print_hex+0x84>
80002a6c:	03c12083          	lw	ra,60(sp)
80002a70:	03812403          	lw	s0,56(sp)
80002a74:	03412483          	lw	s1,52(sp)
80002a78:	03012903          	lw	s2,48(sp)
80002a7c:	02c12983          	lw	s3,44(sp)
80002a80:	04010113          	addi	sp,sp,64
80002a84:	00008067          	ret

80002a88 <satellite_init>:
80002a88:	00004797          	auipc	a5,0x4
80002a8c:	84c78793          	addi	a5,a5,-1972 # 800062d4 <satellite>
80002a90:	02d00713          	li	a4,45
80002a94:	0007a023          	sw	zero,0(a5)
80002a98:	0007a223          	sw	zero,4(a5)
80002a9c:	00e79423          	sh	a4,8(a5)
80002aa0:	00008067          	ret

80002aa4 <satellite_update_time>:
80002aa4:	00004797          	auipc	a5,0x4
80002aa8:	83078793          	addi	a5,a5,-2000 # 800062d4 <satellite>
80002aac:	0007a683          	lw	a3,0(a5)
80002ab0:	06300713          	li	a4,99
80002ab4:	00d50533          	add	a0,a0,a3
80002ab8:	00a76c63          	bltu	a4,a0,80002ad0 <satellite_update_time+0x2c>
80002abc:	02a53713          	sltiu	a4,a0,42
80002ac0:	00173713          	seqz	a4,a4
80002ac4:	00a7a023          	sw	a0,0(a5)
80002ac8:	00e7a223          	sw	a4,4(a5)
80002acc:	00008067          	ret
80002ad0:	00000713          	li	a4,0
80002ad4:	00000513          	li	a0,0
80002ad8:	00a7a023          	sw	a0,0(a5)
80002adc:	00e7a223          	sw	a4,4(a5)
80002ae0:	00008067          	ret

80002ae4 <satellite_get_zone>:
80002ae4:	00003517          	auipc	a0,0x3
80002ae8:	7f452503          	lw	a0,2036(a0) # 800062d8 <satellite+0x4>
80002aec:	00008067          	ret

80002af0 <__udivdi3>:
80002af0:	fd010113          	addi	sp,sp,-48
80002af4:	01412c23          	sw	s4,24(sp)
80002af8:	02112623          	sw	ra,44(sp)
80002afc:	02812423          	sw	s0,40(sp)
80002b00:	02912223          	sw	s1,36(sp)
80002b04:	03212023          	sw	s2,32(sp)
80002b08:	01312e23          	sw	s3,28(sp)
80002b0c:	01512a23          	sw	s5,20(sp)
80002b10:	01612823          	sw	s6,16(sp)
80002b14:	01712623          	sw	s7,12(sp)
80002b18:	01812423          	sw	s8,8(sp)
80002b1c:	01912223          	sw	s9,4(sp)
80002b20:	00050a13          	mv	s4,a0
80002b24:	3c069863          	bnez	a3,80002ef4 <__udivdi3+0x404>
80002b28:	00060993          	mv	s3,a2
80002b2c:	00050493          	mv	s1,a0
80002b30:	00002797          	auipc	a5,0x2
80002b34:	39478793          	addi	a5,a5,916 # 80004ec4 <__clz_tab>
80002b38:	14c5f463          	bgeu	a1,a2,80002c80 <__udivdi3+0x190>
80002b3c:	00010737          	lui	a4,0x10
80002b40:	00058913          	mv	s2,a1
80002b44:	12e67463          	bgeu	a2,a4,80002c6c <__udivdi3+0x17c>
80002b48:	10063713          	sltiu	a4,a2,256
80002b4c:	00173713          	seqz	a4,a4
80002b50:	00371713          	slli	a4,a4,0x3
80002b54:	00e656b3          	srl	a3,a2,a4
80002b58:	00d787b3          	add	a5,a5,a3
80002b5c:	0007c683          	lbu	a3,0(a5)
80002b60:	00e68733          	add	a4,a3,a4
80002b64:	02000693          	li	a3,32
80002b68:	40e687b3          	sub	a5,a3,a4
80002b6c:	00e68c63          	beq	a3,a4,80002b84 <__udivdi3+0x94>
80002b70:	00f59933          	sll	s2,a1,a5
80002b74:	00ea5733          	srl	a4,s4,a4
80002b78:	00f619b3          	sll	s3,a2,a5
80002b7c:	01276933          	or	s2,a4,s2
80002b80:	00fa14b3          	sll	s1,s4,a5
80002b84:	0109da93          	srli	s5,s3,0x10
80002b88:	000a8593          	mv	a1,s5
80002b8c:	00090513          	mv	a0,s2
80002b90:	01099b13          	slli	s6,s3,0x10
80002b94:	00001097          	auipc	ra,0x1
80002b98:	f6c080e7          	jalr	-148(ra) # 80003b00 <__hidden___udivsi3>
80002b9c:	010b5b13          	srli	s6,s6,0x10
80002ba0:	00050593          	mv	a1,a0
80002ba4:	00050a13          	mv	s4,a0
80002ba8:	000b0513          	mv	a0,s6
80002bac:	00001097          	auipc	ra,0x1
80002bb0:	f28080e7          	jalr	-216(ra) # 80003ad4 <__mulsi3>
80002bb4:	00050413          	mv	s0,a0
80002bb8:	000a8593          	mv	a1,s5
80002bbc:	00090513          	mv	a0,s2
80002bc0:	00001097          	auipc	ra,0x1
80002bc4:	f88080e7          	jalr	-120(ra) # 80003b48 <__umodsi3>
80002bc8:	01051513          	slli	a0,a0,0x10
80002bcc:	0104d713          	srli	a4,s1,0x10
80002bd0:	00a76733          	or	a4,a4,a0
80002bd4:	000a0913          	mv	s2,s4
80002bd8:	00877e63          	bgeu	a4,s0,80002bf4 <__udivdi3+0x104>
80002bdc:	00e98733          	add	a4,s3,a4
80002be0:	fffa0913          	addi	s2,s4,-1
80002be4:	01376863          	bltu	a4,s3,80002bf4 <__udivdi3+0x104>
80002be8:	00877663          	bgeu	a4,s0,80002bf4 <__udivdi3+0x104>
80002bec:	ffea0913          	addi	s2,s4,-2
80002bf0:	01370733          	add	a4,a4,s3
80002bf4:	40870433          	sub	s0,a4,s0
80002bf8:	000a8593          	mv	a1,s5
80002bfc:	00040513          	mv	a0,s0
80002c00:	00001097          	auipc	ra,0x1
80002c04:	f00080e7          	jalr	-256(ra) # 80003b00 <__hidden___udivsi3>
80002c08:	00050593          	mv	a1,a0
80002c0c:	00050a13          	mv	s4,a0
80002c10:	000b0513          	mv	a0,s6
80002c14:	00001097          	auipc	ra,0x1
80002c18:	ec0080e7          	jalr	-320(ra) # 80003ad4 <__mulsi3>
80002c1c:	00050b13          	mv	s6,a0
80002c20:	000a8593          	mv	a1,s5
80002c24:	00040513          	mv	a0,s0
80002c28:	00001097          	auipc	ra,0x1
80002c2c:	f20080e7          	jalr	-224(ra) # 80003b48 <__umodsi3>
80002c30:	01049493          	slli	s1,s1,0x10
80002c34:	01051513          	slli	a0,a0,0x10
80002c38:	0104d493          	srli	s1,s1,0x10
80002c3c:	00a4e4b3          	or	s1,s1,a0
80002c40:	000a0713          	mv	a4,s4
80002c44:	0164fc63          	bgeu	s1,s6,80002c5c <__udivdi3+0x16c>
80002c48:	009984b3          	add	s1,s3,s1
80002c4c:	fffa0713          	addi	a4,s4,-1
80002c50:	0134e663          	bltu	s1,s3,80002c5c <__udivdi3+0x16c>
80002c54:	0164f463          	bgeu	s1,s6,80002c5c <__udivdi3+0x16c>
80002c58:	ffea0713          	addi	a4,s4,-2
80002c5c:	01091793          	slli	a5,s2,0x10
80002c60:	00e7e7b3          	or	a5,a5,a4
80002c64:	00000913          	li	s2,0
80002c68:	1380006f          	j	80002da0 <__udivdi3+0x2b0>
80002c6c:	010006b7          	lui	a3,0x1000
80002c70:	01800713          	li	a4,24
80002c74:	eed670e3          	bgeu	a2,a3,80002b54 <__udivdi3+0x64>
80002c78:	01000713          	li	a4,16
80002c7c:	ed9ff06f          	j	80002b54 <__udivdi3+0x64>
80002c80:	00000713          	li	a4,0
80002c84:	00060c63          	beqz	a2,80002c9c <__udivdi3+0x1ac>
80002c88:	00010737          	lui	a4,0x10
80002c8c:	14e67863          	bgeu	a2,a4,80002ddc <__udivdi3+0x2ec>
80002c90:	10063713          	sltiu	a4,a2,256
80002c94:	00173713          	seqz	a4,a4
80002c98:	00371713          	slli	a4,a4,0x3
80002c9c:	00e656b3          	srl	a3,a2,a4
80002ca0:	00d787b3          	add	a5,a5,a3
80002ca4:	0007c783          	lbu	a5,0(a5)
80002ca8:	02000693          	li	a3,32
80002cac:	00e787b3          	add	a5,a5,a4
80002cb0:	40f68733          	sub	a4,a3,a5
80002cb4:	12f69e63          	bne	a3,a5,80002df0 <__udivdi3+0x300>
80002cb8:	40c58a33          	sub	s4,a1,a2
80002cbc:	00100913          	li	s2,1
80002cc0:	0109db13          	srli	s6,s3,0x10
80002cc4:	000b0593          	mv	a1,s6
80002cc8:	000a0513          	mv	a0,s4
80002ccc:	01099b93          	slli	s7,s3,0x10
80002cd0:	00001097          	auipc	ra,0x1
80002cd4:	e30080e7          	jalr	-464(ra) # 80003b00 <__hidden___udivsi3>
80002cd8:	010bdb93          	srli	s7,s7,0x10
80002cdc:	00050593          	mv	a1,a0
80002ce0:	00050c13          	mv	s8,a0
80002ce4:	000b8513          	mv	a0,s7
80002ce8:	00001097          	auipc	ra,0x1
80002cec:	dec080e7          	jalr	-532(ra) # 80003ad4 <__mulsi3>
80002cf0:	00050a93          	mv	s5,a0
80002cf4:	000b0593          	mv	a1,s6
80002cf8:	000a0513          	mv	a0,s4
80002cfc:	00001097          	auipc	ra,0x1
80002d00:	e4c080e7          	jalr	-436(ra) # 80003b48 <__umodsi3>
80002d04:	01051513          	slli	a0,a0,0x10
80002d08:	0104d713          	srli	a4,s1,0x10
80002d0c:	00a76733          	or	a4,a4,a0
80002d10:	000c0a13          	mv	s4,s8
80002d14:	01577e63          	bgeu	a4,s5,80002d30 <__udivdi3+0x240>
80002d18:	00e98733          	add	a4,s3,a4
80002d1c:	fffc0a13          	addi	s4,s8,-1
80002d20:	01376863          	bltu	a4,s3,80002d30 <__udivdi3+0x240>
80002d24:	01577663          	bgeu	a4,s5,80002d30 <__udivdi3+0x240>
80002d28:	ffec0a13          	addi	s4,s8,-2
80002d2c:	01370733          	add	a4,a4,s3
80002d30:	41570433          	sub	s0,a4,s5
80002d34:	000b0593          	mv	a1,s6
80002d38:	00040513          	mv	a0,s0
80002d3c:	00001097          	auipc	ra,0x1
80002d40:	dc4080e7          	jalr	-572(ra) # 80003b00 <__hidden___udivsi3>
80002d44:	00050593          	mv	a1,a0
80002d48:	00050a93          	mv	s5,a0
80002d4c:	000b8513          	mv	a0,s7
80002d50:	00001097          	auipc	ra,0x1
80002d54:	d84080e7          	jalr	-636(ra) # 80003ad4 <__mulsi3>
80002d58:	00050b93          	mv	s7,a0
80002d5c:	000b0593          	mv	a1,s6
80002d60:	00040513          	mv	a0,s0
80002d64:	00001097          	auipc	ra,0x1
80002d68:	de4080e7          	jalr	-540(ra) # 80003b48 <__umodsi3>
80002d6c:	01049493          	slli	s1,s1,0x10
80002d70:	01051513          	slli	a0,a0,0x10
80002d74:	0104d493          	srli	s1,s1,0x10
80002d78:	00a4e4b3          	or	s1,s1,a0
80002d7c:	000a8713          	mv	a4,s5
80002d80:	0174fc63          	bgeu	s1,s7,80002d98 <__udivdi3+0x2a8>
80002d84:	009984b3          	add	s1,s3,s1
80002d88:	fffa8713          	addi	a4,s5,-1
80002d8c:	0134e663          	bltu	s1,s3,80002d98 <__udivdi3+0x2a8>
80002d90:	0174f463          	bgeu	s1,s7,80002d98 <__udivdi3+0x2a8>
80002d94:	ffea8713          	addi	a4,s5,-2
80002d98:	010a1793          	slli	a5,s4,0x10
80002d9c:	00e7e7b3          	or	a5,a5,a4
80002da0:	02c12083          	lw	ra,44(sp)
80002da4:	02812403          	lw	s0,40(sp)
80002da8:	02412483          	lw	s1,36(sp)
80002dac:	01c12983          	lw	s3,28(sp)
80002db0:	01812a03          	lw	s4,24(sp)
80002db4:	01412a83          	lw	s5,20(sp)
80002db8:	01012b03          	lw	s6,16(sp)
80002dbc:	00c12b83          	lw	s7,12(sp)
80002dc0:	00812c03          	lw	s8,8(sp)
80002dc4:	00412c83          	lw	s9,4(sp)
80002dc8:	00090593          	mv	a1,s2
80002dcc:	00078513          	mv	a0,a5
80002dd0:	02012903          	lw	s2,32(sp)
80002dd4:	03010113          	addi	sp,sp,48
80002dd8:	00008067          	ret
80002ddc:	010006b7          	lui	a3,0x1000
80002de0:	01800713          	li	a4,24
80002de4:	ead67ce3          	bgeu	a2,a3,80002c9c <__udivdi3+0x1ac>
80002de8:	01000713          	li	a4,16
80002dec:	eb1ff06f          	j	80002c9c <__udivdi3+0x1ac>
80002df0:	00e619b3          	sll	s3,a2,a4
80002df4:	00f5d933          	srl	s2,a1,a5
80002df8:	0109db93          	srli	s7,s3,0x10
80002dfc:	00e595b3          	sll	a1,a1,a4
80002e00:	00fa57b3          	srl	a5,s4,a5
80002e04:	00b7eab3          	or	s5,a5,a1
80002e08:	00ea14b3          	sll	s1,s4,a4
80002e0c:	000b8593          	mv	a1,s7
80002e10:	00090513          	mv	a0,s2
80002e14:	01099a13          	slli	s4,s3,0x10
80002e18:	00001097          	auipc	ra,0x1
80002e1c:	ce8080e7          	jalr	-792(ra) # 80003b00 <__hidden___udivsi3>
80002e20:	010a5a13          	srli	s4,s4,0x10
80002e24:	00050593          	mv	a1,a0
80002e28:	00050b13          	mv	s6,a0
80002e2c:	000a0513          	mv	a0,s4
80002e30:	00001097          	auipc	ra,0x1
80002e34:	ca4080e7          	jalr	-860(ra) # 80003ad4 <__mulsi3>
80002e38:	00050413          	mv	s0,a0
80002e3c:	000b8593          	mv	a1,s7
80002e40:	00090513          	mv	a0,s2
80002e44:	00001097          	auipc	ra,0x1
80002e48:	d04080e7          	jalr	-764(ra) # 80003b48 <__umodsi3>
80002e4c:	01051513          	slli	a0,a0,0x10
80002e50:	010ad713          	srli	a4,s5,0x10
80002e54:	00a76733          	or	a4,a4,a0
80002e58:	000b0913          	mv	s2,s6
80002e5c:	00877e63          	bgeu	a4,s0,80002e78 <__udivdi3+0x388>
80002e60:	00e98733          	add	a4,s3,a4
80002e64:	fffb0913          	addi	s2,s6,-1
80002e68:	01376863          	bltu	a4,s3,80002e78 <__udivdi3+0x388>
80002e6c:	00877663          	bgeu	a4,s0,80002e78 <__udivdi3+0x388>
80002e70:	ffeb0913          	addi	s2,s6,-2
80002e74:	01370733          	add	a4,a4,s3
80002e78:	40870433          	sub	s0,a4,s0
80002e7c:	000b8593          	mv	a1,s7
80002e80:	00040513          	mv	a0,s0
80002e84:	00001097          	auipc	ra,0x1
80002e88:	c7c080e7          	jalr	-900(ra) # 80003b00 <__hidden___udivsi3>
80002e8c:	00050593          	mv	a1,a0
80002e90:	00050b13          	mv	s6,a0
80002e94:	000a0513          	mv	a0,s4
80002e98:	00001097          	auipc	ra,0x1
80002e9c:	c3c080e7          	jalr	-964(ra) # 80003ad4 <__mulsi3>
80002ea0:	00050a13          	mv	s4,a0
80002ea4:	000b8593          	mv	a1,s7
80002ea8:	00040513          	mv	a0,s0
80002eac:	00001097          	auipc	ra,0x1
80002eb0:	c9c080e7          	jalr	-868(ra) # 80003b48 <__umodsi3>
80002eb4:	010a9793          	slli	a5,s5,0x10
80002eb8:	01051513          	slli	a0,a0,0x10
80002ebc:	0107d793          	srli	a5,a5,0x10
80002ec0:	00a7e7b3          	or	a5,a5,a0
80002ec4:	000b0713          	mv	a4,s6
80002ec8:	0147fe63          	bgeu	a5,s4,80002ee4 <__udivdi3+0x3f4>
80002ecc:	00f987b3          	add	a5,s3,a5
80002ed0:	fffb0713          	addi	a4,s6,-1
80002ed4:	0137e863          	bltu	a5,s3,80002ee4 <__udivdi3+0x3f4>
80002ed8:	0147f663          	bgeu	a5,s4,80002ee4 <__udivdi3+0x3f4>
80002edc:	ffeb0713          	addi	a4,s6,-2
80002ee0:	013787b3          	add	a5,a5,s3
80002ee4:	01091913          	slli	s2,s2,0x10
80002ee8:	41478a33          	sub	s4,a5,s4
80002eec:	00e96933          	or	s2,s2,a4
80002ef0:	dd1ff06f          	j	80002cc0 <__udivdi3+0x1d0>
80002ef4:	22d5e263          	bltu	a1,a3,80003118 <__udivdi3+0x628>
80002ef8:	000107b7          	lui	a5,0x10
80002efc:	04f6f463          	bgeu	a3,a5,80002f44 <__udivdi3+0x454>
80002f00:	1006b713          	sltiu	a4,a3,256
80002f04:	00173713          	seqz	a4,a4
80002f08:	00371713          	slli	a4,a4,0x3
80002f0c:	00e6d533          	srl	a0,a3,a4
80002f10:	00002797          	auipc	a5,0x2
80002f14:	fb478793          	addi	a5,a5,-76 # 80004ec4 <__clz_tab>
80002f18:	00a787b3          	add	a5,a5,a0
80002f1c:	0007c803          	lbu	a6,0(a5)
80002f20:	02000793          	li	a5,32
80002f24:	00e80833          	add	a6,a6,a4
80002f28:	41078933          	sub	s2,a5,a6
80002f2c:	03079663          	bne	a5,a6,80002f58 <__udivdi3+0x468>
80002f30:	00100793          	li	a5,1
80002f34:	e6b6e6e3          	bltu	a3,a1,80002da0 <__udivdi3+0x2b0>
80002f38:	00ca37b3          	sltu	a5,s4,a2
80002f3c:	0017b793          	seqz	a5,a5
80002f40:	e61ff06f          	j	80002da0 <__udivdi3+0x2b0>
80002f44:	010007b7          	lui	a5,0x1000
80002f48:	01800713          	li	a4,24
80002f4c:	fcf6f0e3          	bgeu	a3,a5,80002f0c <__udivdi3+0x41c>
80002f50:	01000713          	li	a4,16
80002f54:	fb9ff06f          	j	80002f0c <__udivdi3+0x41c>
80002f58:	012696b3          	sll	a3,a3,s2
80002f5c:	01065b33          	srl	s6,a2,a6
80002f60:	00db6b33          	or	s6,s6,a3
80002f64:	0105d4b3          	srl	s1,a1,a6
80002f68:	010b5c13          	srli	s8,s6,0x10
80002f6c:	010a5833          	srl	a6,s4,a6
80002f70:	012595b3          	sll	a1,a1,s2
80002f74:	00b869b3          	or	s3,a6,a1
80002f78:	00048513          	mv	a0,s1
80002f7c:	000c0593          	mv	a1,s8
80002f80:	010b1b93          	slli	s7,s6,0x10
80002f84:	01261433          	sll	s0,a2,s2
80002f88:	010bdb93          	srli	s7,s7,0x10
80002f8c:	00001097          	auipc	ra,0x1
80002f90:	b74080e7          	jalr	-1164(ra) # 80003b00 <__hidden___udivsi3>
80002f94:	00050593          	mv	a1,a0
80002f98:	00050c93          	mv	s9,a0
80002f9c:	000b8513          	mv	a0,s7
80002fa0:	00001097          	auipc	ra,0x1
80002fa4:	b34080e7          	jalr	-1228(ra) # 80003ad4 <__mulsi3>
80002fa8:	00050a93          	mv	s5,a0
80002fac:	000c0593          	mv	a1,s8
80002fb0:	00048513          	mv	a0,s1
80002fb4:	00001097          	auipc	ra,0x1
80002fb8:	b94080e7          	jalr	-1132(ra) # 80003b48 <__umodsi3>
80002fbc:	01051513          	slli	a0,a0,0x10
80002fc0:	0109d693          	srli	a3,s3,0x10
80002fc4:	00a6e6b3          	or	a3,a3,a0
80002fc8:	000c8493          	mv	s1,s9
80002fcc:	0156fe63          	bgeu	a3,s5,80002fe8 <__udivdi3+0x4f8>
80002fd0:	00db06b3          	add	a3,s6,a3
80002fd4:	fffc8493          	addi	s1,s9,-1
80002fd8:	0166e863          	bltu	a3,s6,80002fe8 <__udivdi3+0x4f8>
80002fdc:	0156f663          	bgeu	a3,s5,80002fe8 <__udivdi3+0x4f8>
80002fe0:	ffec8493          	addi	s1,s9,-2
80002fe4:	016686b3          	add	a3,a3,s6
80002fe8:	41568ab3          	sub	s5,a3,s5
80002fec:	000c0593          	mv	a1,s8
80002ff0:	000a8513          	mv	a0,s5
80002ff4:	00001097          	auipc	ra,0x1
80002ff8:	b0c080e7          	jalr	-1268(ra) # 80003b00 <__hidden___udivsi3>
80002ffc:	00050593          	mv	a1,a0
80003000:	00050c93          	mv	s9,a0
80003004:	000b8513          	mv	a0,s7
80003008:	00001097          	auipc	ra,0x1
8000300c:	acc080e7          	jalr	-1332(ra) # 80003ad4 <__mulsi3>
80003010:	00050b93          	mv	s7,a0
80003014:	000c0593          	mv	a1,s8
80003018:	000a8513          	mv	a0,s5
8000301c:	00001097          	auipc	ra,0x1
80003020:	b2c080e7          	jalr	-1236(ra) # 80003b48 <__umodsi3>
80003024:	01099713          	slli	a4,s3,0x10
80003028:	01051513          	slli	a0,a0,0x10
8000302c:	01075713          	srli	a4,a4,0x10
80003030:	00a76733          	or	a4,a4,a0
80003034:	000c8693          	mv	a3,s9
80003038:	01777e63          	bgeu	a4,s7,80003054 <__udivdi3+0x564>
8000303c:	00eb0733          	add	a4,s6,a4
80003040:	fffc8693          	addi	a3,s9,-1
80003044:	01676863          	bltu	a4,s6,80003054 <__udivdi3+0x564>
80003048:	01777663          	bgeu	a4,s7,80003054 <__udivdi3+0x564>
8000304c:	ffec8693          	addi	a3,s9,-2
80003050:	01670733          	add	a4,a4,s6
80003054:	01049793          	slli	a5,s1,0x10
80003058:	00010e37          	lui	t3,0x10
8000305c:	00d7e7b3          	or	a5,a5,a3
80003060:	fffe0313          	addi	t1,t3,-1 # ffff <COOLING_THRESHOLD_ON+0xffa5>
80003064:	0067f8b3          	and	a7,a5,t1
80003068:	00647333          	and	t1,s0,t1
8000306c:	41770733          	sub	a4,a4,s7
80003070:	0107de93          	srli	t4,a5,0x10
80003074:	01045413          	srli	s0,s0,0x10
80003078:	00088513          	mv	a0,a7
8000307c:	00030593          	mv	a1,t1
80003080:	00001097          	auipc	ra,0x1
80003084:	a54080e7          	jalr	-1452(ra) # 80003ad4 <__mulsi3>
80003088:	00050813          	mv	a6,a0
8000308c:	00040593          	mv	a1,s0
80003090:	00088513          	mv	a0,a7
80003094:	00001097          	auipc	ra,0x1
80003098:	a40080e7          	jalr	-1472(ra) # 80003ad4 <__mulsi3>
8000309c:	00050893          	mv	a7,a0
800030a0:	00030593          	mv	a1,t1
800030a4:	000e8513          	mv	a0,t4
800030a8:	00001097          	auipc	ra,0x1
800030ac:	a2c080e7          	jalr	-1492(ra) # 80003ad4 <__mulsi3>
800030b0:	00050313          	mv	t1,a0
800030b4:	00040593          	mv	a1,s0
800030b8:	000e8513          	mv	a0,t4
800030bc:	00001097          	auipc	ra,0x1
800030c0:	a18080e7          	jalr	-1512(ra) # 80003ad4 <__mulsi3>
800030c4:	01085693          	srli	a3,a6,0x10
800030c8:	006888b3          	add	a7,a7,t1
800030cc:	011686b3          	add	a3,a3,a7
800030d0:	00050613          	mv	a2,a0
800030d4:	0066f463          	bgeu	a3,t1,800030dc <__udivdi3+0x5ec>
800030d8:	01c50633          	add	a2,a0,t3
800030dc:	0106d593          	srli	a1,a3,0x10
800030e0:	00c58633          	add	a2,a1,a2
800030e4:	02c76663          	bltu	a4,a2,80003110 <__udivdi3+0x620>
800030e8:	b6c71ee3          	bne	a4,a2,80002c64 <__udivdi3+0x174>
800030ec:	00010637          	lui	a2,0x10
800030f0:	fff60613          	addi	a2,a2,-1 # ffff <COOLING_THRESHOLD_ON+0xffa5>
800030f4:	00c6f6b3          	and	a3,a3,a2
800030f8:	01069693          	slli	a3,a3,0x10
800030fc:	00c87833          	and	a6,a6,a2
80003100:	012a1733          	sll	a4,s4,s2
80003104:	010686b3          	add	a3,a3,a6
80003108:	00000913          	li	s2,0
8000310c:	c8d77ae3          	bgeu	a4,a3,80002da0 <__udivdi3+0x2b0>
80003110:	fff78793          	addi	a5,a5,-1 # ffffff <COOLING_THRESHOLD_ON+0xffffa5>
80003114:	b51ff06f          	j	80002c64 <__udivdi3+0x174>
80003118:	00000913          	li	s2,0
8000311c:	00000793          	li	a5,0
80003120:	c81ff06f          	j	80002da0 <__udivdi3+0x2b0>

80003124 <__umoddi3>:
80003124:	fd010113          	addi	sp,sp,-48
80003128:	02812423          	sw	s0,40(sp)
8000312c:	02912223          	sw	s1,36(sp)
80003130:	02112623          	sw	ra,44(sp)
80003134:	03212023          	sw	s2,32(sp)
80003138:	01312e23          	sw	s3,28(sp)
8000313c:	01412c23          	sw	s4,24(sp)
80003140:	01512a23          	sw	s5,20(sp)
80003144:	01612823          	sw	s6,16(sp)
80003148:	01712623          	sw	s7,12(sp)
8000314c:	01812423          	sw	s8,8(sp)
80003150:	01912223          	sw	s9,4(sp)
80003154:	01a12023          	sw	s10,0(sp)
80003158:	00050413          	mv	s0,a0
8000315c:	00058493          	mv	s1,a1
80003160:	28069463          	bnez	a3,800033e8 <__umoddi3+0x2c4>
80003164:	00060993          	mv	s3,a2
80003168:	00002697          	auipc	a3,0x2
8000316c:	d5c68693          	addi	a3,a3,-676 # 80004ec4 <__clz_tab>
80003170:	14c5fa63          	bgeu	a1,a2,800032c4 <__umoddi3+0x1a0>
80003174:	000107b7          	lui	a5,0x10
80003178:	12f67c63          	bgeu	a2,a5,800032b0 <__umoddi3+0x18c>
8000317c:	10063793          	sltiu	a5,a2,256
80003180:	0017b793          	seqz	a5,a5
80003184:	00379793          	slli	a5,a5,0x3
80003188:	00f65733          	srl	a4,a2,a5
8000318c:	00e686b3          	add	a3,a3,a4
80003190:	0006c703          	lbu	a4,0(a3)
80003194:	00f707b3          	add	a5,a4,a5
80003198:	02000713          	li	a4,32
8000319c:	40f70933          	sub	s2,a4,a5
800031a0:	00f70c63          	beq	a4,a5,800031b8 <__umoddi3+0x94>
800031a4:	012594b3          	sll	s1,a1,s2
800031a8:	00f557b3          	srl	a5,a0,a5
800031ac:	012619b3          	sll	s3,a2,s2
800031b0:	0097e4b3          	or	s1,a5,s1
800031b4:	01251433          	sll	s0,a0,s2
800031b8:	0109da93          	srli	s5,s3,0x10
800031bc:	000a8593          	mv	a1,s5
800031c0:	01099b13          	slli	s6,s3,0x10
800031c4:	00048513          	mv	a0,s1
800031c8:	00001097          	auipc	ra,0x1
800031cc:	938080e7          	jalr	-1736(ra) # 80003b00 <__hidden___udivsi3>
800031d0:	010b5b13          	srli	s6,s6,0x10
800031d4:	000b0593          	mv	a1,s6
800031d8:	00001097          	auipc	ra,0x1
800031dc:	8fc080e7          	jalr	-1796(ra) # 80003ad4 <__mulsi3>
800031e0:	00050a13          	mv	s4,a0
800031e4:	000a8593          	mv	a1,s5
800031e8:	00048513          	mv	a0,s1
800031ec:	00001097          	auipc	ra,0x1
800031f0:	95c080e7          	jalr	-1700(ra) # 80003b48 <__umodsi3>
800031f4:	01051513          	slli	a0,a0,0x10
800031f8:	01045793          	srli	a5,s0,0x10
800031fc:	00a7e7b3          	or	a5,a5,a0
80003200:	0147fa63          	bgeu	a5,s4,80003214 <__umoddi3+0xf0>
80003204:	00f987b3          	add	a5,s3,a5
80003208:	0137e663          	bltu	a5,s3,80003214 <__umoddi3+0xf0>
8000320c:	0147f463          	bgeu	a5,s4,80003214 <__umoddi3+0xf0>
80003210:	013787b3          	add	a5,a5,s3
80003214:	414784b3          	sub	s1,a5,s4
80003218:	000a8593          	mv	a1,s5
8000321c:	00048513          	mv	a0,s1
80003220:	00001097          	auipc	ra,0x1
80003224:	8e0080e7          	jalr	-1824(ra) # 80003b00 <__hidden___udivsi3>
80003228:	000b0593          	mv	a1,s6
8000322c:	00001097          	auipc	ra,0x1
80003230:	8a8080e7          	jalr	-1880(ra) # 80003ad4 <__mulsi3>
80003234:	00050a13          	mv	s4,a0
80003238:	000a8593          	mv	a1,s5
8000323c:	00048513          	mv	a0,s1
80003240:	00001097          	auipc	ra,0x1
80003244:	908080e7          	jalr	-1784(ra) # 80003b48 <__umodsi3>
80003248:	01041413          	slli	s0,s0,0x10
8000324c:	01051513          	slli	a0,a0,0x10
80003250:	01045413          	srli	s0,s0,0x10
80003254:	00a46433          	or	s0,s0,a0
80003258:	01447a63          	bgeu	s0,s4,8000326c <__umoddi3+0x148>
8000325c:	00898433          	add	s0,s3,s0
80003260:	01346663          	bltu	s0,s3,8000326c <__umoddi3+0x148>
80003264:	01447463          	bgeu	s0,s4,8000326c <__umoddi3+0x148>
80003268:	01340433          	add	s0,s0,s3
8000326c:	41440433          	sub	s0,s0,s4
80003270:	01245533          	srl	a0,s0,s2
80003274:	00000593          	li	a1,0
80003278:	02c12083          	lw	ra,44(sp)
8000327c:	02812403          	lw	s0,40(sp)
80003280:	02412483          	lw	s1,36(sp)
80003284:	02012903          	lw	s2,32(sp)
80003288:	01c12983          	lw	s3,28(sp)
8000328c:	01812a03          	lw	s4,24(sp)
80003290:	01412a83          	lw	s5,20(sp)
80003294:	01012b03          	lw	s6,16(sp)
80003298:	00c12b83          	lw	s7,12(sp)
8000329c:	00812c03          	lw	s8,8(sp)
800032a0:	00412c83          	lw	s9,4(sp)
800032a4:	00012d03          	lw	s10,0(sp)
800032a8:	03010113          	addi	sp,sp,48
800032ac:	00008067          	ret
800032b0:	01000737          	lui	a4,0x1000
800032b4:	01800793          	li	a5,24
800032b8:	ece678e3          	bgeu	a2,a4,80003188 <__umoddi3+0x64>
800032bc:	01000793          	li	a5,16
800032c0:	ec9ff06f          	j	80003188 <__umoddi3+0x64>
800032c4:	00000713          	li	a4,0
800032c8:	00060c63          	beqz	a2,800032e0 <__umoddi3+0x1bc>
800032cc:	000107b7          	lui	a5,0x10
800032d0:	10f67263          	bgeu	a2,a5,800033d4 <__umoddi3+0x2b0>
800032d4:	10063713          	sltiu	a4,a2,256
800032d8:	00173713          	seqz	a4,a4
800032dc:	00371713          	slli	a4,a4,0x3
800032e0:	00e657b3          	srl	a5,a2,a4
800032e4:	00f686b3          	add	a3,a3,a5
800032e8:	0006c783          	lbu	a5,0(a3)
800032ec:	40c584b3          	sub	s1,a1,a2
800032f0:	00e787b3          	add	a5,a5,a4
800032f4:	02000713          	li	a4,32
800032f8:	40f70933          	sub	s2,a4,a5
800032fc:	eaf70ee3          	beq	a4,a5,800031b8 <__umoddi3+0x94>
80003300:	012619b3          	sll	s3,a2,s2
80003304:	00f5dbb3          	srl	s7,a1,a5
80003308:	0109db13          	srli	s6,s3,0x10
8000330c:	00f557b3          	srl	a5,a0,a5
80003310:	012595b3          	sll	a1,a1,s2
80003314:	00b7ea33          	or	s4,a5,a1
80003318:	01251433          	sll	s0,a0,s2
8000331c:	000b0593          	mv	a1,s6
80003320:	01099a93          	slli	s5,s3,0x10
80003324:	000b8513          	mv	a0,s7
80003328:	00000097          	auipc	ra,0x0
8000332c:	7d8080e7          	jalr	2008(ra) # 80003b00 <__hidden___udivsi3>
80003330:	010ada93          	srli	s5,s5,0x10
80003334:	000a8593          	mv	a1,s5
80003338:	00000097          	auipc	ra,0x0
8000333c:	79c080e7          	jalr	1948(ra) # 80003ad4 <__mulsi3>
80003340:	00050493          	mv	s1,a0
80003344:	000b0593          	mv	a1,s6
80003348:	000b8513          	mv	a0,s7
8000334c:	00000097          	auipc	ra,0x0
80003350:	7fc080e7          	jalr	2044(ra) # 80003b48 <__umodsi3>
80003354:	01051513          	slli	a0,a0,0x10
80003358:	010a5713          	srli	a4,s4,0x10
8000335c:	00a76733          	or	a4,a4,a0
80003360:	00977a63          	bgeu	a4,s1,80003374 <__umoddi3+0x250>
80003364:	00e98733          	add	a4,s3,a4
80003368:	01376663          	bltu	a4,s3,80003374 <__umoddi3+0x250>
8000336c:	00977463          	bgeu	a4,s1,80003374 <__umoddi3+0x250>
80003370:	01370733          	add	a4,a4,s3
80003374:	409704b3          	sub	s1,a4,s1
80003378:	000b0593          	mv	a1,s6
8000337c:	00048513          	mv	a0,s1
80003380:	00000097          	auipc	ra,0x0
80003384:	780080e7          	jalr	1920(ra) # 80003b00 <__hidden___udivsi3>
80003388:	000a8593          	mv	a1,s5
8000338c:	00000097          	auipc	ra,0x0
80003390:	748080e7          	jalr	1864(ra) # 80003ad4 <__mulsi3>
80003394:	00050a93          	mv	s5,a0
80003398:	000b0593          	mv	a1,s6
8000339c:	00048513          	mv	a0,s1
800033a0:	00000097          	auipc	ra,0x0
800033a4:	7a8080e7          	jalr	1960(ra) # 80003b48 <__umodsi3>
800033a8:	010a1793          	slli	a5,s4,0x10
800033ac:	01051513          	slli	a0,a0,0x10
800033b0:	0107d793          	srli	a5,a5,0x10
800033b4:	00a7e7b3          	or	a5,a5,a0
800033b8:	0157fa63          	bgeu	a5,s5,800033cc <__umoddi3+0x2a8>
800033bc:	00f987b3          	add	a5,s3,a5
800033c0:	0137e663          	bltu	a5,s3,800033cc <__umoddi3+0x2a8>
800033c4:	0157f463          	bgeu	a5,s5,800033cc <__umoddi3+0x2a8>
800033c8:	013787b3          	add	a5,a5,s3
800033cc:	415784b3          	sub	s1,a5,s5
800033d0:	de9ff06f          	j	800031b8 <__umoddi3+0x94>
800033d4:	010007b7          	lui	a5,0x1000
800033d8:	01800713          	li	a4,24
800033dc:	f0f672e3          	bgeu	a2,a5,800032e0 <__umoddi3+0x1bc>
800033e0:	01000713          	li	a4,16
800033e4:	efdff06f          	j	800032e0 <__umoddi3+0x1bc>
800033e8:	e8d5e8e3          	bltu	a1,a3,80003278 <__umoddi3+0x154>
800033ec:	000107b7          	lui	a5,0x10
800033f0:	04f6fe63          	bgeu	a3,a5,8000344c <__umoddi3+0x328>
800033f4:	1006b793          	sltiu	a5,a3,256
800033f8:	0017b793          	seqz	a5,a5
800033fc:	00379793          	slli	a5,a5,0x3
80003400:	00f6d833          	srl	a6,a3,a5
80003404:	00002717          	auipc	a4,0x2
80003408:	ac070713          	addi	a4,a4,-1344 # 80004ec4 <__clz_tab>
8000340c:	01070733          	add	a4,a4,a6
80003410:	00074a83          	lbu	s5,0(a4)
80003414:	00fa8ab3          	add	s5,s5,a5
80003418:	02000793          	li	a5,32
8000341c:	41578a33          	sub	s4,a5,s5
80003420:	05579063          	bne	a5,s5,80003460 <__umoddi3+0x33c>
80003424:	00b6e463          	bltu	a3,a1,8000342c <__umoddi3+0x308>
80003428:	00c56c63          	bltu	a0,a2,80003440 <__umoddi3+0x31c>
8000342c:	40c50933          	sub	s2,a0,a2
80003430:	40d586b3          	sub	a3,a1,a3
80003434:	012534b3          	sltu	s1,a0,s2
80003438:	00090413          	mv	s0,s2
8000343c:	409684b3          	sub	s1,a3,s1
80003440:	00040513          	mv	a0,s0
80003444:	00048593          	mv	a1,s1
80003448:	e31ff06f          	j	80003278 <__umoddi3+0x154>
8000344c:	01000737          	lui	a4,0x1000
80003450:	01800793          	li	a5,24
80003454:	fae6f6e3          	bgeu	a3,a4,80003400 <__umoddi3+0x2dc>
80003458:	01000793          	li	a5,16
8000345c:	fa5ff06f          	j	80003400 <__umoddi3+0x2dc>
80003460:	014696b3          	sll	a3,a3,s4
80003464:	01565bb3          	srl	s7,a2,s5
80003468:	00dbebb3          	or	s7,s7,a3
8000346c:	0155d9b3          	srl	s3,a1,s5
80003470:	01555433          	srl	s0,a0,s5
80003474:	014595b3          	sll	a1,a1,s4
80003478:	010bd493          	srli	s1,s7,0x10
8000347c:	00b46433          	or	s0,s0,a1
80003480:	01451b33          	sll	s6,a0,s4
80003484:	00048593          	mv	a1,s1
80003488:	00098513          	mv	a0,s3
8000348c:	010b9c13          	slli	s8,s7,0x10
80003490:	01461933          	sll	s2,a2,s4
80003494:	010c5c13          	srli	s8,s8,0x10
80003498:	00000097          	auipc	ra,0x0
8000349c:	668080e7          	jalr	1640(ra) # 80003b00 <__hidden___udivsi3>
800034a0:	00050593          	mv	a1,a0
800034a4:	00050d13          	mv	s10,a0
800034a8:	000c0513          	mv	a0,s8
800034ac:	00000097          	auipc	ra,0x0
800034b0:	628080e7          	jalr	1576(ra) # 80003ad4 <__mulsi3>
800034b4:	00050c93          	mv	s9,a0
800034b8:	00048593          	mv	a1,s1
800034bc:	00098513          	mv	a0,s3
800034c0:	00000097          	auipc	ra,0x0
800034c4:	688080e7          	jalr	1672(ra) # 80003b48 <__umodsi3>
800034c8:	01051513          	slli	a0,a0,0x10
800034cc:	01045793          	srli	a5,s0,0x10
800034d0:	00a7e7b3          	or	a5,a5,a0
800034d4:	000d0993          	mv	s3,s10
800034d8:	0197fe63          	bgeu	a5,s9,800034f4 <__umoddi3+0x3d0>
800034dc:	00fb87b3          	add	a5,s7,a5
800034e0:	fffd0993          	addi	s3,s10,-1
800034e4:	0177e863          	bltu	a5,s7,800034f4 <__umoddi3+0x3d0>
800034e8:	0197f663          	bgeu	a5,s9,800034f4 <__umoddi3+0x3d0>
800034ec:	ffed0993          	addi	s3,s10,-2
800034f0:	017787b3          	add	a5,a5,s7
800034f4:	41978cb3          	sub	s9,a5,s9
800034f8:	00048593          	mv	a1,s1
800034fc:	000c8513          	mv	a0,s9
80003500:	00000097          	auipc	ra,0x0
80003504:	600080e7          	jalr	1536(ra) # 80003b00 <__hidden___udivsi3>
80003508:	00050593          	mv	a1,a0
8000350c:	00050d13          	mv	s10,a0
80003510:	000c0513          	mv	a0,s8
80003514:	00000097          	auipc	ra,0x0
80003518:	5c0080e7          	jalr	1472(ra) # 80003ad4 <__mulsi3>
8000351c:	00048593          	mv	a1,s1
80003520:	00050c13          	mv	s8,a0
80003524:	000c8513          	mv	a0,s9
80003528:	00000097          	auipc	ra,0x0
8000352c:	620080e7          	jalr	1568(ra) # 80003b48 <__umodsi3>
80003530:	01041593          	slli	a1,s0,0x10
80003534:	01051513          	slli	a0,a0,0x10
80003538:	0105d593          	srli	a1,a1,0x10
8000353c:	00a5e5b3          	or	a1,a1,a0
80003540:	000d0793          	mv	a5,s10
80003544:	0185fe63          	bgeu	a1,s8,80003560 <__umoddi3+0x43c>
80003548:	00bb85b3          	add	a1,s7,a1
8000354c:	fffd0793          	addi	a5,s10,-1
80003550:	0175e863          	bltu	a1,s7,80003560 <__umoddi3+0x43c>
80003554:	0185f663          	bgeu	a1,s8,80003560 <__umoddi3+0x43c>
80003558:	ffed0793          	addi	a5,s10,-2
8000355c:	017585b3          	add	a1,a1,s7
80003560:	00010e37          	lui	t3,0x10
80003564:	01099993          	slli	s3,s3,0x10
80003568:	00f9e9b3          	or	s3,s3,a5
8000356c:	fffe0793          	addi	a5,t3,-1 # ffff <COOLING_THRESHOLD_ON+0xffa5>
80003570:	00f9f733          	and	a4,s3,a5
80003574:	00f977b3          	and	a5,s2,a5
80003578:	418584b3          	sub	s1,a1,s8
8000357c:	0109d993          	srli	s3,s3,0x10
80003580:	01095313          	srli	t1,s2,0x10
80003584:	00070513          	mv	a0,a4
80003588:	00078593          	mv	a1,a5
8000358c:	00000097          	auipc	ra,0x0
80003590:	548080e7          	jalr	1352(ra) # 80003ad4 <__mulsi3>
80003594:	00050813          	mv	a6,a0
80003598:	00030593          	mv	a1,t1
8000359c:	00070513          	mv	a0,a4
800035a0:	00000097          	auipc	ra,0x0
800035a4:	534080e7          	jalr	1332(ra) # 80003ad4 <__mulsi3>
800035a8:	00050713          	mv	a4,a0
800035ac:	00078593          	mv	a1,a5
800035b0:	00098513          	mv	a0,s3
800035b4:	00000097          	auipc	ra,0x0
800035b8:	520080e7          	jalr	1312(ra) # 80003ad4 <__mulsi3>
800035bc:	00050893          	mv	a7,a0
800035c0:	00030593          	mv	a1,t1
800035c4:	00098513          	mv	a0,s3
800035c8:	00000097          	auipc	ra,0x0
800035cc:	50c080e7          	jalr	1292(ra) # 80003ad4 <__mulsi3>
800035d0:	01085793          	srli	a5,a6,0x10
800035d4:	01170733          	add	a4,a4,a7
800035d8:	00e787b3          	add	a5,a5,a4
800035dc:	00050693          	mv	a3,a0
800035e0:	0117f463          	bgeu	a5,a7,800035e8 <__umoddi3+0x4c4>
800035e4:	01c506b3          	add	a3,a0,t3
800035e8:	0107d713          	srli	a4,a5,0x10
800035ec:	00d70733          	add	a4,a4,a3
800035f0:	000106b7          	lui	a3,0x10
800035f4:	fff68693          	addi	a3,a3,-1 # ffff <COOLING_THRESHOLD_ON+0xffa5>
800035f8:	00d7f7b3          	and	a5,a5,a3
800035fc:	01079793          	slli	a5,a5,0x10
80003600:	00d87833          	and	a6,a6,a3
80003604:	010787b3          	add	a5,a5,a6
80003608:	00e4e663          	bltu	s1,a4,80003614 <__umoddi3+0x4f0>
8000360c:	00e49e63          	bne	s1,a4,80003628 <__umoddi3+0x504>
80003610:	00fb7c63          	bgeu	s6,a5,80003628 <__umoddi3+0x504>
80003614:	41278933          	sub	s2,a5,s2
80003618:	0127b6b3          	sltu	a3,a5,s2
8000361c:	017686b3          	add	a3,a3,s7
80003620:	00090793          	mv	a5,s2
80003624:	40d70733          	sub	a4,a4,a3
80003628:	40fb07b3          	sub	a5,s6,a5
8000362c:	00fb3b33          	sltu	s6,s6,a5
80003630:	40e485b3          	sub	a1,s1,a4
80003634:	416585b3          	sub	a1,a1,s6
80003638:	01559ab3          	sll	s5,a1,s5
8000363c:	0147d7b3          	srl	a5,a5,s4
80003640:	00fae533          	or	a0,s5,a5
80003644:	0145d5b3          	srl	a1,a1,s4
80003648:	c31ff06f          	j	80003278 <__umoddi3+0x154>

8000364c <__divsf3>:
8000364c:	fd010113          	addi	sp,sp,-48
80003650:	02912223          	sw	s1,36(sp)
80003654:	01755493          	srli	s1,a0,0x17
80003658:	01312e23          	sw	s3,28(sp)
8000365c:	01512a23          	sw	s5,20(sp)
80003660:	01612823          	sw	s6,16(sp)
80003664:	00951a93          	slli	s5,a0,0x9
80003668:	02112623          	sw	ra,44(sp)
8000366c:	02812423          	sw	s0,40(sp)
80003670:	03212023          	sw	s2,32(sp)
80003674:	01412c23          	sw	s4,24(sp)
80003678:	01712623          	sw	s7,12(sp)
8000367c:	01812423          	sw	s8,8(sp)
80003680:	0ff4f493          	zext.b	s1,s1
80003684:	00058b13          	mv	s6,a1
80003688:	009ada93          	srli	s5,s5,0x9
8000368c:	01f55993          	srli	s3,a0,0x1f
80003690:	08048663          	beqz	s1,8000371c <__divsf3+0xd0>
80003694:	0ff00793          	li	a5,255
80003698:	0af48463          	beq	s1,a5,80003740 <__divsf3+0xf4>
8000369c:	003a9a93          	slli	s5,s5,0x3
800036a0:	040007b7          	lui	a5,0x4000
800036a4:	00faeab3          	or	s5,s5,a5
800036a8:	f8148493          	addi	s1,s1,-127
800036ac:	00000b93          	li	s7,0
800036b0:	017b5793          	srli	a5,s6,0x17
800036b4:	009b1413          	slli	s0,s6,0x9
800036b8:	0ff7f793          	zext.b	a5,a5
800036bc:	00945413          	srli	s0,s0,0x9
800036c0:	01fb5b13          	srli	s6,s6,0x1f
800036c4:	08078e63          	beqz	a5,80003760 <__divsf3+0x114>
800036c8:	0ff00713          	li	a4,255
800036cc:	0ae78c63          	beq	a5,a4,80003784 <__divsf3+0x138>
800036d0:	00341413          	slli	s0,s0,0x3
800036d4:	04000737          	lui	a4,0x4000
800036d8:	00e46433          	or	s0,s0,a4
800036dc:	f8178793          	addi	a5,a5,-127 # 3ffff81 <COOLING_THRESHOLD_ON+0x3ffff27>
800036e0:	00000713          	li	a4,0
800036e4:	40f48a33          	sub	s4,s1,a5
800036e8:	002b9793          	slli	a5,s7,0x2
800036ec:	00e7e7b3          	or	a5,a5,a4
800036f0:	fff78793          	addi	a5,a5,-1
800036f4:	00e00693          	li	a3,14
800036f8:	0169c933          	xor	s2,s3,s6
800036fc:	0af6e463          	bltu	a3,a5,800037a4 <__divsf3+0x158>
80003700:	00001697          	auipc	a3,0x1
80003704:	78868693          	addi	a3,a3,1928 # 80004e88 <str_p3_separator+0x33>
80003708:	00279793          	slli	a5,a5,0x2
8000370c:	00d787b3          	add	a5,a5,a3
80003710:	0007a783          	lw	a5,0(a5)
80003714:	00d787b3          	add	a5,a5,a3
80003718:	00078067          	jr	a5
8000371c:	020a8c63          	beqz	s5,80003754 <__divsf3+0x108>
80003720:	000a8513          	mv	a0,s5
80003724:	00000097          	auipc	ra,0x0
80003728:	488080e7          	jalr	1160(ra) # 80003bac <__clzsi2>
8000372c:	ffb50793          	addi	a5,a0,-5
80003730:	f8a00493          	li	s1,-118
80003734:	00fa9ab3          	sll	s5,s5,a5
80003738:	40a484b3          	sub	s1,s1,a0
8000373c:	f71ff06f          	j	800036ac <__divsf3+0x60>
80003740:	0ff00493          	li	s1,255
80003744:	00200b93          	li	s7,2
80003748:	f60a84e3          	beqz	s5,800036b0 <__divsf3+0x64>
8000374c:	00300b93          	li	s7,3
80003750:	f61ff06f          	j	800036b0 <__divsf3+0x64>
80003754:	00000493          	li	s1,0
80003758:	00100b93          	li	s7,1
8000375c:	f55ff06f          	j	800036b0 <__divsf3+0x64>
80003760:	02040c63          	beqz	s0,80003798 <__divsf3+0x14c>
80003764:	00040513          	mv	a0,s0
80003768:	00000097          	auipc	ra,0x0
8000376c:	444080e7          	jalr	1092(ra) # 80003bac <__clzsi2>
80003770:	ffb50793          	addi	a5,a0,-5
80003774:	00f41433          	sll	s0,s0,a5
80003778:	f8a00793          	li	a5,-118
8000377c:	40a787b3          	sub	a5,a5,a0
80003780:	f61ff06f          	j	800036e0 <__divsf3+0x94>
80003784:	0ff00793          	li	a5,255
80003788:	00200713          	li	a4,2
8000378c:	f4040ce3          	beqz	s0,800036e4 <__divsf3+0x98>
80003790:	00300713          	li	a4,3
80003794:	f51ff06f          	j	800036e4 <__divsf3+0x98>
80003798:	00000793          	li	a5,0
8000379c:	00100713          	li	a4,1
800037a0:	f45ff06f          	j	800036e4 <__divsf3+0x98>
800037a4:	00541c13          	slli	s8,s0,0x5
800037a8:	188af463          	bgeu	s5,s0,80003930 <__divsf3+0x2e4>
800037ac:	fffa0a13          	addi	s4,s4,-1
800037b0:	00000413          	li	s0,0
800037b4:	010c5b13          	srli	s6,s8,0x10
800037b8:	000109b7          	lui	s3,0x10
800037bc:	000b0593          	mv	a1,s6
800037c0:	fe098993          	addi	s3,s3,-32 # ffe0 <COOLING_THRESHOLD_ON+0xff86>
800037c4:	000a8513          	mv	a0,s5
800037c8:	00000097          	auipc	ra,0x0
800037cc:	338080e7          	jalr	824(ra) # 80003b00 <__hidden___udivsi3>
800037d0:	013c79b3          	and	s3,s8,s3
800037d4:	00050593          	mv	a1,a0
800037d8:	00050b93          	mv	s7,a0
800037dc:	00098513          	mv	a0,s3
800037e0:	00000097          	auipc	ra,0x0
800037e4:	2f4080e7          	jalr	756(ra) # 80003ad4 <__mulsi3>
800037e8:	00050493          	mv	s1,a0
800037ec:	000b0593          	mv	a1,s6
800037f0:	000a8513          	mv	a0,s5
800037f4:	00000097          	auipc	ra,0x0
800037f8:	354080e7          	jalr	852(ra) # 80003b48 <__umodsi3>
800037fc:	01045793          	srli	a5,s0,0x10
80003800:	01051513          	slli	a0,a0,0x10
80003804:	00a7e7b3          	or	a5,a5,a0
80003808:	000b8413          	mv	s0,s7
8000380c:	0097fe63          	bgeu	a5,s1,80003828 <__divsf3+0x1dc>
80003810:	00fc07b3          	add	a5,s8,a5
80003814:	fffb8413          	addi	s0,s7,-1
80003818:	0187e863          	bltu	a5,s8,80003828 <__divsf3+0x1dc>
8000381c:	0097f663          	bgeu	a5,s1,80003828 <__divsf3+0x1dc>
80003820:	ffeb8413          	addi	s0,s7,-2
80003824:	018787b3          	add	a5,a5,s8
80003828:	409784b3          	sub	s1,a5,s1
8000382c:	000b0593          	mv	a1,s6
80003830:	00048513          	mv	a0,s1
80003834:	00000097          	auipc	ra,0x0
80003838:	2cc080e7          	jalr	716(ra) # 80003b00 <__hidden___udivsi3>
8000383c:	00050593          	mv	a1,a0
80003840:	00050a93          	mv	s5,a0
80003844:	00098513          	mv	a0,s3
80003848:	00000097          	auipc	ra,0x0
8000384c:	28c080e7          	jalr	652(ra) # 80003ad4 <__mulsi3>
80003850:	00050993          	mv	s3,a0
80003854:	000b0593          	mv	a1,s6
80003858:	00048513          	mv	a0,s1
8000385c:	00000097          	auipc	ra,0x0
80003860:	2ec080e7          	jalr	748(ra) # 80003b48 <__umodsi3>
80003864:	01051793          	slli	a5,a0,0x10
80003868:	000a8713          	mv	a4,s5
8000386c:	0337f263          	bgeu	a5,s3,80003890 <__divsf3+0x244>
80003870:	018786b3          	add	a3,a5,s8
80003874:	00f6b633          	sltu	a2,a3,a5
80003878:	fffa8713          	addi	a4,s5,-1
8000387c:	00068793          	mv	a5,a3
80003880:	00061863          	bnez	a2,80003890 <__divsf3+0x244>
80003884:	0136f663          	bgeu	a3,s3,80003890 <__divsf3+0x244>
80003888:	ffea8713          	addi	a4,s5,-2
8000388c:	018687b3          	add	a5,a3,s8
80003890:	01041413          	slli	s0,s0,0x10
80003894:	413787b3          	sub	a5,a5,s3
80003898:	00e46433          	or	s0,s0,a4
8000389c:	00f037b3          	snez	a5,a5
800038a0:	00f46433          	or	s0,s0,a5
800038a4:	07fa0713          	addi	a4,s4,127
800038a8:	0ce05e63          	blez	a4,80003984 <__divsf3+0x338>
800038ac:	00747793          	andi	a5,s0,7
800038b0:	00078a63          	beqz	a5,800038c4 <__divsf3+0x278>
800038b4:	00f47793          	andi	a5,s0,15
800038b8:	00400693          	li	a3,4
800038bc:	00d78463          	beq	a5,a3,800038c4 <__divsf3+0x278>
800038c0:	00440413          	addi	s0,s0,4
800038c4:	00441793          	slli	a5,s0,0x4
800038c8:	0007da63          	bgez	a5,800038dc <__divsf3+0x290>
800038cc:	f80007b7          	lui	a5,0xf8000
800038d0:	fff78793          	addi	a5,a5,-1 # f7ffffff <TEMP_DATA_ADDR+0x77fdffff>
800038d4:	00f47433          	and	s0,s0,a5
800038d8:	080a0713          	addi	a4,s4,128
800038dc:	0fe00793          	li	a5,254
800038e0:	08e7c063          	blt	a5,a4,80003960 <__divsf3+0x314>
800038e4:	00345793          	srli	a5,s0,0x3
800038e8:	02c12083          	lw	ra,44(sp)
800038ec:	02812403          	lw	s0,40(sp)
800038f0:	00979793          	slli	a5,a5,0x9
800038f4:	01771713          	slli	a4,a4,0x17
800038f8:	0097d793          	srli	a5,a5,0x9
800038fc:	01f91513          	slli	a0,s2,0x1f
80003900:	00f76733          	or	a4,a4,a5
80003904:	02412483          	lw	s1,36(sp)
80003908:	02012903          	lw	s2,32(sp)
8000390c:	01c12983          	lw	s3,28(sp)
80003910:	01812a03          	lw	s4,24(sp)
80003914:	01412a83          	lw	s5,20(sp)
80003918:	01012b03          	lw	s6,16(sp)
8000391c:	00c12b83          	lw	s7,12(sp)
80003920:	00812c03          	lw	s8,8(sp)
80003924:	00a76533          	or	a0,a4,a0
80003928:	03010113          	addi	sp,sp,48
8000392c:	00008067          	ret
80003930:	01fa9413          	slli	s0,s5,0x1f
80003934:	001ada93          	srli	s5,s5,0x1
80003938:	e7dff06f          	j	800037b4 <__divsf3+0x168>
8000393c:	00098913          	mv	s2,s3
80003940:	000a8413          	mv	s0,s5
80003944:	000b8713          	mv	a4,s7
80003948:	00300793          	li	a5,3
8000394c:	08f70663          	beq	a4,a5,800039d8 <__divsf3+0x38c>
80003950:	00100793          	li	a5,1
80003954:	08f70a63          	beq	a4,a5,800039e8 <__divsf3+0x39c>
80003958:	00200793          	li	a5,2
8000395c:	f4f714e3          	bne	a4,a5,800038a4 <__divsf3+0x258>
80003960:	00000793          	li	a5,0
80003964:	0ff00713          	li	a4,255
80003968:	f81ff06f          	j	800038e8 <__divsf3+0x29c>
8000396c:	000b0913          	mv	s2,s6
80003970:	fd9ff06f          	j	80003948 <__divsf3+0x2fc>
80003974:	00400437          	lui	s0,0x400
80003978:	00000913          	li	s2,0
8000397c:	00300713          	li	a4,3
80003980:	fc9ff06f          	j	80003948 <__divsf3+0x2fc>
80003984:	00100793          	li	a5,1
80003988:	40e787b3          	sub	a5,a5,a4
8000398c:	01b00713          	li	a4,27
80003990:	04f74c63          	blt	a4,a5,800039e8 <__divsf3+0x39c>
80003994:	09ea0493          	addi	s1,s4,158
80003998:	00f457b3          	srl	a5,s0,a5
8000399c:	00941433          	sll	s0,s0,s1
800039a0:	00803433          	snez	s0,s0
800039a4:	0087e7b3          	or	a5,a5,s0
800039a8:	0077f713          	andi	a4,a5,7
800039ac:	00070a63          	beqz	a4,800039c0 <__divsf3+0x374>
800039b0:	00f7f713          	andi	a4,a5,15
800039b4:	00400693          	li	a3,4
800039b8:	00d70463          	beq	a4,a3,800039c0 <__divsf3+0x374>
800039bc:	00478793          	addi	a5,a5,4
800039c0:	00579713          	slli	a4,a5,0x5
800039c4:	0037d793          	srli	a5,a5,0x3
800039c8:	02075263          	bgez	a4,800039ec <__divsf3+0x3a0>
800039cc:	00000793          	li	a5,0
800039d0:	00100713          	li	a4,1
800039d4:	f15ff06f          	j	800038e8 <__divsf3+0x29c>
800039d8:	004007b7          	lui	a5,0x400
800039dc:	0ff00713          	li	a4,255
800039e0:	00000913          	li	s2,0
800039e4:	f05ff06f          	j	800038e8 <__divsf3+0x29c>
800039e8:	00000793          	li	a5,0
800039ec:	00000713          	li	a4,0
800039f0:	ef9ff06f          	j	800038e8 <__divsf3+0x29c>

800039f4 <__floatunsisf>:
800039f4:	ff010113          	addi	sp,sp,-16
800039f8:	00812423          	sw	s0,8(sp)
800039fc:	00112623          	sw	ra,12(sp)
80003a00:	00050413          	mv	s0,a0
80003a04:	00000713          	li	a4,0
80003a08:	02050663          	beqz	a0,80003a34 <__floatunsisf+0x40>
80003a0c:	00000097          	auipc	ra,0x0
80003a10:	1a0080e7          	jalr	416(ra) # 80003bac <__clzsi2>
80003a14:	09e00713          	li	a4,158
80003a18:	40a70733          	sub	a4,a4,a0
80003a1c:	09600793          	li	a5,150
80003a20:	02e7ca63          	blt	a5,a4,80003a54 <__floatunsisf+0x60>
80003a24:	00800793          	li	a5,8
80003a28:	0af50263          	beq	a0,a5,80003acc <__floatunsisf+0xd8>
80003a2c:	ff850513          	addi	a0,a0,-8
80003a30:	00a41433          	sll	s0,s0,a0
80003a34:	00941413          	slli	s0,s0,0x9
80003a38:	00945413          	srli	s0,s0,0x9
80003a3c:	01771513          	slli	a0,a4,0x17
80003a40:	00c12083          	lw	ra,12(sp)
80003a44:	00856533          	or	a0,a0,s0
80003a48:	00812403          	lw	s0,8(sp)
80003a4c:	01010113          	addi	sp,sp,16
80003a50:	00008067          	ret
80003a54:	09900793          	li	a5,153
80003a58:	06e7d463          	bge	a5,a4,80003ac0 <__floatunsisf+0xcc>
80003a5c:	01b50793          	addi	a5,a0,27
80003a60:	00500693          	li	a3,5
80003a64:	00f417b3          	sll	a5,s0,a5
80003a68:	40a686b3          	sub	a3,a3,a0
80003a6c:	00f037b3          	snez	a5,a5
80003a70:	00d45433          	srl	s0,s0,a3
80003a74:	0087e7b3          	or	a5,a5,s0
80003a78:	fc000437          	lui	s0,0xfc000
80003a7c:	fff40413          	addi	s0,s0,-1 # fbffffff <TEMP_DATA_ADDR+0x7bfdffff>
80003a80:	0077f693          	andi	a3,a5,7
80003a84:	0087f433          	and	s0,a5,s0
80003a88:	00068a63          	beqz	a3,80003a9c <__floatunsisf+0xa8>
80003a8c:	00f7f793          	andi	a5,a5,15
80003a90:	00400693          	li	a3,4
80003a94:	00d78463          	beq	a5,a3,80003a9c <__floatunsisf+0xa8>
80003a98:	00440413          	addi	s0,s0,4
80003a9c:	00541793          	slli	a5,s0,0x5
80003aa0:	0007dc63          	bgez	a5,80003ab8 <__floatunsisf+0xc4>
80003aa4:	fc0007b7          	lui	a5,0xfc000
80003aa8:	fff78793          	addi	a5,a5,-1 # fbffffff <TEMP_DATA_ADDR+0x7bfdffff>
80003aac:	09f00713          	li	a4,159
80003ab0:	00f47433          	and	s0,s0,a5
80003ab4:	40a70733          	sub	a4,a4,a0
80003ab8:	00345413          	srli	s0,s0,0x3
80003abc:	f79ff06f          	j	80003a34 <__floatunsisf+0x40>
80003ac0:	ffb50793          	addi	a5,a0,-5
80003ac4:	00f417b3          	sll	a5,s0,a5
80003ac8:	fb1ff06f          	j	80003a78 <__floatunsisf+0x84>
80003acc:	09600713          	li	a4,150
80003ad0:	f65ff06f          	j	80003a34 <__floatunsisf+0x40>

80003ad4 <__mulsi3>:
80003ad4:	00050613          	mv	a2,a0
80003ad8:	00000513          	li	a0,0
80003adc:	0015f693          	andi	a3,a1,1
80003ae0:	00068463          	beqz	a3,80003ae8 <__mulsi3+0x14>
80003ae4:	00c50533          	add	a0,a0,a2
80003ae8:	0015d593          	srli	a1,a1,0x1
80003aec:	00161613          	slli	a2,a2,0x1
80003af0:	fe0596e3          	bnez	a1,80003adc <__mulsi3+0x8>
80003af4:	00008067          	ret

80003af8 <__divsi3>:
80003af8:	06054063          	bltz	a0,80003b58 <__umodsi3+0x10>
80003afc:	0605c663          	bltz	a1,80003b68 <__umodsi3+0x20>

80003b00 <__hidden___udivsi3>:
80003b00:	00058613          	mv	a2,a1
80003b04:	00050593          	mv	a1,a0
80003b08:	fff00513          	li	a0,-1
80003b0c:	02060c63          	beqz	a2,80003b44 <__hidden___udivsi3+0x44>
80003b10:	00100693          	li	a3,1
80003b14:	00b67a63          	bgeu	a2,a1,80003b28 <__hidden___udivsi3+0x28>
80003b18:	00c05863          	blez	a2,80003b28 <__hidden___udivsi3+0x28>
80003b1c:	00161613          	slli	a2,a2,0x1
80003b20:	00169693          	slli	a3,a3,0x1
80003b24:	feb66ae3          	bltu	a2,a1,80003b18 <__hidden___udivsi3+0x18>
80003b28:	00000513          	li	a0,0
80003b2c:	00c5e663          	bltu	a1,a2,80003b38 <__hidden___udivsi3+0x38>
80003b30:	40c585b3          	sub	a1,a1,a2
80003b34:	00d56533          	or	a0,a0,a3
80003b38:	0016d693          	srli	a3,a3,0x1
80003b3c:	00165613          	srli	a2,a2,0x1
80003b40:	fe0696e3          	bnez	a3,80003b2c <__hidden___udivsi3+0x2c>
80003b44:	00008067          	ret

80003b48 <__umodsi3>:
80003b48:	00008293          	mv	t0,ra
80003b4c:	fb5ff0ef          	jal	80003b00 <__hidden___udivsi3>
80003b50:	00058513          	mv	a0,a1
80003b54:	00028067          	jr	t0
80003b58:	40a00533          	neg	a0,a0
80003b5c:	00b04863          	bgtz	a1,80003b6c <__umodsi3+0x24>
80003b60:	40b005b3          	neg	a1,a1
80003b64:	f9dff06f          	j	80003b00 <__hidden___udivsi3>
80003b68:	40b005b3          	neg	a1,a1
80003b6c:	00008293          	mv	t0,ra
80003b70:	f91ff0ef          	jal	80003b00 <__hidden___udivsi3>
80003b74:	40a00533          	neg	a0,a0
80003b78:	00028067          	jr	t0

80003b7c <__modsi3>:
80003b7c:	00008293          	mv	t0,ra
80003b80:	0005ca63          	bltz	a1,80003b94 <__modsi3+0x18>
80003b84:	00054c63          	bltz	a0,80003b9c <__modsi3+0x20>
80003b88:	f79ff0ef          	jal	80003b00 <__hidden___udivsi3>
80003b8c:	00058513          	mv	a0,a1
80003b90:	00028067          	jr	t0
80003b94:	40b005b3          	neg	a1,a1
80003b98:	fe0558e3          	bgez	a0,80003b88 <__modsi3+0xc>
80003b9c:	40a00533          	neg	a0,a0
80003ba0:	f61ff0ef          	jal	80003b00 <__hidden___udivsi3>
80003ba4:	40b00533          	neg	a0,a1
80003ba8:	00028067          	jr	t0

80003bac <__clzsi2>:
80003bac:	000107b7          	lui	a5,0x10
80003bb0:	02f57a63          	bgeu	a0,a5,80003be4 <__clzsi2+0x38>
80003bb4:	10053793          	sltiu	a5,a0,256
80003bb8:	0017b793          	seqz	a5,a5
80003bbc:	00379793          	slli	a5,a5,0x3
80003bc0:	02000713          	li	a4,32
80003bc4:	40f70733          	sub	a4,a4,a5
80003bc8:	00f55533          	srl	a0,a0,a5
80003bcc:	00001797          	auipc	a5,0x1
80003bd0:	2f878793          	addi	a5,a5,760 # 80004ec4 <__clz_tab>
80003bd4:	00a787b3          	add	a5,a5,a0
80003bd8:	0007c503          	lbu	a0,0(a5)
80003bdc:	40a70533          	sub	a0,a4,a0
80003be0:	00008067          	ret
80003be4:	01000737          	lui	a4,0x1000
80003be8:	01800793          	li	a5,24
80003bec:	fce57ae3          	bgeu	a0,a4,80003bc0 <__clzsi2+0x14>
80003bf0:	01000793          	li	a5,16
80003bf4:	fcdff06f          	j	80003bc0 <__clzsi2+0x14>

Disassembly of section .rodata:

80003bf8 <str_p1_transmission-0xef0>:
80003bf8:	3d0a                	.insn	2, 0x3d0a
80003bfa:	3d3d                	.insn	2, 0x3d3d
80003bfc:	5320                	.insn	2, 0x5320
80003bfe:	7369                	.insn	2, 0x7369
80003c00:	6574                	.insn	2, 0x6574
80003c02:	616d                	.insn	2, 0x616d
80003c04:	6420                	.insn	2, 0x6420
80003c06:	2065                	.insn	2, 0x2065
80003c08:	746e6f43          	.insn	4, 0x746e6f43
80003c0c:	6f72                	.insn	2, 0x6f72
80003c0e:	206c                	.insn	2, 0x206c
80003c10:	6554                	.insn	2, 0x6554
80003c12:	6d72                	.insn	2, 0x6d72
80003c14:	6369                	.insn	2, 0x6369
80003c16:	6153206f          	j	80036a2a <TEMP_DATA_ADDR+0x16a2a>
80003c1a:	6574                	.insn	2, 0x6574
80003c1c:	696c                	.insn	2, 0x696c
80003c1e:	6174                	.insn	2, 0x6174
80003c20:	206c                	.insn	2, 0x206c
80003c22:	3d3d                	.insn	2, 0x3d3d
80003c24:	0a3d                	.insn	2, 0x0a3d
80003c26:	0000                	.insn	2, 0x
80003c28:	0000                	.insn	2, 0x
80003c2a:	0000                	.insn	2, 0x
80003c2c:	6e72654b          	.insn	4, 0x6e72654b
80003c30:	6c65                	.insn	2, 0x6c65
80003c32:	5220                	.insn	2, 0x5220
80003c34:	5349                	.insn	2, 0x5349
80003c36:	20562d43          	.insn	4, 0x20562d43
80003c3a:	5652                	.insn	2, 0x5652
80003c3c:	0a493233          	.insn	4, 0x0a493233
80003c40:	0000                	.insn	2, 0x
80003c42:	0000                	.insn	2, 0x
80003c44:	5455                	.insn	2, 0x5455
80003c46:	4345                	.insn	2, 0x4345
80003c48:	2d20                	.insn	2, 0x2d20
80003c4a:	5020                	.insn	2, 0x5020
80003c4c:	6f72                	.insn	2, 0x6f72
80003c4e:	6579                	.insn	2, 0x6579
80003c50:	206f7463          	bgeu	t5,t1,80003e58 <__clzsi2+0x2ac>
80003c54:	6946                	.insn	2, 0x6946
80003c56:	616e                	.insn	2, 0x616e
80003c58:	206c                	.insn	2, 0x206c
80003c5a:	74736953          	.insn	4, 0x74736953
80003c5e:	6d65                	.insn	2, 0x6d65
80003c60:	7361                	.insn	2, 0x7361
80003c62:	6420                	.insn	2, 0x6420
80003c64:	2065                	.insn	2, 0x2065
80003c66:	706d6f43          	.insn	4, 0x706d6f43
80003c6a:	7475                	.insn	2, 0x7475
80003c6c:	000a0a6f          	jal	s4,800a3c6c <TEMP_DATA_ADDR+0x83c6c>
80003c70:	494e495b          	.insn	4, 0x494e495b
80003c74:	5d4f4943          	.insn	4, 0x5d4f4943
80003c78:	4d20                	.insn	2, 0x4d20
80003c7a:	7465                	.insn	2, 0x7465
80003c7c:	6972                	.insn	2, 0x6972
80003c7e:	20736163          	bltu	t1,t2,80003e80 <__clzsi2+0x2d4>
80003c82:	6564                	.insn	2, 0x6564
80003c84:	7220                	.insn	2, 0x7220
80003c86:	6e65                	.insn	2, 0x6e65
80003c88:	6964                	.insn	2, 0x6964
80003c8a:	696d                	.insn	2, 0x696d
80003c8c:	6e65                	.insn	2, 0x6e65
80003c8e:	6f74                	.insn	2, 0x6f74
80003c90:	6920                	.insn	2, 0x6920
80003c92:	696e                	.insn	2, 0x696e
80003c94:	6c616963          	bltu	sp,t1,80004366 <__clzsi2+0x7ba>
80003c98:	7a69                	.insn	2, 0x7a69
80003c9a:	6461                	.insn	2, 0x6461
80003c9c:	7361                	.insn	2, 0x7361
80003c9e:	000a                	.insn	2, 0x000a
80003ca0:	494e495b          	.insn	4, 0x494e495b
80003ca4:	5d4f4943          	.insn	4, 0x5d4f4943
80003ca8:	4520                	.insn	2, 0x4520
80003caa:	64617473          	.insn	4, 0x64617473
80003cae:	6564206f          	j	80046304 <TEMP_DATA_ADDR+0x26304>
80003cb2:	206c                	.insn	2, 0x206c
80003cb4:	65746173          	.insn	4, 0x65746173
80003cb8:	696c                	.insn	2, 0x696c
80003cba:	6574                	.insn	2, 0x6574
80003cbc:	6920                	.insn	2, 0x6920
80003cbe:	696e                	.insn	2, 0x696e
80003cc0:	6c616963          	bltu	sp,t1,80004392 <__clzsi2+0x7e6>
80003cc4:	7a69                	.insn	2, 0x7a69
80003cc6:	6461                	.insn	2, 0x6461
80003cc8:	00000a6f          	jal	s4,80003cc8 <__clzsi2+0x11c>
80003ccc:	494e495b          	.insn	4, 0x494e495b
80003cd0:	5d4f4943          	.insn	4, 0x5d4f4943
80003cd4:	5020                	.insn	2, 0x5020
80003cd6:	6f72                	.insn	2, 0x6f72
80003cd8:	6f736563          	bltu	t1,s7,800043c2 <__clzsi2+0x816>
80003cdc:	6e692073          	.insn	4, 0x6e692073
80003ce0:	6369                	.insn	2, 0x6369
80003ce2:	6169                	.insn	2, 0x6169
80003ce4:	696c                	.insn	2, 0x696c
80003ce6:	617a                	.insn	2, 0x617a
80003ce8:	6f64                	.insn	2, 0x6f64
80003cea:	00000a73          	.insn	4, 0x0a73
80003cee:	0000                	.insn	2, 0x
80003cf0:	52454b5b          	.insn	4, 0x52454b5b
80003cf4:	454e                	.insn	2, 0x454e
80003cf6:	5d4c                	.insn	2, 0x5d4c
80003cf8:	4920                	.insn	2, 0x4920
80003cfa:	696e                	.insn	2, 0x696e
80003cfc:	6e616963          	bltu	sp,t1,800043ee <__clzsi2+0x842>
80003d00:	6f64                	.insn	2, 0x6f64
80003d02:	6520                	.insn	2, 0x6520
80003d04:	656a                	.insn	2, 0x656a
80003d06:	69637563          	bgeu	t1,s6,80004390 <__clzsi2+0x7e4>
80003d0a:	64206e6f          	jal	t3,8000a34c <current_mode+0x4064>
80003d0e:	2065                	.insn	2, 0x2065
80003d10:	7270                	.insn	2, 0x7270
80003d12:	7365636f          	jal	t1,8005a448 <TEMP_DATA_ADDR+0x3a448>
80003d16:	2e2e736f          	jal	t1,800eaff8 <TEMP_DATA_ADDR+0xcaff8>
80003d1a:	0a2e                	.insn	2, 0x0a2e
80003d1c:	000a                	.insn	2, 0x000a
80003d1e:	0000                	.insn	2, 0x
80003d20:	0a0a                	.insn	2, 0x0a0a
80003d22:	0000                	.insn	2, 0x
80003d24:	000a                	.insn	2, 0x000a
80003d26:	0000                	.insn	2, 0x
80003d28:	5b0a                	.insn	2, 0x5b0a
80003d2a:	4e52454b          	.insn	4, 0x4e52454b
80003d2e:	4c45                	.insn	2, 0x4c45
80003d30:	205d                	.insn	2, 0x205d
80003d32:	6a45                	.insn	2, 0x6a45
80003d34:	6365                	.insn	2, 0x6365
80003d36:	6375                	.insn	2, 0x6375
80003d38:	6f69                	.insn	2, 0x6f69
80003d3a:	206e                	.insn	2, 0x206e
80003d3c:	706d6f63          	bltu	s10,t1,8000445a <__clzsi2+0x8ae>
80003d40:	656c                	.insn	2, 0x656c
80003d42:	6174                	.insn	2, 0x6174
80003d44:	6164                	.insn	2, 0x6164
80003d46:	6520                	.insn	2, 0x6520
80003d48:	6978                	.insn	2, 0x6978
80003d4a:	6f74                	.insn	2, 0x6f74
80003d4c:	656d6173          	.insn	4, 0x656d6173
80003d50:	746e                	.insn	2, 0x746e
80003d52:	0a65                	.insn	2, 0x0a65
80003d54:	0000                	.insn	2, 0x
80003d56:	0000                	.insn	2, 0x
80003d58:	54454d5b          	.insn	4, 0x54454d5b
80003d5c:	4952                	.insn	2, 0x4952
80003d5e:	205d5343          	.insn	4, 0x205d5343
80003d62:	6550                	.insn	2, 0x6550
80003d64:	6672                	.insn	2, 0x6672
80003d66:	616d726f          	jal	tp,800db37c <TEMP_DATA_ADDR+0xbb37c>
80003d6a:	636e                	.insn	2, 0x636e
80003d6c:	2065                	.insn	2, 0x2065
80003d6e:	7274                	.insn	2, 0x7274
80003d70:	6361                	.insn	2, 0x6361
80003d72:	676e696b          	.insn	4, 0x676e696b
80003d76:	6920                	.insn	2, 0x6920
80003d78:	696e                	.insn	2, 0x696e
80003d7a:	6974                	.insn	2, 0x6974
80003d7c:	6c61                	.insn	2, 0x6c61
80003d7e:	7a69                	.insn	2, 0x7a69
80003d80:	6465                	.insn	2, 0x6465
80003d82:	000a                	.insn	2, 0x000a
80003d84:	95e2                	.insn	2, 0x95e2
80003d86:	e294                	.insn	2, 0xe294
80003d88:	9095                	.insn	2, 0x9095
80003d8a:	95e2                	.insn	2, 0x95e2
80003d8c:	e290                	.insn	2, 0xe290
80003d8e:	9095                	.insn	2, 0x9095
80003d90:	95e2                	.insn	2, 0x95e2
80003d92:	e290                	.insn	2, 0xe290
80003d94:	9095                	.insn	2, 0x9095
80003d96:	95e2                	.insn	2, 0x95e2
80003d98:	e290                	.insn	2, 0xe290
80003d9a:	9095                	.insn	2, 0x9095
80003d9c:	95e2                	.insn	2, 0x95e2
80003d9e:	e290                	.insn	2, 0xe290
80003da0:	9095                	.insn	2, 0x9095
80003da2:	95e2                	.insn	2, 0x95e2
80003da4:	e290                	.insn	2, 0xe290
80003da6:	9095                	.insn	2, 0x9095
80003da8:	95e2                	.insn	2, 0x95e2
80003daa:	e290                	.insn	2, 0xe290
80003dac:	9095                	.insn	2, 0x9095
80003dae:	95e2                	.insn	2, 0x95e2
80003db0:	e290                	.insn	2, 0xe290
80003db2:	9095                	.insn	2, 0x9095
80003db4:	95e2                	.insn	2, 0x95e2
80003db6:	e290                	.insn	2, 0xe290
80003db8:	9095                	.insn	2, 0x9095
80003dba:	95e2                	.insn	2, 0x95e2
80003dbc:	e290                	.insn	2, 0xe290
80003dbe:	9095                	.insn	2, 0x9095
80003dc0:	95e2                	.insn	2, 0x95e2
80003dc2:	e290                	.insn	2, 0xe290
80003dc4:	9095                	.insn	2, 0x9095
80003dc6:	95e2                	.insn	2, 0x95e2
80003dc8:	e290                	.insn	2, 0xe290
80003dca:	9095                	.insn	2, 0x9095
80003dcc:	95e2                	.insn	2, 0x95e2
80003dce:	e290                	.insn	2, 0xe290
80003dd0:	9095                	.insn	2, 0x9095
80003dd2:	95e2                	.insn	2, 0x95e2
80003dd4:	e290                	.insn	2, 0xe290
80003dd6:	9095                	.insn	2, 0x9095
80003dd8:	95e2                	.insn	2, 0x95e2
80003dda:	e290                	.insn	2, 0xe290
80003ddc:	9095                	.insn	2, 0x9095
80003dde:	95e2                	.insn	2, 0x95e2
80003de0:	e290                	.insn	2, 0xe290
80003de2:	9095                	.insn	2, 0x9095
80003de4:	95e2                	.insn	2, 0x95e2
80003de6:	e290                	.insn	2, 0xe290
80003de8:	9095                	.insn	2, 0x9095
80003dea:	95e2                	.insn	2, 0x95e2
80003dec:	e290                	.insn	2, 0xe290
80003dee:	9095                	.insn	2, 0x9095
80003df0:	95e2                	.insn	2, 0x95e2
80003df2:	e290                	.insn	2, 0xe290
80003df4:	9095                	.insn	2, 0x9095
80003df6:	95e2                	.insn	2, 0x95e2
80003df8:	e290                	.insn	2, 0xe290
80003dfa:	9095                	.insn	2, 0x9095
80003dfc:	95e2                	.insn	2, 0x95e2
80003dfe:	e290                	.insn	2, 0xe290
80003e00:	9095                	.insn	2, 0x9095
80003e02:	95e2                	.insn	2, 0x95e2
80003e04:	e290                	.insn	2, 0xe290
80003e06:	9095                	.insn	2, 0x9095
80003e08:	95e2                	.insn	2, 0x95e2
80003e0a:	e290                	.insn	2, 0xe290
80003e0c:	9095                	.insn	2, 0x9095
80003e0e:	95e2                	.insn	2, 0x95e2
80003e10:	e290                	.insn	2, 0xe290
80003e12:	9095                	.insn	2, 0x9095
80003e14:	95e2                	.insn	2, 0x95e2
80003e16:	e290                	.insn	2, 0xe290
80003e18:	9095                	.insn	2, 0x9095
80003e1a:	95e2                	.insn	2, 0x95e2
80003e1c:	e290                	.insn	2, 0xe290
80003e1e:	9095                	.insn	2, 0x9095
80003e20:	95e2                	.insn	2, 0x95e2
80003e22:	e290                	.insn	2, 0xe290
80003e24:	9095                	.insn	2, 0x9095
80003e26:	95e2                	.insn	2, 0x95e2
80003e28:	e290                	.insn	2, 0xe290
80003e2a:	9095                	.insn	2, 0x9095
80003e2c:	95e2                	.insn	2, 0x95e2
80003e2e:	e290                	.insn	2, 0xe290
80003e30:	9795                	.insn	2, 0x9795
80003e32:	000a                	.insn	2, 0x000a
80003e34:	95e2                	.insn	2, 0x95e2
80003e36:	2091                	.insn	2, 0x2091
80003e38:	2020                	.insn	2, 0x2020
80003e3a:	2020                	.insn	2, 0x2020
80003e3c:	2020                	.insn	2, 0x2020
80003e3e:	2020                	.insn	2, 0x2020
80003e40:	4552                	.insn	2, 0x4552
80003e42:	454d5553          	.insn	4, 0x454d5553
80003e46:	204e                	.insn	2, 0x204e
80003e48:	4544                	.insn	2, 0x4544
80003e4a:	4d20                	.insn	2, 0x4d20
80003e4c:	5445                	.insn	2, 0x5445
80003e4e:	4952                	.insn	2, 0x4952
80003e50:	20534143          	.insn	4, 0x20534143
80003e54:	4544                	.insn	2, 0x4544
80003e56:	5220                	.insn	2, 0x5220
80003e58:	4e45                	.insn	2, 0x4e45
80003e5a:	4944                	.insn	2, 0x4944
80003e5c:	494d                	.insn	2, 0x494d
80003e5e:	4e45                	.insn	2, 0x4e45
80003e60:	4f54                	.insn	2, 0x4f54
80003e62:	2020                	.insn	2, 0x2020
80003e64:	2020                	.insn	2, 0x2020
80003e66:	2020                	.insn	2, 0x2020
80003e68:	2020                	.insn	2, 0x2020
80003e6a:	2020                	.insn	2, 0x2020
80003e6c:	2020                	.insn	2, 0x2020
80003e6e:	95e2                	.insn	2, 0x95e2
80003e70:	0a91                	.insn	2, 0x0a91
80003e72:	0000                	.insn	2, 0x
80003e74:	95e2                	.insn	2, 0x95e2
80003e76:	e29a                	.insn	2, 0xe29a
80003e78:	9095                	.insn	2, 0x9095
80003e7a:	95e2                	.insn	2, 0x95e2
80003e7c:	e290                	.insn	2, 0xe290
80003e7e:	9095                	.insn	2, 0x9095
80003e80:	95e2                	.insn	2, 0x95e2
80003e82:	e290                	.insn	2, 0xe290
80003e84:	9095                	.insn	2, 0x9095
80003e86:	95e2                	.insn	2, 0x95e2
80003e88:	e290                	.insn	2, 0xe290
80003e8a:	9095                	.insn	2, 0x9095
80003e8c:	95e2                	.insn	2, 0x95e2
80003e8e:	e290                	.insn	2, 0xe290
80003e90:	9095                	.insn	2, 0x9095
80003e92:	95e2                	.insn	2, 0x95e2
80003e94:	e290                	.insn	2, 0xe290
80003e96:	9095                	.insn	2, 0x9095
80003e98:	95e2                	.insn	2, 0x95e2
80003e9a:	e290                	.insn	2, 0xe290
80003e9c:	9095                	.insn	2, 0x9095
80003e9e:	95e2                	.insn	2, 0x95e2
80003ea0:	e290                	.insn	2, 0xe290
80003ea2:	9095                	.insn	2, 0x9095
80003ea4:	95e2                	.insn	2, 0x95e2
80003ea6:	e290                	.insn	2, 0xe290
80003ea8:	9095                	.insn	2, 0x9095
80003eaa:	95e2                	.insn	2, 0x95e2
80003eac:	e290                	.insn	2, 0xe290
80003eae:	9095                	.insn	2, 0x9095
80003eb0:	95e2                	.insn	2, 0x95e2
80003eb2:	e290                	.insn	2, 0xe290
80003eb4:	9095                	.insn	2, 0x9095
80003eb6:	95e2                	.insn	2, 0x95e2
80003eb8:	e290                	.insn	2, 0xe290
80003eba:	9095                	.insn	2, 0x9095
80003ebc:	95e2                	.insn	2, 0x95e2
80003ebe:	e290                	.insn	2, 0xe290
80003ec0:	9095                	.insn	2, 0x9095
80003ec2:	95e2                	.insn	2, 0x95e2
80003ec4:	e290                	.insn	2, 0xe290
80003ec6:	9095                	.insn	2, 0x9095
80003ec8:	95e2                	.insn	2, 0x95e2
80003eca:	e290                	.insn	2, 0xe290
80003ecc:	9095                	.insn	2, 0x9095
80003ece:	95e2                	.insn	2, 0x95e2
80003ed0:	e290                	.insn	2, 0xe290
80003ed2:	9095                	.insn	2, 0x9095
80003ed4:	95e2                	.insn	2, 0x95e2
80003ed6:	e290                	.insn	2, 0xe290
80003ed8:	9095                	.insn	2, 0x9095
80003eda:	95e2                	.insn	2, 0x95e2
80003edc:	e290                	.insn	2, 0xe290
80003ede:	9095                	.insn	2, 0x9095
80003ee0:	95e2                	.insn	2, 0x95e2
80003ee2:	e290                	.insn	2, 0xe290
80003ee4:	9095                	.insn	2, 0x9095
80003ee6:	95e2                	.insn	2, 0x95e2
80003ee8:	e290                	.insn	2, 0xe290
80003eea:	9095                	.insn	2, 0x9095
80003eec:	95e2                	.insn	2, 0x95e2
80003eee:	e290                	.insn	2, 0xe290
80003ef0:	9095                	.insn	2, 0x9095
80003ef2:	95e2                	.insn	2, 0x95e2
80003ef4:	e290                	.insn	2, 0xe290
80003ef6:	9095                	.insn	2, 0x9095
80003ef8:	95e2                	.insn	2, 0x95e2
80003efa:	e290                	.insn	2, 0xe290
80003efc:	9095                	.insn	2, 0x9095
80003efe:	95e2                	.insn	2, 0x95e2
80003f00:	e290                	.insn	2, 0xe290
80003f02:	9095                	.insn	2, 0x9095
80003f04:	95e2                	.insn	2, 0x95e2
80003f06:	e290                	.insn	2, 0xe290
80003f08:	9095                	.insn	2, 0x9095
80003f0a:	95e2                	.insn	2, 0x95e2
80003f0c:	e290                	.insn	2, 0xe290
80003f0e:	9095                	.insn	2, 0x9095
80003f10:	95e2                	.insn	2, 0x95e2
80003f12:	e290                	.insn	2, 0xe290
80003f14:	9095                	.insn	2, 0x9095
80003f16:	95e2                	.insn	2, 0x95e2
80003f18:	e290                	.insn	2, 0xe290
80003f1a:	9095                	.insn	2, 0x9095
80003f1c:	95e2                	.insn	2, 0x95e2
80003f1e:	e290                	.insn	2, 0xe290
80003f20:	9d95                	.insn	2, 0x9d95
80003f22:	000a                	.insn	2, 0x000a
80003f24:	454d                	.insn	2, 0x454d
80003f26:	5254                	.insn	2, 0x5254
80003f28:	4349                	.insn	2, 0x4349
80003f2a:	5341                	.insn	2, 0x5341
80003f2c:	4420                	.insn	2, 0x4420
80003f2e:	4c45                	.insn	2, 0x4c45
80003f30:	5020                	.insn	2, 0x5020
80003f32:	414c                	.insn	2, 0x414c
80003f34:	494e                	.insn	2, 0x494e
80003f36:	4946                	.insn	2, 0x4946
80003f38:	4f444143          	.insn	4, 0x4f444143
80003f3c:	3a52                	.insn	2, 0x3a52
80003f3e:	000a                	.insn	2, 0x000a
80003f40:	2020                	.insn	2, 0x2020
80003f42:	694d                	.insn	2, 0x694d
80003f44:	756e                	.insn	2, 0x756e
80003f46:	6f74                	.insn	2, 0x6f74
80003f48:	726f2073          	.insn	4, 0x726f2073
80003f4c:	6962                	.insn	2, 0x6962
80003f4e:	6174                	.insn	2, 0x6174
80003f50:	656c                	.insn	2, 0x656c
80003f52:	20203a73          	.insn	4, 0x20203a73
80003f56:	2020                	.insn	2, 0x2020
80003f58:	0000                	.insn	2, 0x
80003f5a:	0000                	.insn	2, 0x
80003f5c:	6d20                	.insn	2, 0x6d20
80003f5e:	6e69                	.insn	2, 0x6e69
80003f60:	2820                	.insn	2, 0x2820
80003f62:	2031                	.insn	2, 0x2031
80003f64:	6962726f          	jal	tp,8002b5fa <TEMP_DATA_ADDR+0xb5fa>
80003f68:	6174                	.insn	2, 0x6174
80003f6a:	4c20                	.insn	2, 0x4c20
80003f6c:	4f45                	.insn	2, 0x4f45
80003f6e:	0a29                	.insn	2, 0x0a29
80003f70:	0000                	.insn	2, 0x
80003f72:	0000                	.insn	2, 0x
80003f74:	2020                	.insn	2, 0x2020
80003f76:	626d6143          	.insn	4, 0x626d6143
80003f7a:	6f69                	.insn	2, 0x6f69
80003f7c:	65642073          	.insn	4, 0x65642073
80003f80:	6320                	.insn	2, 0x6320
80003f82:	65746e6f          	jal	t3,8004add8 <TEMP_DATA_ADDR+0x2add8>
80003f86:	7478                	.insn	2, 0x7478
80003f88:	20203a6f          	jal	s4,8000718a <current_mode+0xea2>
80003f8c:	0000                	.insn	2, 0x
80003f8e:	0000                	.insn	2, 0x
80003f90:	2020                	.insn	2, 0x2020
80003f92:	626d6143          	.insn	4, 0x626d6143
80003f96:	6f69                	.insn	2, 0x6f69
80003f98:	65642073          	.insn	4, 0x65642073
80003f9c:	7020                	.insn	2, 0x7020
80003f9e:	6f72                	.insn	2, 0x6f72
80003fa0:	6f736563          	bltu	t1,s7,8000468a <__clzsi2+0xade>
80003fa4:	203a                	.insn	2, 0x203a
80003fa6:	2020                	.insn	2, 0x2020
80003fa8:	0000                	.insn	2, 0x
80003faa:	0000                	.insn	2, 0x
80003fac:	4a45                	.insn	2, 0x4a45
80003fae:	4345                	.insn	2, 0x4345
80003fb0:	4355                	.insn	2, 0x4355
80003fb2:	4f49                	.insn	2, 0x4f49
80003fb4:	454e                	.insn	2, 0x454e
80003fb6:	45442053          	.insn	4, 0x45442053
80003fba:	5020                	.insn	2, 0x5020
80003fbc:	4f52                	.insn	2, 0x4f52
80003fbe:	4f534543          	.insn	4, 0x4f534543
80003fc2:	000a3a53          	.insn	4, 0x000a3a53
80003fc6:	0000                	.insn	2, 0x
80003fc8:	2020                	.insn	2, 0x2020
80003fca:	3150                	.insn	2, 0x3150
80003fcc:	2820                	.insn	2, 0x2820
80003fce:	6441                	.insn	2, 0x6441
80003fd0:	7571                	.insn	2, 0x7571
80003fd2:	7369                	.insn	2, 0x7369
80003fd4:	6369                	.insn	2, 0x6369
80003fd6:	6f69                	.insn	2, 0x6f69
80003fd8:	296e                	.insn	2, 0x296e
80003fda:	203a                	.insn	2, 0x203a
80003fdc:	2020                	.insn	2, 0x2020
80003fde:	2020                	.insn	2, 0x2020
80003fe0:	0000                	.insn	2, 0x
80003fe2:	0000                	.insn	2, 0x
80003fe4:	2820                	.insn	2, 0x2820
80003fe6:	0000                	.insn	2, 0x
80003fe8:	2f4e                	.insn	2, 0x2f4e
80003fea:	0041                	.insn	2, 0x0041
80003fec:	2020                	.insn	2, 0x2020
80003fee:	3250                	.insn	2, 0x3250
80003ff0:	2820                	.insn	2, 0x2820
80003ff2:	6e45                	.insn	2, 0x6e45
80003ff4:	7266                	.insn	2, 0x7266
80003ff6:	6169                	.insn	2, 0x6169
80003ff8:	696d                	.insn	2, 0x696d
80003ffa:	6e65                	.insn	2, 0x6e65
80003ffc:	6f74                	.insn	2, 0x6f74
80003ffe:	3a29                	.insn	2, 0x3a29
80004000:	2020                	.insn	2, 0x2020
80004002:	2020                	.insn	2, 0x2020
80004004:	0000                	.insn	2, 0x
80004006:	0000                	.insn	2, 0x
80004008:	2020                	.insn	2, 0x2020
8000400a:	3350                	.insn	2, 0x3350
8000400c:	2820                	.insn	2, 0x2820
8000400e:	6554                	.insn	2, 0x6554
80004010:	656c                	.insn	2, 0x656c
80004012:	656d                	.insn	2, 0x656d
80004014:	7274                	.insn	2, 0x7274
80004016:	6169                	.insn	2, 0x6169
80004018:	3a29                	.insn	2, 0x3a29
8000401a:	2020                	.insn	2, 0x2020
8000401c:	2020                	.insn	2, 0x2020
8000401e:	2020                	.insn	2, 0x2020
80004020:	0000                	.insn	2, 0x
80004022:	0000                	.insn	2, 0x
80004024:	4954                	.insn	2, 0x4954
80004026:	4d45                	.insn	2, 0x4d45
80004028:	4f50                	.insn	2, 0x4f50
8000402a:	45442053          	.insn	4, 0x45442053
8000402e:	4520                	.insn	2, 0x4520
80004030:	454a                	.insn	2, 0x454a
80004032:	49435543          	.insn	4, 0x49435543
80004036:	28204e4f          	.insn	4, 0x28204e4f
8000403a:	6c636963          	bltu	t1,t1,8000470c <__clzsi2+0xb60>
8000403e:	4320736f          	jal	t1,8000b470 <current_mode+0x5188>
80004042:	5550                	.insn	2, 0x5550
80004044:	3a29                	.insn	2, 0x3a29
80004046:	000a                	.insn	2, 0x000a
80004048:	2020                	.insn	2, 0x2020
8000404a:	3150                	.insn	2, 0x3150
8000404c:	7020                	.insn	2, 0x7020
8000404e:	6f72                	.insn	2, 0x6f72
80004050:	656d                	.insn	2, 0x656d
80004052:	6964                	.insn	2, 0x6964
80004054:	20203a6f          	jal	s4,80007256 <current_mode+0xf6e>
80004058:	2020                	.insn	2, 0x2020
8000405a:	2020                	.insn	2, 0x2020
8000405c:	2020                	.insn	2, 0x2020
8000405e:	2020                	.insn	2, 0x2020
80004060:	0000                	.insn	2, 0x
80004062:	0000                	.insn	2, 0x
80004064:	6320                	.insn	2, 0x6320
80004066:	6369                	.insn	2, 0x6369
80004068:	6f6c                	.insn	2, 0x6f6c
8000406a:	00000a73          	.insn	4, 0x0a73
8000406e:	0000                	.insn	2, 0x
80004070:	2020                	.insn	2, 0x2020
80004072:	3250                	.insn	2, 0x3250
80004074:	7020                	.insn	2, 0x7020
80004076:	6f72                	.insn	2, 0x6f72
80004078:	656d                	.insn	2, 0x656d
8000407a:	6964                	.insn	2, 0x6964
8000407c:	20203a6f          	jal	s4,8000727e <current_mode+0xf96>
80004080:	2020                	.insn	2, 0x2020
80004082:	2020                	.insn	2, 0x2020
80004084:	2020                	.insn	2, 0x2020
80004086:	2020                	.insn	2, 0x2020
80004088:	0000                	.insn	2, 0x
8000408a:	0000                	.insn	2, 0x
8000408c:	2020                	.insn	2, 0x2020
8000408e:	3350                	.insn	2, 0x3350
80004090:	7020                	.insn	2, 0x7020
80004092:	6f72                	.insn	2, 0x6f72
80004094:	656d                	.insn	2, 0x656d
80004096:	6964                	.insn	2, 0x6964
80004098:	20203a6f          	jal	s4,8000729a <current_mode+0xfb2>
8000409c:	2020                	.insn	2, 0x2020
8000409e:	2020                	.insn	2, 0x2020
800040a0:	2020                	.insn	2, 0x2020
800040a2:	2020                	.insn	2, 0x2020
800040a4:	0000                	.insn	2, 0x
800040a6:	0000                	.insn	2, 0x
800040a8:	2020                	.insn	2, 0x2020
800040aa:	6f54                	.insn	2, 0x6f54
800040ac:	6174                	.insn	2, 0x6174
800040ae:	206c                	.insn	2, 0x206c
800040b0:	3150                	.insn	2, 0x3150
800040b2:	203a                	.insn	2, 0x203a
800040b4:	2020                	.insn	2, 0x2020
800040b6:	2020                	.insn	2, 0x2020
800040b8:	2020                	.insn	2, 0x2020
800040ba:	2020                	.insn	2, 0x2020
800040bc:	2020                	.insn	2, 0x2020
800040be:	2020                	.insn	2, 0x2020
800040c0:	0000                	.insn	2, 0x
800040c2:	0000                	.insn	2, 0x
800040c4:	2020                	.insn	2, 0x2020
800040c6:	6f54                	.insn	2, 0x6f54
800040c8:	6174                	.insn	2, 0x6174
800040ca:	206c                	.insn	2, 0x206c
800040cc:	3250                	.insn	2, 0x3250
800040ce:	203a                	.insn	2, 0x203a
800040d0:	2020                	.insn	2, 0x2020
800040d2:	2020                	.insn	2, 0x2020
800040d4:	2020                	.insn	2, 0x2020
800040d6:	2020                	.insn	2, 0x2020
800040d8:	2020                	.insn	2, 0x2020
800040da:	2020                	.insn	2, 0x2020
800040dc:	0000                	.insn	2, 0x
800040de:	0000                	.insn	2, 0x
800040e0:	2020                	.insn	2, 0x2020
800040e2:	6f54                	.insn	2, 0x6f54
800040e4:	6174                	.insn	2, 0x6174
800040e6:	206c                	.insn	2, 0x206c
800040e8:	3350                	.insn	2, 0x3350
800040ea:	203a                	.insn	2, 0x203a
800040ec:	2020                	.insn	2, 0x2020
800040ee:	2020                	.insn	2, 0x2020
800040f0:	2020                	.insn	2, 0x2020
800040f2:	2020                	.insn	2, 0x2020
800040f4:	2020                	.insn	2, 0x2020
800040f6:	2020                	.insn	2, 0x2020
800040f8:	0000                	.insn	2, 0x
800040fa:	0000                	.insn	2, 0x
800040fc:	6320                	.insn	2, 0x6320
800040fe:	6369                	.insn	2, 0x6369
80004100:	6f6c                	.insn	2, 0x6f6c
80004102:	000a0a73          	.insn	4, 0x000a0a73
80004106:	0000                	.insn	2, 0x
80004108:	454d                	.insn	2, 0x454d
8000410a:	5254                	.insn	2, 0x5254
8000410c:	4349                	.insn	2, 0x4349
8000410e:	5341                	.insn	2, 0x5341
80004110:	4420                	.insn	2, 0x4420
80004112:	2045                	.insn	2, 0x2045
80004114:	4554                	.insn	2, 0x4554
80004116:	504d                	.insn	2, 0x504d
80004118:	5245                	.insn	2, 0x5245
8000411a:	5441                	.insn	2, 0x5441
8000411c:	5255                	.insn	2, 0x5255
8000411e:	3a41                	.insn	2, 0x3a41
80004120:	000a                	.insn	2, 0x000a
80004122:	0000                	.insn	2, 0x
80004124:	2020                	.insn	2, 0x2020
80004126:	654c                	.insn	2, 0x654c
80004128:	72757463          	bgeu	a0,t2,80004850 <__clzsi2+0xca4>
8000412c:	7361                	.insn	2, 0x7361
8000412e:	203a                	.insn	2, 0x203a
80004130:	2020                	.insn	2, 0x2020
80004132:	2020                	.insn	2, 0x2020
80004134:	2020                	.insn	2, 0x2020
80004136:	2020                	.insn	2, 0x2020
80004138:	2020                	.insn	2, 0x2020
8000413a:	2020                	.insn	2, 0x2020
8000413c:	0000                	.insn	2, 0x
8000413e:	0000                	.insn	2, 0x
80004140:	2020                	.insn	2, 0x2020
80004142:	7254                	.insn	2, 0x7254
80004144:	6e61                	.insn	2, 0x6e61
80004146:	73696d73          	.insn	4, 0x73696d73
8000414a:	6f69                	.insn	2, 0x6f69
8000414c:	656e                	.insn	2, 0x656e
8000414e:	20203a73          	.insn	4, 0x20203a73
80004152:	2020                	.insn	2, 0x2020
80004154:	2020                	.insn	2, 0x2020
80004156:	2020                	.insn	2, 0x2020
80004158:	0000                	.insn	2, 0x
8000415a:	0000                	.insn	2, 0x
8000415c:	2020                	.insn	2, 0x2020
8000415e:	6e41                	.insn	2, 0x6e41
80004160:	6c616d6f          	jal	s10,8001a826 <_heap_start+0x4546>
80004164:	6169                	.insn	2, 0x6169
80004166:	3e282073          	.insn	4, 0x3e282073
8000416a:	3039                	.insn	2, 0x3039
8000416c:	203a2943          	.insn	4, 0x203a2943
80004170:	2020                	.insn	2, 0x2020
80004172:	2020                	.insn	2, 0x2020
80004174:	0000                	.insn	2, 0x
80004176:	0000                	.insn	2, 0x
80004178:	54534953          	.insn	4, 0x54534953
8000417c:	4d45                	.insn	2, 0x4d45
8000417e:	2041                	.insn	2, 0x2041
80004180:	4544                	.insn	2, 0x4544
80004182:	4520                	.insn	2, 0x4520
80004184:	464e                	.insn	2, 0x464e
80004186:	4952                	.insn	2, 0x4952
80004188:	4d41                	.insn	2, 0x4d41
8000418a:	4549                	.insn	2, 0x4549
8000418c:	544e                	.insn	2, 0x544e
8000418e:	000a3a4f          	.insn	4, 0x000a3a4f
80004192:	0000                	.insn	2, 0x
80004194:	2020                	.insn	2, 0x2020
80004196:	6341                	.insn	2, 0x6341
80004198:	6974                	.insn	2, 0x6974
8000419a:	6176                	.insn	2, 0x6176
8000419c:	6e6f6963          	bltu	t5,t1,8000488e <__clzsi2+0xce2>
800041a0:	7365                	.insn	2, 0x7365
800041a2:	203a                	.insn	2, 0x203a
800041a4:	2020                	.insn	2, 0x2020
800041a6:	2020                	.insn	2, 0x2020
800041a8:	2020                	.insn	2, 0x2020
800041aa:	2020                	.insn	2, 0x2020
800041ac:	0000                	.insn	2, 0x
800041ae:	0000                	.insn	2, 0x
800041b0:	2020                	.insn	2, 0x2020
800041b2:	6544                	.insn	2, 0x6544
800041b4:	74636173          	.insn	4, 0x74636173
800041b8:	7669                	.insn	2, 0x7669
800041ba:	6361                	.insn	2, 0x6361
800041bc:	6f69                	.insn	2, 0x6f69
800041be:	656e                	.insn	2, 0x656e
800041c0:	20203a73          	.insn	4, 0x20203a73
800041c4:	2020                	.insn	2, 0x2020
800041c6:	2020                	.insn	2, 0x2020
800041c8:	0000                	.insn	2, 0x
800041ca:	0000                	.insn	2, 0x
800041cc:	2020                	.insn	2, 0x2020
800041ce:	6954                	.insn	2, 0x6954
800041d0:	6d65                	.insn	2, 0x6d65
800041d2:	6f70                	.insn	2, 0x6f70
800041d4:	7420                	.insn	2, 0x7420
800041d6:	6c61746f          	jal	s0,8001b89c <_heap_start+0x55bc>
800041da:	6120                	.insn	2, 0x6120
800041dc:	76697463          	bgeu	s2,t1,80004944 <__clzsi2+0xd98>
800041e0:	20203a6f          	jal	s4,800073e2 <current_mode+0x10fa>
800041e4:	0000                	.insn	2, 0x
800041e6:	0000                	.insn	2, 0x
800041e8:	6d20                	.insn	2, 0x6d20
800041ea:	6e69                	.insn	2, 0x6e69
800041ec:	0a0a                	.insn	2, 0x0a0a
800041ee:	0000                	.insn	2, 0x
800041f0:	454d                	.insn	2, 0x454d
800041f2:	5254                	.insn	2, 0x5254
800041f4:	4349                	.insn	2, 0x4349
800041f6:	5341                	.insn	2, 0x5341
800041f8:	5520                	.insn	2, 0x5520
800041fa:	5241                	.insn	2, 0x5241
800041fc:	3a54                	.insn	2, 0x3a54
800041fe:	000a                	.insn	2, 0x000a
80004200:	2020                	.insn	2, 0x2020
80004202:	7942                	.insn	2, 0x7942
80004204:	6574                	.insn	2, 0x6574
80004206:	6e652073          	.insn	4, 0x6e652073
8000420a:	6976                	.insn	2, 0x6976
8000420c:	6461                	.insn	2, 0x6461
8000420e:	203a736f          	jal	t1,800abc10 <TEMP_DATA_ADDR+0x8bc10>
80004212:	2020                	.insn	2, 0x2020
80004214:	2020                	.insn	2, 0x2020
80004216:	2020                	.insn	2, 0x2020
80004218:	0000                	.insn	2, 0x
8000421a:	0000                	.insn	2, 0x
8000421c:	2020                	.insn	2, 0x2020
8000421e:	654d                	.insn	2, 0x654d
80004220:	736e                	.insn	2, 0x736e
80004222:	6a61                	.insn	2, 0x6a61
80004224:	7365                	.insn	2, 0x7365
80004226:	6520                	.insn	2, 0x6520
80004228:	766e                	.insn	2, 0x766e
8000422a:	6169                	.insn	2, 0x6169
8000422c:	6f64                	.insn	2, 0x6f64
8000422e:	20203a73          	.insn	4, 0x20203a73
80004232:	2020                	.insn	2, 0x2020
80004234:	0000                	.insn	2, 0x
80004236:	0000                	.insn	2, 0x
80004238:	4544                	.insn	2, 0x4544
8000423a:	4554                	.insn	2, 0x4554
8000423c:	4f494343          	.insn	4, 0x4f494343
80004240:	204e                	.insn	2, 0x204e
80004242:	4544                	.insn	2, 0x4544
80004244:	5020                	.insn	2, 0x5020
80004246:	5245                	.insn	2, 0x5245
80004248:	4944                	.insn	2, 0x4944
8000424a:	4144                	.insn	2, 0x4144
8000424c:	4420                	.insn	2, 0x4420
8000424e:	2045                	.insn	2, 0x2045
80004250:	4144                	.insn	2, 0x4144
80004252:	4f54                	.insn	2, 0x4f54
80004254:	000a3a53          	.insn	4, 0x000a3a53
80004258:	2020                	.insn	2, 0x2020
8000425a:	626d6143          	.insn	4, 0x626d6143
8000425e:	6f69                	.insn	2, 0x6f69
80004260:	62612073          	.insn	4, 0x62612073
80004264:	7572                	.insn	2, 0x7572
80004266:	7470                	.insn	2, 0x7470
80004268:	203a736f          	jal	t1,800abc6a <TEMP_DATA_ADDR+0x8bc6a>
8000426c:	2020                	.insn	2, 0x2020
8000426e:	2020                	.insn	2, 0x2020
80004270:	0000                	.insn	2, 0x
80004272:	0000                	.insn	2, 0x
80004274:	2020                	.insn	2, 0x2020
80004276:	7645                	.insn	2, 0x7645
80004278:	6e65                	.insn	2, 0x6e65
8000427a:	6f74                	.insn	2, 0x6f74
8000427c:	65642073          	.insn	4, 0x65642073
80004280:	7020                	.insn	2, 0x7020
80004282:	7265                	.insn	2, 0x7265
80004284:	6964                	.insn	2, 0x6964
80004286:	6164                	.insn	2, 0x6164
80004288:	203a                	.insn	2, 0x203a
8000428a:	2020                	.insn	2, 0x2020
8000428c:	0000                	.insn	2, 0x
8000428e:	0000                	.insn	2, 0x
80004290:	95e2                	.insn	2, 0x95e2
80004292:	e290                	.insn	2, 0xe290
80004294:	9095                	.insn	2, 0x9095
80004296:	95e2                	.insn	2, 0x95e2
80004298:	e290                	.insn	2, 0xe290
8000429a:	9095                	.insn	2, 0x9095
8000429c:	95e2                	.insn	2, 0x95e2
8000429e:	e290                	.insn	2, 0xe290
800042a0:	9095                	.insn	2, 0x9095
800042a2:	95e2                	.insn	2, 0x95e2
800042a4:	e290                	.insn	2, 0xe290
800042a6:	9095                	.insn	2, 0x9095
800042a8:	95e2                	.insn	2, 0x95e2
800042aa:	e290                	.insn	2, 0xe290
800042ac:	9095                	.insn	2, 0x9095
800042ae:	95e2                	.insn	2, 0x95e2
800042b0:	e290                	.insn	2, 0xe290
800042b2:	9095                	.insn	2, 0x9095
800042b4:	95e2                	.insn	2, 0x95e2
800042b6:	e290                	.insn	2, 0xe290
800042b8:	9095                	.insn	2, 0x9095
800042ba:	95e2                	.insn	2, 0x95e2
800042bc:	e290                	.insn	2, 0xe290
800042be:	9095                	.insn	2, 0x9095
800042c0:	95e2                	.insn	2, 0x95e2
800042c2:	e290                	.insn	2, 0xe290
800042c4:	9095                	.insn	2, 0x9095
800042c6:	95e2                	.insn	2, 0x95e2
800042c8:	e290                	.insn	2, 0xe290
800042ca:	9095                	.insn	2, 0x9095
800042cc:	95e2                	.insn	2, 0x95e2
800042ce:	e290                	.insn	2, 0xe290
800042d0:	9095                	.insn	2, 0x9095
800042d2:	95e2                	.insn	2, 0x95e2
800042d4:	e290                	.insn	2, 0xe290
800042d6:	9095                	.insn	2, 0x9095
800042d8:	95e2                	.insn	2, 0x95e2
800042da:	e290                	.insn	2, 0xe290
800042dc:	9095                	.insn	2, 0x9095
800042de:	95e2                	.insn	2, 0x95e2
800042e0:	e290                	.insn	2, 0xe290
800042e2:	9095                	.insn	2, 0x9095
800042e4:	95e2                	.insn	2, 0x95e2
800042e6:	e290                	.insn	2, 0xe290
800042e8:	9095                	.insn	2, 0x9095
800042ea:	95e2                	.insn	2, 0x95e2
800042ec:	e290                	.insn	2, 0xe290
800042ee:	9095                	.insn	2, 0x9095
800042f0:	95e2                	.insn	2, 0x95e2
800042f2:	e290                	.insn	2, 0xe290
800042f4:	9095                	.insn	2, 0x9095
800042f6:	95e2                	.insn	2, 0x95e2
800042f8:	e290                	.insn	2, 0xe290
800042fa:	9095                	.insn	2, 0x9095
800042fc:	95e2                	.insn	2, 0x95e2
800042fe:	e290                	.insn	2, 0xe290
80004300:	9095                	.insn	2, 0x9095
80004302:	95e2                	.insn	2, 0x95e2
80004304:	e290                	.insn	2, 0xe290
80004306:	9095                	.insn	2, 0x9095
80004308:	95e2                	.insn	2, 0x95e2
8000430a:	e290                	.insn	2, 0xe290
8000430c:	9095                	.insn	2, 0x9095
8000430e:	95e2                	.insn	2, 0x95e2
80004310:	e290                	.insn	2, 0xe290
80004312:	9095                	.insn	2, 0x9095
80004314:	95e2                	.insn	2, 0x95e2
80004316:	e290                	.insn	2, 0xe290
80004318:	9095                	.insn	2, 0x9095
8000431a:	95e2                	.insn	2, 0x95e2
8000431c:	e290                	.insn	2, 0xe290
8000431e:	9095                	.insn	2, 0x9095
80004320:	95e2                	.insn	2, 0x95e2
80004322:	e290                	.insn	2, 0xe290
80004324:	9095                	.insn	2, 0x9095
80004326:	95e2                	.insn	2, 0x95e2
80004328:	e290                	.insn	2, 0xe290
8000432a:	9095                	.insn	2, 0x9095
8000432c:	95e2                	.insn	2, 0x95e2
8000432e:	e290                	.insn	2, 0xe290
80004330:	9095                	.insn	2, 0x9095
80004332:	95e2                	.insn	2, 0x95e2
80004334:	e290                	.insn	2, 0xe290
80004336:	9095                	.insn	2, 0x9095
80004338:	000a                	.insn	2, 0x000a
8000433a:	0000                	.insn	2, 0x
8000433c:	95e2                	.insn	2, 0x95e2
8000433e:	2091                	.insn	2, 0x2091
80004340:	2020                	.insn	2, 0x2020
80004342:	2020                	.insn	2, 0x2020
80004344:	2020                	.insn	2, 0x2020
80004346:	4e41                	.insn	2, 0x4e41
80004348:	4c41                	.insn	2, 0x4c41
8000434a:	5349                	.insn	2, 0x5349
8000434c:	5349                	.insn	2, 0x5349
8000434e:	4420                	.insn	2, 0x4420
80004350:	5445                	.insn	2, 0x5445
80004352:	4c41                	.insn	2, 0x4c41
80004354:	414c                	.insn	2, 0x414c
80004356:	4f44                	.insn	2, 0x4f44
80004358:	4420                	.insn	2, 0x4420
8000435a:	2045                	.insn	2, 0x2045
8000435c:	4552                	.insn	2, 0x4552
8000435e:	444e                	.insn	2, 0x444e
80004360:	4d49                	.insn	2, 0x4d49
80004362:	4549                	.insn	2, 0x4549
80004364:	544e                	.insn	2, 0x544e
80004366:	2020204f          	.insn	4, 0x2020204f
8000436a:	2020                	.insn	2, 0x2020
8000436c:	2020                	.insn	2, 0x2020
8000436e:	2020                	.insn	2, 0x2020
80004370:	2020                	.insn	2, 0x2020
80004372:	2020                	.insn	2, 0x2020
80004374:	2020                	.insn	2, 0x2020
80004376:	95e2                	.insn	2, 0x95e2
80004378:	0a91                	.insn	2, 0x0a91
8000437a:	0000                	.insn	2, 0x
8000437c:	4645                	.insn	2, 0x4645
8000437e:	4349                	.insn	2, 0x4349
80004380:	4549                	.insn	2, 0x4549
80004382:	434e                	.insn	2, 0x434e
80004384:	4149                	.insn	2, 0x4149
80004386:	4420                	.insn	2, 0x4420
80004388:	4c45                	.insn	2, 0x4c45
8000438a:	5020                	.insn	2, 0x5020
8000438c:	414c                	.insn	2, 0x414c
8000438e:	494e                	.insn	2, 0x494e
80004390:	4946                	.insn	2, 0x4946
80004392:	4f444143          	.insn	4, 0x4f444143
80004396:	3a52                	.insn	2, 0x3a52
80004398:	000a                	.insn	2, 0x000a
8000439a:	0000                	.insn	2, 0x
8000439c:	2020                	.insn	2, 0x2020
8000439e:	7250                	.insn	2, 0x7250
800043a0:	7365636f          	jal	t1,8005aad6 <TEMP_DATA_ADDR+0x3aad6>
800043a4:	7020736f          	jal	t1,8000baa6 <current_mode+0x57be>
800043a8:	6320726f          	jal	tp,8000b9da <current_mode+0x56f2>
800043ac:	6369                	.insn	2, 0x6369
800043ae:	6f6c                	.insn	2, 0x6f6c
800043b0:	203a                	.insn	2, 0x203a
800043b2:	2020                	.insn	2, 0x2020
800043b4:	2020                	.insn	2, 0x2020
800043b6:	0020                	.insn	2, 0x0020
800043b8:	2020                	.insn	2, 0x2020
800043ba:	6154                	.insn	2, 0x6154
800043bc:	63206173          	.insn	4, 0x63206173
800043c0:	6d61                	.insn	2, 0x6d61
800043c2:	6962                	.insn	2, 0x6962
800043c4:	6f63206f          	j	80036aba <TEMP_DATA_ADDR+0x16aba>
800043c8:	746e                	.insn	2, 0x746e
800043ca:	7865                	.insn	2, 0x7865
800043cc:	6f74                	.insn	2, 0x6f74
800043ce:	203a                	.insn	2, 0x203a
800043d0:	2020                	.insn	2, 0x2020
800043d2:	0020                	.insn	2, 0x0020
800043d4:	4e41                	.insn	2, 0x4e41
800043d6:	4c41                	.insn	2, 0x4c41
800043d8:	5349                	.insn	2, 0x5349
800043da:	5349                	.insn	2, 0x5349
800043dc:	4420                	.insn	2, 0x4420
800043de:	2045                	.insn	2, 0x2045
800043e0:	4554                	.insn	2, 0x4554
800043e2:	504d                	.insn	2, 0x504d
800043e4:	5245                	.insn	2, 0x5245
800043e6:	5441                	.insn	2, 0x5441
800043e8:	5255                	.insn	2, 0x5255
800043ea:	3a41                	.insn	2, 0x3a41
800043ec:	000a                	.insn	2, 0x000a
800043ee:	0000                	.insn	2, 0x
800043f0:	2020                	.insn	2, 0x2020
800043f2:	6154                	.insn	2, 0x6154
800043f4:	64206173          	.insn	4, 0x64206173
800043f8:	2065                	.insn	2, 0x2065
800043fa:	6e61                	.insn	2, 0x6e61
800043fc:	6c616d6f          	jal	s10,8001aac2 <_heap_start+0x47e2>
80004400:	6169                	.insn	2, 0x6169
80004402:	20203a73          	.insn	4, 0x20203a73
80004406:	2020                	.insn	2, 0x2020
80004408:	2020                	.insn	2, 0x2020
8000440a:	0020                	.insn	2, 0x0020
8000440c:	2020                	.insn	2, 0x2020
8000440e:	6645                	.insn	2, 0x6645
80004410:	6369                	.insn	2, 0x6369
80004412:	6569                	.insn	2, 0x6569
80004414:	636e                	.insn	2, 0x636e
80004416:	6169                	.insn	2, 0x6169
80004418:	7420                	.insn	2, 0x7420
8000441a:	6172                	.insn	2, 0x6172
8000441c:	736e                	.insn	2, 0x736e
8000441e:	696d                	.insn	2, 0x696d
80004420:	6e6f6973          	.insn	4, 0x6e6f6973
80004424:	203a                	.insn	2, 0x203a
80004426:	0020                	.insn	2, 0x0020
80004428:	4e41                	.insn	2, 0x4e41
8000442a:	4c41                	.insn	2, 0x4c41
8000442c:	5349                	.insn	2, 0x5349
8000442e:	5349                	.insn	2, 0x5349
80004430:	5320                	.insn	2, 0x5320
80004432:	5349                	.insn	2, 0x5349
80004434:	4554                	.insn	2, 0x4554
80004436:	414d                	.insn	2, 0x414d
80004438:	4520                	.insn	2, 0x4520
8000443a:	464e                	.insn	2, 0x464e
8000443c:	4952                	.insn	2, 0x4952
8000443e:	4d41                	.insn	2, 0x4d41
80004440:	4549                	.insn	2, 0x4549
80004442:	544e                	.insn	2, 0x544e
80004444:	000a3a4f          	.insn	4, 0x000a3a4f
80004448:	2020                	.insn	2, 0x2020
8000444a:	6645                	.insn	2, 0x6645
8000444c:	6369                	.insn	2, 0x6369
8000444e:	6569                	.insn	2, 0x6569
80004450:	636e                	.insn	2, 0x636e
80004452:	6169                	.insn	2, 0x6169
80004454:	6120                	.insn	2, 0x6120
80004456:	76697463          	bgeu	s2,t1,80004bbe <str_p2_activated_header+0x1a>
8000445a:	6361                	.insn	2, 0x6361
8000445c:	6f69                	.insn	2, 0x6f69
8000445e:	3a6e                	.insn	2, 0x3a6e
80004460:	2020                	.insn	2, 0x2020
80004462:	0020                	.insn	2, 0x0020
80004464:	2020                	.insn	2, 0x2020
80004466:	6954                	.insn	2, 0x6954
80004468:	6d65                	.insn	2, 0x6d65
8000446a:	6f70                	.insn	2, 0x6f70
8000446c:	7020                	.insn	2, 0x7020
8000446e:	6f72                	.insn	2, 0x6f72
80004470:	656d                	.insn	2, 0x656d
80004472:	6964                	.insn	2, 0x6964
80004474:	6361206f          	j	80016aaa <_heap_start+0x7ca>
80004478:	6974                	.insn	2, 0x6974
8000447a:	6f76                	.insn	2, 0x6f76
8000447c:	203a                	.insn	2, 0x203a
8000447e:	0020                	.insn	2, 0x0020
80004480:	6d20                	.insn	2, 0x6d20
80004482:	6e69                	.insn	2, 0x6e69
80004484:	7020                	.insn	2, 0x7020
80004486:	6120726f          	jal	tp,8000ba98 <current_mode+0x57b0>
8000448a:	76697463          	bgeu	s2,t1,80004bf2 <str_p2_temp_exceeded+0x1e>
8000448e:	6361                	.insn	2, 0x6361
80004490:	6f69                	.insn	2, 0x6f69
80004492:	0a6e                	.insn	2, 0x0a6e
80004494:	0000                	.insn	2, 0x
80004496:	0000                	.insn	2, 0x
80004498:	2f4e                	.insn	2, 0x2f4e
8000449a:	0a41                	.insn	2, 0x0a41
8000449c:	0000                	.insn	2, 0x
8000449e:	0000                	.insn	2, 0x
800044a0:	4e41                	.insn	2, 0x4e41
800044a2:	4c41                	.insn	2, 0x4c41
800044a4:	5349                	.insn	2, 0x5349
800044a6:	5349                	.insn	2, 0x5349
800044a8:	4420                	.insn	2, 0x4420
800044aa:	2045                	.insn	2, 0x2045
800044ac:	554d4f43          	.insn	4, 0x554d4f43
800044b0:	494e                	.insn	2, 0x494e
800044b2:	49434143          	.insn	4, 0x49434143
800044b6:	0a3a4e4f          	.insn	4, 0x0a3a4e4f
800044ba:	0000                	.insn	2, 0x
800044bc:	2020                	.insn	2, 0x2020
800044be:	7942                	.insn	2, 0x7942
800044c0:	6574                	.insn	2, 0x6574
800044c2:	6f702073          	.insn	4, 0x6f702073
800044c6:	2072                	.insn	2, 0x2072
800044c8:	656d                	.insn	2, 0x656d
800044ca:	736e                	.insn	2, 0x736e
800044cc:	6a61                	.insn	2, 0x6a61
800044ce:	3a65                	.insn	2, 0x3a65
800044d0:	2020                	.insn	2, 0x2020
800044d2:	2020                	.insn	2, 0x2020
800044d4:	2020                	.insn	2, 0x2020
800044d6:	0020                	.insn	2, 0x0020
800044d8:	6220                	.insn	2, 0x6220
800044da:	7479                	.insn	2, 0x7479
800044dc:	7365                	.insn	2, 0x7365
800044de:	000a                	.insn	2, 0x000a
800044e0:	5345                	.insn	2, 0x5345
800044e2:	4954                	.insn	2, 0x4954
800044e4:	414d                	.insn	2, 0x414d
800044e6:	4e4f4943          	.insn	4, 0x4e4f4943
800044ea:	5520                	.insn	2, 0x5520
800044ec:	44204f53          	.insn	4, 0x44204f53
800044f0:	2045                	.insn	2, 0x2045
800044f2:	454d                	.insn	2, 0x454d
800044f4:	4f4d                	.insn	2, 0x4f4d
800044f6:	4952                	.insn	2, 0x4952
800044f8:	3a41                	.insn	2, 0x3a41
800044fa:	000a                	.insn	2, 0x000a
800044fc:	2020                	.insn	2, 0x2020
800044fe:	6f54                	.insn	2, 0x6f54
80004500:	6174                	.insn	2, 0x6174
80004502:	206c                	.insn	2, 0x206c
80004504:	63617473          	.insn	4, 0x63617473
80004508:	6c61206b          	.insn	4, 0x6c61206b
8000450c:	6f6c                	.insn	2, 0x6f6c
8000450e:	65746163          	bltu	s0,s7,80004b50 <str_p1_reading+0xc>
80004512:	3a64                	.insn	2, 0x3a64
80004514:	2020                	.insn	2, 0x2020
80004516:	0020                	.insn	2, 0x0020
80004518:	2020                	.insn	2, 0x2020
8000451a:	4350                	.insn	2, 0x4350
8000451c:	2042                	.insn	2, 0x2042
8000451e:	7265766f          	jal	a2,8005bc44 <TEMP_DATA_ADDR+0x3bc44>
80004522:	6568                	.insn	2, 0x6568
80004524:	6461                	.insn	2, 0x6461
80004526:	203a                	.insn	2, 0x203a
80004528:	2020                	.insn	2, 0x2020
8000452a:	2020                	.insn	2, 0x2020
8000452c:	2020                	.insn	2, 0x2020
8000452e:	2020                	.insn	2, 0x2020
80004530:	2020                	.insn	2, 0x2020
80004532:	0020                	.insn	2, 0x0020
80004534:	6220                	.insn	2, 0x6220
80004536:	7479                	.insn	2, 0x7479
80004538:	7365                	.insn	2, 0x7365
8000453a:	2820                	.insn	2, 0x2820
8000453c:	0000                	.insn	2, 0x
8000453e:	0000                	.insn	2, 0x
80004540:	7020                	.insn	2, 0x7020
80004542:	7265                	.insn	2, 0x7265
80004544:	7020                	.insn	2, 0x7020
80004546:	6f72                	.insn	2, 0x6f72
80004548:	73736563          	bltu	t1,s7,80004c72 <str_p2_deactivated_header+0x31>
8000454c:	0a29                	.insn	2, 0x0a29
8000454e:	000a                	.insn	2, 0x000a
80004550:	4f52505b          	.insn	4, 0x4f52505b
80004554:	53534543          	.insn	4, 0x53534543
80004558:	205d                	.insn	2, 0x205d
8000455a:	6c41                	.insn	2, 0x6c41
8000455c:	206c                	.insn	2, 0x206c
8000455e:	7270                	.insn	2, 0x7270
80004560:	7365636f          	jal	t1,8005ac96 <TEMP_DATA_ADDR+0x3ac96>
80004564:	20736573          	.insn	4, 0x20736573
80004568:	6e69                	.insn	2, 0x6e69
8000456a:	7469                	.insn	2, 0x7469
8000456c:	6169                	.insn	2, 0x6169
8000456e:	696c                	.insn	2, 0x696c
80004570:	657a                	.insn	2, 0x657a
80004572:	0a64                	.insn	2, 0x0a64
80004574:	0000                	.insn	2, 0x
80004576:	0000                	.insn	2, 0x
80004578:	414c505b          	.insn	4, 0x414c505b
8000457c:	494e                	.insn	2, 0x494e
8000457e:	4946                	.insn	2, 0x4946
80004580:	4f444143          	.insn	4, 0x4f444143
80004584:	5d52                	.insn	2, 0x5d52
80004586:	4920                	.insn	2, 0x4920
80004588:	696e                	.insn	2, 0x696e
8000458a:	6c616963          	bltu	sp,t1,80004c5c <str_p2_deactivated_header+0x1b>
8000458e:	7a69                	.insn	2, 0x7a69
80004590:	6461                	.insn	2, 0x6461
80004592:	6e65206f          	j	80056c78 <TEMP_DATA_ADDR+0x36c78>
80004596:	6d20                	.insn	2, 0x6d20
80004598:	3a6f646f          	jal	s0,800fa93e <TEMP_DATA_ADDR+0xda93e>
8000459c:	0020                	.insn	2, 0x0020
8000459e:	0000                	.insn	2, 0x
800045a0:	4142                	.insn	2, 0x4142
800045a2:	494c4553          	.insn	4, 0x494c4553
800045a6:	454e                	.insn	2, 0x454e
800045a8:	2820                	.insn	2, 0x2820
800045aa:	75636553          	.insn	4, 0x75636553
800045ae:	6e65                	.insn	2, 0x6e65
800045b0:	6c616963          	bltu	sp,t1,80004c82 <str_p2_temp_normalized+0xe>
800045b4:	5020                	.insn	2, 0x5020
800045b6:	2d31                	.insn	2, 0x2d31
800045b8:	503e                	.insn	2, 0x503e
800045ba:	2d32                	.insn	2, 0x2d32
800045bc:	503e                	.insn	2, 0x503e
800045be:	000a2933          	sltz	s2,s4
800045c2:	0000                	.insn	2, 0x
800045c4:	5345                	.insn	2, 0x5345
800045c6:	414e4543          	.insn	4, 0x414e4543
800045ca:	4952                	.insn	2, 0x4952
800045cc:	2032204f          	.insn	4, 0x2032204f
800045d0:	202d                	.insn	2, 0x202d
800045d2:	5250                	.insn	2, 0x5250
800045d4:	4f49                	.insn	2, 0x4f49
800045d6:	4952                	.insn	2, 0x4952
800045d8:	4144                	.insn	2, 0x4144
800045da:	2044                	.insn	2, 0x2044
800045dc:	5028                	.insn	2, 0x5028
800045de:	2d31                	.insn	2, 0x2d31
800045e0:	503e                	.insn	2, 0x503e
800045e2:	503e2d33          	.insn	4, 0x503e2d33
800045e6:	2932                	.insn	2, 0x2932
800045e8:	000a                	.insn	2, 0x000a
800045ea:	0000                	.insn	2, 0x
800045ec:	5250                	.insn	2, 0x5250
800045ee:	4f49                	.insn	2, 0x4f49
800045f0:	4952                	.insn	2, 0x4952
800045f2:	5954                	.insn	2, 0x5954
800045f4:	325f 2820 3250      	.insn	6, 0x32502820325f
800045fa:	3e2d                	.insn	2, 0x3e2d
800045fc:	3150                	.insn	2, 0x3150
800045fe:	3e2d                	.insn	2, 0x3e2d
80004600:	3350                	.insn	2, 0x3350
80004602:	0a29                	.insn	2, 0x0a29
80004604:	0000                	.insn	2, 0x
80004606:	0000                	.insn	2, 0x
80004608:	43535953          	.insn	4, 0x43535953
8000460c:	4c41                	.insn	2, 0x4c41
8000460e:	534c                	.insn	2, 0x534c
80004610:	2820                	.insn	2, 0x2820
80004612:	7541                	.insn	2, 0x7541
80004614:	6f74                	.insn	2, 0x6f74
80004616:	616d                	.insn	2, 0x616d
80004618:	6974                	.insn	2, 0x6974
8000461a:	0a296f63          	bltu	s2,sp,800046d8 <__clzsi2+0xb2c>
8000461e:	0000                	.insn	2, 0x
80004620:	5b0a                	.insn	2, 0x5b0a
80004622:	4c50                	.insn	2, 0x4c50
80004624:	4e41                	.insn	2, 0x4e41
80004626:	4649                	.insn	2, 0x4649
80004628:	4349                	.insn	2, 0x4349
8000462a:	4441                	.insn	2, 0x4441
8000462c:	205d524f          	.insn	4, 0x205d524f
80004630:	6e49                	.insn	2, 0x6e49
80004632:	6369                	.insn	2, 0x6369
80004634:	6169                	.insn	2, 0x6169
80004636:	646e                	.insn	2, 0x646e
80004638:	7562206f          	j	80026d8e <TEMP_DATA_ADDR+0x6d8e>
8000463c:	20656c63          	bltu	a0,t1,80004854 <__clzsi2+0xca8>
80004640:	6564                	.insn	2, 0x6564
80004642:	6520                	.insn	2, 0x6520
80004644:	656a                	.insn	2, 0x656a
80004646:	69637563          	bgeu	t1,s6,80004cd0 <str_p2_pc_deactivation+0x18>
8000464a:	0a0a6e6f          	jal	t3,800aa6ea <TEMP_DATA_ADDR+0x8a6ea>
8000464e:	0000                	.insn	2, 0x
80004650:	95e2                	.insn	2, 0x95e2
80004652:	2091                	.insn	2, 0x2091
80004654:	4320                	.insn	2, 0x4320
80004656:	4349                	.insn	2, 0x4349
80004658:	4f4c                	.insn	2, 0x4f4c
8000465a:	0020                	.insn	2, 0x0020
8000465c:	6420                	.insn	2, 0x6420
8000465e:	2065                	.insn	2, 0x2065
80004660:	0000                	.insn	2, 0x
80004662:	0000                	.insn	2, 0x
80004664:	2820                	.insn	2, 0x2820
80004666:	694d                	.insn	2, 0x694d
80004668:	756e                	.insn	2, 0x756e
8000466a:	6f74                	.insn	2, 0x6f74
8000466c:	0020                	.insn	2, 0x0020
8000466e:	0000                	.insn	2, 0x
80004670:	0029                	.insn	2, 0x0029
80004672:	0000                	.insn	2, 0x
80004674:	2020                	.insn	2, 0x2020
80004676:	2020                	.insn	2, 0x2020
80004678:	2020                	.insn	2, 0x2020
8000467a:	2020                	.insn	2, 0x2020
8000467c:	2020                	.insn	2, 0x2020
8000467e:	2020                	.insn	2, 0x2020
80004680:	2020                	.insn	2, 0x2020
80004682:	2020                	.insn	2, 0x2020
80004684:	2020                	.insn	2, 0x2020
80004686:	2020                	.insn	2, 0x2020
80004688:	e220                	.insn	2, 0xe220
8000468a:	9195                	.insn	2, 0x9195
8000468c:	000a                	.insn	2, 0x000a
8000468e:	0000                	.insn	2, 0x
80004690:	2d0a                	.insn	2, 0x2d0a
80004692:	2d2d                	.insn	2, 0x2d2d
80004694:	4520                	.insn	2, 0x4520
80004696:	656a                	.insn	2, 0x656a
80004698:	61747563          	bgeu	s0,s7,80004ca2 <str_p2_standby_mode+0xf>
8000469c:	646e                	.insn	2, 0x646e
8000469e:	7250206f          	j	800075c2 <current_mode+0x12da>
800046a2:	7365636f          	jal	t1,8005add8 <TEMP_DATA_ADDR+0x3add8>
800046a6:	0000206f          	j	800066a6 <current_mode+0x3be>
800046aa:	0000                	.insn	2, 0x
800046ac:	2d20                	.insn	2, 0x2d20
800046ae:	2d2d                	.insn	2, 0x2d2d
800046b0:	000a                	.insn	2, 0x000a
800046b2:	0000                	.insn	2, 0x
800046b4:	3d3d                	.insn	2, 0x3d3d
800046b6:	3d3d                	.insn	2, 0x3d3d
800046b8:	3d3d                	.insn	2, 0x3d3d
800046ba:	3d3d                	.insn	2, 0x3d3d
800046bc:	3d3d                	.insn	2, 0x3d3d
800046be:	3d3d                	.insn	2, 0x3d3d
800046c0:	3d3d                	.insn	2, 0x3d3d
800046c2:	3d3d                	.insn	2, 0x3d3d
800046c4:	3d3d                	.insn	2, 0x3d3d
800046c6:	3d3d                	.insn	2, 0x3d3d
800046c8:	3d3d                	.insn	2, 0x3d3d
800046ca:	3d3d                	.insn	2, 0x3d3d
800046cc:	3d3d                	.insn	2, 0x3d3d
800046ce:	3d3d                	.insn	2, 0x3d3d
800046d0:	3d3d                	.insn	2, 0x3d3d
800046d2:	3d3d                	.insn	2, 0x3d3d
800046d4:	3d3d                	.insn	2, 0x3d3d
800046d6:	3d3d                	.insn	2, 0x3d3d
800046d8:	3d3d                	.insn	2, 0x3d3d
800046da:	3d3d                	.insn	2, 0x3d3d
800046dc:	000a                	.insn	2, 0x000a
800046de:	0000                	.insn	2, 0x
800046e0:	4843535b          	.insn	4, 0x4843535b
800046e4:	4445                	.insn	2, 0x4445
800046e6:	4c55                	.insn	2, 0x4c55
800046e8:	5245                	.insn	2, 0x5245
800046ea:	205d                	.insn	2, 0x205d
800046ec:	6c637943          	.insn	4, 0x6c637943
800046f0:	2065                	.insn	2, 0x2065
800046f2:	0000                	.insn	2, 0x
800046f4:	6320                	.insn	2, 0x6320
800046f6:	6c706d6f          	jal	s10,8000b5bc <current_mode+0x52d4>
800046fa:	7465                	.insn	2, 0x7465
800046fc:	6465                	.insn	2, 0x6465
800046fe:	000a                	.insn	2, 0x000a
80004700:	3d3d                	.insn	2, 0x3d3d
80004702:	3d3d                	.insn	2, 0x3d3d
80004704:	3d3d                	.insn	2, 0x3d3d
80004706:	3d3d                	.insn	2, 0x3d3d
80004708:	3d3d                	.insn	2, 0x3d3d
8000470a:	3d3d                	.insn	2, 0x3d3d
8000470c:	3d3d                	.insn	2, 0x3d3d
8000470e:	3d3d                	.insn	2, 0x3d3d
80004710:	3d3d                	.insn	2, 0x3d3d
80004712:	3d3d                	.insn	2, 0x3d3d
80004714:	3d3d                	.insn	2, 0x3d3d
80004716:	3d3d                	.insn	2, 0x3d3d
80004718:	3d3d                	.insn	2, 0x3d3d
8000471a:	3d3d                	.insn	2, 0x3d3d
8000471c:	3d3d                	.insn	2, 0x3d3d
8000471e:	3d3d                	.insn	2, 0x3d3d
80004720:	3d3d                	.insn	2, 0x3d3d
80004722:	3d3d                	.insn	2, 0x3d3d
80004724:	3d3d                	.insn	2, 0x3d3d
80004726:	3d3d                	.insn	2, 0x3d3d
80004728:	0a0a                	.insn	2, 0x0a0a
8000472a:	0000                	.insn	2, 0x
8000472c:	5245505b          	.insn	4, 0x5245505b
80004730:	4944                	.insn	2, 0x4944
80004732:	4144                	.insn	2, 0x4144
80004734:	4420                	.insn	2, 0x4420
80004736:	2045                	.insn	2, 0x2045
80004738:	4144                	.insn	2, 0x4144
8000473a:	4f54                	.insn	2, 0x4f54
8000473c:	43205d53          	.insn	4, 0x43205d53
80004740:	6d61                	.insn	2, 0x6d61
80004742:	6962                	.insn	2, 0x6962
80004744:	6261206f          	j	80016d6a <_heap_start+0xa8a>
80004748:	7572                	.insn	2, 0x7572
8000474a:	7470                	.insn	2, 0x7470
8000474c:	50203a6f          	jal	s4,80007c4e <current_mode+0x1966>
80004750:	2031                	.insn	2, 0x2031
80004752:	3e2d                	.insn	2, 0x3e2d
80004754:	5020                	.insn	2, 0x5020
80004756:	73282033          	.insn	4, 0x73282033
8000475a:	2065                	.insn	2, 0x2065
8000475c:	746c6173          	.insn	4, 0x746c6173
80004760:	2061                	.insn	2, 0x2061
80004762:	3250                	.insn	2, 0x3250
80004764:	0a29                	.insn	2, 0x0a29
80004766:	0000                	.insn	2, 0x
80004768:	5245505b          	.insn	4, 0x5245505b
8000476c:	4944                	.insn	2, 0x4944
8000476e:	4144                	.insn	2, 0x4144
80004770:	4420                	.insn	2, 0x4420
80004772:	2045                	.insn	2, 0x2045
80004774:	4144                	.insn	2, 0x4144
80004776:	4f54                	.insn	2, 0x4f54
80004778:	43205d53          	.insn	4, 0x43205d53
8000477c:	6d61                	.insn	2, 0x6d61
8000477e:	6962                	.insn	2, 0x6962
80004780:	6261206f          	j	80016da6 <_heap_start+0xac6>
80004784:	7572                	.insn	2, 0x7572
80004786:	7470                	.insn	2, 0x7470
80004788:	50203a6f          	jal	s4,80007c8a <current_mode+0x19a2>
8000478c:	3e2d2033          	.insn	4, 0x3e2d2033
80004790:	5020                	.insn	2, 0x5020
80004792:	2032                	.insn	2, 0x2032
80004794:	6e28                	.insn	2, 0x6e28
80004796:	6f63206f          	j	80036e8c <TEMP_DATA_ADDR+0x16e8c>
8000479a:	736e                	.insn	2, 0x736e
8000479c:	6365                	.insn	2, 0x6365
8000479e:	7475                	.insn	2, 0x7475
800047a0:	7669                	.insn	2, 0x7669
800047a2:	000a296f          	jal	s2,800a67a2 <TEMP_DATA_ADDR+0x867a2>
800047a6:	0000                	.insn	2, 0x
800047a8:	414c505b          	.insn	4, 0x414c505b
800047ac:	494e                	.insn	2, 0x494e
800047ae:	4946                	.insn	2, 0x4946
800047b0:	4f444143          	.insn	4, 0x4f444143
800047b4:	5d52                	.insn	2, 0x5d52
800047b6:	4320                	.insn	2, 0x4320
800047b8:	6369                	.insn	2, 0x6369
800047ba:	6f6c                	.insn	2, 0x6f6c
800047bc:	6420                	.insn	2, 0x6420
800047be:	2065                	.insn	2, 0x2065
800047c0:	7270                	.insn	2, 0x7270
800047c2:	6f69                	.insn	2, 0x6f69
800047c4:	6972                	.insn	2, 0x6972
800047c6:	6164                	.insn	2, 0x6164
800047c8:	2064                	.insn	2, 0x2064
800047ca:	706d6f63          	bltu	s10,t1,80004ee8 <__clz_tab+0x24>
800047ce:	656c                	.insn	2, 0x656c
800047d0:	6174                	.insn	2, 0x6174
800047d2:	6f64                	.insn	2, 0x6f64
800047d4:	2820                	.insn	2, 0x2820
800047d6:	3150                	.insn	2, 0x3150
800047d8:	3e2d                	.insn	2, 0x3e2d
800047da:	3350                	.insn	2, 0x3350
800047dc:	3e2d                	.insn	2, 0x3e2d
800047de:	3250                	.insn	2, 0x3250
800047e0:	0a29                	.insn	2, 0x0a29
800047e2:	000a                	.insn	2, 0x000a
800047e4:	5441445b          	.insn	4, 0x5441445b
800047e8:	2041                	.insn	2, 0x2041
800047ea:	4f4c                	.insn	2, 0x4f4c
800047ec:	205d5353          	.insn	4, 0x205d5353
800047f0:	6241                	.insn	2, 0x6241
800047f2:	7572                	.insn	2, 0x7572
800047f4:	7470                	.insn	2, 0x7470
800047f6:	7320                	.insn	2, 0x7320
800047f8:	63746977          	.insn	4, 0x63746977
800047fc:	3a68                	.insn	2, 0x3a68
800047fe:	5020                	.insn	2, 0x5020
80004800:	2032                	.insn	2, 0x2032
80004802:	3e2d                	.insn	2, 0x3e2d
80004804:	5020                	.insn	2, 0x5020
80004806:	2031                	.insn	2, 0x2031
80004808:	7228                	.insn	2, 0x7228
8000480a:	7665                	.insn	2, 0x7665
8000480c:	7265                	.insn	2, 0x7265
8000480e:	6f206573          	.insn	4, 0x6f206573
80004812:	6472                	.insn	2, 0x6472
80004814:	7265                	.insn	2, 0x7265
80004816:	0a29                	.insn	2, 0x0a29
80004818:	0000                	.insn	2, 0x
8000481a:	0000                	.insn	2, 0x
8000481c:	5441445b          	.insn	4, 0x5441445b
80004820:	2041                	.insn	2, 0x2041
80004822:	4f4c                	.insn	2, 0x4f4c
80004824:	205d5353          	.insn	4, 0x205d5353
80004828:	6241                	.insn	2, 0x6241
8000482a:	7572                	.insn	2, 0x7572
8000482c:	7470                	.insn	2, 0x7470
8000482e:	7320                	.insn	2, 0x7320
80004830:	63746977          	.insn	4, 0x63746977
80004834:	3a68                	.insn	2, 0x3a68
80004836:	5020                	.insn	2, 0x5020
80004838:	2031                	.insn	2, 0x2031
8000483a:	3e2d                	.insn	2, 0x3e2d
8000483c:	5020                	.insn	2, 0x5020
8000483e:	73282033          	.insn	4, 0x73282033
80004842:	7070696b          	.insn	4, 0x7070696b
80004846:	6e69                	.insn	2, 0x6e69
80004848:	32502067          	.insn	4, 0x32502067
8000484c:	0a29                	.insn	2, 0x0a29
8000484e:	0000                	.insn	2, 0x
80004850:	4843535b          	.insn	4, 0x4843535b
80004854:	4445                	.insn	2, 0x4445
80004856:	4c55                	.insn	2, 0x4c55
80004858:	5245                	.insn	2, 0x5245
8000485a:	205d                	.insn	2, 0x205d
8000485c:	7250                	.insn	2, 0x7250
8000485e:	6f69                	.insn	2, 0x6f69
80004860:	6972                	.insn	2, 0x6972
80004862:	7974                	.insn	2, 0x7974
80004864:	6320                	.insn	2, 0x6320
80004866:	6379                	.insn	2, 0x6379
80004868:	656c                	.insn	2, 0x656c
8000486a:	6320                	.insn	2, 0x6320
8000486c:	6c706d6f          	jal	s10,8000b732 <current_mode+0x544a>
80004870:	7465                	.insn	2, 0x7465
80004872:	6465                	.insn	2, 0x6465
80004874:	2820                	.insn	2, 0x2820
80004876:	3250                	.insn	2, 0x3250
80004878:	3e2d                	.insn	2, 0x3e2d
8000487a:	3150                	.insn	2, 0x3150
8000487c:	3e2d                	.insn	2, 0x3e2d
8000487e:	3350                	.insn	2, 0x3350
80004880:	0a29                	.insn	2, 0x0a29
80004882:	000a                	.insn	2, 0x000a
80004884:	4843535b          	.insn	4, 0x4843535b
80004888:	4445                	.insn	2, 0x4445
8000488a:	4c55                	.insn	2, 0x4c55
8000488c:	5245                	.insn	2, 0x5245
8000488e:	205d                	.insn	2, 0x205d
80004890:	63737953          	.insn	4, 0x63737953
80004894:	6c61                	.insn	2, 0x6c61
80004896:	736c                	.insn	2, 0x736c
80004898:	6d20                	.insn	2, 0x6d20
8000489a:	2065646f          	jal	s0,8005aaa0 <TEMP_DATA_ADDR+0x3aaa0>
8000489e:	202d                	.insn	2, 0x202d
800048a0:	7561                	.insn	2, 0x7561
800048a2:	6f74                	.insn	2, 0x6f74
800048a4:	616d                	.insn	2, 0x616d
800048a6:	6974                	.insn	2, 0x6974
800048a8:	78652063          	.insn	4, 0x78652063
800048ac:	6365                	.insn	2, 0x6365
800048ae:	7475                	.insn	2, 0x7475
800048b0:	6f69                	.insn	2, 0x6f69
800048b2:	0a6e                	.insn	2, 0x0a6e
800048b4:	0000                	.insn	2, 0x
800048b6:	0000                	.insn	2, 0x
800048b8:	5359535b          	.insn	4, 0x5359535b
800048bc:	4c4c4143          	.insn	4, 0x4c4c4143
800048c0:	205d                	.insn	2, 0x205d
800048c2:	6e45                	.insn	2, 0x6e45
800048c4:	6574                	.insn	2, 0x6574
800048c6:	6972                	.insn	2, 0x6972
800048c8:	676e                	.insn	2, 0x676e
800048ca:	5020                	.insn	2, 0x5020
800048cc:	0a31                	.insn	2, 0x0a31
800048ce:	0000                	.insn	2, 0x
800048d0:	5359535b          	.insn	4, 0x5359535b
800048d4:	4c4c4143          	.insn	4, 0x4c4c4143
800048d8:	205d                	.insn	2, 0x205d
800048da:	3150                	.insn	2, 0x3150
800048dc:	5020                	.insn	2, 0x5020
800048de:	61732043          	.insn	4, 0x61732043
800048e2:	6576                	.insn	2, 0x6576
800048e4:	2064                	.insn	2, 0x2064
800048e6:	7461                	.insn	2, 0x7461
800048e8:	203a                	.insn	2, 0x203a
800048ea:	7830                	.insn	2, 0x7830
800048ec:	0000                	.insn	2, 0x
800048ee:	0000                	.insn	2, 0x
800048f0:	5359535b          	.insn	4, 0x5359535b
800048f4:	4c4c4143          	.insn	4, 0x4c4c4143
800048f8:	205d                	.insn	2, 0x205d
800048fa:	746e6f43          	.insn	4, 0x746e6f43
800048fe:	7865                	.insn	2, 0x7865
80004900:	2074                	.insn	2, 0x2074
80004902:	74697773          	.insn	4, 0x74697773
80004906:	50206863          	bltu	zero,sp,80004e16 <str_p3_system_status+0x14>
8000490a:	2031                	.insn	2, 0x2031
8000490c:	3e2d                	.insn	2, 0x3e2d
8000490e:	5020                	.insn	2, 0x5020
80004910:	2032                	.insn	2, 0x2032
80004912:	5028                	.insn	2, 0x5028
80004914:	2031                	.insn	2, 0x2031
80004916:	6e69                	.insn	2, 0x6e69
80004918:	6574                	.insn	2, 0x6574
8000491a:	7272                	.insn	2, 0x7272
8000491c:	7075                	.insn	2, 0x7075
8000491e:	6574                	.insn	2, 0x6574
80004920:	2964                	.insn	2, 0x2964
80004922:	000a                	.insn	2, 0x000a
80004924:	5359535b          	.insn	4, 0x5359535b
80004928:	4c4c4143          	.insn	4, 0x4c4c4143
8000492c:	205d                	.insn	2, 0x205d
8000492e:	69766153          	.insn	4, 0x69766153
80004932:	676e                	.insn	2, 0x676e
80004934:	5020                	.insn	2, 0x5020
80004936:	2031                	.insn	2, 0x2031
80004938:	746e6f63          	bltu	t3,t1,80005096 <_stack_top+0x22>
8000493c:	7865                	.insn	2, 0x7865
8000493e:	2e74                	.insn	2, 0x2e74
80004940:	2e2e                	.insn	2, 0x2e2e
80004942:	000a                	.insn	2, 0x000a
80004944:	5359535b          	.insn	4, 0x5359535b
80004948:	4c4c4143          	.insn	4, 0x4c4c4143
8000494c:	205d                	.insn	2, 0x205d
8000494e:	6552                	.insn	2, 0x6552
80004950:	696d7573          	.insn	4, 0x696d7573
80004954:	676e                	.insn	2, 0x676e
80004956:	5020                	.insn	2, 0x5020
80004958:	2031                	.insn	2, 0x2031
8000495a:	7266                	.insn	2, 0x7266
8000495c:	73206d6f          	jal	s10,8000b08e <current_mode+0x4da6>
80004960:	7661                	.insn	2, 0x7661
80004962:	6465                	.insn	2, 0x6465
80004964:	5020                	.insn	2, 0x5020
80004966:	30203a43          	.insn	4, 0x30203a43
8000496a:	0078                	.insn	2, 0x0078
8000496c:	5359535b          	.insn	4, 0x5359535b
80004970:	4c4c4143          	.insn	4, 0x4c4c4143
80004974:	205d                	.insn	2, 0x205d
80004976:	746e6f43          	.insn	4, 0x746e6f43
8000497a:	7865                	.insn	2, 0x7865
8000497c:	2074                	.insn	2, 0x2074
8000497e:	74697773          	.insn	4, 0x74697773
80004982:	2d206863          	bltu	zero,s2,80004c52 <str_p2_deactivated_header+0x11>
80004986:	203e                	.insn	2, 0x203e
80004988:	3350                	.insn	2, 0x3350
8000498a:	000a                	.insn	2, 0x000a
8000498c:	4843535b          	.insn	4, 0x4843535b
80004990:	4445                	.insn	2, 0x4445
80004992:	4c55                	.insn	2, 0x4c55
80004994:	5245                	.insn	2, 0x5245
80004996:	205d                	.insn	2, 0x205d
80004998:	63737953          	.insn	4, 0x63737953
8000499c:	6c61                	.insn	2, 0x6c61
8000499e:	206c                	.insn	2, 0x206c
800049a0:	6c637963          	bgeu	t1,t1,80005072 <__clz_tab+0x1ae>
800049a4:	2065                	.insn	2, 0x2065
800049a6:	706d6f63          	bltu	s10,t1,800050c4 <_stack_top+0x50>
800049aa:	656c                	.insn	2, 0x656c
800049ac:	6574                	.insn	2, 0x6574
800049ae:	0a64                	.insn	2, 0x0a64
800049b0:	000a                	.insn	2, 0x000a
800049b2:	0000                	.insn	2, 0x
800049b4:	95e2                	.insn	2, 0x95e2
800049b6:	e290                	.insn	2, 0xe290
800049b8:	9095                	.insn	2, 0x9095
800049ba:	95e2                	.insn	2, 0x95e2
800049bc:	e290                	.insn	2, 0xe290
800049be:	9095                	.insn	2, 0x9095
800049c0:	95e2                	.insn	2, 0x95e2
800049c2:	e290                	.insn	2, 0xe290
800049c4:	9095                	.insn	2, 0x9095
800049c6:	95e2                	.insn	2, 0x95e2
800049c8:	e290                	.insn	2, 0xe290
800049ca:	9095                	.insn	2, 0x9095
800049cc:	95e2                	.insn	2, 0x95e2
800049ce:	e290                	.insn	2, 0xe290
800049d0:	9095                	.insn	2, 0x9095
800049d2:	95e2                	.insn	2, 0x95e2
800049d4:	e290                	.insn	2, 0xe290
800049d6:	9095                	.insn	2, 0x9095
800049d8:	95e2                	.insn	2, 0x95e2
800049da:	e290                	.insn	2, 0xe290
800049dc:	9095                	.insn	2, 0x9095
800049de:	95e2                	.insn	2, 0x95e2
800049e0:	e290                	.insn	2, 0xe290
800049e2:	9095                	.insn	2, 0x9095
800049e4:	95e2                	.insn	2, 0x95e2
800049e6:	e290                	.insn	2, 0xe290
800049e8:	9095                	.insn	2, 0x9095
800049ea:	95e2                	.insn	2, 0x95e2
800049ec:	e290                	.insn	2, 0xe290
800049ee:	9095                	.insn	2, 0x9095
800049f0:	95e2                	.insn	2, 0x95e2
800049f2:	e290                	.insn	2, 0xe290
800049f4:	9095                	.insn	2, 0x9095
800049f6:	95e2                	.insn	2, 0x95e2
800049f8:	e290                	.insn	2, 0xe290
800049fa:	9095                	.insn	2, 0x9095
800049fc:	95e2                	.insn	2, 0x95e2
800049fe:	e290                	.insn	2, 0xe290
80004a00:	9095                	.insn	2, 0x9095
80004a02:	95e2                	.insn	2, 0x95e2
80004a04:	e290                	.insn	2, 0xe290
80004a06:	9095                	.insn	2, 0x9095
80004a08:	95e2                	.insn	2, 0x95e2
80004a0a:	e290                	.insn	2, 0xe290
80004a0c:	9095                	.insn	2, 0x9095
80004a0e:	95e2                	.insn	2, 0x95e2
80004a10:	e290                	.insn	2, 0xe290
80004a12:	9095                	.insn	2, 0x9095
80004a14:	95e2                	.insn	2, 0x95e2
80004a16:	e290                	.insn	2, 0xe290
80004a18:	9095                	.insn	2, 0x9095
80004a1a:	95e2                	.insn	2, 0x95e2
80004a1c:	e290                	.insn	2, 0xe290
80004a1e:	9095                	.insn	2, 0x9095
80004a20:	95e2                	.insn	2, 0x95e2
80004a22:	e290                	.insn	2, 0xe290
80004a24:	9095                	.insn	2, 0x9095
80004a26:	95e2                	.insn	2, 0x95e2
80004a28:	e290                	.insn	2, 0xe290
80004a2a:	9095                	.insn	2, 0x9095
80004a2c:	95e2                	.insn	2, 0x95e2
80004a2e:	e290                	.insn	2, 0xe290
80004a30:	9095                	.insn	2, 0x9095
80004a32:	95e2                	.insn	2, 0x95e2
80004a34:	e290                	.insn	2, 0xe290
80004a36:	9095                	.insn	2, 0x9095
80004a38:	95e2                	.insn	2, 0x95e2
80004a3a:	e290                	.insn	2, 0xe290
80004a3c:	9095                	.insn	2, 0x9095
80004a3e:	95e2                	.insn	2, 0x95e2
80004a40:	e290                	.insn	2, 0xe290
80004a42:	9095                	.insn	2, 0x9095
80004a44:	95e2                	.insn	2, 0x95e2
80004a46:	e290                	.insn	2, 0xe290
80004a48:	9095                	.insn	2, 0x9095
80004a4a:	95e2                	.insn	2, 0x95e2
80004a4c:	e290                	.insn	2, 0xe290
80004a4e:	9095                	.insn	2, 0x9095
80004a50:	95e2                	.insn	2, 0x95e2
80004a52:	e290                	.insn	2, 0xe290
80004a54:	9095                	.insn	2, 0x9095
80004a56:	95e2                	.insn	2, 0x95e2
80004a58:	e290                	.insn	2, 0xe290
80004a5a:	9095                	.insn	2, 0x9095
80004a5c:	0a0a                	.insn	2, 0x0a0a
80004a5e:	0000                	.insn	2, 0x
80004a60:	5b0a                	.insn	2, 0x5b0a
80004a62:	45484353          	.insn	4, 0x45484353
80004a66:	5544                	.insn	2, 0x5544
80004a68:	454c                	.insn	2, 0x454c
80004a6a:	5d52                	.insn	2, 0x5d52
80004a6c:	4520                	.insn	2, 0x4520
80004a6e:	6578                	.insn	2, 0x6578
80004a70:	69747563          	bgeu	s0,s7,800050fa <_stack_top+0x86>
80004a74:	63206e6f          	jal	t3,8000b0a6 <current_mode+0x4dbe>
80004a78:	6c706d6f          	jal	s10,8000b93e <current_mode+0x5656>
80004a7c:	7465                	.insn	2, 0x7465
80004a7e:	6465                	.insn	2, 0x6465
80004a80:	000a                	.insn	2, 0x000a
80004a82:	0000                	.insn	2, 0x
80004a84:	4843535b          	.insn	4, 0x4843535b
80004a88:	4445                	.insn	2, 0x4445
80004a8a:	4c55                	.insn	2, 0x4c55
80004a8c:	5245                	.insn	2, 0x5245
80004a8e:	205d                	.insn	2, 0x205d
80004a90:	7250                	.insn	2, 0x7250
80004a92:	7365636f          	jal	t1,8005b1c8 <TEMP_DATA_ADDR+0x3b1c8>
80004a96:	69792073          	.insn	4, 0x69792073
80004a9a:	6c65                	.insn	2, 0x6c65
80004a9c:	6564                	.insn	2, 0x6564
80004a9e:	0a64                	.insn	2, 0x0a64
80004aa0:	0000                	.insn	2, 0x
80004aa2:	0000                	.insn	2, 0x
80004aa4:	4843535b          	.insn	4, 0x4843535b
80004aa8:	4445                	.insn	2, 0x4445
80004aaa:	4c55                	.insn	2, 0x4c55
80004aac:	5245                	.insn	2, 0x5245
80004aae:	205d                	.insn	2, 0x205d
80004ab0:	746e6f43          	.insn	4, 0x746e6f43
80004ab4:	7865                	.insn	2, 0x7865
80004ab6:	2074                	.insn	2, 0x2074
80004ab8:	74697773          	.insn	4, 0x74697773
80004abc:	203a6863          	bltu	s4,gp,80004ccc <str_p2_pc_deactivation+0x14>
80004ac0:	0050                	.insn	2, 0x0050
80004ac2:	0000                	.insn	2, 0x
80004ac4:	2d20                	.insn	2, 0x2d20
80004ac6:	203e                	.insn	2, 0x203e
80004ac8:	0050                	.insn	2, 0x0050
80004aca:	0000                	.insn	2, 0x
80004acc:	4554                	.insn	2, 0x4554
80004ace:	504d                	.insn	2, 0x504d
80004ad0:	003a                	.insn	2, 0x003a
80004ad2:	0000                	.insn	2, 0x
80004ad4:	3130                	.insn	2, 0x3130
80004ad6:	3332                	.insn	2, 0x3332
80004ad8:	3534                	.insn	2, 0x3534
80004ada:	3736                	.insn	2, 0x3736
80004adc:	3938                	.insn	2, 0x3938
80004ade:	4241                	.insn	2, 0x4241
80004ae0:	46454443          	.insn	4, 0x46454443
80004ae4:	0000                	.insn	2, 0x
	...

80004ae8 <str_p1_transmission>:
80004ae8:	5d31505b          	.insn	4, 0x5d31505b
80004aec:	4620                	.insn	2, 0x4620
80004aee:	5341                	.insn	2, 0x5341
80004af0:	2045                	.insn	2, 0x2045
80004af2:	5254                	.insn	2, 0x5254
80004af4:	4e41                	.insn	2, 0x4e41
80004af6:	53494d53          	.insn	4, 0x53494d53
80004afa:	4f49                	.insn	2, 0x4f49
80004afc:	204e                	.insn	2, 0x204e
80004afe:	207c                	.insn	2, 0x207c
80004b00:	6e45                	.insn	2, 0x6e45
80004b02:	6976                	.insn	2, 0x6976
80004b04:	6e61                	.insn	2, 0x6e61
80004b06:	6f64                	.insn	2, 0x6f64
80004b08:	6420                	.insn	2, 0x6420
80004b0a:	7461                	.insn	2, 0x7461
80004b0c:	2e2e736f          	jal	t1,800ebdee <TEMP_DATA_ADDR+0xcbdee>
80004b10:	202e                	.insn	2, 0x202e
80004b12:	207c                	.insn	2, 0x207c
80004b14:	6554                	.insn	2, 0x6554
80004b16:	706d                	.insn	2, 0x706d
80004b18:	203a                	.insn	2, 0x203a
	...

80004b1b <str_p1_sensing>:
80004b1b:	5d31505b          	.insn	4, 0x5d31505b
80004b1f:	4620                	.insn	2, 0x4620
80004b21:	5341                	.insn	2, 0x5341
80004b23:	2045                	.insn	2, 0x2045
80004b25:	534e4553          	.insn	4, 0x534e4553
80004b29:	4441                	.insn	2, 0x4441
80004b2b:	207c204f          	.insn	4, 0x207c204f
80004b2f:	654c                	.insn	2, 0x654c
80004b31:	6579                	.insn	2, 0x6579
80004b33:	646e                	.insn	2, 0x646e
80004b35:	6573206f          	j	8003798b <TEMP_DATA_ADDR+0x1798b>
80004b39:	736e                	.insn	2, 0x736e
80004b3b:	2e2e726f          	jal	tp,800ebe1d <TEMP_DATA_ADDR+0xcbe1d>
80004b3f:	202e                	.insn	2, 0x202e
80004b41:	207c                	.insn	2, 0x207c
	...

80004b44 <str_p1_reading>:
80004b44:	6554                	.insn	2, 0x6554
80004b46:	706d                	.insn	2, 0x706d
80004b48:	7265                	.insn	2, 0x7265
80004b4a:	7461                	.insn	2, 0x7461
80004b4c:	7275                	.insn	2, 0x7275
80004b4e:	3a61                	.insn	2, 0x3a61
80004b50:	0020                	.insn	2, 0x0020

80004b52 <str_p1_limit_alert>:
80004b52:	2a0a                	.insn	2, 0x2a0a
80004b54:	2a2a                	.insn	2, 0x2a2a
80004b56:	5b20                	.insn	2, 0x5b20
80004b58:	3150                	.insn	2, 0x3150
80004b5a:	205d                	.insn	2, 0x205d
80004b5c:	4c41                	.insn	2, 0x4c41
80004b5e:	5245                	.insn	2, 0x5245
80004b60:	4154                	.insn	2, 0x4154
80004b62:	203a                	.insn	2, 0x203a
80004b64:	6554                	.insn	2, 0x6554
80004b66:	706d                	.insn	2, 0x706d
80004b68:	7265                	.insn	2, 0x7265
80004b6a:	7461                	.insn	2, 0x7461
80004b6c:	7275                	.insn	2, 0x7275
80004b6e:	2061                	.insn	2, 0x2061
80004b70:	696c                	.insn	2, 0x696c
80004b72:	696d                	.insn	2, 0x696d
80004b74:	6574                	.insn	2, 0x6574
80004b76:	6520                	.insn	2, 0x6520
80004b78:	6378                	.insn	2, 0x6378
80004b7a:	6465                	.insn	2, 0x6465
80004b7c:	6469                	.insn	2, 0x6469
80004b7e:	2161                	.insn	2, 0x2161
80004b80:	2a20                	.insn	2, 0x2a20
80004b82:	2a2a                	.insn	2, 0x2a2a
80004b84:	000a                	.insn	2, 0x000a

80004b86 <str_p1_pc_captured>:
80004b86:	5d31505b          	.insn	4, 0x5d31505b
80004b8a:	5020                	.insn	2, 0x5020
80004b8c:	61632043          	.insn	4, 0x61632043
80004b90:	7470                	.insn	2, 0x7470
80004b92:	7275                	.insn	2, 0x7275
80004b94:	6461                	.insn	2, 0x6461
80004b96:	6e65206f          	j	8005727c <TEMP_DATA_ADDR+0x3727c>
80004b9a:	203a                	.insn	2, 0x203a
80004b9c:	7830                	.insn	2, 0x7830
	...

80004b9f <str_newline>:
80004b9f:	000a                	.insn	2, 0x000a
80004ba1:	0000                	.insn	2, 0x
	...

80004ba4 <str_p2_activated_header>:
80004ba4:	2a0a                	.insn	2, 0x2a0a
80004ba6:	2a2a                	.insn	2, 0x2a2a
80004ba8:	5b20                	.insn	2, 0x5b20
80004baa:	3250                	.insn	2, 0x3250
80004bac:	205d                	.insn	2, 0x205d
80004bae:	54534953          	.insn	4, 0x54534953
80004bb2:	4d45                	.insn	2, 0x4d45
80004bb4:	2041                	.insn	2, 0x2041
80004bb6:	4544                	.insn	2, 0x4544
80004bb8:	4520                	.insn	2, 0x4520
80004bba:	464e                	.insn	2, 0x464e
80004bbc:	4952                	.insn	2, 0x4952
80004bbe:	4d41                	.insn	2, 0x4d41
80004bc0:	4549                	.insn	2, 0x4549
80004bc2:	544e                	.insn	2, 0x544e
80004bc4:	4341204f          	.insn	4, 0x4341204f
80004bc8:	4954                	.insn	2, 0x4954
80004bca:	4156                	.insn	2, 0x4156
80004bcc:	4f44                	.insn	2, 0x4f44
80004bce:	2a20                	.insn	2, 0x2a20
80004bd0:	2a2a                	.insn	2, 0x2a2a
80004bd2:	000a                	.insn	2, 0x000a

80004bd4 <str_p2_temp_exceeded>:
80004bd4:	5d32505b          	.insn	4, 0x5d32505b
80004bd8:	5420                	.insn	2, 0x5420
80004bda:	6d65                	.insn	2, 0x6d65
80004bdc:	6570                	.insn	2, 0x6570
80004bde:	6172                	.insn	2, 0x6172
80004be0:	7574                	.insn	2, 0x7574
80004be2:	6172                	.insn	2, 0x6172
80004be4:	6520                	.insn	2, 0x6520
80004be6:	6378                	.insn	2, 0x6378
80004be8:	6465                	.insn	2, 0x6465
80004bea:	6f69                	.insn	2, 0x6f69
80004bec:	7520                	.insn	2, 0x7520
80004bee:	626d                	.insn	2, 0x626d
80004bf0:	6172                	.insn	2, 0x6172
80004bf2:	3a6c                	.insn	2, 0x3a6c
80004bf4:	0020                	.insn	2, 0x0020

80004bf6 <str_p2_deploying>:
80004bf6:	5d32505b          	.insn	4, 0x5d32505b
80004bfa:	4420                	.insn	2, 0x4420
80004bfc:	7365                	.insn	2, 0x7365
80004bfe:	6c70                	.insn	2, 0x6c70
80004c00:	6765                	.insn	2, 0x6765
80004c02:	6e61                	.insn	2, 0x6e61
80004c04:	6f64                	.insn	2, 0x6f64
80004c06:	7420                	.insn	2, 0x7420
80004c08:	6365                	.insn	2, 0x6365
80004c0a:	696e                	.insn	2, 0x696e
80004c0c:	20736163          	bltu	t1,t2,80004e0e <str_p3_system_status+0xc>
80004c10:	6564                	.insn	2, 0x6564
80004c12:	6720                	.insn	2, 0x6720
80004c14:	7365                	.insn	2, 0x7365
80004c16:	6974                	.insn	2, 0x6974
80004c18:	74206e6f          	jal	t3,8000b35a <current_mode+0x5072>
80004c1c:	7265                	.insn	2, 0x7265
80004c1e:	696d                	.insn	2, 0x696d
80004c20:	2e2e6163          	bltu	t3,sp,80004f02 <__clz_tab+0x3e>
80004c24:	0a2e                	.insn	2, 0x0a2e
	...

80004c27 <str_p2_pc_activation>:
80004c27:	5d32505b          	.insn	4, 0x5d32505b
80004c2b:	5020                	.insn	2, 0x5020
80004c2d:	65642043          	.insn	4, 0x65642043
80004c31:	6120                	.insn	2, 0x6120
80004c33:	76697463          	bgeu	s2,t1,8000539b <_stack_top+0x327>
80004c37:	6361                	.insn	2, 0x6361
80004c39:	6f69                	.insn	2, 0x6f69
80004c3b:	3a6e                	.insn	2, 0x3a6e
80004c3d:	3020                	.insn	2, 0x3020
80004c3f:	0078                	.insn	2, 0x0078

80004c41 <str_p2_deactivated_header>:
80004c41:	2a0a                	.insn	2, 0x2a0a
80004c43:	2a2a                	.insn	2, 0x2a2a
80004c45:	5b20                	.insn	2, 0x5b20
80004c47:	3250                	.insn	2, 0x3250
80004c49:	205d                	.insn	2, 0x205d
80004c4b:	54534953          	.insn	4, 0x54534953
80004c4f:	4d45                	.insn	2, 0x4d45
80004c51:	2041                	.insn	2, 0x2041
80004c53:	4544                	.insn	2, 0x4544
80004c55:	4520                	.insn	2, 0x4520
80004c57:	464e                	.insn	2, 0x464e
80004c59:	4952                	.insn	2, 0x4952
80004c5b:	4d41                	.insn	2, 0x4d41
80004c5d:	4549                	.insn	2, 0x4549
80004c5f:	544e                	.insn	2, 0x544e
80004c61:	4544204f          	.insn	4, 0x4544204f
80004c65:	54434153          	.insn	4, 0x54434153
80004c69:	5649                	.insn	2, 0x5649
80004c6b:	4441                	.insn	2, 0x4441
80004c6d:	2a2a204f          	.insn	4, 0x2a2a204f
80004c71:	0a2a                	.insn	2, 0x0a2a
	...

80004c74 <str_p2_temp_normalized>:
80004c74:	5d32505b          	.insn	4, 0x5d32505b
80004c78:	5420                	.insn	2, 0x5420
80004c7a:	6d65                	.insn	2, 0x6d65
80004c7c:	6570                	.insn	2, 0x6570
80004c7e:	6172                	.insn	2, 0x6172
80004c80:	7574                	.insn	2, 0x7574
80004c82:	6172                	.insn	2, 0x6172
80004c84:	6e20                	.insn	2, 0x6e20
80004c86:	616d726f          	jal	tp,800dc29c <TEMP_DATA_ADDR+0xbc29c>
80004c8a:	696c                	.insn	2, 0x696c
80004c8c:	617a                	.insn	2, 0x617a
80004c8e:	6164                	.insn	2, 0x6164
80004c90:	203a                	.insn	2, 0x203a
	...

80004c93 <str_p2_standby_mode>:
80004c93:	5d32505b          	.insn	4, 0x5d32505b
80004c97:	4720                	.insn	2, 0x4720
80004c99:	7365                	.insn	2, 0x7365
80004c9b:	6974                	.insn	2, 0x6974
80004c9d:	74206e6f          	jal	t3,8000b3df <current_mode+0x50f7>
80004ca1:	7265                	.insn	2, 0x7265
80004ca3:	696d                	.insn	2, 0x696d
80004ca5:	65206163          	bltu	zero,s2,800052e7 <_stack_top+0x273>
80004ca9:	206e                	.insn	2, 0x206e
80004cab:	6f6d                	.insn	2, 0x6f6d
80004cad:	6f64                	.insn	2, 0x6f64
80004caf:	6520                	.insn	2, 0x6520
80004cb1:	72657073          	.insn	4, 0x72657073
80004cb5:	0a61                	.insn	2, 0x0a61
	...

80004cb8 <str_p2_pc_deactivation>:
80004cb8:	5d32505b          	.insn	4, 0x5d32505b
80004cbc:	5020                	.insn	2, 0x5020
80004cbe:	65642043          	.insn	4, 0x65642043
80004cc2:	6420                	.insn	2, 0x6420
80004cc4:	7365                	.insn	2, 0x7365
80004cc6:	6361                	.insn	2, 0x6361
80004cc8:	6974                	.insn	2, 0x6974
80004cca:	6176                	.insn	2, 0x6176
80004ccc:	6e6f6963          	bltu	t5,t1,800053be <_stack_top+0x34a>
80004cd0:	203a                	.insn	2, 0x203a
80004cd2:	7830                	.insn	2, 0x7830
	...

80004cd5 <str_p2_cooling_active>:
80004cd5:	5d32505b          	.insn	4, 0x5d32505b
80004cd9:	4520                	.insn	2, 0x4520
80004cdb:	666e                	.insn	2, 0x666e
80004cdd:	6972                	.insn	2, 0x6972
80004cdf:	6d61                	.insn	2, 0x6d61
80004ce1:	6569                	.insn	2, 0x6569
80004ce3:	746e                	.insn	2, 0x746e
80004ce5:	6361206f          	j	8001731b <_heap_start+0x103b>
80004ce9:	6974                	.insn	2, 0x6974
80004ceb:	6f76                	.insn	2, 0x6f76
80004ced:	7c20                	.insn	2, 0x7c20
80004cef:	5420                	.insn	2, 0x5420
80004cf1:	6d65                	.insn	2, 0x6d65
80004cf3:	3a70                	.insn	2, 0x3a70
80004cf5:	0020                	.insn	2, 0x0020

80004cf7 <str_p2_cooling_standby>:
80004cf7:	5d32505b          	.insn	4, 0x5d32505b
80004cfb:	4520                	.insn	2, 0x4520
80004cfd:	666e                	.insn	2, 0x666e
80004cff:	6972                	.insn	2, 0x6972
80004d01:	6d61                	.insn	2, 0x6d61
80004d03:	6569                	.insn	2, 0x6569
80004d05:	746e                	.insn	2, 0x746e
80004d07:	6e65206f          	j	800573ed <TEMP_DATA_ADDR+0x373ed>
80004d0b:	6520                	.insn	2, 0x6520
80004d0d:	72657073          	.insn	4, 0x72657073
80004d11:	2061                	.insn	2, 0x2061
80004d13:	207c                	.insn	2, 0x207c
80004d15:	6554                	.insn	2, 0x6554
80004d17:	706d                	.insn	2, 0x706d
80004d19:	203a                	.insn	2, 0x203a
	...

80004d1c <str_newline>:
80004d1c:	000a                	.insn	2, 0x000a
	...

80004d20 <str_p3_header>:
80004d20:	3d0a                	.insn	2, 0x3d0a
80004d22:	3d3d                	.insn	2, 0x3d3d
80004d24:	3d3d                	.insn	2, 0x3d3d
80004d26:	3d3d                	.insn	2, 0x3d3d
80004d28:	203d                	.insn	2, 0x203d
80004d2a:	5d33505b          	.insn	4, 0x5d33505b
80004d2e:	5420                	.insn	2, 0x5420
80004d30:	4c45                	.insn	2, 0x4c45
80004d32:	4d45                	.insn	2, 0x4d45
80004d34:	5445                	.insn	2, 0x5445
80004d36:	4952                	.insn	2, 0x4952
80004d38:	2041                	.insn	2, 0x2041
80004d3a:	4544                	.insn	2, 0x4544
80004d3c:	204c                	.insn	2, 0x204c
80004d3e:	45544153          	.insn	4, 0x45544153
80004d42:	494c                	.insn	2, 0x494c
80004d44:	4554                	.insn	2, 0x4554
80004d46:	3d20                	.insn	2, 0x3d20
80004d48:	3d3d                	.insn	2, 0x3d3d
80004d4a:	3d3d                	.insn	2, 0x3d3d
80004d4c:	3d3d                	.insn	2, 0x3d3d
80004d4e:	0a3d                	.insn	2, 0x0a3d
	...

80004d51 <str_p3_temp>:
80004d51:	5d33505b          	.insn	4, 0x5d33505b
80004d55:	5420                	.insn	2, 0x5420
80004d57:	6d65                	.insn	2, 0x6d65
80004d59:	6570                	.insn	2, 0x6570
80004d5b:	6172                	.insn	2, 0x6172
80004d5d:	7574                	.insn	2, 0x7574
80004d5f:	6172                	.insn	2, 0x6172
80004d61:	203a                	.insn	2, 0x203a
	...

80004d64 <str_p3_cooling>:
80004d64:	5d33505b          	.insn	4, 0x5d33505b
80004d68:	5320                	.insn	2, 0x5320
80004d6a:	7369                	.insn	2, 0x7369
80004d6c:	6574                	.insn	2, 0x6574
80004d6e:	616d                	.insn	2, 0x616d
80004d70:	6420                	.insn	2, 0x6420
80004d72:	2065                	.insn	2, 0x2065
80004d74:	6e45                	.insn	2, 0x6e45
80004d76:	7266                	.insn	2, 0x7266
80004d78:	6169                	.insn	2, 0x6169
80004d7a:	696d                	.insn	2, 0x696d
80004d7c:	6e65                	.insn	2, 0x6e65
80004d7e:	6f74                	.insn	2, 0x6f74
80004d80:	203a                	.insn	2, 0x203a
	...

80004d83 <str_p3_cooling_on>:
80004d83:	4341                	.insn	2, 0x4341
80004d85:	4954                	.insn	2, 0x4954
80004d87:	4f56                	.insn	2, 0x4f56
80004d89:	000a                	.insn	2, 0x000a

80004d8b <str_p3_cooling_off>:
80004d8b:	4e45                	.insn	2, 0x4e45
80004d8d:	4520                	.insn	2, 0x4520
80004d8f:	52455053          	.insn	4, 0x52455053
80004d93:	0a41                	.insn	2, 0x0a41
	...

80004d96 <str_p3_orbital>:
80004d96:	5d33505b          	.insn	4, 0x5d33505b
80004d9a:	5a20                	.insn	2, 0x5a20
80004d9c:	20616e6f          	jal	t3,8001afa2 <_heap_start+0x4cc2>
80004da0:	6962724f          	.insn	4, 0x6962724f
80004da4:	6174                	.insn	2, 0x6174
80004da6:	3a6c                	.insn	2, 0x3a6c
80004da8:	0020                	.insn	2, 0x0020

80004daa <str_p3_zone_bright>:
80004daa:	554c                	.insn	2, 0x554c
80004dac:	494d                	.insn	2, 0x494d
80004dae:	4f4e                	.insn	2, 0x4f4e
80004db0:	28204153          	.insn	4, 0x28204153
80004db4:	7845                	.insn	2, 0x7845
80004db6:	6f70                	.insn	2, 0x6f70
80004db8:	69636973          	.insn	4, 0x69636973
80004dbc:	73206e6f          	jal	t3,8000b4ee <current_mode+0x5206>
80004dc0:	72616c6f          	jal	s8,8001b4e6 <_heap_start+0x5206>
80004dc4:	0a29                	.insn	2, 0x0a29
	...

80004dc7 <str_p3_zone_dark>:
80004dc7:	5543534f          	.insn	4, 0x5543534f
80004dcb:	4152                	.insn	2, 0x4152
80004dcd:	2820                	.insn	2, 0x2820
80004dcf:	626d6f53          	.insn	4, 0x626d6f53
80004dd3:	6172                	.insn	2, 0x6172
80004dd5:	7420                	.insn	2, 0x7420
80004dd7:	7265                	.insn	2, 0x7265
80004dd9:	6572                	.insn	2, 0x6572
80004ddb:	65727473          	.insn	4, 0x65727473
80004ddf:	0a29                	.insn	2, 0x0a29
	...

80004de2 <str_p3_minute>:
80004de2:	5d33505b          	.insn	4, 0x5d33505b
80004de6:	4d20                	.insn	2, 0x4d20
80004de8:	6e69                	.insn	2, 0x6e69
80004dea:	7475                	.insn	2, 0x7475
80004dec:	6564206f          	j	80047442 <TEMP_DATA_ADDR+0x27442>
80004df0:	4f20                	.insn	2, 0x4f20
80004df2:	6272                	.insn	2, 0x6272
80004df4:	7469                	.insn	2, 0x7469
80004df6:	3a61                	.insn	2, 0x3a61
80004df8:	0020                	.insn	2, 0x0020

80004dfa <str_p3_of_100>:
80004dfa:	2f20                	.insn	2, 0x2f20
80004dfc:	3120                	.insn	2, 0x3120
80004dfe:	3030                	.insn	2, 0x3030
80004e00:	000a                	.insn	2, 0x000a

80004e02 <str_p3_system_status>:
80004e02:	5d33505b          	.insn	4, 0x5d33505b
80004e06:	4520                	.insn	2, 0x4520
80004e08:	64617473          	.insn	4, 0x64617473
80004e0c:	6564206f          	j	80047462 <TEMP_DATA_ADDR+0x27462>
80004e10:	206c                	.insn	2, 0x206c
80004e12:	74736953          	.insn	4, 0x74736953
80004e16:	6d65                	.insn	2, 0x6d65
80004e18:	3a61                	.insn	2, 0x3a61
80004e1a:	0020                	.insn	2, 0x0020

80004e1c <str_p3_status_ok>:
80004e1c:	4f4e                	.insn	2, 0x4f4e
80004e1e:	4d52                	.insn	2, 0x4d52
80004e20:	4c41                	.insn	2, 0x4c41
80004e22:	000a                	.insn	2, 0x000a

80004e24 <str_p3_status_warning>:
80004e24:	4441                	.insn	2, 0x4441
80004e26:	4556                	.insn	2, 0x4556
80004e28:	5452                	.insn	2, 0x5452
80004e2a:	4e45                	.insn	2, 0x4e45
80004e2c:	20414943          	.insn	4, 0x20414943
80004e30:	202d                	.insn	2, 0x202d
80004e32:	6554                	.insn	2, 0x6554
80004e34:	706d                	.insn	2, 0x706d
80004e36:	7265                	.insn	2, 0x7265
80004e38:	7461                	.insn	2, 0x7461
80004e3a:	7275                	.insn	2, 0x7275
80004e3c:	2061                	.insn	2, 0x2061
80004e3e:	7566                	.insn	2, 0x7566
80004e40:	7265                	.insn	2, 0x7265
80004e42:	2061                	.insn	2, 0x2061
80004e44:	6564                	.insn	2, 0x6564
80004e46:	7220                	.insn	2, 0x7220
80004e48:	6e61                	.insn	2, 0x6e61
80004e4a:	6e206f67          	.insn	4, 0x6e206f67
80004e4e:	616d726f          	jal	tp,800dc464 <TEMP_DATA_ADDR+0xbc464>
80004e52:	0a6c                	.insn	2, 0x0a6c
	...

80004e55 <str_p3_separator>:
80004e55:	3d3d                	.insn	2, 0x3d3d
80004e57:	3d3d                	.insn	2, 0x3d3d
80004e59:	3d3d                	.insn	2, 0x3d3d
80004e5b:	3d3d                	.insn	2, 0x3d3d
80004e5d:	3d3d                	.insn	2, 0x3d3d
80004e5f:	3d3d                	.insn	2, 0x3d3d
80004e61:	3d3d                	.insn	2, 0x3d3d
80004e63:	3d3d                	.insn	2, 0x3d3d
80004e65:	3d3d                	.insn	2, 0x3d3d
80004e67:	3d3d                	.insn	2, 0x3d3d
80004e69:	3d3d                	.insn	2, 0x3d3d
80004e6b:	3d3d                	.insn	2, 0x3d3d
80004e6d:	3d3d                	.insn	2, 0x3d3d
80004e6f:	3d3d                	.insn	2, 0x3d3d
80004e71:	3d3d                	.insn	2, 0x3d3d
80004e73:	3d3d                	.insn	2, 0x3d3d
80004e75:	3d3d                	.insn	2, 0x3d3d
80004e77:	3d3d                	.insn	2, 0x3d3d
80004e79:	3d3d                	.insn	2, 0x3d3d
80004e7b:	3d3d                	.insn	2, 0x3d3d
80004e7d:	3d3d                	.insn	2, 0x3d3d
80004e7f:	3d3d                	.insn	2, 0x3d3d
80004e81:	3d3d                	.insn	2, 0x3d3d
80004e83:	3d3d                	.insn	2, 0x3d3d
80004e85:	000a                	.insn	2, 0x000a
80004e87:	d800                	.insn	2, 0xd800
80004e89:	ffea                	.insn	2, 0xffea
80004e8b:	60ff ffeb e4ff ffea 	.insn	22, 0xe4ffffeb60ffffeaecffffeb60ffffeae4ffffeb60ff
80004e93:	60ff ffeb ecff ffea 
80004e9b:	60ff ffeb e4ff 
80004ea1:	ffea                	.insn	2, 0xffea
80004ea3:	ffead8ff ffead8ff 	.insn	20, 0xffeab4ffffeae4ffffeaecffffead8ffffead8ff
80004eab:	ffeaecff ffeae4ff 
80004eb3:	ffeab4ff 
80004eb7:	ffeab4ff ffeab4ff 	.insn	16, 0x020100ffffeaecffffeab4ffffeab4ff
80004ebf:	ffeaecff  

80004ec4 <__clz_tab>:
80004ec4:	0100                	.insn	2, 0x0100
80004ec6:	0202                	.insn	2, 0x0202
80004ec8:	03030303          	lb	t1,48(t1)
80004ecc:	0404                	.insn	2, 0x0404
80004ece:	0404                	.insn	2, 0x0404
80004ed0:	0404                	.insn	2, 0x0404
80004ed2:	0404                	.insn	2, 0x0404
80004ed4:	0505                	.insn	2, 0x0505
80004ed6:	0505                	.insn	2, 0x0505
80004ed8:	0505                	.insn	2, 0x0505
80004eda:	0505                	.insn	2, 0x0505
80004edc:	0505                	.insn	2, 0x0505
80004ede:	0505                	.insn	2, 0x0505
80004ee0:	0505                	.insn	2, 0x0505
80004ee2:	0505                	.insn	2, 0x0505
80004ee4:	0606                	.insn	2, 0x0606
80004ee6:	0606                	.insn	2, 0x0606
80004ee8:	0606                	.insn	2, 0x0606
80004eea:	0606                	.insn	2, 0x0606
80004eec:	0606                	.insn	2, 0x0606
80004eee:	0606                	.insn	2, 0x0606
80004ef0:	0606                	.insn	2, 0x0606
80004ef2:	0606                	.insn	2, 0x0606
80004ef4:	0606                	.insn	2, 0x0606
80004ef6:	0606                	.insn	2, 0x0606
80004ef8:	0606                	.insn	2, 0x0606
80004efa:	0606                	.insn	2, 0x0606
80004efc:	0606                	.insn	2, 0x0606
80004efe:	0606                	.insn	2, 0x0606
80004f00:	0606                	.insn	2, 0x0606
80004f02:	0606                	.insn	2, 0x0606
80004f04:	07070707          	.insn	4, 0x07070707
80004f08:	07070707          	.insn	4, 0x07070707
80004f0c:	07070707          	.insn	4, 0x07070707
80004f10:	07070707          	.insn	4, 0x07070707
80004f14:	07070707          	.insn	4, 0x07070707
80004f18:	07070707          	.insn	4, 0x07070707
80004f1c:	07070707          	.insn	4, 0x07070707
80004f20:	07070707          	.insn	4, 0x07070707
80004f24:	07070707          	.insn	4, 0x07070707
80004f28:	07070707          	.insn	4, 0x07070707
80004f2c:	07070707          	.insn	4, 0x07070707
80004f30:	07070707          	.insn	4, 0x07070707
80004f34:	07070707          	.insn	4, 0x07070707
80004f38:	07070707          	.insn	4, 0x07070707
80004f3c:	07070707          	.insn	4, 0x07070707
80004f40:	07070707          	.insn	4, 0x07070707
80004f44:	0808                	.insn	2, 0x0808
80004f46:	0808                	.insn	2, 0x0808
80004f48:	0808                	.insn	2, 0x0808
80004f4a:	0808                	.insn	2, 0x0808
80004f4c:	0808                	.insn	2, 0x0808
80004f4e:	0808                	.insn	2, 0x0808
80004f50:	0808                	.insn	2, 0x0808
80004f52:	0808                	.insn	2, 0x0808
80004f54:	0808                	.insn	2, 0x0808
80004f56:	0808                	.insn	2, 0x0808
80004f58:	0808                	.insn	2, 0x0808
80004f5a:	0808                	.insn	2, 0x0808
80004f5c:	0808                	.insn	2, 0x0808
80004f5e:	0808                	.insn	2, 0x0808
80004f60:	0808                	.insn	2, 0x0808
80004f62:	0808                	.insn	2, 0x0808
80004f64:	0808                	.insn	2, 0x0808
80004f66:	0808                	.insn	2, 0x0808
80004f68:	0808                	.insn	2, 0x0808
80004f6a:	0808                	.insn	2, 0x0808
80004f6c:	0808                	.insn	2, 0x0808
80004f6e:	0808                	.insn	2, 0x0808
80004f70:	0808                	.insn	2, 0x0808
80004f72:	0808                	.insn	2, 0x0808
80004f74:	0808                	.insn	2, 0x0808
80004f76:	0808                	.insn	2, 0x0808
80004f78:	0808                	.insn	2, 0x0808
80004f7a:	0808                	.insn	2, 0x0808
80004f7c:	0808                	.insn	2, 0x0808
80004f7e:	0808                	.insn	2, 0x0808
80004f80:	0808                	.insn	2, 0x0808
80004f82:	0808                	.insn	2, 0x0808
80004f84:	0808                	.insn	2, 0x0808
80004f86:	0808                	.insn	2, 0x0808
80004f88:	0808                	.insn	2, 0x0808
80004f8a:	0808                	.insn	2, 0x0808
80004f8c:	0808                	.insn	2, 0x0808
80004f8e:	0808                	.insn	2, 0x0808
80004f90:	0808                	.insn	2, 0x0808
80004f92:	0808                	.insn	2, 0x0808
80004f94:	0808                	.insn	2, 0x0808
80004f96:	0808                	.insn	2, 0x0808
80004f98:	0808                	.insn	2, 0x0808
80004f9a:	0808                	.insn	2, 0x0808
80004f9c:	0808                	.insn	2, 0x0808
80004f9e:	0808                	.insn	2, 0x0808
80004fa0:	0808                	.insn	2, 0x0808
80004fa2:	0808                	.insn	2, 0x0808
80004fa4:	0808                	.insn	2, 0x0808
80004fa6:	0808                	.insn	2, 0x0808
80004fa8:	0808                	.insn	2, 0x0808
80004faa:	0808                	.insn	2, 0x0808
80004fac:	0808                	.insn	2, 0x0808
80004fae:	0808                	.insn	2, 0x0808
80004fb0:	0808                	.insn	2, 0x0808
80004fb2:	0808                	.insn	2, 0x0808
80004fb4:	0808                	.insn	2, 0x0808
80004fb6:	0808                	.insn	2, 0x0808
80004fb8:	0808                	.insn	2, 0x0808
80004fba:	0808                	.insn	2, 0x0808
80004fbc:	0808                	.insn	2, 0x0808
80004fbe:	0808                	.insn	2, 0x0808
80004fc0:	0808                	.insn	2, 0x0808
80004fc2:	0808                	.insn	2, 0x0808

Disassembly of section .eh_frame:

80004fc4 <.eh_frame>:
80004fc4:	0010                	.insn	2, 0x0010
80004fc6:	0000                	.insn	2, 0x
80004fc8:	0000                	.insn	2, 0x
80004fca:	0000                	.insn	2, 0x
80004fcc:	00527a03          	.insn	4, 0x00527a03
80004fd0:	7c01                	.insn	2, 0x7c01
80004fd2:	0101                	.insn	2, 0x0101
80004fd4:	00020d1b          	.insn	4, 0x00020d1b
80004fd8:	0048                	.insn	2, 0x0048
80004fda:	0000                	.insn	2, 0x
80004fdc:	0018                	.insn	2, 0x0018
80004fde:	0000                	.insn	2, 0x
80004fe0:	db10                	.insn	2, 0xdb10
80004fe2:	ffff                	.insn	2, 0xffff
80004fe4:	0634                	.insn	2, 0x0634
80004fe6:	0000                	.insn	2, 0x
80004fe8:	4400                	.insn	2, 0x4400
80004fea:	300e                	.insn	2, 0x300e
80004fec:	946c                	.insn	2, 0x946c
80004fee:	8106                	.insn	2, 0x8106
80004ff0:	8801                	.insn	2, 0x8801
80004ff2:	8902                	.insn	2, 0x8902
80004ff4:	93049203          	lh	tp,-1744(s1)
80004ff8:	9505                	.insn	2, 0x9505
80004ffa:	97089607          	.insn	4, 0x97089607
80004ffe:	9809                	.insn	2, 0x9809
80005000:	990a                	.insn	2, 0x990a
80005002:	0284030b          	.insn	4, 0x0284030b
80005006:	c10a                	.insn	2, 0xc10a
80005008:	c844                	.insn	2, 0xc844
8000500a:	c944                	.insn	2, 0xc944
8000500c:	d344                	.insn	2, 0xd344
8000500e:	d444                	.insn	2, 0xd444
80005010:	d544                	.insn	2, 0xd544
80005012:	d644                	.insn	2, 0xd644
80005014:	d744                	.insn	2, 0xd744
80005016:	d844                	.insn	2, 0xd844
80005018:	d944                	.insn	2, 0xd944
8000501a:	d24c                	.insn	2, 0xd24c
8000501c:	0e44                	.insn	2, 0x0e44
8000501e:	4400                	.insn	2, 0x4400
80005020:	0000000b          	.insn	4, 0x000b
80005024:	004c                	.insn	2, 0x004c
80005026:	0000                	.insn	2, 0x
80005028:	0064                	.insn	2, 0x0064
8000502a:	0000                	.insn	2, 0x
8000502c:	e0f8                	.insn	2, 0xe0f8
8000502e:	ffff                	.insn	2, 0xffff
80005030:	0528                	.insn	2, 0x0528
80005032:	0000                	.insn	2, 0x
80005034:	4400                	.insn	2, 0x4400
80005036:	300e                	.insn	2, 0x300e
80005038:	8870                	.insn	2, 0x8870
8000503a:	8902                	.insn	2, 0x8902
8000503c:	92018103          	lb	sp,-1760(gp)
80005040:	9304                	.insn	2, 0x9304
80005042:	9405                	.insn	2, 0x9405
80005044:	9506                	.insn	2, 0x9506
80005046:	97089607          	.insn	4, 0x97089607
8000504a:	9809                	.insn	2, 0x9809
8000504c:	990a                	.insn	2, 0x990a
8000504e:	030c9a0b          	.insn	4, 0x030c9a0b
80005052:	0124                	.insn	2, 0x0124
80005054:	c10a                	.insn	2, 0xc10a
80005056:	c844                	.insn	2, 0xc844
80005058:	c944                	.insn	2, 0xc944
8000505a:	d244                	.insn	2, 0xd244
8000505c:	d344                	.insn	2, 0xd344
8000505e:	d444                	.insn	2, 0xd444
80005060:	d544                	.insn	2, 0xd544
80005062:	d644                	.insn	2, 0xd644
80005064:	d744                	.insn	2, 0xd744
80005066:	d844                	.insn	2, 0xd844
80005068:	d944                	.insn	2, 0xd944
8000506a:	da44                	.insn	2, 0xda44
8000506c:	0e44                	.insn	2, 0x0e44
8000506e:	4400                	.insn	2, 0x4400
80005070:	0000000b          	.insn	4, 0x000b

Disassembly of section .data:

80005074 <_stack_top>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347          	.insn	4, 0x3a434347
   4:	2820                	.insn	2, 0x2820
   6:	3331                	.insn	2, 0x3331
   8:	322e                	.insn	2, 0x322e
   a:	302e                	.insn	2, 0x302e
   c:	312d                	.insn	2, 0x312d
   e:	7531                	.insn	2, 0x7531
  10:	7562                	.insn	2, 0x7562
  12:	746e                	.insn	2, 0x746e
  14:	3175                	.insn	2, 0x3175
  16:	2932312b          	.insn	4, 0x2932312b
  1a:	3120                	.insn	2, 0x3120
  1c:	2e322e33          	.insn	4, 0x2e322e33
  20:	0030                	.insn	2, 0x0030

Disassembly of section .riscv.attributes:

00000000 <.riscv.attributes>:
   0:	3441                	.insn	2, 0x3441
   2:	0000                	.insn	2, 0x
   4:	7200                	.insn	2, 0x7200
   6:	7369                	.insn	2, 0x7369
   8:	01007663          	bgeu	zero,a6,14 <SENSING_TIME+0xf>
   c:	002a                	.insn	2, 0x002a
   e:	0000                	.insn	2, 0x
  10:	1004                	.insn	2, 0x1004
  12:	7205                	.insn	2, 0x7205
  14:	3376                	.insn	2, 0x3376
  16:	6932                	.insn	2, 0x6932
  18:	7032                	.insn	2, 0x7032
  1a:	5f31                	.insn	2, 0x5f31
  1c:	697a                	.insn	2, 0x697a
  1e:	32727363          	bgeu	tp,t2,344 <COOLING_THRESHOLD_ON+0x2ea>
  22:	3070                	.insn	2, 0x3070
  24:	7a5f 6669 6e65      	.insn	6, 0x6e6566697a5f
  2a:	32696563          	bltu	s2,t1,354 <COOLING_THRESHOLD_ON+0x2fa>
  2e:	3070                	.insn	2, 0x3070
  30:	0800                	.insn	2, 0x0800
  32:	0a01                	.insn	2, 0x0a01
  34:	Address 0x34 is out of bounds.


Disassembly of section .debug_info:

00000000 <.debug_info>:
       0:	093c                	.insn	2, 0x093c
       2:	0000                	.insn	2, 0x
       4:	0005                	.insn	2, 0x0005
       6:	0401                	.insn	2, 0x0401
       8:	0000                	.insn	2, 0x
       a:	0000                	.insn	2, 0x
       c:	4114                	.insn	2, 0x4114
       e:	0001                	.insn	2, 0x0001
      10:	1d00                	.insn	2, 0x1d00
      12:	006e                	.insn	2, 0x006e
      14:	0000                	.insn	2, 0x
      16:	0000                	.insn	2, 0x
      18:	0000                	.insn	2, 0x
      1a:	2af0                	.insn	2, 0x2af0
      1c:	8000                	.insn	2, 0x8000
      1e:	0634                	.insn	2, 0x0634
      20:	0000                	.insn	2, 0x
      22:	0000                	.insn	2, 0x
      24:	0000                	.insn	2, 0x
      26:	0805                	.insn	2, 0x0805
      28:	00005707          	.insn	4, 0x5707
      2c:	1500                	.insn	2, 0x1500
      2e:	0504                	.insn	2, 0x0504
      30:	6e69                	.insn	2, 0x6e69
      32:	0074                	.insn	2, 0x0074
      34:	0405                	.insn	2, 0x0405
      36:	00006107          	.insn	4, 0x6107
      3a:	0500                	.insn	2, 0x0500
      3c:	0508                	.insn	2, 0x0508
      3e:	0049                	.insn	2, 0x0049
      40:	0000                	.insn	2, 0x
      42:	1005                	.insn	2, 0x1005
      44:	1e04                	.insn	2, 0x1e04
      46:	0001                	.insn	2, 0x0001
      48:	0500                	.insn	2, 0x0500
      4a:	0801                	.insn	2, 0x0801
      4c:	008e                	.insn	2, 0x008e
      4e:	0000                	.insn	2, 0x
      50:	0105                	.insn	2, 0x0105
      52:	9708                	.insn	2, 0x9708
      54:	0000                	.insn	2, 0x
      56:	0500                	.insn	2, 0x0500
      58:	0601                	.insn	2, 0x0601
      5a:	0090                	.insn	2, 0x0090
      5c:	0000                	.insn	2, 0x
      5e:	b008                	.insn	2, 0xb008
      60:	0000                	.insn	2, 0x
      62:	7b00                	.insn	2, 0x7b00
      64:	4916                	.insn	2, 0x4916
      66:	0000                	.insn	2, 0x
      68:	0c00                	.insn	2, 0x0c00
      6a:	005e                	.insn	2, 0x005e
      6c:	0000                	.insn	2, 0x
      6e:	0205                	.insn	2, 0x0205
      70:	2905                	.insn	2, 0x2905
      72:	0000                	.insn	2, 0x
      74:	0500                	.insn	2, 0x0500
      76:	0702                	.insn	2, 0x0702
      78:	00c1                	.insn	2, 0x00c1
      7a:	0000                	.insn	2, 0x
      7c:	2b08                	.insn	2, 0x2b08
      7e:	0001                	.insn	2, 0x0001
      80:	8000                	.insn	2, 0x8000
      82:	00002d0f          	.insn	4, 0x2d0f
      86:	0800                	.insn	2, 0x0800
      88:	012a                	.insn	2, 0x012a
      8a:	0000                	.insn	2, 0x
      8c:	1681                	.insn	2, 0x1681
      8e:	0034                	.insn	2, 0x0034
      90:	0000                	.insn	2, 0x
      92:	d508                	.insn	2, 0xd508
      94:	0000                	.insn	2, 0x
      96:	8400                	.insn	2, 0x8400
      98:	00003b0f          	.insn	4, 0x3b0f
      9c:	0800                	.insn	2, 0x0800
      9e:	00d4                	.insn	2, 0x00d4
      a0:	0000                	.insn	2, 0x
      a2:	1685                	.insn	2, 0x1685
      a4:	0026                	.insn	2, 0x0026
      a6:	0000                	.insn	2, 0x
      a8:	0205                	.insn	2, 0x0205
      aa:	8504                	.insn	2, 0x8504
      ac:	0000                	.insn	2, 0x
      ae:	0500                	.insn	2, 0x0500
      b0:	0304                	.insn	2, 0x0304
      b2:	007d                	.insn	2, 0x007d
      b4:	0000                	.insn	2, 0x
      b6:	0405                	.insn	2, 0x0405
      b8:	1a04                	.insn	2, 0x1a04
      ba:	0000                	.insn	2, 0x
      bc:	0500                	.insn	2, 0x0500
      be:	0308                	.insn	2, 0x0308
      c0:	0012                	.insn	2, 0x0012
      c2:	0000                	.insn	2, 0x
      c4:	0805                	.insn	2, 0x0805
      c6:	2304                	.insn	2, 0x2304
      c8:	0001                	.insn	2, 0x0001
      ca:	0500                	.insn	2, 0x0500
      cc:	0310                	.insn	2, 0x0310
      ce:	00f5                	.insn	2, 0x00f5
      d0:	0000                	.insn	2, 0x
      d2:	2005                	.insn	2, 0x2005
      d4:	00011603          	lh	a2,0(sp)
      d8:	1600                	.insn	2, 0x1600
      da:	00b8                	.insn	2, 0x00b8
      dc:	0000                	.insn	2, 0x
      de:	0208                	.insn	2, 0x0208
      e0:	01f1                	.insn	2, 0x01f1
      e2:	040a                	.insn	2, 0x040a
      e4:	0001                	.insn	2, 0x0001
      e6:	1700                	.insn	2, 0x1700
      e8:	6f6c                	.insn	2, 0x6f6c
      ea:	f1020077          	.insn	4, 0xf1020077
      ee:	1a01                	.insn	2, 0x1a01
      f0:	007c                	.insn	2, 0x007c
      f2:	0000                	.insn	2, 0x
      f4:	1800                	.insn	2, 0x1800
      f6:	006e                	.insn	2, 0x006e
      f8:	0000                	.insn	2, 0x
      fa:	f102                	.insn	2, 0xf102
      fc:	1f01                	.insn	2, 0x1f01
      fe:	007c                	.insn	2, 0x007c
     100:	0000                	.insn	2, 0x
     102:	0004                	.insn	2, 0x0004
     104:	0819                	.insn	2, 0x0819
     106:	f802                	.insn	2, 0xf802
     108:	0901                	.insn	2, 0x0901
     10a:	0124                	.insn	2, 0x0124
     10c:	0000                	.insn	2, 0x
     10e:	7312                	.insn	2, 0x7312
     110:	fa00                	.insn	2, 0xfa00
     112:	1301                	.insn	2, 0x1301
     114:	00d9                	.insn	2, 0x00d9
     116:	0000                	.insn	2, 0x
     118:	6c12                	.insn	2, 0x6c12
     11a:	006c                	.insn	2, 0x006c
     11c:	920a01fb          	.insn	4, 0x920a01fb
     120:	0000                	.insn	2, 0x
     122:	0000                	.insn	2, 0x
     124:	001a                	.insn	2, 0x001a
     126:	0000                	.insn	2, 0x
     128:	0200                	.insn	2, 0x0200
     12a:	01fc                	.insn	2, 0x01fc
     12c:	00010403          	lb	s0,0(sp)
     130:	0c00                	.insn	2, 0x0c00
     132:	0124                	.insn	2, 0x0124
     134:	0000                	.insn	2, 0x
     136:	0000691b          	.insn	4, 0x691b
     13a:	4600                	.insn	2, 0x4600
     13c:	0001                	.insn	2, 0x0001
     13e:	1c00                	.insn	2, 0x1c00
     140:	0034                	.insn	2, 0x0034
     142:	0000                	.insn	2, 0x
     144:	00ff 360c 0001 1d00 	.insn	10, 0x00731d000001360c00ff
     14c:	0073 
     14e:	0000                	.insn	2, 0x
     150:	0602                	.insn	2, 0x0602
     152:	1602                	.insn	2, 0x1602
     154:	0146                	.insn	2, 0x0146
     156:	0000                	.insn	2, 0x
     158:	081e                	.insn	2, 0x081e
     15a:	0000                	.insn	2, 0x
     15c:	0100                	.insn	2, 0x0100
     15e:	0512                	.insn	2, 0x0512
     160:	9d01                	.insn	2, 0x9d01
     162:	0000                	.insn	2, 0x
     164:	f000                	.insn	2, 0xf000
     166:	002a                	.insn	2, 0x002a
     168:	3480                	.insn	2, 0x3480
     16a:	0006                	.insn	2, 0x0006
     16c:	0100                	.insn	2, 0x0100
     16e:	7e9c                	.insn	2, 0x7e9c
     170:	0005                	.insn	2, 0x0005
     172:	1300                	.insn	2, 0x1300
     174:	006e                	.insn	2, 0x006e
     176:	9d14                	.insn	2, 0x9d14
     178:	0000                	.insn	2, 0x
     17a:	0c00                	.insn	2, 0x0c00
     17c:	0000                	.insn	2, 0x
     17e:	1300                	.insn	2, 0x1300
     180:	0064                	.insn	2, 0x0064
     182:	9d1f 0000 9000      	.insn	6, 0x900000009d1f
     188:	0000                	.insn	2, 0x
     18a:	1f00                	.insn	2, 0x1f00
     18c:	057e                	.insn	2, 0x057e
     18e:	0000                	.insn	2, 0x
     190:	2af0                	.insn	2, 0x2af0
     192:	8000                	.insn	2, 0x8000
     194:	000c                	.insn	2, 0x000c
     196:	0000                	.insn	2, 0x
     198:	1401                	.insn	2, 0x1401
     19a:	0a05                	.insn	2, 0x0a05
     19c:	a00d                	.insn	2, 0xa00d
     19e:	0005                	.insn	2, 0x0005
     1a0:	fc00                	.insn	2, 0xfc00
     1a2:	0000                	.insn	2, 0x
     1a4:	0d00                	.insn	2, 0x0d00
     1a6:	0598                	.insn	2, 0x0598
     1a8:	0000                	.insn	2, 0x
     1aa:	010c                	.insn	2, 0x010c
     1ac:	0000                	.insn	2, 0x
     1ae:	900d                	.insn	2, 0x900d
     1b0:	0005                	.insn	2, 0x0005
     1b2:	5300                	.insn	2, 0x5300
     1b4:	0001                	.insn	2, 0x0001
     1b6:	2000                	.insn	2, 0x2000
     1b8:	0019                	.insn	2, 0x0019
     1ba:	0000                	.insn	2, 0x
     1bc:	0005a90b          	.insn	4, 0x0005a90b
     1c0:	0b00                	.insn	2, 0x0b00
     1c2:	05b4                	.insn	2, 0x05b4
     1c4:	0000                	.insn	2, 0x
     1c6:	0005bf0b          	.insn	4, 0x0005bf0b
     1ca:	0100                	.insn	2, 0x0100
     1cc:	05ca                	.insn	2, 0x05ca
     1ce:	0000                	.insn	2, 0x
     1d0:	000001b3          	add	gp,zero,zero
     1d4:	d501                	.insn	2, 0xd501
     1d6:	0005                	.insn	2, 0x0005
     1d8:	0100                	.insn	2, 0x0100
     1da:	0002                	.insn	2, 0x0002
     1dc:	0100                	.insn	2, 0x0100
     1de:	05e0                	.insn	2, 0x05e0
     1e0:	0000                	.insn	2, 0x
     1e2:	0231                	.insn	2, 0x0231
     1e4:	0000                	.insn	2, 0x
     1e6:	eb01                	.insn	2, 0xeb01
     1e8:	0005                	.insn	2, 0x0005
     1ea:	7c00                	.insn	2, 0x7c00
     1ec:	0002                	.insn	2, 0x0002
     1ee:	0100                	.insn	2, 0x0100
     1f0:	05f6                	.insn	2, 0x05f6
     1f2:	0000                	.insn	2, 0x
     1f4:	02c9                	.insn	2, 0x02c9
     1f6:	0000                	.insn	2, 0x
     1f8:	0101                	.insn	2, 0x0101
     1fa:	0006                	.insn	2, 0x0006
     1fc:	d800                	.insn	2, 0xd800
     1fe:	0002                	.insn	2, 0x0002
     200:	0100                	.insn	2, 0x0100
     202:	060c                	.insn	2, 0x060c
     204:	0000                	.insn	2, 0x
     206:	000002e7          	jalr	t0,zero # 0 <TRANSMISSION_TIME-0x1>
     20a:	1701                	.insn	2, 0x1701
     20c:	0006                	.insn	2, 0x0006
     20e:	fe00                	.insn	2, 0xfe00
     210:	0002                	.insn	2, 0x0002
     212:	0100                	.insn	2, 0x0100
     214:	0621                	.insn	2, 0x0621
     216:	0000                	.insn	2, 0x
     218:	030d                	.insn	2, 0x030d
     21a:	0000                	.insn	2, 0x
     21c:	00062c0b          	.insn	4, 0x00062c0b
     220:	0900                	.insn	2, 0x0900
     222:	00000637          	lui	a2,0x0
     226:	0000002b          	.insn	4, 0x002b
     22a:	0241                	.insn	2, 0x0241
     22c:	0000                	.insn	2, 0x
     22e:	3c01                	.insn	2, 0x3c01
     230:	0006                	.insn	2, 0x0006
     232:	3000                	.insn	2, 0x3000
     234:	01000003          	lb	zero,16(zero) # 10 <SENSING_TIME+0xb>
     238:	0648                	.insn	2, 0x0648
     23a:	0000                	.insn	2, 0x
     23c:	0354                	.insn	2, 0x0354
     23e:	0000                	.insn	2, 0x
     240:	0a00                	.insn	2, 0x0a00
     242:	0655                	.insn	2, 0x0655
     244:	0000                	.insn	2, 0x
     246:	2b84                	.insn	2, 0x2b84
     248:	8000                	.insn	2, 0x8000
     24a:	00e0                	.insn	2, 0x00e0
     24c:	0000                	.insn	2, 0x
     24e:	02c8                	.insn	2, 0x02c8
     250:	0000                	.insn	2, 0x
     252:	5a01                	.insn	2, 0x5a01
     254:	0006                	.insn	2, 0x0006
     256:	5a00                	.insn	2, 0x5a00
     258:	01000003          	lb	zero,16(zero) # 10 <SENSING_TIME+0xb>
     25c:	0666                	.insn	2, 0x0666
     25e:	0000                	.insn	2, 0x
     260:	0362                	.insn	2, 0x0362
     262:	0000                	.insn	2, 0x
     264:	7201                	.insn	2, 0x7201
     266:	0006                	.insn	2, 0x0006
     268:	7700                	.insn	2, 0x7700
     26a:	01000003          	lb	zero,16(zero) # 10 <SENSING_TIME+0xb>
     26e:	067e                	.insn	2, 0x067e
     270:	0000                	.insn	2, 0x
     272:	0394                	.insn	2, 0x0394
     274:	0000                	.insn	2, 0x
     276:	8a01                	.insn	2, 0x8a01
     278:	0006                	.insn	2, 0x0006
     27a:	b100                	.insn	2, 0xb100
     27c:	01000003          	lb	zero,16(zero) # 10 <SENSING_TIME+0xb>
     280:	0696                	.insn	2, 0x0696
     282:	0000                	.insn	2, 0x
     284:	03e1                	.insn	2, 0x03e1
     286:	0000                	.insn	2, 0x
     288:	a201                	.insn	2, 0xa201
     28a:	0006                	.insn	2, 0x0006
     28c:	f500                	.insn	2, 0xf500
     28e:	04000003          	lb	zero,64(zero) # 40 <COOLING_THRESHOLD_OFF+0x9>
     292:	2b9c                	.insn	2, 0x2b9c
     294:	8000                	.insn	2, 0x8000
     296:	0924                	.insn	2, 0x0924
     298:	0000                	.insn	2, 0x
     29a:	b404                	.insn	2, 0xb404
     29c:	2d80002b          	.insn	4, 0x2d80002b
     2a0:	0009                	.insn	2, 0x0009
     2a2:	0400                	.insn	2, 0x0400
     2a4:	2bc8                	.insn	2, 0x2bc8
     2a6:	8000                	.insn	2, 0x8000
     2a8:	0936                	.insn	2, 0x0936
     2aa:	0000                	.insn	2, 0x
     2ac:	0804                	.insn	2, 0x0804
     2ae:	002c                	.insn	2, 0x002c
     2b0:	2480                	.insn	2, 0x2480
     2b2:	0009                	.insn	2, 0x0009
     2b4:	0400                	.insn	2, 0x0400
     2b6:	2c1c                	.insn	2, 0x2c1c
     2b8:	8000                	.insn	2, 0x8000
     2ba:	092d                	.insn	2, 0x092d
     2bc:	0000                	.insn	2, 0x
     2be:	3004                	.insn	2, 0x3004
     2c0:	002c                	.insn	2, 0x002c
     2c2:	3680                	.insn	2, 0x3680
     2c4:	0009                	.insn	2, 0x0009
     2c6:	0000                	.insn	2, 0x
     2c8:	b109                	.insn	2, 0xb109
     2ca:	37000007          	.insn	4, 0x37000007
     2ce:	0000                	.insn	2, 0x
     2d0:	3500                	.insn	2, 0x3500
     2d2:	0004                	.insn	2, 0x0004
     2d4:	0100                	.insn	2, 0x0100
     2d6:	07b2                	.insn	2, 0x07b2
     2d8:	0000                	.insn	2, 0x
     2da:	0000040b          	.insn	4, 0x040b
     2de:	bd01                	.insn	2, 0xbd01
     2e0:	13000007          	.insn	4, 0x13000007
     2e4:	0004                	.insn	2, 0x0004
     2e6:	0900                	.insn	2, 0x0900
     2e8:	07c8                	.insn	2, 0x07c8
     2ea:	0000                	.insn	2, 0x
     2ec:	0042                	.insn	2, 0x0042
     2ee:	0000                	.insn	2, 0x
     2f0:	036a                	.insn	2, 0x036a
     2f2:	0000                	.insn	2, 0x
     2f4:	cd01                	.insn	2, 0xcd01
     2f6:	45000007          	.insn	4, 0x45000007
     2fa:	0004                	.insn	2, 0x0004
     2fc:	0100                	.insn	2, 0x0100
     2fe:	07d9                	.insn	2, 0x07d9
     300:	0000                	.insn	2, 0x
     302:	0454                	.insn	2, 0x0454
     304:	0000                	.insn	2, 0x
     306:	e501                	.insn	2, 0xe501
     308:	69000007          	.insn	4, 0x69000007
     30c:	0004                	.insn	2, 0x0004
     30e:	0100                	.insn	2, 0x0100
     310:	07f1                	.insn	2, 0x07f1
     312:	0000                	.insn	2, 0x
     314:	0486                	.insn	2, 0x0486
     316:	0000                	.insn	2, 0x
     318:	fd01                	.insn	2, 0xfd01
     31a:	a3000007          	.insn	4, 0xa3000007
     31e:	0004                	.insn	2, 0x0004
     320:	0100                	.insn	2, 0x0100
     322:	0809                	.insn	2, 0x0809
     324:	0000                	.insn	2, 0x
     326:	04df 0000 1501      	.insn	6, 0x1501000004df
     32c:	0008                	.insn	2, 0x0008
     32e:	0a00                	.insn	2, 0x0a00
     330:	0005                	.insn	2, 0x0005
     332:	0400                	.insn	2, 0x0400
     334:	2f94                	.insn	2, 0x2f94
     336:	8000                	.insn	2, 0x8000
     338:	0924                	.insn	2, 0x0924
     33a:	0000                	.insn	2, 0x
     33c:	a804                	.insn	2, 0xa804
     33e:	2d80002f          	.insn	4, 0x2d80002f
     342:	0009                	.insn	2, 0x0009
     344:	0400                	.insn	2, 0x0400
     346:	2fbc                	.insn	2, 0x2fbc
     348:	8000                	.insn	2, 0x8000
     34a:	0936                	.insn	2, 0x0936
     34c:	0000                	.insn	2, 0x
     34e:	fc04                	.insn	2, 0xfc04
     350:	2480002f          	.insn	4, 0x2480002f
     354:	0009                	.insn	2, 0x0009
     356:	0400                	.insn	2, 0x0400
     358:	3010                	.insn	2, 0x3010
     35a:	8000                	.insn	2, 0x8000
     35c:	092d                	.insn	2, 0x092d
     35e:	0000                	.insn	2, 0x
     360:	2404                	.insn	2, 0x2404
     362:	0030                	.insn	2, 0x0030
     364:	3680                	.insn	2, 0x3680
     366:	0009                	.insn	2, 0x0009
     368:	0000                	.insn	2, 0x
     36a:	220e                	.insn	2, 0x220e
     36c:	0008                	.insn	2, 0x0008
     36e:	5c00                	.insn	2, 0x5c00
     370:	0000                	.insn	2, 0x
     372:	0100                	.insn	2, 0x0100
     374:	00000827          	.insn	4, 0x0827
     378:	00000527          	.insn	4, 0x0527
     37c:	3301                	.insn	2, 0x3301
     37e:	0008                	.insn	2, 0x0008
     380:	3600                	.insn	2, 0x3600
     382:	0005                	.insn	2, 0x0005
     384:	0100                	.insn	2, 0x0100
     386:	0000083f 0000055a 	.insn	8, 0x055a0000083f
     38e:	4b01                	.insn	2, 0x4b01
     390:	0008                	.insn	2, 0x0008
     392:	6200                	.insn	2, 0x6200
     394:	0005                	.insn	2, 0x0005
     396:	0100                	.insn	2, 0x0100
     398:	00000857          	.insn	4, 0x0857
     39c:	0571                	.insn	2, 0x0571
     39e:	0000                	.insn	2, 0x
     3a0:	6301                	.insn	2, 0x6301
     3a2:	0008                	.insn	2, 0x0008
     3a4:	a900                	.insn	2, 0xa900
     3a6:	0005                	.insn	2, 0x0005
     3a8:	0100                	.insn	2, 0x0100
     3aa:	0000086f          	jal	a6,3aa <COOLING_THRESHOLD_ON+0x350>
     3ae:	05b1                	.insn	2, 0x05b1
     3b0:	0000                	.insn	2, 0x
     3b2:	7b01                	.insn	2, 0x7b01
     3b4:	0008                	.insn	2, 0x0008
     3b6:	b900                	.insn	2, 0xb900
     3b8:	0005                	.insn	2, 0x0005
     3ba:	0a00                	.insn	2, 0x0a00
     3bc:	00000887          	.insn	4, 0x0887
     3c0:	3078                	.insn	2, 0x3078
     3c2:	8000                	.insn	2, 0x8000
     3c4:	0014                	.insn	2, 0x0014
     3c6:	0000                	.insn	2, 0x
     3c8:	000003db          	.insn	4, 0x03db
     3cc:	00088c07          	.insn	4, 0x00088c07
     3d0:	0100                	.insn	2, 0x0100
     3d2:	075a                	.insn	2, 0x075a
     3d4:	0898                	.insn	2, 0x0898
     3d6:	0000                	.insn	2, 0x
     3d8:	5b01                	.insn	2, 0x5b01
     3da:	0a00                	.insn	2, 0x0a00
     3dc:	08a5                	.insn	2, 0x08a5
     3de:	0000                	.insn	2, 0x
     3e0:	308c                	.insn	2, 0x308c
     3e2:	8000                	.insn	2, 0x8000
     3e4:	0014                	.insn	2, 0x0014
     3e6:	0000                	.insn	2, 0x
     3e8:	000003fb          	.insn	4, 0x03fb
     3ec:	0008aa07          	.insn	4, 0x0008aa07
     3f0:	0100                	.insn	2, 0x0100
     3f2:	075a                	.insn	2, 0x075a
     3f4:	08b6                	.insn	2, 0x08b6
     3f6:	0000                	.insn	2, 0x
     3f8:	5b01                	.insn	2, 0x5b01
     3fa:	0a00                	.insn	2, 0x0a00
     3fc:	000008c3          	.insn	4, 0x08c3
     400:	30a0                	.insn	2, 0x30a0
     402:	8000                	.insn	2, 0x8000
     404:	0014                	.insn	2, 0x0014
     406:	0000                	.insn	2, 0x
     408:	0000041b          	.insn	4, 0x041b
     40c:	0008c807          	.insn	4, 0x0008c807
     410:	0100                	.insn	2, 0x0100
     412:	075a                	.insn	2, 0x075a
     414:	08d4                	.insn	2, 0x08d4
     416:	0000                	.insn	2, 0x
     418:	5b01                	.insn	2, 0x5b01
     41a:	0e00                	.insn	2, 0x0e00
     41c:	08e1                	.insn	2, 0x08e1
     41e:	0000                	.insn	2, 0x
     420:	0076                	.insn	2, 0x0076
     422:	0000                	.insn	2, 0x
     424:	0008e207          	.insn	4, 0x0008e207
     428:	0100                	.insn	2, 0x0100
     42a:	075a                	.insn	2, 0x075a
     42c:	08ee                	.insn	2, 0x08ee
     42e:	0000                	.insn	2, 0x
     430:	5b01                	.insn	2, 0x5b01
     432:	0000                	.insn	2, 0x
     434:	0900                	.insn	2, 0x0900
     436:	000006af          	.insn	4, 0x06af
     43a:	0081                	.insn	2, 0x0081
     43c:	0000                	.insn	2, 0x
     43e:	0455                	.insn	2, 0x0455
     440:	0000                	.insn	2, 0x
     442:	b401                	.insn	2, 0xb401
     444:	0006                	.insn	2, 0x0006
     446:	c100                	.insn	2, 0xc100
     448:	0005                	.insn	2, 0x0005
     44a:	0100                	.insn	2, 0x0100
     44c:	06c0                	.insn	2, 0x06c0
     44e:	0000                	.insn	2, 0x
     450:	05d0                	.insn	2, 0x05d0
     452:	0000                	.insn	2, 0x
     454:	0a00                	.insn	2, 0x0a00
     456:	00000727          	.insn	4, 0x0727
     45a:	2cc0                	.insn	2, 0x2cc0
     45c:	8000                	.insn	2, 0x8000
     45e:	00e0                	.insn	2, 0x00e0
     460:	0000                	.insn	2, 0x
     462:	04dc                	.insn	2, 0x04dc
     464:	0000                	.insn	2, 0x
     466:	2c01                	.insn	2, 0x2c01
     468:	d8000007          	.insn	4, 0xd8000007
     46c:	0005                	.insn	2, 0x0005
     46e:	0100                	.insn	2, 0x0100
     470:	0738                	.insn	2, 0x0738
     472:	0000                	.insn	2, 0x
     474:	05e0                	.insn	2, 0x05e0
     476:	0000                	.insn	2, 0x
     478:	4401                	.insn	2, 0x4401
     47a:	f5000007          	.insn	4, 0xf5000007
     47e:	0005                	.insn	2, 0x0005
     480:	0100                	.insn	2, 0x0100
     482:	0750                	.insn	2, 0x0750
     484:	0000                	.insn	2, 0x
     486:	0612                	.insn	2, 0x0612
     488:	0000                	.insn	2, 0x
     48a:	5c01                	.insn	2, 0x5c01
     48c:	2f000007          	.insn	4, 0x2f000007
     490:	0006                	.insn	2, 0x0006
     492:	0100                	.insn	2, 0x0100
     494:	0768                	.insn	2, 0x0768
     496:	0000                	.insn	2, 0x
     498:	065f 0000 7401      	.insn	6, 0x74010000065f
     49e:	73000007          	.insn	4, 0x73000007
     4a2:	0006                	.insn	2, 0x0006
     4a4:	0400                	.insn	2, 0x0400
     4a6:	2cd8                	.insn	2, 0x2cd8
     4a8:	8000                	.insn	2, 0x8000
     4aa:	0924                	.insn	2, 0x0924
     4ac:	0000                	.insn	2, 0x
     4ae:	f004                	.insn	2, 0xf004
     4b0:	002c                	.insn	2, 0x002c
     4b2:	2d80                	.insn	2, 0x2d80
     4b4:	0009                	.insn	2, 0x0009
     4b6:	0400                	.insn	2, 0x0400
     4b8:	2d04                	.insn	2, 0x2d04
     4ba:	8000                	.insn	2, 0x8000
     4bc:	0936                	.insn	2, 0x0936
     4be:	0000                	.insn	2, 0x
     4c0:	4404                	.insn	2, 0x4404
     4c2:	002d                	.insn	2, 0x002d
     4c4:	2480                	.insn	2, 0x2480
     4c6:	0009                	.insn	2, 0x0009
     4c8:	0400                	.insn	2, 0x0400
     4ca:	2d58                	.insn	2, 0x2d58
     4cc:	8000                	.insn	2, 0x8000
     4ce:	092d                	.insn	2, 0x092d
     4d0:	0000                	.insn	2, 0x
     4d2:	6c04                	.insn	2, 0x6c04
     4d4:	002d                	.insn	2, 0x002d
     4d6:	3680                	.insn	2, 0x3680
     4d8:	0009                	.insn	2, 0x0009
     4da:	0000                	.insn	2, 0x
     4dc:	cd09                	.insn	2, 0xcd09
     4de:	0006                	.insn	2, 0x0006
     4e0:	9100                	.insn	2, 0x9100
     4e2:	0000                	.insn	2, 0x
     4e4:	5f00                	.insn	2, 0x5f00
     4e6:	0005                	.insn	2, 0x0005
     4e8:	0100                	.insn	2, 0x0100
     4ea:	06d2                	.insn	2, 0x06d2
     4ec:	0000                	.insn	2, 0x
     4ee:	0690                	.insn	2, 0x0690
     4f0:	0000                	.insn	2, 0x
     4f2:	de01                	.insn	2, 0xde01
     4f4:	0006                	.insn	2, 0x0006
     4f6:	9800                	.insn	2, 0x9800
     4f8:	0006                	.insn	2, 0x0006
     4fa:	0100                	.insn	2, 0x0100
     4fc:	06ea                	.insn	2, 0x06ea
     4fe:	0000                	.insn	2, 0x
     500:	06ad                	.insn	2, 0x06ad
     502:	0000                	.insn	2, 0x
     504:	f601                	.insn	2, 0xf601
     506:	0006                	.insn	2, 0x0006
     508:	ca00                	.insn	2, 0xca00
     50a:	0006                	.insn	2, 0x0006
     50c:	0100                	.insn	2, 0x0100
     50e:	0702                	.insn	2, 0x0702
     510:	0000                	.insn	2, 0x
     512:	000006e7          	jalr	a3,zero # 0 <TRANSMISSION_TIME-0x1>
     516:	0e01                	.insn	2, 0x0e01
     518:	17000007          	.insn	4, 0x17000007
     51c:	01000007          	.insn	4, 0x01000007
     520:	071a                	.insn	2, 0x071a
     522:	0000                	.insn	2, 0x
     524:	0749                	.insn	2, 0x0749
     526:	0000                	.insn	2, 0x
     528:	2004                	.insn	2, 0x2004
     52a:	002e                	.insn	2, 0x002e
     52c:	2480                	.insn	2, 0x2480
     52e:	0009                	.insn	2, 0x0009
     530:	0400                	.insn	2, 0x0400
     532:	2e38                	.insn	2, 0x2e38
     534:	8000                	.insn	2, 0x8000
     536:	092d                	.insn	2, 0x092d
     538:	0000                	.insn	2, 0x
     53a:	4c04                	.insn	2, 0x4c04
     53c:	002e                	.insn	2, 0x002e
     53e:	3680                	.insn	2, 0x3680
     540:	0009                	.insn	2, 0x0009
     542:	0400                	.insn	2, 0x0400
     544:	2e8c                	.insn	2, 0x2e8c
     546:	8000                	.insn	2, 0x8000
     548:	0924                	.insn	2, 0x0924
     54a:	0000                	.insn	2, 0x
     54c:	a004                	.insn	2, 0xa004
     54e:	002e                	.insn	2, 0x002e
     550:	2d80                	.insn	2, 0x2d80
     552:	0009                	.insn	2, 0x0009
     554:	0400                	.insn	2, 0x0400
     556:	2eb4                	.insn	2, 0x2eb4
     558:	8000                	.insn	2, 0x8000
     55a:	0936                	.insn	2, 0x0936
     55c:	0000                	.insn	2, 0x
     55e:	0e00                	.insn	2, 0x0e00
     560:	0781                	.insn	2, 0x0781
     562:	0000                	.insn	2, 0x
     564:	009c                	.insn	2, 0x009c
     566:	0000                	.insn	2, 0x
     568:	8601                	.insn	2, 0x8601
     56a:	5f000007          	.insn	4, 0x5f000007
     56e:	01000007          	.insn	4, 0x01000007
     572:	0792                	.insn	2, 0x0792
     574:	0000                	.insn	2, 0x
     576:	00000767          	jalr	a4,zero # 0 <TRANSMISSION_TIME-0x1>
     57a:	0000                	.insn	2, 0x
     57c:	0000                	.insn	2, 0x
     57e:	0921                	.insn	2, 0x0921
     580:	0001                	.insn	2, 0x0001
     582:	0100                	.insn	2, 0x0100
     584:	9d0103e3          	beq	sp,a6,ffffff4a <TEMP_DATA_ADDR+0x7ffdff4a>
     588:	0000                	.insn	2, 0x
     58a:	0300                	.insn	2, 0x0300
     58c:	091e                	.insn	2, 0x091e
     58e:	0000                	.insn	2, 0x
     590:	17006e0f          	.insn	4, 0x17006e0f
     594:	009d                	.insn	2, 0x009d
     596:	0000                	.insn	2, 0x
     598:	2200640f          	.insn	4, 0x2200640f
     59c:	009d                	.insn	2, 0x009d
     59e:	0000                	.insn	2, 0x
     5a0:	0070720f          	.insn	4, 0x0070720f
     5a4:	1e2e                	.insn	2, 0x1e2e
     5a6:	0009                	.insn	2, 0x0009
     5a8:	0300                	.insn	2, 0x0300
     5aa:	6e6e                	.insn	2, 0x6e6e
     5ac:	e500                	.insn	2, 0xe500
     5ae:	01311103          	lh	sp,19(sp)
     5b2:	0000                	.insn	2, 0x
     5b4:	00646403          	.insn	4, 0x00646403
     5b8:	03e6                	.insn	2, 0x03e6
     5ba:	3111                	.insn	2, 0x3111
     5bc:	0001                	.insn	2, 0x0001
     5be:	0300                	.insn	2, 0x0300
     5c0:	7272                	.insn	2, 0x7272
     5c2:	e700                	.insn	2, 0xe700
     5c4:	01240b03          	lb	s6,18(s0)
     5c8:	0000                	.insn	2, 0x
     5ca:	00306403          	.insn	4, 0x00306403
     5ce:	03e8                	.insn	2, 0x03e8
     5d0:	870a                	.insn	2, 0x870a
     5d2:	0000                	.insn	2, 0x
     5d4:	0300                	.insn	2, 0x0300
     5d6:	3164                	.insn	2, 0x3164
     5d8:	e800                	.insn	2, 0xe800
     5da:	00870e03          	lb	t3,8(a4) # 1000008 <COOLING_THRESHOLD_ON+0xffffae>
     5de:	0000                	.insn	2, 0x
     5e0:	00306e03          	.insn	4, 0x00306e03
     5e4:	03e8                	.insn	2, 0x03e8
     5e6:	8712                	.insn	2, 0x8712
     5e8:	0000                	.insn	2, 0x
     5ea:	0300                	.insn	2, 0x0300
     5ec:	316e                	.insn	2, 0x316e
     5ee:	e800                	.insn	2, 0xe800
     5f0:	00871603          	lh	a2,8(a4)
     5f4:	0000                	.insn	2, 0x
     5f6:	00326e03          	.insn	4, 0x00326e03
     5fa:	03e8                	.insn	2, 0x03e8
     5fc:	871a                	.insn	2, 0x871a
     5fe:	0000                	.insn	2, 0x
     600:	0300                	.insn	2, 0x0300
     602:	3071                	.insn	2, 0x3071
     604:	e900                	.insn	2, 0xe900
     606:	00870a03          	lb	s4,8(a4)
     60a:	0000                	.insn	2, 0x
     60c:	00317103          	.insn	4, 0x00317103
     610:	03e9                	.insn	2, 0x03e9
     612:	870e                	.insn	2, 0x870e
     614:	0000                	.insn	2, 0x
     616:	0300                	.insn	2, 0x0300
     618:	0062                	.insn	2, 0x0062
     61a:	03ea                	.insn	2, 0x03ea
     61c:	870a                	.insn	2, 0x870a
     61e:	0000                	.insn	2, 0x
     620:	0300                	.insn	2, 0x0300
     622:	6d62                	.insn	2, 0x6d62
     624:	ea00                	.insn	2, 0xea00
     626:	00870d03          	lb	s10,8(a4)
     62a:	0000                	.insn	2, 0x
     62c:	00777703          	.insn	4, 0x00777703
     630:	311104b3          	.insn	4, 0x311104b3
     634:	0001                	.insn	2, 0x0001
     636:	0600                	.insn	2, 0x0600
     638:	0655                	.insn	2, 0x0655
     63a:	0000                	.insn	2, 0x
     63c:	3202                	.insn	2, 0x3202
     63e:	0001                	.insn	2, 0x0001
     640:	1a00                	.insn	2, 0x1a00
     642:	0404                	.insn	2, 0x0404
     644:	00000087          	.insn	4, 0x0087
     648:	615f5f03          	lhu	t5,1557(t5)
     64c:	1a00                	.insn	2, 0x1a00
     64e:	0404                	.insn	2, 0x0404
     650:	00000087          	.insn	4, 0x0087
     654:	0600                	.insn	2, 0x0600
     656:	000006af          	.insn	4, 0x06af
     65a:	e602                	.insn	2, 0xe602
     65c:	0000                	.insn	2, 0x
     65e:	2600                	.insn	2, 0x2600
     660:	0404                	.insn	2, 0x0404
     662:	00000087          	.insn	4, 0x0087
     666:	3302                	.insn	2, 0x3302
     668:	0000                	.insn	2, 0x
     66a:	2600                	.insn	2, 0x2600
     66c:	0404                	.insn	2, 0x0404
     66e:	00000087          	.insn	4, 0x0087
     672:	e102                	.insn	2, 0xe102
     674:	0000                	.insn	2, 0x
     676:	2600                	.insn	2, 0x2600
     678:	0404                	.insn	2, 0x0404
     67a:	00000087          	.insn	4, 0x0087
     67e:	dc02                	.insn	2, 0xdc02
     680:	0000                	.insn	2, 0x
     682:	2600                	.insn	2, 0x2600
     684:	0404                	.insn	2, 0x0404
     686:	00000087          	.insn	4, 0x0087
     68a:	3c02                	.insn	2, 0x3c02
     68c:	0001                	.insn	2, 0x0001
     68e:	2600                	.insn	2, 0x2600
     690:	0404                	.insn	2, 0x0404
     692:	00000087          	.insn	4, 0x0087
     696:	3702                	.insn	2, 0x3702
     698:	0001                	.insn	2, 0x0001
     69a:	2600                	.insn	2, 0x2600
     69c:	0404                	.insn	2, 0x0404
     69e:	00000087          	.insn	4, 0x0087
     6a2:	6d5f5f03          	lhu	t5,1749(t5)
     6a6:	2600                	.insn	2, 0x2600
     6a8:	0404                	.insn	2, 0x0404
     6aa:	00000087          	.insn	4, 0x0087
     6ae:	0600                	.insn	2, 0x0600
     6b0:	06cd                	.insn	2, 0x06cd
     6b2:	0000                	.insn	2, 0x
     6b4:	3202                	.insn	2, 0x3202
     6b6:	0001                	.insn	2, 0x0001
     6b8:	3200                	.insn	2, 0x3200
     6ba:	0404                	.insn	2, 0x0404
     6bc:	00000087          	.insn	4, 0x0087
     6c0:	615f5f03          	lhu	t5,1557(t5)
     6c4:	3200                	.insn	2, 0x3200
     6c6:	0404                	.insn	2, 0x0404
     6c8:	00000087          	.insn	4, 0x0087
     6cc:	0600                	.insn	2, 0x0600
     6ce:	00000727          	.insn	4, 0x0727
     6d2:	e602                	.insn	2, 0xe602
     6d4:	0000                	.insn	2, 0x
     6d6:	4b00                	.insn	2, 0x4b00
     6d8:	0804                	.insn	2, 0x0804
     6da:	00000087          	.insn	4, 0x0087
     6de:	3302                	.insn	2, 0x3302
     6e0:	0000                	.insn	2, 0x
     6e2:	4b00                	.insn	2, 0x4b00
     6e4:	0804                	.insn	2, 0x0804
     6e6:	00000087          	.insn	4, 0x0087
     6ea:	e102                	.insn	2, 0xe102
     6ec:	0000                	.insn	2, 0x
     6ee:	4b00                	.insn	2, 0x4b00
     6f0:	0804                	.insn	2, 0x0804
     6f2:	00000087          	.insn	4, 0x0087
     6f6:	dc02                	.insn	2, 0xdc02
     6f8:	0000                	.insn	2, 0x
     6fa:	4b00                	.insn	2, 0x4b00
     6fc:	0804                	.insn	2, 0x0804
     6fe:	00000087          	.insn	4, 0x0087
     702:	3c02                	.insn	2, 0x3c02
     704:	0001                	.insn	2, 0x0001
     706:	4b00                	.insn	2, 0x4b00
     708:	0804                	.insn	2, 0x0804
     70a:	00000087          	.insn	4, 0x0087
     70e:	3702                	.insn	2, 0x3702
     710:	0001                	.insn	2, 0x0001
     712:	4b00                	.insn	2, 0x4b00
     714:	0804                	.insn	2, 0x0804
     716:	00000087          	.insn	4, 0x0087
     71a:	6d5f5f03          	lhu	t5,1749(t5)
     71e:	4b00                	.insn	2, 0x4b00
     720:	0804                	.insn	2, 0x0804
     722:	00000087          	.insn	4, 0x0087
     726:	0600                	.insn	2, 0x0600
     728:	0781                	.insn	2, 0x0781
     72a:	0000                	.insn	2, 0x
     72c:	e602                	.insn	2, 0xe602
     72e:	0000                	.insn	2, 0x
     730:	5000                	.insn	2, 0x5000
     732:	0404                	.insn	2, 0x0404
     734:	00000087          	.insn	4, 0x0087
     738:	3302                	.insn	2, 0x3302
     73a:	0000                	.insn	2, 0x
     73c:	5000                	.insn	2, 0x5000
     73e:	0404                	.insn	2, 0x0404
     740:	00000087          	.insn	4, 0x0087
     744:	e102                	.insn	2, 0xe102
     746:	0000                	.insn	2, 0x
     748:	5000                	.insn	2, 0x5000
     74a:	0404                	.insn	2, 0x0404
     74c:	00000087          	.insn	4, 0x0087
     750:	dc02                	.insn	2, 0xdc02
     752:	0000                	.insn	2, 0x
     754:	5000                	.insn	2, 0x5000
     756:	0404                	.insn	2, 0x0404
     758:	00000087          	.insn	4, 0x0087
     75c:	3c02                	.insn	2, 0x3c02
     75e:	0001                	.insn	2, 0x0001
     760:	5000                	.insn	2, 0x5000
     762:	0404                	.insn	2, 0x0404
     764:	00000087          	.insn	4, 0x0087
     768:	3702                	.insn	2, 0x3702
     76a:	0001                	.insn	2, 0x0001
     76c:	5000                	.insn	2, 0x5000
     76e:	0404                	.insn	2, 0x0404
     770:	00000087          	.insn	4, 0x0087
     774:	6d5f5f03          	lhu	t5,1749(t5)
     778:	5000                	.insn	2, 0x5000
     77a:	0404                	.insn	2, 0x0404
     77c:	00000087          	.insn	4, 0x0087
     780:	0600                	.insn	2, 0x0600
     782:	079f 0000 3202      	.insn	6, 0x32020000079f
     788:	0001                	.insn	2, 0x0001
     78a:	7300                	.insn	2, 0x7300
     78c:	0404                	.insn	2, 0x0404
     78e:	00000087          	.insn	4, 0x0087
     792:	615f5f03          	lhu	t5,1557(t5)
     796:	7300                	.insn	2, 0x7300
     798:	0404                	.insn	2, 0x0404
     79a:	00000087          	.insn	4, 0x0087
     79e:	0600                	.insn	2, 0x0600
     7a0:	07b1                	.insn	2, 0x07b1
     7a2:	0000                	.insn	2, 0x
     7a4:	785f5f03          	lhu	t5,1925(t5)
     7a8:	8100                	.insn	2, 0x8100
     7aa:	0504                	.insn	2, 0x0504
     7ac:	00000087          	.insn	4, 0x0087
     7b0:	1000                	.insn	2, 0x1000
     7b2:	00316d03          	.insn	4, 0x00316d03
     7b6:	0491                	.insn	2, 0x0491
     7b8:	0000870f          	.insn	4, 0x870f
     7bc:	0300                	.insn	2, 0x0300
     7be:	306d                	.insn	2, 0x306d
     7c0:	9100                	.insn	2, 0x9100
     7c2:	1304                	.insn	2, 0x1304
     7c4:	00000087          	.insn	4, 0x0087
     7c8:	2206                	.insn	2, 0x2206
     7ca:	0008                	.insn	2, 0x0008
     7cc:	0200                	.insn	2, 0x0200
     7ce:	00e6                	.insn	2, 0x00e6
     7d0:	0000                	.insn	2, 0x
     7d2:	049c                	.insn	2, 0x049c
     7d4:	8708                	.insn	2, 0x8708
     7d6:	0000                	.insn	2, 0x
     7d8:	0200                	.insn	2, 0x0200
     7da:	00000033          	add	zero,zero,zero
     7de:	049c                	.insn	2, 0x049c
     7e0:	8708                	.insn	2, 0x8708
     7e2:	0000                	.insn	2, 0x
     7e4:	0200                	.insn	2, 0x0200
     7e6:	00e1                	.insn	2, 0x00e1
     7e8:	0000                	.insn	2, 0x
     7ea:	049c                	.insn	2, 0x049c
     7ec:	8708                	.insn	2, 0x8708
     7ee:	0000                	.insn	2, 0x
     7f0:	0200                	.insn	2, 0x0200
     7f2:	00dc                	.insn	2, 0x00dc
     7f4:	0000                	.insn	2, 0x
     7f6:	049c                	.insn	2, 0x049c
     7f8:	8708                	.insn	2, 0x8708
     7fa:	0000                	.insn	2, 0x
     7fc:	0200                	.insn	2, 0x0200
     7fe:	013c                	.insn	2, 0x013c
     800:	0000                	.insn	2, 0x
     802:	049c                	.insn	2, 0x049c
     804:	8708                	.insn	2, 0x8708
     806:	0000                	.insn	2, 0x
     808:	0200                	.insn	2, 0x0200
     80a:	00000137          	lui	sp,0x0
     80e:	049c                	.insn	2, 0x049c
     810:	8708                	.insn	2, 0x8708
     812:	0000                	.insn	2, 0x
     814:	0300                	.insn	2, 0x0300
     816:	5f5f 006d 049c      	.insn	6, 0x049c006d5f5f
     81c:	8708                	.insn	2, 0x8708
     81e:	0000                	.insn	2, 0x
     820:	0000                	.insn	2, 0x
     822:	fc06                	.insn	2, 0xfc06
     824:	0008                	.insn	2, 0x0008
     826:	0200                	.insn	2, 0x0200
     828:	009c                	.insn	2, 0x009c
     82a:	0000                	.insn	2, 0x
     82c:	049d                	.insn	2, 0x049d
     82e:	8708                	.insn	2, 0x8708
     830:	0000                	.insn	2, 0x
     832:	0200                	.insn	2, 0x0200
     834:	00a1                	.insn	2, 0x00a1
     836:	0000                	.insn	2, 0x
     838:	049d                	.insn	2, 0x049d
     83a:	8708                	.insn	2, 0x8708
     83c:	0000                	.insn	2, 0x
     83e:	0200                	.insn	2, 0x0200
     840:	00a6                	.insn	2, 0x00a6
     842:	0000                	.insn	2, 0x
     844:	049d                	.insn	2, 0x049d
     846:	8708                	.insn	2, 0x8708
     848:	0000                	.insn	2, 0x
     84a:	0200                	.insn	2, 0x0200
     84c:	000000ab          	.insn	4, 0x00ab
     850:	049d                	.insn	2, 0x049d
     852:	8708                	.insn	2, 0x8708
     854:	0000                	.insn	2, 0x
     856:	0200                	.insn	2, 0x0200
     858:	0209                	.insn	2, 0x0209
     85a:	0000                	.insn	2, 0x
     85c:	049d                	.insn	2, 0x049d
     85e:	8708                	.insn	2, 0x8708
     860:	0000                	.insn	2, 0x
     862:	0200                	.insn	2, 0x0200
     864:	0104                	.insn	2, 0x0104
     866:	0000                	.insn	2, 0x
     868:	049d                	.insn	2, 0x049d
     86a:	8708                	.insn	2, 0x8708
     86c:	0000                	.insn	2, 0x
     86e:	0200                	.insn	2, 0x0200
     870:	0204                	.insn	2, 0x0204
     872:	0000                	.insn	2, 0x
     874:	049d                	.insn	2, 0x049d
     876:	8708                	.insn	2, 0x8708
     878:	0000                	.insn	2, 0x
     87a:	0200                	.insn	2, 0x0200
     87c:	0038                	.insn	2, 0x0038
     87e:	0000                	.insn	2, 0x
     880:	049d                	.insn	2, 0x049d
     882:	8708                	.insn	2, 0x8708
     884:	0000                	.insn	2, 0x
     886:	0600                	.insn	2, 0x0600
     888:	08a5                	.insn	2, 0x08a5
     88a:	0000                	.insn	2, 0x
     88c:	3d02                	.insn	2, 0x3d02
     88e:	0000                	.insn	2, 0x
     890:	9d00                	.insn	2, 0x9d00
     892:	0804                	.insn	2, 0x0804
     894:	00000087          	.insn	4, 0x0087
     898:	4302                	.insn	2, 0x4302
     89a:	0000                	.insn	2, 0x
     89c:	9d00                	.insn	2, 0x9d00
     89e:	0804                	.insn	2, 0x0804
     8a0:	00000087          	.insn	4, 0x0087
     8a4:	0600                	.insn	2, 0x0600
     8a6:	000008c3          	.insn	4, 0x08c3
     8aa:	3d02                	.insn	2, 0x3d02
     8ac:	0000                	.insn	2, 0x
     8ae:	9d00                	.insn	2, 0x9d00
     8b0:	0804                	.insn	2, 0x0804
     8b2:	00000087          	.insn	4, 0x0087
     8b6:	4302                	.insn	2, 0x4302
     8b8:	0000                	.insn	2, 0x
     8ba:	9d00                	.insn	2, 0x9d00
     8bc:	0804                	.insn	2, 0x0804
     8be:	00000087          	.insn	4, 0x0087
     8c2:	0600                	.insn	2, 0x0600
     8c4:	08e1                	.insn	2, 0x08e1
     8c6:	0000                	.insn	2, 0x
     8c8:	3d02                	.insn	2, 0x3d02
     8ca:	0000                	.insn	2, 0x
     8cc:	9d00                	.insn	2, 0x9d00
     8ce:	0804                	.insn	2, 0x0804
     8d0:	00000087          	.insn	4, 0x0087
     8d4:	4302                	.insn	2, 0x4302
     8d6:	0000                	.insn	2, 0x
     8d8:	9d00                	.insn	2, 0x9d00
     8da:	0804                	.insn	2, 0x0804
     8dc:	00000087          	.insn	4, 0x0087
     8e0:	1000                	.insn	2, 0x1000
     8e2:	3d02                	.insn	2, 0x3d02
     8e4:	0000                	.insn	2, 0x
     8e6:	9d00                	.insn	2, 0x9d00
     8e8:	0804                	.insn	2, 0x0804
     8ea:	00000087          	.insn	4, 0x0087
     8ee:	4302                	.insn	2, 0x4302
     8f0:	0000                	.insn	2, 0x
     8f2:	9d00                	.insn	2, 0x9d00
     8f4:	0804                	.insn	2, 0x0804
     8f6:	00000087          	.insn	4, 0x0087
     8fa:	0000                	.insn	2, 0x
     8fc:	0e06                	.insn	2, 0x0e06
     8fe:	0009                	.insn	2, 0x0009
     900:	0300                	.insn	2, 0x0300
     902:	5f5f 0078 04a2      	.insn	6, 0x04a200785f5f
     908:	8705                	.insn	2, 0x8705
     90a:	0000                	.insn	2, 0x
     90c:	0000                	.insn	2, 0x
     90e:	0310                	.insn	2, 0x0310
     910:	5f5f 0078 04aa      	.insn	6, 0x04aa00785f5f
     916:	8705                	.insn	2, 0x8705
     918:	0000                	.insn	2, 0x
     91a:	0000                	.insn	2, 0x
     91c:	0000                	.insn	2, 0x
     91e:	0422                	.insn	2, 0x0422
     920:	009d                	.insn	2, 0x009d
     922:	0000                	.insn	2, 0x
     924:	de11                	.insn	2, 0xde11
     926:	0005                	.insn	2, 0x0005
     928:	de00                	.insn	2, 0xde00
     92a:	0005                	.insn	2, 0x0005
     92c:	1100                	.insn	2, 0x1100
     92e:	0020                	.insn	2, 0x0020
     930:	0000                	.insn	2, 0x
     932:	0020                	.insn	2, 0x0020
     934:	0000                	.insn	2, 0x
     936:	eb11                	.insn	2, 0xeb11
     938:	0000                	.insn	2, 0x
     93a:	eb00                	.insn	2, 0xeb00
     93c:	0000                	.insn	2, 0x
     93e:	0000                	.insn	2, 0x
     940:	094c                	.insn	2, 0x094c
     942:	0000                	.insn	2, 0x
     944:	0005                	.insn	2, 0x0005
     946:	0401                	.insn	2, 0x0401
     948:	01c5                	.insn	2, 0x01c5
     94a:	0000                	.insn	2, 0x
     94c:	4114                	.insn	2, 0x4114
     94e:	0001                	.insn	2, 0x0001
     950:	1d00                	.insn	2, 0x1d00
     952:	006e                	.insn	2, 0x006e
     954:	0000                	.insn	2, 0x
     956:	0000                	.insn	2, 0x
     958:	0000                	.insn	2, 0x
     95a:	3124                	.insn	2, 0x3124
     95c:	8000                	.insn	2, 0x8000
     95e:	0528                	.insn	2, 0x0528
     960:	0000                	.insn	2, 0x
     962:	0955                	.insn	2, 0x0955
     964:	0000                	.insn	2, 0x
     966:	0405                	.insn	2, 0x0405
     968:	00006107          	.insn	4, 0x6107
     96c:	0500                	.insn	2, 0x0500
     96e:	0708                	.insn	2, 0x0708
     970:	00000057          	.insn	4, 0x0057
     974:	0415                	.insn	2, 0x0415
     976:	6905                	.insn	2, 0x6905
     978:	746e                	.insn	2, 0x746e
     97a:	0500                	.insn	2, 0x0500
     97c:	0508                	.insn	2, 0x0508
     97e:	0049                	.insn	2, 0x0049
     980:	0000                	.insn	2, 0x
     982:	1005                	.insn	2, 0x1005
     984:	1e04                	.insn	2, 0x1e04
     986:	0001                	.insn	2, 0x0001
     988:	0500                	.insn	2, 0x0500
     98a:	0801                	.insn	2, 0x0801
     98c:	008e                	.insn	2, 0x008e
     98e:	0000                	.insn	2, 0x
     990:	0105                	.insn	2, 0x0105
     992:	9708                	.insn	2, 0x9708
     994:	0000                	.insn	2, 0x
     996:	0500                	.insn	2, 0x0500
     998:	0601                	.insn	2, 0x0601
     99a:	0090                	.insn	2, 0x0090
     99c:	0000                	.insn	2, 0x
     99e:	0000b00b          	.insn	4, 0xb00b
     9a2:	7b00                	.insn	2, 0x7b00
     9a4:	4916                	.insn	2, 0x4916
     9a6:	0000                	.insn	2, 0x
     9a8:	0c00                	.insn	2, 0x0c00
     9aa:	005e                	.insn	2, 0x005e
     9ac:	0000                	.insn	2, 0x
     9ae:	0205                	.insn	2, 0x0205
     9b0:	2905                	.insn	2, 0x2905
     9b2:	0000                	.insn	2, 0x
     9b4:	0500                	.insn	2, 0x0500
     9b6:	0702                	.insn	2, 0x0702
     9b8:	00c1                	.insn	2, 0x00c1
     9ba:	0000                	.insn	2, 0x
     9bc:	00012b0b          	.insn	4, 0x00012b0b
     9c0:	8000                	.insn	2, 0x8000
     9c2:	0000340f          	.insn	4, 0x340f
     9c6:	0b00                	.insn	2, 0x0b00
     9c8:	012a                	.insn	2, 0x012a
     9ca:	0000                	.insn	2, 0x
     9cc:	1681                	.insn	2, 0x1681
     9ce:	0026                	.insn	2, 0x0026
     9d0:	0000                	.insn	2, 0x
     9d2:	0000d50b          	.insn	4, 0xd50b
     9d6:	8400                	.insn	2, 0x8400
     9d8:	00003b0f          	.insn	4, 0x3b0f
     9dc:	0b00                	.insn	2, 0x0b00
     9de:	00d4                	.insn	2, 0x00d4
     9e0:	0000                	.insn	2, 0x
     9e2:	1685                	.insn	2, 0x1685
     9e4:	002d                	.insn	2, 0x002d
     9e6:	0000                	.insn	2, 0x
     9e8:	0205                	.insn	2, 0x0205
     9ea:	8504                	.insn	2, 0x8504
     9ec:	0000                	.insn	2, 0x
     9ee:	0500                	.insn	2, 0x0500
     9f0:	0304                	.insn	2, 0x0304
     9f2:	007d                	.insn	2, 0x007d
     9f4:	0000                	.insn	2, 0x
     9f6:	0405                	.insn	2, 0x0405
     9f8:	1a04                	.insn	2, 0x1a04
     9fa:	0000                	.insn	2, 0x
     9fc:	0500                	.insn	2, 0x0500
     9fe:	0308                	.insn	2, 0x0308
     a00:	0012                	.insn	2, 0x0012
     a02:	0000                	.insn	2, 0x
     a04:	0805                	.insn	2, 0x0805
     a06:	2304                	.insn	2, 0x2304
     a08:	0001                	.insn	2, 0x0001
     a0a:	0500                	.insn	2, 0x0500
     a0c:	0310                	.insn	2, 0x0310
     a0e:	00f5                	.insn	2, 0x00f5
     a10:	0000                	.insn	2, 0x
     a12:	2005                	.insn	2, 0x2005
     a14:	00011603          	lh	a2,0(sp) # 0 <TRANSMISSION_TIME-0x1>
     a18:	1600                	.insn	2, 0x1600
     a1a:	00b8                	.insn	2, 0x00b8
     a1c:	0000                	.insn	2, 0x
     a1e:	0208                	.insn	2, 0x0208
     a20:	01f1                	.insn	2, 0x01f1
     a22:	040a                	.insn	2, 0x040a
     a24:	0001                	.insn	2, 0x0001
     a26:	1700                	.insn	2, 0x1700
     a28:	6f6c                	.insn	2, 0x6f6c
     a2a:	f1020077          	.insn	4, 0xf1020077
     a2e:	1a01                	.insn	2, 0x1a01
     a30:	007c                	.insn	2, 0x007c
     a32:	0000                	.insn	2, 0x
     a34:	1800                	.insn	2, 0x1800
     a36:	006e                	.insn	2, 0x006e
     a38:	0000                	.insn	2, 0x
     a3a:	f102                	.insn	2, 0xf102
     a3c:	1f01                	.insn	2, 0x1f01
     a3e:	007c                	.insn	2, 0x007c
     a40:	0000                	.insn	2, 0x
     a42:	0004                	.insn	2, 0x0004
     a44:	0819                	.insn	2, 0x0819
     a46:	f802                	.insn	2, 0xf802
     a48:	0901                	.insn	2, 0x0901
     a4a:	0124                	.insn	2, 0x0124
     a4c:	0000                	.insn	2, 0x
     a4e:	7311                	.insn	2, 0x7311
     a50:	fa00                	.insn	2, 0xfa00
     a52:	1301                	.insn	2, 0x1301
     a54:	00d9                	.insn	2, 0x00d9
     a56:	0000                	.insn	2, 0x
     a58:	6c11                	.insn	2, 0x6c11
     a5a:	006c                	.insn	2, 0x006c
     a5c:	920a01fb          	.insn	4, 0x920a01fb
     a60:	0000                	.insn	2, 0x
     a62:	0000                	.insn	2, 0x
     a64:	001a                	.insn	2, 0x001a
     a66:	0000                	.insn	2, 0x
     a68:	0200                	.insn	2, 0x0200
     a6a:	01fc                	.insn	2, 0x01fc
     a6c:	00010403          	lb	s0,0(sp)
     a70:	0c00                	.insn	2, 0x0c00
     a72:	0124                	.insn	2, 0x0124
     a74:	0000                	.insn	2, 0x
     a76:	0000691b          	.insn	4, 0x691b
     a7a:	4600                	.insn	2, 0x4600
     a7c:	0001                	.insn	2, 0x0001
     a7e:	1c00                	.insn	2, 0x1c00
     a80:	0026                	.insn	2, 0x0026
     a82:	0000                	.insn	2, 0x
     a84:	00ff 360c 0001 1d00 	.insn	10, 0x00731d000001360c00ff
     a8c:	0073 
     a8e:	0000                	.insn	2, 0x
     a90:	0602                	.insn	2, 0x0602
     a92:	1602                	.insn	2, 0x1602
     a94:	0146                	.insn	2, 0x0146
     a96:	0000                	.insn	2, 0x
     a98:	0e1e                	.insn	2, 0x0e1e
     a9a:	0002                	.insn	2, 0x0002
     a9c:	0100                	.insn	2, 0x0100
     a9e:	0506                	.insn	2, 0x0506
     aa0:	9d01                	.insn	2, 0x9d01
     aa2:	0000                	.insn	2, 0x
     aa4:	2400                	.insn	2, 0x2400
     aa6:	0031                	.insn	2, 0x0031
     aa8:	2880                	.insn	2, 0x2880
     aaa:	0005                	.insn	2, 0x0005
     aac:	0100                	.insn	2, 0x0100
     aae:	8e9c                	.insn	2, 0x8e9c
     ab0:	0005                	.insn	2, 0x0005
     ab2:	1200                	.insn	2, 0x1200
     ab4:	0075                	.insn	2, 0x0075
     ab6:	9d14                	.insn	2, 0x9d14
     ab8:	0000                	.insn	2, 0x
     aba:	8200                	.insn	2, 0x8200
     abc:	12000007          	.insn	4, 0x12000007
     ac0:	0076                	.insn	2, 0x0076
     ac2:	9d1f 0000 e200      	.insn	6, 0xe20000009d1f
     ac8:	1f000007          	.insn	4, 0x1f000007
     acc:	08010077          	.insn	4, 0x08010077
     ad0:	0b05                	.insn	2, 0x0b05
     ad2:	009d                	.insn	2, 0x009d
     ad4:	0000                	.insn	2, 0x
     ad6:	082a                	.insn	2, 0x082a
     ad8:	0000                	.insn	2, 0x
     ada:	8e20                	.insn	2, 0x8e20
     adc:	0005                	.insn	2, 0x0005
     ade:	2400                	.insn	2, 0x2400
     ae0:	0031                	.insn	2, 0x0031
     ae2:	b380                	.insn	2, 0xb380
     ae4:	0000                	.insn	2, 0x
     ae6:	0100                	.insn	2, 0x0100
     ae8:	050a                	.insn	2, 0x050a
     aea:	0d0a                	.insn	2, 0x0d0a
     aec:	05b0                	.insn	2, 0x05b0
     aee:	0000                	.insn	2, 0x
     af0:	00000837          	lui	a6,0x0
     af4:	a80d                	.insn	2, 0xa80d
     af6:	0005                	.insn	2, 0x0005
     af8:	4f00                	.insn	2, 0x4f00
     afa:	0008                	.insn	2, 0x0008
     afc:	0d00                	.insn	2, 0x0d00
     afe:	05a0                	.insn	2, 0x05a0
     b00:	0000                	.insn	2, 0x
     b02:	0872                	.insn	2, 0x0872
     b04:	0000                	.insn	2, 0x
     b06:	b321                	.insn	2, 0xb321
     b08:	0000                	.insn	2, 0x
     b0a:	0800                	.insn	2, 0x0800
     b0c:	05b9                	.insn	2, 0x05b9
     b0e:	0000                	.insn	2, 0x
     b10:	c408                	.insn	2, 0xc408
     b12:	0005                	.insn	2, 0x0005
     b14:	0800                	.insn	2, 0x0800
     b16:	000005cf          	.insn	4, 0x05cf
     b1a:	da01                	.insn	2, 0xda01
     b1c:	0005                	.insn	2, 0x0005
     b1e:	d200                	.insn	2, 0xd200
     b20:	0008                	.insn	2, 0x0008
     b22:	0100                	.insn	2, 0x0100
     b24:	05e5                	.insn	2, 0x05e5
     b26:	0000                	.insn	2, 0x
     b28:	08fc                	.insn	2, 0x08fc
     b2a:	0000                	.insn	2, 0x
     b2c:	f001                	.insn	2, 0xf001
     b2e:	0005                	.insn	2, 0x0005
     b30:	1700                	.insn	2, 0x1700
     b32:	0009                	.insn	2, 0x0009
     b34:	0100                	.insn	2, 0x0100
     b36:	000005fb          	.insn	4, 0x05fb
     b3a:	0956                	.insn	2, 0x0956
     b3c:	0000                	.insn	2, 0x
     b3e:	0601                	.insn	2, 0x0601
     b40:	0006                	.insn	2, 0x0006
     b42:	b200                	.insn	2, 0xb200
     b44:	0009                	.insn	2, 0x0009
     b46:	0100                	.insn	2, 0x0100
     b48:	0611                	.insn	2, 0x0611
     b4a:	0000                	.insn	2, 0x
     b4c:	09c8                	.insn	2, 0x09c8
     b4e:	0000                	.insn	2, 0x
     b50:	1c01                	.insn	2, 0x1c01
     b52:	0006                	.insn	2, 0x0006
     b54:	d100                	.insn	2, 0xd100
     b56:	0009                	.insn	2, 0x0009
     b58:	0100                	.insn	2, 0x0100
     b5a:	00000627          	.insn	4, 0x0627
     b5e:	09e2                	.insn	2, 0x09e2
     b60:	0000                	.insn	2, 0x
     b62:	3101                	.insn	2, 0x3101
     b64:	0006                	.insn	2, 0x0006
     b66:	f100                	.insn	2, 0xf100
     b68:	0009                	.insn	2, 0x0009
     b6a:	0800                	.insn	2, 0x0800
     b6c:	063c                	.insn	2, 0x063c
     b6e:	0000                	.insn	2, 0x
     b70:	470a                	.insn	2, 0x470a
     b72:	0006                	.insn	2, 0x0006
     b74:	c000                	.insn	2, 0xc000
     b76:	0000                	.insn	2, 0x
     b78:	5000                	.insn	2, 0x5000
     b7a:	0002                	.insn	2, 0x0002
     b7c:	0100                	.insn	2, 0x0100
     b7e:	064c                	.insn	2, 0x064c
     b80:	0000                	.insn	2, 0x
     b82:	0a0d                	.insn	2, 0x0a0d
     b84:	0000                	.insn	2, 0x
     b86:	5801                	.insn	2, 0x5801
     b88:	0006                	.insn	2, 0x0006
     b8a:	1b00                	.insn	2, 0x1b00
     b8c:	000a                	.insn	2, 0x000a
     b8e:	0000                	.insn	2, 0x
     b90:	6509                	.insn	2, 0x6509
     b92:	0006                	.insn	2, 0x0006
     b94:	b800                	.insn	2, 0xb800
     b96:	0031                	.insn	2, 0x0031
     b98:	0080                	.insn	2, 0x0080
     b9a:	0000                	.insn	2, 0x
     b9c:	8900                	.insn	2, 0x8900
     b9e:	0002                	.insn	2, 0x0002
     ba0:	0600                	.insn	2, 0x0600
     ba2:	066a                	.insn	2, 0x066a
     ba4:	0000                	.insn	2, 0x
     ba6:	6501                	.insn	2, 0x6501
     ba8:	7606                	.insn	2, 0x7606
     baa:	0006                	.insn	2, 0x0006
     bac:	0100                	.insn	2, 0x0100
     bae:	0866                	.insn	2, 0x0866
     bb0:	0682                	.insn	2, 0x0682
     bb2:	0000                	.insn	2, 0x
     bb4:	8e08                	.insn	2, 0x8e08
     bb6:	0006                	.insn	2, 0x0006
     bb8:	0800                	.insn	2, 0x0800
     bba:	069a                	.insn	2, 0x069a
     bbc:	0000                	.insn	2, 0x
     bbe:	a608                	.insn	2, 0xa608
     bc0:	0006                	.insn	2, 0x0006
     bc2:	0800                	.insn	2, 0x0800
     bc4:	06b2                	.insn	2, 0x06b2
     bc6:	0000                	.insn	2, 0x
     bc8:	0900                	.insn	2, 0x0900
     bca:	00000737          	lui	a4,0x0
     bce:	31b8                	.insn	2, 0x31b8
     bd0:	8000                	.insn	2, 0x8000
     bd2:	00b8                	.insn	2, 0x00b8
     bd4:	0000                	.insn	2, 0x
     bd6:	0310                	.insn	2, 0x0310
     bd8:	0000                	.insn	2, 0x
     bda:	3c01                	.insn	2, 0x3c01
     bdc:	21000007          	.insn	4, 0x21000007
     be0:	000a                	.insn	2, 0x000a
     be2:	0100                	.insn	2, 0x0100
     be4:	0748                	.insn	2, 0x0748
     be6:	0000                	.insn	2, 0x
     be8:	0a29                	.insn	2, 0x0a29
     bea:	0000                	.insn	2, 0x
     bec:	5401                	.insn	2, 0x5401
     bee:	31000007          	.insn	4, 0x31000007
     bf2:	000a                	.insn	2, 0x000a
     bf4:	0100                	.insn	2, 0x0100
     bf6:	0760                	.insn	2, 0x0760
     bf8:	0000                	.insn	2, 0x
     bfa:	0a6c                	.insn	2, 0x0a6c
     bfc:	0000                	.insn	2, 0x
     bfe:	6c01                	.insn	2, 0x6c01
     c00:	a7000007          	.insn	4, 0xa7000007
     c04:	000a                	.insn	2, 0x000a
     c06:	0100                	.insn	2, 0x0100
     c08:	0778                	.insn	2, 0x0778
     c0a:	0000                	.insn	2, 0x
     c0c:	0ac2                	.insn	2, 0x0ac2
     c0e:	0000                	.insn	2, 0x
     c10:	8401                	.insn	2, 0x8401
     c12:	d6000007          	.insn	4, 0xd6000007
     c16:	000a                	.insn	2, 0x000a
     c18:	0400                	.insn	2, 0x0400
     c1a:	31d0                	.insn	2, 0x31d0
     c1c:	8000                	.insn	2, 0x8000
     c1e:	0934                	.insn	2, 0x0934
     c20:	0000                	.insn	2, 0x
     c22:	e004                	.insn	2, 0xe004
     c24:	0031                	.insn	2, 0x0031
     c26:	3d80                	.insn	2, 0x3d80
     c28:	0009                	.insn	2, 0x0009
     c2a:	0400                	.insn	2, 0x0400
     c2c:	31f4                	.insn	2, 0x31f4
     c2e:	8000                	.insn	2, 0x8000
     c30:	0946                	.insn	2, 0x0946
     c32:	0000                	.insn	2, 0x
     c34:	2804                	.insn	2, 0x2804
     c36:	0032                	.insn	2, 0x0032
     c38:	3480                	.insn	2, 0x3480
     c3a:	0009                	.insn	2, 0x0009
     c3c:	0400                	.insn	2, 0x0400
     c3e:	3234                	.insn	2, 0x3234
     c40:	8000                	.insn	2, 0x8000
     c42:	093d                	.insn	2, 0x093d
     c44:	0000                	.insn	2, 0x
     c46:	4804                	.insn	2, 0x4804
     c48:	0032                	.insn	2, 0x0032
     c4a:	4680                	.insn	2, 0x4680
     c4c:	0009                	.insn	2, 0x0009
     c4e:	0000                	.insn	2, 0x
     c50:	bf0a                	.insn	2, 0xbf0a
     c52:	0006                	.insn	2, 0x0006
     c54:	c900                	.insn	2, 0xc900
     c56:	0000                	.insn	2, 0x
     c58:	3000                	.insn	2, 0x3000
     c5a:	01000003          	lb	zero,16(zero) # 10 <SENSING_TIME+0xb>
     c5e:	06c4                	.insn	2, 0x06c4
     c60:	0000                	.insn	2, 0x
     c62:	00000af3          	.insn	4, 0x0af3
     c66:	d001                	.insn	2, 0xd001
     c68:	0006                	.insn	2, 0x0006
     c6a:	0200                	.insn	2, 0x0200
     c6c:	0000000b          	.insn	4, 0x000b
     c70:	dd0a                	.insn	2, 0xdd0a
     c72:	0006                	.insn	2, 0x0006
     c74:	de00                	.insn	2, 0xde00
     c76:	0000                	.insn	2, 0x
     c78:	b300                	.insn	2, 0xb300
     c7a:	01000003          	lb	zero,16(zero) # 10 <SENSING_TIME+0xb>
     c7e:	06e2                	.insn	2, 0x06e2
     c80:	0000                	.insn	2, 0x
     c82:	0b0a                	.insn	2, 0x0b0a
     c84:	0000                	.insn	2, 0x
     c86:	ee01                	.insn	2, 0xee01
     c88:	0006                	.insn	2, 0x0006
     c8a:	1200                	.insn	2, 0x1200
     c8c:	0100000b          	.insn	4, 0x0100000b
     c90:	06fa                	.insn	2, 0x06fa
     c92:	0000                	.insn	2, 0x
     c94:	00000b27          	.insn	4, 0x0b27
     c98:	0601                	.insn	2, 0x0601
     c9a:	62000007          	.insn	4, 0x62000007
     c9e:	0100000b          	.insn	4, 0x0100000b
     ca2:	0712                	.insn	2, 0x0712
     ca4:	0000                	.insn	2, 0x
     ca6:	0b9d                	.insn	2, 0x0b9d
     ca8:	0000                	.insn	2, 0x
     caa:	1e01                	.insn	2, 0x1e01
     cac:	b8000007          	.insn	4, 0xb8000007
     cb0:	0100000b          	.insn	4, 0x0100000b
     cb4:	072a                	.insn	2, 0x072a
     cb6:	0000                	.insn	2, 0x
     cb8:	00000bd3          	.insn	4, 0x0bd3
     cbc:	3004                	.insn	2, 0x3004
     cbe:	34800033          	.insn	4, 0x34800033
     cc2:	0009                	.insn	2, 0x0009
     cc4:	0400                	.insn	2, 0x0400
     cc6:	3340                	.insn	2, 0x3340
     cc8:	8000                	.insn	2, 0x8000
     cca:	093d                	.insn	2, 0x093d
     ccc:	0000                	.insn	2, 0x
     cce:	5404                	.insn	2, 0x5404
     cd0:	46800033          	.insn	4, 0x46800033
     cd4:	0009                	.insn	2, 0x0009
     cd6:	0400                	.insn	2, 0x0400
     cd8:	3388                	.insn	2, 0x3388
     cda:	8000                	.insn	2, 0x8000
     cdc:	0934                	.insn	2, 0x0934
     cde:	0000                	.insn	2, 0x
     ce0:	9404                	.insn	2, 0x9404
     ce2:	3d800033          	.insn	4, 0x3d800033
     ce6:	0009                	.insn	2, 0x0009
     ce8:	0400                	.insn	2, 0x0400
     cea:	33a8                	.insn	2, 0x33a8
     cec:	8000                	.insn	2, 0x8000
     cee:	0946                	.insn	2, 0x0946
     cf0:	0000                	.insn	2, 0x
     cf2:	0a00                	.insn	2, 0x0a00
     cf4:	0791                	.insn	2, 0x0791
     cf6:	0000                	.insn	2, 0x
     cf8:	00e9                	.insn	2, 0x00e9
     cfa:	0000                	.insn	2, 0x
     cfc:	000003d3          	.insn	4, 0x03d3
     d00:	9601                	.insn	2, 0x9601
     d02:	e9000007          	.insn	4, 0xe9000007
     d06:	0100000b          	.insn	4, 0x0100000b
     d0a:	07a2                	.insn	2, 0x07a2
     d0c:	0000                	.insn	2, 0x
     d0e:	0bf8                	.insn	2, 0x0bf8
     d10:	0000                	.insn	2, 0x
     d12:	0900                	.insn	2, 0x0900
     d14:	000007af          	.insn	4, 0x07af
     d18:	342c                	.insn	2, 0x342c
     d1a:	8000                	.insn	2, 0x8000
     d1c:	0014                	.insn	2, 0x0014
     d1e:	0000                	.insn	2, 0x
     d20:	03ee                	.insn	2, 0x03ee
     d22:	0000                	.insn	2, 0x
     d24:	b401                	.insn	2, 0xb401
     d26:	00000007          	.insn	4, 0x0007
     d2a:	000c                	.insn	2, 0x000c
     d2c:	0000                	.insn	2, 0x
     d2e:	0007c113          	xori	sp,a5,0
     d32:	6000                	.insn	2, 0x6000
     d34:	0034                	.insn	2, 0x0034
     d36:	ec80                	.insn	2, 0xec80
     d38:	0001                	.insn	2, 0x0001
     d3a:	0600                	.insn	2, 0x0600
     d3c:	07c2                	.insn	2, 0x07c2
     d3e:	0000                	.insn	2, 0x
     d40:	5e01                	.insn	2, 0x5e01
     d42:	cd01                	.insn	2, 0xcd01
     d44:	08000007          	.insn	4, 0x08000007
     d48:	000c                	.insn	2, 0x000c
     d4a:	0a00                	.insn	2, 0x0a00
     d4c:	07d8                	.insn	2, 0x07d8
     d4e:	0000                	.insn	2, 0x
     d50:	00f4                	.insn	2, 0x00f4
     d52:	0000                	.insn	2, 0x
     d54:	048e                	.insn	2, 0x048e
     d56:	0000                	.insn	2, 0x
     d58:	dd01                	.insn	2, 0xdd01
     d5a:	17000007          	.insn	4, 0x17000007
     d5e:	000c                	.insn	2, 0x000c
     d60:	0100                	.insn	2, 0x0100
     d62:	07e9                	.insn	2, 0x07e9
     d64:	0000                	.insn	2, 0x
     d66:	0c2a                	.insn	2, 0x0c2a
     d68:	0000                	.insn	2, 0x
     d6a:	f501                	.insn	2, 0xf501
     d6c:	3f000007          	.insn	4, 0x3f000007
     d70:	000c                	.insn	2, 0x000c
     d72:	0100                	.insn	2, 0x0100
     d74:	0801                	.insn	2, 0x0801
     d76:	0000                	.insn	2, 0x
     d78:	0c5c                	.insn	2, 0x0c5c
     d7a:	0000                	.insn	2, 0x
     d7c:	0d01                	.insn	2, 0x0d01
     d7e:	0008                	.insn	2, 0x0008
     d80:	7900                	.insn	2, 0x7900
     d82:	000c                	.insn	2, 0x000c
     d84:	0100                	.insn	2, 0x0100
     d86:	0819                	.insn	2, 0x0819
     d88:	0000                	.insn	2, 0x
     d8a:	0cb5                	.insn	2, 0x0cb5
     d8c:	0000                	.insn	2, 0x
     d8e:	2501                	.insn	2, 0x2501
     d90:	0008                	.insn	2, 0x0008
     d92:	e700                	.insn	2, 0xe700
     d94:	000c                	.insn	2, 0x000c
     d96:	0400                	.insn	2, 0x0400
     d98:	34a0                	.insn	2, 0x34a0
     d9a:	8000                	.insn	2, 0x8000
     d9c:	0934                	.insn	2, 0x0934
     d9e:	0000                	.insn	2, 0x
     da0:	b404                	.insn	2, 0xb404
     da2:	0034                	.insn	2, 0x0034
     da4:	3d80                	.insn	2, 0x3d80
     da6:	0009                	.insn	2, 0x0009
     da8:	0400                	.insn	2, 0x0400
     daa:	34c8                	.insn	2, 0x34c8
     dac:	8000                	.insn	2, 0x8000
     dae:	0946                	.insn	2, 0x0946
     db0:	0000                	.insn	2, 0x
     db2:	0804                	.insn	2, 0x0804
     db4:	0035                	.insn	2, 0x0035
     db6:	3480                	.insn	2, 0x3480
     db8:	0009                	.insn	2, 0x0009
     dba:	0400                	.insn	2, 0x0400
     dbc:	351c                	.insn	2, 0x351c
     dbe:	8000                	.insn	2, 0x8000
     dc0:	093d                	.insn	2, 0x093d
     dc2:	0000                	.insn	2, 0x
     dc4:	3004                	.insn	2, 0x3004
     dc6:	0035                	.insn	2, 0x0035
     dc8:	4680                	.insn	2, 0x4680
     dca:	0009                	.insn	2, 0x0009
     dcc:	0000                	.insn	2, 0x
     dce:	320a                	.insn	2, 0x320a
     dd0:	0008                	.insn	2, 0x0008
     dd2:	0e00                	.insn	2, 0x0e00
     dd4:	0001                	.insn	2, 0x0001
     dd6:	5800                	.insn	2, 0x5800
     dd8:	0005                	.insn	2, 0x0005
     dda:	0100                	.insn	2, 0x0100
     ddc:	00000837          	lui	a6,0x0
     de0:	0d04                	.insn	2, 0x0d04
     de2:	0000                	.insn	2, 0x
     de4:	4301                	.insn	2, 0x4301
     de6:	0008                	.insn	2, 0x0008
     de8:	1300                	.insn	2, 0x1300
     dea:	000d                	.insn	2, 0x000d
     dec:	0100                	.insn	2, 0x0100
     dee:	0000084f          	.insn	4, 0x084f
     df2:	0d29                	.insn	2, 0x0d29
     df4:	0000                	.insn	2, 0x
     df6:	5b01                	.insn	2, 0x5b01
     df8:	0008                	.insn	2, 0x0008
     dfa:	3800                	.insn	2, 0x3800
     dfc:	000d                	.insn	2, 0x000d
     dfe:	0100                	.insn	2, 0x0100
     e00:	00000867          	jalr	a6,zero # 0 <TRANSMISSION_TIME-0x1>
     e04:	00000d47          	.insn	4, 0x0d47
     e08:	7301                	.insn	2, 0x7301
     e0a:	0008                	.insn	2, 0x0008
     e0c:	4f00                	.insn	2, 0x4f00
     e0e:	000d                	.insn	2, 0x000d
     e10:	0600                	.insn	2, 0x0600
     e12:	087f 0000 6301 8b06 	.insn	10, 0x00088b0663010000087f
     e1a:	0008 
     e1c:	0100                	.insn	2, 0x0100
     e1e:	0956                	.insn	2, 0x0956
     e20:	00000897          	auipc	a7,0x0
     e24:	3584                	.insn	2, 0x3584
     e26:	8000                	.insn	2, 0x8000
     e28:	0014                	.insn	2, 0x0014
     e2a:	0000                	.insn	2, 0x
     e2c:	04ff 0000 9c06 0008 	.insn	10, 0x010000089c06000004ff
     e34:	0100 
     e36:	065a                	.insn	2, 0x065a
     e38:	08a8                	.insn	2, 0x08a8
     e3a:	0000                	.insn	2, 0x
     e3c:	5b01                	.insn	2, 0x5b01
     e3e:	0900                	.insn	2, 0x0900
     e40:	08b5                	.insn	2, 0x08b5
     e42:	0000                	.insn	2, 0x
     e44:	3598                	.insn	2, 0x3598
     e46:	8000                	.insn	2, 0x8000
     e48:	0014                	.insn	2, 0x0014
     e4a:	0000                	.insn	2, 0x
     e4c:	051f 0000 ba06      	.insn	6, 0xba060000051f
     e52:	0008                	.insn	2, 0x0008
     e54:	0100                	.insn	2, 0x0100
     e56:	065a                	.insn	2, 0x065a
     e58:	08c6                	.insn	2, 0x08c6
     e5a:	0000                	.insn	2, 0x
     e5c:	5b01                	.insn	2, 0x5b01
     e5e:	0900                	.insn	2, 0x0900
     e60:	000008d3          	.insn	4, 0x08d3
     e64:	35ac                	.insn	2, 0x35ac
     e66:	8000                	.insn	2, 0x8000
     e68:	0014                	.insn	2, 0x0014
     e6a:	0000                	.insn	2, 0x
     e6c:	0000053f 0008d806 	.insn	8, 0x0008d8060000053f
     e74:	0100                	.insn	2, 0x0100
     e76:	065a                	.insn	2, 0x065a
     e78:	08e4                	.insn	2, 0x08e4
     e7a:	0000                	.insn	2, 0x
     e7c:	5b01                	.insn	2, 0x5b01
     e7e:	2200                	.insn	2, 0x2200
     e80:	08f1                	.insn	2, 0x08f1
     e82:	0000                	.insn	2, 0x
     e84:	011e                	.insn	2, 0x011e
     e86:	0000                	.insn	2, 0x
     e88:	f206                	.insn	2, 0xf206
     e8a:	0008                	.insn	2, 0x0008
     e8c:	0100                	.insn	2, 0x0100
     e8e:	065a                	.insn	2, 0x065a
     e90:	08fe                	.insn	2, 0x08fe
     e92:	0000                	.insn	2, 0x
     e94:	5b01                	.insn	2, 0x5b01
     e96:	0000                	.insn	2, 0x
     e98:	0c09                	.insn	2, 0x0c09
     e9a:	0009                	.insn	2, 0x0009
     e9c:	1400                	.insn	2, 0x1400
     e9e:	0036                	.insn	2, 0x0036
     ea0:	1480                	.insn	2, 0x1480
     ea2:	0000                	.insn	2, 0x
     ea4:	7300                	.insn	2, 0x7300
     ea6:	0005                	.insn	2, 0x0005
     ea8:	0100                	.insn	2, 0x0100
     eaa:	0911                	.insn	2, 0x0911
     eac:	0000                	.insn	2, 0x
     eae:	00000d6f          	jal	s10,eae <COOLING_THRESHOLD_ON+0xe54>
     eb2:	1300                	.insn	2, 0x1300
     eb4:	091e                	.insn	2, 0x091e
     eb6:	0000                	.insn	2, 0x
     eb8:	3628                	.insn	2, 0x3628
     eba:	8000                	.insn	2, 0x8000
     ebc:	0010                	.insn	2, 0x0010
     ebe:	0000                	.insn	2, 0x
     ec0:	1f01                	.insn	2, 0x1f01
     ec2:	0009                	.insn	2, 0x0009
     ec4:	7700                	.insn	2, 0x7700
     ec6:	000d                	.insn	2, 0x000d
     ec8:	0000                	.insn	2, 0x
     eca:	0000                	.insn	2, 0x
     ecc:	0000                	.insn	2, 0x
     ece:	00010923          	sb	zero,18(sp)
     ed2:	0100                	.insn	2, 0x0100
     ed4:	9d0103e3          	beq	sp,a6,89a <COOLING_THRESHOLD_ON+0x840>
     ed8:	0000                	.insn	2, 0x
     eda:	0300                	.insn	2, 0x0300
     edc:	092e                	.insn	2, 0x092e
     ede:	0000                	.insn	2, 0x
     ee0:	6e0e                	.insn	2, 0x6e0e
     ee2:	1700                	.insn	2, 0x1700
     ee4:	009d                	.insn	2, 0x009d
     ee6:	0000                	.insn	2, 0x
     ee8:	640e                	.insn	2, 0x640e
     eea:	2200                	.insn	2, 0x2200
     eec:	009d                	.insn	2, 0x009d
     eee:	0000                	.insn	2, 0x
     ef0:	720e                	.insn	2, 0x720e
     ef2:	0070                	.insn	2, 0x0070
     ef4:	2e2e                	.insn	2, 0x2e2e
     ef6:	0009                	.insn	2, 0x0009
     ef8:	0300                	.insn	2, 0x0300
     efa:	6e6e                	.insn	2, 0x6e6e
     efc:	e500                	.insn	2, 0xe500
     efe:	01311103          	lh	sp,19(sp)
     f02:	0000                	.insn	2, 0x
     f04:	00646403          	.insn	4, 0x00646403
     f08:	03e6                	.insn	2, 0x03e6
     f0a:	3111                	.insn	2, 0x3111
     f0c:	0001                	.insn	2, 0x0001
     f0e:	0300                	.insn	2, 0x0300
     f10:	7272                	.insn	2, 0x7272
     f12:	e700                	.insn	2, 0xe700
     f14:	01240b03          	lb	s6,18(s0)
     f18:	0000                	.insn	2, 0x
     f1a:	00306403          	.insn	4, 0x00306403
     f1e:	03e8                	.insn	2, 0x03e8
     f20:	870a                	.insn	2, 0x870a
     f22:	0000                	.insn	2, 0x
     f24:	0300                	.insn	2, 0x0300
     f26:	3164                	.insn	2, 0x3164
     f28:	e800                	.insn	2, 0xe800
     f2a:	00870e03          	lb	t3,8(a4) # 8 <SENSING_TIME+0x3>
     f2e:	0000                	.insn	2, 0x
     f30:	00306e03          	.insn	4, 0x00306e03
     f34:	03e8                	.insn	2, 0x03e8
     f36:	8712                	.insn	2, 0x8712
     f38:	0000                	.insn	2, 0x
     f3a:	0300                	.insn	2, 0x0300
     f3c:	316e                	.insn	2, 0x316e
     f3e:	e800                	.insn	2, 0xe800
     f40:	00871603          	lh	a2,8(a4)
     f44:	0000                	.insn	2, 0x
     f46:	00326e03          	.insn	4, 0x00326e03
     f4a:	03e8                	.insn	2, 0x03e8
     f4c:	871a                	.insn	2, 0x871a
     f4e:	0000                	.insn	2, 0x
     f50:	0300                	.insn	2, 0x0300
     f52:	3071                	.insn	2, 0x3071
     f54:	e900                	.insn	2, 0xe900
     f56:	00870a03          	lb	s4,8(a4)
     f5a:	0000                	.insn	2, 0x
     f5c:	00317103          	.insn	4, 0x00317103
     f60:	03e9                	.insn	2, 0x03e9
     f62:	870e                	.insn	2, 0x870e
     f64:	0000                	.insn	2, 0x
     f66:	0300                	.insn	2, 0x0300
     f68:	0062                	.insn	2, 0x0062
     f6a:	03ea                	.insn	2, 0x03ea
     f6c:	870a                	.insn	2, 0x870a
     f6e:	0000                	.insn	2, 0x
     f70:	0300                	.insn	2, 0x0300
     f72:	6d62                	.insn	2, 0x6d62
     f74:	ea00                	.insn	2, 0xea00
     f76:	00870d03          	lb	s10,8(a4)
     f7a:	0000                	.insn	2, 0x
     f7c:	00777703          	.insn	4, 0x00777703
     f80:	311104b3          	.insn	4, 0x311104b3
     f84:	0001                	.insn	2, 0x0001
     f86:	0700                	.insn	2, 0x0700
     f88:	0665                	.insn	2, 0x0665
     f8a:	0000                	.insn	2, 0x
     f8c:	3202                	.insn	2, 0x3202
     f8e:	0001                	.insn	2, 0x0001
     f90:	1a00                	.insn	2, 0x1a00
     f92:	0404                	.insn	2, 0x0404
     f94:	00000087          	.insn	4, 0x0087
     f98:	615f5f03          	lhu	t5,1557(t5)
     f9c:	1a00                	.insn	2, 0x1a00
     f9e:	0404                	.insn	2, 0x0404
     fa0:	00000087          	.insn	4, 0x0087
     fa4:	0700                	.insn	2, 0x0700
     fa6:	000006bf 0000e602 	.insn	8, 0xe602000006bf
     fae:	2600                	.insn	2, 0x2600
     fb0:	0404                	.insn	2, 0x0404
     fb2:	00000087          	.insn	4, 0x0087
     fb6:	3302                	.insn	2, 0x3302
     fb8:	0000                	.insn	2, 0x
     fba:	2600                	.insn	2, 0x2600
     fbc:	0404                	.insn	2, 0x0404
     fbe:	00000087          	.insn	4, 0x0087
     fc2:	e102                	.insn	2, 0xe102
     fc4:	0000                	.insn	2, 0x
     fc6:	2600                	.insn	2, 0x2600
     fc8:	0404                	.insn	2, 0x0404
     fca:	00000087          	.insn	4, 0x0087
     fce:	dc02                	.insn	2, 0xdc02
     fd0:	0000                	.insn	2, 0x
     fd2:	2600                	.insn	2, 0x2600
     fd4:	0404                	.insn	2, 0x0404
     fd6:	00000087          	.insn	4, 0x0087
     fda:	3c02                	.insn	2, 0x3c02
     fdc:	0001                	.insn	2, 0x0001
     fde:	2600                	.insn	2, 0x2600
     fe0:	0404                	.insn	2, 0x0404
     fe2:	00000087          	.insn	4, 0x0087
     fe6:	3702                	.insn	2, 0x3702
     fe8:	0001                	.insn	2, 0x0001
     fea:	2600                	.insn	2, 0x2600
     fec:	0404                	.insn	2, 0x0404
     fee:	00000087          	.insn	4, 0x0087
     ff2:	6d5f5f03          	lhu	t5,1749(t5)
     ff6:	2600                	.insn	2, 0x2600
     ff8:	0404                	.insn	2, 0x0404
     ffa:	00000087          	.insn	4, 0x0087
     ffe:	0700                	.insn	2, 0x0700
    1000:	06dd                	.insn	2, 0x06dd
    1002:	0000                	.insn	2, 0x
    1004:	3202                	.insn	2, 0x3202
    1006:	0001                	.insn	2, 0x0001
    1008:	3200                	.insn	2, 0x3200
    100a:	0404                	.insn	2, 0x0404
    100c:	00000087          	.insn	4, 0x0087
    1010:	615f5f03          	lhu	t5,1557(t5)
    1014:	3200                	.insn	2, 0x3200
    1016:	0404                	.insn	2, 0x0404
    1018:	00000087          	.insn	4, 0x0087
    101c:	0700                	.insn	2, 0x0700
    101e:	00000737          	lui	a4,0x0
    1022:	e602                	.insn	2, 0xe602
    1024:	0000                	.insn	2, 0x
    1026:	4b00                	.insn	2, 0x4b00
    1028:	0804                	.insn	2, 0x0804
    102a:	00000087          	.insn	4, 0x0087
    102e:	3302                	.insn	2, 0x3302
    1030:	0000                	.insn	2, 0x
    1032:	4b00                	.insn	2, 0x4b00
    1034:	0804                	.insn	2, 0x0804
    1036:	00000087          	.insn	4, 0x0087
    103a:	e102                	.insn	2, 0xe102
    103c:	0000                	.insn	2, 0x
    103e:	4b00                	.insn	2, 0x4b00
    1040:	0804                	.insn	2, 0x0804
    1042:	00000087          	.insn	4, 0x0087
    1046:	dc02                	.insn	2, 0xdc02
    1048:	0000                	.insn	2, 0x
    104a:	4b00                	.insn	2, 0x4b00
    104c:	0804                	.insn	2, 0x0804
    104e:	00000087          	.insn	4, 0x0087
    1052:	3c02                	.insn	2, 0x3c02
    1054:	0001                	.insn	2, 0x0001
    1056:	4b00                	.insn	2, 0x4b00
    1058:	0804                	.insn	2, 0x0804
    105a:	00000087          	.insn	4, 0x0087
    105e:	3702                	.insn	2, 0x3702
    1060:	0001                	.insn	2, 0x0001
    1062:	4b00                	.insn	2, 0x4b00
    1064:	0804                	.insn	2, 0x0804
    1066:	00000087          	.insn	4, 0x0087
    106a:	6d5f5f03          	lhu	t5,1749(t5)
    106e:	4b00                	.insn	2, 0x4b00
    1070:	0804                	.insn	2, 0x0804
    1072:	00000087          	.insn	4, 0x0087
    1076:	0700                	.insn	2, 0x0700
    1078:	0791                	.insn	2, 0x0791
    107a:	0000                	.insn	2, 0x
    107c:	e602                	.insn	2, 0xe602
    107e:	0000                	.insn	2, 0x
    1080:	5000                	.insn	2, 0x5000
    1082:	0404                	.insn	2, 0x0404
    1084:	00000087          	.insn	4, 0x0087
    1088:	3302                	.insn	2, 0x3302
    108a:	0000                	.insn	2, 0x
    108c:	5000                	.insn	2, 0x5000
    108e:	0404                	.insn	2, 0x0404
    1090:	00000087          	.insn	4, 0x0087
    1094:	e102                	.insn	2, 0xe102
    1096:	0000                	.insn	2, 0x
    1098:	5000                	.insn	2, 0x5000
    109a:	0404                	.insn	2, 0x0404
    109c:	00000087          	.insn	4, 0x0087
    10a0:	dc02                	.insn	2, 0xdc02
    10a2:	0000                	.insn	2, 0x
    10a4:	5000                	.insn	2, 0x5000
    10a6:	0404                	.insn	2, 0x0404
    10a8:	00000087          	.insn	4, 0x0087
    10ac:	3c02                	.insn	2, 0x3c02
    10ae:	0001                	.insn	2, 0x0001
    10b0:	5000                	.insn	2, 0x5000
    10b2:	0404                	.insn	2, 0x0404
    10b4:	00000087          	.insn	4, 0x0087
    10b8:	3702                	.insn	2, 0x3702
    10ba:	0001                	.insn	2, 0x0001
    10bc:	5000                	.insn	2, 0x5000
    10be:	0404                	.insn	2, 0x0404
    10c0:	00000087          	.insn	4, 0x0087
    10c4:	6d5f5f03          	lhu	t5,1749(t5)
    10c8:	5000                	.insn	2, 0x5000
    10ca:	0404                	.insn	2, 0x0404
    10cc:	00000087          	.insn	4, 0x0087
    10d0:	0700                	.insn	2, 0x0700
    10d2:	000007af          	.insn	4, 0x07af
    10d6:	3202                	.insn	2, 0x3202
    10d8:	0001                	.insn	2, 0x0001
    10da:	7300                	.insn	2, 0x7300
    10dc:	0404                	.insn	2, 0x0404
    10de:	00000087          	.insn	4, 0x0087
    10e2:	615f5f03          	lhu	t5,1557(t5)
    10e6:	7300                	.insn	2, 0x7300
    10e8:	0404                	.insn	2, 0x0404
    10ea:	00000087          	.insn	4, 0x0087
    10ee:	0700                	.insn	2, 0x0700
    10f0:	07c1                	.insn	2, 0x07c1
    10f2:	0000                	.insn	2, 0x
    10f4:	785f5f03          	lhu	t5,1925(t5)
    10f8:	8100                	.insn	2, 0x8100
    10fa:	0504                	.insn	2, 0x0504
    10fc:	00000087          	.insn	4, 0x0087
    1100:	0f00                	.insn	2, 0x0f00
    1102:	00316d03          	.insn	4, 0x00316d03
    1106:	0491                	.insn	2, 0x0491
    1108:	0000870f          	.insn	4, 0x870f
    110c:	0300                	.insn	2, 0x0300
    110e:	306d                	.insn	2, 0x306d
    1110:	9100                	.insn	2, 0x9100
    1112:	1304                	.insn	2, 0x1304
    1114:	00000087          	.insn	4, 0x0087
    1118:	00083207          	.insn	4, 0x00083207
    111c:	0200                	.insn	2, 0x0200
    111e:	00e6                	.insn	2, 0x00e6
    1120:	0000                	.insn	2, 0x
    1122:	049c                	.insn	2, 0x049c
    1124:	8708                	.insn	2, 0x8708
    1126:	0000                	.insn	2, 0x
    1128:	0200                	.insn	2, 0x0200
    112a:	00000033          	add	zero,zero,zero
    112e:	049c                	.insn	2, 0x049c
    1130:	8708                	.insn	2, 0x8708
    1132:	0000                	.insn	2, 0x
    1134:	0200                	.insn	2, 0x0200
    1136:	00e1                	.insn	2, 0x00e1
    1138:	0000                	.insn	2, 0x
    113a:	049c                	.insn	2, 0x049c
    113c:	8708                	.insn	2, 0x8708
    113e:	0000                	.insn	2, 0x
    1140:	0200                	.insn	2, 0x0200
    1142:	00dc                	.insn	2, 0x00dc
    1144:	0000                	.insn	2, 0x
    1146:	049c                	.insn	2, 0x049c
    1148:	8708                	.insn	2, 0x8708
    114a:	0000                	.insn	2, 0x
    114c:	0200                	.insn	2, 0x0200
    114e:	013c                	.insn	2, 0x013c
    1150:	0000                	.insn	2, 0x
    1152:	049c                	.insn	2, 0x049c
    1154:	8708                	.insn	2, 0x8708
    1156:	0000                	.insn	2, 0x
    1158:	0200                	.insn	2, 0x0200
    115a:	00000137          	lui	sp,0x0
    115e:	049c                	.insn	2, 0x049c
    1160:	8708                	.insn	2, 0x8708
    1162:	0000                	.insn	2, 0x
    1164:	0300                	.insn	2, 0x0300
    1166:	5f5f 006d 049c      	.insn	6, 0x049c006d5f5f
    116c:	8708                	.insn	2, 0x8708
    116e:	0000                	.insn	2, 0x
    1170:	0000                	.insn	2, 0x
    1172:	00090c07          	.insn	4, 0x00090c07
    1176:	0200                	.insn	2, 0x0200
    1178:	009c                	.insn	2, 0x009c
    117a:	0000                	.insn	2, 0x
    117c:	049d                	.insn	2, 0x049d
    117e:	8708                	.insn	2, 0x8708
    1180:	0000                	.insn	2, 0x
    1182:	0200                	.insn	2, 0x0200
    1184:	00a1                	.insn	2, 0x00a1
    1186:	0000                	.insn	2, 0x
    1188:	049d                	.insn	2, 0x049d
    118a:	8708                	.insn	2, 0x8708
    118c:	0000                	.insn	2, 0x
    118e:	0200                	.insn	2, 0x0200
    1190:	00a6                	.insn	2, 0x00a6
    1192:	0000                	.insn	2, 0x
    1194:	049d                	.insn	2, 0x049d
    1196:	8708                	.insn	2, 0x8708
    1198:	0000                	.insn	2, 0x
    119a:	0200                	.insn	2, 0x0200
    119c:	000000ab          	.insn	4, 0x00ab
    11a0:	049d                	.insn	2, 0x049d
    11a2:	8708                	.insn	2, 0x8708
    11a4:	0000                	.insn	2, 0x
    11a6:	0200                	.insn	2, 0x0200
    11a8:	0209                	.insn	2, 0x0209
    11aa:	0000                	.insn	2, 0x
    11ac:	049d                	.insn	2, 0x049d
    11ae:	8708                	.insn	2, 0x8708
    11b0:	0000                	.insn	2, 0x
    11b2:	0200                	.insn	2, 0x0200
    11b4:	0104                	.insn	2, 0x0104
    11b6:	0000                	.insn	2, 0x
    11b8:	049d                	.insn	2, 0x049d
    11ba:	8708                	.insn	2, 0x8708
    11bc:	0000                	.insn	2, 0x
    11be:	0200                	.insn	2, 0x0200
    11c0:	0204                	.insn	2, 0x0204
    11c2:	0000                	.insn	2, 0x
    11c4:	049d                	.insn	2, 0x049d
    11c6:	8708                	.insn	2, 0x8708
    11c8:	0000                	.insn	2, 0x
    11ca:	0200                	.insn	2, 0x0200
    11cc:	0038                	.insn	2, 0x0038
    11ce:	0000                	.insn	2, 0x
    11d0:	049d                	.insn	2, 0x049d
    11d2:	8708                	.insn	2, 0x8708
    11d4:	0000                	.insn	2, 0x
    11d6:	0700                	.insn	2, 0x0700
    11d8:	08b5                	.insn	2, 0x08b5
    11da:	0000                	.insn	2, 0x
    11dc:	3d02                	.insn	2, 0x3d02
    11de:	0000                	.insn	2, 0x
    11e0:	9d00                	.insn	2, 0x9d00
    11e2:	0804                	.insn	2, 0x0804
    11e4:	00000087          	.insn	4, 0x0087
    11e8:	4302                	.insn	2, 0x4302
    11ea:	0000                	.insn	2, 0x
    11ec:	9d00                	.insn	2, 0x9d00
    11ee:	0804                	.insn	2, 0x0804
    11f0:	00000087          	.insn	4, 0x0087
    11f4:	0700                	.insn	2, 0x0700
    11f6:	000008d3          	.insn	4, 0x08d3
    11fa:	3d02                	.insn	2, 0x3d02
    11fc:	0000                	.insn	2, 0x
    11fe:	9d00                	.insn	2, 0x9d00
    1200:	0804                	.insn	2, 0x0804
    1202:	00000087          	.insn	4, 0x0087
    1206:	4302                	.insn	2, 0x4302
    1208:	0000                	.insn	2, 0x
    120a:	9d00                	.insn	2, 0x9d00
    120c:	0804                	.insn	2, 0x0804
    120e:	00000087          	.insn	4, 0x0087
    1212:	0700                	.insn	2, 0x0700
    1214:	08f1                	.insn	2, 0x08f1
    1216:	0000                	.insn	2, 0x
    1218:	3d02                	.insn	2, 0x3d02
    121a:	0000                	.insn	2, 0x
    121c:	9d00                	.insn	2, 0x9d00
    121e:	0804                	.insn	2, 0x0804
    1220:	00000087          	.insn	4, 0x0087
    1224:	4302                	.insn	2, 0x4302
    1226:	0000                	.insn	2, 0x
    1228:	9d00                	.insn	2, 0x9d00
    122a:	0804                	.insn	2, 0x0804
    122c:	00000087          	.insn	4, 0x0087
    1230:	0f00                	.insn	2, 0x0f00
    1232:	3d02                	.insn	2, 0x3d02
    1234:	0000                	.insn	2, 0x
    1236:	9d00                	.insn	2, 0x9d00
    1238:	0804                	.insn	2, 0x0804
    123a:	00000087          	.insn	4, 0x0087
    123e:	4302                	.insn	2, 0x4302
    1240:	0000                	.insn	2, 0x
    1242:	9d00                	.insn	2, 0x9d00
    1244:	0804                	.insn	2, 0x0804
    1246:	00000087          	.insn	4, 0x0087
    124a:	0000                	.insn	2, 0x
    124c:	00091e07          	.insn	4, 0x00091e07
    1250:	0300                	.insn	2, 0x0300
    1252:	5f5f 0078 04a2      	.insn	6, 0x04a200785f5f
    1258:	8705                	.insn	2, 0x8705
    125a:	0000                	.insn	2, 0x
    125c:	0000                	.insn	2, 0x
    125e:	5f5f030f          	.insn	4, 0x5f5f030f
    1262:	0078                	.insn	2, 0x0078
    1264:	04aa                	.insn	2, 0x04aa
    1266:	8705                	.insn	2, 0x8705
    1268:	0000                	.insn	2, 0x
    126a:	0000                	.insn	2, 0x
    126c:	0000                	.insn	2, 0x
    126e:	0424                	.insn	2, 0x0424
    1270:	009d                	.insn	2, 0x009d
    1272:	0000                	.insn	2, 0x
    1274:	de10                	.insn	2, 0xde10
    1276:	0005                	.insn	2, 0x0005
    1278:	de00                	.insn	2, 0xde00
    127a:	0005                	.insn	2, 0x0005
    127c:	1000                	.insn	2, 0x1000
    127e:	0020                	.insn	2, 0x0020
    1280:	0000                	.insn	2, 0x
    1282:	0020                	.insn	2, 0x0020
    1284:	0000                	.insn	2, 0x
    1286:	eb10                	.insn	2, 0xeb10
    1288:	0000                	.insn	2, 0x
    128a:	eb00                	.insn	2, 0xeb00
    128c:	0000                	.insn	2, 0x
    128e:	0000                	.insn	2, 0x
    1290:	03a5                	.insn	2, 0x03a5
    1292:	0000                	.insn	2, 0x
    1294:	0005                	.insn	2, 0x0005
    1296:	0401                	.insn	2, 0x0401
    1298:	03a6                	.insn	2, 0x03a6
    129a:	0000                	.insn	2, 0x
    129c:	0002180b          	.insn	4, 0x0002180b
    12a0:	1d00                	.insn	2, 0x1d00
    12a2:	00c4                	.insn	2, 0x00c4
    12a4:	0000                	.insn	2, 0x
    12a6:	0000                	.insn	2, 0x
    12a8:	0000                	.insn	2, 0x
    12aa:	364c                	.insn	2, 0x364c
    12ac:	8000                	.insn	2, 0x8000
    12ae:	03a8                	.insn	2, 0x03a8
    12b0:	0000                	.insn	2, 0x
    12b2:	129a                	.insn	2, 0x129a
    12b4:	0000                	.insn	2, 0x
    12b6:	1a040403          	lb	s0,416(s0)
    12ba:	0000                	.insn	2, 0x
    12bc:	0c00                	.insn	2, 0x0c00
    12be:	0504                	.insn	2, 0x0504
    12c0:	6e69                	.insn	2, 0x6e69
    12c2:	0074                	.insn	2, 0x0074
    12c4:	90060103          	lb	sp,-1792(a2) # fffff900 <TEMP_DATA_ADDR+0x7ffdf900>
    12c8:	0000                	.insn	2, 0x
    12ca:	0300                	.insn	2, 0x0300
    12cc:	0508                	.insn	2, 0x0508
    12ce:	0049                	.insn	2, 0x0049
    12d0:	0000                	.insn	2, 0x
    12d2:	8e080103          	lb	sp,-1824(a6) # fffff8e0 <TEMP_DATA_ADDR+0x7ffdf8e0>
    12d6:	0000                	.insn	2, 0x
    12d8:	0300                	.insn	2, 0x0300
    12da:	0704                	.insn	2, 0x0704
    12dc:	0061                	.insn	2, 0x0061
    12de:	0000                	.insn	2, 0x
    12e0:	57070803          	lb	a6,1392(a4) # 570 <COOLING_THRESHOLD_ON+0x516>
    12e4:	0000                	.insn	2, 0x
    12e6:	0300                	.insn	2, 0x0300
    12e8:	0702                	.insn	2, 0x0702
    12ea:	00c1                	.insn	2, 0x00c1
    12ec:	0000                	.insn	2, 0x
    12ee:	fc0d                	.insn	2, 0xfc0d
    12f0:	02000003          	lb	zero,32(zero) # 20 <SENSING_TIME+0x1b>
    12f4:	0f41                	.insn	2, 0x0f41
    12f6:	0026                	.insn	2, 0x0026
    12f8:	0000                	.insn	2, 0x
    12fa:	040e                	.insn	2, 0x040e
    12fc:	4602                	.insn	2, 0x4602
    12fe:	00009a03          	lh	s4,0(ra)
    1302:	0800                	.insn	2, 0x0800
    1304:	0399                	.insn	2, 0x0399
    1306:	0000                	.insn	2, 0x
    1308:	494d                	.insn	2, 0x494d
    130a:	0000                	.insn	2, 0x
    130c:	1700                	.insn	2, 0x1700
    130e:	0f00                	.insn	2, 0x0f00
    1310:	7865                	.insn	2, 0x7865
    1312:	0070                	.insn	2, 0x0070
    1314:	4e02                	.insn	2, 0x4e02
    1316:	490e                	.insn	2, 0x490e
    1318:	0000                	.insn	2, 0x
    131a:	0800                	.insn	2, 0x0800
    131c:	032f0817          	auipc	a6,0x32f0
    1320:	0000                	.insn	2, 0x
    1322:	0000494f          	.insn	4, 0x494f
    1326:	0100                	.insn	2, 0x0100
    1328:	001f f010 0003      	.insn	6, 0x0003f010001f
    132e:	0400                	.insn	2, 0x0400
    1330:	4302                	.insn	2, 0x4302
    1332:	0000c007          	.insn	4, 0xc007
    1336:	1100                	.insn	2, 0x1100
    1338:	6c66                	.insn	2, 0x6c66
    133a:	0074                	.insn	2, 0x0074
    133c:	4502                	.insn	2, 0x4502
    133e:	5e0a                	.insn	2, 0x5e0a
    1340:	0000                	.insn	2, 0x
    1342:	1200                	.insn	2, 0x1200
    1344:	03d0                	.insn	2, 0x03d0
    1346:	0000                	.insn	2, 0x
    1348:	5102                	.insn	2, 0x5102
    134a:	6a05                	.insn	2, 0x6a05
    134c:	0000                	.insn	2, 0x
    134e:	0000                	.insn	2, 0x
    1350:	00032613          	slti	a2,t1,0
    1354:	0100                	.insn	2, 0x0100
    1356:	0121                	.insn	2, 0x0121
    1358:	005e                	.insn	2, 0x005e
    135a:	0000                	.insn	2, 0x
    135c:	364c                	.insn	2, 0x364c
    135e:	8000                	.insn	2, 0x8000
    1360:	03a8                	.insn	2, 0x03a8
    1362:	0000                	.insn	2, 0x
    1364:	9c01                	.insn	2, 0x9c01
    1366:	0376                	.insn	2, 0x0376
    1368:	0000                	.insn	2, 0x
    136a:	6109                	.insn	2, 0x6109
    136c:	1200                	.insn	2, 0x1200
    136e:	005e                	.insn	2, 0x005e
    1370:	0000                	.insn	2, 0x
    1372:	00000d8b          	.insn	4, 0x0d8b
    1376:	6209                	.insn	2, 0x6209
    1378:	1c00                	.insn	2, 0x1c00
    137a:	005e                	.insn	2, 0x005e
    137c:	0000                	.insn	2, 0x
    137e:	0dc2                	.insn	2, 0x0dc2
    1380:	0000                	.insn	2, 0x
    1382:	da01                	.insn	2, 0xda01
    1384:	0002                	.insn	2, 0x0002
    1386:	2300                	.insn	2, 0x2300
    1388:	002d                	.insn	2, 0x002d
    138a:	0000                	.insn	2, 0x
    138c:	0df9                	.insn	2, 0x0df9
    138e:	0000                	.insn	2, 0x
    1390:	3a14                	.insn	2, 0x3a14
    1392:	0004                	.insn	2, 0x0004
    1394:	0100                	.insn	2, 0x0100
    1396:	002d0323          	sb	sp,6(s10)
    139a:	0000                	.insn	2, 0x
    139c:	0200                	.insn	2, 0x0200
    139e:	5f41                	.insn	2, 0x5f41
    13a0:	03240063          	beq	s0,s2,13c0 <COOLING_THRESHOLD_ON+0x1366>
    13a4:	0376                	.insn	2, 0x0376
    13a6:	0000                	.insn	2, 0x
    13a8:	0e08                	.insn	2, 0x0e08
    13aa:	0000                	.insn	2, 0x
    13ac:	4102                	.insn	2, 0x4102
    13ae:	735f 2400 7603      	.insn	6, 0x76032400735f
    13b4:	31000003          	lb	zero,784(zero) # 310 <COOLING_THRESHOLD_ON+0x2b6>
    13b8:	000e                	.insn	2, 0x000e
    13ba:	0200                	.insn	2, 0x0200
    13bc:	5f41                	.insn	2, 0x5f41
    13be:	0065                	.insn	2, 0x0065
    13c0:	0324                	.insn	2, 0x0324
    13c2:	0376                	.insn	2, 0x0376
    13c4:	0000                	.insn	2, 0x
    13c6:	0e61                	.insn	2, 0x0e61
    13c8:	0000                	.insn	2, 0x
    13ca:	4102                	.insn	2, 0x4102
    13cc:	665f 2400 7d03      	.insn	6, 0x7d032400665f
    13d2:	ce000003          	lb	zero,-800(zero) # fffffce0 <TEMP_DATA_ADDR+0x7ffdfce0>
    13d6:	000e                	.insn	2, 0x000e
    13d8:	0200                	.insn	2, 0x0200
    13da:	5f42                	.insn	2, 0x5f42
    13dc:	03250063          	beq	a0,s2,13fc <COOLING_THRESHOLD_ON+0x13a2>
    13e0:	0376                	.insn	2, 0x0376
    13e2:	0000                	.insn	2, 0x
    13e4:	0f10                	.insn	2, 0x0f10
    13e6:	0000                	.insn	2, 0x
    13e8:	4202                	.insn	2, 0x4202
    13ea:	735f 2500 7603      	.insn	6, 0x76032500735f
    13f0:	35000003          	lb	zero,848(zero) # 350 <COOLING_THRESHOLD_ON+0x2f6>
    13f4:	0200000f          	fence	r,unknown
    13f8:	5f42                	.insn	2, 0x5f42
    13fa:	0065                	.insn	2, 0x0065
    13fc:	0325                	.insn	2, 0x0325
    13fe:	0376                	.insn	2, 0x0376
    1400:	0000                	.insn	2, 0x
    1402:	0f71                	.insn	2, 0x0f71
    1404:	0000                	.insn	2, 0x
    1406:	4202                	.insn	2, 0x4202
    1408:	665f 2500 7d03      	.insn	6, 0x7d032500665f
    140e:	a8000003          	lb	zero,-1408(zero) # fffffa80 <TEMP_DATA_ADDR+0x7ffdfa80>
    1412:	0200000f          	fence	r,unknown
    1416:	5f52                	.insn	2, 0x5f52
    1418:	03260063          	beq	a2,s2,1438 <COOLING_THRESHOLD_ON+0x13de>
    141c:	0376                	.insn	2, 0x0376
    141e:	0000                	.insn	2, 0x
    1420:	0fdf 0000 5202      	.insn	6, 0x520200000fdf
    1426:	735f 2600 7603      	.insn	6, 0x76032600735f
    142c:	0c000003          	lb	zero,192(zero) # c0 <COOLING_THRESHOLD_ON+0x66>
    1430:	0010                	.insn	2, 0x0010
    1432:	0200                	.insn	2, 0x0200
    1434:	5f52                	.insn	2, 0x5f52
    1436:	0065                	.insn	2, 0x0065
    1438:	0326                	.insn	2, 0x0326
    143a:	0376                	.insn	2, 0x0376
    143c:	0000                	.insn	2, 0x
    143e:	1069                	.insn	2, 0x1069
    1440:	0000                	.insn	2, 0x
    1442:	5202                	.insn	2, 0x5202
    1444:	665f 2600 7d03      	.insn	6, 0x7d032600665f
    144a:	bd000003          	lb	zero,-1072(zero) # fffffbd0 <TEMP_DATA_ADDR+0x7ffdfbd0>
    144e:	0010                	.insn	2, 0x0010
    1450:	0200                	.insn	2, 0x0200
    1452:	0072                	.insn	2, 0x0072
    1454:	005e0a27          	.insn	4, 0x005e0a27
    1458:	0000                	.insn	2, 0x
    145a:	1101                	.insn	2, 0x1101
    145c:	0000                	.insn	2, 0x
    145e:	3506                	.insn	2, 0x3506
    1460:	0001                	.insn	2, 0x0001
    1462:	e200                	.insn	2, 0xe200
    1464:	0001                	.insn	2, 0x0001
    1466:	0400                	.insn	2, 0x0400
    1468:	0311                	.insn	2, 0x0311
    146a:	0000                	.insn	2, 0x
    146c:	9a2a                	.insn	2, 0x9a2a
    146e:	0000                	.insn	2, 0x
    1470:	0000                	.insn	2, 0x
    1472:	4e06                	.insn	2, 0x4e06
    1474:	0001                	.insn	2, 0x0001
    1476:	0300                	.insn	2, 0x0300
    1478:	0002                	.insn	2, 0x0002
    147a:	0100                	.insn	2, 0x0100
    147c:	041f 0000 762a      	.insn	6, 0x762a0000041f
    1482:	17000003          	lb	zero,368(zero) # 170 <COOLING_THRESHOLD_ON+0x116>
    1486:	0011                	.insn	2, 0x0011
    1488:	0500                	.insn	2, 0x0500
    148a:	372c                	.insn	2, 0x372c
    148c:	8000                	.insn	2, 0x8000
    148e:	0384                	.insn	2, 0x0384
    1490:	0000                	.insn	2, 0x
    1492:	0600                	.insn	2, 0x0600
    1494:	00000157          	.insn	4, 0x0157
    1498:	00000217          	auipc	tp,0x0
    149c:	1104                	.insn	2, 0x1104
    149e:	2b000003          	lb	zero,688(zero) # 2b0 <COOLING_THRESHOLD_ON+0x256>
    14a2:	009a                	.insn	2, 0x009a
    14a4:	0000                	.insn	2, 0x
    14a6:	0600                	.insn	2, 0x0600
    14a8:	016a                	.insn	2, 0x016a
    14aa:	0000                	.insn	2, 0x
    14ac:	0238                	.insn	2, 0x0238
    14ae:	0000                	.insn	2, 0x
    14b0:	1f01                	.insn	2, 0x1f01
    14b2:	0004                	.insn	2, 0x0004
    14b4:	2b00                	.insn	2, 0x2b00
    14b6:	0376                	.insn	2, 0x0376
    14b8:	0000                	.insn	2, 0x
    14ba:	1121                	.insn	2, 0x1121
    14bc:	0000                	.insn	2, 0x
    14be:	7005                	.insn	2, 0x7005
    14c0:	84800037          	lui	zero,0x84800
    14c4:	00000003          	lb	zero,0(zero) # 0 <TRANSMISSION_TIME-0x1>
    14c8:	7506                	.insn	2, 0x7506
    14ca:	0001                	.insn	2, 0x0001
    14cc:	2700                	.insn	2, 0x2700
    14ce:	01000003          	lb	zero,16(zero) # 10 <SENSING_TIME+0xb>
    14d2:	0000034b          	.insn	4, 0x034b
    14d6:	7d2c                	.insn	2, 0x7d2c
    14d8:	2b000003          	lb	zero,688(zero) # 2b0 <COOLING_THRESHOLD_ON+0x256>
    14dc:	0011                	.insn	2, 0x0011
    14de:	0100                	.insn	2, 0x0100
    14e0:	00000403          	lb	s0,0(zero) # 0 <TRANSMISSION_TIME-0x1>
    14e4:	7d2c                	.insn	2, 0x7d2c
    14e6:	3a000003          	lb	zero,928(zero) # 3a0 <COOLING_THRESHOLD_ON+0x346>
    14ea:	0011                	.insn	2, 0x0011
    14ec:	0100                	.insn	2, 0x0100
    14ee:	03b5                	.insn	2, 0x03b5
    14f0:	0000                	.insn	2, 0x
    14f2:	7d2c                	.insn	2, 0x7d2c
    14f4:	51000003          	lb	zero,1296(zero) # 510 <COOLING_THRESHOLD_ON+0x4b6>
    14f8:	0011                	.insn	2, 0x0011
    14fa:	0100                	.insn	2, 0x0100
    14fc:	00000367          	jalr	t1,zero # 0 <TRANSMISSION_TIME-0x1>
    1500:	7d2c                	.insn	2, 0x7d2c
    1502:	67000003          	lb	zero,1648(zero) # 670 <COOLING_THRESHOLD_ON+0x616>
    1506:	0011                	.insn	2, 0x0011
    1508:	0100                	.insn	2, 0x0100
    150a:	03d5                	.insn	2, 0x03d5
    150c:	0000                	.insn	2, 0x
    150e:	7d2c                	.insn	2, 0x7d2c
    1510:	7b000003          	lb	zero,1968(zero) # 7b0 <COOLING_THRESHOLD_ON+0x756>
    1514:	0011                	.insn	2, 0x0011
    1516:	0a00                	.insn	2, 0x0a00
    1518:	0180                	.insn	2, 0x0180
    151a:	0000                	.insn	2, 0x
    151c:	e601                	.insn	2, 0xe601
    151e:	0000                	.insn	2, 0x
    1520:	2c00                	.insn	2, 0x2c00
    1522:	037d                	.insn	2, 0x037d
    1524:	0000                	.insn	2, 0x
    1526:	118a                	.insn	2, 0x118a
    1528:	0000                	.insn	2, 0x
    152a:	3301                	.insn	2, 0x3301
    152c:	0000                	.insn	2, 0x
    152e:	2c00                	.insn	2, 0x2c00
    1530:	037d                	.insn	2, 0x037d
    1532:	0000                	.insn	2, 0x
    1534:	1192                	.insn	2, 0x1192
    1536:	0000                	.insn	2, 0x
    1538:	e101                	.insn	2, 0xe101
    153a:	0000                	.insn	2, 0x
    153c:	2c00                	.insn	2, 0x2c00
    153e:	037d                	.insn	2, 0x037d
    1540:	0000                	.insn	2, 0x
    1542:	000011a7          	.insn	4, 0x11a7
    1546:	dc01                	.insn	2, 0xdc01
    1548:	0000                	.insn	2, 0x
    154a:	2c00                	.insn	2, 0x2c00
    154c:	037d                	.insn	2, 0x037d
    154e:	0000                	.insn	2, 0x
    1550:	11c4                	.insn	2, 0x11c4
    1552:	0000                	.insn	2, 0x
    1554:	3c01                	.insn	2, 0x3c01
    1556:	0001                	.insn	2, 0x0001
    1558:	2c00                	.insn	2, 0x2c00
    155a:	037d                	.insn	2, 0x037d
    155c:	0000                	.insn	2, 0x
    155e:	11e1                	.insn	2, 0x11e1
    1560:	0000                	.insn	2, 0x
    1562:	3701                	.insn	2, 0x3701
    1564:	0001                	.insn	2, 0x0001
    1566:	2c00                	.insn	2, 0x2c00
    1568:	037d                	.insn	2, 0x037d
    156a:	0000                	.insn	2, 0x
    156c:	00001203          	lh	tp,0(zero) # 0 <TRANSMISSION_TIME-0x1>
    1570:	5f02                	.insn	2, 0x5f02
    1572:	6d5f 2c00 7d03      	.insn	6, 0x7d032c006d5f
    1578:	31000003          	lb	zero,784(zero) # 310 <COOLING_THRESHOLD_ON+0x2b6>
    157c:	0012                	.insn	2, 0x0012
    157e:	0500                	.insn	2, 0x0500
    1580:	37d0                	.insn	2, 0x37d0
    1582:	8000                	.insn	2, 0x8000
    1584:	038d                	.insn	2, 0x038d
    1586:	0000                	.insn	2, 0x
    1588:	e805                	.insn	2, 0xe805
    158a:	96800037          	lui	zero,0x96800
    158e:	05000003          	lb	zero,80(zero) # 50 <COOLING_THRESHOLD_OFF+0x19>
    1592:	37fc                	.insn	2, 0x37fc
    1594:	8000                	.insn	2, 0x8000
    1596:	039f 0000 3c05      	.insn	6, 0x3c050000039f
    159c:	0038                	.insn	2, 0x0038
    159e:	8d80                	.insn	2, 0x8d80
    15a0:	05000003          	lb	zero,80(zero) # 50 <COOLING_THRESHOLD_OFF+0x19>
    15a4:	3850                	.insn	2, 0x3850
    15a6:	8000                	.insn	2, 0x8000
    15a8:	0396                	.insn	2, 0x0396
    15aa:	0000                	.insn	2, 0x
    15ac:	6405                	.insn	2, 0x6405
    15ae:	0038                	.insn	2, 0x0038
    15b0:	9f80                	.insn	2, 0x9f80
    15b2:	00000003          	lb	zero,0(zero) # 0 <TRANSMISSION_TIME-0x1>
    15b6:	0600                	.insn	2, 0x0600
    15b8:	0000019b          	.insn	4, 0x019b
    15bc:	0365                	.insn	2, 0x0365
    15be:	0000                	.insn	2, 0x
    15c0:	df04                	.insn	2, 0xdf04
    15c2:	0002                	.insn	2, 0x0002
    15c4:	2d00                	.insn	2, 0x2d00
    15c6:	002d                	.insn	2, 0x002d
    15c8:	0000                	.insn	2, 0x
    15ca:	0415                	.insn	2, 0x0415
    15cc:	0382                	.insn	2, 0x0382
    15ce:	0000                	.insn	2, 0x
    15d0:	762d                	.insn	2, 0x762d
    15d2:	04000003          	lb	zero,64(zero) # 40 <COOLING_THRESHOLD_OFF+0x9>
    15d6:	039e                	.insn	2, 0x039e
    15d8:	0000                	.insn	2, 0x
    15da:	762d                	.insn	2, 0x762d
    15dc:	04000003          	lb	zero,64(zero) # 40 <COOLING_THRESHOLD_OFF+0x9>
    15e0:	0334                	.insn	2, 0x0334
    15e2:	0000                	.insn	2, 0x
    15e4:	762d                	.insn	2, 0x762d
    15e6:	04000003          	lb	zero,64(zero) # 40 <COOLING_THRESHOLD_OFF+0x9>
    15ea:	02fa                	.insn	2, 0x02fa
    15ec:	0000                	.insn	2, 0x
    15ee:	7d2d                	.insn	2, 0x7d2d
    15f0:	00000003          	lb	zero,0(zero) # 0 <TRANSMISSION_TIME-0x1>
    15f4:	0a00                	.insn	2, 0x0a00
    15f6:	0190                	.insn	2, 0x0190
    15f8:	0000                	.insn	2, 0x
    15fa:	be04                	.insn	2, 0xbe04
    15fc:	0002                	.insn	2, 0x0002
    15fe:	2d00                	.insn	2, 0x2d00
    1600:	009a                	.insn	2, 0x009a
    1602:	0000                	.insn	2, 0x
    1604:	0000                	.insn	2, 0x
    1606:	4e050403          	lb	s0,1248(a0)
    160a:	0000                	.insn	2, 0x
    160c:	0300                	.insn	2, 0x0300
    160e:	0704                	.insn	2, 0x0704
    1610:	005c                	.insn	2, 0x005c
    1612:	0000                	.insn	2, 0x
    1614:	0002d107          	.insn	4, 0x0002d107
    1618:	d100                	.insn	2, 0xd100
    161a:	0002                	.insn	2, 0x0002
    161c:	0700                	.insn	2, 0x0700
    161e:	05de                	.insn	2, 0x05de
    1620:	0000                	.insn	2, 0x
    1622:	05de                	.insn	2, 0x05de
    1624:	0000                	.insn	2, 0x
    1626:	00002007          	.insn	4, 0x2007
    162a:	2000                	.insn	2, 0x2000
    162c:	0000                	.insn	2, 0x
    162e:	0700                	.insn	2, 0x0700
    1630:	000000eb          	.insn	4, 0x00eb
    1634:	000000eb          	.insn	4, 0x00eb
    1638:	0600                	.insn	2, 0x0600
    163a:	0002                	.insn	2, 0x0002
    163c:	0500                	.insn	2, 0x0500
    163e:	0100                	.insn	2, 0x0100
    1640:	e704                	.insn	2, 0xe704
    1642:	0004                	.insn	2, 0x0004
    1644:	0800                	.insn	2, 0x0800
    1646:	0218                	.insn	2, 0x0218
    1648:	0000                	.insn	2, 0x
    164a:	281d                	.insn	2, 0x281d
    164c:	0001                	.insn	2, 0x0001
    164e:	0000                	.insn	2, 0x
    1650:	0000                	.insn	2, 0x
    1652:	f400                	.insn	2, 0xf400
    1654:	0039                	.insn	2, 0x0039
    1656:	e080                	.insn	2, 0xe080
    1658:	0000                	.insn	2, 0x
    165a:	3800                	.insn	2, 0x3800
    165c:	0100001b          	.insn	4, 0x0100001b
    1660:	0708                	.insn	2, 0x0708
    1662:	00000057          	.insn	4, 0x0057
    1666:	0401                	.insn	2, 0x0401
    1668:	00006107          	.insn	4, 0x6107
    166c:	0100                	.insn	2, 0x0100
    166e:	0404                	.insn	2, 0x0404
    1670:	001a                	.insn	2, 0x001a
    1672:	0000                	.insn	2, 0x
    1674:	0409                	.insn	2, 0x0409
    1676:	6905                	.insn	2, 0x6905
    1678:	746e                	.insn	2, 0x746e
    167a:	0100                	.insn	2, 0x0100
    167c:	0601                	.insn	2, 0x0601
    167e:	0090                	.insn	2, 0x0090
    1680:	0000                	.insn	2, 0x
    1682:	0801                	.insn	2, 0x0801
    1684:	4905                	.insn	2, 0x4905
    1686:	0000                	.insn	2, 0x
    1688:	0100                	.insn	2, 0x0100
    168a:	0801                	.insn	2, 0x0801
    168c:	008e                	.insn	2, 0x008e
    168e:	0000                	.insn	2, 0x
    1690:	2a0a                	.insn	2, 0x2a0a
    1692:	0001                	.insn	2, 0x0001
    1694:	0200                	.insn	2, 0x0200
    1696:	2d160147          	.insn	4, 0x2d160147
    169a:	0000                	.insn	2, 0x
    169c:	0100                	.insn	2, 0x0100
    169e:	0702                	.insn	2, 0x0702
    16a0:	00c1                	.insn	2, 0x00c1
    16a2:	0000                	.insn	2, 0x
    16a4:	0003fc0b          	.insn	4, 0x0003fc0b
    16a8:	0300                	.insn	2, 0x0300
    16aa:	0f41                	.insn	2, 0x0f41
    16ac:	0034                	.insn	2, 0x0034
    16ae:	0000                	.insn	2, 0x
    16b0:	040c                	.insn	2, 0x040c
    16b2:	a7034603          	lbu	a2,-1424(t1)
    16b6:	0000                	.insn	2, 0x
    16b8:	0500                	.insn	2, 0x0500
    16ba:	0399                	.insn	2, 0x0399
    16bc:	0000                	.insn	2, 0x
    16be:	2d4d                	.insn	2, 0x2d4d
    16c0:	0000                	.insn	2, 0x
    16c2:	1700                	.insn	2, 0x1700
    16c4:	0d00                	.insn	2, 0x0d00
    16c6:	7865                	.insn	2, 0x7865
    16c8:	0070                	.insn	2, 0x0070
    16ca:	2d0e4e03          	lbu	t3,720(t3)
    16ce:	0000                	.insn	2, 0x
    16d0:	0800                	.insn	2, 0x0800
    16d2:	032f0517          	auipc	a0,0x32f0
    16d6:	0000                	.insn	2, 0x
    16d8:	00002d4f          	.insn	4, 0x2d4f
    16dc:	0100                	.insn	2, 0x0100
    16de:	001f f00e 0003      	.insn	6, 0x0003f00e001f
    16e4:	0400                	.insn	2, 0x0400
    16e6:	cd074303          	lbu	t1,-816(a4)
    16ea:	0000                	.insn	2, 0x
    16ec:	0f00                	.insn	2, 0x0f00
    16ee:	6c66                	.insn	2, 0x6c66
    16f0:	0074                	.insn	2, 0x0074
    16f2:	6b0a4503          	lbu	a0,1712(s4)
    16f6:	0000                	.insn	2, 0x
    16f8:	1000                	.insn	2, 0x1000
    16fa:	03d0                	.insn	2, 0x03d0
    16fc:	0000                	.insn	2, 0x
    16fe:	77055103          	lhu	sp,1904(a0) # 32f1e42 <COOLING_THRESHOLD_ON+0x32f1de8>
    1702:	0000                	.insn	2, 0x
    1704:	0000                	.insn	2, 0x
    1706:	9311                	.insn	2, 0x9311
    1708:	0004                	.insn	2, 0x0004
    170a:	0100                	.insn	2, 0x0100
    170c:	0121                	.insn	2, 0x0121
    170e:	0000006b          	.insn	4, 0x006b
    1712:	39f4                	.insn	2, 0x39f4
    1714:	8000                	.insn	2, 0x8000
    1716:	00e0                	.insn	2, 0x00e0
    1718:	0000                	.insn	2, 0x
    171a:	9c01                	.insn	2, 0x9c01
    171c:	01f2                	.insn	2, 0x01f2
    171e:	0000                	.insn	2, 0x
    1720:	6912                	.insn	2, 0x6912
    1722:	0100                	.insn	2, 0x0100
    1724:	1821                	.insn	2, 0x1821
    1726:	00000057          	.insn	4, 0x0057
    172a:	00001253          	.insn	4, 0x1253
    172e:	0002da03          	lhu	s4,0(t0)
    1732:	2300                	.insn	2, 0x2300
    1734:	0000003b          	.insn	4, 0x003b
    1738:	1289                	.insn	2, 0x1289
    173a:	0000                	.insn	2, 0x
    173c:	00043a13          	sltiu	s4,s0,0
    1740:	0100                	.insn	2, 0x0100
    1742:	003b0323          	sb	gp,6(s6)
    1746:	0000                	.insn	2, 0x
    1748:	1400                	.insn	2, 0x1400
    174a:	5f41                	.insn	2, 0x5f41
    174c:	24010063          	beqz	sp,198c <COOLING_THRESHOLD_ON+0x1932>
    1750:	0001f203          	.insn	4, 0x0001f203
    1754:	1500                	.insn	2, 0x1500
    1756:	5f41                	.insn	2, 0x5f41
    1758:	24010073          	.insn	4, 0x24010073
    175c:	0001f203          	.insn	4, 0x0001f203
    1760:	0000                	.insn	2, 0x
    1762:	4104                	.insn	2, 0x4104
    1764:	655f 2400 f203      	.insn	6, 0xf2032400655f
    176a:	0001                	.insn	2, 0x0001
    176c:	a700                	.insn	2, 0xa700
    176e:	0012                	.insn	2, 0x0012
    1770:	0400                	.insn	2, 0x0400
    1772:	5f41                	.insn	2, 0x5f41
    1774:	0066                	.insn	2, 0x0066
    1776:	0324                	.insn	2, 0x0324
    1778:	01f9                	.insn	2, 0x01f9
    177a:	0000                	.insn	2, 0x
    177c:	12cd                	.insn	2, 0x12cd
    177e:	0000                	.insn	2, 0x
    1780:	6104                	.insn	2, 0x6104
    1782:	2500                	.insn	2, 0x2500
    1784:	6b0a                	.insn	2, 0x6b0a
    1786:	0000                	.insn	2, 0x
    1788:	e100                	.insn	2, 0xe100
    178a:	0012                	.insn	2, 0x0012
    178c:	0600                	.insn	2, 0x0600
    178e:	01b2                	.insn	2, 0x01b2
    1790:	0000                	.insn	2, 0x
    1792:	01dd                	.insn	2, 0x01dd
    1794:	0000                	.insn	2, 0x
    1796:	b116                	.insn	2, 0xb116
    1798:	0004                	.insn	2, 0x0004
    179a:	0100                	.insn	2, 0x0100
    179c:	0328                	.insn	2, 0x0328
    179e:	3a88                	.insn	2, 0x3a88
    17a0:	8000                	.insn	2, 0x8000
    17a2:	0001bd07          	.insn	4, 0x0001bd07
    17a6:	0300                	.insn	2, 0x0300
    17a8:	04a1                	.insn	2, 0x04a1
    17aa:	0000                	.insn	2, 0x
    17ac:	5728                	.insn	2, 0x5728
    17ae:	0000                	.insn	2, 0x
    17b0:	f300                	.insn	2, 0xf300
    17b2:	0012                	.insn	2, 0x0012
    17b4:	0600                	.insn	2, 0x0600
    17b6:	01c5                	.insn	2, 0x01c5
    17b8:	0000                	.insn	2, 0x
    17ba:	019d                	.insn	2, 0x019d
    17bc:	0000                	.insn	2, 0x
    17be:	0004be03          	.insn	4, 0x0004be03
    17c2:	2800                	.insn	2, 0x2800
    17c4:	0000003b          	.insn	4, 0x003b
    17c8:	0000131b          	.insn	4, 0x131b
    17cc:	003a1417          	auipc	s0,0x3a1
    17d0:	0080                	.insn	2, 0x0080
    17d2:	0002                	.insn	2, 0x0002
    17d4:	0000                	.insn	2, 0x
    17d6:	0001ce07          	.insn	4, 0x0001ce07
    17da:	0300                	.insn	2, 0x0300
    17dc:	04ce                	.insn	2, 0x04ce
    17de:	0000                	.insn	2, 0x
    17e0:	3b28                	.insn	2, 0x3b28
    17e2:	0000                	.insn	2, 0x
    17e4:	2e00                	.insn	2, 0x2e00
    17e6:	18000013          	li	zero,384
    17ea:	5402                	.insn	2, 0x5402
    17ec:	0004                	.insn	2, 0x0004
    17ee:	2800                	.insn	2, 0x2800
    17f0:	01f2                	.insn	2, 0x01f2
    17f2:	0000                	.insn	2, 0x
    17f4:	7e02                	.insn	2, 0x7e02
    17f6:	0004                	.insn	2, 0x0004
    17f8:	2800                	.insn	2, 0x2800
    17fa:	01f2                	.insn	2, 0x01f2
    17fc:	0000                	.insn	2, 0x
    17fe:	6902                	.insn	2, 0x6902
    1800:	0004                	.insn	2, 0x0004
    1802:	2800                	.insn	2, 0x2800
    1804:	01f2                	.insn	2, 0x01f2
    1806:	0000                	.insn	2, 0x
    1808:	3f02                	.insn	2, 0x3f02
    180a:	0004                	.insn	2, 0x0004
    180c:	2800                	.insn	2, 0x2800
    180e:	01f9                	.insn	2, 0x01f9
    1810:	0000                	.insn	2, 0x
    1812:	0000                	.insn	2, 0x
    1814:	0000                	.insn	2, 0x
    1816:	3419                	.insn	2, 0x3419
    1818:	003a                	.insn	2, 0x003a
    181a:	0c80                	.insn	2, 0x0c80
    181c:	0000                	.insn	2, 0x
    181e:	0200                	.insn	2, 0x0200
    1820:	02be                	.insn	2, 0x02be
    1822:	0000                	.insn	2, 0x
    1824:	a729                	.insn	2, 0xa729
    1826:	0000                	.insn	2, 0x
    1828:	0000                	.insn	2, 0x
    182a:	0100                	.insn	2, 0x0100
    182c:	0504                	.insn	2, 0x0504
    182e:	004e                	.insn	2, 0x004e
    1830:	0000                	.insn	2, 0x
    1832:	0401                	.insn	2, 0x0401
    1834:	00005c07          	.insn	4, 0x5c07
    1838:	1a00                	.insn	2, 0x1a00
    183a:	02d1                	.insn	2, 0x02d1
    183c:	0000                	.insn	2, 0x
    183e:	02d1                	.insn	2, 0x02d1
    1840:	0000                	.insn	2, 0x
    1842:	2d00                	.insn	2, 0x2d00
    1844:	0000                	.insn	2, 0x
    1846:	0500                	.insn	2, 0x0500
    1848:	0100                	.insn	2, 0x0100
    184a:	6d04                	.insn	2, 0x6d04
    184c:	0006                	.insn	2, 0x0006
    184e:	0100                	.insn	2, 0x0100
    1850:	00001e57          	.insn	4, 0x1e57
    1854:	3ad4                	.insn	2, 0x3ad4
    1856:	8000                	.insn	2, 0x8000
    1858:	e724                	.insn	2, 0xe724
    185a:	0004                	.insn	2, 0x0004
    185c:	1e00                	.insn	2, 0x1e00
    185e:	0005                	.insn	2, 0x0005
    1860:	8c00                	.insn	2, 0x8c00
    1862:	0005                	.insn	2, 0x0005
    1864:	0100                	.insn	2, 0x0100
    1866:	0280                	.insn	2, 0x0280
    1868:	0020                	.insn	2, 0x0020
    186a:	0000                	.insn	2, 0x
    186c:	003ad42f          	.insn	4, 0x003ad42f
    1870:	2480                	.insn	2, 0x2480
    1872:	005b0003          	lb	zero,5(s6)
    1876:	0000                	.insn	2, 0x
    1878:	0005                	.insn	2, 0x0005
    187a:	0401                	.insn	2, 0x0401
    187c:	0695                	.insn	2, 0x0695
    187e:	0000                	.insn	2, 0x
    1880:	d101                	.insn	2, 0xd101
    1882:	001e                	.insn	2, 0x001e
    1884:	f800                	.insn	2, 0xf800
    1886:	003a                	.insn	2, 0x003a
    1888:	b480                	.insn	2, 0xb480
    188a:	9801                	.insn	2, 0x9801
    188c:	0005                	.insn	2, 0x0005
    188e:	1e00                	.insn	2, 0x1e00
    1890:	0005                	.insn	2, 0x0005
    1892:	8c00                	.insn	2, 0x8c00
    1894:	0005                	.insn	2, 0x0005
    1896:	0100                	.insn	2, 0x0100
    1898:	0280                	.insn	2, 0x0280
    189a:	05cc                	.insn	2, 0x05cc
    189c:	0000                	.insn	2, 0x
    189e:	f85d                	.insn	2, 0xf85d
    18a0:	003a                	.insn	2, 0x003a
    18a2:	8480                	.insn	2, 0x8480
    18a4:	0201                	.insn	2, 0x0201
    18a6:	05de                	.insn	2, 0x05de
    18a8:	0000                	.insn	2, 0x
    18aa:	005d                	.insn	2, 0x005d
    18ac:	4880003b          	.insn	4, 0x4880003b
    18b0:	d502                	.insn	2, 0xd502
    18b2:	0005                	.insn	2, 0x0005
    18b4:	5d00                	.insn	2, 0x5d00
    18b6:	3b00                	.insn	2, 0x3b00
    18b8:	8000                	.insn	2, 0x8000
    18ba:	0248                	.insn	2, 0x0248
    18bc:	000000eb          	.insn	4, 0x00eb
    18c0:	485d                	.insn	2, 0x485d
    18c2:	1080003b          	.insn	4, 0x1080003b
    18c6:	e802                	.insn	2, 0xe802
    18c8:	0005                	.insn	2, 0x0005
    18ca:	5d00                	.insn	2, 0x5d00
    18cc:	3b7c                	.insn	2, 0x3b7c
    18ce:	8000                	.insn	2, 0x8000
    18d0:	0330                	.insn	2, 0x0330
    18d2:	d400                	.insn	2, 0xd400
    18d4:	0000                	.insn	2, 0x
    18d6:	0500                	.insn	2, 0x0500
    18d8:	0100                	.insn	2, 0x0100
    18da:	bd04                	.insn	2, 0xbd04
    18dc:	0006                	.insn	2, 0x0006
    18de:	0300                	.insn	2, 0x0300
    18e0:	0218                	.insn	2, 0x0218
    18e2:	0000                	.insn	2, 0x
    18e4:	6e1d                	.insn	2, 0x6e1d
    18e6:	0000                	.insn	2, 0x
    18e8:	0000                	.insn	2, 0x
    18ea:	0000                	.insn	2, 0x
    18ec:	2400                	.insn	2, 0x2400
    18ee:	0020                	.insn	2, 0x0020
    18f0:	0400                	.insn	2, 0x0400
    18f2:	0504                	.insn	2, 0x0504
    18f4:	6e69                	.insn	2, 0x6e69
    18f6:	0074                	.insn	2, 0x0074
    18f8:	0401                	.insn	2, 0x0401
    18fa:	00006107          	.insn	4, 0x6107
    18fe:	0100                	.insn	2, 0x0100
    1900:	0508                	.insn	2, 0x0508
    1902:	0049                	.insn	2, 0x0049
    1904:	0000                	.insn	2, 0x
    1906:	1001                	.insn	2, 0x1001
    1908:	1e04                	.insn	2, 0x1e04
    190a:	0001                	.insn	2, 0x0001
    190c:	0100                	.insn	2, 0x0100
    190e:	0801                	.insn	2, 0x0801
    1910:	008e                	.insn	2, 0x008e
    1912:	0000                	.insn	2, 0x
    1914:	0101                	.insn	2, 0x0101
    1916:	9708                	.insn	2, 0x9708
    1918:	0000                	.insn	2, 0x
    191a:	0100                	.insn	2, 0x0100
    191c:	0601                	.insn	2, 0x0601
    191e:	0090                	.insn	2, 0x0090
    1920:	0000                	.insn	2, 0x
    1922:	b005                	.insn	2, 0xb005
    1924:	0000                	.insn	2, 0x
    1926:	0100                	.insn	2, 0x0100
    1928:	003a167b          	.insn	4, 0x003a167b
    192c:	0000                	.insn	2, 0x
    192e:	4f02                	.insn	2, 0x4f02
    1930:	0000                	.insn	2, 0x
    1932:	0100                	.insn	2, 0x0100
    1934:	0502                	.insn	2, 0x0502
    1936:	0029                	.insn	2, 0x0029
    1938:	0000                	.insn	2, 0x
    193a:	0201                	.insn	2, 0x0201
    193c:	0000c107          	.insn	4, 0xc107
    1940:	0100                	.insn	2, 0x0100
    1942:	0708                	.insn	2, 0x0708
    1944:	00000057          	.insn	4, 0x0057
    1948:	0201                	.insn	2, 0x0201
    194a:	8504                	.insn	2, 0x8504
    194c:	0000                	.insn	2, 0x
    194e:	0100                	.insn	2, 0x0100
    1950:	0304                	.insn	2, 0x0304
    1952:	007d                	.insn	2, 0x007d
    1954:	0000                	.insn	2, 0x
    1956:	0401                	.insn	2, 0x0401
    1958:	1a04                	.insn	2, 0x1a04
    195a:	0000                	.insn	2, 0x
    195c:	0100                	.insn	2, 0x0100
    195e:	0308                	.insn	2, 0x0308
    1960:	0012                	.insn	2, 0x0012
    1962:	0000                	.insn	2, 0x
    1964:	0801                	.insn	2, 0x0801
    1966:	2304                	.insn	2, 0x2304
    1968:	0001                	.insn	2, 0x0001
    196a:	0100                	.insn	2, 0x0100
    196c:	0310                	.insn	2, 0x0310
    196e:	00f5                	.insn	2, 0x00f5
    1970:	0000                	.insn	2, 0x
    1972:	2001                	.insn	2, 0x2001
    1974:	00011603          	lh	a2,0(sp) # 0 <TRANSMISSION_TIME-0x1>
    1978:	0600                	.insn	2, 0x0600
    197a:	0000005b          	.insn	4, 0x005b
    197e:	00b6                	.insn	2, 0x00b6
    1980:	0000                	.insn	2, 0x
    1982:	00002507          	.insn	4, 0x2507
    1986:	ff00                	.insn	2, 0xff00
    1988:	0200                	.insn	2, 0x0200
    198a:	00a6                	.insn	2, 0x00a6
    198c:	0000                	.insn	2, 0x
    198e:	7308                	.insn	2, 0x7308
    1990:	0000                	.insn	2, 0x
    1992:	0100                	.insn	2, 0x0100
    1994:	0206                	.insn	2, 0x0206
    1996:	b616                	.insn	2, 0xb616
    1998:	0000                	.insn	2, 0x
    199a:	0900                	.insn	2, 0x0900
    199c:	000000bb          	.insn	4, 0x00bb
    19a0:	9e02                	.insn	2, 0x9e02
    19a2:	0f02                	.insn	2, 0x0f02
    19a4:	0305                	.insn	2, 0x0305
    19a6:	4ec4                	.insn	2, 0x4ec4
    19a8:	8000                	.insn	2, 0x8000
    19aa:	3e00                	.insn	2, 0x3e00
    19ac:	0001                	.insn	2, 0x0001
    19ae:	0500                	.insn	2, 0x0500
    19b0:	0100                	.insn	2, 0x0100
    19b2:	2d04                	.insn	2, 0x2d04
    19b4:	04000007          	.insn	4, 0x04000007
    19b8:	0218                	.insn	2, 0x0218
    19ba:	0000                	.insn	2, 0x
    19bc:	6e1d                	.insn	2, 0x6e1d
    19be:	0000                	.insn	2, 0x
    19c0:	0000                	.insn	2, 0x
    19c2:	0000                	.insn	2, 0x
    19c4:	ac00                	.insn	2, 0xac00
    19c6:	4c80003b          	.insn	4, 0x4c80003b
    19ca:	0000                	.insn	2, 0x
    19cc:	6300                	.insn	2, 0x6300
    19ce:	0020                	.insn	2, 0x0020
    19d0:	0100                	.insn	2, 0x0100
    19d2:	0708                	.insn	2, 0x0708
    19d4:	00000057          	.insn	4, 0x0057
    19d8:	0401                	.insn	2, 0x0401
    19da:	00006107          	.insn	4, 0x6107
    19de:	0500                	.insn	2, 0x0500
    19e0:	0504                	.insn	2, 0x0504
    19e2:	6e69                	.insn	2, 0x6e69
    19e4:	0074                	.insn	2, 0x0074
    19e6:	0801                	.insn	2, 0x0801
    19e8:	4905                	.insn	2, 0x4905
    19ea:	0000                	.insn	2, 0x
    19ec:	0100                	.insn	2, 0x0100
    19ee:	0410                	.insn	2, 0x0410
    19f0:	011e                	.insn	2, 0x011e
    19f2:	0000                	.insn	2, 0x
    19f4:	0101                	.insn	2, 0x0101
    19f6:	8e08                	.insn	2, 0x8e08
    19f8:	0000                	.insn	2, 0x
    19fa:	0100                	.insn	2, 0x0100
    19fc:	0801                	.insn	2, 0x0801
    19fe:	00000097          	auipc	ra,0x0
    1a02:	0101                	.insn	2, 0x0101
    1a04:	9006                	.insn	2, 0x9006
    1a06:	0000                	.insn	2, 0x
    1a08:	0200                	.insn	2, 0x0200
    1a0a:	00b0                	.insn	2, 0x00b0
    1a0c:	0000                	.insn	2, 0x
    1a0e:	0049167b          	.insn	4, 0x0049167b
    1a12:	0000                	.insn	2, 0x
    1a14:	00005e03          	lhu	t3,0(zero) # 0 <TRANSMISSION_TIME-0x1>
    1a18:	0100                	.insn	2, 0x0100
    1a1a:	0502                	.insn	2, 0x0502
    1a1c:	0029                	.insn	2, 0x0029
    1a1e:	0000                	.insn	2, 0x
    1a20:	0201                	.insn	2, 0x0201
    1a22:	0000c107          	.insn	4, 0xc107
    1a26:	0200                	.insn	2, 0x0200
    1a28:	0000012b          	.insn	4, 0x012b
    1a2c:	0f80                	.insn	2, 0x0f80
    1a2e:	0034                	.insn	2, 0x0034
    1a30:	0000                	.insn	2, 0x
    1a32:	2a02                	.insn	2, 0x2a02
    1a34:	0001                	.insn	2, 0x0001
    1a36:	8100                	.insn	2, 0x8100
    1a38:	2d16                	.insn	2, 0x2d16
    1a3a:	0000                	.insn	2, 0x
    1a3c:	0100                	.insn	2, 0x0100
    1a3e:	0402                	.insn	2, 0x0402
    1a40:	0085                	.insn	2, 0x0085
    1a42:	0000                	.insn	2, 0x
    1a44:	0401                	.insn	2, 0x0401
    1a46:	00007d03          	.insn	4, 0x7d03
    1a4a:	0100                	.insn	2, 0x0100
    1a4c:	0404                	.insn	2, 0x0404
    1a4e:	001a                	.insn	2, 0x001a
    1a50:	0000                	.insn	2, 0x
    1a52:	0801                	.insn	2, 0x0801
    1a54:	00001203          	lh	tp,0(zero) # 0 <TRANSMISSION_TIME-0x1>
    1a58:	0100                	.insn	2, 0x0100
    1a5a:	0408                	.insn	2, 0x0408
    1a5c:	00000123          	sb	zero,2(zero) # 2 <TRANSMISSION_TIME+0x1>
    1a60:	1001                	.insn	2, 0x1001
    1a62:	0000f503          	.insn	4, 0xf503
    1a66:	0100                	.insn	2, 0x0100
    1a68:	0320                	.insn	2, 0x0320
    1a6a:	0116                	.insn	2, 0x0116
    1a6c:	0000                	.insn	2, 0x
    1a6e:	6906                	.insn	2, 0x6906
    1a70:	0000                	.insn	2, 0x
    1a72:	d300                	.insn	2, 0xd300
    1a74:	0000                	.insn	2, 0x
    1a76:	0700                	.insn	2, 0x0700
    1a78:	002d                	.insn	2, 0x002d
    1a7a:	0000                	.insn	2, 0x
    1a7c:	00ff c303 0000 0800 	.insn	10, 0x007308000000c30300ff
    1a84:	0073 
    1a86:	0000                	.insn	2, 0x
    1a88:	0602                	.insn	2, 0x0602
    1a8a:	1602                	.insn	2, 0x1602
    1a8c:	000000d3          	.insn	4, 0x00d3
    1a90:	d109                	.insn	2, 0xd109
    1a92:	0002                	.insn	2, 0x0002
    1a94:	0100                	.insn	2, 0x0100
    1a96:	02ae                	.insn	2, 0x02ae
    1a98:	3401                	.insn	2, 0x3401
    1a9a:	0000                	.insn	2, 0x
    1a9c:	ac00                	.insn	2, 0xac00
    1a9e:	4c80003b          	.insn	4, 0x4c80003b
    1aa2:	0000                	.insn	2, 0x
    1aa4:	0100                	.insn	2, 0x0100
    1aa6:	0a9c                	.insn	2, 0x0a9c
    1aa8:	0078                	.insn	2, 0x0078
    1aaa:	ae01                	.insn	2, 0xae01
    1aac:	1202                	.insn	2, 0x1202
    1aae:	00000087          	.insn	4, 0x0087
    1ab2:	00001343          	.insn	4, 0x1343
    1ab6:	7465720b          	.insn	4, 0x7465720b
    1aba:	0100                	.insn	2, 0x0100
    1abc:	02b0                	.insn	2, 0x02b0
    1abe:	7c09                	.insn	2, 0x7c09
    1ac0:	0000                	.insn	2, 0x
    1ac2:	0c00                	.insn	2, 0x0c00
    1ac4:	01e5                	.insn	2, 0x01e5
    1ac6:	0000                	.insn	2, 0x
    1ac8:	320d                	.insn	2, 0x320d
    1aca:	0001                	.insn	2, 0x0001
    1acc:	0100                	.insn	2, 0x0100
    1ace:	02b2                	.insn	2, 0x02b2
    1ad0:	00008703          	lb	a4,0(ra) # 19fe <COOLING_THRESHOLD_ON+0x19a4>
    1ad4:	5c00                	.insn	2, 0x5c00
    1ad6:	0e000013          	li	zero,224
    1ada:	5f5f 0061 b201      	.insn	6, 0xb20100615f5f
    1ae0:	0302                	.insn	2, 0x0302
    1ae2:	00000087          	.insn	4, 0x0087
    1ae6:	1375                	.insn	2, 0x1375
    1ae8:	0000                	.insn	2, 0x
    1aea:	0000                	.insn	2, 0x
	...

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	3401                	.insn	2, 0x3401
   2:	3100                	.insn	2, 0x3100
   4:	00170213          	addi	tp,a4,1
   8:	0200                	.insn	2, 0x0200
   a:	0034                	.insn	2, 0x0034
   c:	213a0e03          	lb	t3,531(s4)
  10:	3b01                	.insn	2, 0x3b01
  12:	3905                	.insn	2, 0x3905
  14:	0013490b          	.insn	4, 0x0013490b
  18:	0300                	.insn	2, 0x0300
  1a:	0034                	.insn	2, 0x0034
  1c:	213a0803          	lb	a6,531(s4)
  20:	3b01                	.insn	2, 0x3b01
  22:	3905                	.insn	2, 0x3905
  24:	0013490b          	.insn	4, 0x0013490b
  28:	0400                	.insn	2, 0x0400
  2a:	0048                	.insn	2, 0x0048
  2c:	017d                	.insn	2, 0x017d
  2e:	0000137f 0b002405 	.insn	12, 0x030b3e0b0b0024050000137f
  36:	030b3e0b 
  3a:	000e                	.insn	2, 0x000e
  3c:	0600                	.insn	2, 0x0600
  3e:	1301010b          	.insn	4, 0x1301010b
  42:	0000                	.insn	2, 0x
  44:	31003407          	.insn	4, 0x31003407
  48:	00180213          	addi	tp,a6,1 # 32f131d <COOLING_THRESHOLD_ON+0x32f12c3>
  4c:	0800                	.insn	2, 0x0800
  4e:	0016                	.insn	2, 0x0016
  50:	213a0e03          	lb	t3,531(s4)
  54:	3b02                	.insn	2, 0x3b02
  56:	490b390b          	.insn	4, 0x490b390b
  5a:	09000013          	li	zero,144
  5e:	1331010b          	.insn	4, 0x1331010b
  62:	1755                	.insn	2, 0x1755
  64:	1301                	.insn	2, 0x1301
  66:	0000                	.insn	2, 0x
  68:	0b0a                	.insn	2, 0x0b0a
  6a:	3101                	.insn	2, 0x3101
  6c:	12011113          	.insn	4, 0x12011113
  70:	0106                	.insn	2, 0x0106
  72:	0b000013          	li	zero,176
  76:	0034                	.insn	2, 0x0034
  78:	1331                	.insn	2, 0x1331
  7a:	0000                	.insn	2, 0x
  7c:	260c                	.insn	2, 0x260c
  7e:	4900                	.insn	2, 0x4900
  80:	0d000013          	li	zero,208
  84:	0005                	.insn	2, 0x0005
  86:	1331                	.insn	2, 0x1331
  88:	1702                	.insn	2, 0x1702
  8a:	0000                	.insn	2, 0x
  8c:	0b0e                	.insn	2, 0x0b0e
  8e:	3101                	.insn	2, 0x3101
  90:	00175513          	srli	a0,a4,0x1
  94:	0f00                	.insn	2, 0x0f00
  96:	0005                	.insn	2, 0x0005
  98:	213a0803          	lb	a6,531(s4)
  9c:	3b01                	.insn	2, 0x3b01
  9e:	e321                	.insn	2, 0xe321
  a0:	490b3907          	.insn	4, 0x490b3907
  a4:	10000013          	li	zero,256
  a8:	0000010b          	.insn	4, 0x010b
  ac:	2e11                	.insn	2, 0x2e11
  ae:	3f00                	.insn	2, 0x3f00
  b0:	3c19                	.insn	2, 0x3c19
  b2:	6e19                	.insn	2, 0x6e19
  b4:	030e                	.insn	2, 0x030e
  b6:	000e                	.insn	2, 0x000e
  b8:	1200                	.insn	2, 0x1200
  ba:	000d                	.insn	2, 0x000d
  bc:	213a0803          	lb	a6,531(s4)
  c0:	3b02                	.insn	2, 0x3b02
  c2:	3905                	.insn	2, 0x3905
  c4:	0013490b          	.insn	4, 0x0013490b
  c8:	1300                	.insn	2, 0x1300
  ca:	0005                	.insn	2, 0x0005
  cc:	213a0803          	lb	a6,531(s4)
  d0:	3b01                	.insn	2, 0x3b01
  d2:	9221                	.insn	2, 0x9221
  d4:	390a                	.insn	2, 0x390a
  d6:	0213490b          	.insn	4, 0x0213490b
  da:	14000017          	auipc	zero,0x14000
  de:	0111                	.insn	2, 0x0111
  e0:	0e25                	.insn	2, 0x0e25
  e2:	1f030b13          	addi	s6,t1,496
  e6:	01111f1b          	.insn	4, 0x01111f1b
  ea:	0612                	.insn	2, 0x0612
  ec:	1710                	.insn	2, 0x1710
  ee:	0000                	.insn	2, 0x
  f0:	2415                	.insn	2, 0x2415
  f2:	0b00                	.insn	2, 0x0b00
  f4:	030b3e0b          	.insn	4, 0x030b3e0b
  f8:	0008                	.insn	2, 0x0008
  fa:	1600                	.insn	2, 0x1600
  fc:	0e030113          	addi	sp,t1,224
 100:	0b3a0b0b          	.insn	4, 0x0b3a0b0b
 104:	0b39053b          	.insn	4, 0x0b39053b
 108:	1301                	.insn	2, 0x1301
 10a:	0000                	.insn	2, 0x
 10c:	03000d17          	auipc	s10,0x3000
 110:	3a08                	.insn	2, 0x3a08
 112:	39053b0b          	.insn	4, 0x39053b0b
 116:	3813490b          	.insn	4, 0x3813490b
 11a:	1800000b          	.insn	4, 0x1800000b
 11e:	000d                	.insn	2, 0x000d
 120:	0b3a0e03          	lb	t3,179(s4)
 124:	0b39053b          	.insn	4, 0x0b39053b
 128:	1349                	.insn	2, 0x1349
 12a:	0b38                	.insn	2, 0x0b38
 12c:	0000                	.insn	2, 0x
 12e:	1719                	.insn	2, 0x1719
 130:	0b01                	.insn	2, 0x0b01
 132:	3b0b3a0b          	.insn	4, 0x3b0b3a0b
 136:	3905                	.insn	2, 0x3905
 138:	0013010b          	.insn	4, 0x0013010b
 13c:	1a00                	.insn	2, 0x1a00
 13e:	0016                	.insn	2, 0x0016
 140:	0b3a0e03          	lb	t3,179(s4)
 144:	0b39053b          	.insn	4, 0x0b39053b
 148:	1349                	.insn	2, 0x1349
 14a:	0000                	.insn	2, 0x
 14c:	4901011b          	.insn	4, 0x4901011b
 150:	00130113          	addi	sp,t1,1
 154:	1c00                	.insn	2, 0x1c00
 156:	0021                	.insn	2, 0x0021
 158:	1349                	.insn	2, 0x1349
 15a:	00000b2f          	.insn	4, 0x0b2f
 15e:	341d                	.insn	2, 0x341d
 160:	0300                	.insn	2, 0x0300
 162:	3a0e                	.insn	2, 0x3a0e
 164:	39053b0b          	.insn	4, 0x39053b0b
 168:	3f13490b          	.insn	4, 0x3f13490b
 16c:	3c19                	.insn	2, 0x3c19
 16e:	0019                	.insn	2, 0x0019
 170:	1e00                	.insn	2, 0x1e00
 172:	012e                	.insn	2, 0x012e
 174:	0e03193f 053b0b3a 	.insn	8, 0x053b0b3a0e03193f
 17c:	0b39                	.insn	2, 0x0b39
 17e:	13491927          	.insn	4, 0x13491927
 182:	0111                	.insn	2, 0x0111
 184:	0612                	.insn	2, 0x0612
 186:	1840                	.insn	2, 0x1840
 188:	197a                	.insn	2, 0x197a
 18a:	1301                	.insn	2, 0x1301
 18c:	0000                	.insn	2, 0x
 18e:	1d1f 3101 5213      	.insn	6, 0x521331011d1f
 194:	5501                	.insn	2, 0x5501
 196:	590b5817          	auipc	a6,0x590b5
 19a:	5705                	.insn	2, 0x5705
 19c:	2000000b          	.insn	4, 0x2000000b
 1a0:	1755010b          	.insn	4, 0x1755010b
 1a4:	0000                	.insn	2, 0x
 1a6:	2e21                	.insn	2, 0x2e21
 1a8:	0301                	.insn	2, 0x0301
 1aa:	3a0e                	.insn	2, 0x3a0e
 1ac:	39053b0b          	.insn	4, 0x39053b0b
 1b0:	4919270b          	.insn	4, 0x4919270b
 1b4:	010b2013          	slti	zero,s6,16
 1b8:	22000013          	li	zero,544
 1bc:	0b0b000f          	.insn	4, 0x0b0b000f
 1c0:	1349                	.insn	2, 0x1349
 1c2:	0000                	.insn	2, 0x
 1c4:	0100                	.insn	2, 0x0100
 1c6:	0034                	.insn	2, 0x0034
 1c8:	1331                	.insn	2, 0x1331
 1ca:	1702                	.insn	2, 0x1702
 1cc:	0000                	.insn	2, 0x
 1ce:	3402                	.insn	2, 0x3402
 1d0:	0300                	.insn	2, 0x0300
 1d2:	3a0e                	.insn	2, 0x3a0e
 1d4:	0121                	.insn	2, 0x0121
 1d6:	0b39053b          	.insn	4, 0x0b39053b
 1da:	1349                	.insn	2, 0x1349
 1dc:	0000                	.insn	2, 0x
 1de:	03003403          	.insn	4, 0x03003403
 1e2:	3a08                	.insn	2, 0x3a08
 1e4:	0121                	.insn	2, 0x0121
 1e6:	0b39053b          	.insn	4, 0x0b39053b
 1ea:	1349                	.insn	2, 0x1349
 1ec:	0000                	.insn	2, 0x
 1ee:	4804                	.insn	2, 0x4804
 1f0:	7d00                	.insn	2, 0x7d00
 1f2:	7f01                	.insn	2, 0x7f01
 1f4:	05000013          	li	zero,80
 1f8:	0024                	.insn	2, 0x0024
 1fa:	0b3e0b0b          	.insn	4, 0x0b3e0b0b
 1fe:	00000e03          	lb	t3,0(zero) # 0 <TRANSMISSION_TIME-0x1>
 202:	3406                	.insn	2, 0x3406
 204:	3100                	.insn	2, 0x3100
 206:	00180213          	addi	tp,a6,1 # 590b5197 <COOLING_THRESHOLD_ON+0x590b513d>
 20a:	0700                	.insn	2, 0x0700
 20c:	1301010b          	.insn	4, 0x1301010b
 210:	0000                	.insn	2, 0x
 212:	3408                	.insn	2, 0x3408
 214:	3100                	.insn	2, 0x3100
 216:	09000013          	li	zero,144
 21a:	1331010b          	.insn	4, 0x1331010b
 21e:	0111                	.insn	2, 0x0111
 220:	0612                	.insn	2, 0x0612
 222:	1301                	.insn	2, 0x1301
 224:	0000                	.insn	2, 0x
 226:	0b0a                	.insn	2, 0x0b0a
 228:	3101                	.insn	2, 0x3101
 22a:	01175513          	srli	a0,a4,0x11
 22e:	0b000013          	li	zero,176
 232:	0016                	.insn	2, 0x0016
 234:	213a0e03          	lb	t3,531(s4)
 238:	3b02                	.insn	2, 0x3b02
 23a:	490b390b          	.insn	4, 0x490b390b
 23e:	0c000013          	li	zero,192
 242:	0026                	.insn	2, 0x0026
 244:	1349                	.insn	2, 0x1349
 246:	0000                	.insn	2, 0x
 248:	050d                	.insn	2, 0x050d
 24a:	3100                	.insn	2, 0x3100
 24c:	00170213          	addi	tp,a4,1
 250:	0e00                	.insn	2, 0x0e00
 252:	0005                	.insn	2, 0x0005
 254:	213a0803          	lb	a6,531(s4)
 258:	3b01                	.insn	2, 0x3b01
 25a:	e321                	.insn	2, 0xe321
 25c:	490b3907          	.insn	4, 0x490b3907
 260:	0f000013          	li	zero,240
 264:	0000010b          	.insn	4, 0x010b
 268:	2e10                	.insn	2, 0x2e10
 26a:	3f00                	.insn	2, 0x3f00
 26c:	3c19                	.insn	2, 0x3c19
 26e:	6e19                	.insn	2, 0x6e19
 270:	030e                	.insn	2, 0x030e
 272:	000e                	.insn	2, 0x000e
 274:	1100                	.insn	2, 0x1100
 276:	000d                	.insn	2, 0x000d
 278:	213a0803          	lb	a6,531(s4)
 27c:	3b02                	.insn	2, 0x3b02
 27e:	3905                	.insn	2, 0x3905
 280:	0013490b          	.insn	4, 0x0013490b
 284:	1200                	.insn	2, 0x1200
 286:	0005                	.insn	2, 0x0005
 288:	213a0803          	lb	a6,531(s4)
 28c:	3b01                	.insn	2, 0x3b01
 28e:	8621                	.insn	2, 0x8621
 290:	390a                	.insn	2, 0x390a
 292:	0213490b          	.insn	4, 0x0213490b
 296:	13000017          	auipc	zero,0x13000
 29a:	1331010b          	.insn	4, 0x1331010b
 29e:	0111                	.insn	2, 0x0111
 2a0:	0612                	.insn	2, 0x0612
 2a2:	0000                	.insn	2, 0x
 2a4:	1114                	.insn	2, 0x1114
 2a6:	2501                	.insn	2, 0x2501
 2a8:	130e                	.insn	2, 0x130e
 2aa:	1b1f030b          	.insn	4, 0x1b1f030b
 2ae:	111f 1201 1006      	.insn	6, 0x10061201111f
 2b4:	15000017          	auipc	zero,0x15000
 2b8:	0024                	.insn	2, 0x0024
 2ba:	0b3e0b0b          	.insn	4, 0x0b3e0b0b
 2be:	00000803          	lb	a6,0(zero) # 0 <TRANSMISSION_TIME-0x1>
 2c2:	1316                	.insn	2, 0x1316
 2c4:	0301                	.insn	2, 0x0301
 2c6:	0b0e                	.insn	2, 0x0b0e
 2c8:	3b0b3a0b          	.insn	4, 0x3b0b3a0b
 2cc:	3905                	.insn	2, 0x3905
 2ce:	0013010b          	.insn	4, 0x0013010b
 2d2:	1700                	.insn	2, 0x1700
 2d4:	000d                	.insn	2, 0x000d
 2d6:	0b3a0803          	lb	a6,179(s4)
 2da:	0b39053b          	.insn	4, 0x0b39053b
 2de:	1349                	.insn	2, 0x1349
 2e0:	0b38                	.insn	2, 0x0b38
 2e2:	0000                	.insn	2, 0x
 2e4:	0d18                	.insn	2, 0x0d18
 2e6:	0300                	.insn	2, 0x0300
 2e8:	3a0e                	.insn	2, 0x3a0e
 2ea:	39053b0b          	.insn	4, 0x39053b0b
 2ee:	3813490b          	.insn	4, 0x3813490b
 2f2:	1900000b          	.insn	4, 0x1900000b
 2f6:	0b0b0117          	auipc	sp,0xb0b0
 2fa:	0b3a                	.insn	2, 0x0b3a
 2fc:	0b39053b          	.insn	4, 0x0b39053b
 300:	1301                	.insn	2, 0x1301
 302:	0000                	.insn	2, 0x
 304:	161a                	.insn	2, 0x161a
 306:	0300                	.insn	2, 0x0300
 308:	3a0e                	.insn	2, 0x3a0e
 30a:	39053b0b          	.insn	4, 0x39053b0b
 30e:	0013490b          	.insn	4, 0x0013490b
 312:	1b00                	.insn	2, 0x1b00
 314:	0101                	.insn	2, 0x0101
 316:	1349                	.insn	2, 0x1349
 318:	1301                	.insn	2, 0x1301
 31a:	0000                	.insn	2, 0x
 31c:	211c                	.insn	2, 0x211c
 31e:	4900                	.insn	2, 0x4900
 320:	000b2f13          	slti	t5,s6,0
 324:	1d00                	.insn	2, 0x1d00
 326:	0034                	.insn	2, 0x0034
 328:	0b3a0e03          	lb	t3,179(s4)
 32c:	0b39053b          	.insn	4, 0x0b39053b
 330:	1349                	.insn	2, 0x1349
 332:	193c193f 2e1e0000 	.insn	8, 0x2e1e0000193c193f
 33a:	3f01                	.insn	2, 0x3f01
 33c:	0319                	.insn	2, 0x0319
 33e:	3a0e                	.insn	2, 0x3a0e
 340:	39053b0b          	.insn	4, 0x39053b0b
 344:	4919270b          	.insn	4, 0x4919270b
 348:	12011113          	.insn	4, 0x12011113
 34c:	4006                	.insn	2, 0x4006
 34e:	7a18                	.insn	2, 0x7a18
 350:	0119                	.insn	2, 0x0119
 352:	1f000013          	li	zero,496
 356:	0034                	.insn	2, 0x0034
 358:	0b3a0803          	lb	a6,179(s4)
 35c:	0b39053b          	.insn	4, 0x0b39053b
 360:	1349                	.insn	2, 0x1349
 362:	1702                	.insn	2, 0x1702
 364:	0000                	.insn	2, 0x
 366:	1d20                	.insn	2, 0x1d20
 368:	3101                	.insn	2, 0x3101
 36a:	55015213          	.insn	4, 0x55015213
 36e:	590b5817          	auipc	a6,0x590b5
 372:	5705                	.insn	2, 0x5705
 374:	2100000b          	.insn	4, 0x2100000b
 378:	1755010b          	.insn	4, 0x1755010b
 37c:	0000                	.insn	2, 0x
 37e:	0b22                	.insn	2, 0x0b22
 380:	3101                	.insn	2, 0x3101
 382:	00175513          	srli	a0,a4,0x1
 386:	2300                	.insn	2, 0x2300
 388:	012e                	.insn	2, 0x012e
 38a:	0b3a0e03          	lb	t3,179(s4)
 38e:	0b39053b          	.insn	4, 0x0b39053b
 392:	13491927          	.insn	4, 0x13491927
 396:	0b20                	.insn	2, 0x0b20
 398:	1301                	.insn	2, 0x1301
 39a:	0000                	.insn	2, 0x
 39c:	0f24                	.insn	2, 0x0f24
 39e:	0b00                	.insn	2, 0x0b00
 3a0:	0013490b          	.insn	4, 0x0013490b
 3a4:	0000                	.insn	2, 0x
 3a6:	3401                	.insn	2, 0x3401
 3a8:	0300                	.insn	2, 0x0300
 3aa:	3a0e                	.insn	2, 0x3a0e
 3ac:	0121                	.insn	2, 0x0121
 3ae:	21390b3b          	.insn	4, 0x21390b3b
 3b2:	02134903          	lbu	s2,33(t1)
 3b6:	02000017          	auipc	zero,0x2000
 3ba:	0034                	.insn	2, 0x0034
 3bc:	213a0803          	lb	a6,531(s4)
 3c0:	3b01                	.insn	2, 0x3b01
 3c2:	490b390b          	.insn	4, 0x490b390b
 3c6:	00170213          	addi	tp,a4,1
 3ca:	0300                	.insn	2, 0x0300
 3cc:	0024                	.insn	2, 0x0024
 3ce:	0b3e0b0b          	.insn	4, 0x0b3e0b0b
 3d2:	00000e03          	lb	t3,0(zero) # 0 <TRANSMISSION_TIME-0x1>
 3d6:	3404                	.insn	2, 0x3404
 3d8:	0300                	.insn	2, 0x0300
 3da:	3a0e                	.insn	2, 0x3a0e
 3dc:	0121                	.insn	2, 0x0121
 3de:	21390b3b          	.insn	4, 0x21390b3b
 3e2:	00134903          	lbu	s2,1(t1)
 3e6:	0500                	.insn	2, 0x0500
 3e8:	0048                	.insn	2, 0x0048
 3ea:	017d                	.insn	2, 0x017d
 3ec:	0000137f 55010b06 	.insn	12, 0x0013011755010b060000137f
 3f4:	00130117 
 3f8:	0700                	.insn	2, 0x0700
 3fa:	002e                	.insn	2, 0x002e
 3fc:	193c193f 0e030e6e 	.insn	8, 0x0e030e6e193c193f
 404:	0000                	.insn	2, 0x
 406:	0d08                	.insn	2, 0x0d08
 408:	0300                	.insn	2, 0x0300
 40a:	3a0e                	.insn	2, 0x3a0e
 40c:	0221                	.insn	2, 0x0221
 40e:	21390b3b          	.insn	4, 0x21390b3b
 412:	490e                	.insn	2, 0x490e
 414:	6b0b0d13          	addi	s10,s6,1712
 418:	0900000b          	.insn	4, 0x0900000b
 41c:	0005                	.insn	2, 0x0005
 41e:	213a0803          	lb	a6,531(s4)
 422:	3b01                	.insn	2, 0x3b01
 424:	2121                	.insn	2, 0x2121
 426:	0b39                	.insn	2, 0x0b39
 428:	1349                	.insn	2, 0x1349
 42a:	1702                	.insn	2, 0x1702
 42c:	0000                	.insn	2, 0x
 42e:	0b0a                	.insn	2, 0x0b0a
 430:	5501                	.insn	2, 0x5501
 432:	0b000017          	auipc	zero,0xb000
 436:	0111                	.insn	2, 0x0111
 438:	0e25                	.insn	2, 0x0e25
 43a:	1f030b13          	addi	s6,t1,496
 43e:	01111f1b          	.insn	4, 0x01111f1b
 442:	0612                	.insn	2, 0x0612
 444:	1710                	.insn	2, 0x1710
 446:	0000                	.insn	2, 0x
 448:	240c                	.insn	2, 0x240c
 44a:	0b00                	.insn	2, 0x0b00
 44c:	030b3e0b          	.insn	4, 0x030b3e0b
 450:	0008                	.insn	2, 0x0008
 452:	0d00                	.insn	2, 0x0d00
 454:	0016                	.insn	2, 0x0016
 456:	0b3a0e03          	lb	t3,179(s4)
 45a:	0b390b3b          	.insn	4, 0x0b390b3b
 45e:	1349                	.insn	2, 0x1349
 460:	0000                	.insn	2, 0x
 462:	130e                	.insn	2, 0x130e
 464:	0b01                	.insn	2, 0x0b01
 466:	3b0b3a0b          	.insn	4, 0x3b0b3a0b
 46a:	010b390b          	.insn	4, 0x010b390b
 46e:	0f000013          	li	zero,240
 472:	000d                	.insn	2, 0x000d
 474:	0b3a0803          	lb	a6,179(s4)
 478:	0b390b3b          	.insn	4, 0x0b390b3b
 47c:	1349                	.insn	2, 0x1349
 47e:	0b0d                	.insn	2, 0x0b0d
 480:	00000b6b          	.insn	4, 0x0b6b
 484:	1710                	.insn	2, 0x1710
 486:	0301                	.insn	2, 0x0301
 488:	0b0e                	.insn	2, 0x0b0e
 48a:	3b0b3a0b          	.insn	4, 0x3b0b3a0b
 48e:	010b390b          	.insn	4, 0x010b390b
 492:	11000013          	li	zero,272
 496:	000d                	.insn	2, 0x000d
 498:	0b3a0803          	lb	a6,179(s4)
 49c:	0b390b3b          	.insn	4, 0x0b390b3b
 4a0:	1349                	.insn	2, 0x1349
 4a2:	0000                	.insn	2, 0x
 4a4:	0d12                	.insn	2, 0x0d12
 4a6:	0300                	.insn	2, 0x0300
 4a8:	3a0e                	.insn	2, 0x3a0e
 4aa:	390b3b0b          	.insn	4, 0x390b3b0b
 4ae:	0013490b          	.insn	4, 0x0013490b
 4b2:	1300                	.insn	2, 0x1300
 4b4:	012e                	.insn	2, 0x012e
 4b6:	0e03193f 0b3b0b3a 	.insn	8, 0x0b3b0b3a0e03193f
 4be:	0b39                	.insn	2, 0x0b39
 4c0:	13491927          	.insn	4, 0x13491927
 4c4:	0111                	.insn	2, 0x0111
 4c6:	0612                	.insn	2, 0x0612
 4c8:	1840                	.insn	2, 0x1840
 4ca:	197a                	.insn	2, 0x197a
 4cc:	1301                	.insn	2, 0x1301
 4ce:	0000                	.insn	2, 0x
 4d0:	3414                	.insn	2, 0x3414
 4d2:	0300                	.insn	2, 0x0300
 4d4:	3a0e                	.insn	2, 0x3a0e
 4d6:	390b3b0b          	.insn	4, 0x390b3b0b
 4da:	1c13490b          	.insn	4, 0x1c13490b
 4de:	1500000b          	.insn	4, 0x1500000b
 4e2:	0000010b          	.insn	4, 0x010b
 4e6:	0100                	.insn	2, 0x0100
 4e8:	0024                	.insn	2, 0x0024
 4ea:	0b3e0b0b          	.insn	4, 0x0b3e0b0b
 4ee:	00000e03          	lb	t3,0(zero) # 0 <TRANSMISSION_TIME-0x1>
 4f2:	3402                	.insn	2, 0x3402
 4f4:	0300                	.insn	2, 0x0300
 4f6:	3a0e                	.insn	2, 0x3a0e
 4f8:	0121                	.insn	2, 0x0121
 4fa:	21390b3b          	.insn	4, 0x21390b3b
 4fe:	00134903          	lbu	s2,1(t1)
 502:	0300                	.insn	2, 0x0300
 504:	0034                	.insn	2, 0x0034
 506:	213a0e03          	lb	t3,531(s4)
 50a:	3b01                	.insn	2, 0x3b01
 50c:	0321390b          	.insn	4, 0x0321390b
 510:	1349                	.insn	2, 0x1349
 512:	1702                	.insn	2, 0x1702
 514:	0000                	.insn	2, 0x
 516:	3404                	.insn	2, 0x3404
 518:	0300                	.insn	2, 0x0300
 51a:	3a08                	.insn	2, 0x3a08
 51c:	0121                	.insn	2, 0x0121
 51e:	0b390b3b          	.insn	4, 0x0b390b3b
 522:	1349                	.insn	2, 0x1349
 524:	1702                	.insn	2, 0x1702
 526:	0000                	.insn	2, 0x
 528:	0d05                	.insn	2, 0x0d05
 52a:	0300                	.insn	2, 0x0300
 52c:	3a0e                	.insn	2, 0x3a0e
 52e:	0321                	.insn	2, 0x0321
 530:	21390b3b          	.insn	4, 0x21390b3b
 534:	490e                	.insn	2, 0x490e
 536:	6b0b0d13          	addi	s10,s6,1712
 53a:	0600000b          	.insn	4, 0x0600000b
 53e:	1755010b          	.insn	4, 0x1755010b
 542:	1301                	.insn	2, 0x1301
 544:	0000                	.insn	2, 0x
 546:	55010b07          	.insn	4, 0x55010b07
 54a:	08000017          	auipc	zero,0x8000
 54e:	0111                	.insn	2, 0x0111
 550:	0e25                	.insn	2, 0x0e25
 552:	1f030b13          	addi	s6,t1,496
 556:	01111f1b          	.insn	4, 0x01111f1b
 55a:	0612                	.insn	2, 0x0612
 55c:	1710                	.insn	2, 0x1710
 55e:	0000                	.insn	2, 0x
 560:	2409                	.insn	2, 0x2409
 562:	0b00                	.insn	2, 0x0b00
 564:	030b3e0b          	.insn	4, 0x030b3e0b
 568:	0008                	.insn	2, 0x0008
 56a:	0a00                	.insn	2, 0x0a00
 56c:	0016                	.insn	2, 0x0016
 56e:	0b3a0e03          	lb	t3,179(s4)
 572:	0b39053b          	.insn	4, 0x0b39053b
 576:	1349                	.insn	2, 0x1349
 578:	0000                	.insn	2, 0x
 57a:	0300160b          	.insn	4, 0x0300160b
 57e:	3a0e                	.insn	2, 0x3a0e
 580:	390b3b0b          	.insn	4, 0x390b3b0b
 584:	0013490b          	.insn	4, 0x0013490b
 588:	0c00                	.insn	2, 0x0c00
 58a:	0b0b0113          	addi	sp,s6,176
 58e:	0b3a                	.insn	2, 0x0b3a
 590:	0b390b3b          	.insn	4, 0x0b390b3b
 594:	1301                	.insn	2, 0x1301
 596:	0000                	.insn	2, 0x
 598:	0d0d                	.insn	2, 0x0d0d
 59a:	0300                	.insn	2, 0x0300
 59c:	3a08                	.insn	2, 0x3a08
 59e:	390b3b0b          	.insn	4, 0x390b3b0b
 5a2:	0d13490b          	.insn	4, 0x0d13490b
 5a6:	000b6b0b          	.insn	4, 0x000b6b0b
 5aa:	0e00                	.insn	2, 0x0e00
 5ac:	0e030117          	auipc	sp,0xe030
 5b0:	0b3a0b0b          	.insn	4, 0x0b3a0b0b
 5b4:	0b390b3b          	.insn	4, 0x0b390b3b
 5b8:	1301                	.insn	2, 0x1301
 5ba:	0000                	.insn	2, 0x
 5bc:	03000d0f          	.insn	4, 0x03000d0f
 5c0:	3a08                	.insn	2, 0x3a08
 5c2:	390b3b0b          	.insn	4, 0x390b3b0b
 5c6:	0013490b          	.insn	4, 0x0013490b
 5ca:	1000                	.insn	2, 0x1000
 5cc:	000d                	.insn	2, 0x000d
 5ce:	0b3a0e03          	lb	t3,179(s4)
 5d2:	0b390b3b          	.insn	4, 0x0b390b3b
 5d6:	1349                	.insn	2, 0x1349
 5d8:	0000                	.insn	2, 0x
 5da:	2e11                	.insn	2, 0x2e11
 5dc:	3f01                	.insn	2, 0x3f01
 5de:	0319                	.insn	2, 0x0319
 5e0:	3a0e                	.insn	2, 0x3a0e
 5e2:	390b3b0b          	.insn	4, 0x390b3b0b
 5e6:	4919270b          	.insn	4, 0x4919270b
 5ea:	12011113          	.insn	4, 0x12011113
 5ee:	4006                	.insn	2, 0x4006
 5f0:	7a18                	.insn	2, 0x7a18
 5f2:	0119                	.insn	2, 0x0119
 5f4:	12000013          	li	zero,288
 5f8:	0005                	.insn	2, 0x0005
 5fa:	0b3a0803          	lb	a6,179(s4)
 5fe:	0b390b3b          	.insn	4, 0x0b390b3b
 602:	1349                	.insn	2, 0x1349
 604:	1702                	.insn	2, 0x1702
 606:	0000                	.insn	2, 0x
 608:	03003413          	sltiu	s0,zero,48
 60c:	3a0e                	.insn	2, 0x3a0e
 60e:	390b3b0b          	.insn	4, 0x390b3b0b
 612:	1c13490b          	.insn	4, 0x1c13490b
 616:	1400000b          	.insn	4, 0x1400000b
 61a:	0034                	.insn	2, 0x0034
 61c:	0b3a0803          	lb	a6,179(s4)
 620:	0b390b3b          	.insn	4, 0x0b390b3b
 624:	1349                	.insn	2, 0x1349
 626:	0000                	.insn	2, 0x
 628:	3415                	.insn	2, 0x3415
 62a:	0300                	.insn	2, 0x0300
 62c:	3a08                	.insn	2, 0x3a08
 62e:	390b3b0b          	.insn	4, 0x390b3b0b
 632:	1c13490b          	.insn	4, 0x1c13490b
 636:	1600000b          	.insn	4, 0x1600000b
 63a:	000a                	.insn	2, 0x000a
 63c:	0b3a0e03          	lb	t3,179(s4)
 640:	0b390b3b          	.insn	4, 0x0b390b3b
 644:	0111                	.insn	2, 0x0111
 646:	0000                	.insn	2, 0x
 648:	7d004817          	auipc	a6,0x7d004
 64c:	7f01                	.insn	2, 0x7f01
 64e:	18000013          	li	zero,384
 652:	0000010b          	.insn	4, 0x010b
 656:	0b19                	.insn	2, 0x0b19
 658:	1101                	.insn	2, 0x1101
 65a:	1201                	.insn	2, 0x1201
 65c:	0006                	.insn	2, 0x0006
 65e:	1a00                	.insn	2, 0x1a00
 660:	002e                	.insn	2, 0x002e
 662:	193c193f 0e030e6e 	.insn	8, 0x0e030e6e193c193f
 66a:	0000                	.insn	2, 0x
 66c:	0100                	.insn	2, 0x0100
 66e:	0111                	.insn	2, 0x0111
 670:	1710                	.insn	2, 0x1710
 672:	0111                	.insn	2, 0x0111
 674:	0f12                	.insn	2, 0x0f12
 676:	0e1b0e03          	lb	t3,225(s6)
 67a:	0e25                	.insn	2, 0x0e25
 67c:	00000513          	li	a0,0
 680:	2e02                	.insn	2, 0x2e02
 682:	0300                	.insn	2, 0x0300
 684:	3f0e                	.insn	2, 0x3f0e
 686:	4919                	.insn	2, 0x4919
 688:	1115                	.insn	2, 0x1115
 68a:	1201                	.insn	2, 0x1201
 68c:	0300000f          	fence	rw,unknown
 690:	0000003b          	.insn	4, 0x003b
 694:	0100                	.insn	2, 0x0100
 696:	0111                	.insn	2, 0x0111
 698:	1710                	.insn	2, 0x1710
 69a:	0111                	.insn	2, 0x0111
 69c:	0f12                	.insn	2, 0x0f12
 69e:	0e1b0e03          	lb	t3,225(s6)
 6a2:	0e25                	.insn	2, 0x0e25
 6a4:	00000513          	li	a0,0
 6a8:	2e02                	.insn	2, 0x2e02
 6aa:	0300                	.insn	2, 0x0300
 6ac:	3f0e                	.insn	2, 0x3f0e
 6ae:	4919                	.insn	2, 0x4919
 6b0:	1115                	.insn	2, 0x1115
 6b2:	1201                	.insn	2, 0x1201
 6b4:	0300000f          	fence	rw,unknown
 6b8:	0000003b          	.insn	4, 0x003b
 6bc:	0100                	.insn	2, 0x0100
 6be:	0024                	.insn	2, 0x0024
 6c0:	0b3e0b0b          	.insn	4, 0x0b3e0b0b
 6c4:	00000e03          	lb	t3,0(zero) # 0 <TRANSMISSION_TIME-0x1>
 6c8:	2602                	.insn	2, 0x2602
 6ca:	4900                	.insn	2, 0x4900
 6cc:	03000013          	li	zero,48
 6d0:	0111                	.insn	2, 0x0111
 6d2:	0e25                	.insn	2, 0x0e25
 6d4:	1f030b13          	addi	s6,t1,496
 6d8:	17101f1b          	.insn	4, 0x17101f1b
 6dc:	0000                	.insn	2, 0x
 6de:	2404                	.insn	2, 0x2404
 6e0:	0b00                	.insn	2, 0x0b00
 6e2:	030b3e0b          	.insn	4, 0x030b3e0b
 6e6:	0008                	.insn	2, 0x0008
 6e8:	0500                	.insn	2, 0x0500
 6ea:	0016                	.insn	2, 0x0016
 6ec:	0b3a0e03          	lb	t3,179(s4)
 6f0:	0b390b3b          	.insn	4, 0x0b390b3b
 6f4:	1349                	.insn	2, 0x1349
 6f6:	0000                	.insn	2, 0x
 6f8:	0106                	.insn	2, 0x0106
 6fa:	4901                	.insn	2, 0x4901
 6fc:	00130113          	addi	sp,t1,1
 700:	0700                	.insn	2, 0x0700
 702:	0021                	.insn	2, 0x0021
 704:	1349                	.insn	2, 0x1349
 706:	00000b2f          	.insn	4, 0x0b2f
 70a:	3408                	.insn	2, 0x3408
 70c:	0300                	.insn	2, 0x0300
 70e:	3a0e                	.insn	2, 0x3a0e
 710:	39053b0b          	.insn	4, 0x39053b0b
 714:	3f13490b          	.insn	4, 0x3f13490b
 718:	3c19                	.insn	2, 0x3c19
 71a:	0019                	.insn	2, 0x0019
 71c:	0900                	.insn	2, 0x0900
 71e:	0034                	.insn	2, 0x0034
 720:	0b3a1347          	.insn	4, 0x0b3a1347
 724:	0b39053b          	.insn	4, 0x0b39053b
 728:	1802                	.insn	2, 0x1802
 72a:	0000                	.insn	2, 0x
 72c:	0100                	.insn	2, 0x0100
 72e:	0024                	.insn	2, 0x0024
 730:	0b3e0b0b          	.insn	4, 0x0b3e0b0b
 734:	00000e03          	lb	t3,0(zero) # 0 <TRANSMISSION_TIME-0x1>
 738:	1602                	.insn	2, 0x1602
 73a:	0300                	.insn	2, 0x0300
 73c:	3a0e                	.insn	2, 0x3a0e
 73e:	0221                	.insn	2, 0x0221
 740:	0b390b3b          	.insn	4, 0x0b390b3b
 744:	1349                	.insn	2, 0x1349
 746:	0000                	.insn	2, 0x
 748:	49002603          	lw	a2,1168(zero) # 490 <COOLING_THRESHOLD_ON+0x436>
 74c:	04000013          	li	zero,64
 750:	0111                	.insn	2, 0x0111
 752:	0e25                	.insn	2, 0x0e25
 754:	1f030b13          	addi	s6,t1,496
 758:	01111f1b          	.insn	4, 0x01111f1b
 75c:	0612                	.insn	2, 0x0612
 75e:	1710                	.insn	2, 0x1710
 760:	0000                	.insn	2, 0x
 762:	2405                	.insn	2, 0x2405
 764:	0b00                	.insn	2, 0x0b00
 766:	030b3e0b          	.insn	4, 0x030b3e0b
 76a:	0008                	.insn	2, 0x0008
 76c:	0600                	.insn	2, 0x0600
 76e:	0101                	.insn	2, 0x0101
 770:	1349                	.insn	2, 0x1349
 772:	1301                	.insn	2, 0x1301
 774:	0000                	.insn	2, 0x
 776:	49002107          	.insn	4, 0x49002107
 77a:	000b2f13          	slti	t5,s6,0
 77e:	0800                	.insn	2, 0x0800
 780:	0034                	.insn	2, 0x0034
 782:	0b3a0e03          	lb	t3,179(s4)
 786:	0b39053b          	.insn	4, 0x0b39053b
 78a:	1349                	.insn	2, 0x1349
 78c:	193c193f 2e090000 	.insn	8, 0x2e090000193c193f
 794:	3f01                	.insn	2, 0x3f01
 796:	0319                	.insn	2, 0x0319
 798:	3a0e                	.insn	2, 0x3a0e
 79a:	39053b0b          	.insn	4, 0x39053b0b
 79e:	4919270b          	.insn	4, 0x4919270b
 7a2:	12011113          	.insn	4, 0x12011113
 7a6:	4006                	.insn	2, 0x4006
 7a8:	7a18                	.insn	2, 0x7a18
 7aa:	0019                	.insn	2, 0x0019
 7ac:	0a00                	.insn	2, 0x0a00
 7ae:	0005                	.insn	2, 0x0005
 7b0:	0b3a0803          	lb	a6,179(s4)
 7b4:	0b39053b          	.insn	4, 0x0b39053b
 7b8:	1349                	.insn	2, 0x1349
 7ba:	1702                	.insn	2, 0x1702
 7bc:	0000                	.insn	2, 0x
 7be:	0300340b          	.insn	4, 0x0300340b
 7c2:	3a08                	.insn	2, 0x3a08
 7c4:	39053b0b          	.insn	4, 0x39053b0b
 7c8:	0013490b          	.insn	4, 0x0013490b
 7cc:	0c00                	.insn	2, 0x0c00
 7ce:	1755010b          	.insn	4, 0x1755010b
 7d2:	0000                	.insn	2, 0x
 7d4:	340d                	.insn	2, 0x340d
 7d6:	0300                	.insn	2, 0x0300
 7d8:	3a0e                	.insn	2, 0x3a0e
 7da:	39053b0b          	.insn	4, 0x39053b0b
 7de:	0213490b          	.insn	4, 0x0213490b
 7e2:	0e000017          	auipc	zero,0xe000
 7e6:	0034                	.insn	2, 0x0034
 7e8:	0b3a0803          	lb	a6,179(s4)
 7ec:	0b39053b          	.insn	4, 0x0b39053b
 7f0:	1349                	.insn	2, 0x1349
 7f2:	1702                	.insn	2, 0x1702
 7f4:	0000                	.insn	2, 0x
	...

Disassembly of section .debug_loclists:

00000000 <.debug_loclists>:
       0:	0772                	.insn	2, 0x0772
       2:	0000                	.insn	2, 0x
       4:	0005                	.insn	2, 0x0005
       6:	0004                	.insn	2, 0x0004
       8:	0000                	.insn	2, 0x
       a:	0000                	.insn	2, 0x
       c:	0004                	.insn	2, 0x0004
       e:	01a0                	.insn	2, 0x01a0
      10:	5a06                	.insn	2, 0x5a06
      12:	935b0493          	addi	s1,s6,-1739
      16:	0404                	.insn	2, 0x0404
      18:	01a0                	.insn	2, 0x01a0
      1a:	02fc                	.insn	2, 0x02fc
      1c:	a306                	.insn	2, 0xa306
      1e:	260aa503          	lw	a0,608(s5)
      22:	049f 02fc 03d0      	.insn	6, 0x03d002fc049f
      28:	5a06                	.insn	2, 0x5a06
      2a:	935b0493          	addi	s1,s6,-1739
      2e:	0404                	.insn	2, 0x0404
      30:	03d0                	.insn	2, 0x03d0
      32:	05ec                	.insn	2, 0x05ec
      34:	a306                	.insn	2, 0xa306
      36:	260aa503          	lw	a0,608(s5)
      3a:	049f 05ec 06a4      	.insn	6, 0x06a405ec049f
      40:	5a06                	.insn	2, 0x5a06
      42:	935b0493          	addi	s1,s6,-1739
      46:	0404                	.insn	2, 0x0404
      48:	06a4                	.insn	2, 0x06a4
      4a:	0884                	.insn	2, 0x0884
      4c:	a306                	.insn	2, 0xa306
      4e:	260aa503          	lw	a0,608(s5)
      52:	049f 0884 08a0      	.insn	6, 0x08a00884049f
      58:	5a06                	.insn	2, 0x5a06
      5a:	935b0493          	addi	s1,s6,-1739
      5e:	0404                	.insn	2, 0x0404
      60:	08a0                	.insn	2, 0x08a0
      62:	08d4                	.insn	2, 0x08d4
      64:	a306                	.insn	2, 0xa306
      66:	260aa503          	lw	a0,608(s5)
      6a:	049f 08d4 08e8      	.insn	6, 0x08e808d4049f
      70:	5a06                	.insn	2, 0x5a06
      72:	935b0493          	addi	s1,s6,-1739
      76:	0404                	.insn	2, 0x0404
      78:	08e8                	.insn	2, 0x08e8
      7a:	0ca8                	.insn	2, 0x0ca8
      7c:	a306                	.insn	2, 0xa306
      7e:	260aa503          	lw	a0,608(s5)
      82:	049f 0ca8 0cb4      	.insn	6, 0x0cb40ca8049f
      88:	5a06                	.insn	2, 0x5a06
      8a:	935b0493          	addi	s1,s6,-1739
      8e:	0004                	.insn	2, 0x0004
      90:	0004                	.insn	2, 0x0004
      92:	5c0601ab          	.insn	4, 0x5c0601ab
      96:	935d0493          	addi	s1,s10,-1739 # 2fffa41 <COOLING_THRESHOLD_ON+0x2fff9e7>
      9a:	0404                	.insn	2, 0x0404
      9c:	02fc01ab          	.insn	4, 0x02fc01ab
      a0:	a306                	.insn	2, 0xa306
      a2:	260ca503          	lw	a0,608(s9)
      a6:	049f 02fc 03d0      	.insn	6, 0x03d002fc049f
      ac:	5c06                	.insn	2, 0x5c06
      ae:	935d0493          	addi	s1,s10,-1739
      b2:	0404                	.insn	2, 0x0404
      b4:	03d0                	.insn	2, 0x03d0
      b6:	05ec                	.insn	2, 0x05ec
      b8:	a306                	.insn	2, 0xa306
      ba:	260ca503          	lw	a0,608(s9)
      be:	049f 05ec 06af      	.insn	6, 0x06af05ec049f
      c4:	5c06                	.insn	2, 0x5c06
      c6:	935d0493          	addi	s1,s10,-1739
      ca:	0404                	.insn	2, 0x0404
      cc:	088406af          	.insn	4, 0x088406af
      d0:	a306                	.insn	2, 0xa306
      d2:	260ca503          	lw	a0,608(s9)
      d6:	049f 0884 09a3      	.insn	6, 0x09a30884049f
      dc:	5c06                	.insn	2, 0x5c06
      de:	935d0493          	addi	s1,s10,-1739
      e2:	0404                	.insn	2, 0x0404
      e4:	0ca809a3          	sb	a0,211(a6) # 7d00471b <COOLING_THRESHOLD_ON+0x7d0046c1>
      e8:	a306                	.insn	2, 0xa306
      ea:	260ca503          	lw	a0,608(s9)
      ee:	049f 0ca8 0cb4      	.insn	6, 0x0cb40ca8049f
      f4:	5c06                	.insn	2, 0x5c06
      f6:	935d0493          	addi	s1,s10,-1739
      fa:	0004                	.insn	2, 0x0004
      fc:	0004                	.insn	2, 0x0004
      fe:	05b0                	.insn	2, 0x05b0
     100:	3002                	.insn	2, 0x3002
     102:	049f 05ec 0cb4      	.insn	6, 0x0cb405ec049f
     108:	3002                	.insn	2, 0x3002
     10a:	009f 0004 0664      	.insn	6, 0x06640004009f
     110:	935c                	.insn	2, 0x935c
     112:	5d04                	.insn	2, 0x5d04
     114:	fc040493          	addi	s1,s0,-64 # 3a278c <COOLING_THRESHOLD_ON+0x3a2732>
     118:	8002                	.insn	2, 0x8002
     11a:	935c0603          	lb	a2,-1739(s8)
     11e:	5d04                	.insn	2, 0x5d04
     120:	90040493          	addi	s1,s0,-1792
     124:	0603ac03          	lw	s8,96(t2)
     128:	935c                	.insn	2, 0x935c
     12a:	5d04                	.insn	2, 0x5d04
     12c:	ec040493          	addi	s1,s0,-320
     130:	f005                	.insn	2, 0xf005
     132:	0605                	.insn	2, 0x0605
     134:	935c                	.insn	2, 0x935c
     136:	5d04                	.insn	2, 0x5d04
     138:	84040493          	addi	s1,s0,-1984
     13c:	ec08                	.insn	2, 0xec08
     13e:	0608                	.insn	2, 0x0608
     140:	935c                	.insn	2, 0x935c
     142:	5d04                	.insn	2, 0x5d04
     144:	a8040493          	addi	s1,s0,-1408
     148:	b40c                	.insn	2, 0xb40c
     14a:	060c                	.insn	2, 0x060c
     14c:	935c                	.insn	2, 0x935c
     14e:	5d04                	.insn	2, 0x5d04
     150:	04000493          	li	s1,64
     154:	9c00                	.insn	2, 0x9c00
     156:	0601                	.insn	2, 0x0601
     158:	935a                	.insn	2, 0x935a
     15a:	5b04                	.insn	2, 0x5b04
     15c:	fc040493          	addi	s1,s0,-64
     160:	d002                	.insn	2, 0xd002
     162:	93590603          	lb	a2,-1739(s2)
     166:	5b04                	.insn	2, 0x5b04
     168:	ec040493          	addi	s1,s0,-320
     16c:	9005                	.insn	2, 0x9005
     16e:	0606                	.insn	2, 0x0606
     170:	9359                	.insn	2, 0x9359
     172:	5b04                	.insn	2, 0x5b04
     174:	84040493          	addi	s1,s0,-1984
     178:	a008                	.insn	2, 0xa008
     17a:	0608                	.insn	2, 0x0608
     17c:	935a                	.insn	2, 0x935a
     17e:	5b04                	.insn	2, 0x5b04
     180:	a0040493          	addi	s1,s0,-1536
     184:	d408                	.insn	2, 0xd408
     186:	0608                	.insn	2, 0x0608
     188:	9364                	.insn	2, 0x9364
     18a:	5b04                	.insn	2, 0x5b04
     18c:	d4040493          	addi	s1,s0,-704
     190:	e808                	.insn	2, 0xe808
     192:	0608                	.insn	2, 0x0608
     194:	935a                	.insn	2, 0x935a
     196:	5b04                	.insn	2, 0x5b04
     198:	e8040493          	addi	s1,s0,-384
     19c:	8408                	.insn	2, 0x8408
     19e:	0609                	.insn	2, 0x0609
     1a0:	9364                	.insn	2, 0x9364
     1a2:	5b04                	.insn	2, 0x5b04
     1a4:	a8040493          	addi	s1,s0,-1408
     1a8:	b40c                	.insn	2, 0xb40c
     1aa:	060c                	.insn	2, 0x060c
     1ac:	935a                	.insn	2, 0x935a
     1ae:	5b04                	.insn	2, 0x5b04
     1b0:	04000493          	li	s1,64
     1b4:	8000                	.insn	2, 0x8000
     1b6:	0101                	.insn	2, 0x0101
     1b8:	045c                	.insn	2, 0x045c
     1ba:	0180                	.insn	2, 0x0180
     1bc:	018c                	.insn	2, 0x018c
     1be:	7c09                	.insn	2, 0x7c09
     1c0:	7f00                	.insn	2, 0x7f00
     1c2:	0800                	.insn	2, 0x0800
     1c4:	9f241aff f4018c04 	.insn	12, 0x04630102f4018c049f241aff
     1cc:	04630102 
     1d0:	02fc                	.insn	2, 0x02fc
     1d2:	03a0                	.insn	2, 0x03a0
     1d4:	5c01                	.insn	2, 0x5c01
     1d6:	d004                	.insn	2, 0xd004
     1d8:	0105b003          	.insn	4, 0x0105b003
     1dc:	05ec0463          	beq	s8,t5,224 <COOLING_THRESHOLD_ON+0x1ca>
     1e0:	0680                	.insn	2, 0x0680
     1e2:	5c01                	.insn	2, 0x5c01
     1e4:	8404                	.insn	2, 0x8404
     1e6:	8406                	.insn	2, 0x8406
     1e8:	0108                	.insn	2, 0x0108
     1ea:	08840463          	beq	s0,s0,272 <COOLING_THRESHOLD_ON+0x218>
     1ee:	0998                	.insn	2, 0x0998
     1f0:	5c01                	.insn	2, 0x5c01
     1f2:	9804                	.insn	2, 0x9804
     1f4:	8809                	.insn	2, 0x8809
     1f6:	0458010b          	.insn	4, 0x0458010b
     1fa:	0ca8                	.insn	2, 0x0ca8
     1fc:	0cb4                	.insn	2, 0x0cb4
     1fe:	5c01                	.insn	2, 0x5c01
     200:	0400                	.insn	2, 0x0400
     202:	6400                	.insn	2, 0x6400
     204:	5d01                	.insn	2, 0x5d01
     206:	fc04                	.insn	2, 0xfc04
     208:	8002                	.insn	2, 0x8002
     20a:	045d0103          	lb	sp,69(s10)
     20e:	0390                	.insn	2, 0x0390
     210:	03ac                	.insn	2, 0x03ac
     212:	5d01                	.insn	2, 0x5d01
     214:	ec04                	.insn	2, 0xec04
     216:	f005                	.insn	2, 0xf005
     218:	0105                	.insn	2, 0x0105
     21a:	045d                	.insn	2, 0x045d
     21c:	0884                	.insn	2, 0x0884
     21e:	08ec                	.insn	2, 0x08ec
     220:	5d01                	.insn	2, 0x5d01
     222:	f404                	.insn	2, 0xf404
     224:	a808                	.insn	2, 0xa808
     226:	010c                	.insn	2, 0x010c
     228:	0466                	.insn	2, 0x0466
     22a:	0ca8                	.insn	2, 0x0ca8
     22c:	0cb4                	.insn	2, 0x0cb4
     22e:	5d01                	.insn	2, 0x5d01
     230:	0400                	.insn	2, 0x0400
     232:	9400                	.insn	2, 0x9400
     234:	0101                	.insn	2, 0x0101
     236:	045a                	.insn	2, 0x045a
     238:	0194                	.insn	2, 0x0194
     23a:	02c4                	.insn	2, 0x02c4
     23c:	5901                	.insn	2, 0x5901
     23e:	fc04                	.insn	2, 0xfc04
     240:	8002                	.insn	2, 0x8002
     242:	0105                	.insn	2, 0x0105
     244:	0459                	.insn	2, 0x0459
     246:	05ec                	.insn	2, 0x05ec
     248:	0884                	.insn	2, 0x0884
     24a:	5901                	.insn	2, 0x5901
     24c:	8404                	.insn	2, 0x8404
     24e:	a008                	.insn	2, 0xa008
     250:	0108                	.insn	2, 0x0108
     252:	045a                	.insn	2, 0x045a
     254:	08a0                	.insn	2, 0x08a0
     256:	08d4                	.insn	2, 0x08d4
     258:	6401                	.insn	2, 0x6401
     25a:	d404                	.insn	2, 0xd404
     25c:	e808                	.insn	2, 0xe808
     25e:	0108                	.insn	2, 0x0108
     260:	045a                	.insn	2, 0x045a
     262:	08e8                	.insn	2, 0x08e8
     264:	0998                	.insn	2, 0x0998
     266:	6401                	.insn	2, 0x6401
     268:	9804                	.insn	2, 0x9804
     26a:	9c09                	.insn	2, 0x9c09
     26c:	060c                	.insn	2, 0x060c
     26e:	0084                	.insn	2, 0x0084
     270:	0082                	.insn	2, 0x0082
     272:	9f24                	.insn	2, 0x9f24
     274:	a804                	.insn	2, 0xa804
     276:	b40c                	.insn	2, 0xb40c
     278:	010c                	.insn	2, 0x010c
     27a:	005a                	.insn	2, 0x005a
     27c:	0004                	.insn	2, 0x0004
     27e:	0190                	.insn	2, 0x0190
     280:	5b01                	.insn	2, 0x5b01
     282:	9004                	.insn	2, 0x9004
     284:	e801                	.insn	2, 0xe801
     286:	0101                	.insn	2, 0x0101
     288:	0462                	.insn	2, 0x0462
     28a:	02fc                	.insn	2, 0x02fc
     28c:	03cc                	.insn	2, 0x03cc
     28e:	5b01                	.insn	2, 0x5b01
     290:	cc04                	.insn	2, 0xcc04
     292:	0104a403          	lw	s0,16(s1)
     296:	0464                	.insn	2, 0x0464
     298:	05ec                	.insn	2, 0x05ec
     29a:	0690                	.insn	2, 0x0690
     29c:	5b01                	.insn	2, 0x5b01
     29e:	9804                	.insn	2, 0x9804
     2a0:	8006                	.insn	2, 0x8006
     2a2:	0108                	.insn	2, 0x0108
     2a4:	0465                	.insn	2, 0x0465
     2a6:	0880                	.insn	2, 0x0880
     2a8:	0884                	.insn	2, 0x0884
     2aa:	6401                	.insn	2, 0x6401
     2ac:	8404                	.insn	2, 0x8404
     2ae:	8408                	.insn	2, 0x8408
     2b0:	0109                	.insn	2, 0x0109
     2b2:	0998045b          	.insn	4, 0x0998045b
     2b6:	0b80                	.insn	2, 0x0b80
     2b8:	6301                	.insn	2, 0x6301
     2ba:	8004                	.insn	2, 0x8004
     2bc:	010c940b          	.insn	4, 0x010c940b
     2c0:	045e                	.insn	2, 0x045e
     2c2:	0ca8                	.insn	2, 0x0ca8
     2c4:	0cb4                	.insn	2, 0x0cb4
     2c6:	5b01                	.insn	2, 0x5b01
     2c8:	0400                	.insn	2, 0x0400
     2ca:	0688                	.insn	2, 0x0688
     2cc:	06ec                	.insn	2, 0x06ec
     2ce:	6201                	.insn	2, 0x6201
     2d0:	9804                	.insn	2, 0x9804
     2d2:	dc09                	.insn	2, 0xdc09
     2d4:	0109                	.insn	2, 0x0109
     2d6:	0059                	.insn	2, 0x0059
     2d8:	f404                	.insn	2, 0xf404
     2da:	fc02                	.insn	2, 0xfc02
     2dc:	0102                	.insn	2, 0x0102
     2de:	045f 0b80 0ca8      	.insn	6, 0x0ca80b80045f
     2e4:	5f01                	.insn	2, 0x5f01
     2e6:	0400                	.insn	2, 0x0400
     2e8:	03cc                	.insn	2, 0x03cc
     2ea:	03d0                	.insn	2, 0x03d0
     2ec:	3102                	.insn	2, 0x3102
     2ee:	049f 03d0 05b0      	.insn	6, 0x05b003d0049f
     2f4:	6201                	.insn	2, 0x6201
     2f6:	8004                	.insn	2, 0x8004
     2f8:	8408                	.insn	2, 0x8408
     2fa:	0108                	.insn	2, 0x0108
     2fc:	0062                	.insn	2, 0x0062
     2fe:	8004                	.insn	2, 0x8004
     300:	9406                	.insn	2, 0x9406
     302:	0106                	.insn	2, 0x0106
     304:	045f 08e8 0980      	.insn	6, 0x098008e8045f
     30a:	6001                	.insn	2, 0x6001
     30c:	0400                	.insn	2, 0x0400
     30e:	ab7c                	.insn	2, 0xab7c
     310:	0101                	.insn	2, 0x0101
     312:	045f 03c4 03d0      	.insn	6, 0x03d003c4045f
     318:	5e01                	.insn	2, 0x5e01
     31a:	8004                	.insn	2, 0x8004
     31c:	af06                	.insn	2, 0xaf06
     31e:	0106                	.insn	2, 0x0106
     320:	045e                	.insn	2, 0x045e
     322:	08bc                	.insn	2, 0x08bc
     324:	08d4                	.insn	2, 0x08d4
     326:	6201                	.insn	2, 0x6201
     328:	e804                	.insn	2, 0xe804
     32a:	9c08                	.insn	2, 0x9c08
     32c:	010c                	.insn	2, 0x010c
     32e:	0062                	.insn	2, 0x0062
     330:	5404                	.insn	2, 0x5404
     332:	0180                	.insn	2, 0x0180
     334:	5c01                	.insn	2, 0x5c01
     336:	8004                	.insn	2, 0x8004
     338:	8c01                	.insn	2, 0x8c01
     33a:	0901                	.insn	2, 0x0901
     33c:	007c                	.insn	2, 0x007c
     33e:	007f ff08 241a 049f 	.insn	10, 0x018c049f241aff08007f
     346:	018c 
     348:	02f4                	.insn	2, 0x02f4
     34a:	6301                	.insn	2, 0x6301
     34c:	fc04                	.insn	2, 0xfc04
     34e:	9002                	.insn	2, 0x9002
     350:	005c0103          	lb	sp,5(s8)
     354:	6404                	.insn	2, 0x6404
     356:	0174                	.insn	2, 0x0174
     358:	005e                	.insn	2, 0x005e
     35a:	9804                	.insn	2, 0x9804
     35c:	f401                	.insn	2, 0xf401
     35e:	0102                	.insn	2, 0x0102
     360:	0065                	.insn	2, 0x0065
     362:	b004                	.insn	2, 0xb004
     364:	b001                	.insn	2, 0xb001
     366:	0102                	.insn	2, 0x0102
     368:	0466                	.insn	2, 0x0466
     36a:	02b0                	.insn	2, 0x02b0
     36c:	02f4                	.insn	2, 0x02f4
     36e:	40008307          	.insn	4, 0x40008307
     372:	4024                	.insn	2, 0x4024
     374:	9f25                	.insn	2, 0x9f25
     376:	0400                	.insn	2, 0x0400
     378:	01b8                	.insn	2, 0x01b8
     37a:	01bc                	.insn	2, 0x01bc
     37c:	5a01                	.insn	2, 0x5a01
     37e:	bc04                	.insn	2, 0xbc04
     380:	c301                	.insn	2, 0xc301
     382:	0101                	.insn	2, 0x0101
     384:	01c3045b          	.insn	4, 0x01c3045b
     388:	01f4                	.insn	2, 0x01f4
     38a:	6401                	.insn	2, 0x6401
     38c:	f404                	.insn	2, 0xf404
     38e:	f401                	.insn	2, 0xf401
     390:	0102                	.insn	2, 0x0102
     392:	0062                	.insn	2, 0x0062
     394:	a004                	.insn	2, 0xa004
     396:	a402                	.insn	2, 0xa402
     398:	0102                	.insn	2, 0x0102
     39a:	045a                	.insn	2, 0x045a
     39c:	02a4                	.insn	2, 0x02a4
     39e:	5b0102ab          	.insn	4, 0x5b0102ab
     3a2:	ab04                	.insn	2, 0xab04
     3a4:	e002                	.insn	2, 0xe002
     3a6:	0102                	.insn	2, 0x0102
     3a8:	0464                	.insn	2, 0x0464
     3aa:	02e0                	.insn	2, 0x02e0
     3ac:	02f4                	.insn	2, 0x02f4
     3ae:	5e01                	.insn	2, 0x5e01
     3b0:	0400                	.insn	2, 0x0400
     3b2:	01b0                	.insn	2, 0x01b0
     3b4:	01e4                	.insn	2, 0x01e4
     3b6:	8206                	.insn	2, 0x8206
     3b8:	8500                	.insn	2, 0x8500
     3ba:	1d00                	.insn	2, 0x1d00
     3bc:	049f 01e4 01f0      	.insn	6, 0x01f001e4049f
     3c2:	5e01                	.insn	2, 0x5e01
     3c4:	f004                	.insn	2, 0xf004
     3c6:	f401                	.insn	2, 0xf401
     3c8:	0801                	.insn	2, 0x0801
     3ca:	0079                	.insn	2, 0x0079
     3cc:	2540                	.insn	2, 0x2540
     3ce:	007a                	.insn	2, 0x007a
     3d0:	9f21                	.insn	2, 0x9f21
     3d2:	f404                	.insn	2, 0xf404
     3d4:	8801                	.insn	2, 0x8801
     3d6:	0102                	.insn	2, 0x0102
     3d8:	045e                	.insn	2, 0x045e
     3da:	0288                	.insn	2, 0x0288
     3dc:	02f4                	.insn	2, 0x02f4
     3de:	5801                	.insn	2, 0x5801
     3e0:	0400                	.insn	2, 0x0400
     3e2:	0288                	.insn	2, 0x0288
     3e4:	02d0                	.insn	2, 0x02d0
     3e6:	7806                	.insn	2, 0x7806
     3e8:	8500                	.insn	2, 0x8500
     3ea:	1d00                	.insn	2, 0x1d00
     3ec:	049f 02d0 02dc      	.insn	6, 0x02dc02d0049f
     3f2:	5901                	.insn	2, 0x5901
     3f4:	0400                	.insn	2, 0x0400
     3f6:	01c8                	.insn	2, 0x01c8
     3f8:	0288                	.insn	2, 0x0288
     3fa:	5801                	.insn	2, 0x5801
     3fc:	b004                	.insn	2, 0xb004
     3fe:	b802                	.insn	2, 0xb802
     400:	0102                	.insn	2, 0x0102
     402:	045a                	.insn	2, 0x045a
     404:	02b8                	.insn	2, 0x02b8
     406:	02f4                	.insn	2, 0x02f4
     408:	6601                	.insn	2, 0x6601
     40a:	0400                	.insn	2, 0x0400
     40c:	0bf4                	.insn	2, 0x0bf4
     40e:	0c80                	.insn	2, 0x0c80
     410:	5c01                	.insn	2, 0x5c01
     412:	0400                	.insn	2, 0x0400
     414:	0bf4                	.insn	2, 0x0bf4
     416:	0c88                	.insn	2, 0x0c88
     418:	8010                	.insn	2, 0x8010
     41a:	0a00                	.insn	2, 0x0a00
     41c:	ffff                	.insn	2, 0xffff
     41e:	7d1a                	.insn	2, 0x7d1a
     420:	0a00                	.insn	2, 0x0a00
     422:	ffff                	.insn	2, 0xffff
     424:	401a                	.insn	2, 0x401a
     426:	2224                	.insn	2, 0x2224
     428:	049f 0c88 0c90      	.insn	6, 0x0c900c88049f
     42e:	8015                	.insn	2, 0x8015
     430:	0a00                	.insn	2, 0x0a00
     432:	ffff                	.insn	2, 0xffff
     434:	801a                	.insn	2, 0x801a
     436:	4000                	.insn	2, 0x4000
     438:	8125                	.insn	2, 0x8125
     43a:	2200                	.insn	2, 0x2200
     43c:	ff0a                	.insn	2, 0xff0a
     43e:	24401aff 04009f22 	.insn	12, 0x09a3099804009f2224401aff
     446:	09a30998 
     44a:	5b01                	.insn	2, 0x5b01
     44c:	a304                	.insn	2, 0xa304
     44e:	a809                	.insn	2, 0xa809
     450:	010c                	.insn	2, 0x010c
     452:	0068                	.insn	2, 0x0068
     454:	9c04                	.insn	2, 0x9c04
     456:	a409                	.insn	2, 0xa409
     458:	010a                	.insn	2, 0x010a
     45a:	0aa40467          	jalr	s0,170(s0)
     45e:	0ca8                	.insn	2, 0x0ca8
     460:	40008607          	.insn	4, 0x40008607
     464:	4024                	.insn	2, 0x4024
     466:	9f25                	.insn	2, 0x9f25
     468:	0400                	.insn	2, 0x0400
     46a:	09ac                	.insn	2, 0x09ac
     46c:	09b0                	.insn	2, 0x09b0
     46e:	5a01                	.insn	2, 0x5a01
     470:	b004                	.insn	2, 0xb004
     472:	b709                	.insn	2, 0xb709
     474:	0109                	.insn	2, 0x0109
     476:	09b7045b          	.insn	4, 0x09b7045b
     47a:	09e8                	.insn	2, 0x09e8
     47c:	6901                	.insn	2, 0x6901
     47e:	e804                	.insn	2, 0xe804
     480:	a809                	.insn	2, 0xa809
     482:	010c                	.insn	2, 0x010c
     484:	0059                	.insn	2, 0x0059
     486:	9404                	.insn	2, 0x9404
     488:	980a                	.insn	2, 0x980a
     48a:	010a                	.insn	2, 0x010a
     48c:	045a                	.insn	2, 0x045a
     48e:	0a98                	.insn	2, 0x0a98
     490:	0a9f 5b01 9f04      	.insn	6, 0x9f045b010a9f
     496:	d40a                	.insn	2, 0xd40a
     498:	010a                	.insn	2, 0x010a
     49a:	0469                	.insn	2, 0x0469
     49c:	0ad4                	.insn	2, 0x0ad4
     49e:	0b98                	.insn	2, 0x0b98
     4a0:	5d01                	.insn	2, 0x5d01
     4a2:	0400                	.insn	2, 0x0400
     4a4:	099c                	.insn	2, 0x099c
     4a6:	790609a3          	sb	a6,1939(a2)
     4aa:	7b00                	.insn	2, 0x7b00
     4ac:	1d00                	.insn	2, 0x1d00
     4ae:	049f 09a3 09d8      	.insn	6, 0x09d809a3049f
     4b4:	7906                	.insn	2, 0x7906
     4b6:	8800                	.insn	2, 0x8800
     4b8:	1d00                	.insn	2, 0x1d00
     4ba:	049f 09d8 09e4      	.insn	6, 0x09e409d8049f
     4c0:	5d01                	.insn	2, 0x5d01
     4c2:	e404                	.insn	2, 0xe404
     4c4:	e809                	.insn	2, 0xe809
     4c6:	0809                	.insn	2, 0x0809
     4c8:	25400083          	lb	ra,596(zero) # 254 <COOLING_THRESHOLD_ON+0x1fa>
     4cc:	007a                	.insn	2, 0x007a
     4ce:	9f21                	.insn	2, 0x9f21
     4d0:	e804                	.insn	2, 0xe804
     4d2:	fc09                	.insn	2, 0xfc09
     4d4:	0109                	.insn	2, 0x0109
     4d6:	045d                	.insn	2, 0x045d
     4d8:	09fc                	.insn	2, 0x09fc
     4da:	0ca8                	.insn	2, 0x0ca8
     4dc:	6501                	.insn	2, 0x6501
     4de:	0400                	.insn	2, 0x0400
     4e0:	09fc                	.insn	2, 0x09fc
     4e2:	0ac4                	.insn	2, 0x0ac4
     4e4:	8506                	.insn	2, 0x8506
     4e6:	8800                	.insn	2, 0x8800
     4e8:	1d00                	.insn	2, 0x1d00
     4ea:	049f 0ac4 0ad0      	.insn	6, 0x0ad00ac4049f
     4f0:	5e01                	.insn	2, 0x5e01
     4f2:	d004                	.insn	2, 0xd004
     4f4:	d40a                	.insn	2, 0xd40a
     4f6:	0a0a                	.insn	2, 0x0a0a
     4f8:	24400083          	lb	ra,580(zero) # 244 <COOLING_THRESHOLD_ON+0x1ea>
     4fc:	2540                	.insn	2, 0x2540
     4fe:	007a                	.insn	2, 0x007a
     500:	9f21                	.insn	2, 0x9f21
     502:	d404                	.insn	2, 0xd404
     504:	940a                	.insn	2, 0x940a
     506:	010c                	.insn	2, 0x010c
     508:	005e                	.insn	2, 0x005e
     50a:	bc04                	.insn	2, 0xbc04
     50c:	c409                	.insn	2, 0xc409
     50e:	0109                	.insn	2, 0x0109
     510:	045a                	.insn	2, 0x045a
     512:	09c4                	.insn	2, 0x09c4
     514:	09fc                	.insn	2, 0x09fc
     516:	6501                	.insn	2, 0x6501
     518:	a404                	.insn	2, 0xa404
     51a:	ac0a                	.insn	2, 0xac0a
     51c:	010a                	.insn	2, 0x010a
     51e:	045a                	.insn	2, 0x045a
     520:	0aac                	.insn	2, 0x0aac
     522:	0ca8                	.insn	2, 0x0ca8
     524:	6701                	.insn	2, 0x6701
     526:	0400                	.insn	2, 0x0400
     528:	0b9c                	.insn	2, 0x0b9c
     52a:	0ba4                	.insn	2, 0x0ba4
     52c:	5a01                	.insn	2, 0x5a01
     52e:	a404                	.insn	2, 0xa404
     530:	010c900b          	.insn	4, 0x010c900b
     534:	0060                	.insn	2, 0x0060
     536:	b004                	.insn	2, 0xb004
     538:	010bb80b          	.insn	4, 0x010bb80b
     53c:	045a                	.insn	2, 0x045a
     53e:	0bb8                	.insn	2, 0x0bb8
     540:	0bdc                	.insn	2, 0x0bdc
     542:	6101                	.insn	2, 0x6101
     544:	e404                	.insn	2, 0xe404
     546:	010c880b          	.insn	4, 0x010c880b
     54a:	045d                	.insn	2, 0x045d
     54c:	0c88                	.insn	2, 0x0c88
     54e:	0c90                	.insn	2, 0x0c90
     550:	8008                	.insn	2, 0x8008
     552:	4000                	.insn	2, 0x4000
     554:	8125                	.insn	2, 0x8125
     556:	2200                	.insn	2, 0x2200
     558:	009f c404 a80b      	.insn	6, 0xa80bc404009f
     55e:	010c                	.insn	2, 0x010c
     560:	0056                	.insn	2, 0x0056
     562:	e404                	.insn	2, 0xe404
     564:	010bec0b          	.insn	4, 0x010bec0b
     568:	045a                	.insn	2, 0x045a
     56a:	0bec                	.insn	2, 0x0bec
     56c:	0bf4                	.insn	2, 0x0bf4
     56e:	5c01                	.insn	2, 0x5c01
     570:	0400                	.insn	2, 0x0400
     572:	0b80                	.insn	2, 0x0b80
     574:	0bb0                	.insn	2, 0x0bb0
     576:	6101                	.insn	2, 0x6101
     578:	b004                	.insn	2, 0xb004
     57a:	060c840b          	.insn	4, 0x060c840b
     57e:	7f8c                	.insn	2, 0x7f8c
     580:	007f 9f1a 8404 a00c 	.insn	10, 0x060ca00c84049f1a007f
     588:	060c 
     58a:	007f 007c 9f1a a004 	.insn	10, 0xa40ca0049f1a007c007f
     592:	a40c 
     594:	060c                	.insn	2, 0x060c
     596:	7f8c                	.insn	2, 0x7f8c
     598:	007f 9f1a a404 a80c 	.insn	10, 0x060ca80ca4049f1a007f
     5a0:	060c 
     5a2:	017f 7f8c 9f1a 0400 	.insn	10, 0x0b8404009f1a7f8c017f
     5aa:	0b84 
     5ac:	0bc4                	.insn	2, 0x0bc4
     5ae:	5601                	.insn	2, 0x5601
     5b0:	0400                	.insn	2, 0x0400
     5b2:	0b84                	.insn	2, 0x0b84
     5b4:	0ca8                	.insn	2, 0x0ca8
     5b6:	6d01                	.insn	2, 0x6d01
     5b8:	0400                	.insn	2, 0x0400
     5ba:	0b88                	.insn	2, 0x0b88
     5bc:	0ca8                	.insn	2, 0x0ca8
     5be:	5801                	.insn	2, 0x5801
     5c0:	0400                	.insn	2, 0x0400
     5c2:	0398                	.insn	2, 0x0398
     5c4:	03a0                	.insn	2, 0x03a0
     5c6:	5c01                	.insn	2, 0x5c01
     5c8:	ec04                	.insn	2, 0xec04
     5ca:	8005                	.insn	2, 0x8005
     5cc:	0106                	.insn	2, 0x0106
     5ce:	005c                	.insn	2, 0x005c
     5d0:	ac04                	.insn	2, 0xac04
     5d2:	0103c403          	lbu	s0,16(t2)
     5d6:	005e                	.insn	2, 0x005e
     5d8:	d404                	.insn	2, 0xd404
     5da:	0105b003          	.insn	4, 0x0105b003
     5de:	0066                	.insn	2, 0x0066
     5e0:	ec04                	.insn	2, 0xec04
     5e2:	0104ec03          	.insn	4, 0x0104ec03
     5e6:	04ec0467          	jalr	s0,78(s8)
     5ea:	05b0                	.insn	2, 0x05b0
     5ec:	40008307          	.insn	4, 0x40008307
     5f0:	4024                	.insn	2, 0x4024
     5f2:	9f25                	.insn	2, 0x9f25
     5f4:	0400                	.insn	2, 0x0400
     5f6:	03f4                	.insn	2, 0x03f4
     5f8:	03f8                	.insn	2, 0x03f8
     5fa:	5a01                	.insn	2, 0x5a01
     5fc:	f804                	.insn	2, 0xf804
     5fe:	0103ff03          	.insn	4, 0x0103ff03
     602:	03ff045b          	.insn	4, 0x03ff045b
     606:	04b0                	.insn	2, 0x04b0
     608:	6801                	.insn	2, 0x6801
     60a:	b004                	.insn	2, 0xb004
     60c:	b004                	.insn	2, 0xb004
     60e:	0105                	.insn	2, 0x0105
     610:	0064                	.insn	2, 0x0064
     612:	dc04                	.insn	2, 0xdc04
     614:	e004                	.insn	2, 0xe004
     616:	0104                	.insn	2, 0x0104
     618:	045a                	.insn	2, 0x045a
     61a:	04e0                	.insn	2, 0x04e0
     61c:	5b0104e7          	jalr	s1,1456(sp) # e030b5c <COOLING_THRESHOLD_ON+0xe030b02>
     620:	e704                	.insn	2, 0xe704
     622:	9c04                	.insn	2, 0x9c04
     624:	0105                	.insn	2, 0x0105
     626:	0465                	.insn	2, 0x0465
     628:	059c                	.insn	2, 0x059c
     62a:	05b0                	.insn	2, 0x05b0
     62c:	5e01                	.insn	2, 0x5e01
     62e:	0400                	.insn	2, 0x0400
     630:	03ec                	.insn	2, 0x03ec
     632:	04a0                	.insn	2, 0x04a0
     634:	8406                	.insn	2, 0x8406
     636:	8600                	.insn	2, 0x8600
     638:	1d00                	.insn	2, 0x1d00
     63a:	049f 04a0 04ac      	.insn	6, 0x04ac04a0049f
     640:	5e01                	.insn	2, 0x5e01
     642:	ac04                	.insn	2, 0xac04
     644:	b004                	.insn	2, 0xb004
     646:	0804                	.insn	2, 0x0804
     648:	0079                	.insn	2, 0x0079
     64a:	2540                	.insn	2, 0x2540
     64c:	007a                	.insn	2, 0x007a
     64e:	9f21                	.insn	2, 0x9f21
     650:	b004                	.insn	2, 0xb004
     652:	c404                	.insn	2, 0xc404
     654:	0104                	.insn	2, 0x0104
     656:	045e                	.insn	2, 0x045e
     658:	04c4                	.insn	2, 0x04c4
     65a:	05b0                	.insn	2, 0x05b0
     65c:	5801                	.insn	2, 0x5801
     65e:	0400                	.insn	2, 0x0400
     660:	04c4                	.insn	2, 0x04c4
     662:	058c                	.insn	2, 0x058c
     664:	7806                	.insn	2, 0x7806
     666:	8600                	.insn	2, 0x8600
     668:	1d00                	.insn	2, 0x1d00
     66a:	049f 058c 0598      	.insn	6, 0x0598058c049f
     670:	5901                	.insn	2, 0x5901
     672:	0400                	.insn	2, 0x0400
     674:	0484                	.insn	2, 0x0484
     676:	048c                	.insn	2, 0x048c
     678:	5a01                	.insn	2, 0x5a01
     67a:	8c04                	.insn	2, 0x8c04
     67c:	dc04                	.insn	2, 0xdc04
     67e:	0104                	.insn	2, 0x0104
     680:	0465                	.insn	2, 0x0465
     682:	04ec                	.insn	2, 0x04ec
     684:	04f4                	.insn	2, 0x04f4
     686:	5a01                	.insn	2, 0x5a01
     688:	f404                	.insn	2, 0xf404
     68a:	b004                	.insn	2, 0xb004
     68c:	0105                	.insn	2, 0x0105
     68e:	9c040067          	jr	-1600(s0)
     692:	8406                	.insn	2, 0x8406
     694:	0108                	.insn	2, 0x0108
     696:	b4040067          	jr	-1216(s0)
     69a:	b406                	.insn	2, 0xb406
     69c:	04640107          	.insn	4, 0x04640107
     6a0:	07b4                	.insn	2, 0x07b4
     6a2:	0884                	.insn	2, 0x0884
     6a4:	40008307          	.insn	4, 0x40008307
     6a8:	4024                	.insn	2, 0x4024
     6aa:	9f25                	.insn	2, 0x9f25
     6ac:	0400                	.insn	2, 0x0400
     6ae:	06bc                	.insn	2, 0x06bc
     6b0:	06c0                	.insn	2, 0x06c0
     6b2:	5a01                	.insn	2, 0x5a01
     6b4:	c004                	.insn	2, 0xc004
     6b6:	c706                	.insn	2, 0xc706
     6b8:	0106                	.insn	2, 0x0106
     6ba:	06c7045b          	.insn	4, 0x06c7045b
     6be:	06f8                	.insn	2, 0x06f8
     6c0:	6601                	.insn	2, 0x6601
     6c2:	f804                	.insn	2, 0xf804
     6c4:	f806                	.insn	2, 0xf806
     6c6:	00620107          	.insn	4, 0x00620107
     6ca:	a404                	.insn	2, 0xa404
     6cc:	0107a807          	.insn	4, 0x0107a807
     6d0:	045a                	.insn	2, 0x045a
     6d2:	07a8                	.insn	2, 0x07a8
     6d4:	5b0107af          	.insn	4, 0x5b0107af
     6d8:	af04                	.insn	2, 0xaf04
     6da:	0107e407          	.insn	4, 0x0107e407
     6de:	0466                	.insn	2, 0x0466
     6e0:	07e4                	.insn	2, 0x07e4
     6e2:	0884                	.insn	2, 0x0884
     6e4:	5e01                	.insn	2, 0x5e01
     6e6:	0400                	.insn	2, 0x0400
     6e8:	06b4                	.insn	2, 0x06b4
     6ea:	06e8                	.insn	2, 0x06e8
     6ec:	8206                	.insn	2, 0x8206
     6ee:	8700                	.insn	2, 0x8700
     6f0:	1d00                	.insn	2, 0x1d00
     6f2:	049f 06e8 06f4      	.insn	6, 0x06f406e8049f
     6f8:	5e01                	.insn	2, 0x5e01
     6fa:	f404                	.insn	2, 0xf404
     6fc:	f806                	.insn	2, 0xf806
     6fe:	0806                	.insn	2, 0x0806
     700:	0085                	.insn	2, 0x0085
     702:	2540                	.insn	2, 0x2540
     704:	007a                	.insn	2, 0x007a
     706:	9f21                	.insn	2, 0x9f21
     708:	f804                	.insn	2, 0xf804
     70a:	8c06                	.insn	2, 0x8c06
     70c:	045e0107          	.insn	4, 0x045e0107
     710:	078c                	.insn	2, 0x078c
     712:	0884                	.insn	2, 0x0884
     714:	5801                	.insn	2, 0x5801
     716:	0400                	.insn	2, 0x0400
     718:	078c                	.insn	2, 0x078c
     71a:	07d4                	.insn	2, 0x07d4
     71c:	7806                	.insn	2, 0x7806
     71e:	8700                	.insn	2, 0x8700
     720:	1d00                	.insn	2, 0x1d00
     722:	049f 07d4 07e0      	.insn	6, 0x07e007d4049f
     728:	5f01                	.insn	2, 0x5f01
     72a:	e004                	.insn	2, 0xe004
     72c:	0a07e407          	.insn	4, 0x0a07e407
     730:	0085                	.insn	2, 0x0085
     732:	2440                	.insn	2, 0x2440
     734:	2540                	.insn	2, 0x2540
     736:	007a                	.insn	2, 0x007a
     738:	9f21                	.insn	2, 0x9f21
     73a:	e404                	.insn	2, 0xe404
     73c:	0107fc07          	.insn	4, 0x0107fc07
     740:	045f 07fc 0884      	.insn	6, 0x088407fc045f
     746:	6401                	.insn	2, 0x6401
     748:	0400                	.insn	2, 0x0400
     74a:	06cc                	.insn	2, 0x06cc
     74c:	078c                	.insn	2, 0x078c
     74e:	5801                	.insn	2, 0x5801
     750:	b404                	.insn	2, 0xb404
     752:	0107bc07          	.insn	4, 0x0107bc07
     756:	045a                	.insn	2, 0x045a
     758:	07bc                	.insn	2, 0x07bc
     75a:	07fc                	.insn	2, 0x07fc
     75c:	6401                	.insn	2, 0x6401
     75e:	0400                	.insn	2, 0x0400
     760:	0888                	.insn	2, 0x0888
     762:	08ec                	.insn	2, 0x08ec
     764:	5d01                	.insn	2, 0x5d01
     766:	0400                	.insn	2, 0x0400
     768:	089c                	.insn	2, 0x089c
     76a:	08d4                	.insn	2, 0x08d4
     76c:	5e01                	.insn	2, 0x5e01
     76e:	e804                	.insn	2, 0xe804
     770:	a308                	.insn	2, 0xa308
     772:	0109                	.insn	2, 0x0109
     774:	005e                	.insn	2, 0x005e
     776:	0605                	.insn	2, 0x0605
     778:	0000                	.insn	2, 0x
     77a:	0005                	.insn	2, 0x0005
     77c:	0004                	.insn	2, 0x0004
     77e:	0000                	.insn	2, 0x
     780:	0000                	.insn	2, 0x
     782:	0004                	.insn	2, 0x0004
     784:	0194                	.insn	2, 0x0194
     786:	5a06                	.insn	2, 0x5a06
     788:	935b0493          	addi	s1,s6,-1739
     78c:	0404                	.insn	2, 0x0404
     78e:	0194                	.insn	2, 0x0194
     790:	038c                	.insn	2, 0x038c
     792:	a306                	.insn	2, 0xa306
     794:	2d0aa503          	lw	a0,720(s5)
     798:	049f 038c 0484      	.insn	6, 0x0484038c049f
     79e:	5a06                	.insn	2, 0x5a06
     7a0:	935b0493          	addi	s1,s6,-1739
     7a4:	0404                	.insn	2, 0x0404
     7a6:	0484                	.insn	2, 0x0484
     7a8:	05b0                	.insn	2, 0x05b0
     7aa:	a306                	.insn	2, 0xa306
     7ac:	2d0aa503          	lw	a0,720(s5)
     7b0:	049f 05b0 06a0      	.insn	6, 0x06a005b0049f
     7b6:	5a06                	.insn	2, 0x5a06
     7b8:	935b0493          	addi	s1,s6,-1739
     7bc:	0404                	.insn	2, 0x0404
     7be:	06a0                	.insn	2, 0x06a0
     7c0:	06a8                	.insn	2, 0x06a8
     7c2:	a306                	.insn	2, 0xa306
     7c4:	2d0aa503          	lw	a0,720(s5)
     7c8:	049f 06a8 06e8      	.insn	6, 0x06e806a8049f
     7ce:	5a06                	.insn	2, 0x5a06
     7d0:	935b0493          	addi	s1,s6,-1739
     7d4:	0404                	.insn	2, 0x0404
     7d6:	06e8                	.insn	2, 0x06e8
     7d8:	0aa8                	.insn	2, 0x0aa8
     7da:	a306                	.insn	2, 0xa306
     7dc:	2d0aa503          	lw	a0,720(s5)
     7e0:	009f 0004 0194      	.insn	6, 0x01940004009f
     7e6:	5c06                	.insn	2, 0x5c06
     7e8:	935d0493          	addi	s1,s10,-1739
     7ec:	0404                	.insn	2, 0x0404
     7ee:	0194                	.insn	2, 0x0194
     7f0:	038c                	.insn	2, 0x038c
     7f2:	a306                	.insn	2, 0xa306
     7f4:	2d0ca503          	lw	a0,720(s9)
     7f8:	049f 038c 048b      	.insn	6, 0x048b038c049f
     7fe:	5c06                	.insn	2, 0x5c06
     800:	935d0493          	addi	s1,s10,-1739
     804:	0404                	.insn	2, 0x0404
     806:	05b0048b          	.insn	4, 0x05b0048b
     80a:	a306                	.insn	2, 0xa306
     80c:	2d0ca503          	lw	a0,720(s9)
     810:	049f 05b0 06fb      	.insn	6, 0x06fb05b0049f
     816:	5c06                	.insn	2, 0x5c06
     818:	935d0493          	addi	s1,s10,-1739
     81c:	0404                	.insn	2, 0x0404
     81e:	0aa806fb          	.insn	4, 0x0aa806fb
     822:	a306                	.insn	2, 0xa306
     824:	2d0ca503          	lw	a0,720(s9)
     828:	009f a404 a80a      	.insn	6, 0xa80aa404009f
     82e:	060a                	.insn	2, 0x060a
     830:	935a                	.insn	2, 0x935a
     832:	5b04                	.insn	2, 0x5b04
     834:	04000493          	li	s1,64
     838:	d400                	.insn	2, 0xd400
     83a:	0602                	.insn	2, 0x0602
     83c:	cba0                	.insn	2, 0xcba0
     83e:	000a                	.insn	2, 0x000a
     840:	0000                	.insn	2, 0x
     842:	8c04                	.insn	2, 0x8c04
     844:	060aa803          	lw	a6,96(s5)
     848:	cba0                	.insn	2, 0xcba0
     84a:	000a                	.insn	2, 0x000a
     84c:	0000                	.insn	2, 0x
     84e:	0400                	.insn	2, 0x0400
     850:	4c00                	.insn	2, 0x4c00
     852:	5c06                	.insn	2, 0x5c06
     854:	935d0493          	addi	s1,s10,-1739
     858:	0404                	.insn	2, 0x0404
     85a:	05c4                	.insn	2, 0x05c4
     85c:	0690                	.insn	2, 0x0690
     85e:	5c06                	.insn	2, 0x5c06
     860:	935d0493          	addi	s1,s10,-1739
     864:	0404                	.insn	2, 0x0404
     866:	06a8                	.insn	2, 0x06a8
     868:	06c0                	.insn	2, 0x06c0
     86a:	5c06                	.insn	2, 0x5c06
     86c:	935d0493          	addi	s1,s10,-1739
     870:	0004                	.insn	2, 0x0004
     872:	0004                	.insn	2, 0x0004
     874:	0194                	.insn	2, 0x0194
     876:	5a06                	.insn	2, 0x5a06
     878:	935b0493          	addi	s1,s6,-1739
     87c:	0404                	.insn	2, 0x0404
     87e:	038c                	.insn	2, 0x038c
     880:	03cc                	.insn	2, 0x03cc
     882:	5806                	.insn	2, 0x5806
     884:	93590493          	addi	s1,s2,-1739
     888:	0404                	.insn	2, 0x0404
     88a:	03cc                	.insn	2, 0x03cc
     88c:	03f0                	.insn	2, 0x03f0
     88e:	5806                	.insn	2, 0x5806
     890:	935b0493          	addi	s1,s6,-1739
     894:	0404                	.insn	2, 0x0404
     896:	05b0                	.insn	2, 0x05b0
     898:	0694                	.insn	2, 0x0694
     89a:	5806                	.insn	2, 0x5806
     89c:	93590493          	addi	s1,s2,-1739
     8a0:	0404                	.insn	2, 0x0404
     8a2:	0694                	.insn	2, 0x0694
     8a4:	0698                	.insn	2, 0x0698
     8a6:	5806                	.insn	2, 0x5806
     8a8:	935b0493          	addi	s1,s6,-1739
     8ac:	0404                	.insn	2, 0x0404
     8ae:	0698                	.insn	2, 0x0698
     8b0:	06a0                	.insn	2, 0x06a0
     8b2:	5a06                	.insn	2, 0x5a06
     8b4:	935b0493          	addi	s1,s6,-1739
     8b8:	0404                	.insn	2, 0x0404
     8ba:	06a8                	.insn	2, 0x06a8
     8bc:	06d0                	.insn	2, 0x06d0
     8be:	5806                	.insn	2, 0x5806
     8c0:	93590493          	addi	s1,s2,-1739
     8c4:	0404                	.insn	2, 0x0404
     8c6:	06d0                	.insn	2, 0x06d0
     8c8:	06d8                	.insn	2, 0x06d8
     8ca:	5a06                	.insn	2, 0x5a06
     8cc:	93590493          	addi	s1,s2,-1739
     8d0:	0004                	.insn	2, 0x0004
     8d2:	0004                	.insn	2, 0x0004
     8d4:	018c                	.insn	2, 0x018c
     8d6:	5c01                	.insn	2, 0x5c01
     8d8:	8c04                	.insn	2, 0x8c04
     8da:	d401                	.insn	2, 0xd401
     8dc:	0102                	.insn	2, 0x0102
     8de:	038c0463          	beq	s8,s8,906 <COOLING_THRESHOLD_ON+0x8ac>
     8e2:	03b0                	.insn	2, 0x03b0
     8e4:	5c01                	.insn	2, 0x5c01
     8e6:	e004                	.insn	2, 0xe004
     8e8:	0105b003          	.insn	4, 0x0105b003
     8ec:	05b00463          	beq	zero,s11,934 <COOLING_THRESHOLD_ON+0x8da>
     8f0:	06f0                	.insn	2, 0x06f0
     8f2:	5c01                	.insn	2, 0x5c01
     8f4:	f004                	.insn	2, 0xf004
     8f6:	f406                	.insn	2, 0xf406
     8f8:	0109                	.insn	2, 0x0109
     8fa:	0062                	.insn	2, 0x0062
     8fc:	0004                	.insn	2, 0x0004
     8fe:	014c                	.insn	2, 0x014c
     900:	045d                	.insn	2, 0x045d
     902:	05c4                	.insn	2, 0x05c4
     904:	0690                	.insn	2, 0x0690
     906:	5d01                	.insn	2, 0x5d01
     908:	a804                	.insn	2, 0xa804
     90a:	c006                	.insn	2, 0xc006
     90c:	0106                	.insn	2, 0x0106
     90e:	045d                	.insn	2, 0x045d
     910:	06c8                	.insn	2, 0x06c8
     912:	0aa8                	.insn	2, 0x0aa8
     914:	6701                	.insn	2, 0x6701
     916:	0400                	.insn	2, 0x0400
     918:	9438                	.insn	2, 0x9438
     91a:	0101                	.insn	2, 0x0101
     91c:	045a                	.insn	2, 0x045a
     91e:	0194                	.insn	2, 0x0194
     920:	02a8                	.insn	2, 0x02a8
     922:	5801                	.insn	2, 0x5801
     924:	cc04                	.insn	2, 0xcc04
     926:	d402                	.insn	2, 0xd402
     928:	0102                	.insn	2, 0x0102
     92a:	0458                	.insn	2, 0x0458
     92c:	038c                	.insn	2, 0x038c
     92e:	0698                	.insn	2, 0x0698
     930:	5801                	.insn	2, 0x5801
     932:	9804                	.insn	2, 0x9804
     934:	9c06                	.insn	2, 0x9c06
     936:	0106                	.insn	2, 0x0106
     938:	045a                	.insn	2, 0x045a
     93a:	06a8                	.insn	2, 0x06a8
     93c:	06d0                	.insn	2, 0x06d0
     93e:	5801                	.insn	2, 0x5801
     940:	d004                	.insn	2, 0xd004
     942:	e806                	.insn	2, 0xe806
     944:	0106                	.insn	2, 0x0106
     946:	045a                	.insn	2, 0x045a
     948:	06f0                	.insn	2, 0x06f0
     94a:	0a8c                	.insn	2, 0x0a8c
     94c:	6601                	.insn	2, 0x6601
     94e:	9404                	.insn	2, 0x9404
     950:	9c0a                	.insn	2, 0x9c0a
     952:	010a                	.insn	2, 0x010a
     954:	005f 3c04 0190      	.insn	6, 0x01903c04005f
     95a:	5b01                	.insn	2, 0x5b01
     95c:	9004                	.insn	2, 0x9004
     95e:	f401                	.insn	2, 0xf401
     960:	0101                	.insn	2, 0x0101
     962:	0459                	.insn	2, 0x0459
     964:	038c                	.insn	2, 0x038c
     966:	03cc                	.insn	2, 0x03cc
     968:	5901                	.insn	2, 0x5901
     96a:	cc04                	.insn	2, 0xcc04
     96c:	0103f003          	.insn	4, 0x0103f003
     970:	03f4045b          	.insn	4, 0x03f4045b
     974:	05ac                	.insn	2, 0x05ac
     976:	6401                	.insn	2, 0x6401
     978:	ac04                	.insn	2, 0xac04
     97a:	9405                	.insn	2, 0x9405
     97c:	0106                	.insn	2, 0x0106
     97e:	0459                	.insn	2, 0x0459
     980:	0694                	.insn	2, 0x0694
     982:	069c                	.insn	2, 0x069c
     984:	5b01                	.insn	2, 0x5b01
     986:	9c04                	.insn	2, 0x9c04
     988:	d806                	.insn	2, 0xd806
     98a:	0106                	.insn	2, 0x0106
     98c:	0459                	.insn	2, 0x0459
     98e:	06f0                	.insn	2, 0x06f0
     990:	08d8                	.insn	2, 0x08d8
     992:	5801                	.insn	2, 0x5801
     994:	d804                	.insn	2, 0xd804
     996:	9408                	.insn	2, 0x9408
     998:	010a                	.insn	2, 0x010a
     99a:	0459                	.insn	2, 0x0459
     99c:	0a94                	.insn	2, 0x0a94
     99e:	0aa4                	.insn	2, 0x0aa4
     9a0:	5b01                	.insn	2, 0x5b01
     9a2:	a404                	.insn	2, 0xa404
     9a4:	a80a                	.insn	2, 0xa80a
     9a6:	090a                	.insn	2, 0x090a
     9a8:	0079                	.insn	2, 0x0079
     9aa:	007e                	.insn	2, 0x007e
     9ac:	861c                	.insn	2, 0x861c
     9ae:	1c00                	.insn	2, 0x1c00
     9b0:	009f e404 b003      	.insn	6, 0xb003e404009f
     9b6:	0105                	.insn	2, 0x0105
     9b8:	06f00467          	jalr	s0,111(zero) # 6f <COOLING_THRESHOLD_ON+0x15>
     9bc:	5a0106fb          	.insn	4, 0x5a0106fb
     9c0:	fb04                	.insn	2, 0xfb04
     9c2:	b406                	.insn	2, 0xb406
     9c4:	00630107          	.insn	4, 0x00630107
     9c8:	8804                	.insn	2, 0x8804
     9ca:	9c06                	.insn	2, 0x9c06
     9cc:	0206                	.insn	2, 0x0206
     9ce:	9f31                	.insn	2, 0x9f31
     9d0:	0400                	.insn	2, 0x0400
     9d2:	069c                	.insn	2, 0x069c
     9d4:	06a8                	.insn	2, 0x06a8
     9d6:	3002                	.insn	2, 0x3002
     9d8:	049f 0a84 0aa8      	.insn	6, 0x0aa80a84049f
     9de:	3002                	.insn	2, 0x3002
     9e0:	009f dc04 ec03      	.insn	6, 0xec03dc04009f
     9e6:	045f0103          	lb	sp,69(t5)
     9ea:	06bc                	.insn	2, 0x06bc
     9ec:	0a98                	.insn	2, 0x0a98
     9ee:	6501                	.insn	2, 0x6501
     9f0:	0400                	.insn	2, 0x0400
     9f2:	d47c                	.insn	2, 0xd47c
     9f4:	0102                	.insn	2, 0x0102
     9f6:	0462                	.insn	2, 0x0462
     9f8:	03d8                	.insn	2, 0x03d8
     9fa:	05b0                	.insn	2, 0x05b0
     9fc:	6201                	.insn	2, 0x6201
     9fe:	fc04                	.insn	2, 0xfc04
     a00:	a805                	.insn	2, 0xa805
     a02:	0106                	.insn	2, 0x0106
     a04:	0464                	.insn	2, 0x0464
     a06:	06bc                	.insn	2, 0x06bc
     a08:	0aa8                	.insn	2, 0x0aa8
     a0a:	6401                	.insn	2, 0x6401
     a0c:	0400                	.insn	2, 0x0400
     a0e:	9450                	.insn	2, 0x9450
     a10:	0101                	.insn	2, 0x0101
     a12:	045c                	.insn	2, 0x045c
     a14:	038c                	.insn	2, 0x038c
     a16:	03a0                	.insn	2, 0x03a0
     a18:	5c01                	.insn	2, 0x5c01
     a1a:	0400                	.insn	2, 0x0400
     a1c:	7464                	.insn	2, 0x7464
     a1e:	5f01                	.insn	2, 0x5f01
     a20:	0400                	.insn	2, 0x0400
     a22:	0198                	.insn	2, 0x0198
     a24:	02d4                	.insn	2, 0x02d4
     a26:	6501                	.insn	2, 0x6501
     a28:	0400                	.insn	2, 0x0400
     a2a:	01b0                	.insn	2, 0x01b0
     a2c:	02d4                	.insn	2, 0x02d4
     a2e:	6601                	.insn	2, 0x6601
     a30:	0400                	.insn	2, 0x0400
     a32:	01b0                	.insn	2, 0x01b0
     a34:	01e0                	.insn	2, 0x01e0
     a36:	790c                	.insn	2, 0x790c
     a38:	a800                	.insn	2, 0xa800
     a3a:	8526                	.insn	2, 0x8526
     a3c:	a800                	.insn	2, 0xa800
     a3e:	1b26                	.insn	2, 0x1b26
     a40:	00a8                	.insn	2, 0x00a8
     a42:	049f 01e0 01ec      	.insn	6, 0x01ec01e0049f
     a48:	790e                	.insn	2, 0x790e
     a4a:	a800                	.insn	2, 0xa800
     a4c:	8526                	.insn	2, 0x8526
     a4e:	a800                	.insn	2, 0xa800
     a50:	1b26                	.insn	2, 0x1b26
     a52:	00a8                	.insn	2, 0x00a8
     a54:	1c31                	.insn	2, 0x1c31
     a56:	049f 01ec 01f0      	.insn	6, 0x01f001ec049f
     a5c:	790e                	.insn	2, 0x790e
     a5e:	a800                	.insn	2, 0xa800
     a60:	8526                	.insn	2, 0x8526
     a62:	a800                	.insn	2, 0xa800
     a64:	1b26                	.insn	2, 0x1b26
     a66:	00a8                	.insn	2, 0x00a8
     a68:	1c32                	.insn	2, 0x1c32
     a6a:	009f f404 b801      	.insn	6, 0xb801f404009f
     a70:	0c02                	.insn	2, 0x0c02
     a72:	0079                	.insn	2, 0x0079
     a74:	26a8                	.insn	2, 0x26a8
     a76:	0085                	.insn	2, 0x0085
     a78:	26a8                	.insn	2, 0x26a8
     a7a:	9f00a81b          	.insn	4, 0x9f00a81b
     a7e:	b804                	.insn	2, 0xb804
     a80:	c402                	.insn	2, 0xc402
     a82:	0e02                	.insn	2, 0x0e02
     a84:	0079                	.insn	2, 0x0079
     a86:	26a8                	.insn	2, 0x26a8
     a88:	0085                	.insn	2, 0x0085
     a8a:	26a8                	.insn	2, 0x26a8
     a8c:	3100a81b          	.insn	4, 0x3100a81b
     a90:	9f1c                	.insn	2, 0x9f1c
     a92:	c404                	.insn	2, 0xc404
     a94:	c802                	.insn	2, 0xc802
     a96:	0e02                	.insn	2, 0x0e02
     a98:	0079                	.insn	2, 0x0079
     a9a:	26a8                	.insn	2, 0x26a8
     a9c:	0085                	.insn	2, 0x0085
     a9e:	26a8                	.insn	2, 0x26a8
     aa0:	3200a81b          	.insn	4, 0x3200a81b
     aa4:	9f1c                	.insn	2, 0x9f1c
     aa6:	0400                	.insn	2, 0x0400
     aa8:	01b0                	.insn	2, 0x01b0
     aaa:	01dc                	.insn	2, 0x01dc
     aac:	7906                	.insn	2, 0x7906
     aae:	8500                	.insn	2, 0x8500
     ab0:	1d00                	.insn	2, 0x1d00
     ab2:	049f 01dc 01f4      	.insn	6, 0x01f401dc049f
     ab8:	5f01                	.insn	2, 0x5f01
     aba:	f404                	.insn	2, 0xf404
     abc:	d401                	.insn	2, 0xd401
     abe:	0102                	.insn	2, 0x0102
     ac0:	0059                	.insn	2, 0x0059
     ac2:	f404                	.insn	2, 0xf404
     ac4:	b401                	.insn	2, 0xb401
     ac6:	0602                	.insn	2, 0x0602
     ac8:	0079                	.insn	2, 0x0079
     aca:	0085                	.insn	2, 0x0085
     acc:	9f1d                	.insn	2, 0x9f1d
     ace:	b404                	.insn	2, 0xb404
     ad0:	d402                	.insn	2, 0xd402
     ad2:	0102                	.insn	2, 0x0102
     ad4:	0058                	.insn	2, 0x0058
     ad6:	c004                	.insn	2, 0xc004
     ad8:	c801                	.insn	2, 0xc801
     ada:	0101                	.insn	2, 0x0101
     adc:	045a                	.insn	2, 0x045a
     ade:	01c8                	.insn	2, 0x01c8
     ae0:	0294                	.insn	2, 0x0294
     ae2:	6401                	.insn	2, 0x6401
     ae4:	9404                	.insn	2, 0x9404
     ae6:	9c02                	.insn	2, 0x9c02
     ae8:	0102                	.insn	2, 0x0102
     aea:	045a                	.insn	2, 0x045a
     aec:	029c                	.insn	2, 0x029c
     aee:	02d4                	.insn	2, 0x02d4
     af0:	6401                	.insn	2, 0x6401
     af2:	0400                	.insn	2, 0x0400
     af4:	03a8                	.insn	2, 0x03a8
     af6:	03b0                	.insn	2, 0x03b0
     af8:	5c01                	.insn	2, 0x5c01
     afa:	b004                	.insn	2, 0xb004
     afc:	c405                	.insn	2, 0xc405
     afe:	0105                	.insn	2, 0x0105
     b00:	005c                	.insn	2, 0x005c
     b02:	bc04                	.insn	2, 0xbc04
     b04:	0103d403          	lhu	s0,16(t2)
     b08:	005e                	.insn	2, 0x005e
     b0a:	f804                	.insn	2, 0xf804
     b0c:	0105b003          	.insn	4, 0x0105b003
     b10:	0066                	.insn	2, 0x0066
     b12:	9004                	.insn	2, 0x9004
     b14:	f404                	.insn	2, 0xf404
     b16:	0104                	.insn	2, 0x0104
     b18:	0465                	.insn	2, 0x0465
     b1a:	04f4                	.insn	2, 0x04f4
     b1c:	05b0                	.insn	2, 0x05b0
     b1e:	40008307          	.insn	4, 0x40008307
     b22:	4024                	.insn	2, 0x4024
     b24:	9f25                	.insn	2, 0x9f25
     b26:	0400                	.insn	2, 0x0400
     b28:	0490                	.insn	2, 0x0490
     b2a:	04c0                	.insn	2, 0x04c0
     b2c:	870c                	.insn	2, 0x870c
     b2e:	a800                	.insn	2, 0xa800
     b30:	8626                	.insn	2, 0x8626
     b32:	a800                	.insn	2, 0xa800
     b34:	1b26                	.insn	2, 0x1b26
     b36:	00a8                	.insn	2, 0x00a8
     b38:	049f 04c0 04cc      	.insn	6, 0x04cc04c0049f
     b3e:	870e                	.insn	2, 0x870e
     b40:	a800                	.insn	2, 0xa800
     b42:	8626                	.insn	2, 0x8626
     b44:	a800                	.insn	2, 0xa800
     b46:	1b26                	.insn	2, 0x1b26
     b48:	00a8                	.insn	2, 0x00a8
     b4a:	1c31                	.insn	2, 0x1c31
     b4c:	049f 04cc 04d0      	.insn	6, 0x04d004cc049f
     b52:	870e                	.insn	2, 0x870e
     b54:	a800                	.insn	2, 0xa800
     b56:	8626                	.insn	2, 0x8626
     b58:	a800                	.insn	2, 0xa800
     b5a:	1b26                	.insn	2, 0x1b26
     b5c:	00a8                	.insn	2, 0x00a8
     b5e:	1c32                	.insn	2, 0x1c32
     b60:	009f d404 9804      	.insn	6, 0x9804d404009f
     b66:	0c05                	.insn	2, 0x0c05
     b68:	0079                	.insn	2, 0x0079
     b6a:	26a8                	.insn	2, 0x26a8
     b6c:	0086                	.insn	2, 0x0086
     b6e:	26a8                	.insn	2, 0x26a8
     b70:	9f00a81b          	.insn	4, 0x9f00a81b
     b74:	9804                	.insn	2, 0x9804
     b76:	a405                	.insn	2, 0xa405
     b78:	0e05                	.insn	2, 0x0e05
     b7a:	0079                	.insn	2, 0x0079
     b7c:	26a8                	.insn	2, 0x26a8
     b7e:	0086                	.insn	2, 0x0086
     b80:	26a8                	.insn	2, 0x26a8
     b82:	3100a81b          	.insn	4, 0x3100a81b
     b86:	9f1c                	.insn	2, 0x9f1c
     b88:	a404                	.insn	2, 0xa404
     b8a:	a805                	.insn	2, 0xa805
     b8c:	0e05                	.insn	2, 0x0e05
     b8e:	0079                	.insn	2, 0x0079
     b90:	26a8                	.insn	2, 0x26a8
     b92:	0086                	.insn	2, 0x0086
     b94:	26a8                	.insn	2, 0x26a8
     b96:	3200a81b          	.insn	4, 0x3200a81b
     b9a:	9f1c                	.insn	2, 0x9f1c
     b9c:	0400                	.insn	2, 0x0400
     b9e:	0490                	.insn	2, 0x0490
     ba0:	04bc                	.insn	2, 0x04bc
     ba2:	8706                	.insn	2, 0x8706
     ba4:	8600                	.insn	2, 0x8600
     ba6:	1d00                	.insn	2, 0x1d00
     ba8:	049f 04bc 04d4      	.insn	6, 0x04d404bc049f
     bae:	5e01                	.insn	2, 0x5e01
     bb0:	d404                	.insn	2, 0xd404
     bb2:	ac04                	.insn	2, 0xac04
     bb4:	0105                	.insn	2, 0x0105
     bb6:	0059                	.insn	2, 0x0059
     bb8:	d404                	.insn	2, 0xd404
     bba:	9404                	.insn	2, 0x9404
     bbc:	0605                	.insn	2, 0x0605
     bbe:	0079                	.insn	2, 0x0079
     bc0:	0086                	.insn	2, 0x0086
     bc2:	9f1d                	.insn	2, 0x9f1d
     bc4:	9404                	.insn	2, 0x9404
     bc6:	ac05                	.insn	2, 0xac05
     bc8:	0105                	.insn	2, 0x0105
     bca:	045f 05ac 05b0      	.insn	6, 0x05b005ac045f
     bd0:	5901                	.insn	2, 0x5901
     bd2:	0400                	.insn	2, 0x0400
     bd4:	04a0                	.insn	2, 0x04a0
     bd6:	04d4                	.insn	2, 0x04d4
     bd8:	5901                	.insn	2, 0x5901
     bda:	f404                	.insn	2, 0xf404
     bdc:	fc04                	.insn	2, 0xfc04
     bde:	0104                	.insn	2, 0x0104
     be0:	045a                	.insn	2, 0x045a
     be2:	04fc                	.insn	2, 0x04fc
     be4:	05b0                	.insn	2, 0x05b0
     be6:	6501                	.insn	2, 0x6501
     be8:	0400                	.insn	2, 0x0400
     bea:	05c8                	.insn	2, 0x05c8
     bec:	0690                	.insn	2, 0x0690
     bee:	5d01                	.insn	2, 0x5d01
     bf0:	a804                	.insn	2, 0xa804
     bf2:	c006                	.insn	2, 0xc006
     bf4:	0106                	.insn	2, 0x0106
     bf6:	005d                	.insn	2, 0x005d
     bf8:	dc04                	.insn	2, 0xdc04
     bfa:	f805                	.insn	2, 0xf805
     bfc:	0105                	.insn	2, 0x0105
     bfe:	005f 9804 9c06      	.insn	6, 0x9c069804005f
     c04:	0106                	.insn	2, 0x0106
     c06:	0058                	.insn	2, 0x0058
     c08:	e404                	.insn	2, 0xe404
     c0a:	8009                	.insn	2, 0x8009
     c0c:	010a                	.insn	2, 0x010a
     c0e:	045f 0a84 0a88      	.insn	6, 0x0a880a84045f
     c14:	5f01                	.insn	2, 0x5f01
     c16:	0400                	.insn	2, 0x0400
     c18:	06f0                	.insn	2, 0x06f0
     c1a:	08d8                	.insn	2, 0x08d8
     c1c:	5901                	.insn	2, 0x5901
     c1e:	d804                	.insn	2, 0xd804
     c20:	a808                	.insn	2, 0xa808
     c22:	050a                	.insn	2, 0x050a
     c24:	25400087          	.insn	4, 0x25400087
     c28:	009f f404 8006      	.insn	6, 0x8006f404009f
     c2e:	0108                	.insn	2, 0x0108
     c30:	0468                	.insn	2, 0x0468
     c32:	0880                	.insn	2, 0x0880
     c34:	0aa8                	.insn	2, 0x0aa8
     c36:	40008707          	.insn	4, 0x40008707
     c3a:	4024                	.insn	2, 0x4024
     c3c:	9f25                	.insn	2, 0x9f25
     c3e:	0400                	.insn	2, 0x0400
     c40:	0784                	.insn	2, 0x0784
     c42:	0788                	.insn	2, 0x0788
     c44:	5a01                	.insn	2, 0x5a01
     c46:	8804                	.insn	2, 0x8804
     c48:	01078f07          	.insn	4, 0x01078f07
     c4c:	078f045b          	.insn	4, 0x078f045b
     c50:	07c0                	.insn	2, 0x07c0
     c52:	6a01                	.insn	2, 0x6a01
     c54:	c004                	.insn	2, 0xc004
     c56:	0108c407          	.insn	4, 0x0108c407
     c5a:	ec040063          	beqz	s0,31a <COOLING_THRESHOLD_ON+0x2c0>
     c5e:	0107f007          	.insn	4, 0x0107f007
     c62:	045a                	.insn	2, 0x045a
     c64:	07f0                	.insn	2, 0x07f0
     c66:	5b0107f7          	.insn	4, 0x5b0107f7
     c6a:	f704                	.insn	2, 0xf704
     c6c:	0108ac07          	.insn	4, 0x0108ac07
     c70:	046a                	.insn	2, 0x046a
     c72:	08ac                	.insn	2, 0x08ac
     c74:	08cc                	.insn	2, 0x08cc
     c76:	5f01                	.insn	2, 0x5f01
     c78:	0400                	.insn	2, 0x0400
     c7a:	06f4                	.insn	2, 0x06f4
     c7c:	7a0606fb          	.insn	4, 0x7a0606fb
     c80:	7900                	.insn	2, 0x7900
     c82:	1d00                	.insn	2, 0x1d00
     c84:	049f 06fb 07b0      	.insn	6, 0x07b006fb049f
     c8a:	8306                	.insn	2, 0x8306
     c8c:	7900                	.insn	2, 0x7900
     c8e:	1d00                	.insn	2, 0x1d00
     c90:	049f 07b0 07bc      	.insn	6, 0x07bc07b0049f
     c96:	5f01                	.insn	2, 0x5f01
     c98:	bc04                	.insn	2, 0xbc04
     c9a:	0807c007          	.insn	4, 0x0807c007
     c9e:	0078                	.insn	2, 0x0078
     ca0:	2540                	.insn	2, 0x2540
     ca2:	007a                	.insn	2, 0x007a
     ca4:	9f21                	.insn	2, 0x9f21
     ca6:	c004                	.insn	2, 0xc004
     ca8:	0107d407          	.insn	4, 0x0107d407
     cac:	045f 07d4 0aa8      	.insn	6, 0x0aa807d4045f
     cb2:	6901                	.insn	2, 0x6901
     cb4:	0400                	.insn	2, 0x0400
     cb6:	07d4                	.insn	2, 0x07d4
     cb8:	089c                	.insn	2, 0x089c
     cba:	8906                	.insn	2, 0x8906
     cbc:	7900                	.insn	2, 0x7900
     cbe:	1d00                	.insn	2, 0x1d00
     cc0:	049f 089c 08a8      	.insn	6, 0x08a8089c049f
     cc6:	5b01                	.insn	2, 0x5b01
     cc8:	a804                	.insn	2, 0xa804
     cca:	ac08                	.insn	2, 0xac08
     ccc:	0a08                	.insn	2, 0x0a08
     cce:	0078                	.insn	2, 0x0078
     cd0:	2440                	.insn	2, 0x2440
     cd2:	2540                	.insn	2, 0x2540
     cd4:	007a                	.insn	2, 0x007a
     cd6:	9f21                	.insn	2, 0x9f21
     cd8:	ac04                	.insn	2, 0xac04
     cda:	d808                	.insn	2, 0xd808
     cdc:	0108                	.insn	2, 0x0108
     cde:	08d8045b          	.insn	4, 0x08d8045b
     ce2:	0aa8                	.insn	2, 0x0aa8
     ce4:	5901                	.insn	2, 0x5901
     ce6:	0400                	.insn	2, 0x0400
     ce8:	0794                	.insn	2, 0x0794
     cea:	079c                	.insn	2, 0x079c
     cec:	5a01                	.insn	2, 0x5a01
     cee:	9c04                	.insn	2, 0x9c04
     cf0:	0107d407          	.insn	4, 0x0107d407
     cf4:	0469                	.insn	2, 0x0469
     cf6:	0880                	.insn	2, 0x0880
     cf8:	0884                	.insn	2, 0x0884
     cfa:	5a01                	.insn	2, 0x5a01
     cfc:	8404                	.insn	2, 0x8404
     cfe:	a808                	.insn	2, 0xa808
     d00:	010a                	.insn	2, 0x010a
     d02:	0068                	.insn	2, 0x0068
     d04:	f404                	.insn	2, 0xf404
     d06:	fc08                	.insn	2, 0xfc08
     d08:	0108                	.insn	2, 0x0108
     d0a:	045a                	.insn	2, 0x045a
     d0c:	08fc                	.insn	2, 0x08fc
     d0e:	09e0                	.insn	2, 0x09e0
     d10:	6001                	.insn	2, 0x6001
     d12:	0400                	.insn	2, 0x0400
     d14:	0988                	.insn	2, 0x0988
     d16:	0990                	.insn	2, 0x0990
     d18:	5a01                	.insn	2, 0x5a01
     d1a:	9004                	.insn	2, 0x9004
     d1c:	b409                	.insn	2, 0xb409
     d1e:	0109                	.insn	2, 0x0109
     d20:	045e                	.insn	2, 0x045e
     d22:	09bc                	.insn	2, 0x09bc
     d24:	09d8                	.insn	2, 0x09d8
     d26:	5f01                	.insn	2, 0x5f01
     d28:	0400                	.insn	2, 0x0400
     d2a:	099c                	.insn	2, 0x099c
     d2c:	09a4                	.insn	2, 0x09a4
     d2e:	5a01                	.insn	2, 0x5a01
     d30:	a404                	.insn	2, 0xa404
     d32:	a809                	.insn	2, 0xa809
     d34:	010a                	.insn	2, 0x010a
     d36:	0061                	.insn	2, 0x0061
     d38:	bc04                	.insn	2, 0xbc04
     d3a:	c409                	.insn	2, 0xc409
     d3c:	0109                	.insn	2, 0x0109
     d3e:	045a                	.insn	2, 0x045a
     d40:	09c4                	.insn	2, 0x09c4
     d42:	09d0                	.insn	2, 0x09d0
     d44:	5d01                	.insn	2, 0x5d01
     d46:	0400                	.insn	2, 0x0400
     d48:	08d8                	.insn	2, 0x08d8
     d4a:	0988                	.insn	2, 0x0988
     d4c:	5e01                	.insn	2, 0x5e01
     d4e:	0400                	.insn	2, 0x0400
     d50:	08dc                	.insn	2, 0x08dc
     d52:	09b0                	.insn	2, 0x09b0
     d54:	5f01                	.insn	2, 0x5f01
     d56:	b004                	.insn	2, 0xb004
     d58:	d409                	.insn	2, 0xd409
     d5a:	0609                	.insn	2, 0x0609
     d5c:	7f8c                	.insn	2, 0x7f8c
     d5e:	0082                	.insn	2, 0x0082
     d60:	9f1a                	.insn	2, 0x9f1a
     d62:	d404                	.insn	2, 0xd404
     d64:	f409                	.insn	2, 0xf409
     d66:	0609                	.insn	2, 0x0609
     d68:	0082                	.insn	2, 0x0082
     d6a:	007d                	.insn	2, 0x007d
     d6c:	9f1a                	.insn	2, 0x9f1a
     d6e:	0400                	.insn	2, 0x0400
     d70:	0a80                	.insn	2, 0x0a80
     d72:	0a84                	.insn	2, 0x0a84
     d74:	5f01                	.insn	2, 0x5f01
     d76:	0400                	.insn	2, 0x0400
     d78:	0a88                	.insn	2, 0x0a88
     d7a:	0a9c                	.insn	2, 0x0a9c
     d7c:	5f01                	.insn	2, 0x5f01
     d7e:	c400                	.insn	2, 0xc400
     d80:	0004                	.insn	2, 0x0004
     d82:	0500                	.insn	2, 0x0500
     d84:	0400                	.insn	2, 0x0400
     d86:	0000                	.insn	2, 0x
     d88:	0000                	.insn	2, 0x
     d8a:	0400                	.insn	2, 0x0400
     d8c:	6000                	.insn	2, 0x6000
     d8e:	5a01                	.insn	2, 0x5a01
     d90:	6004                	.insn	2, 0x6004
     d92:	01d0                	.insn	2, 0x01d0
     d94:	a306                	.insn	2, 0xa306
     d96:	260aa503          	lw	a0,608(s5)
     d9a:	049f 01d0 01d8      	.insn	6, 0x01d801d0049f
     da0:	5a01                	.insn	2, 0x5a01
     da2:	d804                	.insn	2, 0xd804
     da4:	f401                	.insn	2, 0xf401
     da6:	0601                	.insn	2, 0x0601
     da8:	0aa503a3          	sb	a0,167(a0)
     dac:	9f26                	.insn	2, 0x9f26
     dae:	f404                	.insn	2, 0xf404
     db0:	9401                	.insn	2, 0x9401
     db2:	0102                	.insn	2, 0x0102
     db4:	045a                	.insn	2, 0x045a
     db6:	0294                	.insn	2, 0x0294
     db8:	07a8                	.insn	2, 0x07a8
     dba:	a306                	.insn	2, 0xa306
     dbc:	260aa503          	lw	a0,608(s5)
     dc0:	009f 0004 0160      	.insn	6, 0x01600004009f
     dc6:	7860045b          	.insn	4, 0x7860045b
     dca:	6601                	.insn	2, 0x6601
     dcc:	7804                	.insn	2, 0x7804
     dce:	01d0                	.insn	2, 0x01d0
     dd0:	a306                	.insn	2, 0xa306
     dd2:	260ba503          	lw	a0,608(s7)
     dd6:	049f 01d0 01df      	.insn	6, 0x01df01d0049f
     ddc:	5b01                	.insn	2, 0x5b01
     dde:	df04                	.insn	2, 0xdf04
     de0:	f401                	.insn	2, 0xf401
     de2:	0101                	.insn	2, 0x0101
     de4:	0466                	.insn	2, 0x0466
     de6:	01f4                	.insn	2, 0x01f4
     de8:	0294                	.insn	2, 0x0294
     dea:	5b01                	.insn	2, 0x5b01
     dec:	9404                	.insn	2, 0x9404
     dee:	a802                	.insn	2, 0xa802
     df0:	03a30607          	.insn	4, 0x03a30607
     df4:	0ba5                	.insn	2, 0x0ba5
     df6:	9f26                	.insn	2, 0x9f26
     df8:	0400                	.insn	2, 0x0400
     dfa:	6400                	.insn	2, 0x6400
     dfc:	3002                	.insn	2, 0x3002
     dfe:	049f 01d0 0294      	.insn	6, 0x029401d0049f
     e04:	3002                	.insn	2, 0x3002
     e06:	009f 6004 0264      	.insn	6, 0x02646004009f
     e0c:	9f30                	.insn	2, 0x9f30
     e0e:	6404                	.insn	2, 0x6404
     e10:	01d0                	.insn	2, 0x01d0
     e12:	6701                	.insn	2, 0x6701
     e14:	9404                	.insn	2, 0x9404
     e16:	9002                	.insn	2, 0x9002
     e18:	04670103          	lb	sp,70(a4)
     e1c:	05e4                	.insn	2, 0x05e4
     e1e:	0694                	.insn	2, 0x0694
     e20:	6701                	.insn	2, 0x6701
     e22:	a004                	.insn	2, 0xa004
     e24:	b806                	.insn	2, 0xb806
     e26:	0106                	.insn	2, 0x0106
     e28:	078c0467          	jalr	s0,120(s8)
     e2c:	079c                	.insn	2, 0x079c
     e2e:	6701                	.insn	2, 0x6701
     e30:	0400                	.insn	2, 0x0400
     e32:	f044                	.insn	2, 0xf044
     e34:	0602                	.insn	2, 0x0602
     e36:	ff080083          	lb	ra,-16(a6)
     e3a:	9f1a                	.insn	2, 0x9f1a
     e3c:	e404                	.insn	2, 0xe404
     e3e:	9405                	.insn	2, 0x9405
     e40:	0606                	.insn	2, 0x0606
     e42:	ff080083          	lb	ra,-16(a6)
     e46:	9f1a                	.insn	2, 0x9f1a
     e48:	a004                	.insn	2, 0xa004
     e4a:	b806                	.insn	2, 0xb806
     e4c:	0606                	.insn	2, 0x0606
     e4e:	ff080083          	lb	ra,-16(a6)
     e52:	9f1a                	.insn	2, 0x9f1a
     e54:	8c04                	.insn	2, 0x8c04
     e56:	06079c07          	.insn	4, 0x06079c07
     e5a:	ff080083          	lb	ra,-16(a6)
     e5e:	9f1a                	.insn	2, 0x9f1a
     e60:	0400                	.insn	2, 0x0400
     e62:	6040                	.insn	2, 0x6040
     e64:	7906                	.insn	2, 0x7906
     e66:	0800                	.insn	2, 0x0800
     e68:	049f1aff 0101d060 	.insn	12, 0x01d004590101d060049f1aff
     e70:	01d00459 
     e74:	01e8                	.insn	2, 0x01e8
     e76:	7906                	.insn	2, 0x7906
     e78:	0800                	.insn	2, 0x0800
     e7a:	049f1aff 01f801f4 	.insn	12, 0x0800790601f801f4049f1aff
     e82:	08007906 
     e86:	049f1aff 028801f8 	.insn	12, 0x47007a08028801f8049f1aff
     e8e:	47007a08 
     e92:	0825                	.insn	2, 0x0825
     e94:	049f1aff 028c0288 	.insn	12, 0x08007906028c0288049f1aff
     e9c:	08007906 
     ea0:	049f1aff 0294028c 	.insn	12, 0x47007a080294028c049f1aff
     ea8:	47007a08 
     eac:	0825                	.insn	2, 0x0825
     eae:	049f1aff 03a00294 	.insn	12, 0xe404590103a00294049f1aff
     eb6:	e4045901 
     eba:	9405                	.insn	2, 0x9405
     ebc:	0106                	.insn	2, 0x0106
     ebe:	0459                	.insn	2, 0x0459
     ec0:	06a0                	.insn	2, 0x06a0
     ec2:	06b8                	.insn	2, 0x06b8
     ec4:	5901                	.insn	2, 0x5901
     ec6:	8c04                	.insn	2, 0x8c04
     ec8:	01079c07          	.insn	4, 0x01079c07
     ecc:	0059                	.insn	2, 0x0059
     ece:	4004                	.insn	2, 0x4004
     ed0:	0150                	.insn	2, 0x0150
     ed2:	0465                	.insn	2, 0x0465
     ed4:	5450                	.insn	2, 0x5450
     ed6:	40008507          	.insn	4, 0x40008507
     eda:	9f212443          	.insn	4, 0x9f212443
     ede:	5404                	.insn	2, 0x5404
     ee0:	0b5c                	.insn	2, 0x0b5c
     ee2:	007a                	.insn	2, 0x007a
     ee4:	2439                	.insn	2, 0x2439
     ee6:	2539                	.insn	2, 0x2539
     ee8:	4340                	.insn	2, 0x4340
     eea:	2124                	.insn	2, 0x2124
     eec:	049f e85c 0102      	.insn	6, 0x0102e85c049f
     ef2:	0465                	.insn	2, 0x0465
     ef4:	05e4                	.insn	2, 0x05e4
     ef6:	05ec                	.insn	2, 0x05ec
     ef8:	6501                	.insn	2, 0x6501
     efa:	f004                	.insn	2, 0xf004
     efc:	9405                	.insn	2, 0x9405
     efe:	0106                	.insn	2, 0x0106
     f00:	0465                	.insn	2, 0x0465
     f02:	06a0                	.insn	2, 0x06a0
     f04:	06b8                	.insn	2, 0x06b8
     f06:	6501                	.insn	2, 0x6501
     f08:	8c04                	.insn	2, 0x8c04
     f0a:	01079c07          	.insn	4, 0x01079c07
     f0e:	0065                	.insn	2, 0x0065
     f10:	9404                	.insn	2, 0x9404
     f12:	9801                	.insn	2, 0x9801
     f14:	0201                	.insn	2, 0x0201
     f16:	9f30                	.insn	2, 0x9f30
     f18:	9804                	.insn	2, 0x9804
     f1a:	d001                	.insn	2, 0xd001
     f1c:	0101                	.insn	2, 0x0101
     f1e:	045e                	.insn	2, 0x045e
     f20:	02d8                	.insn	2, 0x02d8
     f22:	5e010383          	lb	t2,1504(sp)
     f26:	e404                	.insn	2, 0xe404
     f28:	fc05                	.insn	2, 0xfc05
     f2a:	0105                	.insn	2, 0x0105
     f2c:	045e                	.insn	2, 0x045e
     f2e:	06a0                	.insn	2, 0x06a0
     f30:	06b4                	.insn	2, 0x06b4
     f32:	5e01                	.insn	2, 0x5e01
     f34:	0400                	.insn	2, 0x0400
     f36:	d078                	.insn	2, 0xd078
     f38:	0601                	.insn	2, 0x0601
     f3a:	0086                	.insn	2, 0x0086
     f3c:	ff08                	.insn	2, 0xff08
     f3e:	9f1a                	.insn	2, 0x9f1a
     f40:	9404                	.insn	2, 0x9404
     f42:	ec02                	.insn	2, 0xec02
     f44:	0602                	.insn	2, 0x0602
     f46:	0086                	.insn	2, 0x0086
     f48:	ff08                	.insn	2, 0xff08
     f4a:	9f1a                	.insn	2, 0x9f1a
     f4c:	e404                	.insn	2, 0xe404
     f4e:	9405                	.insn	2, 0x9405
     f50:	0606                	.insn	2, 0x0606
     f52:	0086                	.insn	2, 0x0086
     f54:	ff08                	.insn	2, 0xff08
     f56:	9f1a                	.insn	2, 0x9f1a
     f58:	a004                	.insn	2, 0xa004
     f5a:	b806                	.insn	2, 0xb806
     f5c:	0606                	.insn	2, 0x0606
     f5e:	0086                	.insn	2, 0x0086
     f60:	ff08                	.insn	2, 0xff08
     f62:	9f1a                	.insn	2, 0x9f1a
     f64:	8c04                	.insn	2, 0x8c04
     f66:	06079c07          	.insn	4, 0x06079c07
     f6a:	0086                	.insn	2, 0x0086
     f6c:	ff08                	.insn	2, 0xff08
     f6e:	9f1a                	.insn	2, 0x9f1a
     f70:	0400                	.insn	2, 0x0400
     f72:	9474                	.insn	2, 0x9474
     f74:	0601                	.insn	2, 0x0601
     f76:	007f ff08 9f1a 9404 	.insn	10, 0xa00194049f1aff08007f
     f7e:	a001 
     f80:	0101                	.insn	2, 0x0101
     f82:	045f 0294 02a3      	.insn	6, 0x02a30294045f
     f88:	7f06                	.insn	2, 0x7f06
     f8a:	0800                	.insn	2, 0x0800
     f8c:	049f1aff 02bc02b8 	.insn	12, 0x08007f0602bc02b8049f1aff
     f94:	08007f06 
     f98:	049f1aff 02d002cc 	.insn	12, 0x08007f0602d002cc049f1aff
     fa0:	08007f06 
     fa4:	009f1aff 01847404 	.insn	12, 0x8404580101847404009f1aff
     fac:	84045801 
     fb0:	8801                	.insn	2, 0x8801
     fb2:	0701                	.insn	2, 0x0701
     fb4:	0078                	.insn	2, 0x0078
     fb6:	4340                	.insn	2, 0x4340
     fb8:	2124                	.insn	2, 0x2124
     fba:	049f 0190 01d0      	.insn	6, 0x01d00190049f
     fc0:	5801                	.insn	2, 0x5801
     fc2:	9404                	.insn	2, 0x9404
     fc4:	e802                	.insn	2, 0xe802
     fc6:	0102                	.insn	2, 0x0102
     fc8:	0458                	.insn	2, 0x0458
     fca:	05e4                	.insn	2, 0x05e4
     fcc:	05e8                	.insn	2, 0x05e8
     fce:	5801                	.insn	2, 0x5801
     fd0:	f004                	.insn	2, 0xf004
     fd2:	f805                	.insn	2, 0xf805
     fd4:	0105                	.insn	2, 0x0105
     fd6:	0458                	.insn	2, 0x0458
     fd8:	06a0                	.insn	2, 0x06a0
     fda:	06ac                	.insn	2, 0x06ac
     fdc:	5801                	.insn	2, 0x5801
     fde:	0400                	.insn	2, 0x0400
     fe0:	02d8                	.insn	2, 0x02d8
     fe2:	04d8                	.insn	2, 0x04d8
     fe4:	3002                	.insn	2, 0x3002
     fe6:	049f 05e4 05f0      	.insn	6, 0x05f005e4049f
     fec:	3002                	.insn	2, 0x3002
     fee:	049f 05f4 05fc      	.insn	6, 0x05fc05f4049f
     ff4:	6701                	.insn	2, 0x6701
     ff6:	fc04                	.insn	2, 0xfc04
     ff8:	9405                	.insn	2, 0x9405
     ffa:	0106                	.insn	2, 0x0106
     ffc:	045e                	.insn	2, 0x045e
     ffe:	06a4                	.insn	2, 0x06a4
    1000:	06a8                	.insn	2, 0x06a8
    1002:	5e01                	.insn	2, 0x5e01
    1004:	8c04                	.insn	2, 0x8c04
    1006:	01079407          	.insn	4, 0x01079407
    100a:	005e                	.insn	2, 0x005e
    100c:	b004                	.insn	2, 0xb004
    100e:	d001                	.insn	2, 0xd001
    1010:	0101                	.insn	2, 0x0101
    1012:	0462                	.insn	2, 0x0462
    1014:	02d8                	.insn	2, 0x02d8
    1016:	05c0                	.insn	2, 0x05c0
    1018:	6201                	.insn	2, 0x6201
    101a:	e404                	.insn	2, 0xe404
    101c:	f405                	.insn	2, 0xf405
    101e:	0105                	.insn	2, 0x0105
    1020:	0462                	.insn	2, 0x0462
    1022:	05f4                	.insn	2, 0x05f4
    1024:	05fc                	.insn	2, 0x05fc
    1026:	8306                	.insn	2, 0x8306
    1028:	0800                	.insn	2, 0x0800
    102a:	049f1aff 069405fc 	.insn	12, 0xa0046201069405fc049f1aff
    1032:	a0046201 
    1036:	a406                	.insn	2, 0xa406
    1038:	0106                	.insn	2, 0x0106
    103a:	0462                	.insn	2, 0x0462
    103c:	06a4                	.insn	2, 0x06a4
    103e:	06a8                	.insn	2, 0x06a8
    1040:	8606                	.insn	2, 0x8606
    1042:	0800                	.insn	2, 0x0800
    1044:	049f1aff 06b006a8 	.insn	12, 0xb004620106b006a8049f1aff
    104c:	b0046201 
    1050:	b806                	.insn	2, 0xb806
    1052:	0606                	.insn	2, 0x0606
    1054:	00860083          	lb	ra,8(a2)
    1058:	b8049f27          	.insn	4, 0xb8049f27
    105c:	9806                	.insn	2, 0x9806
    105e:	04620107          	.insn	4, 0x04620107
    1062:	079c                	.insn	2, 0x079c
    1064:	07a8                	.insn	2, 0x07a8
    1066:	6201                	.insn	2, 0x6201
    1068:	0400                	.insn	2, 0x0400
    106a:	01b0                	.insn	2, 0x01b0
    106c:	01d0                	.insn	2, 0x01d0
    106e:	6401                	.insn	2, 0x6401
    1070:	d804                	.insn	2, 0xd804
    1072:	dc02                	.insn	2, 0xdc02
    1074:	0104                	.insn	2, 0x0104
    1076:	0464                	.insn	2, 0x0464
    1078:	04dc                	.insn	2, 0x04dc
    107a:	05ac                	.insn	2, 0x05ac
    107c:	5e01                	.insn	2, 0x5e01
    107e:	e404                	.insn	2, 0xe404
    1080:	9405                	.insn	2, 0x9405
    1082:	0106                	.insn	2, 0x0106
    1084:	0464                	.insn	2, 0x0464
    1086:	06a0                	.insn	2, 0x06a0
    1088:	06b8                	.insn	2, 0x06b8
    108a:	6401                	.insn	2, 0x6401
    108c:	b804                	.insn	2, 0xb804
    108e:	c006                	.insn	2, 0xc006
    1090:	0106                	.insn	2, 0x0106
    1092:	045e                	.insn	2, 0x045e
    1094:	06c0                	.insn	2, 0x06c0
    1096:	06d0                	.insn	2, 0x06d0
    1098:	5f01                	.insn	2, 0x5f01
    109a:	d004                	.insn	2, 0xd004
    109c:	8806                	.insn	2, 0x8806
    109e:	82090607          	.insn	4, 0x82090607
    10a2:	0084                	.insn	2, 0x0084
    10a4:	9f1c                	.insn	2, 0x9f1c
    10a6:	8804                	.insn	2, 0x8804
    10a8:	09078c07          	.insn	4, 0x09078c07
    10ac:	007e                	.insn	2, 0x007e
    10ae:	0084                	.insn	2, 0x0084
    10b0:	081c                	.insn	2, 0x081c
    10b2:	049f1c7f 079c078c 	.insn	12, 0x04006401079c078c049f1c7f
    10ba:	04006401 
    10be:	04d8                	.insn	2, 0x04d8
    10c0:	0590                	.insn	2, 0x0590
    10c2:	5801                	.insn	2, 0x5801
    10c4:	9004                	.insn	2, 0x9004
    10c6:	9c05                	.insn	2, 0x9c05
    10c8:	0505                	.insn	2, 0x0505
    10ca:	0078                	.insn	2, 0x0078
    10cc:	049f2533          	.insn	4, 0x049f2533
    10d0:	059c                	.insn	2, 0x059c
    10d2:	05a8                	.insn	2, 0x05a8
    10d4:	5f01                	.insn	2, 0x5f01
    10d6:	f404                	.insn	2, 0xf404
    10d8:	fc05                	.insn	2, 0xfc05
    10da:	0105                	.insn	2, 0x0105
    10dc:	0465                	.insn	2, 0x0465
    10de:	05fc                	.insn	2, 0x05fc
    10e0:	0694                	.insn	2, 0x0694
    10e2:	5801                	.insn	2, 0x5801
    10e4:	a404                	.insn	2, 0xa404
    10e6:	a806                	.insn	2, 0xa806
    10e8:	0106                	.insn	2, 0x0106
    10ea:	0458                	.insn	2, 0x0458
    10ec:	06b8                	.insn	2, 0x06b8
    10ee:	06d4                	.insn	2, 0x06d4
    10f0:	5801                	.insn	2, 0x5801
    10f2:	dc04                	.insn	2, 0xdc04
    10f4:	fc06                	.insn	2, 0xfc06
    10f6:	0106                	.insn	2, 0x0106
    10f8:	045f 078c 079c      	.insn	6, 0x079c078c045f
    10fe:	5801                	.insn	2, 0x5801
    1100:	0400                	.insn	2, 0x0400
    1102:	05b8                	.insn	2, 0x05b8
    1104:	05dc                	.insn	2, 0x05dc
    1106:	7e08                	.insn	2, 0x7e08
    1108:	7a00                	.insn	2, 0x7a00
    110a:	2100                	.insn	2, 0x2100
    110c:	26a9                	.insn	2, 0x26a9
    110e:	049f 05dc 05e4      	.insn	6, 0x05e405dc049f
    1114:	5a01                	.insn	2, 0x5a01
    1116:	0400                	.insn	2, 0x0400
    1118:	01e0                	.insn	2, 0x01e0
    111a:	01f4                	.insn	2, 0x01f4
    111c:	9f787a03          	.insn	4, 0x9f787a03
    1120:	0400                	.insn	2, 0x0400
    1122:	02a4                	.insn	2, 0x02a4
    1124:	02b8                	.insn	2, 0x02b8
    1126:	9f787a03          	.insn	4, 0x9f787a03
    112a:	0400                	.insn	2, 0x0400
    112c:	02e4                	.insn	2, 0x02e4
    112e:	03f8                	.insn	2, 0x03f8
    1130:	6501                	.insn	2, 0x6501
    1132:	ec04                	.insn	2, 0xec04
    1134:	f005                	.insn	2, 0xf005
    1136:	0105                	.insn	2, 0x0105
    1138:	0065                	.insn	2, 0x0065
    113a:	e404                	.insn	2, 0xe404
    113c:	e802                	.insn	2, 0xe802
    113e:	0202                	.insn	2, 0x0202
    1140:	9f30                	.insn	2, 0x9f30
    1142:	e804                	.insn	2, 0xe804
    1144:	c002                	.insn	2, 0xc002
    1146:	04580103          	lb	sp,69(a6)
    114a:	05e8                	.insn	2, 0x05e8
    114c:	05f0                	.insn	2, 0x05f0
    114e:	5801                	.insn	2, 0x5801
    1150:	0400                	.insn	2, 0x0400
    1152:	04c4                	.insn	2, 0x04c4
    1154:	04c8                	.insn	2, 0x04c8
    1156:	7808                	.insn	2, 0x7808
    1158:	4000                	.insn	2, 0x4000
    115a:	7e24                	.insn	2, 0x7e24
    115c:	2100                	.insn	2, 0x2100
    115e:	049f 04d0 04d8      	.insn	6, 0x04d804d0049f
    1164:	5801                	.insn	2, 0x5801
    1166:	0400                	.insn	2, 0x0400
    1168:	04c4                	.insn	2, 0x04c4
    116a:	04cc                	.insn	2, 0x04cc
    116c:	7f06                	.insn	2, 0x7f06
    116e:	8300                	.insn	2, 0x8300
    1170:	1c00                	.insn	2, 0x1c00
    1172:	049f 04cc 04d4      	.insn	6, 0x04d404cc049f
    1178:	5f01                	.insn	2, 0x5f01
    117a:	0400                	.insn	2, 0x0400
    117c:	02dc                	.insn	2, 0x02dc
    117e:	04d8                	.insn	2, 0x04d8
    1180:	6801                	.insn	2, 0x6801
    1182:	e404                	.insn	2, 0xe404
    1184:	f005                	.insn	2, 0xf005
    1186:	0105                	.insn	2, 0x0105
    1188:	0068                	.insn	2, 0x0068
    118a:	ec04                	.insn	2, 0xec04
    118c:	d802                	.insn	2, 0xd802
    118e:	0104                	.insn	2, 0x0104
    1190:	0066                	.insn	2, 0x0066
    1192:	8804                	.insn	2, 0x8804
    1194:	01048803          	lb	a6,16(s1)
    1198:	04880463          	beq	a6,s0,11e0 <COOLING_THRESHOLD_ON+0x1186>
    119c:	04d8                	.insn	2, 0x04d8
    119e:	0a008807          	.insn	4, 0x0a008807
    11a2:	ffe0                	.insn	2, 0xffe0
    11a4:	9f1a                	.insn	2, 0x9f1a
    11a6:	0400                	.insn	2, 0x0400
    11a8:	0390                	.insn	2, 0x0390
    11aa:	0394                	.insn	2, 0x0394
    11ac:	5a01                	.insn	2, 0x5a01
    11ae:	9404                	.insn	2, 0x9404
    11b0:	01039b03          	lh	s6,16(t2)
    11b4:	039b045b          	.insn	4, 0x039b045b
    11b8:	03cc                	.insn	2, 0x03cc
    11ba:	6701                	.insn	2, 0x6701
    11bc:	cc04                	.insn	2, 0xcc04
    11be:	0104c803          	lbu	a6,16(s1)
    11c2:	0058                	.insn	2, 0x0058
    11c4:	f804                	.insn	2, 0xf804
    11c6:	0103fc03          	.insn	4, 0x0103fc03
    11ca:	045a                	.insn	2, 0x045a
    11cc:	03fc                	.insn	2, 0x03fc
    11ce:	5b010483          	lb	s1,1456(sp)
    11d2:	8304                	.insn	2, 0x8304
    11d4:	b004                	.insn	2, 0xb004
    11d6:	0104                	.insn	2, 0x0104
    11d8:	0465                	.insn	2, 0x0465
    11da:	04b0                	.insn	2, 0x04b0
    11dc:	04d8                	.insn	2, 0x04d8
    11de:	5e01                	.insn	2, 0x5e01
    11e0:	0400                	.insn	2, 0x0400
    11e2:	0388                	.insn	2, 0x0388
    11e4:	03bc                	.insn	2, 0x03bc
    11e6:	8506                	.insn	2, 0x8506
    11e8:	8600                	.insn	2, 0x8600
    11ea:	1d00                	.insn	2, 0x1d00
    11ec:	049f 03bc 03c8      	.insn	6, 0x03c803bc049f
    11f2:	5f01                	.insn	2, 0x5f01
    11f4:	cc04                	.insn	2, 0xcc04
    11f6:	0103e003          	.insn	4, 0x0103e003
    11fa:	045f 03e0 04d8      	.insn	6, 0x04d803e0045f
    1200:	5901                	.insn	2, 0x5901
    1202:	0400                	.insn	2, 0x0400
    1204:	03e0                	.insn	2, 0x03e0
    1206:	049c                	.insn	2, 0x049c
    1208:	7906                	.insn	2, 0x7906
    120a:	8600                	.insn	2, 0x8600
    120c:	1d00                	.insn	2, 0x1d00
    120e:	049f 049c 04b4      	.insn	6, 0x04b4049c049f
    1214:	5f01                	.insn	2, 0x5f01
    1216:	b404                	.insn	2, 0xb404
    1218:	c404                	.insn	2, 0xc404
    121a:	0104                	.insn	2, 0x0104
    121c:	045d                	.insn	2, 0x045d
    121e:	04c4                	.insn	2, 0x04c4
    1220:	04cc                	.insn	2, 0x04cc
    1222:	7f06                	.insn	2, 0x7f06
    1224:	8300                	.insn	2, 0x8300
    1226:	1c00                	.insn	2, 0x1c00
    1228:	049f 04cc 04d4      	.insn	6, 0x04d404cc049f
    122e:	5f01                	.insn	2, 0x5f01
    1230:	0400                	.insn	2, 0x0400
    1232:	03a0                	.insn	2, 0x03a0
    1234:	03e0                	.insn	2, 0x03e0
    1236:	5901                	.insn	2, 0x5901
    1238:	8804                	.insn	2, 0x8804
    123a:	9004                	.insn	2, 0x9004
    123c:	0104                	.insn	2, 0x0104
    123e:	045a                	.insn	2, 0x045a
    1240:	0490                	.insn	2, 0x0490
    1242:	04d8                	.insn	2, 0x04d8
    1244:	6301                	.insn	2, 0x6301
    1246:	ec00                	.insn	2, 0xec00
    1248:	0000                	.insn	2, 0x
    124a:	0500                	.insn	2, 0x0500
    124c:	0400                	.insn	2, 0x0400
    124e:	0000                	.insn	2, 0x
    1250:	0000                	.insn	2, 0x
    1252:	0400                	.insn	2, 0x0400
    1254:	1f00                	.insn	2, 0x1f00
    1256:	5a01                	.insn	2, 0x5a01
    1258:	1f04                	.insn	2, 0x1f04
    125a:	0140                	.insn	2, 0x0140
    125c:	0458                	.insn	2, 0x0458
    125e:	6040                	.insn	2, 0x6040
    1260:	a30a                	.insn	2, 0xa30a
    1262:	260aa503          	lw	a0,608(s5)
    1266:	2da8                	.insn	2, 0x2da8
    1268:	00a8                	.insn	2, 0x00a8
    126a:	049f 8060 0101      	.insn	6, 0x01018060049f
    1270:	0458                	.insn	2, 0x0458
    1272:	0180                	.insn	2, 0x0180
    1274:	01cc                	.insn	2, 0x01cc
    1276:	a30a                	.insn	2, 0xa30a
    1278:	260aa503          	lw	a0,608(s5)
    127c:	2da8                	.insn	2, 0x2da8
    127e:	00a8                	.insn	2, 0x00a8
    1280:	049f 01cc 01e0      	.insn	6, 0x01e001cc049f
    1286:	5801                	.insn	2, 0x5801
    1288:	0400                	.insn	2, 0x0400
    128a:	4000                	.insn	2, 0x4000
    128c:	3002                	.insn	2, 0x3002
    128e:	049f 9860 0201      	.insn	6, 0x02019860049f
    1294:	9f30                	.insn	2, 0x9f30
    1296:	9804                	.insn	2, 0x9804
    1298:	a801                	.insn	2, 0xa801
    129a:	0201                	.insn	2, 0x0201
    129c:	9f31                	.insn	2, 0x9f31
    129e:	cc04                	.insn	2, 0xcc04
    12a0:	e001                	.insn	2, 0xe001
    12a2:	0201                	.insn	2, 0x0201
    12a4:	9f30                	.insn	2, 0x9f30
    12a6:	0400                	.insn	2, 0x0400
    12a8:	bc28                	.insn	2, 0xbc28
    12aa:	0101                	.insn	2, 0x0101
    12ac:	045e                	.insn	2, 0x045e
    12ae:	01bc                	.insn	2, 0x01bc
    12b0:	01c4                	.insn	2, 0x01c4
    12b2:	0806                	.insn	2, 0x0806
    12b4:	7a9e                	.insn	2, 0x7a9e
    12b6:	1c00                	.insn	2, 0x1c00
    12b8:	049f 01c4 01dc      	.insn	6, 0x01dc01c4049f
    12be:	5e01                	.insn	2, 0x5e01
    12c0:	dc04                	.insn	2, 0xdc04
    12c2:	e001                	.insn	2, 0xe001
    12c4:	0601                	.insn	2, 0x0601
    12c6:	9e08                	.insn	2, 0x9e08
    12c8:	007a                	.insn	2, 0x007a
    12ca:	9f1c                	.insn	2, 0x9f1c
    12cc:	0400                	.insn	2, 0x0400
    12ce:	4430                	.insn	2, 0x4430
    12d0:	5801                	.insn	2, 0x5801
    12d2:	8404                	.insn	2, 0x8404
    12d4:	9401                	.insn	2, 0x9401
    12d6:	0101                	.insn	2, 0x0101
    12d8:	045f 0194 01e0      	.insn	6, 0x01e00194045f
    12de:	5801                	.insn	2, 0x5801
    12e0:	0400                	.insn	2, 0x0400
    12e2:	544c                	.insn	2, 0x544c
    12e4:	7a08                	.insn	2, 0x7a08
    12e6:	7800                	.insn	2, 0x7800
    12e8:	2100                	.insn	2, 0x2100
    12ea:	34a9                	.insn	2, 0x34a9
    12ec:	049f 6054 5a01      	.insn	6, 0x5a016054049f
    12f2:	0400                	.insn	2, 0x0400
    12f4:	1f18                	.insn	2, 0x1f18
    12f6:	5a01                	.insn	2, 0x5a01
    12f8:	1f04                	.insn	2, 0x1f04
    12fa:	0140                	.insn	2, 0x0140
    12fc:	0458                	.insn	2, 0x0458
    12fe:	8060                	.insn	2, 0x8060
    1300:	0101                	.insn	2, 0x0101
    1302:	0458                	.insn	2, 0x0458
    1304:	0180                	.insn	2, 0x0180
    1306:	0184                	.insn	2, 0x0184
    1308:	a30a                	.insn	2, 0xa30a
    130a:	260aa503          	lw	a0,608(s5)
    130e:	2da8                	.insn	2, 0x2da8
    1310:	00a8                	.insn	2, 0x00a8
    1312:	049f 01cc 01e0      	.insn	6, 0x01e001cc049f
    1318:	5801                	.insn	2, 0x5801
    131a:	0400                	.insn	2, 0x0400
    131c:	3c20                	.insn	2, 0x3c20
    131e:	5a01                	.insn	2, 0x5a01
    1320:	3c04                	.insn	2, 0x3c04
    1322:	0340                	.insn	2, 0x0340
    1324:	087a                	.insn	2, 0x087a
    1326:	049f e060 0101      	.insn	6, 0x0101e060049f
    132c:	005a                	.insn	2, 0x005a
    132e:	9404                	.insn	2, 0x9404
    1330:	cc01                	.insn	2, 0xcc01
    1332:	0201                	.insn	2, 0x0201
    1334:	9f30                	.insn	2, 0x9f30
    1336:	4000                	.insn	2, 0x4000
    1338:	0000                	.insn	2, 0x
    133a:	0500                	.insn	2, 0x0500
    133c:	0400                	.insn	2, 0x0400
    133e:	0000                	.insn	2, 0x
    1340:	0000                	.insn	2, 0x
    1342:	0400                	.insn	2, 0x0400
    1344:	2000                	.insn	2, 0x2000
    1346:	5a01                	.insn	2, 0x5a01
    1348:	2004                	.insn	2, 0x2004
    134a:	0a38                	.insn	2, 0x0a38
    134c:	0aa503a3          	sb	a0,167(a0)
    1350:	a826                	.insn	2, 0xa826
    1352:	a82d                	.insn	2, 0xa82d
    1354:	9f00                	.insn	2, 0x9f00
    1356:	3804                	.insn	2, 0x3804
    1358:	014c                	.insn	2, 0x014c
    135a:	005a                	.insn	2, 0x005a
    135c:	0004                	.insn	2, 0x0004
    135e:	0120                	.insn	2, 0x0120
    1360:	045a                	.insn	2, 0x045a
    1362:	3820                	.insn	2, 0x3820
    1364:	a30a                	.insn	2, 0xa30a
    1366:	260aa503          	lw	a0,608(s5)
    136a:	2da8                	.insn	2, 0x2da8
    136c:	00a8                	.insn	2, 0x00a8
    136e:	049f 4c38 5a01      	.insn	6, 0x5a014c38049f
    1374:	0400                	.insn	2, 0x0400
    1376:	2814                	.insn	2, 0x2814
    1378:	5f01                	.insn	2, 0x5f01
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	001c                	.insn	2, 0x001c
   2:	0000                	.insn	2, 0x
   4:	0002                	.insn	2, 0x0002
   6:	0000                	.insn	2, 0x
   8:	0000                	.insn	2, 0x
   a:	0004                	.insn	2, 0x0004
   c:	0000                	.insn	2, 0x
   e:	0000                	.insn	2, 0x
  10:	2af0                	.insn	2, 0x2af0
  12:	8000                	.insn	2, 0x8000
  14:	0634                	.insn	2, 0x0634
	...
  1e:	0000                	.insn	2, 0x
  20:	001c                	.insn	2, 0x001c
  22:	0000                	.insn	2, 0x
  24:	0002                	.insn	2, 0x0002
  26:	0940                	.insn	2, 0x0940
  28:	0000                	.insn	2, 0x
  2a:	0004                	.insn	2, 0x0004
  2c:	0000                	.insn	2, 0x
  2e:	0000                	.insn	2, 0x
  30:	3124                	.insn	2, 0x3124
  32:	8000                	.insn	2, 0x8000
  34:	0528                	.insn	2, 0x0528
	...
  3e:	0000                	.insn	2, 0x
  40:	001c                	.insn	2, 0x001c
  42:	0000                	.insn	2, 0x
  44:	0002                	.insn	2, 0x0002
  46:	1290                	.insn	2, 0x1290
  48:	0000                	.insn	2, 0x
  4a:	0004                	.insn	2, 0x0004
  4c:	0000                	.insn	2, 0x
  4e:	0000                	.insn	2, 0x
  50:	364c                	.insn	2, 0x364c
  52:	8000                	.insn	2, 0x8000
  54:	03a8                	.insn	2, 0x03a8
	...
  5e:	0000                	.insn	2, 0x
  60:	001c                	.insn	2, 0x001c
  62:	0000                	.insn	2, 0x
  64:	0002                	.insn	2, 0x0002
  66:	1639                	.insn	2, 0x1639
  68:	0000                	.insn	2, 0x
  6a:	0004                	.insn	2, 0x0004
  6c:	0000                	.insn	2, 0x
  6e:	0000                	.insn	2, 0x
  70:	39f4                	.insn	2, 0x39f4
  72:	8000                	.insn	2, 0x8000
  74:	00e0                	.insn	2, 0x00e0
	...
  7e:	0000                	.insn	2, 0x
  80:	001c                	.insn	2, 0x001c
  82:	0000                	.insn	2, 0x
  84:	0002                	.insn	2, 0x0002
  86:	00001843          	.insn	4, 0x1843
  8a:	0004                	.insn	2, 0x0004
  8c:	0000                	.insn	2, 0x
  8e:	0000                	.insn	2, 0x
  90:	3ad4                	.insn	2, 0x3ad4
  92:	8000                	.insn	2, 0x8000
  94:	0024                	.insn	2, 0x0024
	...
  9e:	0000                	.insn	2, 0x
  a0:	001c                	.insn	2, 0x001c
  a2:	0000                	.insn	2, 0x
  a4:	0002                	.insn	2, 0x0002
  a6:	1874                	.insn	2, 0x1874
  a8:	0000                	.insn	2, 0x
  aa:	0004                	.insn	2, 0x0004
  ac:	0000                	.insn	2, 0x
  ae:	0000                	.insn	2, 0x
  b0:	3af8                	.insn	2, 0x3af8
  b2:	8000                	.insn	2, 0x8000
  b4:	00b4                	.insn	2, 0x00b4
	...
  be:	0000                	.insn	2, 0x
  c0:	0014                	.insn	2, 0x0014
  c2:	0000                	.insn	2, 0x
  c4:	0002                	.insn	2, 0x0002
  c6:	000018d3          	.insn	4, 0x18d3
  ca:	0004                	.insn	2, 0x0004
	...
  d8:	001c                	.insn	2, 0x001c
  da:	0000                	.insn	2, 0x
  dc:	0002                	.insn	2, 0x0002
  de:	000019ab          	.insn	4, 0x19ab
  e2:	0004                	.insn	2, 0x0004
  e4:	0000                	.insn	2, 0x
  e6:	0000                	.insn	2, 0x
  e8:	3bac                	.insn	2, 0x3bac
  ea:	8000                	.insn	2, 0x8000
  ec:	004c                	.insn	2, 0x004c
	...

Disassembly of section .debug_rnglists:

00000000 <.debug_rnglists>:
   0:	000000a3          	sb	zero,1(zero) # 1 <TRANSMISSION_TIME>
   4:	0005                	.insn	2, 0x0005
   6:	0004                	.insn	2, 0x0004
   8:	0000                	.insn	2, 0x
   a:	0000                	.insn	2, 0x
   c:	0004                	.insn	2, 0x0004
   e:	0400                	.insn	2, 0x0400
  10:	b034                	.insn	2, 0xb034
  12:	0405                	.insn	2, 0x0405
  14:	05ec                	.insn	2, 0x05ec
  16:	0cb4                	.insn	2, 0x0cb4
  18:	0400                	.insn	2, 0x0400
  1a:	0000                	.insn	2, 0x
  1c:	3404                	.insn	2, 0x3404
  1e:	05b0                	.insn	2, 0x05b0
  20:	ec04                	.insn	2, 0xec04
  22:	a405                	.insn	2, 0xa405
  24:	040c                	.insn	2, 0x040c
  26:	0ca8                	.insn	2, 0x0ca8
  28:	0cb4                	.insn	2, 0x0cb4
  2a:	0400                	.insn	2, 0x0400
  2c:	544c                	.insn	2, 0x544c
  2e:	5404                	.insn	2, 0x5404
  30:	047c                	.insn	2, 0x047c
  32:	02fc                	.insn	2, 0x02fc
  34:	0390                	.insn	2, 0x0390
  36:	0400                	.insn	2, 0x0400
  38:	02f4                	.insn	2, 0x02f4
  3a:	02fc                	.insn	2, 0x02fc
  3c:	e804                	.insn	2, 0xe804
  3e:	a408                	.insn	2, 0xa408
  40:	000c                	.insn	2, 0x000c
  42:	f804                	.insn	2, 0xf804
  44:	fc08                	.insn	2, 0xfc08
  46:	0408                	.insn	2, 0x0408
  48:	0988                	.insn	2, 0x0988
  4a:	0994                	.insn	2, 0x0994
  4c:	9804                	.insn	2, 0x9804
  4e:	e809                	.insn	2, 0xe809
  50:	040a                	.insn	2, 0x040a
  52:	0aec                	.insn	2, 0x0aec
  54:	0af0                	.insn	2, 0x0af0
  56:	fc04                	.insn	2, 0xfc04
  58:	800a                	.insn	2, 0x800a
  5a:	e804000b          	.insn	4, 0xe804000b
  5e:	ec0a                	.insn	2, 0xec0a
  60:	040a                	.insn	2, 0x040a
  62:	0af0                	.insn	2, 0x0af0
  64:	0afc                	.insn	2, 0x0afc
  66:	8004                	.insn	2, 0x8004
  68:	040bf40b          	.insn	4, 0x040bf40b
  6c:	0bfc                	.insn	2, 0x0bfc
  6e:	0c90                	.insn	2, 0x0c90
  70:	9404                	.insn	2, 0x9404
  72:	980c                	.insn	2, 0x980c
  74:	000c                	.insn	2, 0x000c
  76:	c404                	.insn	2, 0xc404
  78:	040bd40b          	.insn	4, 0x040bd40b
  7c:	0be0                	.insn	2, 0x0be0
  7e:	0be4                	.insn	2, 0x0be4
  80:	0400                	.insn	2, 0x0400
  82:	0390                	.insn	2, 0x0390
  84:	0394                	.insn	2, 0x0394
  86:	9804                	.insn	2, 0x9804
  88:	0403c403          	lbu	s0,64(t2)
  8c:	05ec                	.insn	2, 0x05ec
  8e:	0680                	.insn	2, 0x0680
  90:	0400                	.insn	2, 0x0400
  92:	0688                	.insn	2, 0x0688
  94:	068c                	.insn	2, 0x068c
  96:	9c04                	.insn	2, 0x9c04
  98:	8406                	.insn	2, 0x8406
  9a:	0008                	.insn	2, 0x0008
  9c:	8804                	.insn	2, 0x8804
  9e:	bc08                	.insn	2, 0xbc08
  a0:	0408                	.insn	2, 0x0408
  a2:	08d4                	.insn	2, 0x08d4
  a4:	08e8                	.insn	2, 0x08e8
  a6:	7e00                	.insn	2, 0x7e00
  a8:	0000                	.insn	2, 0x
  aa:	0500                	.insn	2, 0x0500
  ac:	0400                	.insn	2, 0x0400
  ae:	0000                	.insn	2, 0x
  b0:	0000                	.insn	2, 0x
  b2:	0400                	.insn	2, 0x0400
  b4:	0000                	.insn	2, 0x
  b6:	3404                	.insn	2, 0x3404
  b8:	02d4                	.insn	2, 0x02d4
  ba:	8c04                	.insn	2, 0x8c04
  bc:	000aa803          	lw	a6,0(s5)
  c0:	5004                	.insn	2, 0x5004
  c2:	047c                	.insn	2, 0x047c
  c4:	038c                	.insn	2, 0x038c
  c6:	03a0                	.insn	2, 0x03a0
  c8:	0400                	.insn	2, 0x0400
  ca:	03a0                	.insn	2, 0x03a0
  cc:	03a4                	.insn	2, 0x03a4
  ce:	a804                	.insn	2, 0xa804
  d0:	0403c803          	lbu	a6,64(t2)
  d4:	03cc                	.insn	2, 0x03cc
  d6:	03d8                	.insn	2, 0x03d8
  d8:	b004                	.insn	2, 0xb004
  da:	c405                	.insn	2, 0xc405
  dc:	0005                	.insn	2, 0x0005
  de:	e404                	.insn	2, 0xe404
  e0:	0403e803          	.insn	4, 0x0403e803
  e4:	03f8                	.insn	2, 0x03f8
  e6:	05b0                	.insn	2, 0x05b0
  e8:	0400                	.insn	2, 0x0400
  ea:	05c8                	.insn	2, 0x05c8
  ec:	05fc                	.insn	2, 0x05fc
  ee:	a804                	.insn	2, 0xa804
  f0:	bc06                	.insn	2, 0xbc06
  f2:	0006                	.insn	2, 0x0006
  f4:	d404                	.insn	2, 0xd404
  f6:	d806                	.insn	2, 0xd806
  f8:	0406                	.insn	2, 0x0406
  fa:	06e0                	.insn	2, 0x06e0
  fc:	06ec                	.insn	2, 0x06ec
  fe:	f004                	.insn	2, 0xf004
 100:	bc06                	.insn	2, 0xbc06
 102:	0408                	.insn	2, 0x0408
 104:	08c0                	.insn	2, 0x08c0
 106:	08c8                	.insn	2, 0x08c8
 108:	d404                	.insn	2, 0xd404
 10a:	d808                	.insn	2, 0xd808
 10c:	0008                	.insn	2, 0x0008
 10e:	bc04                	.insn	2, 0xbc04
 110:	c008                	.insn	2, 0xc008
 112:	0408                	.insn	2, 0x0408
 114:	08c8                	.insn	2, 0x08c8
 116:	08d4                	.insn	2, 0x08d4
 118:	d804                	.insn	2, 0xd804
 11a:	e408                	.insn	2, 0xe408
 11c:	0009                	.insn	2, 0x0009
 11e:	9c04                	.insn	2, 0x9c04
 120:	ac09                	.insn	2, 0xac09
 122:	0409                	.insn	2, 0x0409
 124:	09b8                	.insn	2, 0x09b8
 126:	09bc                	.insn	2, 0x09bc
 128:	7900                	.insn	2, 0x7900
 12a:	0000                	.insn	2, 0x
 12c:	0500                	.insn	2, 0x0500
 12e:	0400                	.insn	2, 0x0400
 130:	0000                	.insn	2, 0x
 132:	0000                	.insn	2, 0x
 134:	0400                	.insn	2, 0x0400
 136:	0000                	.insn	2, 0x
 138:	1804                	.insn	2, 0x1804
 13a:	041c                	.insn	2, 0x041c
 13c:	443c                	.insn	2, 0x443c
 13e:	f404                	.insn	2, 0xf404
 140:	f801                	.insn	2, 0xf801
 142:	0401                	.insn	2, 0x0401
 144:	0288                	.insn	2, 0x0288
 146:	028c                	.insn	2, 0x028c
 148:	f004                	.insn	2, 0xf004
 14a:	f405                	.insn	2, 0xf405
 14c:	0005                	.insn	2, 0x0005
 14e:	6004                	.insn	2, 0x6004
 150:	0464                	.insn	2, 0x0464
 152:	01d4                	.insn	2, 0x01d4
 154:	01f4                	.insn	2, 0x01f4
 156:	0400                	.insn	2, 0x0400
 158:	7864                	.insn	2, 0x7864
 15a:	b804                	.insn	2, 0xb804
 15c:	bc02                	.insn	2, 0xbc02
 15e:	0402                	.insn	2, 0x0402
 160:	02cc                	.insn	2, 0x02cc
 162:	02d0                	.insn	2, 0x02d0
 164:	a004                	.insn	2, 0xa004
 166:	a406                	.insn	2, 0xa406
 168:	0006                	.insn	2, 0x0006
 16a:	9404                	.insn	2, 0x9404
 16c:	9801                	.insn	2, 0x9801
 16e:	0401                	.insn	2, 0x0401
 170:	0298                	.insn	2, 0x0298
 172:	02b8                	.insn	2, 0x02b8
 174:	0400                	.insn	2, 0x0400
 176:	02d8                	.insn	2, 0x02d8
 178:	04d8                	.insn	2, 0x04d8
 17a:	e404                	.insn	2, 0xe404
 17c:	f005                	.insn	2, 0xf005
 17e:	0005                	.insn	2, 0x0005
 180:	e804                	.insn	2, 0xe804
 182:	c402                	.insn	2, 0xc402
 184:	0404                	.insn	2, 0x0404
 186:	04c4                	.insn	2, 0x04c4
 188:	04c8                	.insn	2, 0x04c8
 18a:	cc04                	.insn	2, 0xcc04
 18c:	d004                	.insn	2, 0xd004
 18e:	0004                	.insn	2, 0x0004
 190:	9c04                	.insn	2, 0x9c04
 192:	9c05                	.insn	2, 0x9c05
 194:	0405                	.insn	2, 0x0405
 196:	05a4                	.insn	2, 0x05a4
 198:	05b8                	.insn	2, 0x05b8
 19a:	0400                	.insn	2, 0x0400
 19c:	06b8                	.insn	2, 0x06b8
 19e:	078c                	.insn	2, 0x078c
 1a0:	9c04                	.insn	2, 0x9c04
 1a2:	0007a807          	.insn	4, 0x0007a807
 1a6:	0000002f          	.insn	4, 0x002f
 1aa:	0005                	.insn	2, 0x0005
 1ac:	0004                	.insn	2, 0x0004
 1ae:	0000                	.insn	2, 0x
 1b0:	0000                	.insn	2, 0x
 1b2:	0004                	.insn	2, 0x0004
 1b4:	0400                	.insn	2, 0x0400
 1b6:	4010                	.insn	2, 0x4010
 1b8:	6004                	.insn	2, 0x6004
 1ba:	01e0                	.insn	2, 0x01e0
 1bc:	0400                	.insn	2, 0x0400
 1be:	4018                	.insn	2, 0x4018
 1c0:	6004                	.insn	2, 0x6004
 1c2:	01e0                	.insn	2, 0x01e0
 1c4:	0400                	.insn	2, 0x0400
 1c6:	2818                	.insn	2, 0x2818
 1c8:	d804                	.insn	2, 0xd804
 1ca:	e001                	.insn	2, 0xe001
 1cc:	0001                	.insn	2, 0x0001
 1ce:	8c04                	.insn	2, 0x8c04
 1d0:	9001                	.insn	2, 0x9001
 1d2:	0401                	.insn	2, 0x0401
 1d4:	0194                	.insn	2, 0x0194
 1d6:	01cc                	.insn	2, 0x01cc
 1d8:	1200                	.insn	2, 0x1200
 1da:	0000                	.insn	2, 0x
 1dc:	0500                	.insn	2, 0x0500
 1de:	0400                	.insn	2, 0x0400
 1e0:	0000                	.insn	2, 0x
 1e2:	0000                	.insn	2, 0x
 1e4:	0400                	.insn	2, 0x0400
 1e6:	1400                	.insn	2, 0x1400
 1e8:	1404                	.insn	2, 0x1404
 1ea:	0430                	.insn	2, 0x0430
 1ec:	4c38                	.insn	2, 0x4c38
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
       0:	0951                	.insn	2, 0x0951
       2:	0000                	.insn	2, 0x
       4:	0005                	.insn	2, 0x0005
       6:	0004                	.insn	2, 0x0004
       8:	00000033          	add	zero,zero,zero
       c:	0101                	.insn	2, 0x0101
       e:	fb01                	.insn	2, 0xfb01
      10:	0d0e                	.insn	2, 0x0d0e
      12:	0100                	.insn	2, 0x0100
      14:	0101                	.insn	2, 0x0101
      16:	0001                	.insn	2, 0x0001
      18:	0000                	.insn	2, 0x
      1a:	0001                	.insn	2, 0x0001
      1c:	0100                	.insn	2, 0x0100
      1e:	0101                	.insn	2, 0x0101
      20:	021f 0000 0000      	.insn	6, 0x021f
      26:	0099                	.insn	2, 0x0099
      28:	0000                	.insn	2, 0x
      2a:	0102                	.insn	2, 0x0102
      2c:	021f 030f 008f      	.insn	6, 0x008f030f021f
      32:	0000                	.insn	2, 0x
      34:	8f01                	.insn	2, 0x8f01
      36:	0000                	.insn	2, 0x
      38:	0100                	.insn	2, 0x0100
      3a:	00ba                	.insn	2, 0x00ba
      3c:	0000                	.insn	2, 0x
      3e:	0501                	.insn	2, 0x0501
      40:	0001                	.insn	2, 0x0001
      42:	0205                	.insn	2, 0x0205
      44:	2af0                	.insn	2, 0x2af0
      46:	8000                	.insn	2, 0x8000
      48:	010a9203          	lh	tp,16(s5)
      4c:	0305                	.insn	2, 0x0305
      4e:	00090103          	lb	sp,0(s2)
      52:	0100                	.insn	2, 0x0100
      54:	097dd103          	lhu	sp,151(s11)
      58:	0000                	.insn	2, 0x
      5a:	0301                	.insn	2, 0x0301
      5c:	0901                	.insn	2, 0x0901
      5e:	0000                	.insn	2, 0x
      60:	0301                	.insn	2, 0x0301
      62:	0901                	.insn	2, 0x0901
      64:	0000                	.insn	2, 0x
      66:	0301                	.insn	2, 0x0301
      68:	0901                	.insn	2, 0x0901
      6a:	0000                	.insn	2, 0x
      6c:	0301                	.insn	2, 0x0301
      6e:	0901                	.insn	2, 0x0901
      70:	0000                	.insn	2, 0x
      72:	0301                	.insn	2, 0x0301
      74:	0901                	.insn	2, 0x0901
      76:	0000                	.insn	2, 0x
      78:	0301                	.insn	2, 0x0301
      7a:	0902                	.insn	2, 0x0902
      7c:	0000                	.insn	2, 0x
      7e:	0301                	.insn	2, 0x0301
      80:	0901                	.insn	2, 0x0901
      82:	0000                	.insn	2, 0x
      84:	0301                	.insn	2, 0x0301
      86:	0901                	.insn	2, 0x0901
      88:	0000                	.insn	2, 0x
      8a:	0301                	.insn	2, 0x0301
      8c:	0901                	.insn	2, 0x0901
      8e:	0000                	.insn	2, 0x
      90:	0301                	.insn	2, 0x0301
      92:	0925                	.insn	2, 0x0925
      94:	0000                	.insn	2, 0x
      96:	0501                	.insn	2, 0x0501
      98:	0601                	.insn	2, 0x0601
      9a:	0901ff03          	.insn	4, 0x0901ff03
      9e:	0000                	.insn	2, 0x
      a0:	0301                	.insn	2, 0x0301
      a2:	0900                	.insn	2, 0x0900
      a4:	0030                	.insn	2, 0x0030
      a6:	0501                	.insn	2, 0x0501
      a8:	0306                	.insn	2, 0x0306
      aa:	7e81                	.insn	2, 0x7e81
      ac:	0409                	.insn	2, 0x0409
      ae:	0100                	.insn	2, 0x0100
      b0:	0705                	.insn	2, 0x0705
      b2:	0306                	.insn	2, 0x0306
      b4:	0902                	.insn	2, 0x0902
      b6:	000c                	.insn	2, 0x000c
      b8:	0501                	.insn	2, 0x0501
      ba:	060a                	.insn	2, 0x060a
      bc:	08090003          	lb	zero,128(s2)
      c0:	0100                	.insn	2, 0x0100
      c2:	0405                	.insn	2, 0x0405
      c4:	0200                	.insn	2, 0x0200
      c6:	0104                	.insn	2, 0x0104
      c8:	04090403          	lb	s0,64(s2)
      cc:	0100                	.insn	2, 0x0100
      ce:	0306                	.insn	2, 0x0306
      d0:	0900                	.insn	2, 0x0900
      d2:	0008                	.insn	2, 0x0008
      d4:	0301                	.insn	2, 0x0301
      d6:	0900                	.insn	2, 0x0900
      d8:	0000                	.insn	2, 0x
      da:	0301                	.insn	2, 0x0301
      dc:	0900                	.insn	2, 0x0900
      de:	0000                	.insn	2, 0x
      e0:	0301                	.insn	2, 0x0301
      e2:	0900                	.insn	2, 0x0900
      e4:	0000                	.insn	2, 0x
      e6:	0001                	.insn	2, 0x0001
      e8:	0402                	.insn	2, 0x0402
      ea:	0301                	.insn	2, 0x0301
      ec:	0900                	.insn	2, 0x0900
      ee:	0000                	.insn	2, 0x
      f0:	0001                	.insn	2, 0x0001
      f2:	0402                	.insn	2, 0x0402
      f4:	00030603          	lb	a2,0(t1)
      f8:	0409                	.insn	2, 0x0409
      fa:	0100                	.insn	2, 0x0100
      fc:	0200                	.insn	2, 0x0200
      fe:	1504                	.insn	2, 0x1504
     100:	0306                	.insn	2, 0x0306
     102:	0900                	.insn	2, 0x0900
     104:	000c                	.insn	2, 0x000c
     106:	0001                	.insn	2, 0x0001
     108:	0402                	.insn	2, 0x0402
     10a:	0315                	.insn	2, 0x0315
     10c:	0900                	.insn	2, 0x0900
     10e:	0018                	.insn	2, 0x0018
     110:	0301                	.insn	2, 0x0301
     112:	0902                	.insn	2, 0x0902
     114:	0000                	.insn	2, 0x
     116:	0501                	.insn	2, 0x0501
     118:	00030607          	.insn	4, 0x00030607
     11c:	0009                	.insn	2, 0x0009
     11e:	0100                	.insn	2, 0x0100
     120:	0805                	.insn	2, 0x0805
     122:	0306                	.insn	2, 0x0306
     124:	0905                	.insn	2, 0x0905
     126:	0004                	.insn	2, 0x0004
     128:	0501                	.insn	2, 0x0501
     12a:	0611                	.insn	2, 0x0611
     12c:	00090103          	lb	sp,0(s2)
     130:	0100                	.insn	2, 0x0100
     132:	1e05                	.insn	2, 0x1e05
     134:	04090003          	lb	zero,64(s2)
     138:	0100                	.insn	2, 0x0100
     13a:	0b05                	.insn	2, 0x0b05
     13c:	04097f03          	.insn	4, 0x04097f03
     140:	0100                	.insn	2, 0x0100
     142:	0805                	.insn	2, 0x0805
     144:	0306                	.insn	2, 0x0306
     146:	0901                	.insn	2, 0x0901
     148:	0004                	.insn	2, 0x0004
     14a:	0501                	.insn	2, 0x0501
     14c:	0003060b          	.insn	4, 0x0003060b
     150:	0009                	.insn	2, 0x0009
     152:	0100                	.insn	2, 0x0100
     154:	0805                	.insn	2, 0x0805
     156:	0306                	.insn	2, 0x0306
     158:	0901                	.insn	2, 0x0901
     15a:	0004                	.insn	2, 0x0004
     15c:	0501                	.insn	2, 0x0501
     15e:	0003060b          	.insn	4, 0x0003060b
     162:	0009                	.insn	2, 0x0009
     164:	0100                	.insn	2, 0x0100
     166:	0405                	.insn	2, 0x0405
     168:	0306                	.insn	2, 0x0306
     16a:	00040903          	lb	s2,0(s0)
     16e:	0301                	.insn	2, 0x0301
     170:	0900                	.insn	2, 0x0900
     172:	0000                	.insn	2, 0x
     174:	0301                	.insn	2, 0x0301
     176:	0900                	.insn	2, 0x0900
     178:	0000                	.insn	2, 0x
     17a:	0301                	.insn	2, 0x0301
     17c:	0900                	.insn	2, 0x0900
     17e:	0000                	.insn	2, 0x
     180:	0301                	.insn	2, 0x0301
     182:	0900                	.insn	2, 0x0900
     184:	0004                	.insn	2, 0x0004
     186:	0301                	.insn	2, 0x0301
     188:	0900                	.insn	2, 0x0900
     18a:	0018                	.insn	2, 0x0018
     18c:	0301                	.insn	2, 0x0301
     18e:	0900                	.insn	2, 0x0900
     190:	0000                	.insn	2, 0x
     192:	0301                	.insn	2, 0x0301
     194:	0900                	.insn	2, 0x0900
     196:	0008                	.insn	2, 0x0008
     198:	0301                	.insn	2, 0x0301
     19a:	0900                	.insn	2, 0x0900
     19c:	0010                	.insn	2, 0x0010
     19e:	0301                	.insn	2, 0x0301
     1a0:	0900                	.insn	2, 0x0900
     1a2:	001c                	.insn	2, 0x001c
     1a4:	0001                	.insn	2, 0x0001
     1a6:	0402                	.insn	2, 0x0402
     1a8:	0301                	.insn	2, 0x0301
     1aa:	0900                	.insn	2, 0x0900
     1ac:	0008                	.insn	2, 0x0008
     1ae:	0001                	.insn	2, 0x0001
     1b0:	0402                	.insn	2, 0x0402
     1b2:	0301                	.insn	2, 0x0301
     1b4:	0900                	.insn	2, 0x0900
     1b6:	0008                	.insn	2, 0x0008
     1b8:	0001                	.insn	2, 0x0001
     1ba:	0402                	.insn	2, 0x0402
     1bc:	09000303          	lb	t1,144(zero) # 90 <COOLING_THRESHOLD_ON+0x36>
     1c0:	0004                	.insn	2, 0x0004
     1c2:	0001                	.insn	2, 0x0001
     1c4:	0402                	.insn	2, 0x0402
     1c6:	0305                	.insn	2, 0x0305
     1c8:	0900                	.insn	2, 0x0900
     1ca:	0004                	.insn	2, 0x0004
     1cc:	0001                	.insn	2, 0x0001
     1ce:	0402                	.insn	2, 0x0402
     1d0:	09000307          	.insn	4, 0x09000307
     1d4:	0008                	.insn	2, 0x0008
     1d6:	0001                	.insn	2, 0x0001
     1d8:	0402                	.insn	2, 0x0402
     1da:	09000307          	.insn	4, 0x09000307
     1de:	0004                	.insn	2, 0x0004
     1e0:	0001                	.insn	2, 0x0001
     1e2:	0402                	.insn	2, 0x0402
     1e4:	09000307          	.insn	4, 0x09000307
     1e8:	0000                	.insn	2, 0x
     1ea:	0001                	.insn	2, 0x0001
     1ec:	0402                	.insn	2, 0x0402
     1ee:	09000307          	.insn	4, 0x09000307
     1f2:	0018                	.insn	2, 0x0018
     1f4:	0001                	.insn	2, 0x0001
     1f6:	0402                	.insn	2, 0x0402
     1f8:	09000307          	.insn	4, 0x09000307
     1fc:	0010                	.insn	2, 0x0010
     1fe:	0001                	.insn	2, 0x0001
     200:	0402                	.insn	2, 0x0402
     202:	09000307          	.insn	4, 0x09000307
     206:	0020                	.insn	2, 0x0020
     208:	0001                	.insn	2, 0x0001
     20a:	0402                	.insn	2, 0x0402
     20c:	0308                	.insn	2, 0x0308
     20e:	0900                	.insn	2, 0x0900
     210:	0008                	.insn	2, 0x0008
     212:	0001                	.insn	2, 0x0001
     214:	0402                	.insn	2, 0x0402
     216:	030a                	.insn	2, 0x030a
     218:	0900                	.insn	2, 0x0900
     21a:	000c                	.insn	2, 0x000c
     21c:	0001                	.insn	2, 0x0001
     21e:	0402                	.insn	2, 0x0402
     220:	030c                	.insn	2, 0x030c
     222:	0900                	.insn	2, 0x0900
     224:	0004                	.insn	2, 0x0004
     226:	0001                	.insn	2, 0x0001
     228:	0402                	.insn	2, 0x0402
     22a:	030e                	.insn	2, 0x030e
     22c:	0900                	.insn	2, 0x0900
     22e:	0004                	.insn	2, 0x0004
     230:	0001                	.insn	2, 0x0001
     232:	0402                	.insn	2, 0x0402
     234:	030e                	.insn	2, 0x030e
     236:	0900                	.insn	2, 0x0900
     238:	0000                	.insn	2, 0x
     23a:	0001                	.insn	2, 0x0001
     23c:	0402                	.insn	2, 0x0402
     23e:	030e                	.insn	2, 0x030e
     240:	0900                	.insn	2, 0x0900
     242:	0008                	.insn	2, 0x0008
     244:	0001                	.insn	2, 0x0001
     246:	0402                	.insn	2, 0x0402
     248:	030e                	.insn	2, 0x030e
     24a:	0900                	.insn	2, 0x0900
     24c:	0000                	.insn	2, 0x
     24e:	0301                	.insn	2, 0x0301
     250:	0901                	.insn	2, 0x0901
     252:	0000                	.insn	2, 0x
     254:	0501                	.insn	2, 0x0501
     256:	fe03060b          	.insn	4, 0xfe03060b
     25a:	0900                	.insn	2, 0x0900
     25c:	0000                	.insn	2, 0x
     25e:	0501                	.insn	2, 0x0501
     260:	0004                	.insn	2, 0x0004
     262:	0402                	.insn	2, 0x0402
     264:	0304                	.insn	2, 0x0304
     266:	7ef5                	.insn	2, 0x7ef5
     268:	0809                	.insn	2, 0x0809
     26a:	0100                	.insn	2, 0x0100
     26c:	0200                	.insn	2, 0x0200
     26e:	0b04                	.insn	2, 0x0b04
     270:	04090003          	lb	zero,64(s2)
     274:	0100                	.insn	2, 0x0100
     276:	0200                	.insn	2, 0x0200
     278:	0404                	.insn	2, 0x0404
     27a:	04090003          	lb	zero,64(s2)
     27e:	0100                	.insn	2, 0x0100
     280:	0200                	.insn	2, 0x0200
     282:	0a04                	.insn	2, 0x0a04
     284:	04090003          	lb	zero,64(s2)
     288:	0100                	.insn	2, 0x0100
     28a:	0306                	.insn	2, 0x0306
     28c:	0915                	.insn	2, 0x0915
     28e:	0008                	.insn	2, 0x0008
     290:	0001                	.insn	2, 0x0001
     292:	0402                	.insn	2, 0x0402
     294:	0605                	.insn	2, 0x0605
     296:	00090303          	lb	t1,0(s2)
     29a:	0100                	.insn	2, 0x0100
     29c:	0705                	.insn	2, 0x0705
     29e:	04097d03          	.insn	4, 0x04097d03
     2a2:	0100                	.insn	2, 0x0100
     2a4:	0405                	.insn	2, 0x0405
     2a6:	0306                	.insn	2, 0x0306
     2a8:	00040903          	lb	s2,0(s0)
     2ac:	0301                	.insn	2, 0x0301
     2ae:	0900                	.insn	2, 0x0900
     2b0:	0000                	.insn	2, 0x
     2b2:	0301                	.insn	2, 0x0301
     2b4:	0900                	.insn	2, 0x0900
     2b6:	0000                	.insn	2, 0x
     2b8:	0301                	.insn	2, 0x0301
     2ba:	0900                	.insn	2, 0x0900
     2bc:	0000                	.insn	2, 0x
     2be:	0001                	.insn	2, 0x0001
     2c0:	0402                	.insn	2, 0x0402
     2c2:	0301                	.insn	2, 0x0301
     2c4:	0900                	.insn	2, 0x0900
     2c6:	0000                	.insn	2, 0x
     2c8:	0001                	.insn	2, 0x0001
     2ca:	0402                	.insn	2, 0x0402
     2cc:	00030603          	lb	a2,0(t1)
     2d0:	0809                	.insn	2, 0x0809
     2d2:	0100                	.insn	2, 0x0100
     2d4:	0200                	.insn	2, 0x0200
     2d6:	1504                	.insn	2, 0x1504
     2d8:	0306                	.insn	2, 0x0306
     2da:	0900                	.insn	2, 0x0900
     2dc:	000c                	.insn	2, 0x000c
     2de:	0001                	.insn	2, 0x0001
     2e0:	0402                	.insn	2, 0x0402
     2e2:	0315                	.insn	2, 0x0315
     2e4:	0900                	.insn	2, 0x0900
     2e6:	0018                	.insn	2, 0x0018
     2e8:	0301                	.insn	2, 0x0301
     2ea:	0902                	.insn	2, 0x0902
     2ec:	0000                	.insn	2, 0x
     2ee:	0501                	.insn	2, 0x0501
     2f0:	00030607          	.insn	4, 0x00030607
     2f4:	0009                	.insn	2, 0x0009
     2f6:	0100                	.insn	2, 0x0100
     2f8:	0805                	.insn	2, 0x0805
     2fa:	0306                	.insn	2, 0x0306
     2fc:	0909                	.insn	2, 0x0909
     2fe:	0004                	.insn	2, 0x0004
     300:	0501                	.insn	2, 0x0501
     302:	0003060b          	.insn	4, 0x0003060b
     306:	0009                	.insn	2, 0x0009
     308:	0100                	.insn	2, 0x0100
     30a:	0805                	.insn	2, 0x0805
     30c:	0306                	.insn	2, 0x0306
     30e:	0901                	.insn	2, 0x0901
     310:	0004                	.insn	2, 0x0004
     312:	0501                	.insn	2, 0x0501
     314:	0003060b          	.insn	4, 0x0003060b
     318:	0009                	.insn	2, 0x0009
     31a:	0100                	.insn	2, 0x0100
     31c:	0805                	.insn	2, 0x0805
     31e:	0200                	.insn	2, 0x0200
     320:	0f04                	.insn	2, 0x0f04
     322:	0306                	.insn	2, 0x0306
     324:	090d                	.insn	2, 0x090d
     326:	0004                	.insn	2, 0x0004
     328:	0501                	.insn	2, 0x0501
     32a:	0304                	.insn	2, 0x0304
     32c:	0905                	.insn	2, 0x0905
     32e:	0000                	.insn	2, 0x
     330:	0301                	.insn	2, 0x0301
     332:	0900                	.insn	2, 0x0900
     334:	0000                	.insn	2, 0x
     336:	0301                	.insn	2, 0x0301
     338:	0900                	.insn	2, 0x0900
     33a:	0000                	.insn	2, 0x
     33c:	0301                	.insn	2, 0x0301
     33e:	0900                	.insn	2, 0x0900
     340:	0000                	.insn	2, 0x
     342:	0301                	.insn	2, 0x0301
     344:	0900                	.insn	2, 0x0900
     346:	0004                	.insn	2, 0x0004
     348:	0301                	.insn	2, 0x0301
     34a:	0900                	.insn	2, 0x0900
     34c:	0018                	.insn	2, 0x0018
     34e:	0301                	.insn	2, 0x0301
     350:	0900                	.insn	2, 0x0900
     352:	0000                	.insn	2, 0x
     354:	0301                	.insn	2, 0x0301
     356:	0900                	.insn	2, 0x0900
     358:	0008                	.insn	2, 0x0008
     35a:	0301                	.insn	2, 0x0301
     35c:	0900                	.insn	2, 0x0900
     35e:	0010                	.insn	2, 0x0010
     360:	0301                	.insn	2, 0x0301
     362:	0900                	.insn	2, 0x0900
     364:	001c                	.insn	2, 0x001c
     366:	0001                	.insn	2, 0x0001
     368:	0402                	.insn	2, 0x0402
     36a:	0301                	.insn	2, 0x0301
     36c:	0900                	.insn	2, 0x0900
     36e:	0008                	.insn	2, 0x0008
     370:	0001                	.insn	2, 0x0001
     372:	0402                	.insn	2, 0x0402
     374:	0301                	.insn	2, 0x0301
     376:	0900                	.insn	2, 0x0900
     378:	0008                	.insn	2, 0x0008
     37a:	0001                	.insn	2, 0x0001
     37c:	0402                	.insn	2, 0x0402
     37e:	09000303          	lb	t1,144(zero) # 90 <COOLING_THRESHOLD_ON+0x36>
     382:	0004                	.insn	2, 0x0004
     384:	0001                	.insn	2, 0x0001
     386:	0402                	.insn	2, 0x0402
     388:	0305                	.insn	2, 0x0305
     38a:	0900                	.insn	2, 0x0900
     38c:	0004                	.insn	2, 0x0004
     38e:	0001                	.insn	2, 0x0001
     390:	0402                	.insn	2, 0x0402
     392:	09000307          	.insn	4, 0x09000307
     396:	0008                	.insn	2, 0x0008
     398:	0001                	.insn	2, 0x0001
     39a:	0402                	.insn	2, 0x0402
     39c:	09000307          	.insn	4, 0x09000307
     3a0:	0004                	.insn	2, 0x0004
     3a2:	0001                	.insn	2, 0x0001
     3a4:	0402                	.insn	2, 0x0402
     3a6:	09000307          	.insn	4, 0x09000307
     3aa:	0000                	.insn	2, 0x
     3ac:	0001                	.insn	2, 0x0001
     3ae:	0402                	.insn	2, 0x0402
     3b0:	09000307          	.insn	4, 0x09000307
     3b4:	0018                	.insn	2, 0x0018
     3b6:	0001                	.insn	2, 0x0001
     3b8:	0402                	.insn	2, 0x0402
     3ba:	09000307          	.insn	4, 0x09000307
     3be:	0010                	.insn	2, 0x0010
     3c0:	0001                	.insn	2, 0x0001
     3c2:	0402                	.insn	2, 0x0402
     3c4:	09000307          	.insn	4, 0x09000307
     3c8:	0020                	.insn	2, 0x0020
     3ca:	0001                	.insn	2, 0x0001
     3cc:	0402                	.insn	2, 0x0402
     3ce:	0308                	.insn	2, 0x0308
     3d0:	0900                	.insn	2, 0x0900
     3d2:	0008                	.insn	2, 0x0008
     3d4:	0001                	.insn	2, 0x0001
     3d6:	0402                	.insn	2, 0x0402
     3d8:	030a                	.insn	2, 0x030a
     3da:	0900                	.insn	2, 0x0900
     3dc:	000c                	.insn	2, 0x000c
     3de:	0001                	.insn	2, 0x0001
     3e0:	0402                	.insn	2, 0x0402
     3e2:	030c                	.insn	2, 0x030c
     3e4:	0900                	.insn	2, 0x0900
     3e6:	0004                	.insn	2, 0x0004
     3e8:	0001                	.insn	2, 0x0001
     3ea:	0402                	.insn	2, 0x0402
     3ec:	030e                	.insn	2, 0x030e
     3ee:	0900                	.insn	2, 0x0900
     3f0:	0004                	.insn	2, 0x0004
     3f2:	0001                	.insn	2, 0x0001
     3f4:	0402                	.insn	2, 0x0402
     3f6:	030e                	.insn	2, 0x030e
     3f8:	0900                	.insn	2, 0x0900
     3fa:	0000                	.insn	2, 0x
     3fc:	0001                	.insn	2, 0x0001
     3fe:	0402                	.insn	2, 0x0402
     400:	030e                	.insn	2, 0x030e
     402:	0900                	.insn	2, 0x0900
     404:	0008                	.insn	2, 0x0008
     406:	0501                	.insn	2, 0x0501
     408:	00e30303          	lb	t1,14(t1)
     40c:	0009                	.insn	2, 0x0009
     40e:	0100                	.insn	2, 0x0100
     410:	00090103          	lb	sp,0(s2)
     414:	0100                	.insn	2, 0x0100
     416:	0105                	.insn	2, 0x0105
     418:	0306                	.insn	2, 0x0306
     41a:	00e1                	.insn	2, 0x00e1
     41c:	0009                	.insn	2, 0x0009
     41e:	0100                	.insn	2, 0x0100
     420:	0405                	.insn	2, 0x0405
     422:	0200                	.insn	2, 0x0200
     424:	0404                	.insn	2, 0x0404
     426:	097e9d03          	lh	s10,151(t4)
     42a:	003c                	.insn	2, 0x003c
     42c:	0001                	.insn	2, 0x0001
     42e:	0402                	.insn	2, 0x0402
     430:	0900030b          	.insn	4, 0x0900030b
     434:	0004                	.insn	2, 0x0004
     436:	0001                	.insn	2, 0x0001
     438:	0402                	.insn	2, 0x0402
     43a:	0304                	.insn	2, 0x0304
     43c:	0900                	.insn	2, 0x0900
     43e:	0004                	.insn	2, 0x0004
     440:	0001                	.insn	2, 0x0001
     442:	0402                	.insn	2, 0x0402
     444:	030a                	.insn	2, 0x030a
     446:	0900                	.insn	2, 0x0900
     448:	0004                	.insn	2, 0x0004
     44a:	0501                	.insn	2, 0x0501
     44c:	0608                	.insn	2, 0x0608
     44e:	08091203          	lh	tp,128(s2)
     452:	0100                	.insn	2, 0x0100
     454:	00090203          	lb	tp,0(s2)
     458:	0100                	.insn	2, 0x0100
     45a:	0b05                	.insn	2, 0x0b05
     45c:	0306                	.insn	2, 0x0306
     45e:	0900                	.insn	2, 0x0900
     460:	0000                	.insn	2, 0x
     462:	0501                	.insn	2, 0x0501
     464:	0608                	.insn	2, 0x0608
     466:	04090103          	lb	sp,64(s2)
     46a:	0100                	.insn	2, 0x0100
     46c:	0b05                	.insn	2, 0x0b05
     46e:	0306                	.insn	2, 0x0306
     470:	0900                	.insn	2, 0x0900
     472:	0000                	.insn	2, 0x
     474:	0501                	.insn	2, 0x0501
     476:	0608                	.insn	2, 0x0608
     478:	04090103          	lb	sp,64(s2)
     47c:	0100                	.insn	2, 0x0100
     47e:	0306                	.insn	2, 0x0306
     480:	00000903          	lb	s2,0(zero) # 0 <TRANSMISSION_TIME-0x1>
     484:	0501                	.insn	2, 0x0501
     486:	0311                	.insn	2, 0x0311
     488:	097d                	.insn	2, 0x097d
     48a:	0004                	.insn	2, 0x0004
     48c:	0501                	.insn	2, 0x0501
     48e:	031e                	.insn	2, 0x031e
     490:	0900                	.insn	2, 0x0900
     492:	0004                	.insn	2, 0x0004
     494:	0501                	.insn	2, 0x0501
     496:	0900030b          	.insn	4, 0x0900030b
     49a:	0004                	.insn	2, 0x0004
     49c:	0501                	.insn	2, 0x0501
     49e:	0608                	.insn	2, 0x0608
     4a0:	04090103          	lb	sp,64(s2)
     4a4:	0100                	.insn	2, 0x0100
     4a6:	0b05                	.insn	2, 0x0b05
     4a8:	0306                	.insn	2, 0x0306
     4aa:	0900                	.insn	2, 0x0900
     4ac:	0000                	.insn	2, 0x
     4ae:	0501                	.insn	2, 0x0501
     4b0:	0608                	.insn	2, 0x0608
     4b2:	04090203          	lb	tp,64(s2)
     4b6:	0100                	.insn	2, 0x0100
     4b8:	00090003          	lb	zero,0(s2)
     4bc:	0100                	.insn	2, 0x0100
     4be:	00090003          	lb	zero,0(s2)
     4c2:	0100                	.insn	2, 0x0100
     4c4:	00090003          	lb	zero,0(s2)
     4c8:	0100                	.insn	2, 0x0100
     4ca:	00090003          	lb	zero,0(s2)
     4ce:	0100                	.insn	2, 0x0100
     4d0:	18090003          	lb	zero,384(s2)
     4d4:	0100                	.insn	2, 0x0100
     4d6:	00090003          	lb	zero,0(s2)
     4da:	0100                	.insn	2, 0x0100
     4dc:	08090003          	lb	zero,128(s2)
     4e0:	0100                	.insn	2, 0x0100
     4e2:	10090003          	lb	zero,256(s2)
     4e6:	0100                	.insn	2, 0x0100
     4e8:	1c090003          	lb	zero,448(s2)
     4ec:	0100                	.insn	2, 0x0100
     4ee:	0200                	.insn	2, 0x0200
     4f0:	0104                	.insn	2, 0x0104
     4f2:	08090003          	lb	zero,128(s2)
     4f6:	0100                	.insn	2, 0x0100
     4f8:	0200                	.insn	2, 0x0200
     4fa:	0104                	.insn	2, 0x0104
     4fc:	08090003          	lb	zero,128(s2)
     500:	0100                	.insn	2, 0x0100
     502:	0200                	.insn	2, 0x0200
     504:	0304                	.insn	2, 0x0304
     506:	04090003          	lb	zero,64(s2)
     50a:	0100                	.insn	2, 0x0100
     50c:	0200                	.insn	2, 0x0200
     50e:	0504                	.insn	2, 0x0504
     510:	04090003          	lb	zero,64(s2)
     514:	0100                	.insn	2, 0x0100
     516:	0200                	.insn	2, 0x0200
     518:	0704                	.insn	2, 0x0704
     51a:	08090003          	lb	zero,128(s2)
     51e:	0100                	.insn	2, 0x0100
     520:	0200                	.insn	2, 0x0200
     522:	0704                	.insn	2, 0x0704
     524:	04090003          	lb	zero,64(s2)
     528:	0100                	.insn	2, 0x0100
     52a:	0200                	.insn	2, 0x0200
     52c:	0704                	.insn	2, 0x0704
     52e:	00090003          	lb	zero,0(s2)
     532:	0100                	.insn	2, 0x0100
     534:	0200                	.insn	2, 0x0200
     536:	0704                	.insn	2, 0x0704
     538:	18090003          	lb	zero,384(s2)
     53c:	0100                	.insn	2, 0x0100
     53e:	0200                	.insn	2, 0x0200
     540:	0704                	.insn	2, 0x0704
     542:	10090003          	lb	zero,256(s2)
     546:	0100                	.insn	2, 0x0100
     548:	0200                	.insn	2, 0x0200
     54a:	0704                	.insn	2, 0x0704
     54c:	20090003          	lb	zero,512(s2)
     550:	0100                	.insn	2, 0x0100
     552:	0200                	.insn	2, 0x0200
     554:	0804                	.insn	2, 0x0804
     556:	08090003          	lb	zero,128(s2)
     55a:	0100                	.insn	2, 0x0100
     55c:	0200                	.insn	2, 0x0200
     55e:	0804                	.insn	2, 0x0804
     560:	08090003          	lb	zero,128(s2)
     564:	0100                	.insn	2, 0x0100
     566:	0200                	.insn	2, 0x0200
     568:	0a04                	.insn	2, 0x0a04
     56a:	04090003          	lb	zero,64(s2)
     56e:	0100                	.insn	2, 0x0100
     570:	0200                	.insn	2, 0x0200
     572:	0c04                	.insn	2, 0x0c04
     574:	04090003          	lb	zero,64(s2)
     578:	0100                	.insn	2, 0x0100
     57a:	0200                	.insn	2, 0x0200
     57c:	0e04                	.insn	2, 0x0e04
     57e:	08090003          	lb	zero,128(s2)
     582:	0100                	.insn	2, 0x0100
     584:	0200                	.insn	2, 0x0200
     586:	0e04                	.insn	2, 0x0e04
     588:	08090003          	lb	zero,128(s2)
     58c:	0100                	.insn	2, 0x0100
     58e:	0200                	.insn	2, 0x0200
     590:	0e04                	.insn	2, 0x0e04
     592:	04090003          	lb	zero,64(s2)
     596:	0100                	.insn	2, 0x0100
     598:	0705                	.insn	2, 0x0705
     59a:	04091503          	lh	a0,64(s2)
     59e:	0100                	.insn	2, 0x0100
     5a0:	0a05                	.insn	2, 0x0a05
     5a2:	0306                	.insn	2, 0x0306
     5a4:	0900                	.insn	2, 0x0900
     5a6:	0000                	.insn	2, 0x
     5a8:	0501                	.insn	2, 0x0501
     5aa:	0604                	.insn	2, 0x0604
     5ac:	04091303          	lh	t1,64(s2)
     5b0:	0100                	.insn	2, 0x0100
     5b2:	00090003          	lb	zero,0(s2)
     5b6:	0100                	.insn	2, 0x0100
     5b8:	00090003          	lb	zero,0(s2)
     5bc:	0100                	.insn	2, 0x0100
     5be:	00090003          	lb	zero,0(s2)
     5c2:	0100                	.insn	2, 0x0100
     5c4:	0200                	.insn	2, 0x0200
     5c6:	0104                	.insn	2, 0x0104
     5c8:	00090003          	lb	zero,0(s2)
     5cc:	0100                	.insn	2, 0x0100
     5ce:	0200                	.insn	2, 0x0200
     5d0:	0304                	.insn	2, 0x0304
     5d2:	0306                	.insn	2, 0x0306
     5d4:	0900                	.insn	2, 0x0900
     5d6:	0008                	.insn	2, 0x0008
     5d8:	0001                	.insn	2, 0x0001
     5da:	0402                	.insn	2, 0x0402
     5dc:	0615                	.insn	2, 0x0615
     5de:	0c090003          	lb	zero,192(s2)
     5e2:	0100                	.insn	2, 0x0100
     5e4:	0200                	.insn	2, 0x0200
     5e6:	1504                	.insn	2, 0x1504
     5e8:	20090003          	lb	zero,512(s2)
     5ec:	0100                	.insn	2, 0x0100
     5ee:	00090103          	lb	sp,0(s2)
     5f2:	0100                	.insn	2, 0x0100
     5f4:	0705                	.insn	2, 0x0705
     5f6:	0306                	.insn	2, 0x0306
     5f8:	0900                	.insn	2, 0x0900
     5fa:	0000                	.insn	2, 0x
     5fc:	0501                	.insn	2, 0x0501
     5fe:	0608                	.insn	2, 0x0608
     600:	04090a03          	lb	s4,64(s2)
     604:	0100                	.insn	2, 0x0100
     606:	0306                	.insn	2, 0x0306
     608:	0902                	.insn	2, 0x0902
     60a:	0000                	.insn	2, 0x
     60c:	0501                	.insn	2, 0x0501
     60e:	097e030b          	.insn	4, 0x097e030b
     612:	0004                	.insn	2, 0x0004
     614:	0501                	.insn	2, 0x0501
     616:	0014                	.insn	2, 0x0014
     618:	0402                	.insn	2, 0x0402
     61a:	0301                	.insn	2, 0x0301
     61c:	0900                	.insn	2, 0x0900
     61e:	0004                	.insn	2, 0x0004
     620:	0501                	.insn	2, 0x0501
     622:	0004                	.insn	2, 0x0004
     624:	0402                	.insn	2, 0x0402
     626:	0304                	.insn	2, 0x0304
     628:	0975                	.insn	2, 0x0975
     62a:	000c                	.insn	2, 0x000c
     62c:	0001                	.insn	2, 0x0001
     62e:	0402                	.insn	2, 0x0402
     630:	0900030b          	.insn	4, 0x0900030b
     634:	0004                	.insn	2, 0x0004
     636:	0001                	.insn	2, 0x0001
     638:	0402                	.insn	2, 0x0402
     63a:	0304                	.insn	2, 0x0304
     63c:	0900                	.insn	2, 0x0900
     63e:	0004                	.insn	2, 0x0004
     640:	0001                	.insn	2, 0x0001
     642:	0402                	.insn	2, 0x0402
     644:	030a                	.insn	2, 0x030a
     646:	0900                	.insn	2, 0x0900
     648:	0004                	.insn	2, 0x0004
     64a:	0501                	.insn	2, 0x0501
     64c:	0608                	.insn	2, 0x0608
     64e:	08091e03          	lh	t3,128(s2)
     652:	0100                	.insn	2, 0x0100
     654:	00090303          	lb	t1,0(s2)
     658:	0100                	.insn	2, 0x0100
     65a:	00090203          	lb	tp,0(s2)
     65e:	0100                	.insn	2, 0x0100
     660:	1105                	.insn	2, 0x1105
     662:	0306                	.insn	2, 0x0306
     664:	0900                	.insn	2, 0x0900
     666:	0000                	.insn	2, 0x
     668:	0501                	.insn	2, 0x0501
     66a:	031e                	.insn	2, 0x031e
     66c:	0900                	.insn	2, 0x0900
     66e:	0004                	.insn	2, 0x0004
     670:	0501                	.insn	2, 0x0501
     672:	0900030b          	.insn	4, 0x0900030b
     676:	0004                	.insn	2, 0x0004
     678:	0501                	.insn	2, 0x0501
     67a:	0608                	.insn	2, 0x0608
     67c:	04090103          	lb	sp,64(s2)
     680:	0100                	.insn	2, 0x0100
     682:	0b05                	.insn	2, 0x0b05
     684:	0306                	.insn	2, 0x0306
     686:	0901                	.insn	2, 0x0901
     688:	0000                	.insn	2, 0x
     68a:	0501                	.insn	2, 0x0501
     68c:	0308                	.insn	2, 0x0308
     68e:	0904                	.insn	2, 0x0904
     690:	0004                	.insn	2, 0x0004
     692:	0501                	.insn	2, 0x0501
     694:	031e                	.insn	2, 0x031e
     696:	097d                	.insn	2, 0x097d
     698:	0004                	.insn	2, 0x0004
     69a:	0501                	.insn	2, 0x0501
     69c:	0311                	.insn	2, 0x0311
     69e:	0900                	.insn	2, 0x0900
     6a0:	0004                	.insn	2, 0x0004
     6a2:	0501                	.insn	2, 0x0501
     6a4:	0900030b          	.insn	4, 0x0900030b
     6a8:	0004                	.insn	2, 0x0004
     6aa:	0501                	.insn	2, 0x0501
     6ac:	0308                	.insn	2, 0x0308
     6ae:	00040903          	lb	s2,0(s0)
     6b2:	0501                	.insn	2, 0x0501
     6b4:	097b030b          	.insn	4, 0x097b030b
     6b8:	000c                	.insn	2, 0x000c
     6ba:	0501                	.insn	2, 0x0501
     6bc:	0608                	.insn	2, 0x0608
     6be:	04090103          	lb	sp,64(s2)
     6c2:	0100                	.insn	2, 0x0100
     6c4:	00090103          	lb	sp,0(s2)
     6c8:	0100                	.insn	2, 0x0100
     6ca:	00090103          	lb	sp,0(s2)
     6ce:	0100                	.insn	2, 0x0100
     6d0:	00090203          	lb	tp,0(s2)
     6d4:	0100                	.insn	2, 0x0100
     6d6:	00090003          	lb	zero,0(s2)
     6da:	0100                	.insn	2, 0x0100
     6dc:	00090003          	lb	zero,0(s2)
     6e0:	0100                	.insn	2, 0x0100
     6e2:	00090003          	lb	zero,0(s2)
     6e6:	0100                	.insn	2, 0x0100
     6e8:	00090003          	lb	zero,0(s2)
     6ec:	0100                	.insn	2, 0x0100
     6ee:	04090003          	lb	zero,64(s2)
     6f2:	0100                	.insn	2, 0x0100
     6f4:	00090003          	lb	zero,0(s2)
     6f8:	0100                	.insn	2, 0x0100
     6fa:	10090003          	lb	zero,256(s2)
     6fe:	0100                	.insn	2, 0x0100
     700:	10090003          	lb	zero,256(s2)
     704:	0100                	.insn	2, 0x0100
     706:	1c090003          	lb	zero,448(s2)
     70a:	0100                	.insn	2, 0x0100
     70c:	0200                	.insn	2, 0x0200
     70e:	0104                	.insn	2, 0x0104
     710:	08090003          	lb	zero,128(s2)
     714:	0100                	.insn	2, 0x0100
     716:	0200                	.insn	2, 0x0200
     718:	0104                	.insn	2, 0x0104
     71a:	08090003          	lb	zero,128(s2)
     71e:	0100                	.insn	2, 0x0100
     720:	0200                	.insn	2, 0x0200
     722:	0304                	.insn	2, 0x0304
     724:	04090003          	lb	zero,64(s2)
     728:	0100                	.insn	2, 0x0100
     72a:	0200                	.insn	2, 0x0200
     72c:	0504                	.insn	2, 0x0504
     72e:	04090003          	lb	zero,64(s2)
     732:	0100                	.insn	2, 0x0100
     734:	0200                	.insn	2, 0x0200
     736:	0704                	.insn	2, 0x0704
     738:	08090003          	lb	zero,128(s2)
     73c:	0100                	.insn	2, 0x0100
     73e:	0200                	.insn	2, 0x0200
     740:	0704                	.insn	2, 0x0704
     742:	04090003          	lb	zero,64(s2)
     746:	0100                	.insn	2, 0x0100
     748:	0200                	.insn	2, 0x0200
     74a:	0704                	.insn	2, 0x0704
     74c:	00090003          	lb	zero,0(s2)
     750:	0100                	.insn	2, 0x0100
     752:	0200                	.insn	2, 0x0200
     754:	0704                	.insn	2, 0x0704
     756:	18090003          	lb	zero,384(s2)
     75a:	0100                	.insn	2, 0x0100
     75c:	0200                	.insn	2, 0x0200
     75e:	0704                	.insn	2, 0x0704
     760:	10090003          	lb	zero,256(s2)
     764:	0100                	.insn	2, 0x0100
     766:	0200                	.insn	2, 0x0200
     768:	0704                	.insn	2, 0x0704
     76a:	20090003          	lb	zero,512(s2)
     76e:	0100                	.insn	2, 0x0100
     770:	0200                	.insn	2, 0x0200
     772:	0804                	.insn	2, 0x0804
     774:	08090003          	lb	zero,128(s2)
     778:	0100                	.insn	2, 0x0100
     77a:	0200                	.insn	2, 0x0200
     77c:	0804                	.insn	2, 0x0804
     77e:	08090003          	lb	zero,128(s2)
     782:	0100                	.insn	2, 0x0100
     784:	0200                	.insn	2, 0x0200
     786:	0a04                	.insn	2, 0x0a04
     788:	04090003          	lb	zero,64(s2)
     78c:	0100                	.insn	2, 0x0100
     78e:	0200                	.insn	2, 0x0200
     790:	0c04                	.insn	2, 0x0c04
     792:	04090003          	lb	zero,64(s2)
     796:	0100                	.insn	2, 0x0100
     798:	0200                	.insn	2, 0x0200
     79a:	0e04                	.insn	2, 0x0e04
     79c:	08090003          	lb	zero,128(s2)
     7a0:	0100                	.insn	2, 0x0100
     7a2:	0306                	.insn	2, 0x0306
     7a4:	0901                	.insn	2, 0x0901
     7a6:	0004                	.insn	2, 0x0004
     7a8:	0001                	.insn	2, 0x0001
     7aa:	0402                	.insn	2, 0x0402
     7ac:	030e                	.insn	2, 0x030e
     7ae:	097f 0004 0301 0901 	.insn	10, 0x0004090103010004097f
     7b6:	0004 
     7b8:	0001                	.insn	2, 0x0001
     7ba:	0402                	.insn	2, 0x0402
     7bc:	030e                	.insn	2, 0x030e
     7be:	097f 000c 0001 0402 	.insn	10, 0x060e04020001000c097f
     7c6:	060e 
     7c8:	04090003          	lb	zero,64(s2)
     7cc:	0100                	.insn	2, 0x0100
     7ce:	0200                	.insn	2, 0x0200
     7d0:	0e04                	.insn	2, 0x0e04
     7d2:	00090003          	lb	zero,0(s2)
     7d6:	0100                	.insn	2, 0x0100
     7d8:	0200                	.insn	2, 0x0200
     7da:	0e04                	.insn	2, 0x0e04
     7dc:	00090003          	lb	zero,0(s2)
     7e0:	0100                	.insn	2, 0x0100
     7e2:	00090103          	lb	sp,0(s2)
     7e6:	0100                	.insn	2, 0x0100
     7e8:	00090003          	lb	zero,0(s2)
     7ec:	0100                	.insn	2, 0x0100
     7ee:	00090003          	lb	zero,0(s2)
     7f2:	0100                	.insn	2, 0x0100
     7f4:	00090003          	lb	zero,0(s2)
     7f8:	0100                	.insn	2, 0x0100
     7fa:	00090003          	lb	zero,0(s2)
     7fe:	0100                	.insn	2, 0x0100
     800:	04090003          	lb	zero,64(s2)
     804:	0100                	.insn	2, 0x0100
     806:	00090003          	lb	zero,0(s2)
     80a:	0100                	.insn	2, 0x0100
     80c:	04090003          	lb	zero,64(s2)
     810:	0100                	.insn	2, 0x0100
     812:	00090003          	lb	zero,0(s2)
     816:	0100                	.insn	2, 0x0100
     818:	04090003          	lb	zero,64(s2)
     81c:	0100                	.insn	2, 0x0100
     81e:	04090003          	lb	zero,64(s2)
     822:	0100                	.insn	2, 0x0100
     824:	08090003          	lb	zero,128(s2)
     828:	0100                	.insn	2, 0x0100
     82a:	04090003          	lb	zero,64(s2)
     82e:	0100                	.insn	2, 0x0100
     830:	00090003          	lb	zero,0(s2)
     834:	0100                	.insn	2, 0x0100
     836:	08090003          	lb	zero,128(s2)
     83a:	0100                	.insn	2, 0x0100
     83c:	00090003          	lb	zero,0(s2)
     840:	0100                	.insn	2, 0x0100
     842:	08090003          	lb	zero,128(s2)
     846:	0100                	.insn	2, 0x0100
     848:	04090003          	lb	zero,64(s2)
     84c:	0100                	.insn	2, 0x0100
     84e:	00090003          	lb	zero,0(s2)
     852:	0100                	.insn	2, 0x0100
     854:	08090003          	lb	zero,128(s2)
     858:	0100                	.insn	2, 0x0100
     85a:	00090003          	lb	zero,0(s2)
     85e:	0100                	.insn	2, 0x0100
     860:	08090003          	lb	zero,128(s2)
     864:	0100                	.insn	2, 0x0100
     866:	04090003          	lb	zero,64(s2)
     86a:	0100                	.insn	2, 0x0100
     86c:	00090003          	lb	zero,0(s2)
     870:	0100                	.insn	2, 0x0100
     872:	08090003          	lb	zero,128(s2)
     876:	0100                	.insn	2, 0x0100
     878:	00090003          	lb	zero,0(s2)
     87c:	0100                	.insn	2, 0x0100
     87e:	08090003          	lb	zero,128(s2)
     882:	0100                	.insn	2, 0x0100
     884:	10090003          	lb	zero,256(s2)
     888:	0100                	.insn	2, 0x0100
     88a:	00090003          	lb	zero,0(s2)
     88e:	0100                	.insn	2, 0x0100
     890:	00090003          	lb	zero,0(s2)
     894:	0100                	.insn	2, 0x0100
     896:	0200                	.insn	2, 0x0200
     898:	0104                	.insn	2, 0x0104
     89a:	04090003          	lb	zero,64(s2)
     89e:	0100                	.insn	2, 0x0100
     8a0:	0200                	.insn	2, 0x0200
     8a2:	0304                	.insn	2, 0x0304
     8a4:	04090003          	lb	zero,64(s2)
     8a8:	0100                	.insn	2, 0x0100
     8aa:	0200                	.insn	2, 0x0200
     8ac:	0304                	.insn	2, 0x0304
     8ae:	08090003          	lb	zero,128(s2)
     8b2:	0100                	.insn	2, 0x0100
     8b4:	0200                	.insn	2, 0x0200
     8b6:	0304                	.insn	2, 0x0304
     8b8:	00090003          	lb	zero,0(s2)
     8bc:	0100                	.insn	2, 0x0100
     8be:	00090203          	lb	tp,0(s2)
     8c2:	0100                	.insn	2, 0x0100
     8c4:	0b05                	.insn	2, 0x0b05
     8c6:	0306                	.insn	2, 0x0306
     8c8:	0900                	.insn	2, 0x0900
     8ca:	0000                	.insn	2, 0x
     8cc:	0501                	.insn	2, 0x0501
     8ce:	0014                	.insn	2, 0x0014
     8d0:	0402                	.insn	2, 0x0402
     8d2:	0301                	.insn	2, 0x0301
     8d4:	0900                	.insn	2, 0x0900
     8d6:	0004                	.insn	2, 0x0004
     8d8:	0501                	.insn	2, 0x0501
     8da:	0008                	.insn	2, 0x0008
     8dc:	0402                	.insn	2, 0x0402
     8de:	097e0303          	lb	t1,151(t3)
     8e2:	0004                	.insn	2, 0x0004
     8e4:	0501                	.insn	2, 0x0501
     8e6:	097d030b          	.insn	4, 0x097d030b
     8ea:	0014                	.insn	2, 0x0014
     8ec:	0501                	.insn	2, 0x0501
     8ee:	0008                	.insn	2, 0x0008
     8f0:	0402                	.insn	2, 0x0402
     8f2:	09030303          	lb	t1,144(t1)
     8f6:	0004                	.insn	2, 0x0004
     8f8:	0501                	.insn	2, 0x0501
     8fa:	0908030b          	.insn	4, 0x0908030b
     8fe:	0004                	.insn	2, 0x0004
     900:	0501                	.insn	2, 0x0501
     902:	0021                	.insn	2, 0x0021
     904:	0402                	.insn	2, 0x0402
     906:	0302                	.insn	2, 0x0302
     908:	097a                	.insn	2, 0x097a
     90a:	0004                	.insn	2, 0x0004
     90c:	0501                	.insn	2, 0x0501
     90e:	0605                	.insn	2, 0x0605
     910:	04090203          	lb	tp,64(s2)
     914:	0100                	.insn	2, 0x0100
     916:	0705                	.insn	2, 0x0705
     918:	0306                	.insn	2, 0x0306
     91a:	0900                	.insn	2, 0x0900
     91c:	0000                	.insn	2, 0x
     91e:	0501                	.insn	2, 0x0501
     920:	0605                	.insn	2, 0x0605
     922:	04090103          	lb	sp,64(s2)
     926:	0100                	.insn	2, 0x0100
     928:	00090003          	lb	zero,0(s2)
     92c:	0100                	.insn	2, 0x0100
     92e:	00090003          	lb	zero,0(s2)
     932:	0100                	.insn	2, 0x0100
     934:	00090003          	lb	zero,0(s2)
     938:	0100                	.insn	2, 0x0100
     93a:	00090003          	lb	zero,0(s2)
     93e:	0100                	.insn	2, 0x0100
     940:	0705                	.insn	2, 0x0705
     942:	0306                	.insn	2, 0x0306
     944:	00040943          	.insn	4, 0x00040943
     948:	0301                	.insn	2, 0x0301
     94a:	097f 0004 0901 0008 	.insn	10, 0x0100000809010004097f
     952:	0100 
     954:	4101                	.insn	2, 0x4101
     956:	0009                	.insn	2, 0x0009
     958:	0500                	.insn	2, 0x0500
     95a:	0400                	.insn	2, 0x0400
     95c:	3300                	.insn	2, 0x3300
     95e:	0000                	.insn	2, 0x
     960:	0100                	.insn	2, 0x0100
     962:	0101                	.insn	2, 0x0101
     964:	000d0efb          	.insn	4, 0x000d0efb
     968:	0101                	.insn	2, 0x0101
     96a:	0101                	.insn	2, 0x0101
     96c:	0000                	.insn	2, 0x
     96e:	0100                	.insn	2, 0x0100
     970:	0000                	.insn	2, 0x
     972:	0101                	.insn	2, 0x0101
     974:	1f01                	.insn	2, 0x1f01
     976:	0002                	.insn	2, 0x0002
     978:	0000                	.insn	2, 0x
     97a:	9900                	.insn	2, 0x9900
     97c:	0000                	.insn	2, 0x
     97e:	0200                	.insn	2, 0x0200
     980:	1f01                	.insn	2, 0x1f01
     982:	0f02                	.insn	2, 0x0f02
     984:	00008f03          	lb	t5,0(ra)
     988:	0100                	.insn	2, 0x0100
     98a:	0000008f          	.insn	4, 0x008f
     98e:	ba01                	.insn	2, 0xba01
     990:	0000                	.insn	2, 0x
     992:	0100                	.insn	2, 0x0100
     994:	0105                	.insn	2, 0x0105
     996:	0500                	.insn	2, 0x0500
     998:	2402                	.insn	2, 0x2402
     99a:	0031                	.insn	2, 0x0031
     99c:	0380                	.insn	2, 0x0380
     99e:	0a86                	.insn	2, 0x0a86
     9a0:	0501                	.insn	2, 0x0501
     9a2:	09010303          	lb	t1,144(sp)
     9a6:	0000                	.insn	2, 0x
     9a8:	0301                	.insn	2, 0x0301
     9aa:	0902                	.insn	2, 0x0902
     9ac:	0000                	.insn	2, 0x
     9ae:	0301                	.insn	2, 0x0301
     9b0:	00097ddb          	.insn	4, 0x00097ddb
     9b4:	0100                	.insn	2, 0x0100
     9b6:	00090103          	lb	sp,0(s2)
     9ba:	0100                	.insn	2, 0x0100
     9bc:	00090103          	lb	sp,0(s2)
     9c0:	0100                	.insn	2, 0x0100
     9c2:	00090103          	lb	sp,0(s2)
     9c6:	0100                	.insn	2, 0x0100
     9c8:	00090103          	lb	sp,0(s2)
     9cc:	0100                	.insn	2, 0x0100
     9ce:	00090103          	lb	sp,0(s2)
     9d2:	0100                	.insn	2, 0x0100
     9d4:	00090203          	lb	tp,0(s2)
     9d8:	0100                	.insn	2, 0x0100
     9da:	00090103          	lb	sp,0(s2)
     9de:	0100                	.insn	2, 0x0100
     9e0:	00090103          	lb	sp,0(s2)
     9e4:	0100                	.insn	2, 0x0100
     9e6:	0105                	.insn	2, 0x0105
     9e8:	0306                	.insn	2, 0x0306
     9ea:	0299                	.insn	2, 0x0299
     9ec:	0009                	.insn	2, 0x0009
     9ee:	0100                	.insn	2, 0x0100
     9f0:	0605                	.insn	2, 0x0605
     9f2:	097de703          	.insn	4, 0x097de703
     9f6:	0034                	.insn	2, 0x0034
     9f8:	0501                	.insn	2, 0x0501
     9fa:	01030603          	lb	a2,16(t1)
     9fe:	0409                	.insn	2, 0x0409
     a00:	0100                	.insn	2, 0x0100
     a02:	0605                	.insn	2, 0x0605
     a04:	0306                	.insn	2, 0x0306
     a06:	0900                	.insn	2, 0x0900
     a08:	0000                	.insn	2, 0x
     a0a:	0501                	.insn	2, 0x0501
     a0c:	25030603          	lb	a2,592(t1)
     a10:	0409                	.insn	2, 0x0409
     a12:	0100                	.insn	2, 0x0100
     a14:	0605                	.insn	2, 0x0605
     a16:	0306                	.insn	2, 0x0306
     a18:	0900                	.insn	2, 0x0900
     a1a:	0000                	.insn	2, 0x
     a1c:	0501                	.insn	2, 0x0501
     a1e:	02030607          	.insn	4, 0x02030607
     a22:	0809                	.insn	2, 0x0809
     a24:	0100                	.insn	2, 0x0100
     a26:	0a05                	.insn	2, 0x0a05
     a28:	0306                	.insn	2, 0x0306
     a2a:	0900                	.insn	2, 0x0900
     a2c:	0008                	.insn	2, 0x0008
     a2e:	0501                	.insn	2, 0x0501
     a30:	0604                	.insn	2, 0x0604
     a32:	04090403          	lb	s0,64(s2)
     a36:	0100                	.insn	2, 0x0100
     a38:	00090003          	lb	zero,0(s2)
     a3c:	0100                	.insn	2, 0x0100
     a3e:	00090003          	lb	zero,0(s2)
     a42:	0100                	.insn	2, 0x0100
     a44:	00090003          	lb	zero,0(s2)
     a48:	0100                	.insn	2, 0x0100
     a4a:	0200                	.insn	2, 0x0200
     a4c:	0104                	.insn	2, 0x0104
     a4e:	00090003          	lb	zero,0(s2)
     a52:	0100                	.insn	2, 0x0100
     a54:	0200                	.insn	2, 0x0200
     a56:	0304                	.insn	2, 0x0304
     a58:	0306                	.insn	2, 0x0306
     a5a:	0900                	.insn	2, 0x0900
     a5c:	0008                	.insn	2, 0x0008
     a5e:	0001                	.insn	2, 0x0001
     a60:	0402                	.insn	2, 0x0402
     a62:	0615                	.insn	2, 0x0615
     a64:	0c090003          	lb	zero,192(s2)
     a68:	0100                	.insn	2, 0x0100
     a6a:	0200                	.insn	2, 0x0200
     a6c:	1504                	.insn	2, 0x1504
     a6e:	18090003          	lb	zero,384(s2)
     a72:	0100                	.insn	2, 0x0100
     a74:	00090203          	lb	tp,0(s2)
     a78:	0100                	.insn	2, 0x0100
     a7a:	0705                	.insn	2, 0x0705
     a7c:	0306                	.insn	2, 0x0306
     a7e:	0900                	.insn	2, 0x0900
     a80:	0000                	.insn	2, 0x
     a82:	0501                	.insn	2, 0x0501
     a84:	0608                	.insn	2, 0x0608
     a86:	04090503          	lb	a0,64(s2)
     a8a:	0100                	.insn	2, 0x0100
     a8c:	1105                	.insn	2, 0x1105
     a8e:	0306                	.insn	2, 0x0306
     a90:	0901                	.insn	2, 0x0901
     a92:	0000                	.insn	2, 0x
     a94:	0501                	.insn	2, 0x0501
     a96:	031e                	.insn	2, 0x031e
     a98:	0900                	.insn	2, 0x0900
     a9a:	0004                	.insn	2, 0x0004
     a9c:	0501                	.insn	2, 0x0501
     a9e:	097f030b          	.insn	4, 0x097f030b
     aa2:	0004                	.insn	2, 0x0004
     aa4:	0501                	.insn	2, 0x0501
     aa6:	0608                	.insn	2, 0x0608
     aa8:	04090103          	lb	sp,64(s2)
     aac:	0100                	.insn	2, 0x0100
     aae:	0b05                	.insn	2, 0x0b05
     ab0:	0306                	.insn	2, 0x0306
     ab2:	0900                	.insn	2, 0x0900
     ab4:	0000                	.insn	2, 0x
     ab6:	0501                	.insn	2, 0x0501
     ab8:	0608                	.insn	2, 0x0608
     aba:	04090103          	lb	sp,64(s2)
     abe:	0100                	.insn	2, 0x0100
     ac0:	0b05                	.insn	2, 0x0b05
     ac2:	0306                	.insn	2, 0x0306
     ac4:	0900                	.insn	2, 0x0900
     ac6:	0000                	.insn	2, 0x
     ac8:	0501                	.insn	2, 0x0501
     aca:	0604                	.insn	2, 0x0604
     acc:	04090303          	lb	t1,64(s2)
     ad0:	0100                	.insn	2, 0x0100
     ad2:	00090003          	lb	zero,0(s2)
     ad6:	0100                	.insn	2, 0x0100
     ad8:	00090003          	lb	zero,0(s2)
     adc:	0100                	.insn	2, 0x0100
     ade:	00090003          	lb	zero,0(s2)
     ae2:	0100                	.insn	2, 0x0100
     ae4:	0805                	.insn	2, 0x0805
     ae6:	0200                	.insn	2, 0x0200
     ae8:	0f04                	.insn	2, 0x0f04
     aea:	00092503          	lw	a0,0(s2)
     aee:	0100                	.insn	2, 0x0100
     af0:	0405                	.insn	2, 0x0405
     af2:	00090503          	lb	a0,0(s2)
     af6:	0100                	.insn	2, 0x0100
     af8:	00090003          	lb	zero,0(s2)
     afc:	0100                	.insn	2, 0x0100
     afe:	00090003          	lb	zero,0(s2)
     b02:	0100                	.insn	2, 0x0100
     b04:	00090003          	lb	zero,0(s2)
     b08:	0100                	.insn	2, 0x0100
     b0a:	04090003          	lb	zero,64(s2)
     b0e:	0100                	.insn	2, 0x0100
     b10:	18090003          	lb	zero,384(s2)
     b14:	0100                	.insn	2, 0x0100
     b16:	00090003          	lb	zero,0(s2)
     b1a:	0100                	.insn	2, 0x0100
     b1c:	00090003          	lb	zero,0(s2)
     b20:	0100                	.insn	2, 0x0100
     b22:	10090003          	lb	zero,256(s2)
     b26:	0100                	.insn	2, 0x0100
     b28:	1c090003          	lb	zero,448(s2)
     b2c:	0100                	.insn	2, 0x0100
     b2e:	0200                	.insn	2, 0x0200
     b30:	0104                	.insn	2, 0x0104
     b32:	04090003          	lb	zero,64(s2)
     b36:	0100                	.insn	2, 0x0100
     b38:	0200                	.insn	2, 0x0200
     b3a:	0104                	.insn	2, 0x0104
     b3c:	04090003          	lb	zero,64(s2)
     b40:	0100                	.insn	2, 0x0100
     b42:	0200                	.insn	2, 0x0200
     b44:	0304                	.insn	2, 0x0304
     b46:	04090003          	lb	zero,64(s2)
     b4a:	0100                	.insn	2, 0x0100
     b4c:	0200                	.insn	2, 0x0200
     b4e:	0504                	.insn	2, 0x0504
     b50:	04090003          	lb	zero,64(s2)
     b54:	0100                	.insn	2, 0x0100
     b56:	0200                	.insn	2, 0x0200
     b58:	0704                	.insn	2, 0x0704
     b5a:	04090003          	lb	zero,64(s2)
     b5e:	0100                	.insn	2, 0x0100
     b60:	0200                	.insn	2, 0x0200
     b62:	0704                	.insn	2, 0x0704
     b64:	04090003          	lb	zero,64(s2)
     b68:	0100                	.insn	2, 0x0100
     b6a:	0200                	.insn	2, 0x0200
     b6c:	0704                	.insn	2, 0x0704
     b6e:	00090003          	lb	zero,0(s2)
     b72:	0100                	.insn	2, 0x0100
     b74:	0200                	.insn	2, 0x0200
     b76:	0704                	.insn	2, 0x0704
     b78:	00090003          	lb	zero,0(s2)
     b7c:	0100                	.insn	2, 0x0100
     b7e:	0200                	.insn	2, 0x0200
     b80:	0704                	.insn	2, 0x0704
     b82:	20090003          	lb	zero,512(s2)
     b86:	0100                	.insn	2, 0x0100
     b88:	0200                	.insn	2, 0x0200
     b8a:	0704                	.insn	2, 0x0704
     b8c:	20090003          	lb	zero,512(s2)
     b90:	0100                	.insn	2, 0x0100
     b92:	0200                	.insn	2, 0x0200
     b94:	0804                	.insn	2, 0x0804
     b96:	04090003          	lb	zero,64(s2)
     b9a:	0100                	.insn	2, 0x0100
     b9c:	0200                	.insn	2, 0x0200
     b9e:	0804                	.insn	2, 0x0804
     ba0:	04090003          	lb	zero,64(s2)
     ba4:	0100                	.insn	2, 0x0100
     ba6:	0200                	.insn	2, 0x0200
     ba8:	0a04                	.insn	2, 0x0a04
     baa:	04090003          	lb	zero,64(s2)
     bae:	0100                	.insn	2, 0x0100
     bb0:	0200                	.insn	2, 0x0200
     bb2:	0c04                	.insn	2, 0x0c04
     bb4:	04090003          	lb	zero,64(s2)
     bb8:	0100                	.insn	2, 0x0100
     bba:	0200                	.insn	2, 0x0200
     bbc:	0e04                	.insn	2, 0x0e04
     bbe:	04090003          	lb	zero,64(s2)
     bc2:	0100                	.insn	2, 0x0100
     bc4:	0200                	.insn	2, 0x0200
     bc6:	0e04                	.insn	2, 0x0e04
     bc8:	04090003          	lb	zero,64(s2)
     bcc:	0100                	.insn	2, 0x0100
     bce:	0200                	.insn	2, 0x0200
     bd0:	0e04                	.insn	2, 0x0e04
     bd2:	00090003          	lb	zero,0(s2)
     bd6:	0100                	.insn	2, 0x0100
     bd8:	0200                	.insn	2, 0x0200
     bda:	0f04                	.insn	2, 0x0f04
     bdc:	00090003          	lb	zero,0(s2)
     be0:	0100                	.insn	2, 0x0100
     be2:	0705                	.insn	2, 0x0705
     be4:	00090503          	lb	a0,0(s2)
     be8:	0100                	.insn	2, 0x0100
     bea:	0405                	.insn	2, 0x0405
     bec:	00090203          	lb	tp,0(s2)
     bf0:	0100                	.insn	2, 0x0100
     bf2:	1205                	.insn	2, 0x1205
     bf4:	0306                	.insn	2, 0x0306
     bf6:	0900                	.insn	2, 0x0900
     bf8:	0000                	.insn	2, 0x
     bfa:	0501                	.insn	2, 0x0501
     bfc:	0604                	.insn	2, 0x0604
     bfe:	04090103          	lb	sp,64(s2)
     c02:	0100                	.insn	2, 0x0100
     c04:	00090103          	lb	sp,0(s2)
     c08:	0100                	.insn	2, 0x0100
     c0a:	0c05                	.insn	2, 0x0c05
     c0c:	0306                	.insn	2, 0x0306
     c0e:	0900                	.insn	2, 0x0900
     c10:	0000                	.insn	2, 0x
     c12:	0501                	.insn	2, 0x0501
     c14:	da030603          	lb	a2,-608(t1)
     c18:	0900                	.insn	2, 0x0900
     c1a:	0004                	.insn	2, 0x0004
     c1c:	0301                	.insn	2, 0x0301
     c1e:	0901                	.insn	2, 0x0901
     c20:	0000                	.insn	2, 0x
     c22:	0301                	.insn	2, 0x0301
     c24:	00d8                	.insn	2, 0x00d8
     c26:	0009                	.insn	2, 0x0009
     c28:	0100                	.insn	2, 0x0100
     c2a:	0105                	.insn	2, 0x0105
     c2c:	0306                	.insn	2, 0x0306
     c2e:	0901                	.insn	2, 0x0901
     c30:	0000                	.insn	2, 0x
     c32:	0501                	.insn	2, 0x0501
     c34:	0004                	.insn	2, 0x0004
     c36:	0402                	.insn	2, 0x0402
     c38:	0304                	.insn	2, 0x0304
     c3a:	7e8d                	.insn	2, 0x7e8d
     c3c:	3809                	.insn	2, 0x3809
     c3e:	0100                	.insn	2, 0x0100
     c40:	0200                	.insn	2, 0x0200
     c42:	0b04                	.insn	2, 0x0b04
     c44:	04090003          	lb	zero,64(s2)
     c48:	0100                	.insn	2, 0x0100
     c4a:	0200                	.insn	2, 0x0200
     c4c:	0404                	.insn	2, 0x0404
     c4e:	04090003          	lb	zero,64(s2)
     c52:	0100                	.insn	2, 0x0100
     c54:	0200                	.insn	2, 0x0200
     c56:	0a04                	.insn	2, 0x0a04
     c58:	04090003          	lb	zero,64(s2)
     c5c:	0100                	.insn	2, 0x0100
     c5e:	0306                	.insn	2, 0x0306
     c60:	0915                	.insn	2, 0x0915
     c62:	0008                	.insn	2, 0x0008
     c64:	0001                	.insn	2, 0x0001
     c66:	0402                	.insn	2, 0x0402
     c68:	0605                	.insn	2, 0x0605
     c6a:	00090303          	lb	t1,0(s2)
     c6e:	0100                	.insn	2, 0x0100
     c70:	0705                	.insn	2, 0x0705
     c72:	04097d03          	.insn	4, 0x04097d03
     c76:	0100                	.insn	2, 0x0100
     c78:	0405                	.insn	2, 0x0405
     c7a:	0306                	.insn	2, 0x0306
     c7c:	00040903          	lb	s2,0(s0)
     c80:	0301                	.insn	2, 0x0301
     c82:	0900                	.insn	2, 0x0900
     c84:	0000                	.insn	2, 0x
     c86:	0301                	.insn	2, 0x0301
     c88:	0900                	.insn	2, 0x0900
     c8a:	0000                	.insn	2, 0x
     c8c:	0301                	.insn	2, 0x0301
     c8e:	0900                	.insn	2, 0x0900
     c90:	0000                	.insn	2, 0x
     c92:	0001                	.insn	2, 0x0001
     c94:	0402                	.insn	2, 0x0402
     c96:	0301                	.insn	2, 0x0301
     c98:	0900                	.insn	2, 0x0900
     c9a:	0000                	.insn	2, 0x
     c9c:	0001                	.insn	2, 0x0001
     c9e:	0402                	.insn	2, 0x0402
     ca0:	00030603          	lb	a2,0(t1)
     ca4:	0809                	.insn	2, 0x0809
     ca6:	0100                	.insn	2, 0x0100
     ca8:	0200                	.insn	2, 0x0200
     caa:	1504                	.insn	2, 0x1504
     cac:	0306                	.insn	2, 0x0306
     cae:	0900                	.insn	2, 0x0900
     cb0:	000c                	.insn	2, 0x000c
     cb2:	0501                	.insn	2, 0x0501
     cb4:	0b03060b          	.insn	4, 0x0b03060b
     cb8:	0c09                	.insn	2, 0x0c09
     cba:	0100                	.insn	2, 0x0100
     cbc:	0405                	.insn	2, 0x0405
     cbe:	0200                	.insn	2, 0x0200
     cc0:	1504                	.insn	2, 0x1504
     cc2:	04097503          	.insn	4, 0x04097503
     cc6:	0100                	.insn	2, 0x0100
     cc8:	0200                	.insn	2, 0x0200
     cca:	1504                	.insn	2, 0x1504
     ccc:	0306                	.insn	2, 0x0306
     cce:	0900                	.insn	2, 0x0900
     cd0:	000c                	.insn	2, 0x000c
     cd2:	0301                	.insn	2, 0x0301
     cd4:	0902                	.insn	2, 0x0902
     cd6:	0000                	.insn	2, 0x
     cd8:	0501                	.insn	2, 0x0501
     cda:	00030607          	.insn	4, 0x00030607
     cde:	0009                	.insn	2, 0x0009
     ce0:	0100                	.insn	2, 0x0100
     ce2:	0805                	.insn	2, 0x0805
     ce4:	0306                	.insn	2, 0x0306
     ce6:	0910                	.insn	2, 0x0910
     ce8:	0004                	.insn	2, 0x0004
     cea:	0301                	.insn	2, 0x0301
     cec:	0902                	.insn	2, 0x0902
     cee:	0000                	.insn	2, 0x
     cf0:	0501                	.insn	2, 0x0501
     cf2:	0003060b          	.insn	4, 0x0003060b
     cf6:	0009                	.insn	2, 0x0009
     cf8:	0100                	.insn	2, 0x0100
     cfa:	0805                	.insn	2, 0x0805
     cfc:	0306                	.insn	2, 0x0306
     cfe:	0901                	.insn	2, 0x0901
     d00:	0004                	.insn	2, 0x0004
     d02:	0501                	.insn	2, 0x0501
     d04:	0003060b          	.insn	4, 0x0003060b
     d08:	0009                	.insn	2, 0x0009
     d0a:	0100                	.insn	2, 0x0100
     d0c:	0805                	.insn	2, 0x0805
     d0e:	0306                	.insn	2, 0x0306
     d10:	0901                	.insn	2, 0x0901
     d12:	0004                	.insn	2, 0x0004
     d14:	0601                	.insn	2, 0x0601
     d16:	00090303          	lb	t1,0(s2)
     d1a:	0100                	.insn	2, 0x0100
     d1c:	1e05                	.insn	2, 0x1e05
     d1e:	04097d03          	.insn	4, 0x04097d03
     d22:	0100                	.insn	2, 0x0100
     d24:	1105                	.insn	2, 0x1105
     d26:	04090003          	lb	zero,64(s2)
     d2a:	0100                	.insn	2, 0x0100
     d2c:	0b05                	.insn	2, 0x0b05
     d2e:	04090003          	lb	zero,64(s2)
     d32:	0100                	.insn	2, 0x0100
     d34:	0805                	.insn	2, 0x0805
     d36:	0306                	.insn	2, 0x0306
     d38:	0901                	.insn	2, 0x0901
     d3a:	0004                	.insn	2, 0x0004
     d3c:	0501                	.insn	2, 0x0501
     d3e:	0003060b          	.insn	4, 0x0003060b
     d42:	0009                	.insn	2, 0x0009
     d44:	0100                	.insn	2, 0x0100
     d46:	0805                	.insn	2, 0x0805
     d48:	0306                	.insn	2, 0x0306
     d4a:	0902                	.insn	2, 0x0902
     d4c:	0004                	.insn	2, 0x0004
     d4e:	0301                	.insn	2, 0x0301
     d50:	0900                	.insn	2, 0x0900
     d52:	0000                	.insn	2, 0x
     d54:	0301                	.insn	2, 0x0301
     d56:	0900                	.insn	2, 0x0900
     d58:	0000                	.insn	2, 0x
     d5a:	0301                	.insn	2, 0x0301
     d5c:	0900                	.insn	2, 0x0900
     d5e:	0000                	.insn	2, 0x
     d60:	0301                	.insn	2, 0x0301
     d62:	0900                	.insn	2, 0x0900
     d64:	0000                	.insn	2, 0x
     d66:	0301                	.insn	2, 0x0301
     d68:	0900                	.insn	2, 0x0900
     d6a:	0018                	.insn	2, 0x0018
     d6c:	0301                	.insn	2, 0x0301
     d6e:	0900                	.insn	2, 0x0900
     d70:	0000                	.insn	2, 0x
     d72:	0301                	.insn	2, 0x0301
     d74:	0900                	.insn	2, 0x0900
     d76:	0000                	.insn	2, 0x
     d78:	0301                	.insn	2, 0x0301
     d7a:	0900                	.insn	2, 0x0900
     d7c:	0010                	.insn	2, 0x0010
     d7e:	0301                	.insn	2, 0x0301
     d80:	0900                	.insn	2, 0x0900
     d82:	001c                	.insn	2, 0x001c
     d84:	0001                	.insn	2, 0x0001
     d86:	0402                	.insn	2, 0x0402
     d88:	0301                	.insn	2, 0x0301
     d8a:	0900                	.insn	2, 0x0900
     d8c:	0004                	.insn	2, 0x0004
     d8e:	0001                	.insn	2, 0x0001
     d90:	0402                	.insn	2, 0x0402
     d92:	0301                	.insn	2, 0x0301
     d94:	0900                	.insn	2, 0x0900
     d96:	0004                	.insn	2, 0x0004
     d98:	0001                	.insn	2, 0x0001
     d9a:	0402                	.insn	2, 0x0402
     d9c:	09000303          	lb	t1,144(zero) # 90 <COOLING_THRESHOLD_ON+0x36>
     da0:	0004                	.insn	2, 0x0004
     da2:	0001                	.insn	2, 0x0001
     da4:	0402                	.insn	2, 0x0402
     da6:	0305                	.insn	2, 0x0305
     da8:	0900                	.insn	2, 0x0900
     daa:	0004                	.insn	2, 0x0004
     dac:	0001                	.insn	2, 0x0001
     dae:	0402                	.insn	2, 0x0402
     db0:	09000307          	.insn	4, 0x09000307
     db4:	0004                	.insn	2, 0x0004
     db6:	0001                	.insn	2, 0x0001
     db8:	0402                	.insn	2, 0x0402
     dba:	09000307          	.insn	4, 0x09000307
     dbe:	0004                	.insn	2, 0x0004
     dc0:	0001                	.insn	2, 0x0001
     dc2:	0402                	.insn	2, 0x0402
     dc4:	09000307          	.insn	4, 0x09000307
     dc8:	0000                	.insn	2, 0x
     dca:	0001                	.insn	2, 0x0001
     dcc:	0402                	.insn	2, 0x0402
     dce:	09000307          	.insn	4, 0x09000307
     dd2:	0000                	.insn	2, 0x
     dd4:	0001                	.insn	2, 0x0001
     dd6:	0402                	.insn	2, 0x0402
     dd8:	09000307          	.insn	4, 0x09000307
     ddc:	0020                	.insn	2, 0x0020
     dde:	0001                	.insn	2, 0x0001
     de0:	0402                	.insn	2, 0x0402
     de2:	09000307          	.insn	4, 0x09000307
     de6:	0020                	.insn	2, 0x0020
     de8:	0001                	.insn	2, 0x0001
     dea:	0402                	.insn	2, 0x0402
     dec:	0308                	.insn	2, 0x0308
     dee:	0900                	.insn	2, 0x0900
     df0:	0004                	.insn	2, 0x0004
     df2:	0001                	.insn	2, 0x0001
     df4:	0402                	.insn	2, 0x0402
     df6:	0308                	.insn	2, 0x0308
     df8:	0900                	.insn	2, 0x0900
     dfa:	0004                	.insn	2, 0x0004
     dfc:	0001                	.insn	2, 0x0001
     dfe:	0402                	.insn	2, 0x0402
     e00:	030a                	.insn	2, 0x030a
     e02:	0900                	.insn	2, 0x0900
     e04:	0004                	.insn	2, 0x0004
     e06:	0001                	.insn	2, 0x0001
     e08:	0402                	.insn	2, 0x0402
     e0a:	030c                	.insn	2, 0x030c
     e0c:	0900                	.insn	2, 0x0900
     e0e:	0004                	.insn	2, 0x0004
     e10:	0001                	.insn	2, 0x0001
     e12:	0402                	.insn	2, 0x0402
     e14:	030e                	.insn	2, 0x030e
     e16:	0900                	.insn	2, 0x0900
     e18:	0004                	.insn	2, 0x0004
     e1a:	0001                	.insn	2, 0x0001
     e1c:	0402                	.insn	2, 0x0402
     e1e:	030e                	.insn	2, 0x030e
     e20:	0900                	.insn	2, 0x0900
     e22:	0004                	.insn	2, 0x0004
     e24:	0001                	.insn	2, 0x0001
     e26:	0402                	.insn	2, 0x0402
     e28:	030e                	.insn	2, 0x030e
     e2a:	0900                	.insn	2, 0x0900
     e2c:	0000                	.insn	2, 0x
     e2e:	0501                	.insn	2, 0x0501
     e30:	0004                	.insn	2, 0x0004
     e32:	0402                	.insn	2, 0x0402
     e34:	0604                	.insn	2, 0x0604
     e36:	04096703          	.insn	4, 0x04096703
     e3a:	0100                	.insn	2, 0x0100
     e3c:	0200                	.insn	2, 0x0200
     e3e:	0b04                	.insn	2, 0x0b04
     e40:	04090003          	lb	zero,64(s2)
     e44:	0100                	.insn	2, 0x0100
     e46:	0200                	.insn	2, 0x0200
     e48:	0404                	.insn	2, 0x0404
     e4a:	04090003          	lb	zero,64(s2)
     e4e:	0100                	.insn	2, 0x0100
     e50:	0200                	.insn	2, 0x0200
     e52:	0a04                	.insn	2, 0x0a04
     e54:	04090003          	lb	zero,64(s2)
     e58:	0100                	.insn	2, 0x0100
     e5a:	0705                	.insn	2, 0x0705
     e5c:	0306                	.insn	2, 0x0306
     e5e:	092e                	.insn	2, 0x092e
     e60:	0008                	.insn	2, 0x0008
     e62:	0501                	.insn	2, 0x0501
     e64:	060a                	.insn	2, 0x060a
     e66:	00090003          	lb	zero,0(s2)
     e6a:	0100                	.insn	2, 0x0100
     e6c:	0405                	.insn	2, 0x0405
     e6e:	0306                	.insn	2, 0x0306
     e70:	00040913          	mv	s2,s0
     e74:	0301                	.insn	2, 0x0301
     e76:	0900                	.insn	2, 0x0900
     e78:	0000                	.insn	2, 0x
     e7a:	0301                	.insn	2, 0x0301
     e7c:	0900                	.insn	2, 0x0900
     e7e:	0000                	.insn	2, 0x
     e80:	0301                	.insn	2, 0x0301
     e82:	0900                	.insn	2, 0x0900
     e84:	0000                	.insn	2, 0x
     e86:	0001                	.insn	2, 0x0001
     e88:	0402                	.insn	2, 0x0402
     e8a:	0301                	.insn	2, 0x0301
     e8c:	0900                	.insn	2, 0x0900
     e8e:	0000                	.insn	2, 0x
     e90:	0001                	.insn	2, 0x0001
     e92:	0402                	.insn	2, 0x0402
     e94:	00030603          	lb	a2,0(t1)
     e98:	0809                	.insn	2, 0x0809
     e9a:	0100                	.insn	2, 0x0100
     e9c:	0200                	.insn	2, 0x0200
     e9e:	1504                	.insn	2, 0x1504
     ea0:	0306                	.insn	2, 0x0306
     ea2:	0900                	.insn	2, 0x0900
     ea4:	000c                	.insn	2, 0x000c
     ea6:	0001                	.insn	2, 0x0001
     ea8:	0402                	.insn	2, 0x0402
     eaa:	0315                	.insn	2, 0x0315
     eac:	0900                	.insn	2, 0x0900
     eae:	0020                	.insn	2, 0x0020
     eb0:	0301                	.insn	2, 0x0301
     eb2:	0901                	.insn	2, 0x0901
     eb4:	0000                	.insn	2, 0x
     eb6:	0501                	.insn	2, 0x0501
     eb8:	00030607          	.insn	4, 0x00030607
     ebc:	0009                	.insn	2, 0x0009
     ebe:	0100                	.insn	2, 0x0100
     ec0:	0805                	.insn	2, 0x0805
     ec2:	0306                	.insn	2, 0x0306
     ec4:	090a                	.insn	2, 0x090a
     ec6:	0004                	.insn	2, 0x0004
     ec8:	0501                	.insn	2, 0x0501
     eca:	0003060b          	.insn	4, 0x0003060b
     ece:	0009                	.insn	2, 0x0009
     ed0:	0100                	.insn	2, 0x0100
     ed2:	1405                	.insn	2, 0x1405
     ed4:	0200                	.insn	2, 0x0200
     ed6:	0104                	.insn	2, 0x0104
     ed8:	04090003          	lb	zero,64(s2)
     edc:	0100                	.insn	2, 0x0100
     ede:	0505                	.insn	2, 0x0505
     ee0:	0306                	.insn	2, 0x0306
     ee2:	0902                	.insn	2, 0x0902
     ee4:	0004                	.insn	2, 0x0004
     ee6:	0301                	.insn	2, 0x0301
     ee8:	0901                	.insn	2, 0x0901
     eea:	0000                	.insn	2, 0x
     eec:	0301                	.insn	2, 0x0301
     eee:	0900                	.insn	2, 0x0900
     ef0:	0000                	.insn	2, 0x
     ef2:	0301                	.insn	2, 0x0301
     ef4:	0900                	.insn	2, 0x0900
     ef6:	0000                	.insn	2, 0x
     ef8:	0301                	.insn	2, 0x0301
     efa:	0900                	.insn	2, 0x0900
     efc:	0010                	.insn	2, 0x0010
     efe:	0301                	.insn	2, 0x0301
     f00:	0900                	.insn	2, 0x0900
     f02:	0004                	.insn	2, 0x0004
     f04:	0301                	.insn	2, 0x0301
     f06:	0900                	.insn	2, 0x0900
     f08:	0000                	.insn	2, 0x
     f0a:	0501                	.insn	2, 0x0501
     f0c:	0308                	.insn	2, 0x0308
     f0e:	0905                	.insn	2, 0x0905
     f10:	0000                	.insn	2, 0x
     f12:	0301                	.insn	2, 0x0301
     f14:	0902                	.insn	2, 0x0902
     f16:	0000                	.insn	2, 0x
     f18:	0501                	.insn	2, 0x0501
     f1a:	0305                	.insn	2, 0x0305
     f1c:	0902                	.insn	2, 0x0902
     f1e:	0000                	.insn	2, 0x
     f20:	0301                	.insn	2, 0x0301
     f22:	0901                	.insn	2, 0x0901
     f24:	0000                	.insn	2, 0x
     f26:	0301                	.insn	2, 0x0301
     f28:	0901                	.insn	2, 0x0901
     f2a:	0000                	.insn	2, 0x
     f2c:	0501                	.insn	2, 0x0501
     f2e:	060d                	.insn	2, 0x060d
     f30:	00090003          	lb	zero,0(s2)
     f34:	0100                	.insn	2, 0x0100
     f36:	0405                	.insn	2, 0x0405
     f38:	0200                	.insn	2, 0x0200
     f3a:	0404                	.insn	2, 0x0404
     f3c:	0c096703          	.insn	4, 0x0c096703
     f40:	0100                	.insn	2, 0x0100
     f42:	0200                	.insn	2, 0x0200
     f44:	0b04                	.insn	2, 0x0b04
     f46:	04090003          	lb	zero,64(s2)
     f4a:	0100                	.insn	2, 0x0100
     f4c:	0200                	.insn	2, 0x0200
     f4e:	0404                	.insn	2, 0x0404
     f50:	04090003          	lb	zero,64(s2)
     f54:	0100                	.insn	2, 0x0100
     f56:	0200                	.insn	2, 0x0200
     f58:	0a04                	.insn	2, 0x0a04
     f5a:	04090003          	lb	zero,64(s2)
     f5e:	0100                	.insn	2, 0x0100
     f60:	0805                	.insn	2, 0x0805
     f62:	0306                	.insn	2, 0x0306
     f64:	091e                	.insn	2, 0x091e
     f66:	0008                	.insn	2, 0x0008
     f68:	0301                	.insn	2, 0x0301
     f6a:	00000903          	lb	s2,0(zero) # 0 <TRANSMISSION_TIME-0x1>
     f6e:	0301                	.insn	2, 0x0301
     f70:	0902                	.insn	2, 0x0902
     f72:	0000                	.insn	2, 0x
     f74:	0501                	.insn	2, 0x0501
     f76:	0611                	.insn	2, 0x0611
     f78:	00090003          	lb	zero,0(s2)
     f7c:	0100                	.insn	2, 0x0100
     f7e:	1e05                	.insn	2, 0x1e05
     f80:	04090003          	lb	zero,64(s2)
     f84:	0100                	.insn	2, 0x0100
     f86:	0b05                	.insn	2, 0x0b05
     f88:	04090003          	lb	zero,64(s2)
     f8c:	0100                	.insn	2, 0x0100
     f8e:	0805                	.insn	2, 0x0805
     f90:	0306                	.insn	2, 0x0306
     f92:	0901                	.insn	2, 0x0901
     f94:	0004                	.insn	2, 0x0004
     f96:	0501                	.insn	2, 0x0501
     f98:	0103060b          	.insn	4, 0x0103060b
     f9c:	0009                	.insn	2, 0x0009
     f9e:	0100                	.insn	2, 0x0100
     fa0:	1e05                	.insn	2, 0x1e05
     fa2:	04090103          	lb	sp,64(s2)
     fa6:	0100                	.insn	2, 0x0100
     fa8:	1105                	.insn	2, 0x1105
     faa:	04090003          	lb	zero,64(s2)
     fae:	0100                	.insn	2, 0x0100
     fb0:	0805                	.insn	2, 0x0805
     fb2:	04090303          	lb	t1,64(s2)
     fb6:	0100                	.insn	2, 0x0100
     fb8:	0b05                	.insn	2, 0x0b05
     fba:	04097d03          	.insn	4, 0x04097d03
     fbe:	0100                	.insn	2, 0x0100
     fc0:	04090103          	lb	sp,64(s2)
     fc4:	0100                	.insn	2, 0x0100
     fc6:	0805                	.insn	2, 0x0805
     fc8:	04090203          	lb	tp,64(s2)
     fcc:	0100                	.insn	2, 0x0100
     fce:	0b05                	.insn	2, 0x0b05
     fd0:	0c097b03          	.insn	4, 0x0c097b03
     fd4:	0100                	.insn	2, 0x0100
     fd6:	0805                	.insn	2, 0x0805
     fd8:	0306                	.insn	2, 0x0306
     fda:	0901                	.insn	2, 0x0901
     fdc:	0004                	.insn	2, 0x0004
     fde:	0301                	.insn	2, 0x0301
     fe0:	0901                	.insn	2, 0x0901
     fe2:	0000                	.insn	2, 0x
     fe4:	0301                	.insn	2, 0x0301
     fe6:	0901                	.insn	2, 0x0901
     fe8:	0000                	.insn	2, 0x
     fea:	0301                	.insn	2, 0x0301
     fec:	0902                	.insn	2, 0x0902
     fee:	0000                	.insn	2, 0x
     ff0:	0301                	.insn	2, 0x0301
     ff2:	0900                	.insn	2, 0x0900
     ff4:	0000                	.insn	2, 0x
     ff6:	0301                	.insn	2, 0x0301
     ff8:	0900                	.insn	2, 0x0900
     ffa:	0000                	.insn	2, 0x
     ffc:	0301                	.insn	2, 0x0301
     ffe:	0900                	.insn	2, 0x0900
    1000:	0000                	.insn	2, 0x
    1002:	0301                	.insn	2, 0x0301
    1004:	0900                	.insn	2, 0x0900
    1006:	0000                	.insn	2, 0x
    1008:	0301                	.insn	2, 0x0301
    100a:	0900                	.insn	2, 0x0900
    100c:	0004                	.insn	2, 0x0004
    100e:	0301                	.insn	2, 0x0301
    1010:	0900                	.insn	2, 0x0900
    1012:	0000                	.insn	2, 0x
    1014:	0301                	.insn	2, 0x0301
    1016:	0900                	.insn	2, 0x0900
    1018:	0010                	.insn	2, 0x0010
    101a:	0301                	.insn	2, 0x0301
    101c:	0900                	.insn	2, 0x0900
    101e:	0010                	.insn	2, 0x0010
    1020:	0301                	.insn	2, 0x0301
    1022:	0900                	.insn	2, 0x0900
    1024:	001c                	.insn	2, 0x001c
    1026:	0001                	.insn	2, 0x0001
    1028:	0402                	.insn	2, 0x0402
    102a:	0301                	.insn	2, 0x0301
    102c:	0900                	.insn	2, 0x0900
    102e:	0008                	.insn	2, 0x0008
    1030:	0001                	.insn	2, 0x0001
    1032:	0402                	.insn	2, 0x0402
    1034:	0301                	.insn	2, 0x0301
    1036:	0900                	.insn	2, 0x0900
    1038:	0008                	.insn	2, 0x0008
    103a:	0001                	.insn	2, 0x0001
    103c:	0402                	.insn	2, 0x0402
    103e:	09000303          	lb	t1,144(zero) # 90 <COOLING_THRESHOLD_ON+0x36>
    1042:	0004                	.insn	2, 0x0004
    1044:	0001                	.insn	2, 0x0001
    1046:	0402                	.insn	2, 0x0402
    1048:	0305                	.insn	2, 0x0305
    104a:	0900                	.insn	2, 0x0900
    104c:	0004                	.insn	2, 0x0004
    104e:	0001                	.insn	2, 0x0001
    1050:	0402                	.insn	2, 0x0402
    1052:	09000307          	.insn	4, 0x09000307
    1056:	0008                	.insn	2, 0x0008
    1058:	0001                	.insn	2, 0x0001
    105a:	0402                	.insn	2, 0x0402
    105c:	09000307          	.insn	4, 0x09000307
    1060:	0004                	.insn	2, 0x0004
    1062:	0001                	.insn	2, 0x0001
    1064:	0402                	.insn	2, 0x0402
    1066:	09000307          	.insn	4, 0x09000307
    106a:	0000                	.insn	2, 0x
    106c:	0001                	.insn	2, 0x0001
    106e:	0402                	.insn	2, 0x0402
    1070:	09000307          	.insn	4, 0x09000307
    1074:	0018                	.insn	2, 0x0018
    1076:	0001                	.insn	2, 0x0001
    1078:	0402                	.insn	2, 0x0402
    107a:	09000307          	.insn	4, 0x09000307
    107e:	0014                	.insn	2, 0x0014
    1080:	0001                	.insn	2, 0x0001
    1082:	0402                	.insn	2, 0x0402
    1084:	09000307          	.insn	4, 0x09000307
    1088:	001c                	.insn	2, 0x001c
    108a:	0001                	.insn	2, 0x0001
    108c:	0402                	.insn	2, 0x0402
    108e:	0308                	.insn	2, 0x0308
    1090:	0900                	.insn	2, 0x0900
    1092:	0008                	.insn	2, 0x0008
    1094:	0001                	.insn	2, 0x0001
    1096:	0402                	.insn	2, 0x0402
    1098:	0308                	.insn	2, 0x0308
    109a:	0900                	.insn	2, 0x0900
    109c:	0008                	.insn	2, 0x0008
    109e:	0001                	.insn	2, 0x0001
    10a0:	0402                	.insn	2, 0x0402
    10a2:	030a                	.insn	2, 0x030a
    10a4:	0900                	.insn	2, 0x0900
    10a6:	0004                	.insn	2, 0x0004
    10a8:	0001                	.insn	2, 0x0001
    10aa:	0402                	.insn	2, 0x0402
    10ac:	030c                	.insn	2, 0x030c
    10ae:	0900                	.insn	2, 0x0900
    10b0:	0004                	.insn	2, 0x0004
    10b2:	0001                	.insn	2, 0x0001
    10b4:	0402                	.insn	2, 0x0402
    10b6:	030e                	.insn	2, 0x030e
    10b8:	0900                	.insn	2, 0x0900
    10ba:	0008                	.insn	2, 0x0008
    10bc:	0601                	.insn	2, 0x0601
    10be:	00090103          	lb	sp,0(s2)
    10c2:	0100                	.insn	2, 0x0100
    10c4:	0200                	.insn	2, 0x0200
    10c6:	0e04                	.insn	2, 0x0e04
    10c8:	04097f03          	.insn	4, 0x04097f03
    10cc:	0100                	.insn	2, 0x0100
    10ce:	08090103          	lb	sp,128(s2)
    10d2:	0100                	.insn	2, 0x0100
    10d4:	0200                	.insn	2, 0x0200
    10d6:	0e04                	.insn	2, 0x0e04
    10d8:	0c097f03          	.insn	4, 0x0c097f03
    10dc:	0100                	.insn	2, 0x0100
    10de:	0200                	.insn	2, 0x0200
    10e0:	0e04                	.insn	2, 0x0e04
    10e2:	0306                	.insn	2, 0x0306
    10e4:	0900                	.insn	2, 0x0900
    10e6:	0004                	.insn	2, 0x0004
    10e8:	0001                	.insn	2, 0x0001
    10ea:	0402                	.insn	2, 0x0402
    10ec:	030e                	.insn	2, 0x030e
    10ee:	0900                	.insn	2, 0x0900
    10f0:	0000                	.insn	2, 0x
    10f2:	0001                	.insn	2, 0x0001
    10f4:	0402                	.insn	2, 0x0402
    10f6:	030e                	.insn	2, 0x030e
    10f8:	0900                	.insn	2, 0x0900
    10fa:	0000                	.insn	2, 0x
    10fc:	0301                	.insn	2, 0x0301
    10fe:	0901                	.insn	2, 0x0901
    1100:	0000                	.insn	2, 0x
    1102:	0301                	.insn	2, 0x0301
    1104:	0900                	.insn	2, 0x0900
    1106:	0000                	.insn	2, 0x
    1108:	0301                	.insn	2, 0x0301
    110a:	0900                	.insn	2, 0x0900
    110c:	0000                	.insn	2, 0x
    110e:	0301                	.insn	2, 0x0301
    1110:	0900                	.insn	2, 0x0900
    1112:	0000                	.insn	2, 0x
    1114:	0301                	.insn	2, 0x0301
    1116:	0900                	.insn	2, 0x0900
    1118:	0000                	.insn	2, 0x
    111a:	0301                	.insn	2, 0x0301
    111c:	0900                	.insn	2, 0x0900
    111e:	0004                	.insn	2, 0x0004
    1120:	0301                	.insn	2, 0x0301
    1122:	0900                	.insn	2, 0x0900
    1124:	0000                	.insn	2, 0x
    1126:	0301                	.insn	2, 0x0301
    1128:	0900                	.insn	2, 0x0900
    112a:	0004                	.insn	2, 0x0004
    112c:	0301                	.insn	2, 0x0301
    112e:	0900                	.insn	2, 0x0900
    1130:	0000                	.insn	2, 0x
    1132:	0301                	.insn	2, 0x0301
    1134:	0900                	.insn	2, 0x0900
    1136:	0004                	.insn	2, 0x0004
    1138:	0301                	.insn	2, 0x0301
    113a:	0900                	.insn	2, 0x0900
    113c:	0004                	.insn	2, 0x0004
    113e:	0301                	.insn	2, 0x0301
    1140:	0900                	.insn	2, 0x0900
    1142:	0008                	.insn	2, 0x0008
    1144:	0301                	.insn	2, 0x0301
    1146:	0900                	.insn	2, 0x0900
    1148:	0004                	.insn	2, 0x0004
    114a:	0301                	.insn	2, 0x0301
    114c:	0900                	.insn	2, 0x0900
    114e:	0000                	.insn	2, 0x
    1150:	0301                	.insn	2, 0x0301
    1152:	0900                	.insn	2, 0x0900
    1154:	0008                	.insn	2, 0x0008
    1156:	0301                	.insn	2, 0x0301
    1158:	0900                	.insn	2, 0x0900
    115a:	0000                	.insn	2, 0x
    115c:	0301                	.insn	2, 0x0301
    115e:	0900                	.insn	2, 0x0900
    1160:	0008                	.insn	2, 0x0008
    1162:	0301                	.insn	2, 0x0301
    1164:	0900                	.insn	2, 0x0900
    1166:	0004                	.insn	2, 0x0004
    1168:	0301                	.insn	2, 0x0301
    116a:	0900                	.insn	2, 0x0900
    116c:	0000                	.insn	2, 0x
    116e:	0301                	.insn	2, 0x0301
    1170:	0900                	.insn	2, 0x0900
    1172:	0008                	.insn	2, 0x0008
    1174:	0301                	.insn	2, 0x0301
    1176:	0900                	.insn	2, 0x0900
    1178:	0000                	.insn	2, 0x
    117a:	0301                	.insn	2, 0x0301
    117c:	0900                	.insn	2, 0x0900
    117e:	0008                	.insn	2, 0x0008
    1180:	0301                	.insn	2, 0x0301
    1182:	0900                	.insn	2, 0x0900
    1184:	0004                	.insn	2, 0x0004
    1186:	0301                	.insn	2, 0x0301
    1188:	0900                	.insn	2, 0x0900
    118a:	0000                	.insn	2, 0x
    118c:	0301                	.insn	2, 0x0301
    118e:	0900                	.insn	2, 0x0900
    1190:	0008                	.insn	2, 0x0008
    1192:	0301                	.insn	2, 0x0301
    1194:	0900                	.insn	2, 0x0900
    1196:	0000                	.insn	2, 0x
    1198:	0301                	.insn	2, 0x0301
    119a:	0900                	.insn	2, 0x0900
    119c:	0008                	.insn	2, 0x0008
    119e:	0301                	.insn	2, 0x0301
    11a0:	0900                	.insn	2, 0x0900
    11a2:	0010                	.insn	2, 0x0010
    11a4:	0301                	.insn	2, 0x0301
    11a6:	0900                	.insn	2, 0x0900
    11a8:	0000                	.insn	2, 0x
    11aa:	0301                	.insn	2, 0x0301
    11ac:	0900                	.insn	2, 0x0900
    11ae:	0000                	.insn	2, 0x
    11b0:	0001                	.insn	2, 0x0001
    11b2:	0402                	.insn	2, 0x0402
    11b4:	0301                	.insn	2, 0x0301
    11b6:	0900                	.insn	2, 0x0900
    11b8:	0004                	.insn	2, 0x0004
    11ba:	0001                	.insn	2, 0x0001
    11bc:	0402                	.insn	2, 0x0402
    11be:	09000303          	lb	t1,144(zero) # 90 <COOLING_THRESHOLD_ON+0x36>
    11c2:	0004                	.insn	2, 0x0004
    11c4:	0001                	.insn	2, 0x0001
    11c6:	0402                	.insn	2, 0x0402
    11c8:	09000303          	lb	t1,144(zero) # 90 <COOLING_THRESHOLD_ON+0x36>
    11cc:	0008                	.insn	2, 0x0008
    11ce:	0001                	.insn	2, 0x0001
    11d0:	0402                	.insn	2, 0x0402
    11d2:	09000303          	lb	t1,144(zero) # 90 <COOLING_THRESHOLD_ON+0x36>
    11d6:	0018                	.insn	2, 0x0018
    11d8:	0301                	.insn	2, 0x0301
    11da:	0902                	.insn	2, 0x0902
    11dc:	0000                	.insn	2, 0x
    11de:	0501                	.insn	2, 0x0501
    11e0:	0003060b          	.insn	4, 0x0003060b
    11e4:	0009                	.insn	2, 0x0009
    11e6:	0100                	.insn	2, 0x0100
    11e8:	1405                	.insn	2, 0x1405
    11ea:	0200                	.insn	2, 0x0200
    11ec:	0104                	.insn	2, 0x0104
    11ee:	04090003          	lb	zero,64(s2)
    11f2:	0100                	.insn	2, 0x0100
    11f4:	2105                	.insn	2, 0x2105
    11f6:	0200                	.insn	2, 0x0200
    11f8:	0204                	.insn	2, 0x0204
    11fa:	04090003          	lb	zero,64(s2)
    11fe:	0100                	.insn	2, 0x0100
    1200:	0505                	.insn	2, 0x0505
    1202:	0306                	.insn	2, 0x0306
    1204:	0902                	.insn	2, 0x0902
    1206:	0004                	.insn	2, 0x0004
    1208:	0301                	.insn	2, 0x0301
    120a:	0901                	.insn	2, 0x0901
    120c:	0000                	.insn	2, 0x
    120e:	0301                	.insn	2, 0x0301
    1210:	0900                	.insn	2, 0x0900
    1212:	0000                	.insn	2, 0x
    1214:	0301                	.insn	2, 0x0301
    1216:	0900                	.insn	2, 0x0900
    1218:	0000                	.insn	2, 0x
    121a:	0301                	.insn	2, 0x0301
    121c:	0900                	.insn	2, 0x0900
    121e:	0010                	.insn	2, 0x0010
    1220:	0301                	.insn	2, 0x0301
    1222:	0900                	.insn	2, 0x0900
    1224:	0004                	.insn	2, 0x0004
    1226:	0001                	.insn	2, 0x0001
    1228:	0402                	.insn	2, 0x0402
    122a:	0301                	.insn	2, 0x0301
    122c:	0900                	.insn	2, 0x0900
    122e:	0000                	.insn	2, 0x
    1230:	0501                	.insn	2, 0x0501
    1232:	0308                	.insn	2, 0x0308
    1234:	00000903          	lb	s2,0(zero) # 0 <TRANSMISSION_TIME-0x1>
    1238:	0301                	.insn	2, 0x0301
    123a:	00000903          	lb	s2,0(zero) # 0 <TRANSMISSION_TIME-0x1>
    123e:	0501                	.insn	2, 0x0501
    1240:	0305                	.insn	2, 0x0305
    1242:	0902                	.insn	2, 0x0902
    1244:	0000                	.insn	2, 0x
    1246:	0301                	.insn	2, 0x0301
    1248:	0900                	.insn	2, 0x0900
    124a:	0000                	.insn	2, 0x
    124c:	0301                	.insn	2, 0x0301
    124e:	0900                	.insn	2, 0x0900
    1250:	0000                	.insn	2, 0x
    1252:	0301                	.insn	2, 0x0301
    1254:	0900                	.insn	2, 0x0900
    1256:	0004                	.insn	2, 0x0004
    1258:	0301                	.insn	2, 0x0301
    125a:	0900                	.insn	2, 0x0900
    125c:	000c                	.insn	2, 0x000c
    125e:	0301                	.insn	2, 0x0301
    1260:	0900                	.insn	2, 0x0900
    1262:	0000                	.insn	2, 0x
    1264:	0301                	.insn	2, 0x0301
    1266:	0901                	.insn	2, 0x0901
    1268:	0000                	.insn	2, 0x
    126a:	0501                	.insn	2, 0x0501
    126c:	0614                	.insn	2, 0x0614
    126e:	00090003          	lb	zero,0(s2)
    1272:	0100                	.insn	2, 0x0100
    1274:	2005                	.insn	2, 0x2005
    1276:	04090003          	lb	zero,64(s2)
    127a:	0100                	.insn	2, 0x0100
    127c:	0505                	.insn	2, 0x0505
    127e:	0306                	.insn	2, 0x0306
    1280:	0901                	.insn	2, 0x0901
    1282:	0004                	.insn	2, 0x0004
    1284:	0301                	.insn	2, 0x0301
    1286:	0901                	.insn	2, 0x0901
    1288:	0000                	.insn	2, 0x
    128a:	0501                	.insn	2, 0x0501
    128c:	060d                	.insn	2, 0x060d
    128e:	00090003          	lb	zero,0(s2)
    1292:	0100                	.insn	2, 0x0100
    1294:	0c09                	.insn	2, 0x0c09
    1296:	0000                	.insn	2, 0x
    1298:	0101                	.insn	2, 0x0101
    129a:	089a                	.insn	2, 0x089a
    129c:	0000                	.insn	2, 0x
    129e:	0005                	.insn	2, 0x0005
    12a0:	0004                	.insn	2, 0x0004
    12a2:	00000033          	add	zero,zero,zero
    12a6:	0101                	.insn	2, 0x0101
    12a8:	fb01                	.insn	2, 0xfb01
    12aa:	0d0e                	.insn	2, 0x0d0e
    12ac:	0100                	.insn	2, 0x0100
    12ae:	0101                	.insn	2, 0x0101
    12b0:	0001                	.insn	2, 0x0001
    12b2:	0000                	.insn	2, 0x
    12b4:	0001                	.insn	2, 0x0001
    12b6:	0100                	.insn	2, 0x0100
    12b8:	0101                	.insn	2, 0x0101
    12ba:	021f 0000 0000      	.insn	6, 0x021f
    12c0:	00f6                	.insn	2, 0x00f6
    12c2:	0000                	.insn	2, 0x
    12c4:	0102                	.insn	2, 0x0102
    12c6:	021f 030f 00ed      	.insn	6, 0x00ed030f021f
    12cc:	0000                	.insn	2, 0x
    12ce:	ed01                	.insn	2, 0xed01
    12d0:	0000                	.insn	2, 0x
    12d2:	0100                	.insn	2, 0x0100
    12d4:	011f 0000 0501      	.insn	6, 0x05010000011f
    12da:	0001                	.insn	2, 0x0001
    12dc:	0205                	.insn	2, 0x0205
    12de:	364c                	.insn	2, 0x364c
    12e0:	8000                	.insn	2, 0x8000
    12e2:	05012103          	lw	sp,80(sp)
    12e6:	09010303          	lb	t1,144(sp)
    12ea:	0000                	.insn	2, 0x
    12ec:	0301                	.insn	2, 0x0301
    12ee:	0900                	.insn	2, 0x0900
    12f0:	0000                	.insn	2, 0x
    12f2:	0501                	.insn	2, 0x0501
    12f4:	030d                	.insn	2, 0x030d
    12f6:	0900                	.insn	2, 0x0900
    12f8:	0000                	.insn	2, 0x
    12fa:	0501                	.insn	2, 0x0501
    12fc:	09010303          	lb	t1,144(sp)
    1300:	0000                	.insn	2, 0x
    1302:	0301                	.insn	2, 0x0301
    1304:	0900                	.insn	2, 0x0900
    1306:	0000                	.insn	2, 0x
    1308:	0301                	.insn	2, 0x0301
    130a:	0900                	.insn	2, 0x0900
    130c:	0000                	.insn	2, 0x
    130e:	0301                	.insn	2, 0x0301
    1310:	0900                	.insn	2, 0x0900
    1312:	0000                	.insn	2, 0x
    1314:	0301                	.insn	2, 0x0301
    1316:	0901                	.insn	2, 0x0901
    1318:	0000                	.insn	2, 0x
    131a:	0301                	.insn	2, 0x0301
    131c:	0900                	.insn	2, 0x0900
    131e:	0000                	.insn	2, 0x
    1320:	0301                	.insn	2, 0x0301
    1322:	0900                	.insn	2, 0x0900
    1324:	0000                	.insn	2, 0x
    1326:	0301                	.insn	2, 0x0301
    1328:	0900                	.insn	2, 0x0900
    132a:	0000                	.insn	2, 0x
    132c:	0301                	.insn	2, 0x0301
    132e:	0901                	.insn	2, 0x0901
    1330:	0000                	.insn	2, 0x
    1332:	0301                	.insn	2, 0x0301
    1334:	0900                	.insn	2, 0x0900
    1336:	0000                	.insn	2, 0x
    1338:	0301                	.insn	2, 0x0301
    133a:	0900                	.insn	2, 0x0900
    133c:	0000                	.insn	2, 0x
    133e:	0301                	.insn	2, 0x0301
    1340:	0900                	.insn	2, 0x0900
    1342:	0000                	.insn	2, 0x
    1344:	0301                	.insn	2, 0x0301
    1346:	0901                	.insn	2, 0x0901
    1348:	0000                	.insn	2, 0x
    134a:	0301                	.insn	2, 0x0301
    134c:	0902                	.insn	2, 0x0902
    134e:	0000                	.insn	2, 0x
    1350:	0301                	.insn	2, 0x0301
    1352:	0901                	.insn	2, 0x0901
    1354:	0000                	.insn	2, 0x
    1356:	0301                	.insn	2, 0x0301
    1358:	0900                	.insn	2, 0x0900
    135a:	0000                	.insn	2, 0x
    135c:	0301                	.insn	2, 0x0301
    135e:	0900                	.insn	2, 0x0900
    1360:	0000                	.insn	2, 0x
    1362:	0301                	.insn	2, 0x0301
    1364:	0900                	.insn	2, 0x0900
    1366:	0000                	.insn	2, 0x
    1368:	0301                	.insn	2, 0x0301
    136a:	0900                	.insn	2, 0x0900
    136c:	0000                	.insn	2, 0x
    136e:	0501                	.insn	2, 0x0501
    1370:	0601                	.insn	2, 0x0601
    1372:	00097803          	.insn	4, 0x00097803
    1376:	0100                	.insn	2, 0x0100
    1378:	0305                	.insn	2, 0x0305
    137a:	18090803          	lb	a6,384(s2)
    137e:	0100                	.insn	2, 0x0100
    1380:	0105                	.insn	2, 0x0105
    1382:	04097803          	.insn	4, 0x04097803
    1386:	0100                	.insn	2, 0x0100
    1388:	1c090003          	lb	zero,448(s2)
    138c:	0100                	.insn	2, 0x0100
    138e:	0305                	.insn	2, 0x0305
    1390:	04090803          	lb	a6,64(s2)
    1394:	0100                	.insn	2, 0x0100
    1396:	0306                	.insn	2, 0x0306
    1398:	0900                	.insn	2, 0x0900
    139a:	0004                	.insn	2, 0x0004
    139c:	0301                	.insn	2, 0x0301
    139e:	0900                	.insn	2, 0x0900
    13a0:	0000                	.insn	2, 0x
    13a2:	0301                	.insn	2, 0x0301
    13a4:	0900                	.insn	2, 0x0900
    13a6:	0004                	.insn	2, 0x0004
    13a8:	0301                	.insn	2, 0x0301
    13aa:	0900                	.insn	2, 0x0900
    13ac:	0000                	.insn	2, 0x
    13ae:	0301                	.insn	2, 0x0301
    13b0:	0900                	.insn	2, 0x0900
    13b2:	0000                	.insn	2, 0x
    13b4:	0001                	.insn	2, 0x0001
    13b6:	0402                	.insn	2, 0x0402
    13b8:	0301                	.insn	2, 0x0301
    13ba:	0900                	.insn	2, 0x0900
    13bc:	000c                	.insn	2, 0x000c
    13be:	0001                	.insn	2, 0x0001
    13c0:	0402                	.insn	2, 0x0402
    13c2:	0301                	.insn	2, 0x0301
    13c4:	0900                	.insn	2, 0x0900
    13c6:	0000                	.insn	2, 0x
    13c8:	0001                	.insn	2, 0x0001
    13ca:	0402                	.insn	2, 0x0402
    13cc:	0301                	.insn	2, 0x0301
    13ce:	0900                	.insn	2, 0x0900
    13d0:	0000                	.insn	2, 0x
    13d2:	0001                	.insn	2, 0x0001
    13d4:	0402                	.insn	2, 0x0402
    13d6:	0305                	.insn	2, 0x0305
    13d8:	0900                	.insn	2, 0x0900
    13da:	0000                	.insn	2, 0x
    13dc:	0001                	.insn	2, 0x0001
    13de:	0402                	.insn	2, 0x0402
    13e0:	09000307          	.insn	4, 0x09000307
    13e4:	000c                	.insn	2, 0x000c
    13e6:	0001                	.insn	2, 0x0001
    13e8:	0402                	.insn	2, 0x0402
    13ea:	09000307          	.insn	4, 0x09000307
    13ee:	0000                	.insn	2, 0x
    13f0:	0001                	.insn	2, 0x0001
    13f2:	0402                	.insn	2, 0x0402
    13f4:	09000307          	.insn	4, 0x09000307
    13f8:	0004                	.insn	2, 0x0004
    13fa:	0001                	.insn	2, 0x0001
    13fc:	0402                	.insn	2, 0x0402
    13fe:	09000307          	.insn	4, 0x09000307
    1402:	0000                	.insn	2, 0x
    1404:	0001                	.insn	2, 0x0001
    1406:	0402                	.insn	2, 0x0402
    1408:	0900031b          	.insn	4, 0x0900031b
    140c:	0000                	.insn	2, 0x
    140e:	0001                	.insn	2, 0x0001
    1410:	0402                	.insn	2, 0x0402
    1412:	0900031b          	.insn	4, 0x0900031b
    1416:	0000                	.insn	2, 0x
    1418:	0001                	.insn	2, 0x0001
    141a:	0402                	.insn	2, 0x0402
    141c:	0308                	.insn	2, 0x0308
    141e:	0900                	.insn	2, 0x0900
    1420:	0004                	.insn	2, 0x0004
    1422:	0001                	.insn	2, 0x0001
    1424:	0402                	.insn	2, 0x0402
    1426:	0308                	.insn	2, 0x0308
    1428:	0900                	.insn	2, 0x0900
    142a:	0000                	.insn	2, 0x
    142c:	0301                	.insn	2, 0x0301
    142e:	0901                	.insn	2, 0x0901
    1430:	0000                	.insn	2, 0x
    1432:	0301                	.insn	2, 0x0301
    1434:	0900                	.insn	2, 0x0900
    1436:	0000                	.insn	2, 0x
    1438:	0301                	.insn	2, 0x0301
    143a:	0900                	.insn	2, 0x0900
    143c:	0000                	.insn	2, 0x
    143e:	0301                	.insn	2, 0x0301
    1440:	0900                	.insn	2, 0x0900
    1442:	0000                	.insn	2, 0x
    1444:	0301                	.insn	2, 0x0301
    1446:	0900                	.insn	2, 0x0900
    1448:	0000                	.insn	2, 0x
    144a:	0301                	.insn	2, 0x0301
    144c:	0900                	.insn	2, 0x0900
    144e:	0010                	.insn	2, 0x0010
    1450:	0301                	.insn	2, 0x0301
    1452:	0900                	.insn	2, 0x0900
    1454:	0000                	.insn	2, 0x
    1456:	0301                	.insn	2, 0x0301
    1458:	0900                	.insn	2, 0x0900
    145a:	0004                	.insn	2, 0x0004
    145c:	0301                	.insn	2, 0x0301
    145e:	0900                	.insn	2, 0x0900
    1460:	0000                	.insn	2, 0x
    1462:	0301                	.insn	2, 0x0301
    1464:	0900                	.insn	2, 0x0900
    1466:	0000                	.insn	2, 0x
    1468:	0001                	.insn	2, 0x0001
    146a:	0402                	.insn	2, 0x0402
    146c:	0301                	.insn	2, 0x0301
    146e:	0900                	.insn	2, 0x0900
    1470:	000c                	.insn	2, 0x000c
    1472:	0001                	.insn	2, 0x0001
    1474:	0402                	.insn	2, 0x0402
    1476:	0301                	.insn	2, 0x0301
    1478:	0900                	.insn	2, 0x0900
    147a:	0000                	.insn	2, 0x
    147c:	0001                	.insn	2, 0x0001
    147e:	0402                	.insn	2, 0x0402
    1480:	0301                	.insn	2, 0x0301
    1482:	0900                	.insn	2, 0x0900
    1484:	0000                	.insn	2, 0x
    1486:	0001                	.insn	2, 0x0001
    1488:	0402                	.insn	2, 0x0402
    148a:	0305                	.insn	2, 0x0305
    148c:	0900                	.insn	2, 0x0900
    148e:	0000                	.insn	2, 0x
    1490:	0001                	.insn	2, 0x0001
    1492:	0402                	.insn	2, 0x0402
    1494:	09000307          	.insn	4, 0x09000307
    1498:	000c                	.insn	2, 0x000c
    149a:	0001                	.insn	2, 0x0001
    149c:	0402                	.insn	2, 0x0402
    149e:	09000307          	.insn	4, 0x09000307
    14a2:	0000                	.insn	2, 0x
    14a4:	0001                	.insn	2, 0x0001
    14a6:	0402                	.insn	2, 0x0402
    14a8:	09000307          	.insn	4, 0x09000307
    14ac:	0004                	.insn	2, 0x0004
    14ae:	0001                	.insn	2, 0x0001
    14b0:	0402                	.insn	2, 0x0402
    14b2:	09000307          	.insn	4, 0x09000307
    14b6:	0000                	.insn	2, 0x
    14b8:	0001                	.insn	2, 0x0001
    14ba:	0402                	.insn	2, 0x0402
    14bc:	0900031b          	.insn	4, 0x0900031b
    14c0:	0000                	.insn	2, 0x
    14c2:	0001                	.insn	2, 0x0001
    14c4:	0402                	.insn	2, 0x0402
    14c6:	0900031b          	.insn	4, 0x0900031b
    14ca:	0000                	.insn	2, 0x
    14cc:	0001                	.insn	2, 0x0001
    14ce:	0402                	.insn	2, 0x0402
    14d0:	0308                	.insn	2, 0x0308
    14d2:	0900                	.insn	2, 0x0900
    14d4:	0004                	.insn	2, 0x0004
    14d6:	0001                	.insn	2, 0x0001
    14d8:	0402                	.insn	2, 0x0402
    14da:	0308                	.insn	2, 0x0308
    14dc:	0900                	.insn	2, 0x0900
    14de:	0000                	.insn	2, 0x
    14e0:	0301                	.insn	2, 0x0301
    14e2:	0901                	.insn	2, 0x0901
    14e4:	0000                	.insn	2, 0x
    14e6:	0301                	.insn	2, 0x0301
    14e8:	0900                	.insn	2, 0x0900
    14ea:	0000                	.insn	2, 0x
    14ec:	0301                	.insn	2, 0x0301
    14ee:	0900                	.insn	2, 0x0900
    14f0:	0018                	.insn	2, 0x0018
    14f2:	0301                	.insn	2, 0x0301
    14f4:	0900                	.insn	2, 0x0900
    14f6:	0000                	.insn	2, 0x
    14f8:	0001                	.insn	2, 0x0001
    14fa:	0402                	.insn	2, 0x0402
    14fc:	0302                	.insn	2, 0x0302
    14fe:	097e                	.insn	2, 0x097e
    1500:	0020                	.insn	2, 0x0020
    1502:	0001                	.insn	2, 0x0001
    1504:	0402                	.insn	2, 0x0402
    1506:	030a                	.insn	2, 0x030a
    1508:	0900                	.insn	2, 0x0900
    150a:	0004                	.insn	2, 0x0004
    150c:	0001                	.insn	2, 0x0001
    150e:	0402                	.insn	2, 0x0402
    1510:	030d                	.insn	2, 0x030d
    1512:	0900                	.insn	2, 0x0900
    1514:	0000                	.insn	2, 0x
    1516:	0001                	.insn	2, 0x0001
    1518:	0402                	.insn	2, 0x0402
    151a:	030d                	.insn	2, 0x030d
    151c:	0900                	.insn	2, 0x0900
    151e:	0000                	.insn	2, 0x
    1520:	0001                	.insn	2, 0x0001
    1522:	0402                	.insn	2, 0x0402
    1524:	030d                	.insn	2, 0x030d
    1526:	0900                	.insn	2, 0x0900
    1528:	0000                	.insn	2, 0x
    152a:	0001                	.insn	2, 0x0001
    152c:	0402                	.insn	2, 0x0402
    152e:	030d                	.insn	2, 0x030d
    1530:	0900                	.insn	2, 0x0900
    1532:	0000                	.insn	2, 0x
    1534:	0001                	.insn	2, 0x0001
    1536:	0402                	.insn	2, 0x0402
    1538:	0900030f          	.insn	4, 0x0900030f
    153c:	0000                	.insn	2, 0x
    153e:	0001                	.insn	2, 0x0001
    1540:	0402                	.insn	2, 0x0402
    1542:	0315                	.insn	2, 0x0315
    1544:	0900                	.insn	2, 0x0900
    1546:	000c                	.insn	2, 0x000c
    1548:	0001                	.insn	2, 0x0001
    154a:	0402                	.insn	2, 0x0402
    154c:	0315                	.insn	2, 0x0315
    154e:	0900                	.insn	2, 0x0900
    1550:	0000                	.insn	2, 0x
    1552:	0001                	.insn	2, 0x0001
    1554:	0402                	.insn	2, 0x0402
    1556:	0315                	.insn	2, 0x0315
    1558:	0900                	.insn	2, 0x0900
    155a:	0000                	.insn	2, 0x
    155c:	0001                	.insn	2, 0x0001
    155e:	0402                	.insn	2, 0x0402
    1560:	0315                	.insn	2, 0x0315
    1562:	0900                	.insn	2, 0x0900
    1564:	0000                	.insn	2, 0x
    1566:	0001                	.insn	2, 0x0001
    1568:	0402                	.insn	2, 0x0402
    156a:	0319                	.insn	2, 0x0319
    156c:	0900                	.insn	2, 0x0900
    156e:	0000                	.insn	2, 0x
    1570:	0001                	.insn	2, 0x0001
    1572:	0402                	.insn	2, 0x0402
    1574:	0615                	.insn	2, 0x0615
    1576:	00090003          	lb	zero,0(s2)
    157a:	0100                	.insn	2, 0x0100
    157c:	0200                	.insn	2, 0x0200
    157e:	1b04                	.insn	2, 0x1b04
    1580:	04090003          	lb	zero,64(s2)
    1584:	0100                	.insn	2, 0x0100
    1586:	0200                	.insn	2, 0x0200
    1588:	1904                	.insn	2, 0x1904
    158a:	04090003          	lb	zero,64(s2)
    158e:	0100                	.insn	2, 0x0100
    1590:	0200                	.insn	2, 0x0200
    1592:	1b04                	.insn	2, 0x1b04
    1594:	0306                	.insn	2, 0x0306
    1596:	0900                	.insn	2, 0x0900
    1598:	0004                	.insn	2, 0x0004
    159a:	0001                	.insn	2, 0x0001
    159c:	0402                	.insn	2, 0x0402
    159e:	0900031b          	.insn	4, 0x0900031b
    15a2:	0000                	.insn	2, 0x
    15a4:	0001                	.insn	2, 0x0001
    15a6:	0402                	.insn	2, 0x0402
    15a8:	09000303          	lb	t1,144(zero) # 90 <COOLING_THRESHOLD_ON+0x36>
    15ac:	0008                	.insn	2, 0x0008
    15ae:	0601                	.insn	2, 0x0601
    15b0:	00090003          	lb	zero,0(s2)
    15b4:	0100                	.insn	2, 0x0100
    15b6:	0200                	.insn	2, 0x0200
    15b8:	1d04                	.insn	2, 0x1d04
    15ba:	04090003          	lb	zero,64(s2)
    15be:	0100                	.insn	2, 0x0100
    15c0:	0200                	.insn	2, 0x0200
    15c2:	0304                	.insn	2, 0x0304
    15c4:	04090003          	lb	zero,64(s2)
    15c8:	0100                	.insn	2, 0x0100
    15ca:	0200                	.insn	2, 0x0200
    15cc:	1e04                	.insn	2, 0x1e04
    15ce:	04090003          	lb	zero,64(s2)
    15d2:	0100                	.insn	2, 0x0100
    15d4:	08090003          	lb	zero,128(s2)
    15d8:	0100                	.insn	2, 0x0100
    15da:	0200                	.insn	2, 0x0200
    15dc:	0904                	.insn	2, 0x0904
    15de:	04090003          	lb	zero,64(s2)
    15e2:	0100                	.insn	2, 0x0100
    15e4:	0200                	.insn	2, 0x0200
    15e6:	0204                	.insn	2, 0x0204
    15e8:	0306                	.insn	2, 0x0306
    15ea:	0901                	.insn	2, 0x0901
    15ec:	0008                	.insn	2, 0x0008
    15ee:	0001                	.insn	2, 0x0001
    15f0:	0402                	.insn	2, 0x0402
    15f2:	030a                	.insn	2, 0x030a
    15f4:	0900                	.insn	2, 0x0900
    15f6:	0004                	.insn	2, 0x0004
    15f8:	0001                	.insn	2, 0x0001
    15fa:	0402                	.insn	2, 0x0402
    15fc:	030d                	.insn	2, 0x030d
    15fe:	0900                	.insn	2, 0x0900
    1600:	0000                	.insn	2, 0x
    1602:	0001                	.insn	2, 0x0001
    1604:	0402                	.insn	2, 0x0402
    1606:	030d                	.insn	2, 0x030d
    1608:	0900                	.insn	2, 0x0900
    160a:	0000                	.insn	2, 0x
    160c:	0001                	.insn	2, 0x0001
    160e:	0402                	.insn	2, 0x0402
    1610:	030d                	.insn	2, 0x030d
    1612:	0900                	.insn	2, 0x0900
    1614:	0000                	.insn	2, 0x
    1616:	0001                	.insn	2, 0x0001
    1618:	0402                	.insn	2, 0x0402
    161a:	030d                	.insn	2, 0x030d
    161c:	0900                	.insn	2, 0x0900
    161e:	0000                	.insn	2, 0x
    1620:	0001                	.insn	2, 0x0001
    1622:	0402                	.insn	2, 0x0402
    1624:	0900030f          	.insn	4, 0x0900030f
    1628:	0000                	.insn	2, 0x
    162a:	0001                	.insn	2, 0x0001
    162c:	0402                	.insn	2, 0x0402
    162e:	0315                	.insn	2, 0x0315
    1630:	0900                	.insn	2, 0x0900
    1632:	000c                	.insn	2, 0x000c
    1634:	0001                	.insn	2, 0x0001
    1636:	0402                	.insn	2, 0x0402
    1638:	0315                	.insn	2, 0x0315
    163a:	0900                	.insn	2, 0x0900
    163c:	0000                	.insn	2, 0x
    163e:	0001                	.insn	2, 0x0001
    1640:	0402                	.insn	2, 0x0402
    1642:	0315                	.insn	2, 0x0315
    1644:	0900                	.insn	2, 0x0900
    1646:	0000                	.insn	2, 0x
    1648:	0001                	.insn	2, 0x0001
    164a:	0402                	.insn	2, 0x0402
    164c:	0315                	.insn	2, 0x0315
    164e:	0900                	.insn	2, 0x0900
    1650:	0000                	.insn	2, 0x
    1652:	0001                	.insn	2, 0x0001
    1654:	0402                	.insn	2, 0x0402
    1656:	0319                	.insn	2, 0x0319
    1658:	0900                	.insn	2, 0x0900
    165a:	0000                	.insn	2, 0x
    165c:	0001                	.insn	2, 0x0001
    165e:	0402                	.insn	2, 0x0402
    1660:	0615                	.insn	2, 0x0615
    1662:	00090003          	lb	zero,0(s2)
    1666:	0100                	.insn	2, 0x0100
    1668:	0200                	.insn	2, 0x0200
    166a:	1904                	.insn	2, 0x1904
    166c:	04090003          	lb	zero,64(s2)
    1670:	0100                	.insn	2, 0x0100
    1672:	0200                	.insn	2, 0x0200
    1674:	1b04                	.insn	2, 0x1b04
    1676:	0306                	.insn	2, 0x0306
    1678:	0900                	.insn	2, 0x0900
    167a:	0004                	.insn	2, 0x0004
    167c:	0001                	.insn	2, 0x0001
    167e:	0402                	.insn	2, 0x0402
    1680:	0900031b          	.insn	4, 0x0900031b
    1684:	0000                	.insn	2, 0x
    1686:	0001                	.insn	2, 0x0001
    1688:	0402                	.insn	2, 0x0402
    168a:	09000303          	lb	t1,144(zero) # 90 <COOLING_THRESHOLD_ON+0x36>
    168e:	000c                	.insn	2, 0x000c
    1690:	0601                	.insn	2, 0x0601
    1692:	00090003          	lb	zero,0(s2)
    1696:	0100                	.insn	2, 0x0100
    1698:	0200                	.insn	2, 0x0200
    169a:	1d04                	.insn	2, 0x1d04
    169c:	04090003          	lb	zero,64(s2)
    16a0:	0100                	.insn	2, 0x0100
    16a2:	0200                	.insn	2, 0x0200
    16a4:	0304                	.insn	2, 0x0304
    16a6:	04090003          	lb	zero,64(s2)
    16aa:	0100                	.insn	2, 0x0100
    16ac:	0200                	.insn	2, 0x0200
    16ae:	1e04                	.insn	2, 0x1e04
    16b0:	04090003          	lb	zero,64(s2)
    16b4:	0100                	.insn	2, 0x0100
    16b6:	08090003          	lb	zero,128(s2)
    16ba:	0100                	.insn	2, 0x0100
    16bc:	0200                	.insn	2, 0x0200
    16be:	0904                	.insn	2, 0x0904
    16c0:	04090003          	lb	zero,64(s2)
    16c4:	0100                	.insn	2, 0x0100
    16c6:	0200                	.insn	2, 0x0200
    16c8:	0204                	.insn	2, 0x0204
    16ca:	0306                	.insn	2, 0x0306
    16cc:	0901                	.insn	2, 0x0901
    16ce:	0008                	.insn	2, 0x0008
    16d0:	0001                	.insn	2, 0x0001
    16d2:	0402                	.insn	2, 0x0402
    16d4:	0302                	.insn	2, 0x0302
    16d6:	0900                	.insn	2, 0x0900
    16d8:	0000                	.insn	2, 0x
    16da:	0001                	.insn	2, 0x0001
    16dc:	0402                	.insn	2, 0x0402
    16de:	0302                	.insn	2, 0x0302
    16e0:	0900                	.insn	2, 0x0900
    16e2:	0000                	.insn	2, 0x
    16e4:	0001                	.insn	2, 0x0001
    16e6:	0402                	.insn	2, 0x0402
    16e8:	0302                	.insn	2, 0x0302
    16ea:	0900                	.insn	2, 0x0900
    16ec:	0000                	.insn	2, 0x
    16ee:	0001                	.insn	2, 0x0001
    16f0:	0402                	.insn	2, 0x0402
    16f2:	0302                	.insn	2, 0x0302
    16f4:	0900                	.insn	2, 0x0900
    16f6:	0000                	.insn	2, 0x
    16f8:	0001                	.insn	2, 0x0001
    16fa:	0402                	.insn	2, 0x0402
    16fc:	0302                	.insn	2, 0x0302
    16fe:	0900                	.insn	2, 0x0900
    1700:	0000                	.insn	2, 0x
    1702:	0001                	.insn	2, 0x0001
    1704:	0402                	.insn	2, 0x0402
    1706:	0302                	.insn	2, 0x0302
    1708:	0900                	.insn	2, 0x0900
    170a:	0000                	.insn	2, 0x
    170c:	0001                	.insn	2, 0x0001
    170e:	0402                	.insn	2, 0x0402
    1710:	0302                	.insn	2, 0x0302
    1712:	0900                	.insn	2, 0x0900
    1714:	0000                	.insn	2, 0x
    1716:	0001                	.insn	2, 0x0001
    1718:	0402                	.insn	2, 0x0402
    171a:	0302                	.insn	2, 0x0302
    171c:	0900                	.insn	2, 0x0900
    171e:	0004                	.insn	2, 0x0004
    1720:	0001                	.insn	2, 0x0001
    1722:	0402                	.insn	2, 0x0402
    1724:	030a                	.insn	2, 0x030a
    1726:	0900                	.insn	2, 0x0900
    1728:	0004                	.insn	2, 0x0004
    172a:	0001                	.insn	2, 0x0001
    172c:	0402                	.insn	2, 0x0402
    172e:	030a                	.insn	2, 0x030a
    1730:	0900                	.insn	2, 0x0900
    1732:	0004                	.insn	2, 0x0004
    1734:	0001                	.insn	2, 0x0001
    1736:	0402                	.insn	2, 0x0402
    1738:	030a                	.insn	2, 0x030a
    173a:	0900                	.insn	2, 0x0900
    173c:	0000                	.insn	2, 0x
    173e:	0001                	.insn	2, 0x0001
    1740:	0402                	.insn	2, 0x0402
    1742:	030d                	.insn	2, 0x030d
    1744:	0900                	.insn	2, 0x0900
    1746:	0004                	.insn	2, 0x0004
    1748:	0001                	.insn	2, 0x0001
    174a:	0402                	.insn	2, 0x0402
    174c:	030d                	.insn	2, 0x030d
    174e:	0900                	.insn	2, 0x0900
    1750:	0000                	.insn	2, 0x
    1752:	0001                	.insn	2, 0x0001
    1754:	0402                	.insn	2, 0x0402
    1756:	030d                	.insn	2, 0x030d
    1758:	0900                	.insn	2, 0x0900
    175a:	0000                	.insn	2, 0x
    175c:	0001                	.insn	2, 0x0001
    175e:	0402                	.insn	2, 0x0402
    1760:	030d                	.insn	2, 0x030d
    1762:	0900                	.insn	2, 0x0900
    1764:	0000                	.insn	2, 0x
    1766:	0001                	.insn	2, 0x0001
    1768:	0402                	.insn	2, 0x0402
    176a:	030d                	.insn	2, 0x030d
    176c:	0900                	.insn	2, 0x0900
    176e:	0004                	.insn	2, 0x0004
    1770:	0001                	.insn	2, 0x0001
    1772:	0402                	.insn	2, 0x0402
    1774:	030d                	.insn	2, 0x030d
    1776:	0900                	.insn	2, 0x0900
    1778:	001c                	.insn	2, 0x001c
    177a:	0001                	.insn	2, 0x0001
    177c:	0402                	.insn	2, 0x0402
    177e:	030d                	.insn	2, 0x030d
    1780:	0900                	.insn	2, 0x0900
    1782:	0000                	.insn	2, 0x
    1784:	0001                	.insn	2, 0x0001
    1786:	0402                	.insn	2, 0x0402
    1788:	030d                	.insn	2, 0x030d
    178a:	0900                	.insn	2, 0x0900
    178c:	0008                	.insn	2, 0x0008
    178e:	0001                	.insn	2, 0x0001
    1790:	0402                	.insn	2, 0x0402
    1792:	030d                	.insn	2, 0x030d
    1794:	0900                	.insn	2, 0x0900
    1796:	0010                	.insn	2, 0x0010
    1798:	0001                	.insn	2, 0x0001
    179a:	0402                	.insn	2, 0x0402
    179c:	030d                	.insn	2, 0x030d
    179e:	0900                	.insn	2, 0x0900
    17a0:	001c                	.insn	2, 0x001c
    17a2:	0001                	.insn	2, 0x0001
    17a4:	0402                	.insn	2, 0x0402
    17a6:	030e                	.insn	2, 0x030e
    17a8:	0900                	.insn	2, 0x0900
    17aa:	0008                	.insn	2, 0x0008
    17ac:	0001                	.insn	2, 0x0001
    17ae:	0402                	.insn	2, 0x0402
    17b0:	030e                	.insn	2, 0x030e
    17b2:	0900                	.insn	2, 0x0900
    17b4:	0008                	.insn	2, 0x0008
    17b6:	0001                	.insn	2, 0x0001
    17b8:	0402                	.insn	2, 0x0402
    17ba:	0310                	.insn	2, 0x0310
    17bc:	0900                	.insn	2, 0x0900
    17be:	0004                	.insn	2, 0x0004
    17c0:	0001                	.insn	2, 0x0001
    17c2:	0402                	.insn	2, 0x0402
    17c4:	0312                	.insn	2, 0x0312
    17c6:	0900                	.insn	2, 0x0900
    17c8:	0004                	.insn	2, 0x0004
    17ca:	0001                	.insn	2, 0x0001
    17cc:	0402                	.insn	2, 0x0402
    17ce:	0314                	.insn	2, 0x0314
    17d0:	0900                	.insn	2, 0x0900
    17d2:	0008                	.insn	2, 0x0008
    17d4:	0001                	.insn	2, 0x0001
    17d6:	0402                	.insn	2, 0x0402
    17d8:	0314                	.insn	2, 0x0314
    17da:	0900                	.insn	2, 0x0900
    17dc:	0004                	.insn	2, 0x0004
    17de:	0001                	.insn	2, 0x0001
    17e0:	0402                	.insn	2, 0x0402
    17e2:	0314                	.insn	2, 0x0314
    17e4:	0900                	.insn	2, 0x0900
    17e6:	0000                	.insn	2, 0x
    17e8:	0001                	.insn	2, 0x0001
    17ea:	0402                	.insn	2, 0x0402
    17ec:	0314                	.insn	2, 0x0314
    17ee:	0900                	.insn	2, 0x0900
    17f0:	0018                	.insn	2, 0x0018
    17f2:	0001                	.insn	2, 0x0001
    17f4:	0402                	.insn	2, 0x0402
    17f6:	0314                	.insn	2, 0x0314
    17f8:	0900                	.insn	2, 0x0900
    17fa:	0010                	.insn	2, 0x0010
    17fc:	0001                	.insn	2, 0x0001
    17fe:	0402                	.insn	2, 0x0402
    1800:	0314                	.insn	2, 0x0314
    1802:	0900                	.insn	2, 0x0900
    1804:	0014                	.insn	2, 0x0014
    1806:	0001                	.insn	2, 0x0001
    1808:	0402                	.insn	2, 0x0402
    180a:	0315                	.insn	2, 0x0315
    180c:	0900                	.insn	2, 0x0900
    180e:	0008                	.insn	2, 0x0008
    1810:	0001                	.insn	2, 0x0001
    1812:	0402                	.insn	2, 0x0402
    1814:	0315                	.insn	2, 0x0315
    1816:	0900                	.insn	2, 0x0900
    1818:	0010                	.insn	2, 0x0010
    181a:	0001                	.insn	2, 0x0001
    181c:	0402                	.insn	2, 0x0402
    181e:	09000317          	auipc	t1,0x9000
    1822:	0004                	.insn	2, 0x0004
    1824:	0001                	.insn	2, 0x0001
    1826:	0402                	.insn	2, 0x0402
    1828:	0319                	.insn	2, 0x0319
    182a:	0900                	.insn	2, 0x0900
    182c:	0004                	.insn	2, 0x0004
    182e:	0001                	.insn	2, 0x0001
    1830:	0402                	.insn	2, 0x0402
    1832:	0900031b          	.insn	4, 0x0900031b
    1836:	0008                	.insn	2, 0x0008
    1838:	0001                	.insn	2, 0x0001
    183a:	0402                	.insn	2, 0x0402
    183c:	0900031b          	.insn	4, 0x0900031b
    1840:	0000                	.insn	2, 0x
    1842:	0001                	.insn	2, 0x0001
    1844:	0402                	.insn	2, 0x0402
    1846:	0900031b          	.insn	4, 0x0900031b
    184a:	0000                	.insn	2, 0x
    184c:	0001                	.insn	2, 0x0001
    184e:	0402                	.insn	2, 0x0402
    1850:	0900031b          	.insn	4, 0x0900031b
    1854:	0000                	.insn	2, 0x
    1856:	0001                	.insn	2, 0x0001
    1858:	0402                	.insn	2, 0x0402
    185a:	0900031b          	.insn	4, 0x0900031b
    185e:	0000                	.insn	2, 0x
    1860:	0001                	.insn	2, 0x0001
    1862:	0402                	.insn	2, 0x0402
    1864:	0900031b          	.insn	4, 0x0900031b
    1868:	0014                	.insn	2, 0x0014
    186a:	0001                	.insn	2, 0x0001
    186c:	0402                	.insn	2, 0x0402
    186e:	0900031b          	.insn	4, 0x0900031b
    1872:	0000                	.insn	2, 0x
    1874:	0001                	.insn	2, 0x0001
    1876:	0402                	.insn	2, 0x0402
    1878:	09000323          	sb	a6,134(zero) # 86 <COOLING_THRESHOLD_ON+0x2c>
    187c:	0000                	.insn	2, 0x
    187e:	0301                	.insn	2, 0x0301
    1880:	0901                	.insn	2, 0x0901
    1882:	0000                	.insn	2, 0x
    1884:	0301                	.insn	2, 0x0301
    1886:	0900                	.insn	2, 0x0900
    1888:	0000                	.insn	2, 0x
    188a:	0301                	.insn	2, 0x0301
    188c:	0900                	.insn	2, 0x0900
    188e:	0000                	.insn	2, 0x
    1890:	0001                	.insn	2, 0x0001
    1892:	0402                	.insn	2, 0x0402
    1894:	0302                	.insn	2, 0x0302
    1896:	0900                	.insn	2, 0x0900
    1898:	0000                	.insn	2, 0x
    189a:	0001                	.insn	2, 0x0001
    189c:	0402                	.insn	2, 0x0402
    189e:	0302                	.insn	2, 0x0302
    18a0:	0900                	.insn	2, 0x0900
    18a2:	0004                	.insn	2, 0x0004
    18a4:	0001                	.insn	2, 0x0001
    18a6:	0402                	.insn	2, 0x0402
    18a8:	0306                	.insn	2, 0x0306
    18aa:	0900                	.insn	2, 0x0900
    18ac:	0004                	.insn	2, 0x0004
    18ae:	0001                	.insn	2, 0x0001
    18b0:	0402                	.insn	2, 0x0402
    18b2:	0306                	.insn	2, 0x0306
    18b4:	0900                	.insn	2, 0x0900
    18b6:	0000                	.insn	2, 0x
    18b8:	0001                	.insn	2, 0x0001
    18ba:	0402                	.insn	2, 0x0402
    18bc:	0308                	.insn	2, 0x0308
    18be:	0900                	.insn	2, 0x0900
    18c0:	0008                	.insn	2, 0x0008
    18c2:	0001                	.insn	2, 0x0001
    18c4:	0402                	.insn	2, 0x0402
    18c6:	0308                	.insn	2, 0x0308
    18c8:	0900                	.insn	2, 0x0900
    18ca:	0000                	.insn	2, 0x
    18cc:	0301                	.insn	2, 0x0301
    18ce:	0900                	.insn	2, 0x0900
    18d0:	0000                	.insn	2, 0x
    18d2:	0301                	.insn	2, 0x0301
    18d4:	0900                	.insn	2, 0x0900
    18d6:	0000                	.insn	2, 0x
    18d8:	0001                	.insn	2, 0x0001
    18da:	0402                	.insn	2, 0x0402
    18dc:	030a                	.insn	2, 0x030a
    18de:	0900                	.insn	2, 0x0900
    18e0:	000c                	.insn	2, 0x000c
    18e2:	0001                	.insn	2, 0x0001
    18e4:	0402                	.insn	2, 0x0402
    18e6:	0309                	.insn	2, 0x0309
    18e8:	0900                	.insn	2, 0x0900
    18ea:	0004                	.insn	2, 0x0004
    18ec:	0001                	.insn	2, 0x0001
    18ee:	0402                	.insn	2, 0x0402
    18f0:	0309                	.insn	2, 0x0309
    18f2:	0900                	.insn	2, 0x0900
    18f4:	0000                	.insn	2, 0x
    18f6:	0001                	.insn	2, 0x0001
    18f8:	0402                	.insn	2, 0x0402
    18fa:	0318                	.insn	2, 0x0318
    18fc:	0900                	.insn	2, 0x0900
    18fe:	0008                	.insn	2, 0x0008
    1900:	0001                	.insn	2, 0x0001
    1902:	0402                	.insn	2, 0x0402
    1904:	0318                	.insn	2, 0x0318
    1906:	0900                	.insn	2, 0x0900
    1908:	000c                	.insn	2, 0x000c
    190a:	0001                	.insn	2, 0x0001
    190c:	0402                	.insn	2, 0x0402
    190e:	031a                	.insn	2, 0x031a
    1910:	0900                	.insn	2, 0x0900
    1912:	0004                	.insn	2, 0x0004
    1914:	0001                	.insn	2, 0x0001
    1916:	0402                	.insn	2, 0x0402
    1918:	031a                	.insn	2, 0x031a
    191a:	0900                	.insn	2, 0x0900
    191c:	0000                	.insn	2, 0x
    191e:	0001                	.insn	2, 0x0001
    1920:	0402                	.insn	2, 0x0402
    1922:	0900036f          	jal	t1,19b2 <COOLING_THRESHOLD_ON+0x1958>
    1926:	000c                	.insn	2, 0x000c
    1928:	0001                	.insn	2, 0x0001
    192a:	0402                	.insn	2, 0x0402
    192c:	0900036f          	jal	t1,19bc <COOLING_THRESHOLD_ON+0x1962>
    1930:	0000                	.insn	2, 0x
    1932:	0001                	.insn	2, 0x0001
    1934:	0402                	.insn	2, 0x0402
    1936:	0900036f          	jal	t1,19c6 <COOLING_THRESHOLD_ON+0x196c>
    193a:	0000                	.insn	2, 0x
    193c:	0001                	.insn	2, 0x0001
    193e:	0402                	.insn	2, 0x0402
    1940:	0900036f          	jal	t1,19d0 <COOLING_THRESHOLD_ON+0x1976>
    1944:	0000                	.insn	2, 0x
    1946:	0001                	.insn	2, 0x0001
    1948:	0402                	.insn	2, 0x0402
    194a:	0900036f          	jal	t1,19da <COOLING_THRESHOLD_ON+0x1980>
    194e:	0000                	.insn	2, 0x
    1950:	0001                	.insn	2, 0x0001
    1952:	0402                	.insn	2, 0x0402
    1954:	0900036f          	jal	t1,19e4 <COOLING_THRESHOLD_ON+0x198a>
    1958:	0000                	.insn	2, 0x
    195a:	0501                	.insn	2, 0x0501
    195c:	0601                	.insn	2, 0x0601
    195e:	00090403          	lb	s0,0(s2)
    1962:	0100                	.insn	2, 0x0100
    1964:	0305                	.insn	2, 0x0305
    1966:	0200                	.insn	2, 0x0200
    1968:	6f04                	.insn	2, 0x6f04
    196a:	08097c03          	.insn	4, 0x08097c03
    196e:	0100                	.insn	2, 0x0100
    1970:	0200                	.insn	2, 0x0200
    1972:	6f04                	.insn	2, 0x6f04
    1974:	0306                	.insn	2, 0x0306
    1976:	0900                	.insn	2, 0x0900
    1978:	0014                	.insn	2, 0x0014
    197a:	0001                	.insn	2, 0x0001
    197c:	0402                	.insn	2, 0x0402
    197e:	0900036f          	jal	t1,1a0e <COOLING_THRESHOLD_ON+0x19b4>
    1982:	0000                	.insn	2, 0x
    1984:	0001                	.insn	2, 0x0001
    1986:	0402                	.insn	2, 0x0402
    1988:	0900036f          	jal	t1,1a18 <COOLING_THRESHOLD_ON+0x19be>
    198c:	0000                	.insn	2, 0x
    198e:	0301                	.insn	2, 0x0301
    1990:	0901                	.insn	2, 0x0901
    1992:	0000                	.insn	2, 0x
    1994:	0301                	.insn	2, 0x0301
    1996:	0900                	.insn	2, 0x0900
    1998:	0000                	.insn	2, 0x
    199a:	0301                	.insn	2, 0x0301
    199c:	0900                	.insn	2, 0x0900
    199e:	0000                	.insn	2, 0x
    19a0:	0301                	.insn	2, 0x0301
    19a2:	0902                	.insn	2, 0x0902
    19a4:	0000                	.insn	2, 0x
    19a6:	0501                	.insn	2, 0x0501
    19a8:	0601                	.insn	2, 0x0601
    19aa:	00090103          	lb	sp,0(s2)
    19ae:	0100                	.insn	2, 0x0100
    19b0:	0305                	.insn	2, 0x0305
    19b2:	0200                	.insn	2, 0x0200
    19b4:	0b04                	.insn	2, 0x0b04
    19b6:	0306                	.insn	2, 0x0306
    19b8:	002c097b          	.insn	4, 0x002c097b
    19bc:	0001                	.insn	2, 0x0001
    19be:	0402                	.insn	2, 0x0402
    19c0:	0900030b          	.insn	4, 0x0900030b
    19c4:	0004                	.insn	2, 0x0004
    19c6:	0601                	.insn	2, 0x0601
    19c8:	08097e03          	.insn	4, 0x08097e03
    19cc:	0100                	.insn	2, 0x0100
    19ce:	0200                	.insn	2, 0x0200
    19d0:	0804                	.insn	2, 0x0804
    19d2:	0306                	.insn	2, 0x0306
    19d4:	0902                	.insn	2, 0x0902
    19d6:	0004                	.insn	2, 0x0004
    19d8:	0001                	.insn	2, 0x0001
    19da:	0402                	.insn	2, 0x0402
    19dc:	0308                	.insn	2, 0x0308
    19de:	0900                	.insn	2, 0x0900
    19e0:	0000                	.insn	2, 0x
    19e2:	0001                	.insn	2, 0x0001
    19e4:	0402                	.insn	2, 0x0402
    19e6:	0308                	.insn	2, 0x0308
    19e8:	0900                	.insn	2, 0x0900
    19ea:	0000                	.insn	2, 0x
    19ec:	0001                	.insn	2, 0x0001
    19ee:	0402                	.insn	2, 0x0402
    19f0:	0308                	.insn	2, 0x0308
    19f2:	0900                	.insn	2, 0x0900
    19f4:	0000                	.insn	2, 0x
    19f6:	0001                	.insn	2, 0x0001
    19f8:	0402                	.insn	2, 0x0402
    19fa:	09000323          	sb	a6,134(zero) # 86 <COOLING_THRESHOLD_ON+0x2c>
    19fe:	0008                	.insn	2, 0x0008
    1a00:	0301                	.insn	2, 0x0301
    1a02:	0901                	.insn	2, 0x0901
    1a04:	0000                	.insn	2, 0x
    1a06:	0301                	.insn	2, 0x0301
    1a08:	0900                	.insn	2, 0x0900
    1a0a:	0000                	.insn	2, 0x
    1a0c:	0301                	.insn	2, 0x0301
    1a0e:	0900                	.insn	2, 0x0900
    1a10:	0000                	.insn	2, 0x
    1a12:	0001                	.insn	2, 0x0001
    1a14:	0402                	.insn	2, 0x0402
    1a16:	0604                	.insn	2, 0x0604
    1a18:	18090003          	lb	zero,384(s2)
    1a1c:	0100                	.insn	2, 0x0100
    1a1e:	0c097e03          	.insn	4, 0x0c097e03
    1a22:	0100                	.insn	2, 0x0100
    1a24:	0200                	.insn	2, 0x0200
    1a26:	0504                	.insn	2, 0x0504
    1a28:	0306                	.insn	2, 0x0306
    1a2a:	0901                	.insn	2, 0x0901
    1a2c:	0004                	.insn	2, 0x0004
    1a2e:	0001                	.insn	2, 0x0001
    1a30:	0402                	.insn	2, 0x0402
    1a32:	0305                	.insn	2, 0x0305
    1a34:	0900                	.insn	2, 0x0900
    1a36:	0000                	.insn	2, 0x
    1a38:	0001                	.insn	2, 0x0001
    1a3a:	0402                	.insn	2, 0x0402
    1a3c:	0305                	.insn	2, 0x0305
    1a3e:	0900                	.insn	2, 0x0900
    1a40:	0000                	.insn	2, 0x
    1a42:	0001                	.insn	2, 0x0001
    1a44:	0402                	.insn	2, 0x0402
    1a46:	0305                	.insn	2, 0x0305
    1a48:	0900                	.insn	2, 0x0900
    1a4a:	0000                	.insn	2, 0x
    1a4c:	0601                	.insn	2, 0x0601
    1a4e:	00090003          	lb	zero,0(s2)
    1a52:	0100                	.insn	2, 0x0100
    1a54:	0200                	.insn	2, 0x0200
    1a56:	0704                	.insn	2, 0x0704
    1a58:	0306                	.insn	2, 0x0306
    1a5a:	0901                	.insn	2, 0x0901
    1a5c:	0014                	.insn	2, 0x0014
    1a5e:	0001                	.insn	2, 0x0001
    1a60:	0402                	.insn	2, 0x0402
    1a62:	09000307          	.insn	4, 0x09000307
    1a66:	0000                	.insn	2, 0x
    1a68:	0001                	.insn	2, 0x0001
    1a6a:	0402                	.insn	2, 0x0402
    1a6c:	0900033b          	.insn	4, 0x0900033b
    1a70:	0000                	.insn	2, 0x
    1a72:	0001                	.insn	2, 0x0001
    1a74:	0402                	.insn	2, 0x0402
    1a76:	0900033b          	.insn	4, 0x0900033b
    1a7a:	0008                	.insn	2, 0x0008
    1a7c:	0001                	.insn	2, 0x0001
    1a7e:	0402                	.insn	2, 0x0402
    1a80:	033c                	.insn	2, 0x033c
    1a82:	0900                	.insn	2, 0x0900
    1a84:	0008                	.insn	2, 0x0008
    1a86:	0001                	.insn	2, 0x0001
    1a88:	0402                	.insn	2, 0x0402
    1a8a:	0641                	.insn	2, 0x0641
    1a8c:	00090003          	lb	zero,0(s2)
    1a90:	0100                	.insn	2, 0x0100
    1a92:	0200                	.insn	2, 0x0200
    1a94:	3c04                	.insn	2, 0x3c04
    1a96:	04090003          	lb	zero,64(s2)
    1a9a:	0100                	.insn	2, 0x0100
    1a9c:	0200                	.insn	2, 0x0200
    1a9e:	4104                	.insn	2, 0x4104
    1aa0:	04090003          	lb	zero,64(s2)
    1aa4:	0100                	.insn	2, 0x0100
    1aa6:	0200                	.insn	2, 0x0200
    1aa8:	4304                	.insn	2, 0x4304
    1aaa:	08090003          	lb	zero,128(s2)
    1aae:	0100                	.insn	2, 0x0100
    1ab0:	0200                	.insn	2, 0x0200
    1ab2:	4304                	.insn	2, 0x4304
    1ab4:	0306                	.insn	2, 0x0306
    1ab6:	0900                	.insn	2, 0x0900
    1ab8:	0004                	.insn	2, 0x0004
    1aba:	0001                	.insn	2, 0x0001
    1abc:	0402                	.insn	2, 0x0402
    1abe:	09000343          	.insn	4, 0x09000343
    1ac2:	0000                	.insn	2, 0x
    1ac4:	0001                	.insn	2, 0x0001
    1ac6:	0402                	.insn	2, 0x0402
    1ac8:	0344                	.insn	2, 0x0344
    1aca:	0900                	.insn	2, 0x0900
    1acc:	0008                	.insn	2, 0x0008
    1ace:	0001                	.insn	2, 0x0001
    1ad0:	0402                	.insn	2, 0x0402
    1ad2:	0344                	.insn	2, 0x0344
    1ad4:	0900                	.insn	2, 0x0900
    1ad6:	0000                	.insn	2, 0x
    1ad8:	0301                	.insn	2, 0x0301
    1ada:	0900                	.insn	2, 0x0900
    1adc:	0000                	.insn	2, 0x
    1ade:	0301                	.insn	2, 0x0301
    1ae0:	0900                	.insn	2, 0x0900
    1ae2:	0000                	.insn	2, 0x
    1ae4:	0001                	.insn	2, 0x0001
    1ae6:	0402                	.insn	2, 0x0402
    1ae8:	0346                	.insn	2, 0x0346
    1aea:	0900                	.insn	2, 0x0900
    1aec:	000c                	.insn	2, 0x000c
    1aee:	0001                	.insn	2, 0x0001
    1af0:	0402                	.insn	2, 0x0402
    1af2:	0345                	.insn	2, 0x0345
    1af4:	0900                	.insn	2, 0x0900
    1af6:	0004                	.insn	2, 0x0004
    1af8:	0001                	.insn	2, 0x0001
    1afa:	0402                	.insn	2, 0x0402
    1afc:	0345                	.insn	2, 0x0345
    1afe:	0900                	.insn	2, 0x0900
    1b00:	0000                	.insn	2, 0x
    1b02:	0001                	.insn	2, 0x0001
    1b04:	0402                	.insn	2, 0x0402
    1b06:	0655                	.insn	2, 0x0655
    1b08:	04090003          	lb	zero,64(s2)
    1b0c:	0100                	.insn	2, 0x0100
    1b0e:	0200                	.insn	2, 0x0200
    1b10:	4504                	.insn	2, 0x4504
    1b12:	04090003          	lb	zero,64(s2)
    1b16:	0100                	.insn	2, 0x0100
    1b18:	0200                	.insn	2, 0x0200
    1b1a:	5404                	.insn	2, 0x5404
    1b1c:	04090003          	lb	zero,64(s2)
    1b20:	0100                	.insn	2, 0x0100
    1b22:	0c090003          	lb	zero,192(s2)
    1b26:	0100                	.insn	2, 0x0100
    1b28:	0200                	.insn	2, 0x0200
    1b2a:	3d04                	.insn	2, 0x3d04
    1b2c:	14090003          	lb	zero,320(s2)
    1b30:	0100                	.insn	2, 0x0100
    1b32:	0809                	.insn	2, 0x0809
    1b34:	0000                	.insn	2, 0x
    1b36:	0101                	.insn	2, 0x0101
    1b38:	0000031b          	.insn	4, 0x031b
    1b3c:	0005                	.insn	2, 0x0005
    1b3e:	0004                	.insn	2, 0x0004
    1b40:	0038                	.insn	2, 0x0038
    1b42:	0000                	.insn	2, 0x
    1b44:	0101                	.insn	2, 0x0101
    1b46:	fb01                	.insn	2, 0xfb01
    1b48:	0d0e                	.insn	2, 0x0d0e
    1b4a:	0100                	.insn	2, 0x0100
    1b4c:	0101                	.insn	2, 0x0101
    1b4e:	0001                	.insn	2, 0x0001
    1b50:	0000                	.insn	2, 0x
    1b52:	0001                	.insn	2, 0x0001
    1b54:	0100                	.insn	2, 0x0100
    1b56:	0101                	.insn	2, 0x0101
    1b58:	021f 0000 0000      	.insn	6, 0x021f
    1b5e:	00f6                	.insn	2, 0x00f6
    1b60:	0000                	.insn	2, 0x
    1b62:	0102                	.insn	2, 0x0102
    1b64:	021f 040f 0151      	.insn	6, 0x0151040f021f
    1b6a:	0000                	.insn	2, 0x
    1b6c:	5101                	.insn	2, 0x5101
    1b6e:	0001                	.insn	2, 0x0001
    1b70:	0100                	.insn	2, 0x0100
    1b72:	015f 0000 1f01      	.insn	6, 0x1f010000015f
    1b78:	0001                	.insn	2, 0x0001
    1b7a:	0100                	.insn	2, 0x0100
    1b7c:	0105                	.insn	2, 0x0105
    1b7e:	0500                	.insn	2, 0x0500
    1b80:	f402                	.insn	2, 0xf402
    1b82:	0039                	.insn	2, 0x0039
    1b84:	0380                	.insn	2, 0x0380
    1b86:	0121                	.insn	2, 0x0121
    1b88:	0305                	.insn	2, 0x0305
    1b8a:	00090103          	lb	sp,0(s2)
    1b8e:	0100                	.insn	2, 0x0100
    1b90:	00090003          	lb	zero,0(s2)
    1b94:	0100                	.insn	2, 0x0100
    1b96:	0d05                	.insn	2, 0x0d05
    1b98:	00090003          	lb	zero,0(s2)
    1b9c:	0100                	.insn	2, 0x0100
    1b9e:	0305                	.insn	2, 0x0305
    1ba0:	00090103          	lb	sp,0(s2)
    1ba4:	0100                	.insn	2, 0x0100
    1ba6:	00090003          	lb	zero,0(s2)
    1baa:	0100                	.insn	2, 0x0100
    1bac:	00090003          	lb	zero,0(s2)
    1bb0:	0100                	.insn	2, 0x0100
    1bb2:	00090003          	lb	zero,0(s2)
    1bb6:	0100                	.insn	2, 0x0100
    1bb8:	00090103          	lb	sp,0(s2)
    1bbc:	0100                	.insn	2, 0x0100
    1bbe:	00090203          	lb	tp,0(s2)
    1bc2:	0100                	.insn	2, 0x0100
    1bc4:	00090103          	lb	sp,0(s2)
    1bc8:	0100                	.insn	2, 0x0100
    1bca:	00090003          	lb	zero,0(s2)
    1bce:	0100                	.insn	2, 0x0100
    1bd0:	0105                	.insn	2, 0x0105
    1bd2:	0306                	.insn	2, 0x0306
    1bd4:	097a                	.insn	2, 0x097a
    1bd6:	0000                	.insn	2, 0x
    1bd8:	0301                	.insn	2, 0x0301
    1bda:	0900                	.insn	2, 0x0900
    1bdc:	000c                	.insn	2, 0x000c
    1bde:	0501                	.insn	2, 0x0501
    1be0:	04020003          	lb	zero,64(tp) # 14d8 <COOLING_THRESHOLD_ON+0x147e>
    1be4:	0302                	.insn	2, 0x0302
    1be6:	0906                	.insn	2, 0x0906
    1be8:	0004                	.insn	2, 0x0004
    1bea:	0301                	.insn	2, 0x0301
    1bec:	0900                	.insn	2, 0x0900
    1bee:	0004                	.insn	2, 0x0004
    1bf0:	0001                	.insn	2, 0x0001
    1bf2:	0402                	.insn	2, 0x0402
    1bf4:	0601                	.insn	2, 0x0601
    1bf6:	04090003          	lb	zero,64(s2)
    1bfa:	0100                	.insn	2, 0x0100
    1bfc:	0200                	.insn	2, 0x0200
    1bfe:	0104                	.insn	2, 0x0104
    1c00:	00090003          	lb	zero,0(s2)
    1c04:	0100                	.insn	2, 0x0100
    1c06:	0200                	.insn	2, 0x0200
    1c08:	0504                	.insn	2, 0x0504
    1c0a:	00090003          	lb	zero,0(s2)
    1c0e:	0100                	.insn	2, 0x0100
    1c10:	0200                	.insn	2, 0x0200
    1c12:	0504                	.insn	2, 0x0504
    1c14:	00090003          	lb	zero,0(s2)
    1c18:	0100                	.insn	2, 0x0100
    1c1a:	0200                	.insn	2, 0x0200
    1c1c:	0504                	.insn	2, 0x0504
    1c1e:	00090003          	lb	zero,0(s2)
    1c22:	0100                	.insn	2, 0x0100
    1c24:	0200                	.insn	2, 0x0200
    1c26:	0504                	.insn	2, 0x0504
    1c28:	00090003          	lb	zero,0(s2)
    1c2c:	0100                	.insn	2, 0x0100
    1c2e:	0200                	.insn	2, 0x0200
    1c30:	0504                	.insn	2, 0x0504
    1c32:	00090003          	lb	zero,0(s2)
    1c36:	0100                	.insn	2, 0x0100
    1c38:	0200                	.insn	2, 0x0200
    1c3a:	0504                	.insn	2, 0x0504
    1c3c:	00090003          	lb	zero,0(s2)
    1c40:	0100                	.insn	2, 0x0100
    1c42:	0200                	.insn	2, 0x0200
    1c44:	0604                	.insn	2, 0x0604
    1c46:	00090003          	lb	zero,0(s2)
    1c4a:	0100                	.insn	2, 0x0100
    1c4c:	0200                	.insn	2, 0x0200
    1c4e:	0c04                	.insn	2, 0x0c04
    1c50:	08090003          	lb	zero,128(s2)
    1c54:	0100                	.insn	2, 0x0100
    1c56:	0200                	.insn	2, 0x0200
    1c58:	0c04                	.insn	2, 0x0c04
    1c5a:	00090003          	lb	zero,0(s2)
    1c5e:	0100                	.insn	2, 0x0100
    1c60:	0200                	.insn	2, 0x0200
    1c62:	0c04                	.insn	2, 0x0c04
    1c64:	08090003          	lb	zero,128(s2)
    1c68:	0100                	.insn	2, 0x0100
    1c6a:	0200                	.insn	2, 0x0200
    1c6c:	0e04                	.insn	2, 0x0e04
    1c6e:	00090003          	lb	zero,0(s2)
    1c72:	0100                	.insn	2, 0x0100
    1c74:	0200                	.insn	2, 0x0200
    1c76:	1c04                	.insn	2, 0x1c04
    1c78:	08090003          	lb	zero,128(s2)
    1c7c:	0100                	.insn	2, 0x0100
    1c7e:	0200                	.insn	2, 0x0200
    1c80:	1c04                	.insn	2, 0x1c04
    1c82:	00090003          	lb	zero,0(s2)
    1c86:	0100                	.insn	2, 0x0100
    1c88:	0200                	.insn	2, 0x0200
    1c8a:	1e04                	.insn	2, 0x1e04
    1c8c:	08090003          	lb	zero,128(s2)
    1c90:	0100                	.insn	2, 0x0100
    1c92:	0200                	.insn	2, 0x0200
    1c94:	1e04                	.insn	2, 0x1e04
    1c96:	00090003          	lb	zero,0(s2)
    1c9a:	0100                	.insn	2, 0x0100
    1c9c:	0200                	.insn	2, 0x0200
    1c9e:	2304                	.insn	2, 0x2304
    1ca0:	00090003          	lb	zero,0(s2)
    1ca4:	0100                	.insn	2, 0x0100
    1ca6:	0200                	.insn	2, 0x0200
    1ca8:	1e04                	.insn	2, 0x1e04
    1caa:	0306                	.insn	2, 0x0306
    1cac:	0900                	.insn	2, 0x0900
    1cae:	0000                	.insn	2, 0x
    1cb0:	0001                	.insn	2, 0x0001
    1cb2:	0402                	.insn	2, 0x0402
    1cb4:	09000323          	sb	a6,134(zero) # 86 <COOLING_THRESHOLD_ON+0x2c>
    1cb8:	0004                	.insn	2, 0x0004
    1cba:	0001                	.insn	2, 0x0001
    1cbc:	018c0403          	lb	s0,24(s8)
    1cc0:	0306                	.insn	2, 0x0306
    1cc2:	0900                	.insn	2, 0x0900
    1cc4:	0004                	.insn	2, 0x0004
    1cc6:	0301                	.insn	2, 0x0301
    1cc8:	0901                	.insn	2, 0x0901
    1cca:	0000                	.insn	2, 0x
    1ccc:	0301                	.insn	2, 0x0301
    1cce:	0900                	.insn	2, 0x0900
    1cd0:	0000                	.insn	2, 0x
    1cd2:	0301                	.insn	2, 0x0301
    1cd4:	0900                	.insn	2, 0x0900
    1cd6:	0000                	.insn	2, 0x
    1cd8:	0301                	.insn	2, 0x0301
    1cda:	0900                	.insn	2, 0x0900
    1cdc:	0000                	.insn	2, 0x
    1cde:	0301                	.insn	2, 0x0301
    1ce0:	0900                	.insn	2, 0x0900
    1ce2:	0000                	.insn	2, 0x
    1ce4:	0301                	.insn	2, 0x0301
    1ce6:	0900                	.insn	2, 0x0900
    1ce8:	000c                	.insn	2, 0x000c
    1cea:	0301                	.insn	2, 0x0301
    1cec:	0900                	.insn	2, 0x0900
    1cee:	0000                	.insn	2, 0x
    1cf0:	0301                	.insn	2, 0x0301
    1cf2:	0901                	.insn	2, 0x0901
    1cf4:	0000                	.insn	2, 0x
    1cf6:	0301                	.insn	2, 0x0301
    1cf8:	0900                	.insn	2, 0x0900
    1cfa:	0000                	.insn	2, 0x
    1cfc:	0301                	.insn	2, 0x0301
    1cfe:	0900                	.insn	2, 0x0900
    1d00:	0000                	.insn	2, 0x
    1d02:	0301                	.insn	2, 0x0301
    1d04:	0902                	.insn	2, 0x0902
    1d06:	0000                	.insn	2, 0x
    1d08:	0501                	.insn	2, 0x0501
    1d0a:	0601                	.insn	2, 0x0601
    1d0c:	00090103          	lb	sp,0(s2)
    1d10:	0100                	.insn	2, 0x0100
    1d12:	0305                	.insn	2, 0x0305
    1d14:	0200                	.insn	2, 0x0200
    1d16:	1d04                	.insn	2, 0x1d04
    1d18:	0306                	.insn	2, 0x0306
    1d1a:	0014097b          	.insn	4, 0x0014097b
    1d1e:	0001                	.insn	2, 0x0001
    1d20:	0402                	.insn	2, 0x0402
    1d22:	0326                	.insn	2, 0x0326
    1d24:	0900                	.insn	2, 0x0900
    1d26:	0008                	.insn	2, 0x0008
    1d28:	0001                	.insn	2, 0x0001
    1d2a:	0402                	.insn	2, 0x0402
    1d2c:	0328                	.insn	2, 0x0328
    1d2e:	0900                	.insn	2, 0x0900
    1d30:	001c                	.insn	2, 0x001c
    1d32:	0001                	.insn	2, 0x0001
    1d34:	0402                	.insn	2, 0x0402
    1d36:	0328                	.insn	2, 0x0328
    1d38:	0900                	.insn	2, 0x0900
    1d3a:	0000                	.insn	2, 0x
    1d3c:	0001                	.insn	2, 0x0001
    1d3e:	0402                	.insn	2, 0x0402
    1d40:	0330                	.insn	2, 0x0330
    1d42:	0900                	.insn	2, 0x0900
    1d44:	0000                	.insn	2, 0x
    1d46:	0001                	.insn	2, 0x0001
    1d48:	0402                	.insn	2, 0x0402
    1d4a:	0330                	.insn	2, 0x0330
    1d4c:	0900                	.insn	2, 0x0900
    1d4e:	0000                	.insn	2, 0x
    1d50:	0001                	.insn	2, 0x0001
    1d52:	0402                	.insn	2, 0x0402
    1d54:	0655                	.insn	2, 0x0655
    1d56:	08090003          	lb	zero,128(s2)
    1d5a:	0100                	.insn	2, 0x0100
    1d5c:	0200                	.insn	2, 0x0200
    1d5e:	3004                	.insn	2, 0x3004
    1d60:	04090003          	lb	zero,64(s2)
    1d64:	0100                	.insn	2, 0x0100
    1d66:	0200                	.insn	2, 0x0200
    1d68:	3104                	.insn	2, 0x3104
    1d6a:	0306                	.insn	2, 0x0306
    1d6c:	0900                	.insn	2, 0x0900
    1d6e:	0004                	.insn	2, 0x0004
    1d70:	0001                	.insn	2, 0x0001
    1d72:	0402                	.insn	2, 0x0402
    1d74:	0331                	.insn	2, 0x0331
    1d76:	0900                	.insn	2, 0x0900
    1d78:	0000                	.insn	2, 0x
    1d7a:	0001                	.insn	2, 0x0001
    1d7c:	0402                	.insn	2, 0x0402
    1d7e:	0355                	.insn	2, 0x0355
    1d80:	0900                	.insn	2, 0x0900
    1d82:	0000                	.insn	2, 0x
    1d84:	0001                	.insn	2, 0x0001
    1d86:	0402                	.insn	2, 0x0402
    1d88:	0355                	.insn	2, 0x0355
    1d8a:	0900                	.insn	2, 0x0900
    1d8c:	0000                	.insn	2, 0x
    1d8e:	0001                	.insn	2, 0x0001
    1d90:	0402                	.insn	2, 0x0402
    1d92:	0356                	.insn	2, 0x0356
    1d94:	0900                	.insn	2, 0x0900
    1d96:	0004                	.insn	2, 0x0004
    1d98:	0001                	.insn	2, 0x0001
    1d9a:	0402                	.insn	2, 0x0402
    1d9c:	0356                	.insn	2, 0x0356
    1d9e:	0900                	.insn	2, 0x0900
    1da0:	0000                	.insn	2, 0x
    1da2:	0001                	.insn	2, 0x0001
    1da4:	0402                	.insn	2, 0x0402
    1da6:	0359                	.insn	2, 0x0359
    1da8:	0900                	.insn	2, 0x0900
    1daa:	0000                	.insn	2, 0x
    1dac:	0001                	.insn	2, 0x0001
    1dae:	0402                	.insn	2, 0x0402
    1db0:	0359                	.insn	2, 0x0359
    1db2:	0900                	.insn	2, 0x0900
    1db4:	0000                	.insn	2, 0x
    1db6:	0001                	.insn	2, 0x0001
    1db8:	0402                	.insn	2, 0x0402
    1dba:	035d                	.insn	2, 0x035d
    1dbc:	0900                	.insn	2, 0x0900
    1dbe:	000c                	.insn	2, 0x000c
    1dc0:	0001                	.insn	2, 0x0001
    1dc2:	0402                	.insn	2, 0x0402
    1dc4:	0360                	.insn	2, 0x0360
    1dc6:	0900                	.insn	2, 0x0900
    1dc8:	0004                	.insn	2, 0x0004
    1dca:	0001                	.insn	2, 0x0001
    1dcc:	0402                	.insn	2, 0x0402
    1dce:	0360                	.insn	2, 0x0360
    1dd0:	0900                	.insn	2, 0x0900
    1dd2:	0000                	.insn	2, 0x
    1dd4:	0001                	.insn	2, 0x0001
    1dd6:	0402                	.insn	2, 0x0402
    1dd8:	0900036f          	jal	t1,1e68 <COOLING_THRESHOLD_ON+0x1e0e>
    1ddc:	0000                	.insn	2, 0x
    1dde:	0001                	.insn	2, 0x0001
    1de0:	0402                	.insn	2, 0x0402
    1de2:	0370                	.insn	2, 0x0370
    1de4:	0900                	.insn	2, 0x0900
    1de6:	0008                	.insn	2, 0x0008
    1de8:	0001                	.insn	2, 0x0001
    1dea:	0402                	.insn	2, 0x0402
    1dec:	0370                	.insn	2, 0x0370
    1dee:	0900                	.insn	2, 0x0900
    1df0:	0010                	.insn	2, 0x0010
    1df2:	0001                	.insn	2, 0x0001
    1df4:	0402                	.insn	2, 0x0402
    1df6:	0370                	.insn	2, 0x0370
    1df8:	0900                	.insn	2, 0x0900
    1dfa:	0004                	.insn	2, 0x0004
    1dfc:	0001                	.insn	2, 0x0001
    1dfe:	01800403          	lb	s0,24(zero) # 18 <SENSING_TIME+0x13>
    1e02:	00090003          	lb	zero,0(s2)
    1e06:	0100                	.insn	2, 0x0100
    1e08:	0300                	.insn	2, 0x0300
    1e0a:	8004                	.insn	2, 0x8004
    1e0c:	0301                	.insn	2, 0x0301
    1e0e:	0900                	.insn	2, 0x0900
    1e10:	0000                	.insn	2, 0x
    1e12:	0001                	.insn	2, 0x0001
    1e14:	01800403          	lb	s0,24(zero) # 18 <SENSING_TIME+0x13>
    1e18:	04090003          	lb	zero,64(s2)
    1e1c:	0100                	.insn	2, 0x0100
    1e1e:	0200                	.insn	2, 0x0200
    1e20:	2804                	.insn	2, 0x2804
    1e22:	04090003          	lb	zero,64(s2)
    1e26:	0100                	.insn	2, 0x0100
    1e28:	0200                	.insn	2, 0x0200
    1e2a:	2804                	.insn	2, 0x2804
    1e2c:	00090003          	lb	zero,0(s2)
    1e30:	0100                	.insn	2, 0x0100
    1e32:	0200                	.insn	2, 0x0200
    1e34:	2904                	.insn	2, 0x2904
    1e36:	0306                	.insn	2, 0x0306
    1e38:	0900                	.insn	2, 0x0900
    1e3a:	0000                	.insn	2, 0x
    1e3c:	0001                	.insn	2, 0x0001
    1e3e:	0402                	.insn	2, 0x0402
    1e40:	032e                	.insn	2, 0x032e
    1e42:	0900                	.insn	2, 0x0900
    1e44:	0004                	.insn	2, 0x0004
    1e46:	0001                	.insn	2, 0x0001
    1e48:	0402                	.insn	2, 0x0402
    1e4a:	030c                	.insn	2, 0x030c
    1e4c:	0900                	.insn	2, 0x0900
    1e4e:	0008                	.insn	2, 0x0008
    1e50:	0901                	.insn	2, 0x0901
    1e52:	0008                	.insn	2, 0x0008
    1e54:	0100                	.insn	2, 0x0100
    1e56:	7601                	.insn	2, 0x7601
    1e58:	0000                	.insn	2, 0x
    1e5a:	0500                	.insn	2, 0x0500
    1e5c:	0400                	.insn	2, 0x0400
    1e5e:	2e00                	.insn	2, 0x2e00
    1e60:	0000                	.insn	2, 0x
    1e62:	0100                	.insn	2, 0x0100
    1e64:	0101                	.insn	2, 0x0101
    1e66:	000d0efb          	.insn	4, 0x000d0efb
    1e6a:	0101                	.insn	2, 0x0101
    1e6c:	0101                	.insn	2, 0x0101
    1e6e:	0000                	.insn	2, 0x
    1e70:	0100                	.insn	2, 0x0100
    1e72:	0000                	.insn	2, 0x
    1e74:	0101                	.insn	2, 0x0101
    1e76:	1f01                	.insn	2, 0x1f01
    1e78:	0002                	.insn	2, 0x0002
    1e7a:	0000                	.insn	2, 0x
    1e7c:	6900                	.insn	2, 0x6900
    1e7e:	0001                	.insn	2, 0x0001
    1e80:	0200                	.insn	2, 0x0200
    1e82:	1f01                	.insn	2, 0x1f01
    1e84:	0f02                	.insn	2, 0x0f02
    1e86:	9702                	.insn	2, 0x9702
    1e88:	0001                	.insn	2, 0x0001
    1e8a:	0100                	.insn	2, 0x0100
    1e8c:	00000197          	auipc	gp,0x0
    1e90:	0001                	.insn	2, 0x0001
    1e92:	0205                	.insn	2, 0x0205
    1e94:	3ad4                	.insn	2, 0x3ad4
    1e96:	8000                	.insn	2, 0x8000
    1e98:	03012403          	lw	s0,48(sp)
    1e9c:	0901                	.insn	2, 0x0901
    1e9e:	0004                	.insn	2, 0x0004
    1ea0:	0301                	.insn	2, 0x0301
    1ea2:	0902                	.insn	2, 0x0902
    1ea4:	0004                	.insn	2, 0x0004
    1ea6:	0301                	.insn	2, 0x0301
    1ea8:	0901                	.insn	2, 0x0901
    1eaa:	0004                	.insn	2, 0x0004
    1eac:	0301                	.insn	2, 0x0301
    1eae:	0901                	.insn	2, 0x0901
    1eb0:	0004                	.insn	2, 0x0004
    1eb2:	0301                	.insn	2, 0x0301
    1eb4:	0902                	.insn	2, 0x0902
    1eb6:	0004                	.insn	2, 0x0004
    1eb8:	0301                	.insn	2, 0x0301
    1eba:	0901                	.insn	2, 0x0901
    1ebc:	0004                	.insn	2, 0x0004
    1ebe:	0301                	.insn	2, 0x0301
    1ec0:	0901                	.insn	2, 0x0901
    1ec2:	0004                	.insn	2, 0x0004
    1ec4:	0301                	.insn	2, 0x0301
    1ec6:	0901                	.insn	2, 0x0901
    1ec8:	0004                	.insn	2, 0x0004
    1eca:	0901                	.insn	2, 0x0901
    1ecc:	0004                	.insn	2, 0x0004
    1ece:	0100                	.insn	2, 0x0100
    1ed0:	4f01                	.insn	2, 0x4f01
    1ed2:	0001                	.insn	2, 0x0001
    1ed4:	0500                	.insn	2, 0x0500
    1ed6:	0400                	.insn	2, 0x0400
    1ed8:	2e00                	.insn	2, 0x2e00
    1eda:	0000                	.insn	2, 0x
    1edc:	0100                	.insn	2, 0x0100
    1ede:	0101                	.insn	2, 0x0101
    1ee0:	000d0efb          	.insn	4, 0x000d0efb
    1ee4:	0101                	.insn	2, 0x0101
    1ee6:	0101                	.insn	2, 0x0101
    1ee8:	0000                	.insn	2, 0x
    1eea:	0100                	.insn	2, 0x0100
    1eec:	0000                	.insn	2, 0x
    1eee:	0101                	.insn	2, 0x0101
    1ef0:	1f01                	.insn	2, 0x1f01
    1ef2:	0002                	.insn	2, 0x0002
    1ef4:	0000                	.insn	2, 0x
    1ef6:	6900                	.insn	2, 0x6900
    1ef8:	0001                	.insn	2, 0x0001
    1efa:	0200                	.insn	2, 0x0200
    1efc:	1f01                	.insn	2, 0x1f01
    1efe:	0f02                	.insn	2, 0x0f02
    1f00:	a002                	.insn	2, 0xa002
    1f02:	0001                	.insn	2, 0x0001
    1f04:	0100                	.insn	2, 0x0100
    1f06:	01a0                	.insn	2, 0x01a0
    1f08:	0000                	.insn	2, 0x
    1f0a:	0001                	.insn	2, 0x0001
    1f0c:	0205                	.insn	2, 0x0205
    1f0e:	3af8                	.insn	2, 0x3af8
    1f10:	8000                	.insn	2, 0x8000
    1f12:	0100c403          	lbu	s0,16(ra)
    1f16:	04090103          	lb	sp,64(s2)
    1f1a:	0100                	.insn	2, 0x0100
    1f1c:	04090403          	lb	s0,64(s2)
    1f20:	0100                	.insn	2, 0x0100
    1f22:	04090103          	lb	sp,64(s2)
    1f26:	0100                	.insn	2, 0x0100
    1f28:	04090103          	lb	sp,64(s2)
    1f2c:	0100                	.insn	2, 0x0100
    1f2e:	04090103          	lb	sp,64(s2)
    1f32:	0100                	.insn	2, 0x0100
    1f34:	04090103          	lb	sp,64(s2)
    1f38:	0100                	.insn	2, 0x0100
    1f3a:	04090103          	lb	sp,64(s2)
    1f3e:	0100                	.insn	2, 0x0100
    1f40:	04090203          	lb	tp,64(s2)
    1f44:	0100                	.insn	2, 0x0100
    1f46:	04090103          	lb	sp,64(s2)
    1f4a:	0100                	.insn	2, 0x0100
    1f4c:	04090103          	lb	sp,64(s2)
    1f50:	0100                	.insn	2, 0x0100
    1f52:	04090103          	lb	sp,64(s2)
    1f56:	0100                	.insn	2, 0x0100
    1f58:	04090203          	lb	tp,64(s2)
    1f5c:	0100                	.insn	2, 0x0100
    1f5e:	04090203          	lb	tp,64(s2)
    1f62:	0100                	.insn	2, 0x0100
    1f64:	04090103          	lb	sp,64(s2)
    1f68:	0100                	.insn	2, 0x0100
    1f6a:	04090103          	lb	sp,64(s2)
    1f6e:	0100                	.insn	2, 0x0100
    1f70:	04090203          	lb	tp,64(s2)
    1f74:	0100                	.insn	2, 0x0100
    1f76:	04090103          	lb	sp,64(s2)
    1f7a:	0100                	.insn	2, 0x0100
    1f7c:	04090103          	lb	sp,64(s2)
    1f80:	0100                	.insn	2, 0x0100
    1f82:	04090203          	lb	tp,64(s2)
    1f86:	0100                	.insn	2, 0x0100
    1f88:	04090603          	lb	a2,64(s2)
    1f8c:	0100                	.insn	2, 0x0100
    1f8e:	04090103          	lb	sp,64(s2)
    1f92:	0100                	.insn	2, 0x0100
    1f94:	04090103          	lb	sp,64(s2)
    1f98:	0100                	.insn	2, 0x0100
    1f9a:	04090103          	lb	sp,64(s2)
    1f9e:	0100                	.insn	2, 0x0100
    1fa0:	04090503          	lb	a0,64(s2)
    1fa4:	0100                	.insn	2, 0x0100
    1fa6:	04090203          	lb	tp,64(s2)
    1faa:	0100                	.insn	2, 0x0100
    1fac:	04090203          	lb	tp,64(s2)
    1fb0:	0100                	.insn	2, 0x0100
    1fb2:	04090103          	lb	sp,64(s2)
    1fb6:	0100                	.insn	2, 0x0100
    1fb8:	04090203          	lb	tp,64(s2)
    1fbc:	0100                	.insn	2, 0x0100
    1fbe:	04090203          	lb	tp,64(s2)
    1fc2:	0100                	.insn	2, 0x0100
    1fc4:	04090103          	lb	sp,64(s2)
    1fc8:	0100                	.insn	2, 0x0100
    1fca:	04090103          	lb	sp,64(s2)
    1fce:	0100                	.insn	2, 0x0100
    1fd0:	04090103          	lb	sp,64(s2)
    1fd4:	0100                	.insn	2, 0x0100
    1fd6:	04090403          	lb	s0,64(s2)
    1fda:	0100                	.insn	2, 0x0100
    1fdc:	04090103          	lb	sp,64(s2)
    1fe0:	0100                	.insn	2, 0x0100
    1fe2:	04090103          	lb	sp,64(s2)
    1fe6:	0100                	.insn	2, 0x0100
    1fe8:	04090203          	lb	tp,64(s2)
    1fec:	0100                	.insn	2, 0x0100
    1fee:	04090103          	lb	sp,64(s2)
    1ff2:	0100                	.insn	2, 0x0100
    1ff4:	04090103          	lb	sp,64(s2)
    1ff8:	0100                	.insn	2, 0x0100
    1ffa:	04090203          	lb	tp,64(s2)
    1ffe:	0100                	.insn	2, 0x0100
    2000:	04090103          	lb	sp,64(s2)
    2004:	0100                	.insn	2, 0x0100
    2006:	04090203          	lb	tp,64(s2)
    200a:	0100                	.insn	2, 0x0100
    200c:	04090103          	lb	sp,64(s2)
    2010:	0100                	.insn	2, 0x0100
    2012:	04090103          	lb	sp,64(s2)
    2016:	0100                	.insn	2, 0x0100
    2018:	04090103          	lb	sp,64(s2)
    201c:	0100                	.insn	2, 0x0100
    201e:	0409                	.insn	2, 0x0409
    2020:	0000                	.insn	2, 0x
    2022:	0101                	.insn	2, 0x0101
    2024:	0000003b          	.insn	4, 0x003b
    2028:	0005                	.insn	2, 0x0005
    202a:	0004                	.insn	2, 0x0004
    202c:	00000033          	add	zero,zero,zero
    2030:	0101                	.insn	2, 0x0101
    2032:	fb01                	.insn	2, 0xfb01
    2034:	0d0e                	.insn	2, 0x0d0e
    2036:	0100                	.insn	2, 0x0100
    2038:	0101                	.insn	2, 0x0101
    203a:	0001                	.insn	2, 0x0001
    203c:	0000                	.insn	2, 0x
    203e:	0001                	.insn	2, 0x0001
    2040:	0100                	.insn	2, 0x0100
    2042:	0101                	.insn	2, 0x0101
    2044:	021f 0000 0000      	.insn	6, 0x021f
    204a:	0099                	.insn	2, 0x0099
    204c:	0000                	.insn	2, 0x
    204e:	0102                	.insn	2, 0x0102
    2050:	021f 030f 008f      	.insn	6, 0x008f030f021f
    2056:	0000                	.insn	2, 0x
    2058:	ba01                	.insn	2, 0xba01
    205a:	0000                	.insn	2, 0x
    205c:	0100                	.insn	2, 0x0100
    205e:	0000008f          	.insn	4, 0x008f
    2062:	db01                	.insn	2, 0xdb01
    2064:	0000                	.insn	2, 0x
    2066:	0500                	.insn	2, 0x0500
    2068:	0400                	.insn	2, 0x0400
    206a:	3300                	.insn	2, 0x3300
    206c:	0000                	.insn	2, 0x
    206e:	0100                	.insn	2, 0x0100
    2070:	0101                	.insn	2, 0x0101
    2072:	000d0efb          	.insn	4, 0x000d0efb
    2076:	0101                	.insn	2, 0x0101
    2078:	0101                	.insn	2, 0x0101
    207a:	0000                	.insn	2, 0x
    207c:	0100                	.insn	2, 0x0100
    207e:	0000                	.insn	2, 0x
    2080:	0101                	.insn	2, 0x0101
    2082:	1f01                	.insn	2, 0x1f01
    2084:	0002                	.insn	2, 0x0002
    2086:	0000                	.insn	2, 0x
    2088:	9900                	.insn	2, 0x9900
    208a:	0000                	.insn	2, 0x
    208c:	0200                	.insn	2, 0x0200
    208e:	1f01                	.insn	2, 0x1f01
    2090:	0f02                	.insn	2, 0x0f02
    2092:	00008f03          	lb	t5,0(ra)
    2096:	0100                	.insn	2, 0x0100
    2098:	0000008f          	.insn	4, 0x008f
    209c:	ba01                	.insn	2, 0xba01
    209e:	0000                	.insn	2, 0x
    20a0:	0100                	.insn	2, 0x0100
    20a2:	0105                	.insn	2, 0x0105
    20a4:	0500                	.insn	2, 0x0500
    20a6:	ac02                	.insn	2, 0xac02
    20a8:	0380003b          	.insn	4, 0x0380003b
    20ac:	05ae                	.insn	2, 0x05ae
    20ae:	0501                	.insn	2, 0x0501
    20b0:	09010303          	lb	t1,144(sp)
    20b4:	0000                	.insn	2, 0x
    20b6:	0301                	.insn	2, 0x0301
    20b8:	0902                	.insn	2, 0x0902
    20ba:	0000                	.insn	2, 0x
    20bc:	0301                	.insn	2, 0x0301
    20be:	0900                	.insn	2, 0x0900
    20c0:	0000                	.insn	2, 0x
    20c2:	0301                	.insn	2, 0x0301
    20c4:	0900                	.insn	2, 0x0900
    20c6:	0000                	.insn	2, 0x
    20c8:	0301                	.insn	2, 0x0301
    20ca:	0900                	.insn	2, 0x0900
    20cc:	0000                	.insn	2, 0x
    20ce:	0001                	.insn	2, 0x0001
    20d0:	0402                	.insn	2, 0x0402
    20d2:	0301                	.insn	2, 0x0301
    20d4:	0900                	.insn	2, 0x0900
    20d6:	0000                	.insn	2, 0x
    20d8:	0001                	.insn	2, 0x0001
    20da:	0402                	.insn	2, 0x0402
    20dc:	00030603          	lb	a2,0(t1) # 900181e <COOLING_THRESHOLD_ON+0x90017c4>
    20e0:	0809                	.insn	2, 0x0809
    20e2:	0100                	.insn	2, 0x0100
    20e4:	0200                	.insn	2, 0x0200
    20e6:	1504                	.insn	2, 0x1504
    20e8:	0306                	.insn	2, 0x0306
    20ea:	0900                	.insn	2, 0x0900
    20ec:	000c                	.insn	2, 0x000c
    20ee:	0001                	.insn	2, 0x0001
    20f0:	0402                	.insn	2, 0x0402
    20f2:	0315                	.insn	2, 0x0315
    20f4:	0900                	.insn	2, 0x0900
    20f6:	0000                	.insn	2, 0x
    20f8:	0301                	.insn	2, 0x0301
    20fa:	0902                	.insn	2, 0x0902
    20fc:	0000                	.insn	2, 0x
    20fe:	0001                	.insn	2, 0x0001
    2100:	0402                	.insn	2, 0x0402
    2102:	0615                	.insn	2, 0x0615
    2104:	00097e03          	.insn	4, 0x00097e03
    2108:	0100                	.insn	2, 0x0100
    210a:	0105                	.insn	2, 0x0105
    210c:	1c090303          	lb	t1,448(s2)
    2110:	0100                	.insn	2, 0x0100
    2112:	0305                	.insn	2, 0x0305
    2114:	0200                	.insn	2, 0x0200
    2116:	0404                	.insn	2, 0x0404
    2118:	08097d03          	.insn	4, 0x08097d03
    211c:	0100                	.insn	2, 0x0100
    211e:	0200                	.insn	2, 0x0200
    2120:	0b04                	.insn	2, 0x0b04
    2122:	04090003          	lb	zero,64(s2)
    2126:	0100                	.insn	2, 0x0100
    2128:	0200                	.insn	2, 0x0200
    212a:	0404                	.insn	2, 0x0404
    212c:	04090003          	lb	zero,64(s2)
    2130:	0100                	.insn	2, 0x0100
    2132:	0200                	.insn	2, 0x0200
    2134:	0a04                	.insn	2, 0x0a04
    2136:	04090003          	lb	zero,64(s2)
    213a:	0100                	.insn	2, 0x0100
    213c:	0809                	.insn	2, 0x0809
    213e:	0000                	.insn	2, 0x
    2140:	0101                	.insn	2, 0x0101

Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	5744                	.insn	2, 0x5744
   2:	6e75                	.insn	2, 0x6e75
   4:	6f69                	.insn	2, 0x6f69
   6:	006e                	.insn	2, 0x006e
   8:	5f5f 6475 7669      	.insn	6, 0x766964755f5f
   e:	6964                	.insn	2, 0x6964
  10:	6f630033          	.insn	4, 0x6f630033
  14:	706d                	.insn	2, 0x706d
  16:	656c                	.insn	2, 0x656c
  18:	2078                	.insn	2, 0x2078
  1a:	6c66                	.insn	2, 0x6c66
  1c:	0074616f          	jal	sp,46822 <COOLING_THRESHOLD_ON+0x467c8>
  20:	5f5f 756d 736c      	.insn	6, 0x736c756d5f5f
  26:	3369                	.insn	2, 0x3369
  28:	7300                	.insn	2, 0x7300
  2a:	6f68                	.insn	2, 0x6f68
  2c:	7472                	.insn	2, 0x7472
  2e:	6920                	.insn	2, 0x6920
  30:	746e                	.insn	2, 0x746e
  32:	5f00                	.insn	2, 0x5f00
  34:	645f 0030 5f5f      	.insn	6, 0x5f5f0030645f
  3a:	6876                	.insn	2, 0x6876
  3c:	5f00                	.insn	2, 0x5f00
  3e:	6f5f 3070 5f00      	.insn	6, 0x5f0030706f5f
  44:	6f5f 3170 6c00      	.insn	6, 0x6c0031706f5f
  4a:	20676e6f          	jal	t3,76250 <COOLING_THRESHOLD_ON+0x761f6>
  4e:	6f6c                	.insn	2, 0x6f6c
  50:	676e                	.insn	2, 0x676e
  52:	6920                	.insn	2, 0x6920
  54:	746e                	.insn	2, 0x746e
  56:	6c00                	.insn	2, 0x6c00
  58:	20676e6f          	jal	t3,7625e <COOLING_THRESHOLD_ON+0x76204>
  5c:	6f6c                	.insn	2, 0x6f6c
  5e:	676e                	.insn	2, 0x676e
  60:	7520                	.insn	2, 0x7520
  62:	736e                	.insn	2, 0x736e
  64:	6769                	.insn	2, 0x6769
  66:	656e                	.insn	2, 0x656e
  68:	2064                	.insn	2, 0x2064
  6a:	6e69                	.insn	2, 0x6e69
  6c:	0074                	.insn	2, 0x0074
  6e:	6968                	.insn	2, 0x6968
  70:	5f006867          	.insn	4, 0x5f006867
  74:	635f 7a6c 745f      	.insn	6, 0x745f7a6c635f
  7a:	6261                	.insn	2, 0x6261
  7c:	6300                	.insn	2, 0x6300
  7e:	6c706d6f          	jal	s10,6f44 <COOLING_THRESHOLD_ON+0x6eea>
  82:	7865                	.insn	2, 0x7865
  84:	5f20                	.insn	2, 0x5f20
  86:	6c46                	.insn	2, 0x6c46
  88:	3174616f          	jal	sp,46b9e <COOLING_THRESHOLD_ON+0x46b44>
  8c:	0036                	.insn	2, 0x0036
  8e:	6e75                	.insn	2, 0x6e75
  90:	6e676973          	.insn	4, 0x6e676973
  94:	6465                	.insn	2, 0x6465
  96:	6320                	.insn	2, 0x6320
  98:	6168                	.insn	2, 0x6168
  9a:	0072                	.insn	2, 0x0072
  9c:	5f5f 3078 5f00      	.insn	6, 0x5f0030785f5f
  a2:	785f 0031 5f5f      	.insn	6, 0x5f5f0031785f
  a8:	3278                	.insn	2, 0x3278
  aa:	5f00                	.insn	2, 0x5f00
  ac:	785f 0033 5155      	.insn	6, 0x51550033785f
  b2:	7449                	.insn	2, 0x7449
  b4:	7079                	.insn	2, 0x7079
  b6:	0065                	.insn	2, 0x0065
  b8:	5744                	.insn	2, 0x5744
  ba:	75727473          	.insn	4, 0x75727473
  be:	73007463          	bgeu	zero,a6,7e6 <COOLING_THRESHOLD_ON+0x78c>
  c2:	6f68                	.insn	2, 0x6f68
  c4:	7472                	.insn	2, 0x7472
  c6:	7520                	.insn	2, 0x7520
  c8:	736e                	.insn	2, 0x736e
  ca:	6769                	.insn	2, 0x6769
  cc:	656e                	.insn	2, 0x656e
  ce:	2064                	.insn	2, 0x2064
  d0:	6e69                	.insn	2, 0x6e69
  d2:	0074                	.insn	2, 0x0074
  d4:	4455                	.insn	2, 0x4455
  d6:	7449                	.insn	2, 0x7449
  d8:	7079                	.insn	2, 0x7079
  da:	0065                	.insn	2, 0x0065
  dc:	5f5f 3071 5f00      	.insn	6, 0x5f0030715f5f
  e2:	715f 0031 5f5f      	.insn	6, 0x5f5f0031715f
  e8:	3164                	.insn	2, 0x3164
  ea:	5f00                	.insn	2, 0x5f00
  ec:	755f 6f6d 7364      	.insn	6, 0x73646f6d755f
  f2:	3369                	.insn	2, 0x3369
  f4:	6300                	.insn	2, 0x6300
  f6:	6c706d6f          	jal	s10,6fbc <COOLING_THRESHOLD_ON+0x6f62>
  fa:	7865                	.insn	2, 0x7865
  fc:	6420                	.insn	2, 0x6420
  fe:	6c62756f          	jal	a0,277c4 <COOLING_THRESHOLD_ON+0x2776a>
 102:	0065                	.insn	2, 0x0065
 104:	5f5f 6c76 5f00      	.insn	6, 0x5f006c765f5f
 10a:	755f 6964 6d76      	.insn	6, 0x6d766964755f
 110:	6964646f          	jal	s0,467a6 <COOLING_THRESHOLD_ON+0x4674c>
 114:	0034                	.insn	2, 0x0034
 116:	706d6f63          	bltu	s10,t1,834 <COOLING_THRESHOLD_ON+0x7da>
 11a:	656c                	.insn	2, 0x656c
 11c:	2078                	.insn	2, 0x2078
 11e:	6f6c                	.insn	2, 0x6f6c
 120:	676e                	.insn	2, 0x676e
 122:	6420                	.insn	2, 0x6420
 124:	6c62756f          	jal	a0,277ea <COOLING_THRESHOLD_ON+0x27790>
 128:	0065                	.insn	2, 0x0065
 12a:	5355                	.insn	2, 0x5355
 12c:	7449                	.insn	2, 0x7449
 12e:	7079                	.insn	2, 0x7079
 130:	0065                	.insn	2, 0x0065
 132:	5f5f 7278 5f00      	.insn	6, 0x5f0072785f5f
 138:	725f 0030 5f5f      	.insn	6, 0x5f5f0030725f
 13e:	3172                	.insn	2, 0x3172
 140:	4700                	.insn	2, 0x4700
 142:	554e                	.insn	2, 0x554e
 144:	4320                	.insn	2, 0x4320
 146:	3731                	.insn	2, 0x3731
 148:	3120                	.insn	2, 0x3120
 14a:	2e322e33          	.insn	4, 0x2e322e33
 14e:	2030                	.insn	2, 0x2030
 150:	6d2d                	.insn	2, 0x6d2d
 152:	646f6d63          	bltu	t5,t1,7ac <COOLING_THRESHOLD_ON+0x752>
 156:	6c65                	.insn	2, 0x6c65
 158:	6d3d                	.insn	2, 0x6d3d
 15a:	6465                	.insn	2, 0x6465
 15c:	6e61                	.insn	2, 0x6e61
 15e:	2079                	.insn	2, 0x2079
 160:	6d2d                	.insn	2, 0x6d2d
 162:	6261                	.insn	2, 0x6261
 164:	3d69                	.insn	2, 0x3d69
 166:	6c69                	.insn	2, 0x6c69
 168:	3370                	.insn	2, 0x3370
 16a:	2032                	.insn	2, 0x2032
 16c:	6d2d                	.insn	2, 0x6d2d
 16e:	646f6d63          	bltu	t5,t1,7c8 <COOLING_THRESHOLD_ON+0x76e>
 172:	6c65                	.insn	2, 0x6c65
 174:	6d3d                	.insn	2, 0x6d3d
 176:	6465                	.insn	2, 0x6465
 178:	6e61                	.insn	2, 0x6e61
 17a:	2079                	.insn	2, 0x2079
 17c:	6d2d                	.insn	2, 0x6d2d
 17e:	7369                	.insn	2, 0x7369
 180:	2d61                	.insn	2, 0x2d61
 182:	63657073          	.insn	4, 0x63657073
 186:	323d                	.insn	2, 0x323d
 188:	3130                	.insn	2, 0x3130
 18a:	3139                	.insn	2, 0x3139
 18c:	3132                	.insn	2, 0x3132
 18e:	6d2d2033          	.insn	4, 0x6d2d2033
 192:	7261                	.insn	2, 0x7261
 194:	723d6863          	bltu	s10,gp,8c4 <COOLING_THRESHOLD_ON+0x86a>
 198:	3376                	.insn	2, 0x3376
 19a:	6932                	.insn	2, 0x6932
 19c:	2d20                	.insn	2, 0x2d20
 19e:	4f2d2067          	.insn	4, 0x4f2d2067
 1a2:	4f2d2073          	.insn	4, 0x4f2d2073
 1a6:	2032                	.insn	2, 0x2032
 1a8:	4f2d                	.insn	2, 0x4f2d
 1aa:	662d2073          	.insn	4, 0x662d2073
 1ae:	7562                	.insn	2, 0x7562
 1b0:	6c69                	.insn	2, 0x6c69
 1b2:	6964                	.insn	2, 0x6964
 1b4:	676e                	.insn	2, 0x676e
 1b6:	6c2d                	.insn	2, 0x6c2d
 1b8:	6269                	.insn	2, 0x6269
 1ba:	20636367          	.insn	4, 0x20636367
 1be:	662d                	.insn	2, 0x662d
 1c0:	6f6e                	.insn	2, 0x6f6e
 1c2:	732d                	.insn	2, 0x732d
 1c4:	6174                	.insn	2, 0x6174
 1c6:	702d6b63          	bltu	s10,sp,8dc <COOLING_THRESHOLD_ON+0x882>
 1ca:	6f72                	.insn	2, 0x6f72
 1cc:	6574                	.insn	2, 0x6574
 1ce:	726f7463          	bgeu	t5,t1,8f6 <COOLING_THRESHOLD_ON+0x89c>
 1d2:	2d20                	.insn	2, 0x2d20
 1d4:	6166                	.insn	2, 0x6166
 1d6:	636e7973          	.insn	4, 0x636e7973
 1da:	7268                	.insn	2, 0x7268
 1dc:	756f6e6f          	jal	t3,f6932 <COOLING_THRESHOLD_ON+0xf68d8>
 1e0:	6e752d73          	.insn	4, 0x6e752d73
 1e4:	646e6977          	.insn	4, 0x646e6977
 1e8:	742d                	.insn	2, 0x742d
 1ea:	6261                	.insn	2, 0x6261
 1ec:	656c                	.insn	2, 0x656c
 1ee:	662d2073          	.insn	4, 0x662d2073
 1f2:	6976                	.insn	2, 0x6976
 1f4:	69626973          	.insn	4, 0x69626973
 1f8:	696c                	.insn	2, 0x696c
 1fa:	7974                	.insn	2, 0x7974
 1fc:	683d                	.insn	2, 0x683d
 1fe:	6469                	.insn	2, 0x6469
 200:	6564                	.insn	2, 0x6564
 202:	006e                	.insn	2, 0x006e
 204:	5f5f 6875 5f00      	.insn	6, 0x5f0068755f5f
 20a:	755f 006c 5f5f      	.insn	6, 0x5f5f006c755f
 210:	6d75                	.insn	2, 0x6d75
 212:	6964646f          	jal	s0,468a8 <COOLING_THRESHOLD_ON+0x4684e>
 216:	4e470033          	.insn	4, 0x4e470033
 21a:	2055                	.insn	2, 0x2055
 21c:	20373143          	.insn	4, 0x20373143
 220:	3331                	.insn	2, 0x3331
 222:	322e                	.insn	2, 0x322e
 224:	302e                	.insn	2, 0x302e
 226:	2d20                	.insn	2, 0x2d20
 228:	636d                	.insn	2, 0x636d
 22a:	6f6d                	.insn	2, 0x6f6d
 22c:	6564                	.insn	2, 0x6564
 22e:	3d6c                	.insn	2, 0x3d6c
 230:	656d                	.insn	2, 0x656d
 232:	6164                	.insn	2, 0x6164
 234:	796e                	.insn	2, 0x796e
 236:	2d20                	.insn	2, 0x2d20
 238:	616d                	.insn	2, 0x616d
 23a:	6962                	.insn	2, 0x6962
 23c:	693d                	.insn	2, 0x693d
 23e:	706c                	.insn	2, 0x706c
 240:	2d203233          	.insn	4, 0x2d203233
 244:	636d                	.insn	2, 0x636d
 246:	6f6d                	.insn	2, 0x6f6d
 248:	6564                	.insn	2, 0x6564
 24a:	3d6c                	.insn	2, 0x3d6c
 24c:	656d                	.insn	2, 0x656d
 24e:	6164                	.insn	2, 0x6164
 250:	796e                	.insn	2, 0x796e
 252:	2d20                	.insn	2, 0x2d20
 254:	696d                	.insn	2, 0x696d
 256:	732d6173          	.insn	4, 0x732d6173
 25a:	6570                	.insn	2, 0x6570
 25c:	30323d63          	.insn	4, 0x30323d63
 260:	3931                	.insn	2, 0x3931
 262:	3231                	.insn	2, 0x3231
 264:	3331                	.insn	2, 0x3331
 266:	2d20                	.insn	2, 0x2d20
 268:	616d                	.insn	2, 0x616d
 26a:	6372                	.insn	2, 0x6372
 26c:	3d68                	.insn	2, 0x3d68
 26e:	7672                	.insn	2, 0x7672
 270:	20693233          	.insn	4, 0x20693233
 274:	672d                	.insn	2, 0x672d
 276:	2d20                	.insn	2, 0x2d20
 278:	2d20734f          	.insn	4, 0x2d20734f
 27c:	2d20324f          	.insn	4, 0x2d20324f
 280:	2d20734f          	.insn	4, 0x2d20734f
 284:	6266                	.insn	2, 0x6266
 286:	6975                	.insn	2, 0x6975
 288:	646c                	.insn	2, 0x646c
 28a:	6e69                	.insn	2, 0x6e69
 28c:	696c2d67          	.insn	4, 0x696c2d67
 290:	6762                	.insn	2, 0x6762
 292:	2d206363          	bltu	zero,s2,558 <COOLING_THRESHOLD_ON+0x4fe>
 296:	6e66                	.insn	2, 0x6e66
 298:	74732d6f          	jal	s10,331de <COOLING_THRESHOLD_ON+0x33184>
 29c:	6361                	.insn	2, 0x6361
 29e:	72702d6b          	.insn	4, 0x72702d6b
 2a2:	6365746f          	jal	s0,578d8 <COOLING_THRESHOLD_ON+0x5787e>
 2a6:	6f74                	.insn	2, 0x6f74
 2a8:	2072                	.insn	2, 0x2072
 2aa:	662d                	.insn	2, 0x662d
 2ac:	6976                	.insn	2, 0x6976
 2ae:	69626973          	.insn	4, 0x69626973
 2b2:	696c                	.insn	2, 0x696c
 2b4:	7974                	.insn	2, 0x7974
 2b6:	683d                	.insn	2, 0x683d
 2b8:	6469                	.insn	2, 0x6469
 2ba:	6564                	.insn	2, 0x6564
 2bc:	006e                	.insn	2, 0x006e
 2be:	465f 5f50 4150      	.insn	6, 0x41505f50465f
 2c4:	525f4b43          	.insn	4, 0x525f4b43
 2c8:	5741                	.insn	2, 0x5741
 2ca:	315f 665f 6f6c      	.insn	6, 0x6f6c665f315f
 2d0:	5f00                	.insn	2, 0x5f00
 2d2:	635f 7a6c 6973      	.insn	6, 0x69737a6c635f
 2d8:	0032                	.insn	2, 0x0032
 2da:	665f 7865 5f00      	.insn	6, 0x5f007865665f
 2e0:	5046                	.insn	2, 0x5046
 2e2:	505f 4341 5f4b      	.insn	6, 0x5f4b4341505f
 2e8:	4f4e4143          	.insn	4, 0x4f4e4143
 2ec:	494e                	.insn	2, 0x494e
 2ee:	5f4c4143          	.insn	4, 0x5f4c4143
 2f2:	7369                	.insn	2, 0x7369
 2f4:	745f 6e69 0079      	.insn	6, 0x00796e69745f
 2fa:	465f 5f50 4150      	.insn	6, 0x41505f50465f
 300:	435f4b43          	.insn	4, 0x435f4b43
 304:	4e41                	.insn	2, 0x4e41
 306:	43494e4f          	.insn	4, 0x43494e4f
 30a:	4c41                	.insn	2, 0x4c41
 30c:	545f 665f 5f00      	.insn	6, 0x5f00665f545f
 312:	5046                	.insn	2, 0x5046
 314:	555f 504e 4341      	.insn	6, 0x4341504e555f
 31a:	41525f4b          	.insn	4, 0x41525f4b
 31e:	5f315f57          	.insn	4, 0x5f315f57
 322:	6c66                	.insn	2, 0x6c66
 324:	5f5f006f          	j	f1118 <COOLING_THRESHOLD_ON+0xf10be>
 328:	6964                	.insn	2, 0x6964
 32a:	7376                	.insn	2, 0x7376
 32c:	3366                	.insn	2, 0x3366
 32e:	7300                	.insn	2, 0x7300
 330:	6769                	.insn	2, 0x6769
 332:	006e                	.insn	2, 0x006e
 334:	465f 5f50 4150      	.insn	6, 0x41505f50465f
 33a:	435f4b43          	.insn	4, 0x435f4b43
 33e:	4e41                	.insn	2, 0x4e41
 340:	43494e4f          	.insn	4, 0x43494e4f
 344:	4c41                	.insn	2, 0x4c41
 346:	545f 655f 5f00      	.insn	6, 0x5f00655f545f
 34c:	5046                	.insn	2, 0x5046
 34e:	445f 5649 4d5f      	.insn	6, 0x4d5f5649445f
 354:	4145                	.insn	2, 0x4145
 356:	5f54                	.insn	2, 0x5f54
 358:	5f31                	.insn	2, 0x5f31
 35a:	6475                	.insn	2, 0x6475
 35c:	7669                	.insn	2, 0x7669
 35e:	6e5f 726f 5f6d      	.insn	6, 0x5f6d726f6e5f
 364:	686e                	.insn	2, 0x686e
 366:	5f00                	.insn	2, 0x5f00
 368:	5046                	.insn	2, 0x5046
 36a:	445f 5649 4d5f      	.insn	6, 0x4d5f5649445f
 370:	4145                	.insn	2, 0x4145
 372:	5f54                	.insn	2, 0x5f54
 374:	5f31                	.insn	2, 0x5f31
 376:	6475                	.insn	2, 0x6475
 378:	7669                	.insn	2, 0x7669
 37a:	6e5f 726f 5f6d      	.insn	6, 0x5f6d726f6e5f
 380:	0072                	.insn	2, 0x0072
 382:	465f 5f50 4150      	.insn	6, 0x41505f50465f
 388:	435f4b43          	.insn	4, 0x435f4b43
 38c:	4e41                	.insn	2, 0x4e41
 38e:	43494e4f          	.insn	4, 0x43494e4f
 392:	4c41                	.insn	2, 0x4c41
 394:	545f 635f 6600      	.insn	6, 0x6600635f545f
 39a:	6172                	.insn	2, 0x6172
 39c:	465f0063          	beq	t5,t0,7fc <COOLING_THRESHOLD_ON+0x7a2>
 3a0:	5f50                	.insn	2, 0x5f50
 3a2:	4150                	.insn	2, 0x4150
 3a4:	435f4b43          	.insn	4, 0x435f4b43
 3a8:	4e41                	.insn	2, 0x4e41
 3aa:	43494e4f          	.insn	4, 0x43494e4f
 3ae:	4c41                	.insn	2, 0x4c41
 3b0:	545f 735f 5f00      	.insn	6, 0x5f00735f545f
 3b6:	5046                	.insn	2, 0x5046
 3b8:	445f 5649 4d5f      	.insn	6, 0x4d5f5649445f
 3be:	4145                	.insn	2, 0x4145
 3c0:	5f54                	.insn	2, 0x5f54
 3c2:	5f31                	.insn	2, 0x5f31
 3c4:	6475                	.insn	2, 0x6475
 3c6:	7669                	.insn	2, 0x7669
 3c8:	6e5f 726f 5f6d      	.insn	6, 0x5f6d726f6e5f
 3ce:	0071                	.insn	2, 0x0071
 3d0:	6962                	.insn	2, 0x6962
 3d2:	7374                	.insn	2, 0x7374
 3d4:	5f00                	.insn	2, 0x5f00
 3d6:	5046                	.insn	2, 0x5046
 3d8:	445f 5649 4d5f      	.insn	6, 0x4d5f5649445f
 3de:	4145                	.insn	2, 0x4145
 3e0:	5f54                	.insn	2, 0x5f54
 3e2:	5f31                	.insn	2, 0x5f31
 3e4:	6475                	.insn	2, 0x6475
 3e6:	7669                	.insn	2, 0x7669
 3e8:	6e5f 726f 5f6d      	.insn	6, 0x5f6d726f6e5f
 3ee:	0079                	.insn	2, 0x0079
 3f0:	465f 5f50 4e55      	.insn	6, 0x4e555f50465f
 3f6:	4f49                	.insn	2, 0x4f49
 3f8:	5f4e                	.insn	2, 0x5f4e
 3fa:	46530053          	.insn	4, 0x46530053
 3fe:	7974                	.insn	2, 0x7974
 400:	6570                	.insn	2, 0x6570
 402:	5f00                	.insn	2, 0x5f00
 404:	5046                	.insn	2, 0x5046
 406:	445f 5649 4d5f      	.insn	6, 0x4d5f5649445f
 40c:	4145                	.insn	2, 0x4145
 40e:	5f54                	.insn	2, 0x5f54
 410:	5f31                	.insn	2, 0x5f31
 412:	6475                	.insn	2, 0x6475
 414:	7669                	.insn	2, 0x7669
 416:	6e5f 726f 5f6d      	.insn	6, 0x5f6d726f6e5f
 41c:	6c6e                	.insn	2, 0x6c6e
 41e:	5f00                	.insn	2, 0x5f00
 420:	5046                	.insn	2, 0x5046
 422:	555f 504e 4341      	.insn	6, 0x4341504e555f
 428:	41435f4b          	.insn	4, 0x41435f4b
 42c:	4f4e                	.insn	2, 0x4f4e
 42e:	494e                	.insn	2, 0x494e
 430:	5f4c4143          	.insn	4, 0x5f4c4143
 434:	66696873          	.insn	4, 0x66696873
 438:	0074                	.insn	2, 0x0074
 43a:	665f 6d72 5f00      	.insn	6, 0x5f006d72665f
 440:	5046                	.insn	2, 0x5046
 442:	505f 4341 5f4b      	.insn	6, 0x5f4b4341505f
 448:	494d4553          	.insn	4, 0x494d4553
 44c:	4152                	.insn	2, 0x4152
 44e:	5f545f57          	.insn	4, 0x5f545f57
 452:	0066                	.insn	2, 0x0066
 454:	465f 5f50 4150      	.insn	6, 0x41505f50465f
 45a:	535f4b43          	.insn	4, 0x535f4b43
 45e:	4d45                	.insn	2, 0x4d45
 460:	5249                	.insn	2, 0x5249
 462:	5741                	.insn	2, 0x5741
 464:	545f 635f 5f00      	.insn	6, 0x5f00635f545f
 46a:	5046                	.insn	2, 0x5046
 46c:	505f 4341 5f4b      	.insn	6, 0x5f4b4341505f
 472:	494d4553          	.insn	4, 0x494d4553
 476:	4152                	.insn	2, 0x4152
 478:	5f545f57          	.insn	4, 0x5f545f57
 47c:	0065                	.insn	2, 0x0065
 47e:	465f 5f50 4150      	.insn	6, 0x41505f50465f
 484:	535f4b43          	.insn	4, 0x535f4b43
 488:	4d45                	.insn	2, 0x4d45
 48a:	5249                	.insn	2, 0x5249
 48c:	5741                	.insn	2, 0x5741
 48e:	545f 735f 5f00      	.insn	6, 0x5f00735f545f
 494:	665f 6f6c 7461      	.insn	6, 0x74616f6c665f
 49a:	6e75                	.insn	2, 0x6e75
 49c:	66736973          	.insn	4, 0x66736973
 4a0:	5f00                	.insn	2, 0x5f00
 4a2:	5046                	.insn	2, 0x5046
 4a4:	465f 4f52 5f4d      	.insn	6, 0x5f4d4f52465f
 4aa:	4e49                	.insn	2, 0x4e49
 4ac:	5f54                	.insn	2, 0x5f54
 4ae:	7275                	.insn	2, 0x7275
 4b0:	7000                	.insn	2, 0x7000
 4b2:	6361                	.insn	2, 0x6361
 4b4:	65735f6b          	.insn	4, 0x65735f6b
 4b8:	696d                	.insn	2, 0x696d
 4ba:	6172                	.insn	2, 0x6172
 4bc:	465f0077          	.insn	4, 0x465f0077
 4c0:	5f50                	.insn	2, 0x5f50
 4c2:	5246                	.insn	2, 0x5246
 4c4:	495f4d4f          	.insn	4, 0x495f4d4f
 4c8:	544e                	.insn	2, 0x544e
 4ca:	6c5f 007a 465f      	.insn	6, 0x465f007a6c5f
 4d0:	5f50                	.insn	2, 0x5f50
 4d2:	4150                	.insn	2, 0x4150
 4d4:	535f4b43          	.insn	4, 0x535f4b43
 4d8:	4d45                	.insn	2, 0x4d45
 4da:	5249                	.insn	2, 0x5249
 4dc:	5741                	.insn	2, 0x5741
 4de:	695f 5f73 6974      	.insn	6, 0x69745f73695f
 4e4:	796e                	.insn	2, 0x796e
 4e6:	2e00                	.insn	2, 0x2e00
 4e8:	2f2e                	.insn	2, 0x2f2e
 4ea:	2e2e                	.insn	2, 0x2e2e
 4ec:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 4f0:	2e2e                	.insn	2, 0x2e2e
 4f2:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 4f6:	2d636367          	.insn	4, 0x2d636367
 4fa:	3331                	.insn	2, 0x3331
 4fc:	322e                	.insn	2, 0x322e
 4fe:	302e                	.insn	2, 0x302e
 500:	62696c2f          	.insn	4, 0x62696c2f
 504:	2f636367          	.insn	4, 0x2f636367
 508:	666e6f63          	bltu	t3,t1,b86 <COOLING_THRESHOLD_ON+0xb2c>
 50c:	6769                	.insn	2, 0x6769
 50e:	7369722f          	.insn	4, 0x7369722f
 512:	6d2f7663          	bgeu	t5,s2,bde <COOLING_THRESHOLD_ON+0xb84>
 516:	6c75                	.insn	2, 0x6c75
 518:	6964                	.insn	2, 0x6964
 51a:	00532e33          	slt	t3,t1,t0
 51e:	6975622f          	.insn	4, 0x6975622f
 522:	646c                	.insn	2, 0x646c
 524:	6363672f          	.insn	4, 0x6363672f
 528:	722d                	.insn	2, 0x722d
 52a:	7369                	.insn	2, 0x7369
 52c:	34367663          	bgeu	a2,gp,878 <COOLING_THRESHOLD_ON+0x81e>
 530:	752d                	.insn	2, 0x752d
 532:	6b6e                	.insn	2, 0x6b6e
 534:	6f6e                	.insn	2, 0x6f6e
 536:	652d6e77          	.insn	4, 0x652d6e77
 53a:	666c                	.insn	2, 0x666c
 53c:	642d                	.insn	2, 0x642d
 53e:	6642                	.insn	2, 0x6642
 540:	3336                	.insn	2, 0x3336
 542:	2f4e                	.insn	2, 0x2f4e
 544:	2d636367          	.insn	4, 0x2d636367
 548:	6972                	.insn	2, 0x6972
 54a:	36766373          	.insn	4, 0x36766373
 54e:	2d34                	.insn	2, 0x2d34
 550:	6e75                	.insn	2, 0x6e75
 552:	776f6e6b          	.insn	4, 0x776f6e6b
 556:	2d6e                	.insn	2, 0x2d6e
 558:	6c65                	.insn	2, 0x6c65
 55a:	2d66                	.insn	2, 0x2d66
 55c:	3231                	.insn	2, 0x3231
 55e:	6975622f          	.insn	4, 0x6975622f
 562:	646c                	.insn	2, 0x646c
 564:	7369722f          	.insn	4, 0x7369722f
 568:	34367663          	bgeu	a2,gp,8b4 <COOLING_THRESHOLD_ON+0x85a>
 56c:	752d                	.insn	2, 0x752d
 56e:	6b6e                	.insn	2, 0x6b6e
 570:	6f6e                	.insn	2, 0x6f6e
 572:	652d6e77          	.insn	4, 0x652d6e77
 576:	666c                	.insn	2, 0x666c
 578:	3376722f          	.insn	4, 0x3376722f
 57c:	6932                	.insn	2, 0x6932
 57e:	706c692f          	.insn	4, 0x706c692f
 582:	6c2f3233          	.insn	4, 0x6c2f3233
 586:	6269                	.insn	2, 0x6269
 588:	00636367          	.insn	4, 0x00636367
 58c:	20554e47          	.insn	4, 0x20554e47
 590:	5341                	.insn	2, 0x5341
 592:	3220                	.insn	2, 0x3220
 594:	342e                	.insn	2, 0x342e
 596:	0032                	.insn	2, 0x0032
 598:	2e2e                	.insn	2, 0x2e2e
 59a:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 59e:	2e2e                	.insn	2, 0x2e2e
 5a0:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 5a4:	2e2e                	.insn	2, 0x2e2e
 5a6:	6363672f          	.insn	4, 0x6363672f
 5aa:	312d                	.insn	2, 0x312d
 5ac:	2e322e33          	.insn	4, 0x2e322e33
 5b0:	2f30                	.insn	2, 0x2f30
 5b2:	696c                	.insn	2, 0x696c
 5b4:	6762                	.insn	2, 0x6762
 5b6:	632f6363          	bltu	t5,s2,bdc <COOLING_THRESHOLD_ON+0xb82>
 5ba:	69666e6f          	jal	t3,66c50 <COOLING_THRESHOLD_ON+0x66bf6>
 5be:	69722f67          	.insn	4, 0x69722f67
 5c2:	2f766373          	.insn	4, 0x2f766373
 5c6:	6964                	.insn	2, 0x6964
 5c8:	2e76                	.insn	2, 0x2e76
 5ca:	5f5f0053          	.insn	4, 0x5f5f0053
 5ce:	6964                	.insn	2, 0x6964
 5d0:	7376                	.insn	2, 0x7376
 5d2:	3369                	.insn	2, 0x3369
 5d4:	5f00                	.insn	2, 0x5f00
 5d6:	685f 6469 6564      	.insn	6, 0x65646469685f
 5dc:	5f6e                	.insn	2, 0x5f6e
 5de:	5f5f 6475 7669      	.insn	6, 0x766964755f5f
 5e4:	00336973          	.insn	4, 0x00336973
 5e8:	5f5f 6f6d 7364      	.insn	6, 0x73646f6d5f5f
 5ee:	3369                	.insn	2, 0x3369
	...

Disassembly of section .debug_line_str:

00000000 <.debug_line_str>:
   0:	6975622f          	.insn	4, 0x6975622f
   4:	646c                	.insn	2, 0x646c
   6:	6363672f          	.insn	4, 0x6363672f
   a:	722d                	.insn	2, 0x722d
   c:	7369                	.insn	2, 0x7369
   e:	34367663          	bgeu	a2,gp,35a <COOLING_THRESHOLD_ON+0x300>
  12:	752d                	.insn	2, 0x752d
  14:	6b6e                	.insn	2, 0x6b6e
  16:	6f6e                	.insn	2, 0x6f6e
  18:	652d6e77          	.insn	4, 0x652d6e77
  1c:	666c                	.insn	2, 0x666c
  1e:	642d                	.insn	2, 0x642d
  20:	6642                	.insn	2, 0x6642
  22:	3336                	.insn	2, 0x3336
  24:	2f4e                	.insn	2, 0x2f4e
  26:	2d636367          	.insn	4, 0x2d636367
  2a:	6972                	.insn	2, 0x6972
  2c:	36766373          	.insn	4, 0x36766373
  30:	2d34                	.insn	2, 0x2d34
  32:	6e75                	.insn	2, 0x6e75
  34:	776f6e6b          	.insn	4, 0x776f6e6b
  38:	2d6e                	.insn	2, 0x2d6e
  3a:	6c65                	.insn	2, 0x6c65
  3c:	2d66                	.insn	2, 0x2d66
  3e:	3231                	.insn	2, 0x3231
  40:	6975622f          	.insn	4, 0x6975622f
  44:	646c                	.insn	2, 0x646c
  46:	7369722f          	.insn	4, 0x7369722f
  4a:	34367663          	bgeu	a2,gp,396 <COOLING_THRESHOLD_ON+0x33c>
  4e:	752d                	.insn	2, 0x752d
  50:	6b6e                	.insn	2, 0x6b6e
  52:	6f6e                	.insn	2, 0x6f6e
  54:	652d6e77          	.insn	4, 0x652d6e77
  58:	666c                	.insn	2, 0x666c
  5a:	3376722f          	.insn	4, 0x3376722f
  5e:	6932                	.insn	2, 0x6932
  60:	706c692f          	.insn	4, 0x706c692f
  64:	6c2f3233          	.insn	4, 0x6c2f3233
  68:	6269                	.insn	2, 0x6269
  6a:	00636367          	.insn	4, 0x00636367
  6e:	2e2e                	.insn	2, 0x2e2e
  70:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
  74:	2e2e                	.insn	2, 0x2e2e
  76:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
  7a:	2e2e                	.insn	2, 0x2e2e
  7c:	6363672f          	.insn	4, 0x6363672f
  80:	312d                	.insn	2, 0x312d
  82:	2e322e33          	.insn	4, 0x2e322e33
  86:	2f30                	.insn	2, 0x2f30
  88:	696c                	.insn	2, 0x696c
  8a:	6762                	.insn	2, 0x6762
  8c:	6c2f6363          	bltu	t5,sp,752 <COOLING_THRESHOLD_ON+0x6f8>
  90:	6269                	.insn	2, 0x6269
  92:	32636367          	.insn	4, 0x32636367
  96:	632e                	.insn	2, 0x632e
  98:	2e00                	.insn	2, 0x2e00
  9a:	2f2e                	.insn	2, 0x2f2e
  9c:	2e2e                	.insn	2, 0x2e2e
  9e:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
  a2:	2e2e                	.insn	2, 0x2e2e
  a4:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
  a8:	2d636367          	.insn	4, 0x2d636367
  ac:	3331                	.insn	2, 0x3331
  ae:	322e                	.insn	2, 0x322e
  b0:	302e                	.insn	2, 0x302e
  b2:	62696c2f          	.insn	4, 0x62696c2f
  b6:	00636367          	.insn	4, 0x00636367
  ba:	696c                	.insn	2, 0x696c
  bc:	6762                	.insn	2, 0x6762
  be:	2e326363          	bltu	tp,gp,3a4 <COOLING_THRESHOLD_ON+0x34a>
  c2:	0068                	.insn	2, 0x0068
  c4:	2e2e                	.insn	2, 0x2e2e
  c6:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
  ca:	2e2e                	.insn	2, 0x2e2e
  cc:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
  d0:	2e2e                	.insn	2, 0x2e2e
  d2:	6363672f          	.insn	4, 0x6363672f
  d6:	312d                	.insn	2, 0x312d
  d8:	2e322e33          	.insn	4, 0x2e322e33
  dc:	2f30                	.insn	2, 0x2f30
  de:	696c                	.insn	2, 0x696c
  e0:	6762                	.insn	2, 0x6762
  e2:	732f6363          	bltu	t5,s2,808 <COOLING_THRESHOLD_ON+0x7ae>
  e6:	2d74666f          	jal	a2,46bbc <COOLING_THRESHOLD_ON+0x46b62>
  ea:	7066                	.insn	2, 0x7066
  ec:	7669642f          	.insn	4, 0x7669642f
  f0:	2e336673          	.insn	4, 0x2e336673
  f4:	2e2e0063          	beq	t3,sp,3d4 <COOLING_THRESHOLD_ON+0x37a>
  f8:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
  fc:	2e2e                	.insn	2, 0x2e2e
  fe:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 102:	2e2e                	.insn	2, 0x2e2e
 104:	6363672f          	.insn	4, 0x6363672f
 108:	312d                	.insn	2, 0x312d
 10a:	2e322e33          	.insn	4, 0x2e322e33
 10e:	2f30                	.insn	2, 0x2f30
 110:	696c                	.insn	2, 0x696c
 112:	6762                	.insn	2, 0x6762
 114:	732f6363          	bltu	t5,s2,83a <COOLING_THRESHOLD_ON+0x7e0>
 118:	2d74666f          	jal	a2,46bee <COOLING_THRESHOLD_ON+0x46b94>
 11c:	7066                	.insn	2, 0x7066
 11e:	7300                	.insn	2, 0x7300
 120:	6e69                	.insn	2, 0x6e69
 122:	2e656c67          	.insn	4, 0x2e656c67
 126:	0068                	.insn	2, 0x0068
 128:	2e2e                	.insn	2, 0x2e2e
 12a:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 12e:	2e2e                	.insn	2, 0x2e2e
 130:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 134:	2e2e                	.insn	2, 0x2e2e
 136:	6363672f          	.insn	4, 0x6363672f
 13a:	312d                	.insn	2, 0x312d
 13c:	2e322e33          	.insn	4, 0x2e322e33
 140:	2f30                	.insn	2, 0x2f30
 142:	696c                	.insn	2, 0x696c
 144:	6762                	.insn	2, 0x6762
 146:	732f6363          	bltu	t5,s2,86c <COOLING_THRESHOLD_ON+0x812>
 14a:	2d74666f          	jal	a2,46c20 <COOLING_THRESHOLD_ON+0x46bc6>
 14e:	7066                	.insn	2, 0x7066
 150:	6f6c662f          	.insn	4, 0x6f6c662f
 154:	7461                	.insn	2, 0x7461
 156:	6e75                	.insn	2, 0x6e75
 158:	66736973          	.insn	4, 0x66736973
 15c:	632e                	.insn	2, 0x632e
 15e:	7300                	.insn	2, 0x7300
 160:	2d74666f          	jal	a2,46c36 <COOLING_THRESHOLD_ON+0x46bdc>
 164:	7066                	.insn	2, 0x7066
 166:	682e                	.insn	2, 0x682e
 168:	2e00                	.insn	2, 0x2e00
 16a:	2f2e                	.insn	2, 0x2f2e
 16c:	2e2e                	.insn	2, 0x2e2e
 16e:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 172:	2e2e                	.insn	2, 0x2e2e
 174:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
 178:	2d636367          	.insn	4, 0x2d636367
 17c:	3331                	.insn	2, 0x3331
 17e:	322e                	.insn	2, 0x322e
 180:	302e                	.insn	2, 0x302e
 182:	62696c2f          	.insn	4, 0x62696c2f
 186:	2f636367          	.insn	4, 0x2f636367
 18a:	666e6f63          	bltu	t3,t1,808 <COOLING_THRESHOLD_ON+0x7ae>
 18e:	6769                	.insn	2, 0x6769
 190:	7369722f          	.insn	4, 0x7369722f
 194:	6d007663          	bgeu	zero,a6,860 <COOLING_THRESHOLD_ON+0x806>
 198:	6c75                	.insn	2, 0x6c75
 19a:	6964                	.insn	2, 0x6964
 19c:	00532e33          	slt	t3,t1,t0
 1a0:	6964                	.insn	2, 0x6964
 1a2:	2e76                	.insn	2, 0x2e76
 1a4:	Address 0x1a4 is out of bounds.


Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	000c                	.insn	2, 0x000c
   2:	0000                	.insn	2, 0x
   4:	ffff                	.insn	2, 0xffff
   6:	ffff                	.insn	2, 0xffff
   8:	7c010003          	lb	zero,1984(sp)
   c:	0d01                	.insn	2, 0x0d01
   e:	0002                	.insn	2, 0x0002
  10:	0044                	.insn	2, 0x0044
  12:	0000                	.insn	2, 0x
  14:	0000                	.insn	2, 0x
  16:	0000                	.insn	2, 0x
  18:	364c                	.insn	2, 0x364c
  1a:	8000                	.insn	2, 0x8000
  1c:	03a8                	.insn	2, 0x03a8
  1e:	0000                	.insn	2, 0x
  20:	0e44                	.insn	2, 0x0e44
  22:	4430                	.insn	2, 0x4430
  24:	0389                	.insn	2, 0x0389
  26:	9350                	.insn	2, 0x9350
  28:	9505                	.insn	2, 0x9505
  2a:	5c089607          	.insn	4, 0x5c089607
  2e:	0181                	.insn	2, 0x0181
  30:	0288                	.insn	2, 0x0288
  32:	0492                	.insn	2, 0x0492
  34:	0694                	.insn	2, 0x0694
  36:	0a980997          	auipc	s3,0xa980
  3a:	0a026c03          	.insn	4, 0x0a026c03
  3e:	44c1                	.insn	2, 0x44c1
  40:	58c8                	.insn	2, 0x58c8
  42:	44c9                	.insn	2, 0x44c9
  44:	44d2                	.insn	2, 0x44d2
  46:	44d444d3          	.insn	4, 0x44d444d3
  4a:	44d5                	.insn	2, 0x44d5
  4c:	44d6                	.insn	2, 0x44d6
  4e:	48d844d7          	.insn	4, 0x48d844d7
  52:	000e                	.insn	2, 0x000e
  54:	0b44                	.insn	2, 0x0b44
  56:	0000                	.insn	2, 0x
  58:	000c                	.insn	2, 0x000c
  5a:	0000                	.insn	2, 0x
  5c:	ffff                	.insn	2, 0xffff
  5e:	ffff                	.insn	2, 0xffff
  60:	7c010003          	lb	zero,1984(sp)
  64:	0d01                	.insn	2, 0x0d01
  66:	0002                	.insn	2, 0x0002
  68:	0020                	.insn	2, 0x0020
  6a:	0000                	.insn	2, 0x
  6c:	0058                	.insn	2, 0x0058
  6e:	0000                	.insn	2, 0x
  70:	39f4                	.insn	2, 0x39f4
  72:	8000                	.insn	2, 0x8000
  74:	00e0                	.insn	2, 0x00e0
  76:	0000                	.insn	2, 0x
  78:	0e44                	.insn	2, 0x0e44
  7a:	4810                	.insn	2, 0x4810
  7c:	0288                	.insn	2, 0x0288
  7e:	0181                	.insn	2, 0x0181
  80:	4402                	.insn	2, 0x4402
  82:	c10a                	.insn	2, 0xc10a
  84:	c848                	.insn	2, 0xc848
  86:	0e44                	.insn	2, 0x0e44
  88:	4400                	.insn	2, 0x4400
  8a:	000c000b          	.insn	4, 0x000c000b
  8e:	0000                	.insn	2, 0x
  90:	ffff                	.insn	2, 0xffff
  92:	ffff                	.insn	2, 0xffff
  94:	7c010003          	lb	zero,1984(sp)
  98:	0d01                	.insn	2, 0x0d01
  9a:	0002                	.insn	2, 0x0002
  9c:	000c                	.insn	2, 0x000c
  9e:	0000                	.insn	2, 0x
  a0:	008c                	.insn	2, 0x008c
  a2:	0000                	.insn	2, 0x
  a4:	3bac                	.insn	2, 0x3bac
  a6:	8000                	.insn	2, 0x8000
  a8:	004c                	.insn	2, 0x004c
	...
