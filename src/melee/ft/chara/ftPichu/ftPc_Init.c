#include "ftPc_Init.h"

#include "ft/ft_0877.h"
#include "ft/ftcamera.h"
#include "ft/ftparts.h"
#include "ft/types.h"
#include "ftPikachu/ftpikachu.h"

MotionState ftPc_Init_MotionStateTable[] = {
    {
        295,
        0x00340111,
        0x12000000,
        ftPk_SpecialN_Anim,
        ftPk_SpecialN_IASA,
        ftPk_SpecialN_Phys,
        ftPk_SpecialN_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        296,
        0x00340511,
        0x12000000,
        ftPk_SpecialAirN_Anim,
        ftPk_SpecialAirN_IASA,
        ftPk_SpecialAirN_Phys,
        ftPk_SpecialAirN_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        297,
        0x00340212,
        0x13000000,
        ftPk_SpecialSStart_Anim,
        ftPk_SpecialSStart_IASA,
        ftPk_SpecialSStart_Phys,
        ftPk_SpecialSStart_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        298,
        0x00340212,
        0x13000000,
        ftPk_SpecialSCharge_Anim,
        ftPk_SpecialSCharge_IASA,
        ftPk_SpecialSCharge_Phys,
        ftPk_SpecialSCharge_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        300,
        0x00340212,
        0x13000000,
        ftPk_MS_345_Anim,
        ftPk_MS_345_IASA,
        ftPk_MS_345_Phys,
        ftPk_MS_345_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        301,
        0x00340212,
        0x13000000,
        ftPk_SpecialSLanding_Anim,
        ftPk_SpecialSLanding_IASA,
        ftPk_SpecialSLanding_Phys,
        ftPk_SpecialSLanding_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        299,
        0x00340212,
        0x13000000,
        ftPk_SpecialSLaunch_Anim,
        ftPk_SpecialSLaunch_IASA,
        ftPk_SpecialSLaunch_Phys,
        ftPk_SpecialSLaunch_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        302,
        0x00340612,
        0x13000000,
        ftPk_SpecialAirSStart_Anim,
        ftPk_SpecialAirSStart_IASA,
        ftPk_SpecialAirSStart_Phys,
        ftPk_SpecialAirSStart_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        303,
        0x00340612,
        0x13000000,
        ftPk_SpecialAirSCharge_Anim,
        ftPk_SpecialAirSCharge_IASA,
        ftPk_SpecialAirSCharge_Phys,
        ftPk_SpecialAirSCharge_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        300,
        0x00340612,
        0x13000000,
        ftPk_SpecialAirS_Anim,
        ftPk_SpecialAirS_IASA,
        ftPk_SpecialAirS_Phys,
        ftPk_SpecialAirS_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        305,
        0x00340612,
        0x13000000,
        ftPk_SpecialAirSEnd_Anim,
        ftPk_SpecialAirSEnd_IASA,
        ftPk_SpecialAirSEnd_Phys,
        ftPk_SpecialAirSEnd_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        304,
        0x00340612,
        0x13000000,
        ftPk_SpecialAirSLaunch_Anim,
        ftPk_SpecialAirSLaunch_IASA,
        ftPk_SpecialAirSLaunch_Phys,
        ftPk_SpecialAirSLaunch_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        306,
        0x00340113,
        0x14000000,
        ftPk_SpecialHiStart_Anim,
        ftPk_SpecialHiStart_IASA,
        ftPk_SpecialHiStart_Phys,
        ftPk_SpecialHiStart_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        307,
        0x00340113,
        0x14000000,
        ftPk_SpecialHi_Anim,
        ftPk_SpecialHi_IASA,
        ftPk_SpecialHi_Phys,
        ftPk_SpecialHi_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        308,
        0x00340113,
        0x14000000,
        ftPk_SpecialHiEnd_Anim,
        ftPk_SpecialHiEnd_IASA,
        ftPk_SpecialHiEnd_Phys,
        ftPk_SpecialHiEnd_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        309,
        0x00340513,
        0x14000000,
        ftPk_SpecialAirHiStart_Anim,
        ftPk_SpecialAirHiStart_IASA,
        ftPk_SpecialAirHiStart_Phys,
        ftPk_SpecialAirHiStart_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        310,
        0x00340513,
        0x14000000,
        ftPk_SpecialAirHi_Anim,
        ftPk_SpecialAirHi_IASA,
        ftPk_SpecialAirHi_Phys,
        ftPk_SpecialAirHi_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        311,
        0x00340513,
        0x14000000,
        ftPk_SpecialAirHiEnd_Anim,
        ftPk_SpecialAirHiEnd_IASA,
        ftPk_SpecialAirHiEnd_Phys,
        ftPk_SpecialAirHiEnd_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        312,
        0x00340014,
        0x15000000,
        ftPk_SpecialLwStart_Anim,
        NULL,
        ftPk_SpecialLwStart_Phys,
        ftPk_SpecialLwStart_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        313,
        0x00340014,
        0x15000000,
        ftPk_SpecialLw_Anim,
        NULL,
        ftPk_SpecialLw_Phys,
        ftPk_SpecialLw_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        314,
        0x00340014,
        0x15000000,
        ftPk_SpecialLwHit_Anim,
        NULL,
        ftPk_SpecialLwHit_Phys,
        ftPk_SpecialLwHit_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        315,
        0x00340014,
        0x15000000,
        ftPk_SpecialLwEnd_Anim,
        NULL,
        ftPk_SpecialLwEnd_Phys,
        ftPk_SpecialLwEnd_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        316,
        0x00340414,
        0x15000000,
        ftPk_SpecialAirLwStart_Anim,
        NULL,
        ftPk_SpecialAirLwStart_Phys,
        ftPk_SpecialAirLwStart_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        317,
        0x00340414,
        0x15000000,
        ftPk_SpecialAirLw_Anim,
        NULL,
        ftPk_SpecialAirLw_Phys,
        ftPk_SpecialAirLw_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        318,
        0x00340414,
        0x15000000,
        ftPk_SpecialAirLwHit_Anim,
        NULL,
        ftPk_SpecialAirLwHit_Phys,
        ftPk_SpecialAirLwHit_Coll,
        ftCamera_UpdateCameraBox,
    },
    {
        319,
        0x00340414,
        0x15000000,
        ftPk_SpecialAirLwEnd_Anim,
        NULL,
        ftPk_SpecialAirLwEnd_Phys,
        ftPk_SpecialAirLwEnd_Coll,
        ftCamera_UpdateCameraBox,
    },
};

