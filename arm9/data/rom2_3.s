	.include "asm/macros.inc"
	.include "global.inc"

	.extern UNK_020EEC80
    .extern UNK_020EEC78
    .extern UNK_020EEC70
    .extern UNK_020EEC68
    .extern UNK_020EEC88
	.extern UNK_020F40A6
	.extern UNK_020F40B4
	.extern UNK_020F40AC
	.extern UNK_020F40BC
	.extern UNK_020F40C6
	.extern UNK_020F40F8
	.extern UNK_020F40DA
	.extern UNK_020F40E4
	.extern UNK_020F41E6
	.extern UNK_020F41FE
	.extern UNK_020F41D4
	.extern UNK_020F4126
	.extern UNK_020F4182
	.extern UNK_020F4134
	.extern UNK_020F40EE
	.extern UNK_020F40D0
	.extern UNK_020F4102
	.extern UNK_020F40A0
	.extern UNK_020F41C2
	.extern UNK_020ECCE2
    .extern UNK_020ECC78
    .extern UNK_020ECC10
    .extern UNK_020ECDCC
    .extern UNK_020F410C
    .extern UNK_020F4118
    .extern UNK_020F4192
    .extern UNK_020F4142
    .extern UNK_020F4162
    .extern UNK_020F4172
    .extern UNK_020F41A2
    .extern UNK_020F4152
    .extern UNK_020F41B2
    .extern UNK_020F6CA0
    .extern UNK_020F6CE0
    .extern UNK_020F6D20
    .extern UNK_020F9DAA
    .extern UNK_020F9DAA
    .extern UNK_020F9DAA
    .extern UNK_020F9DAA
    .extern UNK_020F9DC4
    .extern UNK_020F9E6C
    .extern UNK_020F9E88
    .extern UNK_020F9EA4
    .extern UNK_020F9E18
    .extern UNK_020F9E50
    .extern UNK_020F9EDC
    .extern UNK_020F9EF8
    .extern UNK_020FA048
    .extern UNK_020F9F4C
    .extern UNK_020FA010
    .extern UNK_020F9F84
    .extern UNK_020F9FBC
    .extern UNK_020F9FD8
    .extern UNK_020F9FF4
    .extern UNK_020FA02C
    .extern UNK_020F9F68
    .extern UNK_020F9DDE
    .extern UNK_020F9F30
    .extern UNK_020F9F14
    .extern UNK_020F9E34
    .extern UNK_020FA0C0
    .extern UNK_020FA0E4
    .extern UNK_020FA108
    .extern UNK_020FA108
    .extern UNK_020FA108
    .extern UNK_020FF573
    .extern UNK_020FF572
    .extern UNK_020FF570
    .extern UNK_020FF56C
    .extern UNK_020FF564
    .extern UNK_020FF554
    .extern UNK_020FF534
    .extern FUN_0208ECA0
    .extern FUN_0208EBE4
    .extern FUN_0208EAF8
    .extern FUN_0208EB38
    .extern FUN_020AE8B4
    .extern FUN_020AE8AC
    .extern FUN_020AE8C4
    .extern FUN_020AE8BC
    .extern FUN_020B1088
    .extern FUN_020B1098
    .extern FUN_020BE5A0
    .extern FUN_020BDA70
    .extern FUN_020BDF38
    .extern FUN_020BE334
    .extern FUN_020BDB40
    .extern FUN_020B8640
    .extern FUN_020B86B0
    .extern FUN_020B8A08
    .extern FUN_020BDC0C
    .extern FUN_020BDF84
    .extern FUN_020BDAB4
    .extern FUN_020BE668
    .extern FUN_020BEE3C
    .extern FUN_020BF2FC
    .extern FUN_020BE62C
    .extern FUN_020BECEC
    .extern FUN_020BF0D4
    .extern FUN_020BE6E4
    .extern FUN_020BEF10
    .extern FUN_020BF42C
    .extern FUN_020BFA9C
    .extern FUN_020BA58C
    .extern FUN_020BA438
    .extern FUN_020BAC70
    .extern FUN_020BAC48
    .extern FUN_020BAAC0
    .extern FUN_020BA9EC
    .extern FUN_020BA50C
    .extern FUN_020BA3C4
    .extern FUN_020B9F84
    .extern FUN_020B9C54
    .extern FUN_020B98C4
    .extern FUN_020B9258
    .extern FUN_020B9178
    .extern FUN_020B9110
    .extern FUN_020B8DF0
    .extern FUN_020B8A60
    .extern FUN_020BEBD8
    .extern FUN_020BEB00
    .extern FUN_020BEA84
    .extern FUN_020BEA3C
    .extern FUN_020BE954
    .extern FUN_020BE894
    .extern FUN_020BE850
    .extern FUN_020BE82C
    .extern FUN_020BF988
    .extern FUN_020BF894
    .extern FUN_020BF810
    .extern FUN_020BF7C8
    .extern FUN_020BF6C8
    .extern FUN_020BF5E8
    .extern FUN_020BF598
    .extern FUN_020BF574
    .extern FUN_020BFFD4
    .extern FUN_020BFEEC
    .extern FUN_020BFE68
    .extern FUN_020BFE0C
    .extern FUN_020BFD38
    .extern FUN_020BFC8C
    .extern FUN_020BFC4C
    .extern FUN_020BFC28
    .extern FUN_020BE4F0
    .extern FUN_020BE5E0

	/* rom2.s TODO: Disassemble */

	.section .data
	.balign 4
	.global UNK_0210479C
UNK_0210479C: ; 0x0210479C
	.asciz "arc/tv.narc"

	.balign 4
	.global UNK_021047A8
UNK_021047A8: ; 0x021047A8
	.asciz "arc/ppark.narc"

	.balign 4
	.global UNK_021047B8
UNK_021047B8: ; 0x021047B8
	.asciz "data/slot.narc"

	.balign 4
	.global UNK_021047C8
UNK_021047C8: ; 0x021047C8
	.asciz "graphic/box.narc"

	.balign 4
	.global UNK_021047DC
UNK_021047DC: ; 0x021047DC
	.asciz "data/namein.narc"

	.balign 4
	.global UNK_021047F0
UNK_021047F0: ; 0x021047F0
	.asciz "msgdata/msg.narc"

	.balign 4
	.global UNK_02104804
UNK_02104804: ; 0x02104804
	.asciz "data/ug_anim.narc"

	.balign 4
	.global UNK_02104818
UNK_02104818: ; 0x02104818
	.asciz "data/ug_trap.narc"

	.balign 4
	.global UNK_0210482C
UNK_0210482C: ; 0x0210482C
	.asciz "graphic/font.narc"

	.balign 4
	.global UNK_02104840
UNK_02104840: ; 0x02104840
	.asciz "arc/bm_anime.narc"

	.balign 4, 0
	.global UNK_02104854
UNK_02104854: ; 0x02104854
	.asciz "wazaeffect/we.arc"

	.balign 4, 0
	.global UNK_02104868
UNK_02104868: ; 0x02104868
	.asciz "graphic/pmsi.narc"

	.balign 4, 0
	.global UNK_0210487C
UNK_0210487C: ; 0x0210487C
	.asciz "data/ug_parts.narc"

	.balign 4, 0
	.global UNK_02104890
UNK_02104890: ; 0x02104890
	.asciz "arc/ship_demo.narc"

	.balign 4, 0
	.global UNK_021048A4
UNK_021048A4: ; 0x021048A4
	.asciz "data/wifinote.narc"

	.balign 4, 0
	.global UNK_021048B8
UNK_021048B8: ; 0x021048B8
	.asciz "graphic/btower.narc"

	.balign 4, 0
	.global UNK_021048CC
UNK_021048CC: ; 0x021048CC
	.asciz "data/ug_fossil.narc"

	.balign 4, 0
	.global UNK_021048E0
UNK_021048E0: ; 0x021048E0
	.asciz "graphic/ending.narc"

	.balign 4, 0
	.global UNK_021048F4
UNK_021048F4: ; 0x021048F4
	.asciz "arc/encdata_ex.narc"

	.balign 4, 0
	.global UNK_02104908
UNK_02104908: ; 0x02104908
	.asciz "graphic/mysign.narc"

	.balign 4, 0
	.global UNK_0210491C
UNK_0210491C: ; 0x0210491C
	.asciz "graphic/record.narc"

	.balign 4, 0
	.global UNK_02104930
