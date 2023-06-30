.include "macros.inc"

.section .text

.global it_80294364
it_80294364:
/* 80294364 00290F44  7C 08 02 A6 */	mflr r0
/* 80294368 00290F48  38 C0 00 00 */	li r6, 0
/* 8029436C 00290F4C  90 01 00 04 */	stw r0, 4(r1)
/* 80294370 00290F50  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80294374 00290F54  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80294378 00290F58  38 81 00 14 */	addi r4, r1, 0x14
/* 8029437C 00290F5C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80294380 00290F60  93 A1 00 34 */	stw r29, 0x34(r1)
/* 80294384 00290F64  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 80294388 00290F68  88 0D B6 60 */	lbz r0, it_804D6D00@sda21(r13)
/* 8029438C 00290F6C  80 65 00 C4 */	lwz r3, 0xc4(r5)
/* 80294390 00290F70  7C BE 2B 78 */	mr r30, r5
/* 80294394 00290F74  7C 00 07 74 */	extsb r0, r0
/* 80294398 00290F78  83 E3 00 04 */	lwz r31, 4(r3)
/* 8029439C 00290F7C  38 60 00 00 */	li r3, 0
/* 802943A0 00290F80  80 BF 00 24 */	lwz r5, 0x24(r31)
/* 802943A4 00290F84  7C 06 28 00 */	cmpw r6, r5
/* 802943A8 00290F88  7C A9 03 A6 */	mtctr r5
/* 802943AC 00290F8C  40 80 00 20 */	bge .L_802943CC
.L_802943B0:
/* 802943B0 00290F90  7C 06 00 00 */	cmpw r6, r0
/* 802943B4 00290F94  41 82 00 10 */	beq .L_802943C4
/* 802943B8 00290F98  90 C4 00 00 */	stw r6, 0(r4)
/* 802943BC 00290F9C  38 84 00 04 */	addi r4, r4, 4
/* 802943C0 00290FA0  38 63 00 01 */	addi r3, r3, 1
.L_802943C4:
/* 802943C4 00290FA4  38 C6 00 01 */	addi r6, r6, 1
/* 802943C8 00290FA8  42 00 FF E8 */	bdnz .L_802943B0
.L_802943CC:
/* 802943CC 00290FAC  48 0E C1 B5 */	bl HSD_Randi
/* 802943D0 00290FB0  54 60 10 3A */	slwi r0, r3, 2
/* 802943D4 00290FB4  38 61 00 14 */	addi r3, r1, 0x14
/* 802943D8 00290FB8  7F A3 00 2E */	lwzx r29, r3, r0
/* 802943DC 00290FBC  38 7E 00 00 */	addi r3, r30, 0
/* 802943E0 00290FC0  38 A0 00 7F */	li r5, 0x7f
/* 802943E4 00290FC4  7F A0 07 74 */	extsb r0, r29
/* 802943E8 00290FC8  98 0D B6 60 */	stb r0, it_804D6D00@sda21(r13)
/* 802943EC 00290FCC  38 C0 00 40 */	li r6, 0x40
/* 802943F0 00290FD0  93 BE 0D DC */	stw r29, 0xddc(r30)
/* 802943F4 00290FD4  80 1E 0D DC */	lwz r0, 0xddc(r30)
/* 802943F8 00290FD8  54 00 18 38 */	slwi r0, r0, 3
/* 802943FC 00290FDC  7C 9F 02 14 */	add r4, r31, r0
/* 80294400 00290FE0  80 84 00 2C */	lwz r4, 0x2c(r4)
/* 80294404 00290FE4  4B FD 6A 81 */	bl Item_8026AE84
/* 80294408 00290FE8  57 A0 18 38 */	slwi r0, r29, 3
/* 8029440C 00290FEC  7C 7F 02 14 */	add r3, r31, r0
/* 80294410 00290FF0  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80294414 00290FF4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80294418 00290FF8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8029441C 00290FFC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80294420 00291000  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 80294424 00291004  38 21 00 40 */	addi r1, r1, 0x40
/* 80294428 00291008  7C 08 03 A6 */	mtlr r0
/* 8029442C 0029100C  4E 80 00 20 */	blr