char ftPc_Init_DatFilename[] = "PlPc.dat";
char ftPc_Init_DataName[] = "ftDataPichu";
char ftPc_Init_803D2200[] = "PlPcNr.dat";
char ftPc_Init_803D220C[] = "PlyPichu5K_Share_joint";
char ftPc_Init_803D2224[] = "PlyPichu5K_Share_matanim_joint";
char ftPc_Init_803D2244[] = "PlPcRe.dat";
char ftPc_Init_803D2250[] = "PlyPichu5KRe_Share_joint";
char ftPc_Init_803D226C[] = "PlyPichu5KRe_Share_matanim_joint";
char ftPc_Init_803D2290[] = "PlPcBu.dat";
char ftPc_Init_803D229C[] = "PlyPichu5KBu_Share_joint";
char ftPc_Init_803D22B8[] = "PlyPichu5KBu_Share_matanim_joint";
char ftPc_Init_803D22DC[] = "PlPcGr.dat";
char ftPc_Init_803D22E8[] = "PlyPichu5KGr_Share_joint";
char ftPc_Init_803D2304[] = "PlyPichu5KGr_Share_matanim_joint";
char ftPc_Init_AnimDatFilename[] = "PlPcAJ.dat";

Fighter_DemoStrings ftPc_Init_DemoMotionFilenames = {
    "ftDemoResultMotionFilePichu",
    "ftDemoIntroMotionFilePichu",
    "ftDemoEndingMotionFilePichu",
    "ftDemoViWaitMotionFilePichu",
};

Fighter_CostumeStrings ftPc_Init_CostumeStrings[] = {
    { ftPc_Init_803D2200, ftPc_Init_803D220C, ftPc_Init_803D2224 },
    { ftPc_Init_803D2244, ftPc_Init_803D2250, ftPc_Init_803D226C },
    { ftPc_Init_803D2290, ftPc_Init_803D229C, ftPc_Init_803D22B8 },
    { ftPc_Init_803D22DC, ftPc_Init_803D22E8, ftPc_Init_803D2304 },
};

void ftPc_Init_OnLoad(HSD_GObj* gobj)
{
    Fighter* fp = GET_FIGHTER(gobj);
    ftData* ftdata = fp->x10C_ftData;
    void** items = ftdata->x48_items;
    fp->x2224_flag.bits.b7 = true;
    ftPk_Init_OnLoadForPichu(fp);

    {
        ftPichuAttributes* attrs = fp->x2D4_specialAttributes;
        it_8026B3F8(items[0], attrs->xDC);
        it_8026B3F8(items[1], attrs->x14);
        it_8026B3F8(items[2], attrs->x18);
    }
}

void ftPc_Init_OnDeath(HSD_GObj* gobj)
{
    u8 temp_r0;
    Fighter* fp = gobj->user_data;

    ftParts_80074A4C(gobj, 0, 0);
    temp_r0 = fp->x619_costume_id;

    switch (temp_r0) {
    case 0:
        ftParts_80074A4C(gobj, 1, -1);
        ftParts_80074A4C(gobj, 2, -1);
        ftParts_80074A4C(gobj, 3, -1);
        break;
    case 1:
        ftParts_80074A4C(gobj, 1, 0);
        ftParts_80074A4C(gobj, 2, -1);
        ftParts_80074A4C(gobj, 3, -1);
        break;
    case 2:
        ftParts_80074A4C(gobj, 1, -1);
        ftParts_80074A4C(gobj, 2, 0);
        ftParts_80074A4C(gobj, 3, -1);
        break;
    case 3:
        ftParts_80074A4C(gobj, 1, -1);
        ftParts_80074A4C(gobj, 2, -1);
        ftParts_80074A4C(gobj, 3, 0);
        break;
    }
}

void ftPc_Init_OnItemPickup(HSD_GObj* gobj, bool bool)
{
    Fighter_OnItemPickup(gobj, bool, 0, 0);
}

void ftPc_Init_OnItemInvisible(HSD_GObj* gobj)
{
    Fighter_OnItemInvisible(gobj, 0);
}

void ftPc_Init_OnItemVisible(HSD_GObj* gobj)
{
    Fighter_OnItemVisible(gobj, 0);
}

void ftPc_Init_OnItemDrop(HSD_GObj* gobj, bool bool1)
{
    Fighter_OnItemDrop(gobj, bool1, 0, 0);
}

void ftPc_Init_LoadSpecialAttrs(HSD_GObj* gobj)
{
    ftPk_Init_LoadSpecialAttrs(gobj);
}

void ftPc_Init_OnKnockbackEnter(HSD_GObj* gobj)
{
    Fighter_OnKnockbackEnter(gobj, 1);
}

void ftPc_Init_OnKnockbackExit(HSD_GObj* gobj)
{
    Fighter_OnKnockbackExit(gobj, 1);
}