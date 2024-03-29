bossbar set bm name ""
scoreboard players set select bm 1
scoreboard players set seli bm 6

execute at @p run tp @e[type=item_display,tag=bm,tag=hl] ^0.294 ^1.477 ^0.3
execute at @p run tp @e[type=text_display,tag=bm,tag=b_cancel] ^0.285 ^1.4 ^0.29
execute at @p run tp @e[type=text_display,tag=bm,tag=b_left] ^0.348 ^1.462 ^0.29
execute at @p run tp @e[type=text_display,tag=bm,tag=b_up] ^0.285 ^1.526 ^0.29
execute at @p run tp @e[type=text_display,tag=bm,tag=b_right] ^0.222 ^1.462 ^0.29