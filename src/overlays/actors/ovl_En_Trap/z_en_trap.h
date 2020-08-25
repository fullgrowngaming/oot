#ifndef _Z_EN_TRAP_H_
#define _Z_EN_TRAP_H_

#include <ultra64.h>
#include <global.h>

struct EnTrap;

typedef struct EnTrap {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ s32 unk_14C;
    /* 0x0150 */ s16 unk_150;
    /* 0x0154 */ f32 unk_154;
    /* 0x0158 */ f32 unk_158;
    /* 0x0160 */ f32 unk_160;
    /* 0x0164 */ f32 unk_164;
    /* 0x016C */ f32 unk_16C;
    /* 0x0170 */ f32 unk_170;
    /* 0x0178 */ f32 unk_178;
    /* 0x017C */ f32 unk_17C;
    /* 0x0184 */ f32 unk_184;
    /* 0x0188 */ f32 unk_188;
    /* 0x0190 */ f32 unk_190;
    /* 0x0194 */ f32 unk_194;
    /* 0x019C */ f32 unk_19C;
} EnTrap; // size = 0x01EC

extern const ActorInit En_Trap_InitVars;

#endif
