.include "macros.inc"
.file "OSReset.c"

# 0x00000000 - 0x000003D4
.text
.balign 4

.fn OSRegisterResetFunction, global
/* 00000000 00000040  80 A0 00 00 */	lwz r5, ResetFunctionQueue@sda21(r0)
/* 00000004 00000044  48 00 00 08 */	b .L_0000000C
.L_00000008:
/* 00000008 00000048  80 A5 00 08 */	lwz r5, 0x8(r5)
.L_0000000C:
/* 0000000C 0000004C  28 05 00 00 */	cmplwi r5, 0x0
/* 00000010 00000050  41 82 00 14 */	beq .L_00000024
/* 00000014 00000054  80 85 00 04 */	lwz r4, 0x4(r5)
/* 00000018 00000058  80 03 00 04 */	lwz r0, 0x4(r3)
/* 0000001C 0000005C  7C 04 00 40 */	cmplw r4, r0
/* 00000020 00000060  40 81 FF E8 */	ble .L_00000008
.L_00000024:
/* 00000024 00000064  28 05 00 00 */	cmplwi r5, 0x0
/* 00000028 00000068  40 82 00 34 */	bne .L_0000005C
/* 0000002C 0000006C  38 A0 00 00 */	li r5, ResetFunctionQueue@sda21
/* 00000030 00000070  84 85 00 04 */	lwzu r4, 0x4(r5)
/* 00000034 00000074  28 04 00 00 */	cmplwi r4, 0x0
/* 00000038 00000078  40 82 00 0C */	bne .L_00000044
/* 0000003C 0000007C  90 60 00 00 */	stw r3, ResetFunctionQueue@sda21(r0)
/* 00000040 00000080  48 00 00 08 */	b .L_00000048
.L_00000044:
/* 00000044 00000084  90 64 00 08 */	stw r3, 0x8(r4)
.L_00000048:
/* 00000048 00000088  90 83 00 0C */	stw r4, 0xc(r3)
/* 0000004C 0000008C  38 00 00 00 */	li r0, 0x0
/* 00000050 00000090  90 03 00 08 */	stw r0, 0x8(r3)
/* 00000054 00000094  90 65 00 00 */	stw r3, 0x0(r5)
/* 00000058 00000098  4E 80 00 20 */	blr
.L_0000005C:
/* 0000005C 0000009C  90 A3 00 08 */	stw r5, 0x8(r3)
/* 00000060 000000A0  80 85 00 0C */	lwz r4, 0xc(r5)
/* 00000064 000000A4  90 65 00 0C */	stw r3, 0xc(r5)
/* 00000068 000000A8  28 04 00 00 */	cmplwi r4, 0x0
/* 0000006C 000000AC  90 83 00 0C */	stw r4, 0xc(r3)
/* 00000070 000000B0  40 82 00 0C */	bne .L_0000007C
/* 00000074 000000B4  90 60 00 00 */	stw r3, ResetFunctionQueue@sda21(r0)
/* 00000078 000000B8  4E 80 00 20 */	blr
.L_0000007C:
/* 0000007C 000000BC  90 64 00 08 */	stw r3, 0x8(r4)
/* 00000080 000000C0  4E 80 00 20 */	blr
.endfn OSRegisterResetFunction

