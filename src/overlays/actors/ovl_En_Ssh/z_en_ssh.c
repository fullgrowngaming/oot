#include "z_en_ssh.h"

#define FLAGS 0x00000035

#define THIS ((EnSsh*)thisx)

void EnSsh_Init(Actor* thisx, GlobalContext* globalCtx);
void EnSsh_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnSsh_Update(Actor* thisx, GlobalContext* globalCtx);
void EnSsh_Draw(Actor* thisx, GlobalContext* globalCtx);

static Vtx unusedVertices[] = {
    VTX(-1, 0, 0, 0, 1024, 0xFF, 0xFF, 0xFF, 0xFF),
    VTX(1, 0, 0, 1024, 1024, 0xFF, 0xFF, 0xFF, 0xFF),
    VTX(1, 100, 0, 1024, 0, 0xFF, 0xFF, 0xFF, 0xFF),
    VTX(-1, 100, 0, 0, 0, 0xFF, 0xFF, 0xFF, 0xFF),
};

Gfx unusedDlist[] = { gsDPPipeSync(),
                      gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
                      gsDPSetCombineLERP(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, PRIMITIVE, 0, 0, 0, PRIMITIVE),
                      gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
                      gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
                      gsDPSetPrimColor(0, 0, 0xFF, 0xFF, 0xFF, 0xFF),
                      gsSPVertex(unusedVertices, 4, 0),
                      gsSP1Triangle(0, 1, 2, 0),
                      gsSP1Triangle(0, 2, 3, 0),
                      gsSPEndDisplayList() };

const ActorInit En_Ssh_InitVars = {
    ACTOR_EN_SSH,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_SSH,
    sizeof(EnSsh),
    (ActorFunc)EnSsh_Init,
    (ActorFunc)EnSsh_Destroy,
    (ActorFunc)EnSsh_Update,
    (ActorFunc)EnSsh_Draw,
};

s32 D_80B04470[] = { 0x06000900, 0x10010000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
                     0x00000000, 0x01010000, 0x00200032, 0xFFE80000, 0x00000000 };
s32 D_80B0449C[] = { 0x01000000, 0x00000000, 0xFF000000 };
s32 D_80B044A8[] = { 0x06000039, 0x10010000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
                     0x00000000, 0x00000100, 0x0014003C, 0xFFE20000, 0x00000000 };
s32 D_80B044D4[] = { 0x00000000, 0xFFCFFFFF, 0x00040000, 0x00000000, 0x00000000,
                     0x01000100, 0x01000000, 0xFF100000, 0x001C0064 };
s32 D_80B044F8[] = { 0x06110039, 0x10000000, 0x00000001, D_80B044D4 };
s32 D_80B04508[] = { 0x00000000, 0x00000000, 0x00000000 };
s32 D_80B04514[] = { 0xFFFFFF4B };
s32 D_80B04518[] = { 0xFFFFFF4B };
s32 D_80B0451C[] = { 0xFFFFFF00 };
s32 D_80B04520[] = { 0xFFFFFF00 };
s32 D_80B04524[] = { 0x44508000, 0x44508000, 0x00000000 };
s32 D_80B04530[] = { 0x44508000, 0xC4120000, 0x00000000 };
s32 D_80B0453C[] = { D_80B04470, D_80B04470, D_80B04470, D_80B044A8, D_80B044A8, D_80B044A8 };
s32 D_80B04554[] = { 0x06005BE8, 0x06000304, 0x06000304, 0x060055F8, 0x06000304, 0x06000304, 0x06005BE8 };
s32 D_80B04570[] = { 0x3F800000, 0x40800000, 0x3F800000, 0x3F800000, 0x41000000, 0x40C00000, 0x40000000 };
s32 D_80B0458C[] = { 0x03030103, 0x01010100 };
s32 D_80B04594[] = { 0x42200000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
                     0x00000000, 0xC2200000, 0x00000000, 0x00000000 };
s32 D_80B045B8[] = { 0x060007E0, 0x06000C60, 0x06001060, 0x00000000, 0x00000000, 0x00000000 };

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B02270.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B02278.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B02300.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B023FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B02490.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B02598.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B025C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B02700.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B02834.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B02854.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B02884.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B028CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B02920.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B0294C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B02AC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B02B9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B02C74.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B02D14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B02D50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B02DBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B02EA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B02EDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B02F1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B03060.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B030D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B031DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B03238.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B0330C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B033BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B03400.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B034B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B0368C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/EnSsh_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/EnSsh_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B03968.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B039BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B03A00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B03C8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B03D74.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B03E74.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B03F48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B03FF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/EnSsh_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B04190.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/func_80B04280.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ssh/EnSsh_Draw.s")
