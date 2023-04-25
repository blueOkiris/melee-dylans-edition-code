#include "forward.h"
#include "ft/forward.h"
#include "ftCommon/forward.h"

#include "ftPe_Init.h"

#include "types.h"

#include "ft/ft_0877.h"
#include "ft/ftcamera.h"
#include "ft/ftdata.h"
#include "ft/ftparts.h"
#include "ft/inlines.h"
#include "ft/types.h"
#include "lb/lbmthp.h"

MotionState ftPe_Init_MotionStateTable[] = {
    {
        ftPe_AnimId_Float,
        Ft_MF_None,
        FtMoveId_Default << 24,
        ftPe_Float_Anim,
        ftPe_Float_IASA,
        ftPe_Float_Phys,
        ftPe_Float_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        ftPe_AnimId_FloatEnd0,
        Ft_MF_None,
        FtMoveId_Default << 24,
        ftPe_FloatEnd_Anim,
        ftPe_FloatEnd_IASA,
        ftPe_FloatEnd_Phys,
        ftPe_FloatEnd_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        ftPe_AnimId_FloatEnd1,
        Ft_MF_None,
        FtMoveId_Default << 24,
        ftPe_FloatEnd_Anim,
        ftPe_FloatEnd_IASA,
        ftPe_FloatEnd_Phys,
        ftPe_FloatEnd_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        68,
        ftPe_MF_FloatAttackAirN,
        FtMoveId_AttackAirN << 24,
        ftPe_FloatAttackAir_Anim,
        ftPe_FloatAttackAir_IASA,
        ftPe_FloatAttackAir_Phys,
        ftPe_FloatAttackAir_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        69,
        ftPe_MF_Move_14,
        FtMoveId_AttackAirF << 24,
        ftPe_FloatAttackAir_Anim,
        ftPe_FloatAttackAir_IASA,
        ftPe_FloatAttackAir_Phys,
        ftPe_FloatAttackAir_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        70,
        ftPe_MF_FloatAttackAirB,
        FtMoveId_AttackAirB << 24,
        ftPe_FloatAttackAir_Anim,
        ftPe_FloatAttackAir_IASA,
        ftPe_FloatAttackAir_Phys,
        ftPe_FloatAttackAir_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        71,
        ftPe_MF_FloatAttackAirHi,
        FtMoveId_AttackAirHi << 24,
        ftPe_FloatAttackAir_Anim,
        ftPe_FloatAttackAir_IASA,
        ftPe_FloatAttackAir_Phys,
        ftPe_FloatAttackAir_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        72,
        ftPe_MF_Move_17,
        FtMoveId_AttackAirLw << 24,
        ftPe_FloatAttackAir_Anim,
        ftPe_FloatAttackAir_IASA,
        ftPe_FloatAttackAir_Phys,
        ftPe_FloatAttackAir_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        ftPe_AnimId_AttackS4_0,
        ftPe_MF_AttackS4,
        FtMoveId_AttackS4 << 24,
        ftPe_AttackS4_Anim,
        ftPe_AttackS4_IASA,
        ftPe_AttackS4_Phys,
        ftPe_AttackS4_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        ftPe_AnimId_AttackS4_1,
        ftPe_MF_AttackS4,
        FtMoveId_AttackS4 << 24,
        ftPe_AttackS4_Anim,
        ftPe_AttackS4_IASA,
        ftPe_AttackS4_Phys,
        ftPe_AttackS4_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        ftPe_AnimId_AttackS4_2,
        ftPe_MF_AttackS4,
        FtMoveId_AttackS4 << 24,
        ftPe_AttackS4_Anim,
        ftPe_AttackS4_IASA,
        ftPe_AttackS4_Phys,
        ftPe_AttackS4_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        ftPe_AnimId_Unk301,
        ftPe_MF_SpecialLw,
        FtMoveId_SpecialLw << 24,
        ftPe_SpecialLw_Anim,
        NULL,
        ftPe_SpecialLw_Phys,
        ftPe_SpecialLw_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        ftPe_AnimId_Unk301,
        ftPe_MF_SpecialLw,
        FtMoveId_SpecialLw << 24,
        ftPe_SpecialAirLw_Anim,
        NULL,
        ftPe_SpecialAirLw_Phys,
        ftPe_SpecialAirLw_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        ftPe_AnimId_SpecialSStart,
        ftPe_MF_SpecialS,
        FtMoveId_SpecialS << 24,
        ftPe_SpecialSStart_Anim,
        ftPe_SpecialSStart_IASA,
        ftPe_SpecialSStart_Phys,
        ftPe_SpecialSStart_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        ftPe_AnimId_SpecialSEnd,
        ftPe_MF_SpecialS,
        FtMoveId_SpecialS << 24,
        ftPe_SpecialSEnd_Anim,
        ftPe_SpecialSEnd_IASA,
        ftPe_SpecialSEnd_Phys,
        ftPe_SpecialSEnd_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        ftPe_AnimId_SpecialAirS,
        ftPe_MF_SpecialS,
        FtMoveId_SpecialS << 24,
        NULL,
        NULL,
        NULL,
        NULL,
        ftCamera_UpdateCameraBox,
    },
    {
        ftPe_AnimId_Unk305,
        ftPe_MF_SpecialAirS,
        FtMoveId_SpecialS << 24,
        ftPe_SpecialAirSStart_Anim,
        ftPe_SpecialAirSStart_IASA,
        ftPe_SpecialAirSStart_Phys,
        ftPe_SpecialAirSStart_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        ftPe_AnimId_SpecialAirSEnd_0,
        ftPe_MF_SpecialAirS,
        FtMoveId_SpecialS << 24,
        ftPe_SpecialAirSEnd_Anim,
        ftPe_SpecialAirSEnd_IASA,
        ftPe_SpecialAirSEnd_Phys,
        ftPe_SpecialAirSEnd_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        ftPe_AnimId_SpecialAirSEnd_1,
        ftPe_MF_SpecialAirS,
        FtMoveId_SpecialS << 24,
        ftPe_SpecialAirSEnd_Anim,
        ftPe_SpecialAirSEnd_IASA,
        ftPe_SpecialAirSEnd_Phys,
        ftPe_SpecialAirSEnd_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        ftPe_AnimId_SpecialAirS,
        ftPe_MF_SpecialAirS,
        FtMoveId_SpecialS << 24,
        ftPe_SpecialAirS_Anim,
        ftPe_SpecialAirS_IASA,
        ftPe_SpecialAirS_Phys,
        ftPe_SpecialAirS_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        ftPe_AnimId_SpecialHiStart,
        ftPe_MF_SpecialHi,
        FtMoveId_SpecialHi << 24,
        ftPe_SpecialHiStart_Anim,
        ftPe_SpecialHiStart_IASA,
        ftPe_SpecialHiStart_Phys,
        ftPe_SpecialHiStart_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        ftPe_AnimId_MS_362,
        ftPe_MF_SpecialHi,
        FtMoveId_SpecialHi << 24,
        ftPe_MS_362_Anim,
        ftPe_MS_362_IASA,
        ftPe_MS_362_Phys,
        ftPe_MS_362_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        ftPe_AnimId_SpecialAirHiStart,
        ftPe_MF_SpecialAirHi,
        FtMoveId_SpecialHi << 24,
        ftPe_SpecialAirHiStart_Anim,
        ftPe_SpecialAirHiStart_IASA,
        ftPe_SpecialAirHiStart_Phys,
        ftPe_SpecialAirHiStart_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        ftPe_AnimId_MS_364,
        ftPe_MF_SpecialAirHi,
        FtMoveId_SpecialHi << 24,
        ftPe_MS_364_Anim,
        ftPe_MS_364_IASA,
        ftPe_MS_364_Phys,
        ftPe_MS_364_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        ftPe_AnimId_SpecialN,
        ftPe_MF_SpecialN,
        FtMoveId_SpecialN << 24,
        ftPe_SpecialN_Anim,
        ftPe_SpecialN_IASA,
        ftPe_SpecialN_Phys,
        ftPe_SpecialN_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        ftPe_AnimId_SpecialNAttack,
        ftPe_MF_SpecialN,
        FtMoveId_SpecialN << 24,
        ftPe_SpecialNAttack_Anim,
        ftPe_SpecialNAttack_IASA,
        ftPe_SpecialNAttack_Phys,
        ftPe_SpecialNAttack_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        ftPe_AnimId_SpecialAirN,
        ftPe_MF_SpecialAirN,
        FtMoveId_SpecialN << 24,
        ftPe_SpecialAirN_Anim,
        ftPe_SpecialAirN_IASA,
        ftPe_SpecialAirN_Phys,
        ftPe_SpecialAirN_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        ftPe_AnimId_SpecialAirNAttack,
        ftPe_MF_SpecialAirN,
        FtMoveId_SpecialN << 24,
        ftPe_SpecialAirNAttack_Anim,
        ftPe_SpecialAirNAttack_IASA,
        ftPe_SpecialAirNAttack_Phys,
        ftPe_SpecialAirNAttack_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        ftPe_AnimId_ParasolOpen,
        ftPe_MF_ParasolOpen,
        (FtMoveId_Parasol << 24) | (1 << 23),
        ftCo_ItemParasolOpen_Anim,
        ftCo_ItemParasolOpen_IASA,
        ftCo_ItemParasolOpen_Phys,
        ftCo_ItemParasolOpen_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        ftPe_AnimId_ParasolFallSpecial,
        ftPe_MF_ParasolFallSpecial,
        (FtMoveId_Parasol << 24) | (1 << 23),
        ftCo_ItemParasolFallSpecial_Anim,
        ftCo_ItemParasolFallSpecial_IASA,
        ftCo_ItemParasolFallSpecial_Phys,
        ftCo_ItemParasolFallSpecial_Coll,
        ftCamera_UpdateCameraBox,
    },
};

