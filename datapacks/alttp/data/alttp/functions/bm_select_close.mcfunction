bossbar set bm name [{"keybind":"key.attack"},{"text":" to select"},{"text":" | ","color":"gray","bold":true},{"keybind":"key.sneak"},{"text":" to close"}]
scoreboard players set select bm 0
scoreboard players set selected bm 1

scoreboard players set w_cool bm 1
scoreboard players set a_cool bm 1
scoreboard players set s_cool bm 1
scoreboard players set d_cool bm 1

execute at @p run tp @e[type=item_display,tag=bm,tag=hl] ^ ^-5 ^
execute at @p run tp @e[type=text_display,tag=bm,tag=b_cancel] ^ ^-5 ^
execute at @p run tp @e[type=text_display,tag=bm,tag=b_left] ^ ^-5 ^
execute at @p run tp @e[type=text_display,tag=bm,tag=b_up] ^ ^-5 ^
execute at @p run tp @e[type=text_display,tag=bm,tag=b_right] ^ ^-5 ^