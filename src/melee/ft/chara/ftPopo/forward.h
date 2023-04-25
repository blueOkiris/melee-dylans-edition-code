#ifndef MELEE_FT_CHARA_FTPOPO_FORWARD_H
#define MELEE_FT_CHARA_FTPOPO_FORWARD_H

#include <platform.h>
#include "ft/forward.h"
#include "ftCommon/forward.h"

static MotionFlags const ftPp_MF_Special ATTRIBUTE_USED =
    Ft_MF_SkipModel | Ft_MF_SkipItemVis | Ft_MF_UnkUpdatePhys |
    Ft_MF_FreezeState;

static MotionFlags const ftPp_MF_SpecialLw ATTRIBUTE_USED =
    ftPp_MF_Special | Ft_MF_KeepColAnimHitStatus;

static MotionFlags const ftPp_MF_SpecialN ATTRIBUTE_USED =
    ftPp_MF_Special | Ft_MF_KeepFastFall | Ft_MF_SkipThrowException;

static MotionFlags const ftPp_MF_SpecialS ATTRIBUTE_USED =
    ftPp_MF_Special | Ft_MF_KeepGfx | Ft_MF_KeepSfx;

static MotionFlags const ftPp_MF_SpecialHi ATTRIBUTE_USED =
    ftPp_MF_SpecialS | Ft_MF_KeepFastFall;

static MotionFlags const ftPp_MF_MS_358 ATTRIBUTE_USED =
    ftPp_MF_SpecialLw | Ft_MF_SkipParasol;

static MotionFlags const ftPp_MF_SpecialAirN ATTRIBUTE_USED =
    ftPp_MF_SpecialN | Ft_MF_SkipParasol;

static MotionFlags const ftPp_MF_SpecialAirS ATTRIBUTE_USED =
    ftPp_MF_SpecialS | Ft_MF_SkipParasol;

static MotionFlags const ftPp_MF_SpecialAirHi ATTRIBUTE_USED =
    ftPp_MF_SpecialHi | Ft_MF_SkipParasol;

typedef enum ftPopo_MotionState {
    ftPp_MS_SpecialN = ftCo_MS_Count,
    ftPp_MS_SpecialAirN,
    ftPp_MS_SpecialS,
    ftPp_MS_SpecialS_Together,
    ftPp_MS_SpecialAirS,
    ftPp_MS_SpecialAirS_Together,
    ftPp_MS_SpecialHi_Start,
    ftPp_MS_SpecialHi,
    ftPp_MS_Unk_349,
    ftPp_MS_SpecialHi_Fail,
    ftPp_MS_SpecialHi_FailEnd,
    ftPp_MS_SpecialAirHi_Start,
    ftPp_MS_SpecialAirHi,
    ftPp_MS_SpecialAirHi_Fail,
    ftPp_MS_SpecialAirHi_FailEnd,
    ftPp_MS_SpecialLw,
    ftPp_MS_SpecialAirLw,
} ftPopo_MotionState;

typedef enum ftPp_AnimId {
    ftPp_AnimId_SpecialN0 = ftCo_AnimId_Count,
    ftPp_AnimId_SpecialN1,
    ftPp_AnimId_SpecialS0,
    ftPp_AnimId_SpecialS1,
    ftPp_AnimId_SpecialS2,
    ftPp_AnimId_SpecialS3,
    ftPp_AnimId_SpecialHi00,
    ftPp_AnimId_SpecialHi01,
    ftPp_AnimId_SpecialHi02,
    ftPp_AnimId_SpecialHi03,
    ftPp_AnimId_SpecialHi04,
    ftPp_AnimId_SpecialHi05,
    ftPp_AnimId_SpecialHi06,
    ftPp_AnimId_SpecialHi07,
    ftPp_AnimId_SpecialHi08,
    ftPp_AnimId_SpecialHi09,
    ftPp_AnimId_SpecialLw0,
    ftPp_AnimId_SpecialLw1,
    ftPp_AnimId_SpecialS4,
    ftPp_AnimId_SpecialS5,
    ftPp_AnimId_SpecialHi10,
    ftPp_AnimId_SpecialHi11,
    ftPp_AnimId_SpecialHi12,
    ftPp_AnimId_SpecialHi13,
    ftPp_AnimId_SpecialHi14,
    ftPp_AnimId_SpecialHi15,
} ftPp_AnimId;

#endif
