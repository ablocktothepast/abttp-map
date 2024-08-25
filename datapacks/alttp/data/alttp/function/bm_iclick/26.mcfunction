bossbar set bm name ""
scoreboard players set select bm 1
scoreboard players set seli bm 24

execute at @p run tp @e[type=item_display,tag=bm,tag=hl] ^0.198 ^1.477 ^0.3
execute at @p run tp @e[type=text_display,tag=bm,tag=b_cancel] ^0.192 ^1.4 ^0.29
execute at @p run tp @e[type=text_display,tag=bm,tag=b_left] ^0.254 ^1.462 ^0.29
execute at @p run tp @e[type=text_display,tag=bm,tag=b_up] ^0.192 ^1.526 ^0.29
execute at @p run tp @e[type=text_display,tag=bm,tag=b_right] ^0.129 ^1.462 ^0.29

execute at @p run tp @e[type=item_display,tag=bm,tag=hl] ^-0.194 ^1.477 ^0.3
execute at @p run tp @e[type=text_display,tag=bm,tag=b_cancel] ^-0.187 ^1.4 ^0.29
execute at @p run tp @e[type=text_display,tag=bm,tag=b_left] ^-0.125 ^1.462 ^0.29
execute at @p run tp @e[type=text_display,tag=bm,tag=b_up] ^-0.187 ^1.526 ^0.29
execute at @p run tp @e[type=text_display,tag=bm,tag=b_right] ^-0.249 ^1.462 ^0.29