kill @e[type=marker,tag=dialogue_tp]
summon marker ~ ~ ~ {Tags:["dialogue_tp"]}

execute at @p run summon marker ~ ~ ~ {Tags:["dialogueplayerpos"]}
execute at @p run tp @e[type=marker,tag=dialogueplayerpos] ~ ~ ~ ~ ~
kill @e[type=area_effect_cloud,tag=dialoguetransition]
kill @e[type=minecart,tag=dialogue_minecart]
execute at @p run summon area_effect_cloud ~ ~ ~ {Duration:-1,Age:-2147483648,WaitTime:0,Tags:["dialoguetransition"],Passengers:[{id:"minecraft:minecart",Invulnerable:1b,Tags:["dialogue_minecart"]}]}
execute at @p run tp @e[type=area_effect_cloud,tag=dialoguetransition] ~ ~ ~ ~ ~
kill @e[type=marker,tag=dialogue_player]
gamemode adventure @p
scoreboard players set dialoguetransitiontick dummy -5
scoreboard players set dialoguetransition dummy 1

execute as @e[type=marker,tag=dialogue_tp] at @p positioned ~ ~0.5 ~ rotated ~135 -5 run function alttp:dialogue_thirdperson_loop
execute as @e[type=marker,tag=dialogue_tp] at @s run function alttp:dialogue_thirdperson_hardcoded
function alttp:dialogue_thirdperson_fakeplayerpos_hardcoded