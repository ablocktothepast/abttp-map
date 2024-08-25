bossbar set bm name ""
scoreboard players set select bm 1
scoreboard players set seli bm 9

execute at @p run tp @e[type=item_display,tag=bm,tag=hl] ^0.002 ^1.575 ^0.3
execute at @p run tp @e[type=text_display,tag=bm,tag=b_cancel] ^0.002 ^1.494 ^0.29
execute at @p run tp @e[type=text_display,tag=bm,tag=b_left] ^0.064 ^1.558 ^0.29
execute at @p run tp @e[type=text_display,tag=bm,tag=b_up] ^0.002 ^1.622 ^0.29
execute at @p run tp @e[type=text_display,tag=bm,tag=b_right] ^-0.06 ^1.558 ^0.29