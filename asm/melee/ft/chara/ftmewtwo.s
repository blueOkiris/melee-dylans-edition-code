.include "macros.inc"

.section .text  # 0x80005940 - 0x803B7240

.section .data
    .balign 8
.global as_table_mewtwo
as_table_mewtwo:
    .4byte 0x00000127
    .4byte 0x00340111
    .4byte 0x12000000
    .4byte ftMewtwo_SpecialNStart_Anim
    .4byte ftMewtwo_SpecialNStart_IASA
    .4byte ftMewtwo_SpecialNStart_Phys
    .4byte ftMewtwo_SpecialNStart_Coll
    .4byte func_800761C8
    .4byte 0x00000128
    .4byte 0x003C0111
    .4byte 0x12000000
    .4byte ftMewtwo_SpecialNLoop_Anim
    .4byte ftMewtwo_SpecialNLoop_IASA
    .4byte ftMewtwo_SpecialNLoop_Phys
    .4byte ftMewtwo_SpecialNLoop_Coll
    .4byte func_800761C8
    .4byte 0x00000129
    .4byte 0x003C0111
    .4byte 0x12000000
    .4byte ftMewtwo_SpecialNFull_Anim
    .4byte ftMewtwo_SpecialNFull_IASA
    .4byte ftMewtwo_SpecialNFull_Phys
    .4byte ftMewtwo_SpecialNFull_Coll
    .4byte func_800761C8
    .4byte 0x0000012A
    .4byte 0x00340111
    .4byte 0x12000000
    .4byte ftMewtwo_SpecialNCancel_Anim
    .4byte ftMewtwo_SpecialNCancel_IASA
    .4byte ftMewtwo_SpecialNCancel_Phys
    .4byte ftMewtwo_SpecialNCancel_Coll
    .4byte func_800761C8
    .4byte 0x0000012B
    .4byte 0x00340111
    .4byte 0x12000000
    .4byte ftMewtwo_SpecialNEnd_Anim
    .4byte ftMewtwo_SpecialNEnd_IASA
    .4byte ftMewtwo_SpecialNEnd_Phys
    .4byte ftMewtwo_SpecialNEnd_Coll
    .4byte func_800761C8
    .4byte 0x0000012C
    .4byte 0x00340511
    .4byte 0x12000000
    .4byte ftMewtwo_SpecialAirNStart_Anim
    .4byte ftMewtwo_SpecialAirNStart_IASA
    .4byte ftMewtwo_SpecialAirNStart_Phys
    .4byte ftMewtwo_SpecialAirNStart_Coll
    .4byte func_800761C8
    .4byte 0x0000012D
    .4byte 0x003C0511
    .4byte 0x12000000
    .4byte ftMewtwo_SpecialAirNLoop_Anim
    .4byte ftMewtwo_SpecialAirNLoop_IASA
    .4byte ftMewtwo_SpecialAirNLoop_Phys
    .4byte ftMewtwo_SpecialAirNLoop_Coll
    .4byte func_800761C8
    .4byte 0x0000012E
    .4byte 0x003C0511
    .4byte 0x12000000
    .4byte ftMewtwo_SpecialAirNFull_Anim
    .4byte ftMewtwo_SpecialAirNFull_IASA
    .4byte ftMewtwo_SpecialAirNFull_Phys
    .4byte ftMewtwo_SpecialAirNFull_Coll
    .4byte func_800761C8
    .4byte 0x0000012F
    .4byte 0x00340511
    .4byte 0x12000000
    .4byte ftMewtwo_SpecialAirNCancel_Anim
    .4byte ftMewtwo_SpecialAirNCancel_IASA
    .4byte ftMewtwo_SpecialAirNCancel_Phys
    .4byte ftMewtwo_SpecialAirNCancel_Coll
    .4byte func_800761C8
    .4byte 0x00000130
    .4byte 0x00340511
    .4byte 0x12000000
    .4byte ftMewtwo_SpecialAirNEnd_Anim
    .4byte ftMewtwo_SpecialAirNEnd_IASA
    .4byte ftMewtwo_SpecialAirNEnd_Phys
    .4byte ftMewtwo_SpecialAirNEnd_Coll
    .4byte func_800761C8
    .4byte 0x00000131
    .4byte 0x00341012
    .4byte 0x13000000
    .4byte ftMewtwo_SpecialS_Anim
    .4byte ftMewtwo_SpecialS_IASA
    .4byte ftMewtwo_SpecialS_Phys
    .4byte ftMewtwo_SpecialS_Coll
    .4byte func_800761C8
    .4byte 0x00000132
    .4byte 0x00341412
    .4byte 0x13000000
    .4byte ftMewtwo_SpecialAirS_Anim
    .4byte ftMewtwo_SpecialAirS_IASA
    .4byte ftMewtwo_SpecialAirS_Phys
    .4byte ftMewtwo_SpecialAirS_Coll
    .4byte func_800761C8
    .4byte 0x00000133
    .4byte 0x00340013
    .4byte 0x14000000
    .4byte ftMewtwo_SpecialHiStart_Anim
    .4byte ftMewtwo_SpecialHiStart_IASA
    .4byte ftMewtwo_SpecialHiStart_Phys
    .4byte ftMewtwo_SpecialHiStart_Coll
    .4byte func_800761C8
    .4byte 0x00000135
    .4byte 0x00340013
    .4byte 0x14000000
    .4byte ftMewtwo_SpecialHi_Anim
    .4byte ftMewtwo_SpecialHi_IASA
    .4byte ftMewtwo_SpecialHi_Phys
    .4byte ftMewtwo_SpecialHi_Coll
    .4byte func_800761C8
    .4byte 0x00000134
    .4byte 0x00340013
    .4byte 0x14000000
    .4byte ftMewtwo_SpecialHiLost_Anim
    .4byte ftMewtwo_SpecialHiLost_IASA
    .4byte ftMewtwo_SpecialHiLost_Phys
    .4byte ftMewtwo_SpecialHiLost_Coll
    .4byte func_800761C8
    .4byte 0x00000136
    .4byte 0x00340413
    .4byte 0x14000000
    .4byte ftMewtwo_SpecialAirHiStart_Anim
    .4byte ftMewtwo_SpecialAirHiStart_IASA
    .4byte ftMewtwo_SpecialAirHiStart_Phys
    .4byte ftMewtwo_SpecialAirHiStart_Coll
    .4byte func_800761C8
    .4byte 0x00000135
    .4byte 0x00340413
    .4byte 0x14000000
    .4byte ftMewtwo_SpecialAirHi_Anim
    .4byte ftMewtwo_SpecialAirHi_IASA
    .4byte ftMewtwo_SpecialAirHi_Phys
    .4byte ftMewtwo_SpecialAirHi_Coll
    .4byte func_800761C8
    .4byte 0x00000137
    .4byte 0x00340413
    .4byte 0x14000000
    .4byte ftMewtwo_SpecialAirHiLost_Anim
    .4byte ftMewtwo_SpecialAirHiLost_IASA
    .4byte ftMewtwo_SpecialAirHiLost_Phys
    .4byte ftMewtwo_SpecialAirHiLost_Coll
    .4byte func_800761C8
    .4byte 0x00000138
    .4byte 0x00340114
    .4byte 0x15000000
    .4byte ftMewtwo_SpecialLw_Anim
    .4byte ftMewtwo_SpecialLw_IASA
    .4byte ftMewtwo_SpecialLw_Phys
    .4byte ftMewtwo_SpecialLw_Coll
    .4byte func_800761C8
    .4byte 0x00000139
    .4byte 0x00340514
    .4byte 0x15000000
    .4byte ftMewtwo_SpecialAirLw_Anim
    .4byte ftMewtwo_SpecialAirLw_IASA
    .4byte ftMewtwo_SpecialAirLw_Phys
    .4byte ftMewtwo_SpecialAirLw_Coll
    .4byte func_800761C8
