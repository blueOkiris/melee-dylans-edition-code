#include <platform.h>

#include "ftCo_ShieldBreakFly.h"

#include "ef/efasync.h"
#include "ft/ft_081B.h"
#include "ft/ft_0877.h"
#include "ft/ft_08A4.h"
#include "ft/ftcoll.h"
#include "ft/ftcommon.h"
#include "ftCommon/inlines.h"

#include <placeholder.h>

void ft_80098B20(Fighter_GObj* gobj)
{
    ftCo_Fighter* fp = gobj->user_data;
    ftCommon_8007D5D4(fp);
    Fighter_ChangeMotionState(gobj, 205, 64, NULL, 0, 1, 0);
    ftAnim_8006EBA4(gobj);
    fp->self_vel.x = 0;
    fp->self_vel.y = fp->co_attrs.shield_break_initial_velocity;
    if (fp->kind == FTKIND_PURIN) {
        fp->x2222_b3 = true;
    }
    ftCo_SpawnEf(gobj, fp->parts[fp->ft_data->x8->unk11].joint, 0, 1051);
    ft_80088148(fp, 130, 127, 64);
    ftCommon_8007EBAC(fp, 24, 0U);
    ftColl_8007B62C(gobj, 2);
}

void ftCo_ShieldBreakFly_Anim(Fighter_GObj* gobj)
{
    if (!ftAnim_IsFramesRemaining(gobj)) {
        ftCo_80098D90(gobj);
    }
}

void ftCo_ShieldBreakFly_IASA(HSD_GObj* gobj) {}

void ftCo_ShieldBreakFly_Phys(Fighter_GObj* gobj)
{
    ft_80084EEC(gobj);
}

void ftCo_ShieldBreakFly_Coll(Fighter_GObj* gobj)
{
    ft_80082C74(gobj, ftCo_80098E3C);
}

void ft_80098C9C(Fighter_GObj* gobj)
{
    /// @todo Unused stack.
#ifdef MUST_MATCH
    u8 _[8] = { 0 };
#endif
    ft_80098B20(gobj);
}
