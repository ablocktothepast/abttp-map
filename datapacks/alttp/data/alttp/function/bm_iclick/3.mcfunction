bossbar set bm name ""
scoreboard players set select bm 1
scoreboard players set seli bm 3

execute at @p run tp @e[type=item_display,tag=bm,tag=hl] ^0.002 ^1.769 ^0.3
execute at @p run tp @e[type=text_display,tag=bm,tag=b_cancel] ^0.002 ^1.682 ^0.29
execute at @p run tp @e[type=text_display,tag=bm,tag=b_left] ^0.064 ^1.746 ^0.29
execute at @p run tp @e[type=text_display,tag=bm,tag=b_up] ^0.002 ^1.81 ^0.29
execute at @p run tp @e[type=text_display,tag=bm,tag=b_right] ^-0.06 ^1.746 ^0.29