bossbar set bm name ""
scoreboard players set select bm 1
scoreboard players set seli bm 23

execute at @p run tp @e[type=item_display,tag=bm,tag=hl] ^-0.194 ^1.575 ^0.3
execute at @p run tp @e[type=text_display,tag=bm,tag=b_cancel] ^-0.187 ^1.494 ^0.29
execute at @p run tp @e[type=text_display,tag=bm,tag=b_left] ^-0.125 ^1.558 ^0.29
execute at @p run tp @e[type=text_display,tag=bm,tag=b_up] ^-0.187 ^1.622 ^0.29
execute at @p run tp @e[type=text_display,tag=bm,tag=b_right] ^-0.249 ^1.558 ^0.29