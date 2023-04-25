#ifndef MELEE_FT_CHARA_FTLINK_FORWARD_H
#define MELEE_FT_CHARA_FTLINK_FORWARD_H

#include "ft/forward.h"
#include "ftCommon/forward.h"

static MotionFlags const ftLk_MF_Base0 ATTRIBUTE_USED =
    Ft_MF_SkipModel | Ft_MF_SkipThrowException;

static MotionFlags const ftLk_MF_Base1 ATTRIBUTE_USED =
    Ft_MF_SkipItemVis | Ft_MF_FreezeState;

static MotionFlags const ftLk_MF_Base2 ATTRIBUTE_USED =
    ftLk_MF_Base1 | Ft_MF_KeepFastFall;

static MotionFlags const ftLk_MF_Base3 ATTRIBUTE_USED =
    ftLk_MF_Base0 | Ft_MF_UnkUpdatePhys;

static MotionFlags const ftLk_MF_AttackS42 ATTRIBUTE_USED =
    ftLk_MF_Base2 | Ft_MF_SkipHit;

static MotionFlags const ftLk_MF_SpecialN ATTRIBUTE_USED =
    ftLk_MF_Base2 | ftLk_MF_Base3;

static MotionFlags const ftLk_MF_SpecialNFullyCharged ATTRIBUTE_USED =
    ftLk_MF_SpecialN | Ft_MF_Unk19;

static MotionFlags const ftLk_MF_SpecialAirNCharge ATTRIBUTE_USED =
    ftLk_MF_SpecialN | Ft_MF_SkipParasol;

static MotionFlags const ftLk_MF_SpecialAirNFullyCharged ATTRIBUTE_USED =
    ftLk_MF_SpecialNFullyCharged | Ft_MF_SkipParasol;

static MotionFlags const ftLk_MF_SpecialAirNFire ATTRIBUTE_USED =
    ftLk_MF_SpecialAirNCharge | Ft_MF_UnkUpdatePhys;

static MotionFlags const ftLk_MF_SpecialSThrow ATTRIBUTE_USED =
    ftLk_MF_Base3 | ftLk_MF_Base1 | Ft_MF_KeepGfx;

static MotionFlags const ftLk_MF_SpecialSCatch ATTRIBUTE_USED =
    ftLk_MF_SpecialSThrow | Ft_MF_UnkUpdatePhys;

static MotionFlags const ftLk_MF_SpecialAirSThrow ATTRIBUTE_USED =
    ftLk_MF_SpecialSThrow | ftLk_MF_Base3 | Ft_MF_SkipParasol;

static MotionFlags const ftLk_MF_SpecialAirSThrowEmpty ATTRIBUTE_USED =
    ftLk_MF_SpecialSCatch | ftLk_MF_Base1 | Ft_MF_SkipParasol;

static MotionFlags const ftLk_MF_SpecialHi ATTRIBUTE_USED =
    Ft_MF_KeepFastFall | Ft_MF_KeepGfx | Ft_MF_SkipModel | Ft_MF_KeepSfx |
    Ft_MF_SkipItemVis | Ft_MF_UnkUpdatePhys | Ft_MF_FreezeState;

static MotionFlags const ftLk_MF_SpecialLw ATTRIBUTE_USED =
    Ft_MF_KeepColAnimHitStatus | Ft_MF_SkipModel | Ft_MF_SkipItemVis |
    Ft_MF_UnkUpdatePhys | Ft_MF_FreezeState;

static MotionFlags const ftLk_MF_SpecialAirLw ATTRIBUTE_USED =
    ftLk_MF_SpecialLw | Ft_MF_SkipParasol;

static MotionFlags const ftLk_MF_ZairCatch ATTRIBUTE_USED =
    Ft_MF_SkipModelPartVis | Ft_MF_SkipMetalB;

typedef enum ftLink_MotionState {
    ftLk_MS_AttackS42 = ftCo_MS_Count,
    ftLk_MS_AppealR,
    ftLk_MS_AppealL,
    ftLk_MS_SpecialNCharge,
    ftLk_MS_SpecialNFullyCharged,
    ftLk_MS_SpecialNFire,
    ftLk_MS_SpecialAirNCharge,
    ftLk_MS_SpecialAirNFullyCharged,
    ftLk_MS_SpecialAirNFire,
    ftLk_MS_SpecialSThrow,
    ftLk_MS_SpecialSCatch,
    ftLk_MS_SpecialSThrowEmpty,
    ftLk_MS_SpecialAirSThrow,
    ftLk_MS_SpecialAirSCatch,
    ftLk_MS_SpecialAirSThrowEmpty,
    ftLk_MS_SpecialHi,
    ftLk_MS_SpecialAirHi,
    ftLk_MS_SpecialLw,
    ftLk_MS_SpecialAirLw,
    ftLk_MS_Zair,
    ftLk_MS_ZairCatch,
} ftLink_MotionState;

typedef enum ftLk_AnimId {
    ftLk_AnimId_AttackS42 = ftCo_AnimId_Count,
    ftLk_AnimId_SpecialNCharge,
    ftLk_AnimId_SpecialNFullyCharged,
    ftLk_AnimId_SpecialNFire,
    ftLk_AnimId_SpecialAirNCharge,
    ftLk_AnimId_SpecialAirNFullyCharged,
    ftLk_AnimId_SpecialAirNFire,
    ftLk_AnimId_SpecialSThrow,
    ftLk_AnimId_SpecialSCatch,
    ftLk_AnimId_SpecialSThrowEmpty,
    ftLk_AnimId_SpecialAirSThrow,
    ftLk_AnimId_SpecialAirSCatch,
    ftLk_AnimId_SpecialAirSThrowEmpty,
    ftLk_AnimId_SpecialHi,
    ftLk_AnimId_SpecialAirHi,
    ftLk_AnimId_SpecialLw,
    ftLk_AnimId_SpecialAirLw,
    ftLk_AnimId_Zair,
    ftLk_AnimId_ZairCatch,
} ftLk_AnimId;

#endif
