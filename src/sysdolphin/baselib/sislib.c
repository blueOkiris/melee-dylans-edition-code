#include "baselib/sislib.h"

HSD_Archive *HSD_SisLib_804D1110[5];
SIS *HSD_SisLib_804D1124[5];

void HSD_SisLib_803A5FBC(void) {
    HSD_Archive **archives = NULL;
    SIS **siss = NULL;
    int i;

    HSD_SisLib_803A5E70();

    archives = HSD_SisLib_804D1110;
    siss = HSD_SisLib_804D1124;
    
    for (i = 0; i < 5; i++) {
        if (*archives != NULL) {
            HSD_SisLib_803A947C();
            *archives = NULL;
            *siss = NULL;
        }
        archives++;
        siss++;
    };
    HSD_Free(HSD_SisLib_804D796C);
}

