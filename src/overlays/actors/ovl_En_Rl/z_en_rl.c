#include "z_en_rl.h"
#include "vt.h"

#define FLAGS 0x00000010

#define THIS ((EnRl*)thisx)

void EnRl_Init(Actor* thisx, GlobalContext* globalCtx);
void EnRl_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnRl_Update(Actor* thisx, GlobalContext* globalCtx);
void EnRl_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80AE7798(EnRl* this, GlobalContext* globalCtx);
void func_80AE77B8(EnRl* this, GlobalContext* globalCtx);
void func_80AE77F8(EnRl* this, GlobalContext* globalCtx);
void func_80AE7838(EnRl* this, GlobalContext* globalCtx);
void func_80AE7C64(EnRl* this, GlobalContext* globalCtx);
void func_80AE7C94(EnRl* this, GlobalContext* globalCtx);
void func_80AE7CE8(EnRl* this, GlobalContext* globalCtx);
void func_80AE7D40(EnRl* this, GlobalContext* globalCtx);
void func_80AE7FD0(EnRl* this, GlobalContext* globalCtx);
void func_80AE7FDC(EnRl* this, GlobalContext* globalCtx);
void func_80AE7D94(EnRl* this, GlobalContext* globalCtx);

UNK_PTR D_80AE81A0[] = { 0x06003620, 0x06003960, 0x06003B60 };

extern SkeletonHeader D_06007B38;
extern AnimationHeader D_06000A3C;
extern AnimationHeader D_06000830;
extern AnimationHeader D_0600040C;

void EnRl_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnRl* this = THIS;

    SkelAnime_Free(&this->skelAnime, globalCtx);
}
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE72D0.s")

void func_80AE7358(EnRl* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06000A3C, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_06000A3C.genericHeader),
                         0, 0.0f);
    this->action = 4;
    this->drawConfig = 0;
    this->unk_1A0 = 0;
    this->unk_1A4 = 0;
    this->actor.shape.unk_14 = 0;
    this->unk_19C = 0.0f;
}

void func_80AE73D8(EnRl* this, GlobalContext* globalCtx) {
    static s32 D_80AE81AC = 0;

    if (globalCtx->csCtx.state == 0) {
        if (D_80AE81AC != 0) {
            if (this->actor.params == 2) {
                func_80AE7358(this);
            }
            D_80AE81AC = 0;
            return;
        }
    } else if (D_80AE81AC == 0) {
        D_80AE81AC = 1;
    }
}

EnRlActionFunc sActionFuncs[] = { func_80AE7798, func_80AE77B8, func_80AE77F8, func_80AE7838,
                                  func_80AE7C64, func_80AE7C94, func_80AE7CE8, func_80AE7D40 };
EnRlDrawFunc sDrawFuncs[] = { func_80AE7FD0, func_80AE7FDC, func_80AE7D94 };

const ActorInit En_Rl_InitVars = { ACTOR_EN_RL,
                                   ACTORTYPE_NPC,
                                   FLAGS,
                                   OBJECT_RL,
                                   sizeof(EnRl),
                                   (ActorFunc)EnRl_Init,
                                   (ActorFunc)EnRl_Destroy,
                                   (ActorFunc)EnRl_Update,
                                   (ActorFunc)EnRl_Draw };

void func_80AE744C(EnRl* this, GlobalContext* globalCtx) {
    func_8002E4B4(globalCtx, &this->actor, 75.0f, 30.0f, 30.0f, 5);
}

s32 func_80AE7494(EnRl* this) {
    return SkelAnime_FrameUpdateMatrix(&this->skelAnime);
}

s32 func_80AE74B4(EnRl* this, GlobalContext* globalCtx, u16 arg2, s32 arg3) {
    CsCmdActorAction* csCmdActorAction;

    if (globalCtx->csCtx.state != 0) {
        csCmdActorAction = globalCtx->csCtx.npcActions[arg3];
        if (csCmdActorAction != NULL && csCmdActorAction->action == arg2) {
            return 1;
        }
    }
    return 0;
}

s32 func_80AE74FC(EnRl* this, GlobalContext* globalCtx, u16 arg2, s32 arg3) {
    CsCmdActorAction* csCmdActorAction;

    if (globalCtx->csCtx.state != 0) {
        csCmdActorAction = globalCtx->csCtx.npcActions[arg3];
        if (csCmdActorAction != NULL && csCmdActorAction->action != arg2) {
            return 1;
        }
    }
    return 0;
}