.global it_80294430
it_80294430:
/* 80294430 00291010  7C 08 02 A6 */	mflr r0
/* 80294434 00291014  90 01 00 04 */	stw r0, 4(r1)
/* 80294438 00291018  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8029443C 0029101C  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 80294440 00291020  FF E0 10 90 */	fmr f31, f2
/* 80294444 00291024  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80294448 00291028  FF C0 08 90 */	fmr f30, f1
/* 8029444C 0029102C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80294450 00291030  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80294454 00291034  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 80294458 00291038  80 9F 00 C4 */	lwz r4, 0xc4(r31)
/* 8029445C 0029103C  83 C4 00 04 */	lwz r30, 4(r4)
/* 80294460 00291040  4B FD E8 31 */	bl it_80272C90
/* 80294464 00291044  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80294468 00291048  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8029446C 0029104C  EC 3E 00 24 */	fdivs f1, f30, f0
/* 80294470 00291050  80 9F 00 CC */	lwz r4, 0xcc(r31)
/* 80294474 00291054  C0 04 00 60 */	lfs f0, 0x60(r4)
/* 80294478 00291058  EC 22 00 72 */	fmuls f1, f2, f1
/* 8029447C 0029105C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80294480 00291060  D0 3F 0D D4 */	stfs f1, 0xdd4(r31)
/* 80294484 00291064  4B FD EA F9 */	bl it_80272F7C
/* 80294488 00291068  D3 FF 0D D8 */	stfs f31, 0xdd8(r31)
/* 8029448C 0029106C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80294490 00291070  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 80294494 00291074  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80294498 00291078  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8029449C 0029107C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802944A0 00291080  38 21 00 30 */	addi r1, r1, 0x30
/* 802944A4 00291084  7C 08 03 A6 */	mtlr r0
/* 802944A8 00291088  4E 80 00 20 */	blr

.global it_802944AC
it_802944AC:
/* 802944AC 0029108C  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 802944B0 00291090  80 65 00 C4 */	lwz r3, 0xc4(r5)
/* 802944B4 00291094  C0 05 0D D4 */	lfs f0, 0xdd4(r5)
/* 802944B8 00291098  80 63 00 04 */	lwz r3, 4(r3)
/* 802944BC 0029109C  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 802944C0 002910A0  EC 01 00 32 */	fmuls f0, f1, f0
/* 802944C4 002910A4  D0 04 00 00 */	stfs f0, 0(r4)
/* 802944C8 002910A8  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 802944CC 002910AC  C0 05 0D D4 */	lfs f0, 0xdd4(r5)
/* 802944D0 002910B0  EC 01 00 32 */	fmuls f0, f1, f0
/* 802944D4 002910B4  D0 04 00 04 */	stfs f0, 4(r4)
/* 802944D8 002910B8  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 802944DC 002910BC  C0 05 0D D4 */	lfs f0, 0xdd4(r5)
/* 802944E0 002910C0  EC 01 00 32 */	fmuls f0, f1, f0
/* 802944E4 002910C4  D0 04 00 08 */	stfs f0, 8(r4)
/* 802944E8 002910C8  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 802944EC 002910CC  C0 05 0D D4 */	lfs f0, 0xdd4(r5)
/* 802944F0 002910D0  EC 01 00 32 */	fmuls f0, f1, f0
/* 802944F4 002910D4  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 802944F8 002910D8  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 802944FC 002910DC  C0 05 0D D4 */	lfs f0, 0xdd4(r5)
/* 80294500 002910E0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80294504 002910E4  D0 04 00 10 */	stfs f0, 0x10(r4)
/* 80294508 002910E8  C0 23 00 20 */	lfs f1, 0x20(r3)
/* 8029450C 002910EC  C0 05 0D D4 */	lfs f0, 0xdd4(r5)
/* 80294510 002910F0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80294514 002910F4  D0 04 00 14 */	stfs f0, 0x14(r4)
/* 80294518 002910F8  4E 80 00 20 */	blr

.global it_8029451C
it_8029451C:
/* 8029451C 002910FC  7C 08 02 A6 */	mflr r0
/* 80294520 00291100  38 80 00 00 */	li r4, 0
/* 80294524 00291104  90 01 00 04 */	stw r0, 4(r1)
/* 80294528 00291108  94 21 FF F8 */	stwu r1, -8(r1)
/* 8029452C 0029110C  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 80294530 00291110  88 05 0D CE */	lbz r0, 0xdce(r5)
/* 80294534 00291114  50 80 07 FE */	rlwimi r0, r4, 0, 0x1f, 0x1f
/* 80294538 00291118  98 05 0D CE */	stb r0, 0xdce(r5)
/* 8029453C 0029111C  C0 02 D1 60 */	lfs f0, it_804DCB40@sda21(r2)
/* 80294540 00291120  D0 05 0D D8 */	stfs f0, 0xdd8(r5)
/* 80294544 00291124  D0 05 0D D4 */	stfs f0, 0xdd4(r5)
/* 80294548 00291128  48 00 00 DD */	bl it_80294624
/* 8029454C 0029112C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80294550 00291130  38 21 00 08 */	addi r1, r1, 8
/* 80294554 00291134  7C 08 03 A6 */	mtlr r0
/* 80294558 00291138  4E 80 00 20 */	blr

