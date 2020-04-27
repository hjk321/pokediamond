	.include "asm/macros.inc"
	.text
	; NARC header
	.ascii "NARC"
	.short 0xFFFE ; byte order
	.short 0x0100 ; version
	.word 0x0009C47C ; size
	.short 0x0010 ; chunk size
	.short 3 ; number following chunks

	; BTAF header
	.ascii "BTAF"
	.word 0x00000814 ; chunk size
	.short 257 ; number of files
	.balign 4
	.word 0x00000000, 0x00000FC4
	.word 0x00000FC4, 0x0000110C
	.word 0x0000110C, 0x00001D2C
	.word 0x00001D2C, 0x00004A74
	.word 0x00004A74, 0x00007BA0
	.word 0x00007BA0, 0x0000C1F0
	.word 0x0000C1F0, 0x000114A4
	.word 0x000114A4, 0x00015D24
	.word 0x00015D24, 0x0001A980
	.word 0x0001A980, 0x0001E654
	.word 0x0001E654, 0x00021EC0
	.word 0x00021EC0, 0x00026484
	.word 0x00026484, 0x00029500
	.word 0x00029500, 0x0002C3A0
	.word 0x0002C3A0, 0x0002E9E0
	.word 0x0002E9E0, 0x0002FC30
	.word 0x0002FC30, 0x0002FE44
	.word 0x0002FE44, 0x000311D0
	.word 0x000311D0, 0x0003229C
	.word 0x0003229C, 0x00033330
	.word 0x00033330, 0x0003442C
	.word 0x0003442C, 0x00035584
	.word 0x00035584, 0x00036690
	.word 0x00036690, 0x000377EC
	.word 0x000377EC, 0x00038854
	.word 0x00038854, 0x000398B0
	.word 0x000398B0, 0x0003AB7C
	.word 0x0003AB7C, 0x0003BF04
	.word 0x0003BF04, 0x0003CFD0
	.word 0x0003CFD0, 0x0003DF74
	.word 0x0003DF74, 0x0003E0B0
	.word 0x0003E0B0, 0x0003E308
	.word 0x0003E308, 0x0003E588
	.word 0x0003E588, 0x0003E80C
	.word 0x0003E80C, 0x0003EA10
	.word 0x0003EA10, 0x0003EB70
	.word 0x0003EB70, 0x0003ECBC
	.word 0x0003ECBC, 0x0003EEBC
	.word 0x0003EEBC, 0x0003F294
	.word 0x0003F294, 0x0003F6DC
	.word 0x0003F6DC, 0x0003FEFC
	.word 0x0003FEFC, 0x000401E8
	.word 0x000401E8, 0x000403BC
	.word 0x000403BC, 0x000407D4
	.word 0x000407D4, 0x000409C0
	.word 0x000409C0, 0x00040DFC
	.word 0x00040DFC, 0x00040F8C
	.word 0x00040F8C, 0x000413C4
	.word 0x000413C4, 0x00041594
	.word 0x00041594, 0x000419AC
	.word 0x000419AC, 0x00042000
	.word 0x00042000, 0x00042628
	.word 0x00042628, 0x00042C78
	.word 0x00042C78, 0x000447C0
	.word 0x000447C0, 0x00044E60
	.word 0x00044E60, 0x00045490
	.word 0x00045490, 0x00045B28
	.word 0x00045B28, 0x00047454
	.word 0x00047454, 0x00048A8C
	.word 0x00048A8C, 0x000490C4
	.word 0x000490C4, 0x00049744
	.word 0x00049744, 0x00049D44
	.word 0x00049D44, 0x0004A340
	.word 0x0004A340, 0x0004A940
	.word 0x0004A940, 0x0004B73C
	.word 0x0004B73C, 0x0004BD04
	.word 0x0004BD04, 0x0004CB38
	.word 0x0004CB38, 0x0004CF14
	.word 0x0004CF14, 0x0004D9B0
	.word 0x0004D9B0, 0x0004E8BC
	.word 0x0004E8BC, 0x0004F358
	.word 0x0004F358, 0x0004F574
	.word 0x0004F574, 0x0004F78C
	.word 0x0004F78C, 0x0004FF58
	.word 0x0004FF58, 0x0005057C
	.word 0x0005057C, 0x00050BB4
	.word 0x00050BB4, 0x000511E4
	.word 0x000511E4, 0x00052310
	.word 0x00052310, 0x00054388
	.word 0x00054388, 0x000548A8
	.word 0x000548A8, 0x00054EC8
	.word 0x00054EC8, 0x00055530
	.word 0x00055530, 0x00055B54
	.word 0x00055B54, 0x00057A28
	.word 0x00057A28, 0x00057F64
	.word 0x00057F64, 0x0005842C
	.word 0x0005842C, 0x00058968
	.word 0x00058968, 0x0005AF2C
	.word 0x0005AF2C, 0x0005C88C
	.word 0x0005C88C, 0x0005D110
	.word 0x0005D110, 0x0005F5EC
	.word 0x0005F5EC, 0x0005FC14
	.word 0x0005FC14, 0x0006028C
	.word 0x0006028C, 0x00063234
	.word 0x00063234, 0x000638B4
	.word 0x000638B4, 0x00063E48
	.word 0x00063E48, 0x000643D4
	.word 0x000643D4, 0x00064968
	.word 0x00064968, 0x00064E48
	.word 0x00064E48, 0x00067090
	.word 0x00067090, 0x00068454
	.word 0x00068454, 0x00068964
	.word 0x00068964, 0x00068DA8
	.word 0x00068DA8, 0x00068F24
	.word 0x00068F24, 0x000694DC
	.word 0x000694DC, 0x00069A70
	.word 0x00069A70, 0x0006A02C
	.word 0x0006A02C, 0x0006BFE4
	.word 0x0006BFE4, 0x0006CC80
	.word 0x0006CC80, 0x0006D2B8
	.word 0x0006D2B8, 0x0006E2C0
	.word 0x0006E2C0, 0x0006E9C0
	.word 0x0006E9C0, 0x000700F8
	.word 0x000700F8, 0x00070704
	.word 0x00070704, 0x00072774
	.word 0x00072774, 0x00072DF8
	.word 0x00072DF8, 0x000736D4
	.word 0x000736D4, 0x00074890
	.word 0x00074890, 0x0007516C
	.word 0x0007516C, 0x00075AEC
	.word 0x00075AEC, 0x00075D5C
	.word 0x00075D5C, 0x00075FCC
	.word 0x00075FCC, 0x00076DD4
	.word 0x00076DD4, 0x000770EC
	.word 0x000770EC, 0x000775A0
	.word 0x000775A0, 0x00077A54
	.word 0x00077A54, 0x00079200
	.word 0x00079200, 0x0007A754
	.word 0x0007A754, 0x0007AD6C
	.word 0x0007AD6C, 0x0007B6EC
	.word 0x0007B6EC, 0x0007B95C
	.word 0x0007B95C, 0x0007BEBC
	.word 0x0007BEBC, 0x0007C410
	.word 0x0007C410, 0x0007C96C
	.word 0x0007C96C, 0x0007E844
	.word 0x0007E844, 0x0007EFA0
	.word 0x0007EFA0, 0x0007F6FC
	.word 0x0007F6FC, 0x0007FE58
	.word 0x0007FE58, 0x00082454
	.word 0x00082454, 0x00082E88
	.word 0x00082E88, 0x00083000
	.word 0x00083000, 0x00085B70
	.word 0x00085B70, 0x0008608C
	.word 0x0008608C, 0x00088550
	.word 0x00088550, 0x00088A40
	.word 0x00088A40, 0x0008917C
	.word 0x0008917C, 0x000898A4
	.word 0x000898A4, 0x00089FE0
	.word 0x00089FE0, 0x0008C8F4
	.word 0x0008C8F4, 0x0008D684
	.word 0x0008D684, 0x0008DC9C
	.word 0x0008DC9C, 0x0008ECF4
	.word 0x0008ECF4, 0x0008EF80
	.word 0x0008EF80, 0x0008F20C
	.word 0x0008F20C, 0x0008FA80
	.word 0x0008FA80, 0x0008FEC8
	.word 0x0008FEC8, 0x000902FC
	.word 0x000902FC, 0x00090524
	.word 0x00090524, 0x0009074C
	.word 0x0009074C, 0x00090974
	.word 0x00090974, 0x00090B9C
	.word 0x00090B9C, 0x00090DC4
	.word 0x00090DC4, 0x00090FEC
	.word 0x00090FEC, 0x00091214
	.word 0x00091214, 0x0009143C
	.word 0x0009143C, 0x00091664
	.word 0x00091664, 0x0009188C
	.word 0x0009188C, 0x00091AB4
	.word 0x00091AB4, 0x00091CDC
	.word 0x00091CDC, 0x00091F04
	.word 0x00091F04, 0x0009212C
	.word 0x0009212C, 0x00092354
	.word 0x00092354, 0x0009257C
	.word 0x0009257C, 0x000927A4
	.word 0x000927A4, 0x000929CC
	.word 0x000929CC, 0x00092BF4
	.word 0x00092BF4, 0x00092E1C
	.word 0x00092E1C, 0x00093044
	.word 0x00093044, 0x0009326C
	.word 0x0009326C, 0x00093494
	.word 0x00093494, 0x000936BC
	.word 0x000936BC, 0x000938E4
	.word 0x000938E4, 0x00093B0C
	.word 0x00093B0C, 0x00093D34
	.word 0x00093D34, 0x00093F5C
	.word 0x00093F5C, 0x00094184
	.word 0x00094184, 0x000943AC
	.word 0x000943AC, 0x000945D4
	.word 0x000945D4, 0x000947FC
	.word 0x000947FC, 0x00094A24
	.word 0x00094A24, 0x00094C4C
	.word 0x00094C4C, 0x00094E74
	.word 0x00094E74, 0x0009509C
	.word 0x0009509C, 0x000952C4
	.word 0x000952C4, 0x000954EC
	.word 0x000954EC, 0x00095714
	.word 0x00095714, 0x0009576E
	.word 0x00095770, 0x000957CA
	.word 0x000957CC, 0x00095FF0
	.word 0x00095FF0, 0x00096814
	.word 0x00096814, 0x00098838
	.word 0x00098838, 0x0009A85C
	.word 0x0009A85C, 0x0009A8B6
	.word 0x0009A8B8, 0x0009A912
	.word 0x0009A914, 0x0009A96E
	.word 0x0009A970, 0x0009A9CA
	.word 0x0009A9CC, 0x0009AA26
	.word 0x0009AA28, 0x0009AA82
	.word 0x0009AA84, 0x0009AADE
	.word 0x0009AAE0, 0x0009AB3A
	.word 0x0009AB3C, 0x0009AB96
	.word 0x0009AB98, 0x0009ABF2
	.word 0x0009ABF4, 0x0009AC4E
	.word 0x0009AC50, 0x0009ACAA
	.word 0x0009ACAC, 0x0009AD06
	.word 0x0009AD08, 0x0009AD62
	.word 0x0009AD64, 0x0009ADE0
	.word 0x0009ADE0, 0x0009AE3A
	.word 0x0009AE3C, 0x0009AE96
	.word 0x0009AE98, 0x0009AEF2
	.word 0x0009AEF4, 0x0009AF4E
	.word 0x0009AF50, 0x0009AFAA
	.word 0x0009AFAC, 0x0009B006
	.word 0x0009B008, 0x0009B062
	.word 0x0009B064, 0x0009B0BE
	.word 0x0009B0C0, 0x0009B11A
	.word 0x0009B11C, 0x0009B176
	.word 0x0009B178, 0x0009B1D2
	.word 0x0009B1D4, 0x0009B22E
	.word 0x0009B230, 0x0009B28A
	.word 0x0009B28C, 0x0009B2E6
	.word 0x0009B2E8, 0x0009B342
	.word 0x0009B344, 0x0009B39E
	.word 0x0009B3A0, 0x0009B3FA
	.word 0x0009B3FC, 0x0009B456
	.word 0x0009B458, 0x0009B4B2
	.word 0x0009B4B4, 0x0009B50E
	.word 0x0009B510, 0x0009B56A
	.word 0x0009B56C, 0x0009B5C6
	.word 0x0009B5C8, 0x0009B622
	.word 0x0009B624, 0x0009B67E
	.word 0x0009B680, 0x0009B6DA
	.word 0x0009B6DC, 0x0009B736
	.word 0x0009B738, 0x0009B792
	.word 0x0009B794, 0x0009B7EE
	.word 0x0009B7F0, 0x0009B84A
	.word 0x0009B84C, 0x0009B8A6
	.word 0x0009B8A8, 0x0009B902
	.word 0x0009B904, 0x0009B95E
	.word 0x0009B960, 0x0009B9BA
	.word 0x0009B9BC, 0x0009BA16
	.word 0x0009BA18, 0x0009BA72
	.word 0x0009BA74, 0x0009BACE
	.word 0x0009BAD0, 0x0009BB2A
	.word 0x0009BB2C, 0x0009BB86
	.word 0x0009BB88, 0x0009BBE2
	.word 0x0009BBE4, 0x0009BC3E

	; BTNF header
	.ascii "BTNF"
	.word 0x00000010 ; chunk size
	.word 0x00000004 ; offset to first dir
	.short 0 ; first file
	.short 1 ; number of directories

	; GMIF header
	.ascii "GMIF"
	.word 0x0009BC48 ; chunk size
	.incbin "baserom.nds", 0x1C4D03C, 0x9BC40
	.balign 512, 255