UNK_02104930: ; 0x02104930
	.asciz "data/tradelist.narc"

	.balign 4, 0
	.global UNK_02104944
UNK_02104944: ; 0x02104944
	.asciz "graphic/oekaki.narc"

	.balign 4, 0
	.global UNK_02104958
UNK_02104958: ; 0x02104958
	.asciz "graphic/bag_gra.narc"

	.balign 4, 0
	.global UNK_02104970
UNK_02104970: ; 0x02104970
	.asciz "graphic/fontoam.narc"

	.balign 4, 0
	.global UNK_02104988
UNK_02104988: ; 0x02104988
	.asciz "graphic/mystery.narc"

	.balign 4, 0
	.global UNK_021049A0
UNK_021049A0: ; 0x021049A0
	.asciz "graphic/opening.narc"

	.balign 4, 0
	.global UNK_021049B8
UNK_021049B8: ; 0x021049B8
	.asciz "graphic/pst_gra.narc"

	.balign 4, 0
	.global UNK_021049D0
UNK_021049D0: ; 0x021049D0
	.asciz "graphic/poketch.narc"

	.balign 4, 0
	.global UNK_021049E8
UNK_021049E8: ; 0x021049E8
	.asciz "graphic/poruact.narc"

	.balign 4, 0
	.global UNK_02104A00
UNK_02104A00: ; 0x02104A00
	.asciz "graphic/ranking.narc"

	.balign 4, 0
	.global UNK_02104A18
UNK_02104A18: ; 0x02104A18
	.asciz "graphic/porudemo.narc"

	.balign 4, 0
	.global UNK_02104A30
UNK_02104A30: ; 0x02104A30
	.asciz "graphic/poru_gra.narc"

	.balign 4, 0
	.global UNK_02104A48
UNK_02104A48: ; 0x02104A48
	.asciz "data/field_cutin.narc"

	.balign 4, 0
	.global UNK_02104A60
UNK_02104A60: ; 0x02104A60
	.asciz "data/demo_climax.narc"

	.balign 4, 0
	.global UNK_02104A78
UNK_02104A78: ; 0x02104A78
	.asciz "graphic/tmap_gra.narc"

	.balign 4, 0
	.global UNK_02104A90
UNK_02104A90: ; 0x02104A90
	.asciz "demo/intro/intro.narc"

	.balign 4, 0
	.global UNK_02104AA8
UNK_02104AA8: ; 0x02104AA8
	.asciz "data/weather_sys.narc"

	.balign 4, 0
	.global UNK_02104AC0
UNK_02104AC0: ; 0x02104AC0
	.asciz "graphic/menu_gra.narc"

	.balign 4, 0
	.global UNK_02104AD8
UNK_02104AD8: ; 0x02104AD8
	.asciz "graphic/nutmixer.narc"

	.balign 4, 0
	.global UNK_02104AF0
UNK_02104AF0: ; 0x02104AF0
	.asciz "graphic/winframe.narc"

	.balign 4, 0
	.global UNK_02104B08
UNK_02104B08: ; 0x02104B08
	.asciz "graphic/shop_gra.narc"

	.balign 4, 0
	.global UNK_02104B20
UNK_02104B20: ; 0x02104B20
	.asciz "graphic/ntag_gra.narc"

	.balign 4, 0
	.global UNK_02104B38
UNK_02104B38: ; 0x02104B38
	.asciz "graphic/mail_gra.narc"

	.balign 4, 0
	.global UNK_02104B50
UNK_02104B50: ; 0x02104B50
	.asciz "graphic/imageclip.narc"

	.balign 4, 0
	.global UNK_02104B68
UNK_02104B68: ; 0x02104B68
	.asciz "data/underg_radar.narc"

	.balign 4, 0
	.global UNK_02104B80
UNK_02104B80: ; 0x02104B80
	.asciz "data/wifip2pmatch.narc"

	.balign 4, 0
	.global UNK_02104B98
UNK_02104B98: ; 0x02104B98
	.asciz "graphic/unionroom.narc"

	.balign 4, 0
	.global UNK_02104BB0
UNK_02104BB0: ; 0x02104BB0
	.asciz "arc/bm_anime_list.narc"

	.balign 4, 0
	.global UNK_02104BC8
UNK_02104BC8: ; 0x02104BC8
	.asciz "graphic/dendou_pc.narc"

	.balign 4, 0
	.global UNK_02104BE0
UNK_02104BE0: ; 0x02104BE0
	.asciz "wazaeffect/we_sub.narc"

	.balign 4, 0
	.global UNK_02104BF8
UNK_02104BF8: ; 0x02104BF8
	.asciz "graphic/plist_gra.narc"

	.balign 4, 0
	.global UNK_02104C10
UNK_02104C10: ; 0x02104C10
	.asciz "graphic/fld_comact.narc"

	.balign 4, 0
	.global UNK_02104C28
UNK_02104C28: ; 0x02104C28
	.asciz "graphic/demo_trade.narc"

	.balign 4, 0
	.global UNK_02104C40
UNK_02104C40: ; 0x02104C40
	.asciz "pokeanime/poke_anm.narc"

	.balign 4, 0
	.global UNK_02104C58
UNK_02104C58: ; 0x02104C58
	.asciz "graphic/worldtrade.narc"

	.balign 4, 0
	.global UNK_02104C70
UNK_02104C70: ; 0x02104C70
	.asciz "data/mmodel/fldeff.narc"

	.balign 4, 0
	.global UNK_02104C88
UNK_02104C88: ; 0x02104C88
	.asciz "demo/title/op_demo.narc"

	.balign 4, 0
	.global UNK_02104CA0
UNK_02104CA0: ; 0x02104CA0
	.asciz "poketool/pokezukan.narc"

	.balign 4, 0
	.global UNK_02104CB8
UNK_02104CB8: ; 0x02104CB8
	.asciz "graphic/config_gra.narc"

	.balign 4, 0
	.global UNK_02104CD0
UNK_02104CD0: ; 0x02104CD0
	.asciz "data/mmodel/mmodel.narc"

	.balign 4, 0
	.global UNK_02104CE8
UNK_02104CE8: ; 0x02104CE8
	.asciz "graphic/f_note_gra.narc"

	.balign 4, 0
	.global UNK_02104D00
UNK_02104D00: ; 0x02104D00
	.asciz "poketool/shinzukan.narc"

	.balign 4, 0
	.global UNK_02104D18
UNK_02104D18: ; 0x02104D18
	.asciz "battle/skill/be_seq.narc"

	.balign 4, 0
	.global UNK_02104D34
UNK_02104D34: ; 0x02104D34
	.asciz "graphic/field_board.narc"

	.balign 4, 0
	.global UNK_02104D50
UNK_02104D50: ; 0x02104D50
	.asciz "demo/intro/intro_tv.narc"

	.balign 4, 0
	.global UNK_02104D6C
UNK_02104D6C: ; 0x02104D6C
	.asciz "graphic/dendou_demo.narc"

	.balign 4, 0
	.global UNK_02104D88
UNK_02104D88: ; 0x02104D88
	.asciz "battle/b_tower/btdtr.narc"

	.balign 4, 0
	.global UNK_02104DA4
UNK_02104DA4: ; 0x02104DA4
	.asciz "graphic/hiden_effect.narc"

	.balign 4, 0
	.global UNK_02104DC0
UNK_02104DC0: ; 0x02104DC0
	.asciz "demo/title/titledemo.narc"

	.balign 4, 0
	.global UNK_02104DDC
UNK_02104DDC: ; 0x02104DDC
	.asciz "graphic/trainer_case.narc"

	.balign 4, 0
	.global UNK_02104DF8
UNK_02104DF8: ; 0x02104DF8
	.asciz "battle/b_tower/btdpm.narc"

	.balign 4, 0
	.global UNK_02104E14
UNK_02104E14: ; 0x02104E14
	.asciz "poketool/trmsg/trtbl.narc"

	.balign 4, 0
	.global UNK_02104E30
UNK_02104E30: ; 0x02104E30
	.asciz "battle/skill/sub_seq.narc"

	.balign 4, 0
	.global UNK_02104E4C
UNK_02104E4C: ; 0x02104E4C
	.asciz "poketool/trgra/trbgra.narc"

	.balign 4, 0
	.global UNK_02104E68
