data modify entity @e[tag=bm,tag=bg,limit=1] text set value '{"text":"\\uE025"}'
data modify entity @e[tag=bm,tag=sel,limit=1] text set value '{"text":"\\uE019"}'
data modify entity @e[tag=bm,tag=sel,limit=1] transformation.scale[0] set value 0.0185f
data modify entity @e[tag=bm,tag=sel,limit=1] transformation.scale[1] set value 0.0185f

execute as @e[type=text_display,tag=i] at @p run tp @s ^ ^5 ^
execute as @e[type=text_display,tag=ind_1] at @p run tp @s ^ ^5 ^
execute as @e[type=text_display,tag=ind_2] at @p run tp @s ^ ^5 ^
execute as @e[type=text_display,tag=ind_3] at @p run tp @s ^ ^5 ^
execute as @e[type=text_display,tag=bm,tag=as] at @p run tp @s ^ ^5 ^

bossbar set bm name [{"keybind":"key.attack"},{"text":" to select"},{"text":" | ","color":"gray","bold":true},{"keybind":"key.use"},{"text":" to return"},{"text":" | ","color":"gray","bold":true},{"keybind":"key.sneak"},{"text":" to close"}]

scoreboard players set km_scrollindex bm 0
scoreboard players set slot bm 0

function alttp:bm_km_scrollupdate