.fn Reset, local
/* 00000084 000000C4  48 00 00 20 */	b .L_000000A4
.L_00000088:
/* 00000088 000000C8  7D 10 FA A6 */	mfspr r8, HID0
/* 0000008C 000000CC  61 08 00 08 */	ori r8, r8, 0x8
/* 00000090 000000D0  7D 10 FB A6 */	mtspr HID0, r8
/* 00000094 000000D4  4C 00 01 2C */	isync
/* 00000098 000000D8  7C 00 04 AC */	sync
/* 0000009C 000000DC  60 00 00 00 */	nop
/* 000000A0 000000E0  48 00 00 08 */	b .L_000000A8
.L_000000A4:
/* 000000A4 000000E4  48 00 00 20 */	b .L_000000C4
.L_000000A8:
/* 000000A8 000000E8  7C AC 42 E6 */	mftb r5, 268
.L_000000AC:
/* 000000AC 000000EC  7C CC 42 E6 */	mftb r6, 268
/* 000000B0 000000F0  7C E5 30 50 */	subf r7, r5, r6
/* 000000B4 000000F4  28 07 11 24 */	cmplwi r7, 0x1124
/* 000000B8 000000F8  41 80 FF F4 */	blt .L_000000AC
/* 000000BC 000000FC  60 00 00 00 */	nop
/* 000000C0 00000100  48 00 00 08 */	b .L_000000C8
.L_000000C4:
/* 000000C4 00000104  48 00 00 20 */	b .L_000000E4
.L_000000C8:
/* 000000C8 00000108  3D 00 CC 00 */	lis r8, 0xcc00
/* 000000CC 0000010C  61 08 30 00 */	ori r8, r8, 0x3000
/* 000000D0 00000110  38 80 00 03 */	li r4, 0x3
/* 000000D4 00000114  90 88 00 24 */	stw r4, 0x24(r8)
/* 000000D8 00000118  90 68 00 24 */	stw r3, 0x24(r8)
/* 000000DC 0000011C  60 00 00 00 */	nop
/* 000000E0 00000120  48 00 00 08 */	b .L_000000E8
.L_000000E4:
/* 000000E4 00000124  48 00 00 0C */	b .L_000000F0
.L_000000E8:
/* 000000E8 00000128  60 00 00 00 */	nop
/* 000000EC 0000012C  4B FF FF FC */	b .L_000000E8
.L_000000F0:
/* 000000F0 00000130  4B FF FF 98 */	b .L_00000088
.endfn Reset

.fn __OSDoHotReset, global
/* 000000F4 00000134  7C 08 02 A6 */	mflr r0
/* 000000F8 00000138  90 01 00 04 */	stw r0, 0x4(r1)
/* 000000FC 0000013C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 00000100 00000140  93 E1 00 14 */	stw r31, 0x14(r1)
/* 00000104 00000144  7C 7F 1B 78 */	mr r31, r3
/* 00000108 00000148  48 00 00 01 */	bl OSDisableInterrupts
/* 0000010C 0000014C  3C 60 CC 00 */	lis r3, 0xcc00
/* 00000110 00000150  38 63 20 00 */	addi r3, r3, 0x2000
/* 00000114 00000154  38 00 00 00 */	li r0, 0x0
/* 00000118 00000158  B0 03 00 02 */	sth r0, 0x2(r3)
/* 0000011C 0000015C  48 00 00 01 */	bl ICFlashInvalidate
/* 00000120 00000160  57 E3 18 38 */	slwi r3, r31, 3
/* 00000124 00000164  48 00 00 01 */	bl Reset
/* 00000128 00000168  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 0000012C 0000016C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 00000130 00000170  38 21 00 18 */	addi r1, r1, 0x18
/* 00000134 00000174  7C 08 03 A6 */	mtlr r0
/* 00000138 00000178  4E 80 00 20 */	blr
.endfn __OSDoHotReset