.global it_8029455C
it_8029455C:
/* 8029455C 0029113C  7C 08 02 A6 */	mflr r0
/* 80294560 00291140  90 01 00 04 */	stw r0, 4(r1)
/* 80294564 00291144  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80294568 00291148  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8029456C 0029114C  7C 7F 1B 78 */	mr r31, r3
/* 80294570 00291150  C0 02 D1 64 */	lfs f0, it_804DCB44@sda21(r2)
/* 80294574 00291154  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 80294578 00291158  D0 04 00 48 */	stfs f0, 0x48(r4)
/* 8029457C 0029115C  D0 04 00 44 */	stfs f0, 0x44(r4)
/* 80294580 00291160  D0 04 00 40 */	stfs f0, 0x40(r4)
/* 80294584 00291164  4B FD 6E 0D */	bl it_8026B390
/* 80294588 00291168  38 7F 00 00 */	addi r3, r31, 0
/* 8029458C 0029116C  38 80 00 00 */	li r4, 0
/* 80294590 00291170  38 A0 00 02 */	li r5, 2
/* 80294594 00291174  4B FD 48 C9 */	bl Item_80268E5C
/* 80294598 00291178  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8029459C 0029117C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 802945A0 00291180  38 21 00 18 */	addi r1, r1, 0x18
/* 802945A4 00291184  7C 08 03 A6 */	mtlr r0
/* 802945A8 00291188  4E 80 00 20 */	blr

.global it_802945AC
it_802945AC:
/* 802945AC 0029118C  38 60 00 00 */	li r3, 0
/* 802945B0 00291190  4E 80 00 20 */	blr

.global it_802945B4
it_802945B4:
/* 802945B4 00291194  7C 08 02 A6 */	mflr r0
/* 802945B8 00291198  90 01 00 04 */	stw r0, 4(r1)
/* 802945BC 0029119C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802945C0 002911A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802945C4 002911A4  7C 7F 1B 78 */	mr r31, r3
/* 802945C8 002911A8  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 802945CC 002911AC  80 84 00 C4 */	lwz r4, 0xc4(r4)
/* 802945D0 002911B0  80 84 00 04 */	lwz r4, 4(r4)
/* 802945D4 002911B4  C0 24 00 00 */	lfs f1, 0(r4)
/* 802945D8 002911B8  4B FE 00 81 */	bl it_80274658
/* 802945DC 002911BC  7F E3 FB 78 */	mr r3, r31
/* 802945E0 002911C0  4B FE 04 85 */	bl it_80274A64
/* 802945E4 002911C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802945E8 002911C8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802945EC 002911CC  38 21 00 20 */	addi r1, r1, 0x20
/* 802945F0 002911D0  7C 08 03 A6 */	mtlr r0
/* 802945F4 002911D4  4E 80 00 20 */	blr

.global it_802945F8
it_802945F8:
/* 802945F8 002911D8  7C 08 02 A6 */	mflr r0
/* 802945FC 002911DC  3C 80 80 29 */	lis r4, it_80294624@ha
/* 80294600 002911E0  90 01 00 04 */	stw r0, 4(r1)
/* 80294604 002911E4  38 84 46 24 */	addi r4, r4, it_80294624@l
/* 80294608 002911E8  94 21 FF F8 */	stwu r1, -8(r1)
/* 8029460C 002911EC  4B FD 90 21 */	bl it_8026D62C
/* 80294610 002911F0  38 60 00 00 */	li r3, 0
/* 80294614 002911F4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80294618 002911F8  38 21 00 08 */	addi r1, r1, 8
/* 8029461C 002911FC  7C 08 03 A6 */	mtlr r0
/* 80294620 00291200  4E 80 00 20 */	blr

.global it_80294624
it_80294624:
/* 80294624 00291204  7C 08 02 A6 */	mflr r0
/* 80294628 00291208  38 80 00 01 */	li r4, 1
/* 8029462C 0029120C  90 01 00 04 */	stw r0, 4(r1)
/* 80294630 00291210  38 A0 00 02 */	li r5, 2
/* 80294634 00291214  94 21 FF F8 */	stwu r1, -8(r1)
/* 80294638 00291218  4B FD 48 25 */	bl Item_80268E5C
/* 8029463C 0029121C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80294640 00291220  38 21 00 08 */	addi r1, r1, 8
/* 80294644 00291224  7C 08 03 A6 */	mtlr r0
/* 80294648 00291228  4E 80 00 20 */	blr

.global it_8029464C
it_8029464C:
/* 8029464C 0029122C  38 60 00 00 */	li r3, 0
/* 80294650 00291230  4E 80 00 20 */	blr

