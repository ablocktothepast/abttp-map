data modify entity @e[tag=bm,tag=bg,limit=1] text set value '{"text":"\\uE018"}'
data modify entity @e[tag=bm,tag=sel,limit=1] text set value '{"text":"\\uE019"}'
data modify entity @e[tag=bm,tag=sel,limit=1] transformation.scale[0] set value 0.018f
data modify entity @e[tag=bm,tag=sel,limit=1] transformation.scale[1] set value 0.018f

execute as @e[type=text_display,tag=km] at @p run tp @s ^ ^5 ^
execute as @e[type=text_display,tag=bm,tag=as] at @p run tp @s ^ ^5 ^

execute at @p run function alttp:bm_indicators
bossbar set bm name [{"keybind":"key.attack"},{"text":" to select"},{"text":" | ","color":"gray","bold":true},{"keybind":"key.sneak"},{"text":" to close"}]