UNK_02104E68: ; 0x02104E68
	.asciz "poketool/personal/evo.narc"

	.balign 4, 0
	.global UNK_02104E84
UNK_02104E84: ; 0x02104E84
	.asciz "poketool/trgra/trfgra.narc"

	.balign 4, 0
	.global UNK_02104EA0
UNK_02104EA0: ; 0x02104EA0
	.asciz "battle/skill/waza_seq.narc"

	.balign 4, 0
	.global UNK_02104EBC
UNK_02104EBC: ; 0x02104EBC
	.asciz "graphic/ev_pokeselect.narc"

	.balign 4, 0
	.global UNK_02104ED8
UNK_02104ED8: ; 0x02104ED8
	.asciz "demo/syoujyou/syoujyou.narc"

	.balign 4, 0
	.global UNK_02104EF4
UNK_02104EF4: ; 0x02104EF4
	.asciz "demo/egg/data/egg_data.narc"

	.balign 4, 0
	.global UNK_02104F10
UNK_02104F10: ; 0x02104F10
	.asciz "battle/tr_ai/tr_ai_seq.narc"

	.balign 4, 0
	.global UNK_02104F2C
UNK_02104F2C: ; 0x02104F2C
	.asciz "battle/graphic/batt_bg.narc"

	.balign 4, 0
	.global UNK_02104F48
UNK_02104F48: ; 0x02104F48
	.asciz "poketool/waza/waza_tbl.narc"

	.balign 4, 0
	.global UNK_02104F64
UNK_02104F64: ; 0x02104F64
	.asciz "graphic/waza_oshie_gra.narc"

	.balign 4, 0
	.global UNK_02104F80
UNK_02104F80: ; 0x02104F80
	.asciz "battle/graphic/batt_obj.narc"

	.balign 4, 0
	.global UNK_02104FA0
UNK_02104FA0: ; 0x02104FA0
	.asciz "poketool/personal/wotbl.narc"

	.balign 4, 0
	.global UNK_02104FC0
UNK_02104FC0: ; 0x02104FC0
	.asciz "poketool/pokegra/height.narc"

	.balign 4, 0
	.global UNK_02104FE0
UNK_02104FE0: ; 0x02104FE0
	.asciz "poketool/trainer/trdata.narc"

	.balign 4, 0
	.global UNK_02105000
UNK_02105000: ; 0x02105000
	.asciz "poketool/trainer/trpoke.narc"

	.balign 4, 0
	.global UNK_02105020
UNK_02105020: ; 0x02105020
	.asciz "poketool/trmsg/trtblofs.narc"

	.balign 4, 0
	.global UNK_02105040
UNK_02105040: ; 0x02105040
	.asciz "graphic/touch_subwindow.narc"

	.balign 4, 0
	.global UNK_02105060
UNK_02105060: ; 0x02105060
	.asciz "resource/eng/zukan/zukan.narc"

	.balign 4, 0
	.global UNK_02105080
UNK_02105080: ; 0x02105080
	.asciz "poketool/pokegra/pokegra.narc"

	.balign 4, 0
	.global UNK_021050A0
UNK_021050A0: ; 0x021050A0
	.asciz "battle/graphic/b_bag_gra.narc"

	.balign 4, 0
	.global UNK_021050C0
UNK_021050C0: ; 0x021050C0
	.asciz "msgdata/scenario/scr_msg.narc"

	.balign 4, 0
	.global UNK_021050E0
UNK_021050E0: ; 0x021050E0
	.asciz "poketool/pokeanm/pokeanm.narc"

	.balign 4, 0
	.global UNK_02105100
UNK_02105100: ; 0x02105100
	.asciz "contest/data/contest_data.narc"

	.balign 4, 0
	.global UNK_02105120
UNK_02105120: ; 0x02105120
	.asciz "poketool/pokegra/height_o.narc"

	.balign 4, 0
	.global UNK_02105140
UNK_02105140: ; 0x02105140
	.asciz "data/ugeffect_obj_graphic.narc"

	.balign 4, 0
	.global UNK_02105160
UNK_02105160: ; 0x02105160
	.asciz "particledata/particledata.narc"

	.balign 4, 0
	.global UNK_02105180
UNK_02105180: ; 0x02105180
	.asciz "poketool/personal/growtbl.narc"

	.balign 4, 0
	.global UNK_021051A0
UNK_021051A0: ; 0x021051A0
	.asciz "poketool/pokegra/otherpoke.narc"

	.balign 4, 0
	.global UNK_021051C0
UNK_021051C0: ; 0x021051C0
	.asciz "contest/graphic/contest_bg.narc"

	.balign 4, 0
	.global UNK_021051E0
UNK_021051E0: ; 0x021051E0
	.asciz "battle/graphic/vs_demo_gra.narc"

	.balign 4, 0
	.global UNK_02105200
UNK_02105200: ; 0x02105200
	.asciz "poketool/pokegra/poke_yofs.narc"

	.balign 4, 0
	.global UNK_02105220
UNK_02105220: ; 0x02105220
	.asciz "poketool/pokefoot/pokefoot.narc"

	.balign 4, 0
	.global UNK_02105240
UNK_02105240: ; 0x02105240
	.asciz "battle/graphic/b_plist_gra.narc"

	.balign 4, 0
	.global UNK_02105260
UNK_02105260: ; 0x02105260
	.asciz "poketool/personal/personal.narc"

	.balign 4, 0
	.global UNK_02105280
UNK_02105280: ; 0x02105280
	.asciz "poketool/icongra/poke_icon.narc"

	.balign 4, 0
	.global UNK_021052A0
UNK_021052A0: ; 0x021052A0
	.asciz "contest/graphic/contest_obj.narc"

	.balign 4, 0
	.global UNK_021052C4
UNK_021052C4: ; 0x021052C4
	.asciz "itemtool/itemdata/nuts_data.narc"

	.balign 4, 0
	.global UNK_021052E8
UNK_021052E8: ; 0x021052E8
	.asciz "graphic/field_encounteffect.narc"

	.balign 4, 0
	.global UNK_0210530C
UNK_0210530C: ; 0x0210530C
	.asciz "itemtool/itemdata/item_data.narc"

	.balign 4, 0
	.global UNK_02105330
UNK_02105330: ; 0x02105330
	.asciz "itemtool/itemdata/item_icon.narc"

	.balign 4, 0
	.global UNK_02105354
UNK_02105354: ; 0x02105354
	.asciz "fielddata/areadata/area_data.narc"

	.balign 4, 0
	.global UNK_02105378
UNK_02105378: ; 0x02105378
	.asciz "poketool/pokegra/poke_shadow.narc"

	.balign 4, 0
	.global UNK_0210539C
UNK_0210539C: ; 0x0210539C
	.asciz "wazaeffect/effectclact/wechar.narc"

	.balign 4, 0
	.global UNK_021053C0
UNK_021053C0: ; 0x021053C0
	.asciz "wazaeffect/effectclact/wepltt.narc"

	.balign 4, 0
	.global UNK_021053E4
UNK_021053E4: ; 0x021053E4
	.asciz "wazaeffect/effectclact/wecell.narc"

	.balign 4, 0
	.global UNK_02105408
UNK_02105408: ; 0x02105408
	.asciz "fielddata/mapmatrix/map_matrix.narc"

	.balign 4, 0
	.global UNK_0210542C
UNK_0210542C: ; 0x0210542C
	.asciz "wazaeffect/effectclact/wecellanm.narc"

	.balign 4, 0
	.global UNK_02105454
UNK_02105454: ; 0x02105454
	.asciz "fielddata/encountdata/d_enc_data.narc"

	.balign 4, 0
	.global UNK_0210547C
UNK_0210547C: ; 0x0210547C
	.asciz "poketool/pokegra/poke_shadow_ofx.narc"

	.balign 4, 0
	.global UNK_021054A4
UNK_021054A4: ; 0x021054A4
	.asciz "fielddata/encountdata/p_enc_data.narc"

	.balign 4, 0
	.global UNK_021054CC
UNK_021054CC: ; 0x021054CC
	.asciz "fielddata/script/scr_seq_release.narc"

	.balign 4, 0
	.global UNK_021054F4
UNK_021054F4: ; 0x021054F4
	.asciz "fielddata/build_model/build_model.narc"

	.balign 4, 0
	.global UNK_0210551C