.global it_80294654
it_80294654:
/* 80294654 00291234  7C 08 02 A6 */	mflr r0
/* 80294658 00291238  90 01 00 04 */	stw r0, 4(r1)
/* 8029465C 0029123C  94 21 FF F8 */	stwu r1, -8(r1)
/* 80294660 00291240  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 80294664 00291244  80 84 00 CC */	lwz r4, 0xcc(r4)
/* 80294668 00291248  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 8029466C 0029124C  C0 44 00 14 */	lfs f2, 0x14(r4)
/* 80294670 00291250  4B FD E1 F1 */	bl it_80272860
/* 80294674 00291254  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80294678 00291258  38 21 00 08 */	addi r1, r1, 8
/* 8029467C 0029125C  7C 08 03 A6 */	mtlr r0
/* 80294680 00291260  4E 80 00 20 */	blr

.global it_80294684
it_80294684:
/* 80294684 00291264  7C 08 02 A6 */	mflr r0
/* 80294688 00291268  3C 80 80 29 */	lis r4, it_8029455C@ha
/* 8029468C 0029126C  90 01 00 04 */	stw r0, 4(r1)
/* 80294690 00291270  38 84 45 5C */	addi r4, r4, it_8029455C@l
/* 80294694 00291274  94 21 FF F8 */	stwu r1, -8(r1)
/* 80294698 00291278  4B FD 9A C5 */	bl it_8026E15C
/* 8029469C 0029127C  38 60 00 00 */	li r3, 0
/* 802946A0 00291280  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802946A4 00291284  38 21 00 08 */	addi r1, r1, 8
/* 802946A8 00291288  7C 08 03 A6 */	mtlr r0
/* 802946AC 0029128C  4E 80 00 20 */	blr

.global it_802946B0
it_802946B0:
/* 802946B0 00291290  7C 08 02 A6 */	mflr r0
/* 802946B4 00291294  38 80 00 03 */	li r4, 3
/* 802946B8 00291298  90 01 00 04 */	stw r0, 4(r1)
/* 802946BC 0029129C  38 A0 00 02 */	li r5, 2
/* 802946C0 002912A0  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 802946C4 002912A4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802946C8 002912A8  93 C1 00 10 */	stw r30, 0x10(r1)
/* 802946CC 002912AC  7C 7E 1B 78 */	mr r30, r3
/* 802946D0 002912B0  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 802946D4 002912B4  4B FD 47 89 */	bl Item_80268E5C
/* 802946D8 002912B8  7F C3 F3 78 */	mr r3, r30
/* 802946DC 002912BC  4B FD E5 B5 */	bl it_80272C90
/* 802946E0 002912C0  C0 3F 0D D4 */	lfs f1, 0xdd4(r31)
/* 802946E4 002912C4  4B FD E8 99 */	bl it_80272F7C
/* 802946E8 002912C8  7F C3 F3 78 */	mr r3, r30
/* 802946EC 002912CC  C0 3F 0D D8 */	lfs f1, 0xdd8(r31)
/* 802946F0 002912D0  4B FE 0E D1 */	bl it_802755C0
/* 802946F4 002912D4  3C 80 00 44 */	lis r4, 0x0044005F@ha
/* 802946F8 002912D8  38 7E 00 00 */	addi r3, r30, 0
/* 802946FC 002912DC  38 84 00 5F */	addi r4, r4, 0x0044005F@l
/* 80294700 002912E0  4B FE 6B 89 */	bl it_8027B288
/* 80294704 002912E4  38 7E 00 00 */	addi r3, r30, 0
/* 80294708 002912E8  38 80 00 5E */	li r4, 0x5e
/* 8029470C 002912EC  4B FE 6C 25 */	bl it_8027B330
/* 80294710 002912F0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80294714 002912F4  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80294718 002912F8  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8029471C 002912FC  38 21 00 18 */	addi r1, r1, 0x18
/* 80294720 00291300  7C 08 03 A6 */	mtlr r0
/* 80294724 00291304  4E 80 00 20 */	blr