char ftPe_Init_DatFilename[] = "PlPe.dat";
char ftPe_Init_DataName[] = "ftDataPeach";
char str_PlPeNr_dat[] = "PlPeNr.dat";
char str_PlyPeach5K_Share_joint[] = "PlyPeach5K_Share_joint";
char str_PlyPeach5K_Share_matanim_joint[] = "PlyPeach5K_Share_matanim_joint";
char str_PlPeYe_dat[] = "PlPeYe.dat";
char str_PlyPeach5KYe_Share_joint[] = "PlyPeach5KYe_Share_joint";
char str_PlyPeach5KYe_Share_matanim_joint[] =
    "PlyPeach5KYe_Share_matanim_joint";
char str_PlPeWh_dat[] = "PlPeWh.dat";
char str_PlyPeach5KWh_Share_joint[] = "PlyPeach5KWh_Share_joint";
char str_PlyPeach5KWh_Share_matanim_joint[] =
    "PlyPeach5KWh_Share_matanim_joint";
char str_PlPeBu_dat[] = "PlPeBu.dat";
char str_PlyPeach5KBu_Share_joint[] = "PlyPeach5KBu_Share_joint";
char str_PlyPeach5KBu_Share_matanim_joint[] =
    "PlyPeach5KBu_Share_matanim_joint";