.fn OSResetSystem, global
/* 0000013C 0000017C  7C 08 02 A6 */	mflr r0
/* 00000140 00000180  90 01 00 04 */	stw r0, 0x4(r1)
/* 00000144 00000184  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 00000148 00000188  BF 41 00 28 */	stmw r26, 0x28(r1)
/* 0000014C 0000018C  7C 7A 1B 78 */	mr r26, r3
/* 00000150 00000190  7C 9D 23 78 */	mr r29, r4
/* 00000154 00000194  7C BE 2B 78 */	mr r30, r5
/* 00000158 00000198  48 00 00 01 */	bl OSDisableScheduler
/* 0000015C 0000019C  48 00 00 01 */	bl __OSStopAudioSystem
/* 00000160 000001A0  2C 1A 00 02 */	cmpwi r26, 0x2
/* 00000164 000001A4  40 82 00 10 */	bne .L_00000174
/* 00000168 000001A8  38 60 00 01 */	li r3, 0x1
/* 0000016C 000001AC  48 00 00 01 */	bl __PADDisableRecalibration
/* 00000170 000001B0  7C 7F 1B 78 */	mr r31, r3
.L_00000174:
/* 00000174 000001B4  48 00 00 04 */	b .L_00000178
.L_00000178:
/* 00000178 000001B8  48 00 00 04 */	b .L_0000017C
.L_0000017C:
/* 0000017C 000001BC  83 60 00 00 */	lwz r27, ResetFunctionQueue@sda21(r0)
/* 00000180 000001C0  3B 80 00 00 */	li r28, 0x0
/* 00000184 000001C4  48 00 00 04 */	b .L_00000188
.L_00000188:
/* 00000188 000001C8  48 00 00 04 */	b .L_0000018C
.L_0000018C:
/* 0000018C 000001CC  48 00 00 24 */	b .L_000001B0
.L_00000190:
/* 00000190 000001D0  38 60 00 00 */	li r3, 0x0
/* 00000194 000001D4  81 9B 00 00 */	lwz r12, 0x0(r27)
/* 00000198 000001D8  7D 88 03 A6 */	mtlr r12
/* 0000019C 000001DC  4E 80 00 21 */	blrl
/* 000001A0 000001E0  7C 60 00 34 */	cntlzw r0, r3
/* 000001A4 000001E4  83 7B 00 08 */	lwz r27, 0x8(r27)
/* 000001A8 000001E8  54 00 D9 7E */	srwi r0, r0, 5
/* 000001AC 000001EC  7F 9C 03 78 */	or r28, r28, r0
.L_000001B0:
/* 000001B0 000001F0  28 1B 00 00 */	cmplwi r27, 0x0
/* 000001B4 000001F4  40 82 FF DC */	bne .L_00000190
/* 000001B8 000001F8  48 00 00 01 */	bl __OSSyncSram
/* 000001BC 000001FC  7C 60 00 34 */	cntlzw r0, r3
/* 000001C0 00000200  54 00 D9 7E */	srwi r0, r0, 5
/* 000001C4 00000204  7F 9C 03 78 */	or r28, r28, r0
/* 000001C8 00000208  2C 1C 00 00 */	cmpwi r28, 0x0
/* 000001CC 0000020C  41 82 00 0C */	beq .L_000001D8
/* 000001D0 00000210  38 00 00 00 */	li r0, 0x0
/* 000001D4 00000214  48 00 00 08 */	b .L_000001DC
.L_000001D8:
/* 000001D8 00000218  38 00 00 01 */	li r0, 0x1
.L_000001DC:
/* 000001DC 0000021C  2C 00 00 00 */	cmpwi r0, 0x0
/* 000001E0 00000220  41 82 FF 9C */	beq .L_0000017C
/* 000001E4 00000224  2C 1A 00 01 */	cmpwi r26, 0x1
/* 000001E8 00000228  40 82 00 38 */	bne .L_00000220
/* 000001EC 0000022C  2C 1E 00 00 */	cmpwi r30, 0x0
/* 000001F0 00000230  41 82 00 30 */	beq .L_00000220
/* 000001F4 00000234  48 00 00 01 */	bl __OSLockSram
/* 000001F8 00000238  88 03 00 13 */	lbz r0, 0x13(r3)
/* 000001FC 0000023C  60 00 00 40 */	ori r0, r0, 0x40
/* 00000200 00000240  98 03 00 13 */	stb r0, 0x13(r3)
/* 00000204 00000244  38 60 00 01 */	li r3, 0x1
/* 00000208 00000248  48 00 00 01 */	bl __OSUnlockSram
/* 0000020C 0000024C  48 00 00 04 */	b .L_00000210
.L_00000210:
/* 00000210 00000250  48 00 00 04 */	b .L_00000214
.L_00000214:
/* 00000214 00000254  48 00 00 01 */	bl __OSSyncSram
/* 00000218 00000258  2C 03 00 00 */	cmpwi r3, 0x0
/* 0000021C 0000025C  41 82 FF F8 */	beq .L_00000214
.L_00000220:
/* 00000220 00000260  48 00 00 01 */	bl OSDisableInterrupts
/* 00000224 00000264  83 80 00 00 */	lwz r28, ResetFunctionQueue@sda21(r0)
/* 00000228 00000268  3B 60 00 00 */	li r27, 0x0
/* 0000022C 0000026C  48 00 00 04 */	b .L_00000230
.L_00000230:
/* 00000230 00000270  48 00 00 04 */	b .L_00000234
.L_00000234:
/* 00000234 00000274  48 00 00 24 */	b .L_00000258
.L_00000238:
/* 00000238 00000278  38 60 00 01 */	li r3, 0x1
/* 0000023C 0000027C  81 9C 00 00 */	lwz r12, 0x0(r28)
/* 00000240 00000280  7D 88 03 A6 */	mtlr r12
/* 00000244 00000284  4E 80 00 21 */	blrl
/* 00000248 00000288  7C 60 00 34 */	cntlzw r0, r3
/* 0000024C 0000028C  83 9C 00 08 */	lwz r28, 0x8(r28)
/* 00000250 00000290  54 00 D9 7E */	srwi r0, r0, 5
/* 00000254 00000294  7F 7B 03 78 */	or r27, r27, r0
.L_00000258:
/* 00000258 00000298  28 1C 00 00 */	cmplwi r28, 0x0
/* 0000025C 0000029C  40 82 FF DC */	bne .L_00000238
/* 00000260 000002A0  48 00 00 01 */	bl __OSSyncSram
/* 00000264 000002A4  48 00 00 01 */	bl LCDisable
/* 00000268 000002A8  2C 1A 00 01 */	cmpwi r26, 0x1
/* 0000026C 000002AC  40 82 00 28 */	bne .L_00000294
/* 00000270 000002B0  48 00 00 01 */	bl OSDisableInterrupts
/* 00000274 000002B4  3C 60 CC 00 */	lis r3, 0xcc00
/* 00000278 000002B8  38 63 20 00 */	addi r3, r3, 0x2000
/* 0000027C 000002BC  38 00 00 00 */	li r0, 0x0
/* 00000280 000002C0  B0 03 00 02 */	sth r0, 0x2(r3)
/* 00000284 000002C4  48 00 00 01 */	bl ICFlashInvalidate
/* 00000288 000002C8  57 A3 18 38 */	slwi r3, r29, 3
/* 0000028C 000002CC  48 00 00 01 */	bl Reset
/* 00000290 000002D0  48 00 00 60 */	b .L_000002F0
.L_00000294:
/* 00000294 000002D4  2C 1A 00 00 */	cmpwi r26, 0x0
/* 00000298 000002D8  40 82 00 58 */	bne .L_000002F0
/* 0000029C 000002DC  3C 60 80 00 */	lis r3, 0x8000
/* 000002A0 000002E0  80 63 00 DC */	lwz r3, 0xdc(r3)
/* 000002A4 000002E4  48 00 00 04 */	b .L_000002A8
.L_000002A8:
/* 000002A8 000002E8  48 00 00 04 */	b .L_000002AC
.L_000002AC:
/* 000002AC 000002EC  48 00 00 2C */	b .L_000002D8
.L_000002B0:
/* 000002B0 000002F0  A0 03 02 C8 */	lhz r0, 0x2c8(r3)
/* 000002B4 000002F4  83 63 02 FC */	lwz r27, 0x2fc(r3)
/* 000002B8 000002F8  2C 00 00 04 */	cmpwi r0, 0x4
/* 000002BC 000002FC  41 82 00 14 */	beq .L_000002D0
/* 000002C0 00000300  40 80 00 14 */	bge .L_000002D4
/* 000002C4 00000304  2C 00 00 01 */	cmpwi r0, 0x1
/* 000002C8 00000308  41 82 00 08 */	beq .L_000002D0
/* 000002CC 0000030C  48 00 00 08 */	b .L_000002D4
.L_000002D0:
/* 000002D0 00000310  48 00 00 01 */	bl OSCancelThread
.L_000002D4:
/* 000002D4 00000314  7F 63 DB 78 */	mr r3, r27
.L_000002D8:
/* 000002D8 00000318  28 03 00 00 */	cmplwi r3, 0x0
/* 000002DC 0000031C  40 82 FF D4 */	bne .L_000002B0
/* 000002E0 00000320  48 00 00 01 */	bl OSEnableScheduler
/* 000002E4 00000324  7F A3 EB 78 */	mr r3, r29
/* 000002E8 00000328  7F C4 F3 78 */	mr r4, r30
/* 000002EC 0000032C  48 00 00 01 */	bl __OSReboot
.L_000002F0:
/* 000002F0 00000330  3C 60 80 00 */	lis r3, 0x8000
/* 000002F4 00000334  80 63 00 DC */	lwz r3, 0xdc(r3)
/* 000002F8 00000338  48 00 00 04 */	b .L_000002FC
.L_000002FC:
/* 000002FC 0000033C  48 00 00 04 */	b .L_00000300
.L_00000300:
/* 00000300 00000340  48 00 00 2C */	b .L_0000032C
.L_00000304:
/* 00000304 00000344  A0 03 02 C8 */	lhz r0, 0x2c8(r3)
/* 00000308 00000348  83 63 02 FC */	lwz r27, 0x2fc(r3)
/* 0000030C 0000034C  2C 00 00 04 */	cmpwi r0, 0x4
/* 00000310 00000350  41 82 00 14 */	beq .L_00000324
/* 00000314 00000354  40 80 00 14 */	bge .L_00000328
/* 00000318 00000358  2C 00 00 01 */	cmpwi r0, 0x1
/* 0000031C 0000035C  41 82 00 08 */	beq .L_00000324
/* 00000320 00000360  48 00 00 08 */	b .L_00000328
.L_00000324:
/* 00000324 00000364  48 00 00 01 */	bl OSCancelThread
.L_00000328:
/* 00000328 00000368  7F 63 DB 78 */	mr r3, r27
.L_0000032C:
/* 0000032C 0000036C  28 03 00 00 */	cmplwi r3, 0x0
/* 00000330 00000370  40 82 FF D4 */	bne .L_00000304
/* 00000334 00000374  3F A0 80 00 */	lis r29, 0x8000
/* 00000338 00000378  38 7D 00 40 */	addi r3, r29, 0x40
/* 0000033C 0000037C  38 80 00 00 */	li r4, 0x0
/* 00000340 00000380  38 A0 00 8C */	li r5, 0x8c
/* 00000344 00000384  48 00 00 01 */	bl memset
/* 00000348 00000388  38 7D 00 D4 */	addi r3, r29, 0xd4
/* 0000034C 0000038C  38 80 00 00 */	li r4, 0x0
/* 00000350 00000390  38 A0 00 14 */	li r5, 0x14
/* 00000354 00000394  48 00 00 01 */	bl memset
/* 00000358 00000398  38 7D 00 F4 */	addi r3, r29, 0xf4
/* 0000035C 0000039C  38 80 00 00 */	li r4, 0x0
/* 00000360 000003A0  38 A0 00 04 */	li r5, 0x4
/* 00000364 000003A4  48 00 00 01 */	bl memset
/* 00000368 000003A8  38 7D 30 00 */	addi r3, r29, 0x3000
/* 0000036C 000003AC  38 80 00 00 */	li r4, 0x0
/* 00000370 000003B0  38 A0 00 C0 */	li r5, 0xc0
/* 00000374 000003B4  48 00 00 01 */	bl memset
/* 00000378 000003B8  38 7D 30 C8 */	addi r3, r29, 0x30c8
/* 0000037C 000003BC  38 80 00 00 */	li r4, 0x0
/* 00000380 000003C0  38 A0 00 0C */	li r5, 0xc
/* 00000384 000003C4  48 00 00 01 */	bl memset
/* 00000388 000003C8  7F E3 FB 78 */	mr r3, r31
/* 0000038C 000003CC  48 00 00 01 */	bl __PADDisableRecalibration
/* 00000390 000003D0  BB 41 00 28 */	lmw r26, 0x28(r1)
/* 00000394 000003D4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 00000398 000003D8  38 21 00 40 */	addi r1, r1, 0x40
/* 0000039C 000003DC  7C 08 03 A6 */	mtlr r0
/* 000003A0 000003E0  4E 80 00 20 */	blr
.endfn OSResetSystem