.global it_80294728
it_80294728:
/* 80294728 00291308  7C 08 02 A6 */	mflr r0
/* 8029472C 0029130C  38 80 00 02 */	li r4, 2
/* 80294730 00291310  90 01 00 04 */	stw r0, 4(r1)
/* 80294734 00291314  38 A0 00 02 */	li r5, 2
/* 80294738 00291318  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8029473C 0029131C  93 E1 00 24 */	stw r31, 0x24(r1)
/* 80294740 00291320  3B E3 00 00 */	addi r31, r3, 0
/* 80294744 00291324  4B FD 47 19 */	bl Item_80268E5C
/* 80294748 00291328  38 7F 00 00 */	addi r3, r31, 0
/* 8029474C 0029132C  38 80 00 03 */	li r4, 3
/* 80294750 00291330  4B FD E5 71 */	bl it_80272CC0
/* 80294754 00291334  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 80294758 00291338  38 E3 00 00 */	addi r7, r3, 0
/* 8029475C 0029133C  4C C6 31 82 */	crclr 6
/* 80294760 00291340  38 7F 00 00 */	addi r3, r31, 0
/* 80294764 00291344  38 84 0B C0 */	addi r4, r4, 0xbc0
/* 80294768 00291348  38 A0 00 00 */	li r5, 0
/* 8029476C 0029134C  38 C0 04 3D */	li r6, 0x43d
/* 80294770 00291350  4B DD 2F 81 */	bl efAsync_Spawn
/* 80294774 00291354  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80294778 00291358  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8029477C 0029135C  38 21 00 28 */	addi r1, r1, 0x28
/* 80294780 00291360  7C 08 03 A6 */	mtlr r0
/* 80294784 00291364  4E 80 00 20 */	blr

.global it_80294788
it_80294788:
/* 80294788 00291368  38 60 00 00 */	li r3, 0
/* 8029478C 0029136C  4E 80 00 20 */	blr

.global it_80294790
it_80294790:
/* 80294790 00291370  7C 08 02 A6 */	mflr r0
/* 80294794 00291374  38 80 00 01 */	li r4, 1
/* 80294798 00291378  90 01 00 04 */	stw r0, 4(r1)
/* 8029479C 0029137C  38 A0 00 06 */	li r5, 6
/* 802947A0 00291380  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 802947A4 00291384  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802947A8 00291388  3B E3 00 00 */	addi r31, r3, 0
/* 802947AC 0029138C  4B FD 46 B1 */	bl Item_80268E5C
/* 802947B0 00291390  7F E3 FB 78 */	mr r3, r31
/* 802947B4 00291394  4B DC 70 CD */	bl efLib_DestroyAll
/* 802947B8 00291398  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802947BC 0029139C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 802947C0 002913A0  38 21 00 18 */	addi r1, r1, 0x18
/* 802947C4 002913A4  7C 08 03 A6 */	mtlr r0
/* 802947C8 002913A8  4E 80 00 20 */	blr

