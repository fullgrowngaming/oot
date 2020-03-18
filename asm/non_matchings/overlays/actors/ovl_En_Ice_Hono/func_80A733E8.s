glabel func_80A733E8
/* 003F8 80A733E8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 003FC 80A733EC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00400 80A733F0 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 00404 80A733F4 44813000 */  mtc1    $at, $f6                   ## $f6 = 60.00
/* 00408 80A733F8 C4840090 */  lwc1    $f4, 0x0090($a0)           ## 00000090
/* 0040C 80A733FC 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00410 80A73400 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 00414 80A73404 4606203C */  c.lt.s  $f4, $f6                   
/* 00418 80A73408 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 0041C 80A7340C 4502002D */  bc1fl   .L80A734C4                 
/* 00420 80A73410 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00424 80A73414 8484008A */  lh      $a0, 0x008A($a0)           ## 0000008A
/* 00428 80A73418 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 0042C 80A7341C AFA20024 */  sw      $v0, 0x0024($sp)           
/* 00430 80A73420 00812021 */  addu    $a0, $a0, $at              
/* 00434 80A73424 00042400 */  sll     $a0, $a0, 16               
/* 00438 80A73428 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 0043C 80A7342C 00042403 */  sra     $a0, $a0, 16               
/* 00440 80A73430 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00444 80A73434 44814000 */  mtc1    $at, $f8                   ## $f8 = 40.00
/* 00448 80A73438 8FA20024 */  lw      $v0, 0x0024($sp)           
/* 0044C 80A7343C 8FAE0028 */  lw      $t6, 0x0028($sp)           
/* 00450 80A73440 46080282 */  mul.s   $f10, $f0, $f8             
/* 00454 80A73444 C4500024 */  lwc1    $f16, 0x0024($v0)          ## 00000024
/* 00458 80A73448 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 0045C 80A7344C 46105480 */  add.s   $f18, $f10, $f16           
/* 00460 80A73450 E7B20018 */  swc1    $f18, 0x0018($sp)          
/* 00464 80A73454 C4440028 */  lwc1    $f4, 0x0028($v0)           ## 00000028
/* 00468 80A73458 E7A4001C */  swc1    $f4, 0x001C($sp)           
/* 0046C 80A7345C 85C4008A */  lh      $a0, 0x008A($t6)           ## 0000008A
/* 00470 80A73460 00812021 */  addu    $a0, $a0, $at              
/* 00474 80A73464 00042400 */  sll     $a0, $a0, 16               
/* 00478 80A73468 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 0047C 80A7346C 00042403 */  sra     $a0, $a0, 16               
/* 00480 80A73470 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00484 80A73474 44813000 */  mtc1    $at, $f6                   ## $f6 = 40.00
/* 00488 80A73478 8FA20024 */  lw      $v0, 0x0024($sp)           
/* 0048C 80A7347C 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 00490 80A73480 46060202 */  mul.s   $f8, $f0, $f6              
/* 00494 80A73484 C44A002C */  lwc1    $f10, 0x002C($v0)          ## 0000002C
/* 00498 80A73488 27A40018 */  addiu   $a0, $sp, 0x0018           ## $a0 = FFFFFFF0
/* 0049C 80A7348C 24A50024 */  addiu   $a1, $a1, 0x0024           ## $a1 = 00000024
/* 004A0 80A73490 460A4400 */  add.s   $f16, $f8, $f10            
/* 004A4 80A73494 0C29CBFC */  jal     func_80A72FF0              
/* 004A8 80A73498 E7B00020 */  swc1    $f16, 0x0020($sp)          
/* 004AC 80A7349C 3C0144C8 */  lui     $at, 0x44C8                ## $at = 44C80000
/* 004B0 80A734A0 44819000 */  mtc1    $at, $f18                  ## $f18 = 1600.00
/* 004B4 80A734A4 00000000 */  nop
/* 004B8 80A734A8 4612003E */  c.le.s  $f0, $f18                  
/* 004BC 80A734AC 00000000 */  nop
/* 004C0 80A734B0 45020004 */  bc1fl   .L80A734C4                 
/* 004C4 80A734B4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 004C8 80A734B8 10000002 */  beq     $zero, $zero, .L80A734C4   
/* 004CC 80A734BC 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 004D0 80A734C0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A734C4:
/* 004D4 80A734C4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 004D8 80A734C8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 004DC 80A734CC 03E00008 */  jr      $ra                        
/* 004E0 80A734D0 00000000 */  nop

