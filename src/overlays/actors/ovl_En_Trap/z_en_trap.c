/*
 * File: z_en_trap.c
 * Overlay: ovl_En_Trap
 * Description: Metal Spike Trap
 */

#include "z_en_trap.h"

#define FLAGS 0x00000010

#define THIS ((EnTrap*)thisx)

void EnTrap_Init(Actor* thisx, GlobalContext* globalCtx);
void EnTrap_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnTrap_Update(Actor* thisx, GlobalContext* globalCtx);
void EnTrap_Draw(Actor* thisx, GlobalContext* globalCtx);

const ActorInit En_Trap_InitVars = {
    ACTOR_EN_TRAP,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_TRAP,
    sizeof(EnTrap),
    (ActorFunc)EnTrap_Init,
    (ActorFunc)EnTrap_Destroy,
    (ActorFunc)EnTrap_Update,
    (ActorFunc)EnTrap_Draw,
};

s32 D_80B25830[] = { 0x00000935, 0x10010000, 0x00000000, 0x00000000, 0x00000000, 0x00001000,
                     0x00000000, 0x00010100, 0x001E0014};

void EnTrap_Init(EnTrap *this, GlobalContext *globalCtx) {
    f32 sp48;
    s16 sp46;
    ColliderCylinder *sp34;
    PosRot *sp30;
    ColliderCylinder *temp_a1;
    PosRot *temp_v0_5;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f10;
    f32 temp_f2;
    s16 temp_v0;
    s16 temp_v0_2;
    s16 temp_v0_3;
    s16 temp_v0_4;
    s32 temp_a0;
    s32 temp_f18;
    s32 temp_v0_6;
    f32 phi_f20;
    s32 phi_v0;
    s32 phi_a1;

    temp_v0 = this->actor.params;
    this->unk_150 = (s16) (((s32) temp_v0 >> 8) & 0xFF);
    this->actor.params = (s16) (temp_v0 & 0xFF);
    Actor_SetScale((Actor *) this, 0.1f);
    temp_v0_2 = this->actor.params;
    this->actor.gravity = -2.0f;
    if ((temp_v0_2 & 0x10) != 0) {
        temp_f0 = (f32) (this->unk_150 & 0xF);
        this->unk_19C = temp_f0;
        this->actor.speedXZ = temp_f0;
        Audio_PlayActorSound2(&this->actor, (u16)0x287DU);
        sp30 = &this->actor.posRot;
    } else {
        if ((temp_v0_2 & 0x20) != 0) {
            temp_v0_3 = this->unk_150;
            temp_f10 = (f32) (temp_v0_3 & 0xF);
            this->unk_150 = (s16) (((temp_v0_3 & 0xF0) + 0x10) << 5);
            this->unk_154 = (f32) (temp_f10 * 40.0f);
            this->actor.posRot.pos.x = (f32) ((Math_Sins((u16)0) * this->unk_154) + this->actor.initPosRot.pos.x);
            this->actor.posRot.pos.z = (f32) ((Math_Coss((u16)0) * this->unk_154) + this->actor.initPosRot.pos.z);
            sp30 = &this->actor.posRot;
        } else {
            temp_v0_4 = this->unk_150;
            if (temp_v0_4 != 0) {
                sp48 = (f32) (temp_v0_4 & 0xF);
                phi_f20 = (f32) (((s32) temp_v0_4 >> 4) * 0x28);
            } else {
                sp48 = 10.0f;
                this->actor.params = (u16)0xF;
                phi_f20 = 200.0f;
            }
            func_8002E4B4(globalCtx, (Actor *) this, 10.0f, 20.0f, 20.0f, 0x1D);
            temp_v0_5 = &this->actor.posRot;
            this->actor.initPosRot.pos.x = (bitwise f32) (bitwise s32) temp_v0_5->pos.x;
            this->actor.initPosRot.pos.y = (bitwise f32) (bitwise s32) temp_v0_5->pos.y;
            this->actor.initPosRot.pos.z = (bitwise f32) (bitwise s32) temp_v0_5->pos.z;
            sp30 = temp_v0_5;
            this->unk158 = (f32) ((Math_Coss(this->actor.posRot.rot.y) * phi_f20) + this->actor.posRot.pos.x);
            this->unk160 = (f32) (this->actor.posRot.pos.z - (Math_Sins(this->actor.posRot.rot.y) * phi_f20));
            this->unk164 = (f32) ((Math_Coss((s16) ((s32) ((this->actor.posRot.rot.y + 0x8000) << 0x10) >> 0x10)) * phi_f20) + this->actor.posRot.pos.x);
            this->unk16C = (f32) (this->actor.posRot.pos.z - (Math_Sins((s16) ((s32) ((this->actor.posRot.rot.y + 0x8000) << 0x10) >> 0x10)) * phi_f20));
            this->unk170 = (f32) ((Math_Sins(this->actor.posRot.rot.y) * phi_f20) + this->actor.posRot.pos.x);
            this->unk178 = (f32) ((Math_Coss(this->actor.posRot.rot.y) * phi_f20) + this->actor.posRot.pos.z);
            this->unk17C = (f32) ((Math_Sins((s16) ((s32) ((this->actor.posRot.rot.y + 0x8000) << 0x10) >> 0x10)) * phi_f20) + this->actor.posRot.pos.x);
            this->unk184 = (f32) ((Math_Coss((s16) ((s32) ((this->actor.posRot.rot.y + 0x8000) << 0x10) >> 0x10)) * phi_f20) + this->actor.posRot.pos.z);
            temp_v0_6 = (s32) ((s32) (Math_Coss(this->actor.posRot.rot.y) * sp48) << 0x10) >> 0x10;
            sp46 = (s16) temp_v0_6;
            temp_f18 = (s32) (Math_Sins(this->actor.posRot.rot.y) * sp48);
            phi_v0 = temp_v0_6;
            if (temp_v0_6 < 0) {
                phi_v0 = (s32) ((0 - temp_v0_6) << 0x10) >> 0x10;
            }
            temp_a0 = (s32) (temp_f18 << 0x10) >> 0x10;
            temp_f0_2 = (f32) phi_v0;
            phi_a1 = (s32) (temp_f18 << 0x10) >> 0x10;
            if (temp_a0 < 0) {
                phi_a1 = (s32) ((0 - temp_a0) << 0x10) >> 0x10;
            }
            this->unk19C = temp_f0_2;
            this->unk188 = temp_f0_2;
            temp_f2 = (f32) phi_a1;
            this->unk194 = temp_f2;
            this->unk190 = temp_f2;
        }
    }
    temp_a1 = this + 0x1A0;
    this->actor.posRot2.pos.x = (bitwise f32) (bitwise s32) sp30->pos.x;
    this->actor.posRot2.pos.y = (bitwise f32) (bitwise s32) sp30->pos.y;
    this->actor.posRot2.pos.z = (bitwise f32) (bitwise s32) sp30->pos.z;
    sp34 = temp_a1;
    Collider_InitCylinder(globalCtx, temp_a1);
    Collider_SetCylinder(globalCtx, temp_a1, (Actor *) this, (ColliderCylinderInit *) D_80B25830);
    ActorShape_Init(&this->actor.shape, 0.0f, (void *) &ActorShadow_DrawFunc_Circle, 0.0f);
    this->actor.unk_1F = (u8)3;
    this->actor.colChkInfo.mass = (u8)0xFFU;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Trap/EnTrap_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Trap/EnTrap_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Trap/EnTrap_Draw.s")