UNK_0210551C: ; 0x0210551C
	.asciz "fielddata/mm_list/move_model_list.narc"

	.balign 4, 0
	.global UNK_02105544
UNK_02105544: ; 0x02105544
	.asciz "application/wifi_earth/wifi_earth.narc"

	.balign 4, 0
	.global UNK_0210556C
UNK_0210556C: ; 0x0210556C
	.asciz "fielddata/pokemon_trade/fld_trade.narc"

	.balign 4, 0
	.global UNK_02105594
UNK_02105594: ; 0x02105594
	.asciz "wazaeffect/pt_debug/debug_particle.narc"

	.balign 4, 0
	.global UNK_021055BC
UNK_021055BC: ; 0x021055BC
	.asciz "wazaeffect/effectdata/waza_particle.narc"

	.balign 4, 0
	.global UNK_021055E8
UNK_021055E8: ; 0x021055E8
	.asciz "wazaeffect/effectdata/ball_particle.narc"

	.balign 4, 0
	.global UNK_02105614
UNK_02105614: ; 0x02105614
	.asciz "application/custom_ball/data/cb_data.narc"

	.balign 4, 0
	.global UNK_02105640
UNK_02105640: ; 0x02105640
	.asciz "fielddata/land_data/land_data_release.narc"

	.balign 4, 0
	.global UNK_0210566C
UNK_0210566C: ; 0x0210566C
	.asciz "fielddata/eventdata/zone_event_release.narc"

	.balign 4, 0
	.global UNK_02105698
UNK_02105698: ; 0x02105698
	.asciz "application/wifi_earth/wifi_earth_place.narc"

	.balign 4, 0
	.global UNK_021056C8
UNK_021056C8: ; 0x021056C8
	.asciz "demo/egg/data/particle/egg_demo_particle.narc"

	.balign 4, 0
	.global UNK_021056F8
UNK_021056F8: ; 0x021056F8
	.asciz "application/zukanlist/zkn_data/zukan_data.narc"

	.balign 4, 0
	.global UNK_02105728
UNK_02105728: ; 0x02105728
	.asciz "fielddata/areadata/area_map_tex/map_tex_set.narc"

	.balign 4, 0
	.global UNK_0210575C
UNK_0210575C: ; 0x0210575C
	.asciz "application/zukanlist/zkn_data/zukan_enc_pearl.narc"

	.balign 4, 0
	.global UNK_02105790
UNK_02105790: ; 0x02105790
	.asciz "fielddata/areadata/area_build_model/area_build.narc"

	.balign 4, 0
	.global UNK_021057C4
UNK_021057C4: ; 0x021057C4
	.asciz "demo/shinka/data/particle/shinka_demo_particle.narc"

	.balign 4, 0
	.global UNK_021057F8
UNK_021057F8: ; 0x021057F8
	.asciz "application/zukanlist/zkn_data/zukan_enc_diamond.narc"

	.balign 4, 0
	.global UNK_02105830
UNK_02105830: ; 0x02105830
	.asciz "fielddata/areadata/area_build_model/areabm_texset.narc"

	.balign 4, 0
	.global UNK_02105868
UNK_02105868: ; 0x02105868
	.asciz "fielddata/areadata/area_move_model/move_model_list.narc"

	.balign 4, 0
	.global UNK_021058A0
UNK_021058A0: ; 0x021058A0
	.word UNK_02104EA0
	.word UNK_02104E30
	.word UNK_02105260
	.word UNK_02105180
	.word UNK_02105080
	.word UNK_02104FC0
	.word UNK_02104E4C
	.word UNK_02104F2C
	.word UNK_02104854
	.word UNK_02104F48
	.word UNK_021054CC
	.word UNK_021050C0
	.word UNK_021049D0
	.word UNK_02104958
	.word UNK_0210482C
	.word UNK_0210530C
	.word UNK_02105330
	.word UNK_02104A78
	.word UNK_021047C8
	.word UNK_02105280
	.word UNK_02104BF8
	.word UNK_0210539C
	.word UNK_021053C0
	.word UNK_021053E4
	.word UNK_0210542C
	.word UNK_02104B50
	.word UNK_021047F0
	.word UNK_02104F80
	.word UNK_02104B68
	.word UNK_021055BC
	.word UNK_02104D18
	.word UNK_021047DC
	.word UNK_0210566C
	.word UNK_02104FA0
	.word UNK_02104E68
	.word UNK_02104970
	.word UNK_02104D34
	.word UNK_02105454
	.word UNK_02104AF0
	.word UNK_021049B8
	.word UNK_021054F4
	.word UNK_02105408
	.word UNK_02105354
	.word UNK_02105790
	.word UNK_02105728
	.word UNK_021051C0
	.word UNK_021052A0
	.word UNK_02105140
	.word UNK_02104DC0
	.word UNK_02105868
	.word UNK_02104818
	.word UNK_02104DDC
	.word UNK_021048CC
	.word UNK_02104B20
	.word UNK_02104930
	.word UNK_0210487C
	.word UNK_021049A0
	.word UNK_02104FE0
	.word UNK_02105000
	.word UNK_02104E14
	.word UNK_02104E84
	.word UNK_02105160
	.word UNK_02104B08
	.word UNK_02104BE0
	.word UNK_02104804
	.word UNK_02104AA8
	.word UNK_02104AC0
	.word UNK_02105640
	.word UNK_021052C4
	.word UNK_02105060
	.word UNK_02105220
	.word UNK_02105830
	.word UNK_02105240
	.word UNK_02104CB8
	.word UNK_02104B98
	.word UNK_021056F8
	.word UNK_02104868
	.word UNK_021050A0
	.word UNK_02104944
	.word UNK_02104B38
	.word UNK_02104CE8
	.word UNK_02104CD0
	.word UNK_02104EBC
	.word UNK_02104A30
	.word UNK_02105040
	.word UNK_02104C10
	.word UNK_0210491C
	.word UNK_02104A18
	.word UNK_021049E8
	.word UNK_021048A4
	.word UNK_02105100
	.word UNK_02105614
	.word UNK_02104B80
	.word UNK_02104C28
	.word UNK_02104C40
	.word UNK_02104908
	.word UNK_0210551C
	.word UNK_02104A48
	.word UNK_02104A60
	.word UNK_021055E8
	.word UNK_02105594
	.word UNK_02104BC8
	.word UNK_02105698
	.word UNK_02104F10
	.word UNK_02104C58
	.word UNK_02104D6C
	.word UNK_021048F4
	.word UNK_02104C70
	.word UNK_021051E0
	.word UNK_02104CA0
	.word UNK_02104840
	.word UNK_02104BB0
	.word UNK_021052E8
	.word UNK_02104F64
	.word UNK_021050E0
	.word UNK_0210556C
	.word UNK_02104988
	.word UNK_021051A0
	.word UNK_02104EF4
	.word UNK_021056C8
	.word UNK_02104890
	.word UNK_02105120
	.word UNK_02104AD8
	.word UNK_021048B8
	.word UNK_021057C4
	.word UNK_02104A90
	.word UNK_0210479C
	.word UNK_021048E0
	.word UNK_02104C88
	.word UNK_02105544
	.word UNK_02104A00
	.word UNK_021047A8
	.word UNK_02104ED8
	.word UNK_021047B8
	.word UNK_02104D88
	.word UNK_02104DF8
	.word UNK_02104D50
	.word UNK_02105020
	.word UNK_02105200
	.word UNK_021057F8
	.word UNK_0210575C
	.word UNK_02104DA4
	.word UNK_02105378
	.word UNK_021054A4
	.word UNK_0210547C
	.word UNK_02104D00

	.global UNK_02105AE8
UNK_02105AE8: ; 0x02105AE8
	.word UNK_020ECCE2
	.word UNK_020ECC78
	.word UNK_020ECC10
	.word UNK_020ECDCC

	.global UNK_02105AF8
UNK_02105AF8: ; 0x02105AF8
	.byte 0x00, 0x00, 0x00, 0x00, 0x03, 0x01, 0x00, 0x00

	.global UNK_02105B00
UNK_02105B00: ; 0x02105B00
	.byte 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00

	.global UNK_02105B08
UNK_02105B08: ; 0x02105B08
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x01, 0x00, 0x00

	.global UNK_02105B10
UNK_02105B10: ; 0x02105B10
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00

	.global UNK_02105B18
