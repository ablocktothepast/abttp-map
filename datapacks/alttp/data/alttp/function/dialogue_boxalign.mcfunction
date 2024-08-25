#ANGLE = 0, FOV = 60, 70, 85, 110
execute if score angle dialogue matches 0 run tp @e[type=text_display,tag=dialogue_td] ^-0.01 ^1.485 ^0.352
execute if score angle dialogue matches 0 run tp @e[type=item_display,tag=dialogue_bg] ^ ^1.505 ^0.422
execute if score angle dialogue matches 0 run tp @e[type=text_display,tag=dialogue_nd] ^0.09 ^1.558 ^0.365
execute if score angle dialogue matches 0 if score na_float dialogue matches 0 run tp @e[type=item_display,tag=dialogue_na] ^-0.3 ^1.45 ^0.42

#ANGLE = 20, FOV = 60, 70, 85, 110
execute if score angle dialogue matches 20 run tp @e[type=text_display,tag=dialogue_td] ^-0.01 ^1.39 ^-0.2
execute if score angle dialogue matches 20 run tp @e[type=item_display,tag=dialogue_bg] ^ ^1.415 ^-0.14
execute if score angle dialogue matches 20 run tp @e[type=text_display,tag=dialogue_nd] ^0.11 ^1.46 ^-0.165
execute if score angle dialogue matches 20 if score na_float dialogue matches 0 run tp @e[type=item_display,tag=dialogue_na] ^-0.295 ^1.37 ^-0.15

#CUTSCENE, NO NEXT BUTTON
execute if score cutscene dialogue matches 1 run tp @e[type=item_display,tag=dialogue_na] 0 0 0

#NEXT MARKER ANIMATION, FOR EVERY FOV
execute if score angle dialogue matches 0 if score na_float dialogue matches 1..4 as @e[type=item_display,tag=dialogue_na] at @s run tp @s ^ ^0.001 ^
execute if score angle dialogue matches 0 if score na_float dialogue matches 5..14 as @e[type=item_display,tag=dialogue_na] at @s run tp @s ^ ^-0.001 ^
execute if score angle dialogue matches 0 if score na_float dialogue matches 15..19 as @e[type=item_display,tag=dialogue_na] at @s run tp @s ^ ^0.001 ^

execute if score angle dialogue matches 20 if score na_float dialogue matches 1..4 as @e[type=item_display,tag=dialogue_na] at @s run tp @s ^-0.0005 ^0.001 ^
execute if score angle dialogue matches 20 if score na_float dialogue matches 5..14 as @e[type=item_display,tag=dialogue_na] at @s run tp @s ^0.0005 ^-0.001 ^
execute if score angle dialogue matches 20 if score na_float dialogue matches 15..19 as @e[type=item_display,tag=dialogue_na] at @s run tp @s ^-0.0005 ^0.001 ^

execute at @p run tp @e[type=interaction,tag=dialogue_in] ~ ~ ~