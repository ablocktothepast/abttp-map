bossbar set bm name ""
scoreboard players set select bm 1
scoreboard players set seli bm 5

execute at @p run tp @e[type=item_display,tag=bm,tag=hl] ^0.1 ^1.673 ^0.3
execute at @p run tp @e[type=text_display,tag=bm,tag=b_cancel] ^0.097 ^1.586 ^0.29
execute at @p run tp @e[type=text_display,tag=bm,tag=b_left] ^0.16 ^1.65 ^0.29
execute at @p run tp @e[type=text_display,tag=bm,tag=b_up] ^0.097 ^1.714 ^0.29
execute at @p run tp @e[type=text_display,tag=bm,tag=b_right] ^0.035 ^1.65 ^0.29