UNK_02105B18: ; 0x02105B18
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x01, 0x00, 0x00

	.global UNK_02105B20
UNK_02105B20: ; 0x02105B20
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00

	.global UNK_02105B28
UNK_02105B28: ; 0x02105B28
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00

	.global UNK_02105B30
UNK_02105B30: ; 0x02105B30
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00

	.global UNK_02105B38
UNK_02105B38: ; 0x02105B38
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00

	.global UNK_02105B40
UNK_02105B40: ; 0x02105B40
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00

	.global UNK_02105B48
UNK_02105B48: ; 0x02105B48
	.byte 0x00, 0x00, 0x00, 0x00, 0x5E, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x62, 0x00, 0x00, 0x00
	.byte 0x80, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00
	.byte 0x00, 0x3F, 0x20, 0x01, 0x00, 0x00, 0x00, 0x00, 0x02, 0x01, 0x00, 0x00, 0x33, 0x0B, 0x00, 0x00

	.global UNK_02105B78
UNK_02105B78: ; 0x02105B78
	.byte 0x80, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x5E, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x62, 0x00, 0x00, 0x00
	.byte 0x00, 0x3F, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x33, 0x0B, 0x00, 0x00

	.global UNK_02105BA8
UNK_02105BA8: ; 0x02105BA8
	.byte 0x71, 0x02, 0x00, 0x00

	.global UNK_02105BAC
UNK_02105BAC: ; 0x02105BAC
	.byte 0x00, 0x00, 0x00, 0x00, 0xDF, 0xB0, 0x08, 0x99

	.global UNK_02105BB4
UNK_02105BB4: ; 0x02105BB4
	.byte 0x00, 0x00, 0x00, 0x00

	.global UNK_02105BB8
UNK_02105BB8: ; 0x02105BB8
	.byte 0x01, 0x00, 0x00, 0x00

	.global UNK_02105BBC
UNK_02105BBC: ; 0x02105BBC
	.asciz "data/clact_default.NANR"

	.balign 4, 0
	.global UNK_02105BD4
UNK_02105BD4: ; 0x02105BD4
	.byte 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x32, 0x00, 0x00, 0x01, 0x00
	.byte 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x50, 0x00, 0x03, 0x1E, 0xEC, 0xEC, 0x00, 0x00
	.byte 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x05, 0x00, 0x00, 0x10, 0x00
	.byte 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x32, 0x00, 0x9D, 0x00, 0x00
	.byte 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x32, 0x00, 0x00, 0x01, 0x00

	.global UNK_02105C74
UNK_02105C74: ; 0x02105C74
	.byte 0x6E, 0x00, 0x6F, 0x00, 0x50, 0x00, 0x5B, 0x00, 0x51, 0x00, 0xEE, 0x00, 0x53, 0x00, 0xE5, 0x00
	.byte 0x52, 0x00, 0x54, 0x00, 0x55, 0x00, 0x5C, 0x00, 0x65, 0x00, 0x66, 0x00, 0x64, 0x00, 0x63, 0x00
	.byte 0x67, 0x00, 0x6A, 0x00, 0x1C, 0x00, 0x1D, 0x00, 0x48, 0x00, 0x49, 0x00, 0x4A, 0x00, 0x4B, 0x00
	.byte 0x5D, 0x00, 0x68, 0x00, 0x69, 0x00, 0x0D, 0x01, 0x16, 0x01, 0x1A, 0x01, 0x1B, 0x01, 0x1C, 0x01
	.byte 0x1D, 0x01, 0x2A, 0x01, 0x2B, 0x01, 0x2C, 0x01, 0x2D, 0x01, 0x2E, 0x01, 0x2F, 0x01, 0x30, 0x01
	.byte 0x31, 0x01, 0x32, 0x01, 0x33, 0x01, 0x34, 0x01, 0x35, 0x01, 0x36, 0x01, 0x37, 0x01, 0x38, 0x01
	.byte 0x39, 0x01, 0x00, 0x00

	.global UNK_02105CD8
UNK_02105CD8: ; 0x02105CD8
	.byte 0x01, 0x01, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01
	.byte 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01
	.byte 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x01, 0x01, 0x00, 0x01
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global UNK_02105D54
UNK_02105D54: ; 0x02105D54
	.byte 0x44, 0x50, 0x00, 0x00

	.global UNK_02105D58
UNK_02105D58: ; 0x02105D58
	.byte 0x04, 0x04, 0x00, 0x00

	.global UNK_02105D5C
UNK_02105D5C: ; 0x02105D5C
	.byte 0x46, 0x52, 0x45, 0x41, 0x4B, 0x00, 0x00, 0x00

	.global UNK_02105D64
UNK_02105D64: ; 0x02105D64
	.byte 0x20

	.global UNK_02105D65
UNK_02105D65: ; 0x02105D65
	.byte 0x46, 0x55, 0x4C, 0x4C, 0x00, 0x00, 0x00

	.global UNK_02105D6C
UNK_02105D6C: ; 0x02105D6C
	.byte 0x20

	.global UNK_02105D6D
UNK_02105D6D: ; 0x02105D6D
	.byte 0x47, 0x41, 0x4D, 0x45, 0x00, 0x00, 0x00

	.global UNK_02105D74
UNK_02105D74: ; 0x02105D74
	.word UNK_020EEC80
	.word UNK_020EEC78
	.word UNK_020EEC70
	.word UNK_020EEC68
	.word UNK_020EEC88

	.global UNK_02105D88
UNK_02105D88: ; 0x02105D88
	.asciz "data/wm.NCLR"

	.balign 4, 0
	.global UNK_02105D98
UNK_02105D98: ; 0x02105D98
	.asciz "data/wifi.NCGR"

	.balign 4, 0
	.global UNK_02105DA8
UNK_02105DA8: ; 0x02105DA8
	.asciz "data/wm.NCGR"

	.balign 4, 0
	.global UNK_02105DB8
UNK_02105DB8: ; 0x02105DB8
	.byte 0x00, 0x00, 0x00, 0x00

	.global UNK_02105DBC
UNK_02105DBC: ; 0x02105DBC
	.word MOD71_0222D5C0
	.word MOD71_0222D9C8
	.word MOD71_0222E438
	.word SDK_OVERLAY_MODULE_71_ID

	.global UNK_02105DCC
UNK_02105DCC: ; 0x02105DCC
	.word MOD17_021DDB58
	.word MOD17_021DDC30
	.word MOD17_021DDCF4
	.word SDK_OVERLAY_MODULE_17_ID

	.global UNK_02105DDC
UNK_02105DDC: ; 0x02105DDC
	.word MOD17_021D83E4
	.word MOD17_021D84F0
	.word MOD17_021D8738
	.word SDK_OVERLAY_MODULE_17_ID

	.global UNK_02105DEC
UNK_02105DEC: ; 0x02105DEC
	.word UNK_020F410C
	.word UNK_020F4118

	.global UNK_02105DF4
UNK_02105DF4: ; 0x02105DF4
	.word UNK_020F4192
	.word UNK_020F4142
	.word UNK_020F4162
	.word UNK_020F4172
	.word UNK_020F41A2
	.word UNK_020F4152
	.word UNK_020F41B2

	.global UNK_02105E10
UNK_02105E10: ; 0x02105E10
	.word UNK_020F40A6
	.word UNK_020F40B4
	.word UNK_020F40AC
	.word UNK_020F40BC
	.word UNK_020F40C6
	.word UNK_020F40F8
	.word UNK_020F40DA
	.word UNK_020F40E4
	.word UNK_020F41E6
	.word UNK_020F41FE
	.word UNK_020F41D4
	.word UNK_020F4126
	.word UNK_020F4182
	.word UNK_020F4134
	.word UNK_020F40EE
	.word UNK_020F40D0
	.word UNK_020F4102
	.word UNK_020F40A0
	.word UNK_020F41C2

	.global UNK_02105E5C
UNK_02105E5C: ; 0x02105E5C
	.byte 0x04, 0x00, 0x07, 0x00, 0x0B, 0x00, 0x07, 0x00

	.global UNK_02105E64
UNK_02105E64: ; 0x02105E64
	.byte 0x04, 0x00, 0x06, 0x00, 0x0B, 0x00, 0x06, 0x00, 0x04, 0x00, 0x08, 0x00, 0x0B, 0x00, 0x08, 0x00

	.global UNK_02105E74
