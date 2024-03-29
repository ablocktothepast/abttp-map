bossbar set bm name ""
scoreboard players set select bm 1
scoreboard players set seli bm 20

execute at @p run tp @e[type=item_display,tag=bm,tag=hl] ^0.198 ^1.673 ^0.3
execute at @p run tp @e[type=text_display,tag=bm,tag=b_cancel] ^0.192 ^1.586 ^0.29
execute at @p run tp @e[type=text_display,tag=bm,tag=b_left] ^0.254 ^1.65 ^0.29
execute at @p run tp @e[type=text_display,tag=bm,tag=b_up] ^0.192 ^1.714 ^0.29
execute at @p run tp @e[type=text_display,tag=bm,tag=b_right] ^0.129 ^1.65 ^0.29