.global it_802947CC
it_802947CC:
/* 802947CC 002913AC  7C 08 02 A6 */	mflr r0
/* 802947D0 002913B0  38 A0 00 02 */	li r5, 2
/* 802947D4 002913B4  90 01 00 04 */	stw r0, 4(r1)
/* 802947D8 002913B8  38 00 00 00 */	li r0, 0
/* 802947DC 002913BC  94 21 FF A8 */	stwu r1, -0x58(r1)
/* 802947E0 002913C0  BF 61 00 44 */	stmw r27, 0x44(r1)
/* 802947E4 002913C4  7C 9D 23 78 */	mr r29, r4
/* 802947E8 002913C8  7C 7C 1B 78 */	mr r28, r3
/* 802947EC 002913CC  38 80 00 05 */	li r4, 5
/* 802947F0 002913D0  C0 02 D1 64 */	lfs f0, it_804DCB44@sda21(r2)
/* 802947F4 002913D4  83 E3 00 28 */	lwz r31, 0x28(r3)
/* 802947F8 002913D8  83 C3 00 2C */	lwz r30, 0x2c(r3)
/* 802947FC 002913DC  D0 1E 00 48 */	stfs f0, 0x48(r30)
/* 80294800 002913E0  D0 1E 00 44 */	stfs f0, 0x44(r30)
/* 80294804 002913E4  D0 1E 00 40 */	stfs f0, 0x40(r30)
/* 80294808 002913E8  90 1E 0D AC */	stw r0, 0xdac(r30)
/* 8029480C 002913EC  4B FD 46 51 */	bl Item_80268E5C
/* 80294810 002913F0  80 1E 0D 90 */	lwz r0, 0xd90(r30)
/* 80294814 002913F4  38 7C 00 00 */	addi r3, r28, 0
/* 80294818 002913F8  38 9E 00 40 */	addi r4, r30, 0x40
/* 8029481C 002913FC  90 01 00 28 */	stw r0, 0x28(r1)
/* 80294820 00291400  80 BE 0D 94 */	lwz r5, 0xd94(r30)
/* 80294824 00291404  80 1E 0D 98 */	lwz r0, 0xd98(r30)
/* 80294828 00291408  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8029482C 0029140C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80294830 00291410  80 BE 0D 9C */	lwz r5, 0xd9c(r30)
/* 80294834 00291414  80 1E 0D A0 */	lwz r0, 0xda0(r30)
/* 80294838 00291418  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 8029483C 0029141C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80294840 00291420  80 1E 0D A4 */	lwz r0, 0xda4(r30)
/* 80294844 00291424  90 01 00 24 */	stw r0, 0x24(r1)
/* 80294848 00291428  A3 7E 0D A8 */	lhz r27, 0xda8(r30)
/* 8029484C 0029142C  4B FD FA 51 */	bl it_8027429C
/* 80294850 00291430  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80294854 00291434  7F 83 E3 78 */	mr r3, r28
/* 80294858 00291438  90 1E 0D 90 */	stw r0, 0xd90(r30)
/* 8029485C 0029143C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80294860 00291440  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80294864 00291444  90 9E 0D 94 */	stw r4, 0xd94(r30)
/* 80294868 00291448  90 1E 0D 98 */	stw r0, 0xd98(r30)
/* 8029486C 0029144C  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 80294870 00291450  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80294874 00291454  90 9E 0D 9C */	stw r4, 0xd9c(r30)
/* 80294878 00291458  90 1E 0D A0 */	stw r0, 0xda0(r30)
/* 8029487C 0029145C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80294880 00291460  90 1E 0D A4 */	stw r0, 0xda4(r30)
/* 80294884 00291464  B3 7E 0D A8 */	sth r27, 0xda8(r30)
/* 80294888 00291468  4B FD 6B 21 */	bl it_8026B3A8
/* 8029488C 0029146C  80 7D 00 00 */	lwz r3, 0(r29)
/* 80294890 00291470  28 1F 00 00 */	cmplwi r31, 0
/* 80294894 00291474  80 1D 00 04 */	lwz r0, 4(r29)
/* 80294898 00291478  90 7E 00 4C */	stw r3, 0x4c(r30)
/* 8029489C 0029147C  90 1E 00 50 */	stw r0, 0x50(r30)
/* 802948A0 00291480  80 1D 00 08 */	lwz r0, 8(r29)
/* 802948A4 00291484  90 1E 00 54 */	stw r0, 0x54(r30)
/* 802948A8 00291488  40 82 00 14 */	bne .L_802948BC
/* 802948AC 0029148C  38 6D 9C 30 */	addi r3, r13, it_804D52D0@sda21
/* 802948B0 00291490  38 80 03 94 */	li r4, 0x394
/* 802948B4 00291494  38 AD 9C 38 */	addi r5, r13, it_804D52D8@sda21
/* 802948B8 00291498  48 0F 39 69 */	bl __assert
.L_802948BC:
/* 802948BC 0029149C  34 1E 00 4C */	addic. r0, r30, 0x4c
/* 802948C0 002914A0  40 82 00 18 */	bne .L_802948D8
/* 802948C4 002914A4  3C 60 80 3F */	lis r3, it_803F6210@ha
/* 802948C8 002914A8  38 A3 62 10 */	addi r5, r3, it_803F6210@l
/* 802948CC 002914AC  38 6D 9C 30 */	addi r3, r13, it_804D52D0@sda21
/* 802948D0 002914B0  38 80 03 95 */	li r4, 0x395
/* 802948D4 002914B4  48 0F 39 4D */	bl __assert
.L_802948D8:
/* 802948D8 002914B8  80 7E 00 4C */	lwz r3, 0x4c(r30)
/* 802948DC 002914BC  80 1E 00 50 */	lwz r0, 0x50(r30)
/* 802948E0 002914C0  90 7F 00 38 */	stw r3, 0x38(r31)
/* 802948E4 002914C4  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 802948E8 002914C8  80 1E 00 54 */	lwz r0, 0x54(r30)
/* 802948EC 002914CC  90 1F 00 40 */	stw r0, 0x40(r31)
/* 802948F0 002914D0  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 802948F4 002914D4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 802948F8 002914D8  40 82 00 4C */	bne .L_80294944
/* 802948FC 002914DC  28 1F 00 00 */	cmplwi r31, 0
/* 80294900 002914E0  41 82 00 44 */	beq .L_80294944
/* 80294904 002914E4  40 82 00 14 */	bne .L_80294918
/* 80294908 002914E8  38 6D 9C 30 */	addi r3, r13, it_804D52D0@sda21
/* 8029490C 002914EC  38 80 02 34 */	li r4, 0x234
/* 80294910 002914F0  38 AD 9C 38 */	addi r5, r13, it_804D52D8@sda21
/* 80294914 002914F4  48 0F 39 0D */	bl __assert
.L_80294918:
/* 80294918 002914F8  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8029491C 002914FC  38 60 00 00 */	li r3, 0
/* 80294920 00291500  54 80 02 11 */	rlwinm. r0, r4, 0, 8, 8
/* 80294924 00291504  40 82 00 10 */	bne .L_80294934
/* 80294928 00291508  54 80 06 73 */	rlwinm. r0, r4, 0, 0x19, 0x19
/* 8029492C 0029150C  41 82 00 08 */	beq .L_80294934
/* 80294930 00291510  38 60 00 01 */	li r3, 1
.L_80294934:
/* 80294934 00291514  2C 03 00 00 */	cmpwi r3, 0
/* 80294938 00291518  40 82 00 0C */	bne .L_80294944
/* 8029493C 0029151C  7F E3 FB 78 */	mr r3, r31
/* 80294940 00291520  48 0D E9 A9 */	bl HSD_JObjSetMtxDirtySub
.L_80294944:
/* 80294944 00291524  38 7F 00 00 */	addi r3, r31, 0
/* 80294948 00291528  38 80 00 10 */	li r4, 0x10
/* 8029494C 0029152C  48 0D D4 51 */	bl HSD_JObjSetFlagsAll
/* 80294950 00291530  7F 83 E3 78 */	mr r3, r28
/* 80294954 00291534  4B FD 73 D1 */	bl it_8026BD24
/* 80294958 00291538  7F 83 E3 78 */	mr r3, r28
/* 8029495C 0029153C  4B FE 08 31 */	bl it_8027518C
/* 80294960 00291540  7F 83 E3 78 */	mr r3, r28
/* 80294964 00291544  4B DC 6F 1D */	bl efLib_DestroyAll
/* 80294968 00291548  80 BE 00 4C */	lwz r5, 0x4c(r30)
/* 8029496C 0029154C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80294970 00291550  80 1E 00 50 */	lwz r0, 0x50(r30)
/* 80294974 00291554  38 80 00 78 */	li r4, 0x78
/* 80294978 00291558  C0 22 D1 60 */	lfs f1, it_804DCB40@sda21(r2)
/* 8029497C 0029155C  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 80294980 00291560  C0 42 D1 68 */	lfs f2, it_804DCB48@sda21(r2)
/* 80294984 00291564  90 01 00 30 */	stw r0, 0x30(r1)
/* 80294988 00291568  C0 62 D1 6C */	lfs f3, it_804DCB4C@sda21(r2)
/* 8029498C 0029156C  80 1E 00 54 */	lwz r0, 0x54(r30)
/* 80294990 00291570  90 01 00 34 */	stw r0, 0x34(r1)
/* 80294994 00291574  4B D7 D0 49 */	bl lb_800119DC
/* 80294998 00291578  7F 83 E3 78 */	mr r3, r28
/* 8029499C 0029157C  4B FD E2 6D */	bl it_80272C08
/* 802949A0 00291580  7F 83 E3 78 */	mr r3, r28
/* 802949A4 00291584  C0 3E 0D D8 */	lfs f1, 0xdd8(r30)
/* 802949A8 00291588  4B FE 0C 19 */	bl it_802755C0
/* 802949AC 0029158C  BB 61 00 44 */	lmw r27, 0x44(r1)
/* 802949B0 00291590  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 802949B4 00291594  38 21 00 58 */	addi r1, r1, 0x58
/* 802949B8 00291598  7C 08 03 A6 */	mtlr r0
/* 802949BC 0029159C  4E 80 00 20 */	blr

