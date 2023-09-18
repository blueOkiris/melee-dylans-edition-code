#include <platform.h>
#include "ft/forward.h"

#include "ftPe_FloatAttack.h"

#include "ftPe_Float.h"
#include "ftPe_Init.h"

#include "ft/ft_081B.h"
#include "ft/ft_0877.h"
#include "ft/ft_08A4.h"
#include "ft/inlines.h"
#include "ft/types.h"
#include "ftCommon/ftCo_AttackAir.h"
#include "ftCommon/ftCo_ItemThrow.h"
#include "ftCommon/ftCo_LandingAir.h"

#include <baselib/gobj.h>

static void ftPe_8011BF34(HSD_GObj* gobj);

bool ftPe_8011BE80(HSD_GObj* gobj)
{
    /// @todo Unused stack.
#ifdef MUST_MATCH
    u8 _[8];
#endif
    Fighter* fp = GET_FIGHTER(gobj);
    if (fp->input.x668 & HSD_PAD_A || ftCo_800DF478(fp)) {
        if (fp->fv.pe.x4 > 0) {
            if (ftCo_AttackAir_GetMsidFromCStick(fp) - 65U <= 1) {
                if (fp->item_gobj != NULL && it_8026B30C(fp->item_gobj) == 3) {
                    ftCo_800CDDA0(gobj);
                    return true;
                }
            }
            ftPe_8011BF34(gobj);
            return true;
        }
    }
    return false;
}

static void ftPe_8011BF34(HSD_GObj* gobj)
{
    Fighter* fp = GET_FIGHTER(gobj);
    FtMotionId msid = ftCo_AttackAir_GetMsidFromCStick(fp);
    fp->mv.pe.floatattack.x0 = 0;
    ftCo_AttackAir_EnterFromMsid(gobj, msid + ftCo_MS_CaptureDamageKoopa);
}

void ftPe_FloatAttackAir_Anim(HSD_GObj* gobj)
{
    Fighter* fp = GET_FIGHTER(gobj);
    if (fp->fv.pe.x4 > 0) {
        fp->fv.pe.x4 -= 1;
    }
    if (ftCheckThrowB3(fp)) {
        fp->facing_dir = -fp->facing_dir;
    }
    if (!ftAnim_IsFramesRemaining(gobj)) {
        if (fp->mv.pe.floatattack.x0) {
            ftCo_800CC730(gobj);
        } else {
            ftPe_8011BB6C(gobj, false);
        }
    }
}

void ftPe_FloatAttackAir_IASA(HSD_GObj* gobj)
{
    Fighter* fp = GET_FIGHTER(gobj);
    if (!ftPe_Float_CheckContinueInput(fp)) {
        fp->mv.pe.floatattack.x0 = true;
    }
    if (fp->allow_interrupt && !ftCo_80095328(gobj, false)) {
        if (!ftPe_8011BE80(gobj)) {
            if (ftCo_800CB870(gobj)) {
                return;
            }
        }
    }
}

void ftPe_FloatAttackAir_Phys(HSD_GObj* gobj)
{
    if (GET_FIGHTER(gobj)->mv.pe.floatattack.x0) {
        ft_80084DB0(gobj);
    } else {
        ftPe_Float_Phys(gobj);
    }
}

void ftPe_FloatAttackAir_Coll(HSD_GObj* gobj)
{
    ft_80082C74(gobj, ftCo_LandingAir_EnterWithLag);
}
