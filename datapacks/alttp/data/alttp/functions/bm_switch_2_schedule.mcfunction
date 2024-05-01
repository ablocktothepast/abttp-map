data modify entity @e[tag=bm,tag=bg,limit=1] text set value '{"text":"\\uE024"}'

execute as @e[type=text_display,tag=i] at @p run tp @s ^ ^5 ^
execute as @e[type=text_display,tag=ind_1] at @p run tp @s ^ ^5 ^
execute as @e[type=text_display,tag=ind_2] at @p run tp @s ^ ^5 ^
execute as @e[type=text_display,tag=ind_3] at @p run tp @s ^ ^5 ^
execute as @e[type=text_display,tag=km] at @p run tp @s ^ ^5 ^

bossbar set bm name [{"keybind":"key.attack"},{"text":" to select"},{"text":" | ","color":"gray","bold":true},{"keybind":"key.use"},{"text":" to return"},{"text":" | ","color":"gray","bold":true},{"keybind":"key.sneak"},{"text":" to close"}]