char str_PlPeGr_dat[] = "PlPeGr.dat";
char str_PlyPeach5KGr_Share_joint[] = "PlyPeach5KGr_Share_joint";
char str_PlyPeach5KGr_Share_matanim_joint[] =
    "PlyPeach5KGr_Share_matanim_joint";
char ftPe_Init_AnimDatFilename[] = "PlPeAJ.dat";

Fighter_DemoStrings ftPe_Init_DemoMotionFilenames = {
    "ftDemoResultMotionFilePeach",
    "ftDemoIntroMotionFilePeach",
    "ftDemoEndingMotionFilePeach",
    "ftDemoViWaitMotionFilePeach",
};

Fighter_CostumeStrings ftPe_Init_CostumeStrings[] = {
    { str_PlPeNr_dat, str_PlyPeach5K_Share_joint,
      str_PlyPeach5K_Share_matanim_joint },
    { str_PlPeYe_dat, str_PlyPeach5KYe_Share_joint,
      str_PlyPeach5KYe_Share_matanim_joint },
    { str_PlPeWh_dat, str_PlyPeach5KWh_Share_joint,
      str_PlyPeach5KWh_Share_matanim_joint },
    { str_PlPeBu_dat, str_PlyPeach5KBu_Share_joint,
      str_PlyPeach5KBu_Share_matanim_joint },
    { str_PlPeGr_dat, str_PlyPeach5KGr_Share_joint,
      str_PlyPeach5KGr_Share_matanim_joint },
};