UNK_02105E74: ; 0x02105E74
	.byte 0x90, 0x65, 0x8B, 0x40, 0x90, 0xDA, 0x91, 0xB1, 0x00, 0x00, 0x00, 0x00

	.global UNK_02105E80
UNK_02105E80: ; 0x02105E80
	.byte 0x69, 0x6E, 0x66, 0x6F, 0x83, 0x66, 0x81, 0x5B, 0x83, 0x5E, 0x8E, 0xF3, 0x90, 0x4D, 0x8A, 0xAE
	.byte 0x97, 0xB9, 0x00, 0x00

	.global UNK_02105E94
UNK_02105E94: ; 0x02105E94
	.byte 0x90, 0x65, 0x8B, 0x40, 0xE3, 0xA9, 0x83, 0x66, 0x81, 0x5B, 0x83, 0x5E, 0x93, 0xCD, 0x82, 0xA2
	.byte 0x82, 0xBD, 0x82, 0xE7, 0x82, 0xB5, 0x82, 0xA2, 0x00, 0x00, 0x00, 0x00

	.global UNK_02105EB0
UNK_02105EB0: ; 0x02105EB0
	.byte 0x94, 0xE9, 0x96, 0xA7, 0x8A, 0xEE, 0x92, 0x6E, 0x82, 0xCC, 0x88, 0xCA, 0x92, 0x75, 0x82, 0xAA
	.byte 0x82, 0xAB, 0x82, 0xBD, 0x00, 0x00, 0x00, 0x00

	.global UNK_02105EC8
UNK_02105EC8: ; 0x02105EC8
	.word UNK_02105EF4
	.word UNK_02105F2C

	.global UNK_02105ED0
UNK_02105ED0: ; 0x02105ED0
	.word UNK_02105ED8
	.word UNK_02105F10

	.global UNK_02105ED8
UNK_02105ED8: ; 0x02105ED8
	.asciz "data/uground_pltt.resdat"

	.balign 4, 0
	.global UNK_02105EF4
UNK_02105EF4: ; 0x02105EF4
	.asciz "data/uground_char.resdat"

	.balign 4, 0
	.global UNK_02105F10
UNK_02105F10: ; 0x02105F10
	.asciz "data/uground_pltt2.resdat"

	.balign 4, 0
	.global UNK_02105F2C
UNK_02105F2C: ; 0x02105F2C
	.asciz "data/uground_char2.resdat"

	.balign 4, 0
	.global UNK_02105F48
UNK_02105F48: ; 0x02105F48
	.asciz "data/uground_cell.resdat"

	.balign 4, 0
	.global UNK_02105F64
UNK_02105F64: ; 0x02105F64
	.asciz "data/uground_cellanm.resdat"

	.balign 4, 0
	.global UNK_02105F80
UNK_02105F80: ; 0x02105F80
	.asciz "data/uground_clact.cldat"

	.balign 4, 0
	.global UNK_02105F9C
UNK_02105F9C: ; 0x02105F9C
	.word UNK_020F6CA0
	.word UNK_020F6CE0
	.word UNK_020F6D20

	.global UNK_02105FA8
UNK_02105FA8: ; 0x02105FA8
	.asciz "data/tmap_flags.dat"

	.balign 4, 0
	.global UNK_02105FBC
UNK_02105FBC: ; 0x02105FBC
	.byte 0x73, 0x01, 0x75, 0x01, 0x7F, 0x01, 0x54, 0x01, 0xA5, 0x00, 0x00, 0x00

	.global UNK_02105FC8
UNK_02105FC8: ; 0x02105FC8
	.asciz "poketool/personal/pms.narc"

	.balign 4, 0
	.global UNK_02105FE4
UNK_02105FE4: ; 0x02105FE4
	.asciz "data/plist_h.cldat"

	.balign 4, 0
	.global UNK_02105FF8
UNK_02105FF8: ; 0x02105FF8
	.asciz "data/plist_pal.resdat"

	.balign 4, 0
	.global UNK_02106010
UNK_02106010: ; 0x02106010
	.asciz "data/plist_chr.resdat"

	.balign 4, 0
	.global UNK_02106028
UNK_02106028: ; 0x02106028
	.asciz "data/plist_cell.resdat"

	.balign 4, 0
	.global UNK_02106040
UNK_02106040: ; 0x02106040
	.asciz "data/plist_canm.resdat"

	.balign 4, 0
	.global UNK_02106058
UNK_02106058: ; 0x02106058
	.word UNK_020F9DAA
	.word UNK_020F9DAA
	.word UNK_020F9DAA
	.word UNK_020F9DAA
	.word UNK_020F9DC4

	.global UNK_0210606C
UNK_0210606C: ; 0x0210606C
	.word UNK_020F9E6C
	.word UNK_020F9E88
	.word UNK_020F9EA4
	.word UNK_020F9E18
	.word UNK_020F9E50
	.word UNK_020F9EDC
	.word UNK_020F9EF8
	.word UNK_020FA048
	.word UNK_020F9F4C
	.word UNK_020FA010
	.word UNK_020F9F84
	.word UNK_020F9FBC
	.word UNK_020F9FD8
	.word UNK_020F9FF4
	.word UNK_020FA02C
	.word UNK_020F9F68
	.word UNK_020F9DDE
	.word UNK_020F9F30
	.word UNK_020F9F14
	.word UNK_020F9E34
	.word UNK_020FA0C0
	.word UNK_020FA0E4
	.word UNK_020FA108
	.word UNK_020FA108
	.word UNK_020FA108

	.global UNK_021060D0
UNK_021060D0: ; 0x021060D0
	.asciz "data/pst_h.cldat"

	.balign 4, 0
	.global UNK_021060E4
UNK_021060E4: ; 0x021060E4
	.asciz "data/pst_pal.resdat"

	.balign 4, 0
	.global UNK_021060F8
UNK_021060F8: ; 0x021060F8
	.asciz "data/pst_chr.resdat"

	.balign 4, 0
	.global UNK_0210610C
UNK_0210610C: ; 0x0210610C
	.asciz "data/pst_cell.resdat"

	.balign 4, 0
	.global UNK_02106124
UNK_02106124: ; 0x02106124
	.asciz "data/pst_canm.resdat"

	.balign 4, 0
	.global UNK_0210613C
UNK_0210613C: ; 0x0210613C
	.word UNK_020FB764
	.word UNK_020FB710
	.word UNK_020FB6F8

	.global UNK_02106148
UNK_02106148: ; 0x02106148
	.word UNK_020FB740
	.word UNK_020FB728
	.word UNK_020FB704

	.global UNK_02106154
UNK_02106154: ; 0x02106154
	.byte 0xFF, 0xFF, 0xFF, 0xFF

	.global UNK_02106158
UNK_02106158: ; 0x02106158
	.word FUN_0208ECA0
	.word FUN_0208EBE4

	.global UNK_02106160
UNK_02106160: ; 0x02106160
	.word FUN_0208EAF8
	.word FUN_0208EB38

	.global UNK_02106168
UNK_02106168: ; 0x02106168
	.byte 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00

	.global UNK_02106170
UNK_02106170: ; 0x02106170
	.word UNK_020FF573
	.word UNK_020FF572
	.word UNK_020FF570
	.word UNK_020FF56C
	.word UNK_020FF564
	.word UNK_020FF554
	.word UNK_020FF534

	.global UNK_0210618C
UNK_0210618C: ; 0x0210618C
	.asciz "%s%c%c%c%c%s"

	.balign 4, 0
	.global UNK_0210619C
UNK_0210619C: ; 0x0210619C
	.byte 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66
	.byte 0x67, 0x68, 0x69, 0x6A, 0x6B, 0x6C, 0x6D, 0x6E, 0x6F, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76
	.byte 0x00, 0x00, 0x00, 0x00

	.global UNK_021061C0
UNK_021061C0: ; 0x021061C0
	.byte 0xE6, 0xFF, 0xFF, 0xFF

	.global UNK_021061C4
UNK_021061C4: ; 0x021061C4
	.byte 0x01, 0x01, 0xC0, 0x05, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08
	.byte 0x00, 0x08, 0x0C, 0x20, 0x00, 0x00, 0x00, 0x00

	.global UNK_021061DC