.global it_802949C0
it_802949C0:
/* 802949C0 002915A0  7C 08 02 A6 */	mflr r0
/* 802949C4 002915A4  90 01 00 04 */	stw r0, 4(r1)
/* 802949C8 002915A8  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 802949CC 002915AC  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802949D0 002915B0  93 C1 00 10 */	stw r30, 0x10(r1)
/* 802949D4 002915B4  7C 7E 1B 78 */	mr r30, r3
/* 802949D8 002915B8  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 802949DC 002915BC  80 1F 0D AC */	lwz r0, 0xdac(r31)
/* 802949E0 002915C0  28 00 00 00 */	cmplwi r0, 0
/* 802949E4 002915C4  41 82 00 18 */	beq .L_802949FC
/* 802949E8 002915C8  7F C3 F3 78 */	mr r3, r30
/* 802949EC 002915CC  C0 3F 0D D8 */	lfs f1, 0xdd8(r31)
/* 802949F0 002915D0  4B FE 0B D1 */	bl it_802755C0
/* 802949F4 002915D4  38 00 00 00 */	li r0, 0
/* 802949F8 002915D8  90 1F 0D AC */	stw r0, 0xdac(r31)
.L_802949FC:
/* 802949FC 002915DC  7F C3 F3 78 */	mr r3, r30
/* 80294A00 002915E0  4B FE 07 D9 */	bl it_802751D8
/* 80294A04 002915E4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80294A08 002915E8  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80294A0C 002915EC  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80294A10 002915F0  38 21 00 18 */	addi r1, r1, 0x18
/* 80294A14 002915F4  7C 08 03 A6 */	mtlr r0
/* 80294A18 002915F8  4E 80 00 20 */	blr

