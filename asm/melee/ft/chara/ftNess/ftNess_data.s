.include "macros.inc"

.section .text  # 0x80005940 - 0x803B7240

.section .data
    .balign 8
.global as_table_ness
as_table_ness:
    .4byte 0x0000003E
    .4byte 0x00241A09
    .4byte 0x0A000000
    .4byte ftNess_AttackS4_Anim
    .4byte ftNess_AttackS4_IASA
    .4byte ftNess_AttackS4_Phys
    .4byte ftNess_AttackS4_Coll
    .4byte func_800761C8
    .4byte 0x00000042
    .4byte 0x00240A0A
    .4byte 0x0B800000
    .4byte ftNess_AttackHi4_Anim
    .4byte ftNess_AttackHi4_IASA
    .4byte ftNess_AttackHi4_Phys
    .4byte ftNess_AttackHi4_Coll
    .4byte func_800761C8
    .4byte 0x00000127
    .4byte 0x0024080A
    .4byte 0x0B000000
    .4byte ftNess_AttackHi4_Charge_Anim
    .4byte ftNess_AttackHi4_Charge_IASA
    .4byte ftNess_AttackHi4_Charge_Phys
    .4byte ftNess_AttackHi4_Charge_Coll
    .4byte func_800761C8
    .4byte 0x00000128
    .4byte 0x0024080A
    .4byte 0x0B000000
    .4byte ftNess_AttackHi4_Release_Anim
    .4byte ftNess_AttackHi4_Release_IASA
    .4byte ftNess_AttackHi4_Release_Phys
    .4byte ftNess_AttackHi4_Release_Coll
    .4byte func_800761C8
    .4byte 0x00000043
    .4byte 0x00240A0B
    .4byte 0x0C800000
    .4byte ftNess_AttackLw4_Anim
    .4byte ftNess_AttackLw4_IASA
    .4byte ftNess_AttackLw4_Phys
    .4byte ftNess_AttackLw4_Coll
    .4byte func_800761C8
    .4byte 0x00000129
    .4byte 0x0024080B
    .4byte 0x0C000000
    .4byte ftNess_AttackLw4_Charge_Anim
    .4byte ftNess_AttackLw4_Charge_IASA
    .4byte ftNess_AttackLw4_Charge_Phys
    .4byte ftNess_AttackLw4_Charge_Coll
    .4byte func_800761C8
    .4byte 0x0000012A
    .4byte 0x0024080B
    .4byte 0x0C000000
    .4byte ftNess_AttackLw4_Release_Anim
    .4byte ftNess_AttackLw4_Release_IASA
    .4byte ftNess_AttackLw4_Release_Phys
    .4byte ftNess_AttackLw4_Release_Coll
    .4byte func_800761C8
    .4byte 0x0000012B
    .4byte 0x00340111
    .4byte 0x12000000
    .4byte ftNess_SpecialNStart_Anim
    .4byte ftNess_SpecialNStart_IASA
    .4byte ftNess_SpecialNStart_Phys
    .4byte ftNess_SpecialNStart_Coll
    .4byte func_800761C8
    .4byte 0x0000012C
    .4byte 0x00340111
    .4byte 0x12000000
    .4byte ftNess_SpecialNHold_Anim
    .4byte ftNess_SpecialNHold_IASA
    .4byte ftNess_SpecialNHold_Phys
    .4byte ftNess_SpecialNHold_Coll
    .4byte func_800761C8
    .4byte 0x0000012D
    .4byte 0x00340111
    .4byte 0x12000000
    .4byte ftNess_SpecialNHold_Anim
    .4byte ftNess_SpecialNHold_IASA
    .4byte ftNess_SpecialNHold_Phys
    .4byte ftNess_SpecialNHold_Coll
    .4byte func_800761C8
    .4byte 0x0000012E
    .4byte 0x00340111
    .4byte 0x12000000
    .4byte ftNess_SpecialNEnd_Anim
    .4byte ftNess_SpecialNEnd_IASA
    .4byte ftNess_SpecialNEnd_Phys
    .4byte ftNess_SpecialNEnd_Coll
    .4byte func_800761C8
    .4byte 0x0000012F
    .4byte 0x00340511
    .4byte 0x12000000
    .4byte ftNess_SpecialAirNStart_Anim
    .4byte ftNess_SpecialAirNStart_IASA
    .4byte ftNess_SpecialAirNStart_Phys
    .4byte ftNess_SpecialAirNStart_Coll
    .4byte func_800761C8
    .4byte 0x00000130
    .4byte 0x00340511
    .4byte 0x12000000
    .4byte ftNess_SpecialAirNHold_Anim
    .4byte ftNess_SpecialAirNHold_IASA
    .4byte ftNess_SpecialAirNHold_Phys
    .4byte ftNess_SpecialAirNHold_Coll
    .4byte func_800761C8
    .4byte 0x00000131
    .4byte 0x00340511
    .4byte 0x12000000
    .4byte ftNess_SpecialAirNHold_Anim
    .4byte ftNess_SpecialAirNHold_IASA
    .4byte ftNess_SpecialAirNHold_Phys
    .4byte ftNess_SpecialAirNHold_Coll
    .4byte func_800761C8
    .4byte 0x00000132
    .4byte 0x00340511
    .4byte 0x12000000
    .4byte ftNess_SpecialAirNEnd_Anim
    .4byte ftNess_SpecialAirNEnd_IASA
    .4byte ftNess_SpecialAirNEnd_Phys
    .4byte ftNess_SpecialAirNEnd_Coll
    .4byte func_800761C8
    .4byte 0x00000133
    .4byte 0x00340112
    .4byte 0x13000000
    .4byte ftNess_SpecialS_Anim
    .4byte NULL
    .4byte ftNess_SpecialS_Phys
    .4byte ftNess_SpecialS_Coll
    .4byte func_800761C8
    .4byte 0x00000134
    .4byte 0x00340512
    .4byte 0x13000000
    .4byte ftNess_SpecialAirS_Anim
    .4byte NULL
    .4byte ftNess_SpecialAirS_Phys
    .4byte ftNess_SpecialAirS_Coll
    .4byte func_800761C8
    .4byte 0x00000135
    .4byte 0x00340113
    .4byte 0x14000000
    .4byte ftNess_SpecialHiStart_Anim
    .4byte ftNess_SpecialHiStart_IASA
    .4byte ftNess_SpecialHiStart_Phys
    .4byte ftNess_SpecialHiStart_Coll
    .4byte func_800761C8
    .4byte 0x00000136
    .4byte 0x00340113
    .4byte 0x14000000
    .4byte ftNess_SpecialHiHold_Anim
    .4byte ftNess_SpecialHiHold_IASA
    .4byte ftNess_SpecialHiHold_Phys
    .4byte ftNess_SpecialHiHold_Coll
    .4byte func_800761C8
    .4byte 0x00000137
    .4byte 0x00340113
    .4byte 0x14000000
    .4byte ftNess_SpecialHiEnd_Anim
    .4byte ftNess_SpecialHiEnd_IASA
    .4byte ftNess_SpecialHiEnd_Phys
    .4byte ftNess_SpecialHiEnd_Coll
    .4byte func_800761C8
    .4byte 0x00000138
    .4byte 0x00340113
    .4byte 0x14000000
    .4byte ftNess_SpecialHi_Anim
    .4byte ftNess_SpecialHi_IASA
    .4byte ftNess_SpecialHi_Phys
    .4byte ftNess_SpecialHi_Coll
    .4byte func_800761C8
    .4byte 0x00000139
    .4byte 0x00340513
    .4byte 0x14000000
    .4byte ftNess_SpecialAirHiStart_Anim
    .4byte ftNess_SpecialAirHiStart_IASA
    .4byte ftNess_SpecialAirHiStart_Phys
    .4byte ftNess_SpecialAirHiStart_Coll
    .4byte func_800761C8
    .4byte 0x0000013A
    .4byte 0x00340513
    .4byte 0x14000000
    .4byte ftNess_SpecialAirHiHold_Anim
    .4byte ftNess_SpecialAirHiHold_IASA
    .4byte ftNess_SpecialAirHiHold_Phys
    .4byte ftNess_SpecialAirHiHold_Coll
    .4byte func_800761C8
    .4byte 0x0000013B
    .4byte 0x00340513
    .4byte 0x14000000
    .4byte ftNess_SpecialAirHiEnd_Anim
    .4byte ftNess_SpecialAirHiEnd_IASA
    .4byte ftNess_SpecialAirHiEnd_Phys
    .4byte ftNess_SpecialAirHiEnd_Coll
    .4byte func_800761C8
    .4byte 0x0000013C
    .4byte 0x00340513
    .4byte 0x14000000
    .4byte ftNess_SpecialAirHi_Anim
    .4byte ftNess_SpecialAirHi_IASA
    .4byte ftNess_SpecialAirHi_Phys
    .4byte ftNess_SpecialAirHi_Coll
    .4byte func_800761C8
    .4byte 0x0000013D
    .4byte 0x00340113
    .4byte 0x14000000
    .4byte ftNess_SpecialAirHiRebound_Anim
    .4byte ftNess_SpecialAirHiRebound_IASA
    .4byte ftNess_SpecialAirHiRebound_Phys
    .4byte ftNess_SpecialAirHiRebound_Coll
    .4byte func_800761C8
    .4byte 0x0000013E
    .4byte 0x00340014
    .4byte 0x15000000
    .4byte ftNess_SpecialLwStart_Anim
    .4byte ftNess_SpecialLwStart_IASA
    .4byte ftNess_SpecialLwStart_Phys
    .4byte ftNess_SpecialLwStart_Coll
    .4byte func_800761C8
    .4byte 0x0000013F
    .4byte 0x003C0014
    .4byte 0x15000000
    .4byte ftNess_SpecialLwHold_Anim
    .4byte ftNess_SpecialLwHold_IASA
    .4byte ftNess_SpecialLwHold_Phys
    .4byte ftNess_SpecialLwHold_Coll
    .4byte func_800761C8
    .4byte 0x00000140
    .4byte 0x00340014
    .4byte 0x15000000
    .4byte ftNess_SpecialLwHit_Anim
    .4byte ftNess_SpecialLwHit_IASA
    .4byte ftNess_SpecialLwHit_Phys
    .4byte ftNess_SpecialLwHit_Coll
    .4byte func_800761C8
    .4byte 0x00000141
    .4byte 0x00340014
    .4byte 0x15000000
    .4byte ftNess_SpecialLwEnd_Anim
    .4byte ftNess_SpecialLwEnd_IASA
    .4byte ftNess_SpecialLwEnd_Phys
    .4byte ftNess_SpecialLwEnd_Coll
    .4byte func_800761C8
    .4byte 0x0000013F
    .4byte 0x00340014
    .4byte 0x15000000
    .4byte ftNess_SpecialLwTurn_Anim
    .4byte ftNess_SpecialLwTurn_IASA
    .4byte ftNess_SpecialLwTurn_Phys
    .4byte ftNess_SpecialLwTurn_Coll
    .4byte func_800761C8
    .4byte 0x00000142
    .4byte 0x00340414
    .4byte 0x15000000
    .4byte ftNess_SpecialAirLwStart_Anim
    .4byte ftNess_SpecialAirLwStart_IASA
    .4byte ftNess_SpecialAirLwStart_Phys
    .4byte ftNess_SpecialAirLwStart_Coll
    .4byte func_800761C8
    .4byte 0x00000143
    .4byte 0x003C0414
    .4byte 0x15000000
    .4byte ftNess_SpecialAirLwHold_Anim
    .4byte ftNess_SpecialAirLwHold_IASA
    .4byte ftNess_SpecialAirLwHold_Phys
    .4byte ftNess_SpecialAirLwHold_Coll
    .4byte func_800761C8
    .4byte 0x00000144
    .4byte 0x00340414
    .4byte 0x15000000
    .4byte ftNess_SpecialAirLwHit_Anim
    .4byte ftNess_SpecialAirLwHit_IASA
    .4byte ftNess_SpecialAirLwHit_Phys
    .4byte ftNess_SpecialAirLwHit_Coll
    .4byte func_800761C8
    .4byte 0x00000145
    .4byte 0x00340414
    .4byte 0x15000000
    .4byte ftNess_SpecialAirLwEnd_Anim
    .4byte ftNess_SpecialAirLwEnd_IASA
    .4byte ftNess_SpecialAirLwEnd_Phys
    .4byte ftNess_SpecialAirLwEnd_Coll
    .4byte func_800761C8
    .4byte 0x00000143
    .4byte 0x00340414
    .4byte 0x15000000
    .4byte ftNess_SpecialAirLwTurn_Anim
    .4byte ftNess_SpecialAirLwTurn_IASA
    .4byte ftNess_SpecialAirLwTurn_Phys
    .4byte ftNess_SpecialAirLwTurn_Coll
    .4byte func_800761C8
