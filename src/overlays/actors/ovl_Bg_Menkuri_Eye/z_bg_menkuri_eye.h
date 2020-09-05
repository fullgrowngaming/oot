#ifndef _Z_BG_MENKURI_EYE_H_
#define _Z_BG_MENKURI_EYE_H_

#include <ultra64.h>
#include <global.h>

struct BgMenkuriEye;

typedef struct BgMenkuriEye {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ s16 unk_14C;
    /* 0x0150 */ ColliderJntSph collider;
    /* 0x0170 */ ColliderJntSphItem colliderItem;
} BgMenkuriEye; // size = 0x01B0

extern const ActorInit Bg_Menkuri_Eye_InitVars;

#endif