.global it_80294A1C
it_80294A1C:
/* 80294A1C 002915FC  4E 80 00 20 */	blr

.global it_80294A20
it_80294A20:
/* 80294A20 00291600  38 60 00 00 */	li r3, 0
/* 80294A24 00291604  4E 80 00 20 */	blr

.global it_80294A28
it_80294A28:
/* 80294A28 00291608  7C 08 02 A6 */	mflr r0
/* 80294A2C 0029160C  38 80 00 04 */	li r4, 4
/* 80294A30 00291610  90 01 00 04 */	stw r0, 4(r1)
/* 80294A34 00291614  38 A0 00 02 */	li r5, 2
/* 80294A38 00291618  94 21 FF F8 */	stwu r1, -8(r1)
/* 80294A3C 0029161C  4B FD 44 21 */	bl Item_80268E5C
/* 80294A40 00291620  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80294A44 00291624  38 21 00 08 */	addi r1, r1, 8
/* 80294A48 00291628  7C 08 03 A6 */	mtlr r0
/* 80294A4C 0029162C  4E 80 00 20 */	blr

.global it_80294A50
it_80294A50:
/* 80294A50 00291630  38 60 00 00 */	li r3, 0
/* 80294A54 00291634  4E 80 00 20 */	blr

.global it_80294A58
it_80294A58:
/* 80294A58 00291638  4E 80 00 20 */	blr

.global it_80294A5C
it_80294A5C:
/* 80294A5C 0029163C  7C 08 02 A6 */	mflr r0
/* 80294A60 00291640  3C 80 80 29 */	lis r4, it_8029455C@ha
/* 80294A64 00291644  90 01 00 04 */	stw r0, 4(r1)
/* 80294A68 00291648  3C A0 80 29 */	lis r5, it_80294624@ha
/* 80294A6C 0029164C  38 84 45 5C */	addi r4, r4, it_8029455C@l
/* 80294A70 00291650  94 21 FF F8 */	stwu r1, -8(r1)
/* 80294A74 00291654  38 A5 46 24 */	addi r5, r5, it_80294624@l
/* 80294A78 00291658  4B FD 9E 4D */	bl it_8026E8C4
/* 80294A7C 0029165C  38 60 00 00 */	li r3, 0
/* 80294A80 00291660  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80294A84 00291664  38 21 00 08 */	addi r1, r1, 8
/* 80294A88 00291668  7C 08 03 A6 */	mtlr r0
/* 80294A8C 0029166C  4E 80 00 20 */	blr

.global it_80294A90
it_80294A90:
/* 80294A90 00291670  7C 08 02 A6 */	mflr r0
/* 80294A94 00291674  90 01 00 04 */	stw r0, 4(r1)
/* 80294A98 00291678  94 21 FF F8 */	stwu r1, -8(r1)
/* 80294A9C 0029167C  4B FD 6D F9 */	bl it_8026B894
/* 80294AA0 00291680  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80294AA4 00291684  38 21 00 08 */	addi r1, r1, 8
/* 80294AA8 00291688  7C 08 03 A6 */	mtlr r0
/* 80294AAC 0029168C  4E 80 00 20 */	blr


.section .data
    .balign 8
.global it_803F61B0
it_803F61B0:
    .4byte 0
    .4byte it_802945AC
    .4byte it_802945B4
    .4byte it_802945F8
    .4byte -1
    .4byte it_8029464C
    .4byte it_80294654
    .4byte it_80294684
    .4byte -1
    .4byte it_80294788
    .4byte NULL
    .4byte NULL
    .4byte 2
    .4byte it_80294788
    .4byte NULL
    .4byte NULL
    .4byte -1
    .4byte it_80294A50
    .4byte it_80294A58
    .4byte it_80294A5C
    .4byte 1
    .4byte it_802949C0
    .4byte it_80294A1C
    .4byte it_80294A20
.global it_803F6210
it_803F6210:
    .asciz "translate"


.section .sdata
    .balign 8
.global it_804D52D0
it_804D52D0:
    .asciz "jobj.h"
    .balign 4
.global it_804D52D8
it_804D52D8:
    .asciz "jobj"


.section .sdata2
    .balign 8
.global it_804DCB40
it_804DCB40:
    .4byte 0x3F800000
.global it_804DCB44
it_804DCB44:
    .4byte 0x00000000
.global it_804DCB48
it_804DCB48:
    .4byte 0x3CA3D70A
.global it_804DCB4C
it_804DCB4C:
    .4byte 0x3F860A92