UNK_021061DC: ; 0x021061DC
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x66, 0x04, 0x00, 0x00, 0x00, 0x00, 0x61, 0x08, 0x00, 0x00
	.byte 0x00, 0x08, 0x0C, 0x20, 0x00, 0x08, 0x0D, 0x20

	.global UNK_021061F4
UNK_021061F4: ; 0x021061F4
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0xEA, 0x05, 0x00, 0x00, 0x00, 0x00, 0xEB, 0x06, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x0D, 0x20

	.global UNK_0210620C
UNK_0210620C: ; 0x0210620C
	.byte 0x25, 0x64, 0x2E, 0x25, 0x64, 0x2E, 0x25, 0x64, 0x2E, 0x25, 0x64, 0x00

	.global UNK_02106218
UNK_02106218: ; 0x02106218
	.byte 0x10, 0x00, 0x00, 0x00

	.global UNK_0210621C
UNK_0210621C: ; 0x0210621C
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00

	.global UNK_02106224
UNK_02106224: ; 0x02106224
	.asciz "NintendoDS"

	.balign 4, 0
	.global UNK_02106230
UNK_02106230: ; 0x02106230
	.byte 0xAA, 0xAA, 0x03, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00

	.global UNK_0210623C
UNK_0210623C: ; 0x0210623C
	.byte 0x04, 0x00, 0x05, 0x00

	.global UNK_02106240
UNK_02106240: ; 0x02106240
	.byte 0xFF, 0xFF, 0xFF, 0x00

	.global UNK_02106244
UNK_02106244: ; 0x02106244
	.byte 0xFF, 0xFF, 0xFF, 0xFF

	.global UNK_02106248
UNK_02106248: ; 0x02106248
	.byte 0x55, 0x04, 0x03, 0x00

	.global UNK_0210624C
UNK_0210624C: ; 0x0210624C
	.byte 0x55, 0x08, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00

	.global UNK_02106254
UNK_02106254: ; 0x02106254
	.byte 0x2A, 0x86, 0x48, 0x86, 0xF7, 0x0D, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00

	.global UNK_02106260
UNK_02106260: ; 0x02106260
	.byte 0x2A, 0x86, 0x48, 0x86, 0xF7, 0x0D, 0x01, 0x01, 0x04, 0x00, 0x00, 0x00

	.global UNK_0210626C
UNK_0210626C: ; 0x0210626C
	.byte 0x2A, 0x86, 0x48, 0x86, 0xF7, 0x0D, 0x01, 0x01, 0x05, 0x00, 0x00, 0x00

	.global UNK_02106278
UNK_02106278: ; 0x02106278
	.word UNK_02106240
	.word UNK_02106254
	.word UNK_0210624C
	.word UNK_02106260
	.word UNK_0210626C
	.word UNK_02106248

	.global UNK_02106290
UNK_02106290: ; 0x02106290
	.byte 0x53, 0x52, 0x56, 0x52, 0x00, 0x00, 0x00, 0x00

	.global UNK_02106298
UNK_02106298: ; 0x02106298
	.byte 0x43, 0x4C, 0x4E, 0x54, 0x00, 0x00, 0x00, 0x00

	.global UNK_021062A0
UNK_021062A0: ; 0x021062A0
	.byte 0x41, 0x00, 0x00, 0x00

	.global UNK_021062A4
UNK_021062A4: ; 0x021062A4
	.byte 0x42, 0x42, 0x00, 0x00

	.global UNK_021062A8
UNK_021062A8: ; 0x021062A8
	.byte 0x43, 0x43, 0x43, 0x00

	.global UNK_021062AC
UNK_021062AC: ; 0x021062AC
	.byte 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F
	.byte 0x01, 0x06, 0x0B, 0x00, 0x05, 0x0A, 0x0F, 0x04, 0x09, 0x0E, 0x03, 0x08, 0x0D, 0x02, 0x07, 0x0C
	.byte 0x05, 0x08, 0x0B, 0x0E, 0x01, 0x04, 0x07, 0x0A, 0x0D, 0x00, 0x03, 0x06, 0x09, 0x0C, 0x0F, 0x02
	.byte 0x00, 0x07, 0x0E, 0x05, 0x0C, 0x03, 0x0A, 0x01, 0x08, 0x0F, 0x06, 0x0D, 0x04, 0x0B, 0x02, 0x09

	.global UNK_021062EC
UNK_021062EC: ; 0x021062EC
	.byte 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global UNK_0210632C
UNK_0210632C: ; 0x0210632C
	.byte 0x78, 0xA4, 0x6A, 0xD7, 0x56, 0xB7, 0xC7, 0xE8, 0xDB, 0x70, 0x20, 0x24, 0xEE, 0xCE, 0xBD, 0xC1
	.byte 0xAF, 0x0F, 0x7C, 0xF5, 0x2A, 0xC6, 0x87, 0x47, 0x13, 0x46, 0x30, 0xA8, 0x01, 0x95, 0x46, 0xFD
	.byte 0xD8, 0x98, 0x80, 0x69, 0xAF, 0xF7, 0x44, 0x8B, 0xB1, 0x5B, 0xFF, 0xFF, 0xBE, 0xD7, 0x5C, 0x89
	.byte 0x22, 0x11, 0x90, 0x6B, 0x93, 0x71, 0x98, 0xFD, 0x8E, 0x43, 0x79, 0xA6, 0x21, 0x08, 0xB4, 0x49
	.byte 0x62, 0x25, 0x1E, 0xF6, 0x40, 0xB3, 0x40, 0xC0, 0x51, 0x5A, 0x5E, 0x26, 0xAA, 0xC7, 0xB6, 0xE9
	.byte 0x5D, 0x10, 0x2F, 0xD6, 0x53, 0x14, 0x44, 0x02, 0x81, 0xE6, 0xA1, 0xD8, 0xC8, 0xFB, 0xD3, 0xE7
	.byte 0xE6, 0xCD, 0xE1, 0x21, 0xD6, 0x07, 0x37, 0xC3, 0x87, 0x0D, 0xD5, 0xF4, 0xED, 0x14, 0x5A, 0x45
	.byte 0x05, 0xE9, 0xE3, 0xA9, 0xF8, 0xA3, 0xEF, 0xFC, 0xD9, 0x02, 0x6F, 0x67, 0x8A, 0x4C, 0x2A, 0x8D
	.byte 0x42, 0x39, 0xFA, 0xFF, 0x81, 0xF6, 0x71, 0x87, 0x22, 0x61, 0x9D, 0x6D, 0x0C, 0x38, 0xE5, 0xFD
	.byte 0x44, 0xEA, 0xBE, 0xA4, 0xA9, 0xCF, 0xDE, 0x4B, 0x60, 0x4B, 0xBB, 0xF6, 0x70, 0xBC, 0xBF, 0xBE
	.byte 0xC6, 0x7E, 0x9B, 0x28, 0xFA, 0x27, 0xA1, 0xEA, 0x85, 0x30, 0xEF, 0xD4, 0x05, 0x1D, 0x88, 0x04
	.byte 0x39, 0xD0, 0xD4, 0xD9, 0xE5, 0x99, 0xDB, 0xE6, 0xF8, 0x7C, 0xA2, 0x1F, 0x65, 0x56, 0xAC, 0xC4
	.byte 0x44, 0x22, 0x29, 0xF4, 0x97, 0xFF, 0x2A, 0x43, 0xA7, 0x23, 0x94, 0xAB, 0x39, 0xA0, 0x93, 0xFC
	.byte 0xC3, 0x59, 0x5B, 0x65, 0x92, 0xCC, 0x0C, 0x8F, 0x7D, 0xF4, 0xEF, 0xFF, 0xD1, 0x5D, 0x84, 0x85
	.byte 0x4F, 0x7E, 0xA8, 0x6F, 0xE0, 0xE6, 0x2C, 0xFE, 0x14, 0x43, 0x01, 0xA3, 0xA1, 0x11, 0x08, 0x4E
	.byte 0x82, 0x7E, 0x53, 0xF7, 0x35, 0xF2, 0x3A, 0xBD, 0xBB, 0xD2, 0xD7, 0x2A, 0x91, 0xD3, 0x86, 0xEB

	.global UNK_0210642C
UNK_0210642C: ; 0x0210642C
	.byte 0x80

	.global UNK_0210642D
UNK_0210642D: ; 0x0210642D
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global UNK_0210646C
UNK_0210646C: ; 0x0210646C
	.byte 0x01, 0x00, 0x00, 0x00

	.global UNK_02106470
