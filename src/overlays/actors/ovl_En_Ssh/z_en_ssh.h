#ifndef _Z_EN_SSH_H_
#define _Z_EN_SSH_H_

#include <ultra64.h>
#include <global.h>

struct EnSsh;

typedef void (*EnSshActionFunc)(struct EnSsh*, GlobalContext*);


typedef struct EnSsh {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1AC];
    /* 0x02F8 */ EnSshActionFunc actionFunc;
    /* 0x02FC */ char unk_2FC[0x2D8];
} EnSsh; // size = 0x05D4

extern const ActorInit En_Ssh_InitVars;

#endif
