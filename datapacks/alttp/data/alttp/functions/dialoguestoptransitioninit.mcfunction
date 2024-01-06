kill @e[type=area_effect_cloud,tag=dialoguetransition]
kill @e[type=minecart,tag=dialogue_minecart]
execute at @p run summon area_effect_cloud ~ ~ ~ {Duration:-1,Age:-2147483648,WaitTime:0,Tags:["dialoguetransition"],Passengers:[{id:"minecraft:minecart",Invulnerable:1b,Tags:["dialogue_minecart"]}]}
execute at @p run tp @e[type=area_effect_cloud,tag=dialoguetransition] ~ ~ ~ ~ ~
gamemode adventure @p
scoreboard players set dialoguetransitiontick2 dummy -5
scoreboard players set dialoguetransition2 dummy 1