void ftPe_Init_OnDeath(HSD_GObj* gobj)
{
    Fighter* fp;

    fp = gobj->user_data;
    fp->fv.pe.x222C = 1;
    fp->fv.pe.x2234 = -1;
    fp->fv.pe.x2240 = 0;
    fp->fv.pe.x223C = 0;
    fp->fv.pe.x2238 = 0;
    fp->fv.pe.x2244 = 0;
    fp->fv.pe.x2248 = 0;
    ftParts_80074A4C(gobj, 0, 0);
    ftParts_80074A4C(gobj, 2, 0);
    ftParts_80074A4C(gobj, 3, -1);
    ftParts_80074A4C(gobj, 4, 0);

    switch (fp->x619_costume_id) {
    case 1:
        ftParts_80074A4C(gobj, 1, -1);
        ftParts_80074A4C(gobj, 5, 0);
        ftParts_80074A4C(gobj, 6, -1);
        break;

    default:
        ftParts_80074A4C(gobj, 1, 0);
        ftParts_80074A4C(gobj, 5, -1);
        ftParts_80074A4C(gobj, 6, 0);
        break;
    }
}

void ftPe_Init_OnLoad(HSD_GObj* gobj)
{
    Fighter* fp = gobj->user_data;
    ftPeachAttributes* extAtrrs = fp->ft_data->ext_attr;
    void** items = fp->ft_data->x48_items;

    extAtrrs->unk0 = lbMthp_8001E8F8(ftData_80085E50(fp, 18));
    extAtrrs->unk4 = lbMthp_8001E8F8(ftData_80085E50(fp, 19));

    PUSH_ATTRS(fp, ftPeachAttributes);

    it_8026B3F8(items[0], It_Kind_Peach_Explode);
    it_8026B3F8(items[1], It_Kind_Peach_Turnip);
    it_8026B3F8(items[2], It_Kind_Peach_Parasol);
    it_8026B3F8(items[3], It_Kind_Peach_Toad);
    it_8026B3F8(items[4], It_Kind_Peach_ToadSpore);
}

/* static */ void ftPe_8011D598(HSD_GObj* gobj);
/* static */ void ftPe_8011E2E8(HSD_GObj* gobj);
/* static */ void ftPe_8011CFA0(HSD_GObj* gobj);

void ftPe_Init_8011B704(HSD_GObj* gobj)
{
    ftPe_8011D598(gobj);
    ftPe_8011E2E8(gobj);
    ftPe_8011CFA0(gobj);
}

void ftPe_Init_OnItemPickup(HSD_GObj* gobj, bool bool)
{
    Fighter_OnItemPickup(gobj, bool, 1, 1);
}

void ftPe_Init_OnItemInvisible(HSD_GObj* gobj)
{
    Fighter_OnItemInvisible(gobj, 1);
}

void ftPe_Init_OnItemVisible(HSD_GObj* gobj)
{
    Fighter_OnItemVisible(gobj, 1);
}

void ftPe_Init_OnItemDrop(HSD_GObj* gobj, bool bool1)
{
    Fighter_OnItemDrop(gobj, bool1, 1, 1);
}

void ftPe_Init_LoadSpecialAttrs(HSD_GObj* gobj)
{
    COPY_ATTRS(gobj, ftPeachAttributes);
}

void ftPe_Init_8011B93C(HSD_GObj* gobj)
{
    /// @todo Unused stack.
#ifdef MUST_MATCH
    u8 _[8];
#endif

    s32 result = ftParts_80074A74(gobj, 2);

    if (result == -1) {
        ftParts_80074A4C(gobj, 2, 0);
    } else {
        ftParts_80074A4C(gobj, 2, -1);
    }
}

void ftPe_Init_OnKnockbackEnter(HSD_GObj* gobj)
{
    Fighter_OnKnockbackEnter(gobj, 1);
}

void ftPe_Init_OnKnockbackExit(HSD_GObj* gobj)
{
    Fighter_OnKnockbackExit(gobj, 1);
}

s32 ftPe_8011BA20(Fighter* fp)
{
    s32 result = 1;

    if (!(fp->input.x624_lstick_y >= p_ftCommonData->x70_someLStickYMax) &&
        !(fp->input.x65C_heldInputs & 3072))
    {
        result = 0;
    }

    return result;
}