.global lbl_803CCAD0
lbl_803CCAD0:
    .asciz "PlNs.dat"
    .balign 4
.global lbl_803CCADC
lbl_803CCADC:
    .asciz "ftDataNess"
    .balign 4
.global lbl_803CCAE8
lbl_803CCAE8:
    .asciz "PlNsNr.dat"
    .balign 4
.global lbl_803CCAF4
lbl_803CCAF4:
    .asciz "PlyNess5K_Share_joint"
    .balign 4
.global lbl_803CCB0C
lbl_803CCB0C:
    .asciz "PlyNess5K_Share_matanim_joint"
    .balign 4
.global lbl_803CCB2C
lbl_803CCB2C:
    .asciz "PlNsYe.dat"
    .balign 4
.global lbl_803CCB38
lbl_803CCB38:
    .asciz "PlyNess5KYe_Share_joint"
    .balign 4
.global lbl_803CCB50
lbl_803CCB50:
    .asciz "PlyNess5KYe_Share_matanim_joint"
    .balign 4
.global lbl_803CCB70
lbl_803CCB70:
    .asciz "PlNsBu.dat"
    .balign 4
.global lbl_803CCB7C
lbl_803CCB7C:
    .asciz "PlyNess5KBu_Share_joint"
    .balign 4
.global lbl_803CCB94
lbl_803CCB94:
    .asciz "PlyNess5KBu_Share_matanim_joint"
    .balign 4
