#ifndef MELEE_IT_ITYOSHISTAR_H
#define MELEE_IT_ITYOSHISTAR_H

#include <melee/it/forward.h>
#include <dolphin/mtx/forward.h>
#include <sysdolphin/baselib/forward.h>

extern ItemStateTable it_803F7158[];

Item_GObj* it_802B2FC8(HSD_GObj* parent, Vec3* pos, f32 dir);
bool it_802B309C(Item_GObj*);
bool it_802B30C0(Item_GObj*);
bool it_802B30E4(Item_GObj*);
bool it_802B3108(Item_GObj*);
bool it_802B312C(Item_GObj*);
bool it_802B314C(Item_GObj*);
void it_802B322C(Item_GObj*, HSD_GObj*);
bool it_802B3294(Item_GObj*);
void it_802B32C8(Item_GObj*);
bool it_802B3324(Item_GObj*);
void it_802B3348(Item_GObj*, HSD_GObj*);

#endif