void func_80AE7544(EnRl* this, GlobalContext* globalCtx) {
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06007B38, &D_06000A3C, 0, 0, 0);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE7590.s")
/*void func_80AE7590(EnRl *this, GlobalContext *globalCtx) {
    CsCmdActorAction* csCmdActorAction;
    Player* player = PLAYER;

    if (gSaveContext.sceneSetupIndex == 4 && globalCtx->sceneNum == SCENE_KENJYANOMA && globalCtx->csCtx.state != 0) {
        csCmdActorAction = globalCtx->csCtx.npcActions[6];
        if (csCmdActorAction != NULL && csCmdActorAction->action == 2 ) {
            if (this->unk_1A8 == 0) {
                Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_DEMO_EFFECT, player->actor.posRot.pos.x,
player->actor.posRot.pos.y + 80.0f, player->actor.posRot.pos.z, 0, 0, 0, 0xE); Item_Give(globalCtx,
ITEM_MEDALLION_LIGHT); this->unk_1A8 = 1;
            }
        }
    }
}*/

void func_80AE7668(EnRl* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s16 temp;

    this->drawConfig = 1;
    this->action = 1;
    temp = this->actor.posRot.rot.y + 0x8000;
    player->actor.shape.rot.y = temp;
    player->actor.posRot.rot.y = temp;
}

void func_80AE7698(EnRl* this, GlobalContext* globalCtx) {
    CsCmdActorAction* csCmdActorAction;

    if (globalCtx->csCtx.state != 0) {
        csCmdActorAction = globalCtx->csCtx.npcActions[0];
        if (csCmdActorAction != NULL && csCmdActorAction->action == 3) {
            {
                SkelAnime_ChangeAnim(&this->skelAnime, &D_0600040C, 1.0f, 0.0f,
                                     SkelAnime_GetFrameCount(&D_0600040C.genericHeader), 2, 0.0f);
                this->action = 2;
            }
        }
    }
}

void func_80AE772C(EnRl* this, s32 arg1) {
    if (arg1 != 0) {
        SkelAnime_ChangeAnim(&this->skelAnime, &D_06000830, 1.0f, 0.0f,
                             SkelAnime_GetFrameCount(&D_06000830.genericHeader), 0, 0.0f);
        this->action = 3;
    }
}

void func_80AE7798(EnRl* this, GlobalContext* globalCtx) {
    func_80AE7668(this, globalCtx);
}

void func_80AE77B8(EnRl* this, GlobalContext* globalCtx) {
    func_80AE744C(this, globalCtx);
    func_80AE7494(this);
    func_80AE72D0(this);
    func_80AE7698(this, globalCtx);
}

void func_80AE77F8(EnRl* this, GlobalContext* globalCtx) {
    s32 something;

    func_80AE744C(this, globalCtx);
    something = func_80AE7494(this);
    func_80AE72D0(this);
    func_80AE772C(this, something);
}

void func_80AE7838(EnRl* this, GlobalContext* globalCtx) {
    func_80AE744C(this, globalCtx);
    func_80AE7494(this);
    func_80AE72D0(this);
    func_80AE7590(this, globalCtx);
}

void func_80AE7878(EnRl* this, GlobalContext* globalCtx) {
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06007B38, &D_06000A3C, 0, 0, 0);
    this->action = 4;
    this->actor.shape.unk_14 = 0;
}

void func_80AE78D4(EnRl* this, GlobalContext* globalCtx) {
    Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DEMO_6K, this->actor.posRot.pos.x,
                       kREG(18) + 22.0f + this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 5);
}