.global lbl_803CCBB4
lbl_803CCBB4:
    .asciz "PlNsGr.dat"
    .balign 4
.global lbl_803CCBC0
lbl_803CCBC0:
    .asciz "PlyNess5KGr_Share_joint"
    .balign 4
.global lbl_803CCBD8
lbl_803CCBD8:
    .asciz "PlyNess5KGr_Share_matanim_joint"
    .balign 4
.global lbl_803CCBF8
lbl_803CCBF8:
    .asciz "PlNsAJ.dat"
    .balign 4
.global lbl_803CCC04
lbl_803CCC04:
    .asciz "ftDemoResultMotionFileNess"
    .balign 4
.global lbl_803CCC20
lbl_803CCC20:
    .asciz "ftDemoIntroMotionFileNess"
    .balign 4
.global lbl_803CCC3C
lbl_803CCC3C:
    .asciz "ftDemoEndingMotionFileNess"
    .balign 4
.global lbl_803CCC58
lbl_803CCC58:
    .asciz "ftDemoViWaitMotionFileNess"
    .balign 4
.global lbl_803CCC74
lbl_803CCC74:
    .4byte lbl_803CCC04
    .4byte lbl_803CCC20
    .4byte lbl_803CCC3C
    .4byte lbl_803CCC58
.global lbl_803CCC84
lbl_803CCC84:
    .4byte lbl_803CCAE8
    .4byte lbl_803CCAF4
    .4byte lbl_803CCB0C
    .4byte lbl_803CCB2C
    .4byte lbl_803CCB38
    .4byte lbl_803CCB50
    .4byte lbl_803CCB70
    .4byte lbl_803CCB7C
    .4byte lbl_803CCB94
    .4byte lbl_803CCBB4
    .4byte lbl_803CCBC0
    .4byte lbl_803CCBD8
    .4byte NULL


.section .rodata
    .balign 8
.global lbl_803B7598
lbl_803B7598:
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
.global lbl_803B75A4
lbl_803B75A4:
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
.global lbl_803B75B0
lbl_803B75B0:
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000