.global lbl_803D0D80
lbl_803D0D80:
    .asciz "PlMt.dat"
    .balign 4
.global lbl_803D0D8C
lbl_803D0D8C:
    .asciz "ftDataMewtwo"
    .balign 4
.global lbl_803D0D9C
lbl_803D0D9C:
    .asciz "PlMtNr.dat"
    .balign 4
.global lbl_803D0DA8
lbl_803D0DA8:
    .asciz "PlyMewtwo5K_Share_joint"
    .balign 4
.global lbl_803D0DC0
lbl_803D0DC0:
    .asciz "PlyMewtwo5K_Share_matanim_joint"
    .balign 4
.global lbl_803D0DE0
lbl_803D0DE0:
    .asciz "PlMtRe.dat"
    .balign 4
.global lbl_803D0DEC
lbl_803D0DEC:
    .asciz "PlyMewtwo5KRe_Share_joint"
    .balign 4
.global lbl_803D0E08
lbl_803D0E08:
    .asciz "PlyMewtwo5KRe_Share_matanim_joint"
    .balign 4
.global lbl_803D0E2C
lbl_803D0E2C:
    .asciz "PlMtBu.dat"
    .balign 4
.global lbl_803D0E38
lbl_803D0E38:
    .asciz "PlyMewtwo5KBu_Share_joint"
    .balign 4
.global lbl_803D0E54
lbl_803D0E54:
    .asciz "PlyMewtwo5KBu_Share_matanim_joint"
    .balign 4
.global lbl_803D0E78
lbl_803D0E78:
    .asciz "PlMtGr.dat"
    .balign 4
.global lbl_803D0E84
lbl_803D0E84:
    .asciz "PlyMewtwo5KGr_Share_joint"
    .balign 4
.global lbl_803D0EA0
lbl_803D0EA0:
    .asciz "PlyMewtwo5KGr_Share_matanim_joint"
    .balign 4
.global lbl_803D0EC4
lbl_803D0EC4:
    .asciz "PlMtAJ.dat"
    .balign 4
.global lbl_803D0ED0
lbl_803D0ED0:
    .asciz "ftDemoResultMotionFileMewtwo"
    .balign 4
.global lbl_803D0EF0
lbl_803D0EF0:
    .asciz "ftDemoIntroMotionFileMewtwo"
    .balign 4
.global lbl_803D0F0C
lbl_803D0F0C:
    .asciz "ftDemoEndingMotionFileMewtwo"
    .balign 4
.global lbl_803D0F2C
lbl_803D0F2C:
    .asciz "ftDemoViWaitMotionFileMewtwo"
    .balign 4
.global lbl_803D0F4C
lbl_803D0F4C:
    .4byte lbl_803D0ED0
    .4byte lbl_803D0EF0
    .4byte lbl_803D0F0C
    .4byte lbl_803D0F2C
.global lbl_803D0F5C
lbl_803D0F5C:
    .4byte lbl_803D0D9C
    .4byte lbl_803D0DA8
    .4byte lbl_803D0DC0
    .4byte lbl_803D0DE0
    .4byte lbl_803D0DEC
    .4byte lbl_803D0E08
    .4byte lbl_803D0E2C
    .4byte lbl_803D0E38
    .4byte lbl_803D0E54
    .4byte lbl_803D0E78
    .4byte lbl_803D0E84
    .4byte lbl_803D0EA0
    .4byte NULL
