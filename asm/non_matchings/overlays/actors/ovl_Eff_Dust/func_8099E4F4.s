glabel func_8099E4F4
/* 00C24 8099E4F4 27BDFF50 */  addiu   $sp, $sp, 0xFF50           ## $sp = FFFFFF50
/* 00C28 8099E4F8 AFBF004C */  sw      $ra, 0x004C($sp)           
/* 00C2C 8099E4FC AFBE0048 */  sw      $s8, 0x0048($sp)           
/* 00C30 8099E500 AFB70044 */  sw      $s7, 0x0044($sp)           
/* 00C34 8099E504 AFB60040 */  sw      $s6, 0x0040($sp)           
/* 00C38 8099E508 AFB5003C */  sw      $s5, 0x003C($sp)           
/* 00C3C 8099E50C AFB40038 */  sw      $s4, 0x0038($sp)           
/* 00C40 8099E510 AFB30034 */  sw      $s3, 0x0034($sp)           
/* 00C44 8099E514 AFB20030 */  sw      $s2, 0x0030($sp)           
/* 00C48 8099E518 AFB1002C */  sw      $s1, 0x002C($sp)           
/* 00C4C 8099E51C AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00C50 8099E520 F7B60020 */  sdc1    $f22, 0x0020($sp)          
/* 00C54 8099E524 F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 00C58 8099E528 8CB30000 */  lw      $s3, 0x0000($a1)           ## 00000000
/* 00C5C 8099E52C 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 00C60 8099E530 00A0F025 */  or      $s8, $a1, $zero            ## $s8 = 00000000
/* 00C64 8099E534 3C06809A */  lui     $a2, %hi(D_8099EB80)       ## $a2 = 809A0000
/* 00C68 8099E538 24C6EB80 */  addiu   $a2, $a2, %lo(D_8099EB80)  ## $a2 = 8099EB80
/* 00C6C 8099E53C 27A40080 */  addiu   $a0, $sp, 0x0080           ## $a0 = FFFFFFD0
/* 00C70 8099E540 240701A9 */  addiu   $a3, $zero, 0x01A9         ## $a3 = 000001A9
/* 00C74 8099E544 0C031AB1 */  jal     func_800C6AC4              
/* 00C78 8099E548 02602825 */  or      $a1, $s3, $zero            ## $a1 = 00000000
/* 00C7C 8099E54C 0C024F46 */  jal     func_80093D18              
/* 00C80 8099E550 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 00C84 8099E554 8E6302D0 */  lw      $v1, 0x02D0($s3)           ## 000002D0
/* 00C88 8099E558 3C0FE700 */  lui     $t7, 0xE700                ## $t7 = E7000000
/* 00C8C 8099E55C 3C088080 */  lui     $t0, 0x8080                ## $t0 = 80800000
/* 00C90 8099E560 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 00C94 8099E564 AE6E02D0 */  sw      $t6, 0x02D0($s3)           ## 000002D0
/* 00C98 8099E568 AC600004 */  sw      $zero, 0x0004($v1)         ## 00000004
/* 00C9C 8099E56C AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 00CA0 8099E570 8E6302D0 */  lw      $v1, 0x02D0($s3)           ## 000002D0
/* 00CA4 8099E574 350880FF */  ori     $t0, $t0, 0x80FF           ## $t0 = 808080FF
/* 00CA8 8099E578 3C19FA00 */  lui     $t9, 0xFA00                ## $t9 = FA000000
/* 00CAC 8099E57C 24780008 */  addiu   $t8, $v1, 0x0008           ## $t8 = 00000008
/* 00CB0 8099E580 AE7802D0 */  sw      $t8, 0x02D0($s3)           ## 000002D0
/* 00CB4 8099E584 AC680004 */  sw      $t0, 0x0004($v1)           ## 00000004
/* 00CB8 8099E588 AC790000 */  sw      $t9, 0x0000($v1)           ## 00000000
/* 00CBC 8099E58C 8E6302D0 */  lw      $v1, 0x02D0($s3)           ## 000002D0
/* 00CC0 8099E590 3C0B8080 */  lui     $t3, 0x8080                ## $t3 = 80800000
/* 00CC4 8099E594 356B8000 */  ori     $t3, $t3, 0x8000           ## $t3 = 80808000
/* 00CC8 8099E598 24690008 */  addiu   $t1, $v1, 0x0008           ## $t1 = 00000008
/* 00CCC 8099E59C AE6902D0 */  sw      $t1, 0x02D0($s3)           ## 000002D0
/* 00CD0 8099E5A0 3C0AFB00 */  lui     $t2, 0xFB00                ## $t2 = FB000000
/* 00CD4 8099E5A4 AC6A0000 */  sw      $t2, 0x0000($v1)           ## 00000000
/* 00CD8 8099E5A8 AC6B0004 */  sw      $t3, 0x0004($v1)           ## 00000004
/* 00CDC 8099E5AC 8E6302D0 */  lw      $v1, 0x02D0($s3)           ## 000002D0
/* 00CE0 8099E5B0 3C0E809A */  lui     $t6, %hi(D_8099EB60)       ## $t6 = 809A0000
/* 00CE4 8099E5B4 3C0DDB06 */  lui     $t5, 0xDB06                ## $t5 = DB060000
/* 00CE8 8099E5B8 246C0008 */  addiu   $t4, $v1, 0x0008           ## $t4 = 00000008
/* 00CEC 8099E5BC AE6C02D0 */  sw      $t4, 0x02D0($s3)           ## 000002D0
/* 00CF0 8099E5C0 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00CF4 8099E5C4 35AD0020 */  ori     $t5, $t5, 0x0020           ## $t5 = DB060020
/* 00CF8 8099E5C8 25CEEB60 */  addiu   $t6, $t6, %lo(D_8099EB60)  ## $t6 = 8099EB60
/* 00CFC 8099E5CC 4481B000 */  mtc1    $at, $f22                  ## $f22 = 1.00
/* 00D00 8099E5D0 2632024C */  addiu   $s2, $s1, 0x024C           ## $s2 = 0000024C
/* 00D04 8099E5D4 2637014C */  addiu   $s7, $s1, 0x014C           ## $s7 = 0000014C
/* 00D08 8099E5D8 0000A025 */  or      $s4, $zero, $zero          ## $s4 = 00000000
/* 00D0C 8099E5DC AC6E0004 */  sw      $t6, 0x0004($v1)           ## 00000004
/* 00D10 8099E5E0 AC6D0000 */  sw      $t5, 0x0000($v1)           ## 00000000
.L8099E5E4:
/* 00D14 8099E5E4 C6F40000 */  lwc1    $f20, 0x0000($s7)          ## 0000014C
/* 00D18 8099E5E8 4616A03C */  c.lt.s  $f20, $f22                 
/* 00D1C 8099E5EC 00000000 */  nop
/* 00D20 8099E5F0 4502004C */  bc1fl   .L8099E724                 
/* 00D24 8099E5F4 26940001 */  addiu   $s4, $s4, 0x0001           ## $s4 = 00000001
/* 00D28 8099E5F8 4614A102 */  mul.s   $f4, $f20, $f20            
/* 00D2C 8099E5FC C6220550 */  lwc1    $f2, 0x0550($s1)           ## 00000550
/* 00D30 8099E600 C6300554 */  lwc1    $f16, 0x0554($s1)          ## 00000554
/* 00D34 8099E604 C6320558 */  lwc1    $f18, 0x0558($s1)          ## 00000558
/* 00D38 8099E608 3C020403 */  lui     $v0, 0x0403                ## $v0 = 04030000
/* 00D3C 8099E60C 4602B201 */  sub.s   $f8, $f22, $f2             
/* 00D40 8099E610 24427880 */  addiu   $v0, $v0, 0x7880           ## $v0 = 04037880
/* 00D44 8099E614 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00D48 8099E618 4604B001 */  sub.s   $f0, $f22, $f4             
/* 00D4C 8099E61C C6440000 */  lwc1    $f4, 0x0000($s2)           ## 0000024C
/* 00D50 8099E620 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 00D54 8099E624 0041B024 */  and     $s6, $v0, $at              
/* 00D58 8099E628 46001182 */  mul.s   $f6, $f2, $f0              
/* 00D5C 8099E62C 00027900 */  sll     $t7, $v0,  4               
/* 00D60 8099E630 000FC702 */  srl     $t8, $t7, 28               
/* 00D64 8099E634 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00D68 8099E638 3C088016 */  lui     $t0, 0x8016                ## $t0 = 80160000
/* 00D6C 8099E63C 25086FA8 */  addiu   $t0, $t0, 0x6FA8           ## $t0 = 80166FA8
/* 00D70 8099E640 34211DA0 */  ori     $at, $at, 0x1DA0           ## $at = 00011DA0
/* 00D74 8099E644 46083280 */  add.s   $f10, $f6, $f8             
/* 00D78 8099E648 C6280024 */  lwc1    $f8, 0x0024($s1)           ## 00000024
/* 00D7C 8099E64C 0018C880 */  sll     $t9, $t8,  2               
/* 00D80 8099E650 0328A821 */  addu    $s5, $t9, $t0              
/* 00D84 8099E654 460A2182 */  mul.s   $f6, $f4, $f10             
/* 00D88 8099E658 4610B281 */  sub.s   $f10, $f22, $f16           
/* 00D8C 8099E65C 03C18021 */  addu    $s0, $s8, $at              
/* 00D90 8099E660 46008102 */  mul.s   $f4, $f16, $f0             
/* 00D94 8099E664 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00D98 8099E668 46064300 */  add.s   $f12, $f8, $f6             
/* 00D9C 8099E66C C6460004 */  lwc1    $f6, 0x0004($s2)           ## 00000250
/* 00DA0 8099E670 460A2200 */  add.s   $f8, $f4, $f10             
/* 00DA4 8099E674 C62A0028 */  lwc1    $f10, 0x0028($s1)          ## 00000028
/* 00DA8 8099E678 46083102 */  mul.s   $f4, $f6, $f8              
/* 00DAC 8099E67C 4612B201 */  sub.s   $f8, $f22, $f18            
/* 00DB0 8099E680 46009182 */  mul.s   $f6, $f18, $f0             
/* 00DB4 8099E684 46045380 */  add.s   $f14, $f10, $f4            
/* 00DB8 8099E688 C6440008 */  lwc1    $f4, 0x0008($s2)           ## 00000254
/* 00DBC 8099E68C 46083280 */  add.s   $f10, $f6, $f8             
/* 00DC0 8099E690 C628002C */  lwc1    $f8, 0x002C($s1)           ## 0000002C
/* 00DC4 8099E694 460A2182 */  mul.s   $f6, $f4, $f10             
/* 00DC8 8099E698 46064100 */  add.s   $f4, $f8, $f6              
/* 00DCC 8099E69C 44062000 */  mfc1    $a2, $f4                   
/* 00DD0 8099E6A0 0C034261 */  jal     Matrix_Translate              
/* 00DD4 8099E6A4 00000000 */  nop
/* 00DD8 8099E6A8 C62C055C */  lwc1    $f12, 0x055C($s1)          ## 0000055C
/* 00DDC 8099E6AC 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00DE0 8099E6B0 44066000 */  mfc1    $a2, $f12                  
/* 00DE4 8099E6B4 0C0342A3 */  jal     Matrix_Scale              
/* 00DE8 8099E6B8 46006386 */  mov.s   $f14, $f12                 
/* 00DEC 8099E6BC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DF0 8099E6C0 0C03424C */  jal     Matrix_Mult              
/* 00DF4 8099E6C4 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00DF8 8099E6C8 8E7002D0 */  lw      $s0, 0x02D0($s3)           ## 000002D0
/* 00DFC 8099E6CC 3C0ADA38 */  lui     $t2, 0xDA38                ## $t2 = DA380000
/* 00E00 8099E6D0 354A0003 */  ori     $t2, $t2, 0x0003           ## $t2 = DA380003
/* 00E04 8099E6D4 26090008 */  addiu   $t1, $s0, 0x0008           ## $t1 = 00000008
/* 00E08 8099E6D8 AE6902D0 */  sw      $t1, 0x02D0($s3)           ## 000002D0
/* 00E0C 8099E6DC 3C05809A */  lui     $a1, %hi(D_8099EB90)       ## $a1 = 809A0000
/* 00E10 8099E6E0 24A5EB90 */  addiu   $a1, $a1, %lo(D_8099EB90)  ## $a1 = 8099EB90
/* 00E14 8099E6E4 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 00E18 8099E6E8 240601C1 */  addiu   $a2, $zero, 0x01C1         ## $a2 = 000001C1
/* 00E1C 8099E6EC 0C0346A2 */  jal     Matrix_NewMtx              
/* 00E20 8099E6F0 AE0A0000 */  sw      $t2, 0x0000($s0)           ## 00000000
/* 00E24 8099E6F4 AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 00E28 8099E6F8 8E6302D0 */  lw      $v1, 0x02D0($s3)           ## 000002D0
/* 00E2C 8099E6FC 3C0CDE00 */  lui     $t4, 0xDE00                ## $t4 = DE000000
/* 00E30 8099E700 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00E34 8099E704 246B0008 */  addiu   $t3, $v1, 0x0008           ## $t3 = 00000008
/* 00E38 8099E708 AE6B02D0 */  sw      $t3, 0x02D0($s3)           ## 000002D0
/* 00E3C 8099E70C AC6C0000 */  sw      $t4, 0x0000($v1)           ## 00000000
/* 00E40 8099E710 8EAD0000 */  lw      $t5, 0x0000($s5)           ## 00000000
/* 00E44 8099E714 01B67021 */  addu    $t6, $t5, $s6              
/* 00E48 8099E718 01C17821 */  addu    $t7, $t6, $at              
/* 00E4C 8099E71C AC6F0004 */  sw      $t7, 0x0004($v1)           ## 00000004
/* 00E50 8099E720 26940001 */  addiu   $s4, $s4, 0x0001           ## $s4 = 00000002
.L8099E724:
/* 00E54 8099E724 24010040 */  addiu   $at, $zero, 0x0040         ## $at = 00000040
/* 00E58 8099E728 2652000C */  addiu   $s2, $s2, 0x000C           ## $s2 = 00000258
/* 00E5C 8099E72C 1681FFAD */  bne     $s4, $at, .L8099E5E4       
/* 00E60 8099E730 26F70004 */  addiu   $s7, $s7, 0x0004           ## $s7 = 00000150
/* 00E64 8099E734 3C06809A */  lui     $a2, %hi(D_8099EBA0)       ## $a2 = 809A0000
/* 00E68 8099E738 24C6EBA0 */  addiu   $a2, $a2, %lo(D_8099EBA0)  ## $a2 = 8099EBA0
/* 00E6C 8099E73C 27A40080 */  addiu   $a0, $sp, 0x0080           ## $a0 = FFFFFFD0
/* 00E70 8099E740 02602825 */  or      $a1, $s3, $zero            ## $a1 = 00000000
/* 00E74 8099E744 0C031AD5 */  jal     func_800C6B54              
/* 00E78 8099E748 240701CA */  addiu   $a3, $zero, 0x01CA         ## $a3 = 000001CA
/* 00E7C 8099E74C 8FBF004C */  lw      $ra, 0x004C($sp)           
/* 00E80 8099E750 D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 00E84 8099E754 D7B60020 */  ldc1    $f22, 0x0020($sp)          
/* 00E88 8099E758 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00E8C 8099E75C 8FB1002C */  lw      $s1, 0x002C($sp)           
/* 00E90 8099E760 8FB20030 */  lw      $s2, 0x0030($sp)           
/* 00E94 8099E764 8FB30034 */  lw      $s3, 0x0034($sp)           
/* 00E98 8099E768 8FB40038 */  lw      $s4, 0x0038($sp)           
/* 00E9C 8099E76C 8FB5003C */  lw      $s5, 0x003C($sp)           
/* 00EA0 8099E770 8FB60040 */  lw      $s6, 0x0040($sp)           
/* 00EA4 8099E774 8FB70044 */  lw      $s7, 0x0044($sp)           
/* 00EA8 8099E778 8FBE0048 */  lw      $s8, 0x0048($sp)           
/* 00EAC 8099E77C 03E00008 */  jr      $ra                        
/* 00EB0 8099E780 27BD00B0 */  addiu   $sp, $sp, 0x00B0           ## $sp = 00000000

