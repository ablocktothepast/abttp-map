bossbar set bm name ""
scoreboard players set select bm 1
scoreboard players set seli bm 15

execute at @p run tp @e[type=item_display,tag=bm,tag=hl] ^0.1 ^1.575 ^0.3
execute at @p run tp @e[type=text_display,tag=bm,tag=b_cancel] ^0.097 ^1.494 ^0.29
execute at @p run tp @e[type=text_display,tag=bm,tag=b_left] ^0.16 ^1.558 ^0.29
execute at @p run tp @e[type=text_display,tag=bm,tag=b_up] ^0.097 ^1.622 ^0.29
execute at @p run tp @e[type=text_display,tag=bm,tag=b_right] ^0.035 ^1.558 ^0.29