UNK_02106470: ; 0x02106470
	.byte 0x3F, 0x00, 0x00, 0x00, 0x7F, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0xFF, 0x01, 0x00, 0x00
	.byte 0xFF, 0x03, 0x00, 0x00, 0xFF, 0x07, 0x00, 0x00, 0xFF, 0x0F, 0x00, 0x00, 0xFF, 0x1F, 0x00, 0x00

	.global UNK_02106490
UNK_02106490: ; 0x02106490
	.byte 0xF7, 0xB5, 0xEF, 0x00, 0x00, 0x00, 0x00, 0x00

	.global UNK_02106498
UNK_02106498: ; 0x02106498
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0xFC, 0x03, 0x00, 0x00

	.global UNK_021064A8
UNK_021064A8: ; 0x021064A8
	.byte 0xFB, 0xE9, 0x3D, 0x40, 0xBC, 0xC7, 0xD1, 0x2C, 0x2A, 0xD0, 0x7C, 0x03, 0xF0, 0x08, 0x93, 0xF5

	.global UNK_021064B8
UNK_021064B8: ; 0x021064B8
	.word FUN_020AE8B4

	.global UNK_021064BC
UNK_021064BC: ; 0x021064BC
	.word FUN_020AE8AC

	.global UNK_021064C0
UNK_021064C0: ; 0x021064C0
	.word FUN_020AE8C4

	.global UNK_021064C4
UNK_021064C4: ; 0x021064C4
	.word FUN_020AE8BC

	.global UNK_021064C8
UNK_021064C8: ; 0x021064C8
	.word UNK_021064E4
	.word UNK_0210652C

	.global UNK_021064D0
UNK_021064D0: ; 0x021064D0
	.word UNK_02106544
	.word UNK_0210652C
	.word UNK_021064E4
	.word UNK_02106514
	.word UNK_021064FC

	.global UNK_021064E4
UNK_021064E4: ; 0x021064E4
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00

	.global UNK_021064FC
UNK_021064FC: ; 0x021064FC
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x02, 0x00

	.global UNK_02106514
UNK_02106514: ; 0x02106514
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x03, 0x00

	.global UNK_0210652C
UNK_0210652C: ; 0x0210652C
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x04, 0x00

	.global UNK_02106544
UNK_02106544: ; 0x02106544
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x06, 0x00

	.global UNK_0210655C
UNK_0210655C: ; 0x0210655C
	.word FUN_020B1088
	.word FUN_020B1098
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

	.global UNK_02106570
UNK_02106570: ; 0x02106570
	.byte 0xFE, 0xFF, 0x00, 0x00

	.global UNK_02106574
UNK_02106574: ; 0x02106574
	.byte 0xFF, 0xFF, 0xFF, 0xFF

	.global UNK_02106578
UNK_02106578: ; 0x02106578
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global UNK_02106590
UNK_02106590: ; 0x02106590
	.byte 0x00, 0xF0, 0xFF, 0xFF

	.global UNK_02106594
UNK_02106594: ; 0x02106594
	.byte 0x05, 0x00, 0x00, 0x00

	.global UNK_02106598
UNK_02106598: ; 0x02106598
	.word FUN_020BE5A0

	.global UNK_0210659C
UNK_0210659C: ; 0x0210659C
	.word FUN_020BDA70

	.global UNK_021065A0
UNK_021065A0: ; 0x021065A0
	.word FUN_020BDF38

	.global UNK_021065A4
UNK_021065A4: ; 0x021065A4
	.word FUN_020BE334

	.global UNK_021065A8
UNK_021065A8: ; 0x021065A8
	.word FUN_020BDB40

	.global UNK_021065AC
UNK_021065AC: ; 0x021065AC
	.word FUN_020B8640

	.global UNK_021065B0
UNK_021065B0: ; 0x021065B0
	.word FUN_020B86B0

	.global UNK_021065B4
UNK_021065B4: ; 0x021065B4
	.word FUN_020B8A08

	.global UNK_021065B8
UNK_021065B8: ; 0x021065B8
	.byte 0x4D, 0x00, 0x41, 0x4D

	.global UNK_021065BC
UNK_021065BC: ; 0x021065BC
	.word FUN_020BDC0C
	.byte 0x4D, 0x00, 0x50, 0x54
	.word FUN_020BE4F0
	.byte 0x4D, 0x00, 0x41, 0x54
	.word FUN_020BDF84
	.byte 0x56, 0x00, 0x41, 0x56
	.word FUN_020BE5E0
	.byte 0x4A, 0x00, 0x41, 0x43
	.word FUN_020BDAB4
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global UNK_02106608
UNK_02106608: ; 0x02106608
	.word FUN_020BE668
	.word FUN_020BEE3C
	.word FUN_020BF2FC

	.global UNK_02106614
UNK_02106614: ; 0x02106614
	.word FUN_020BE62C
	.word FUN_020BECEC
	.word FUN_020BF0D4

	.global UNK_02106620
UNK_02106620: ; 0x02106620
	.word FUN_020BE6E4
	.word FUN_020BEF10
	.word FUN_020BF42C
	.word FUN_020BFA9C

	.global UNK_02106630
UNK_02106630: ; 0x02106630
	.byte 0x2A, 0x00, 0x00, 0x00

	.global UNK_02106634
UNK_02106634: ; 0x02106634
	.byte 0x00, 0x00, 0x00, 0x00

	.global UNK_02106638
UNK_02106638: ; 0x02106638
	.byte 0x2A, 0x00, 0x00, 0x00

	.global UNK_0210663C
UNK_0210663C: ; 0x0210663C
	.byte 0x00, 0x00, 0x00, 0x00

	.global UNK_02106640
UNK_02106640: ; 0x02106640
	.word FUN_020BA58C
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global UNK_02106650
UNK_02106650: ; 0x02106650
	.word FUN_020BA438
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global UNK_02106660
UNK_02106660: ; 0x02106660
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00

	.global UNK_021066A0
UNK_021066A0: ; 0x021066A0
	.byte 0x12, 0x10, 0x17, 0x1B

	.global UNK_021066A4
UNK_021066A4: ; 0x021066A4
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00

	.global UNK_021066AC
UNK_021066AC: ; 0x021066AC
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00

	.global UNK_021066D0
UNK_021066D0: ; 0x021066D0
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global UNK_021066DC
UNK_021066DC: ; 0x021066DC
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global UNK_021066E8
UNK_021066E8: ; 0x021066E8
	.byte 0x12, 0x10, 0x17, 0x1B

	.global UNK_021066EC
UNK_021066EC: ; 0x021066EC
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00

	.global UNK_021066F4
UNK_021066F4: ; 0x021066F4
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00

	.global UNK_02106718
UNK_02106718: ; 0x02106718
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global UNK_02106724
UNK_02106724: ; 0x02106724
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global UNK_02106730
UNK_02106730: ; 0x02106730
	.word FUN_020BAC70
	.word FUN_020BAC48
	.word FUN_020BAAC0
	.word FUN_020BA9EC
	.word FUN_020BA50C
	.word FUN_020BA3C4
	.word FUN_020B9F84
	.word FUN_020B9C54
	.word FUN_020B98C4
	.word FUN_020B9258
	.word FUN_020B9178
	.word FUN_020B9110
	.word FUN_020B8DF0
	.word FUN_020B8A60
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global UNK_021067B0
UNK_021067B0: ; 0x021067B0
	.word FUN_020BEBD8
	.word FUN_020BEB00
	.word FUN_020BEA84
	.word FUN_020BEA3C
	.word FUN_020BE954
	.word FUN_020BE894
	.word FUN_020BE850
	.word FUN_020BE82C

	.global UNK_021067D0
UNK_021067D0: ; 0x021067D0
	.word FUN_020BF988
	.word FUN_020BF894
	.word FUN_020BF810
	.word FUN_020BF7C8
	.word FUN_020BF6C8
	.word FUN_020BF5E8
	.word FUN_020BF598
	.word FUN_020BF574

	.global UNK_021067F0
UNK_021067F0: ; 0x021067F0
	.word FUN_020BFFD4
	.word FUN_020BFEEC
	.word FUN_020BFE68
	.word FUN_020BFE0C
	.word FUN_020BFD38
	.word FUN_020BFC8C
	.word FUN_020BFC4C
	.word FUN_020BFC28