.fn OSGetResetCode, global
/* 000003A4 000003E4  3C 60 80 00 */	lis r3, 0x8000
/* 000003A8 000003E8  88 03 30 E2 */	lbz r0, 0x30e2(r3)
/* 000003AC 000003EC  28 00 00 00 */	cmplwi r0, 0x0
/* 000003B0 000003F0  41 82 00 0C */	beq .L_000003BC
/* 000003B4 000003F4  3C 60 80 00 */	lis r3, 0x8000
/* 000003B8 000003F8  48 00 00 18 */	b .L_000003D0
.L_000003BC:
/* 000003BC 000003FC  3C 60 CC 00 */	lis r3, 0xcc00
/* 000003C0 00000400  38 63 30 00 */	addi r3, r3, 0x3000
/* 000003C4 00000404  80 03 00 24 */	lwz r0, 0x24(r3)
/* 000003C8 00000408  54 00 00 38 */	clrrwi r0, r0, 3
/* 000003CC 0000040C  54 03 E8 FE */	srwi r3, r0, 3
.L_000003D0:
/* 000003D0 00000410  4E 80 00 20 */	blr
.endfn OSGetResetCode

# 0x00000000 - 0x00000008
.section .sbss, "wa", @nobits
.balign 8

.obj ResetFunctionQueue, local
	.skip 0x8
.endobj ResetFunctionQueue