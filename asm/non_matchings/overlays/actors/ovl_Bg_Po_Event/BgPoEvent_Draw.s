glabel BgPoEvent_Draw
/* 0180C 808A7A1C 27BDFF90 */  addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
/* 01810 808A7A20 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01814 808A7A24 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01818 808A7A28 AFA50074 */  sw      $a1, 0x0074($sp)           
/* 0181C 808A7A2C 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 01820 808A7A30 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01824 808A7A34 3C06808A */  lui     $a2, %hi(D_808A7DB0)       ## $a2 = 808A0000
/* 01828 808A7A38 24C67DB0 */  addiu   $a2, $a2, %lo(D_808A7DB0)  ## $a2 = 808A7DB0
/* 0182C 808A7A3C 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFC0
/* 01830 808A7A40 240705C9 */  addiu   $a3, $zero, 0x05C9         ## $a3 = 000005C9
/* 01834 808A7A44 0C031AB1 */  jal     func_800C6AC4              
/* 01838 808A7A48 AFA50040 */  sw      $a1, 0x0040($sp)           
/* 0183C 808A7A4C 8FAF0074 */  lw      $t7, 0x0074($sp)           
/* 01840 808A7A50 0C024F46 */  jal     func_80093D18              
/* 01844 808A7A54 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 01848 808A7A58 92020168 */  lbu     $v0, 0x0168($s0)           ## 00000168
/* 0184C 808A7A5C 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 01850 808A7A60 8FA80040 */  lw      $t0, 0x0040($sp)           
/* 01854 808A7A64 10410004 */  beq     $v0, $at, .L808A7A78       
/* 01858 808A7A68 3C0EDA38 */  lui     $t6, 0xDA38                ## $t6 = DA380000
/* 0185C 808A7A6C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 01860 808A7A70 54410018 */  bnel    $v0, $at, .L808A7AD4       
/* 01864 808A7A74 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
.L808A7A78:
/* 01868 808A7A78 8E020164 */  lw      $v0, 0x0164($s0)           ## 00000164
/* 0186C 808A7A7C 3C18808A */  lui     $t8, %hi(func_808A7500)    ## $t8 = 808A0000
/* 01870 808A7A80 27187500 */  addiu   $t8, $t8, %lo(func_808A7500) ## $t8 = 808A7500
/* 01874 808A7A84 17020003 */  bne     $t8, $v0, .L808A7A94       
/* 01878 808A7A88 3C0AFB00 */  lui     $t2, 0xFB00                ## $t2 = FB000000
/* 0187C 808A7A8C 10000008 */  beq     $zero, $zero, .L808A7AB0   
/* 01880 808A7A90 240400FF */  addiu   $a0, $zero, 0x00FF         ## $a0 = 000000FF
.L808A7A94:
/* 01884 808A7A94 3C19808A */  lui     $t9, %hi(func_808A75B8)    ## $t9 = 808A0000
/* 01888 808A7A98 273975B8 */  addiu   $t9, $t9, %lo(func_808A75B8) ## $t9 = 808A75B8
/* 0188C 808A7A9C 57220004 */  bnel    $t9, $v0, .L808A7AB0       
/* 01890 808A7AA0 9204016D */  lbu     $a0, 0x016D($s0)           ## 0000016D
/* 01894 808A7AA4 10000002 */  beq     $zero, $zero, .L808A7AB0   
/* 01898 808A7AA8 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 0189C 808A7AAC 9204016D */  lbu     $a0, 0x016D($s0)           ## 0000016D
.L808A7AB0:
/* 018A0 808A7AB0 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 018A4 808A7AB4 308B00FF */  andi    $t3, $a0, 0x00FF           ## $t3 = 00000000
/* 018A8 808A7AB8 2401FF00 */  addiu   $at, $zero, 0xFF00         ## $at = FFFFFF00
/* 018AC 808A7ABC 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 018B0 808A7AC0 AD0902C0 */  sw      $t1, 0x02C0($t0)           ## 000002C0
/* 018B4 808A7AC4 01616025 */  or      $t4, $t3, $at              ## $t4 = FFFFFF00
/* 018B8 808A7AC8 AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 018BC 808A7ACC AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 018C0 808A7AD0 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
.L808A7AD4:
/* 018C4 808A7AD4 35CE0003 */  ori     $t6, $t6, 0x0003           ## $t6 = DA380003
/* 018C8 808A7AD8 3C05808A */  lui     $a1, %hi(D_808A7DC4)       ## $a1 = 808A0000
/* 018CC 808A7ADC 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 018D0 808A7AE0 AD0D02C0 */  sw      $t5, 0x02C0($t0)           ## 000002C0
/* 018D4 808A7AE4 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 018D8 808A7AE8 8FAF0074 */  lw      $t7, 0x0074($sp)           
/* 018DC 808A7AEC 24A57DC4 */  addiu   $a1, $a1, %lo(D_808A7DC4)  ## $a1 = 808A7DC4
/* 018E0 808A7AF0 240605DD */  addiu   $a2, $zero, 0x05DD         ## $a2 = 000005DD
/* 018E4 808A7AF4 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 018E8 808A7AF8 AFA80040 */  sw      $t0, 0x0040($sp)           
/* 018EC 808A7AFC 0C0346A2 */  jal     Matrix_NewMtx              
/* 018F0 808A7B00 AFA20028 */  sw      $v0, 0x0028($sp)           
/* 018F4 808A7B04 8FA30028 */  lw      $v1, 0x0028($sp)           
/* 018F8 808A7B08 8FA80040 */  lw      $t0, 0x0040($sp)           
/* 018FC 808A7B0C 3C19DE00 */  lui     $t9, 0xDE00                ## $t9 = DE000000
/* 01900 808A7B10 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 01904 808A7B14 8D0202C0 */  lw      $v0, 0x02C0($t0)           ## 000002C0
/* 01908 808A7B18 3C0B808A */  lui     $t3, %hi(D_808A7D94)       ## $t3 = 808A0000
/* 0190C 808A7B1C 3C06808A */  lui     $a2, %hi(D_808A7DD8)       ## $a2 = 808A0000
/* 01910 808A7B20 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 01914 808A7B24 AD1802C0 */  sw      $t8, 0x02C0($t0)           ## 000002C0
/* 01918 808A7B28 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 0191C 808A7B2C 92090168 */  lbu     $t1, 0x0168($s0)           ## 00000168
/* 01920 808A7B30 24C67DD8 */  addiu   $a2, $a2, %lo(D_808A7DD8)  ## $a2 = 808A7DD8
/* 01924 808A7B34 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFC0
/* 01928 808A7B38 00095080 */  sll     $t2, $t1,  2               
/* 0192C 808A7B3C 016A5821 */  addu    $t3, $t3, $t2              
/* 01930 808A7B40 8D6B7D94 */  lw      $t3, %lo(D_808A7D94)($t3)  
/* 01934 808A7B44 240705E4 */  addiu   $a3, $zero, 0x05E4         ## $a3 = 000005E4
/* 01938 808A7B48 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 0193C 808A7B4C 8FAC0074 */  lw      $t4, 0x0074($sp)           
/* 01940 808A7B50 0C031AD5 */  jal     func_800C6B54              
/* 01944 808A7B54 8D850000 */  lw      $a1, 0x0000($t4)           ## 00000000
/* 01948 808A7B58 92020168 */  lbu     $v0, 0x0168($s0)           ## 00000168
/* 0194C 808A7B5C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 01950 808A7B60 50400003 */  beql    $v0, $zero, .L808A7B70     
/* 01954 808A7B64 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01958 808A7B68 1441004A */  bne     $v0, $at, .L808A7C94       
/* 0195C 808A7B6C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
.L808A7B70:
/* 01960 808A7B70 44811000 */  mtc1    $at, $f2                   ## $f2 = 1.00
/* 01964 808A7B74 3C01808A */  lui     $at, %hi(D_808A7E00)       ## $at = 808A0000
/* 01968 808A7B78 C4247E00 */  lwc1    $f4, %lo(D_808A7E00)($at)  
/* 0196C 808A7B7C C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 01970 808A7B80 3C01808A */  lui     $at, %hi(D_808A7E04)       ## $at = 808A0000
/* 01974 808A7B84 C42A7E04 */  lwc1    $f10, %lo(D_808A7E04)($at) 
/* 01978 808A7B88 46062201 */  sub.s   $f8, $f4, $f6              
/* 0197C 808A7B8C 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 01980 808A7B90 460A4002 */  mul.s   $f0, $f8, $f10             
/* 01984 808A7B94 4600103C */  c.lt.s  $f2, $f0                   
/* 01988 808A7B98 00000000 */  nop
/* 0198C 808A7B9C 4503003E */  bc1tl   .L808A7C98                 
/* 01990 808A7BA0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01994 808A7BA4 C6100024 */  lwc1    $f16, 0x0024($s0)          ## 00000024
/* 01998 808A7BA8 44812000 */  mtc1    $at, $f4                   ## $f4 = 30.00
/* 0199C 808A7BAC 3C01808A */  lui     $at, %hi(D_808A7E08)       ## $at = 808A0000
/* 019A0 808A7BB0 E7B00058 */  swc1    $f16, 0x0058($sp)          
/* 019A4 808A7BB4 C6120028 */  lwc1    $f18, 0x0028($s0)          ## 00000028
/* 019A8 808A7BB8 C42A7E08 */  lwc1    $f10, %lo(D_808A7E08)($at) 
/* 019AC 808A7BBC 3C01808A */  lui     $at, %hi(D_808A7E0C)       ## $at = 808A0000
/* 019B0 808A7BC0 46049181 */  sub.s   $f6, $f18, $f4             
/* 019B4 808A7BC4 C4327E0C */  lwc1    $f18, %lo(D_808A7E0C)($at) 
/* 019B8 808A7BC8 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 019BC 808A7BCC 460A0402 */  mul.s   $f16, $f0, $f10            
/* 019C0 808A7BD0 E7A6005C */  swc1    $f6, 0x005C($sp)           
/* 019C4 808A7BD4 C608002C */  lwc1    $f8, 0x002C($s0)           ## 0000002C
/* 019C8 808A7BD8 44813000 */  mtc1    $at, $f6                   ## $f6 = 100.00
/* 019CC 808A7BDC 3C01431B */  lui     $at, 0x431B                ## $at = 431B0000
/* 019D0 808A7BE0 E7A80060 */  swc1    $f8, 0x0060($sp)           
/* 019D4 808A7BE4 46060202 */  mul.s   $f8, $f0, $f6              
/* 019D8 808A7BE8 44815000 */  mtc1    $at, $f10                  ## $f10 = 155.00
/* 019DC 808A7BEC 46128100 */  add.s   $f4, $f16, $f18            
/* 019E0 808A7BF0 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 019E4 808A7BF4 E7A20050 */  swc1    $f2, 0x0050($sp)           
/* 019E8 808A7BF8 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 019EC 808A7BFC E7A40054 */  swc1    $f4, 0x0054($sp)           
/* 019F0 808A7C00 460A4400 */  add.s   $f16, $f8, $f10            
/* 019F4 808A7C04 E7A4004C */  swc1    $f4, 0x004C($sp)           
/* 019F8 808A7C08 27A40058 */  addiu   $a0, $sp, 0x0058           ## $a0 = FFFFFFE8
/* 019FC 808A7C0C 27A5004C */  addiu   $a1, $sp, 0x004C           ## $a1 = FFFFFFDC
/* 01A00 808A7C10 444DF800 */  cfc1    $t5, $31
/* 01A04 808A7C14 44C6F800 */  ctc1    $a2, $31
/* 01A08 808A7C18 8FA70074 */  lw      $a3, 0x0074($sp)           
/* 01A0C 808A7C1C 460084A4 */  cvt.w.s $f18, $f16                 
/* 01A10 808A7C20 4446F800 */  cfc1    $a2, $31
/* 01A14 808A7C24 00000000 */  nop
/* 01A18 808A7C28 30C60078 */  andi    $a2, $a2, 0x0078           ## $a2 = 00000000
/* 01A1C 808A7C2C 50C00013 */  beql    $a2, $zero, .L808A7C7C     
/* 01A20 808A7C30 44069000 */  mfc1    $a2, $f18                  
/* 01A24 808A7C34 44819000 */  mtc1    $at, $f18                  ## $f18 = 2147483648.00
/* 01A28 808A7C38 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01A2C 808A7C3C 46128481 */  sub.s   $f18, $f16, $f18           
/* 01A30 808A7C40 44C6F800 */  ctc1    $a2, $31
/* 01A34 808A7C44 00000000 */  nop
/* 01A38 808A7C48 460094A4 */  cvt.w.s $f18, $f18                 
/* 01A3C 808A7C4C 4446F800 */  cfc1    $a2, $31
/* 01A40 808A7C50 00000000 */  nop
/* 01A44 808A7C54 30C60078 */  andi    $a2, $a2, 0x0078           ## $a2 = 00000000
/* 01A48 808A7C58 14C00005 */  bne     $a2, $zero, .L808A7C70     
/* 01A4C 808A7C5C 00000000 */  nop
/* 01A50 808A7C60 44069000 */  mfc1    $a2, $f18                  
/* 01A54 808A7C64 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 01A58 808A7C68 10000007 */  beq     $zero, $zero, .L808A7C88   
/* 01A5C 808A7C6C 00C13025 */  or      $a2, $a2, $at              ## $a2 = 80000000
.L808A7C70:
/* 01A60 808A7C70 10000005 */  beq     $zero, $zero, .L808A7C88   
/* 01A64 808A7C74 2406FFFF */  addiu   $a2, $zero, 0xFFFF         ## $a2 = FFFFFFFF
/* 01A68 808A7C78 44069000 */  mfc1    $a2, $f18                  
.L808A7C7C:
/* 01A6C 808A7C7C 00000000 */  nop
/* 01A70 808A7C80 04C0FFFB */  bltz    $a2, .L808A7C70            
/* 01A74 808A7C84 00000000 */  nop
.L808A7C88:
/* 01A78 808A7C88 44CDF800 */  ctc1    $t5, $31
/* 01A7C 808A7C8C 0C00CF0C */  jal     func_80033C30              
/* 01A80 808A7C90 30C600FF */  andi    $a2, $a2, 0x00FF           ## $a2 = 000000FF
.L808A7C94:
/* 01A84 808A7C94 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808A7C98:
/* 01A88 808A7C98 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01A8C 808A7C9C 27BD0070 */  addiu   $sp, $sp, 0x0070           ## $sp = 00000000
/* 01A90 808A7CA0 03E00008 */  jr      $ra                        
/* 01A94 808A7CA4 00000000 */  nop
/* 01A98 808A7CA8 00000000 */  nop
/* 01A9C 808A7CAC 00000000 */  nop