void func_80AE7954(EnRl* this, GlobalContext* globalCtx) {
    if (func_80AE74B4(this, globalCtx, 4, 0)) {
        this->action = 5;
        this->drawConfig = 2;
        this->unk_1A0 = 0;
        this->actor.shape.unk_14 = 0;
        this->unk_19C = 0.0f;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE79A4.s")

void func_80AE7AF8(EnRl* this, GlobalContext* globalCtx) {
    if (func_80AE74B4(this, globalCtx, 3, 0)) {
        SkelAnime_ChangeAnim(&this->skelAnime, &D_0600040C, 1.0f, 0.0f,
                             SkelAnime_GetFrameCount(&D_0600040C.genericHeader), 2, -8.0f);
        this->action = 6;
    } else if (func_80AE74FC(this, globalCtx, 4, 0)) {
        this->action = 5;
        this->drawConfig = 2;
        this->unk_19C = kREG(5) + 10.0f;
        this->unk_1A0 = 0xFF;
        if (this->unk_1A4 == 0) {
            func_80AE78D4(this, globalCtx);
            this->unk_1A4 = 1;
        }
        this->actor.shape.unk_14 = 0xFF;
    }
}

void func_80AE7BF8(EnRl* this, UNK_TYPE arg1) {
    if (arg1 != 0) {
        SkelAnime_ChangeAnim(&this->skelAnime, &D_06000830, 1.0f, 0.0f,
                             SkelAnime_GetFrameCount(&D_06000830.genericHeader), 0, 0.0f);
        this->action = 7;
    }
}

void func_80AE7C64(EnRl* this, GlobalContext* globalCtx) {
    func_80AE7954(this, globalCtx);
    func_80AE73D8(this, globalCtx);
}

void func_80AE7C94(EnRl* this, GlobalContext* globalCtx) {
    func_80AE744C(this, globalCtx);
    func_80AE7494(this);
    func_80AE72D0(this);
    func_80AE79A4(this, globalCtx);
    func_80AE73D8(this, globalCtx);
}

void func_80AE7CE8(EnRl* this, GlobalContext* globalCtx) {
    s32 something;

    func_80AE744C(this, globalCtx);
    something = func_80AE7494(this);
    func_80AE72D0(this);
    func_80AE7BF8(this, something);
    func_80AE73D8(this, globalCtx);
}

void func_80AE7D40(EnRl* this, GlobalContext* globalCtx) {
    func_80AE744C(this, globalCtx);
    func_80AE7494(this);
    func_80AE72D0(this);
    func_80AE7AF8(this, globalCtx);
    func_80AE73D8(this, globalCtx);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE7D94.s")
/*void func_80AE7D94(EnRl *this, GlobalContext *globalCtx) {
    s32 pad[2];
    s16 temp = this->unk_190;
    s32 addr = D_80AE81A0[temp];
    SkelAnime* skelAnime = &this->skelAnime;
    s32 pad1;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_rl_inKenjyanomaDemo02.c", 304);
    func_80093D84(globalCtx->state.gfxCtx);

    gSPSegment(oGfxCtx->polyXlu.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_80AE81A0[addr]));
    gSPSegment(oGfxCtx->polyXlu.p++, 0x09, SEGMENTED_TO_VIRTUAL(D_80AE81A0[addr]));
    gDPSetEnvColor(oGfxCtx->polyXlu.p++, 0, 0, 0, this->unk_1A0);
    gSPSegment(oGfxCtx->polyXlu.p++, 0x0C, &D_80116280[0]);

    oGfxCtx->polyXlu.p = SkelAnime_DrawSV2(globalCtx, skelAnime->skeleton, skelAnime->limbDrawTbl,
skelAnime->dListCount, 0, 0, 0, oGfxCtx->polyXlu.p);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_rl_inKenjyanomaDemo02.c", 331);
}*/

void EnRl_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnRl* this = THIS;

    if ((this->action < 0) || (this->action > 7) || (sActionFuncs[this->action] == 0)) {
        osSyncPrintf(VT_FGCOL(RED) "メインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
    } else {
        sActionFuncs[this->action](this, globalCtx);
    }
}

void EnRl_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnRl* this = THIS;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 50.0f);
    if (this->actor.params == 2) {
        func_80AE7878(this, globalCtx);
    } else {
        func_80AE7544(this, globalCtx);
    }
}
void func_80AE7FD0(EnRl* this, GlobalContext* globalCtx) {
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Rl/func_80AE7FDC.s")

void EnRl_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnRl* this = THIS;

    if (this->drawConfig < 0 || this->drawConfig >= 3 || sDrawFuncs[this->drawConfig] == NULL) {
        osSyncPrintf(VT_FGCOL(RED) "描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
        return;
    }
    sDrawFuncs[this->drawConfig](this, globalCtx);
}
