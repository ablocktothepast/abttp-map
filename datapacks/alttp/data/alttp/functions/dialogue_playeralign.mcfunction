execute unless entity @e[type=area_effect_cloud,tag=dialogue_lock_aec] if entity @e[type=marker,tag=dialogue_tp] at @e[type=marker,tag=dialogue_tp] run summon area_effect_cloud ~ ~ ~ {Duration:-1,Age:-2147483648,WaitTime:0,Tags:["dialogue_lock_aec"],Passengers:[{id:"minecraft:minecart",Invulnerable:1b,Tags:["dialogue_lock_minecart"]}]}
execute if entity @e[type=marker,tag=dialogue_tp] at @e[type=marker,tag=dialogue_tp] run tp @e[type=area_effect_cloud,tag=dialogue_lock_aec] ~ ~ ~ ~ ~

execute if score angle dialogue matches 20 if score cutscene dialogue matches 0 if score firstperson dialogue matches 0 as @p at @s facing entity @e[tag=npcfocus,limit=1] eyes run tp @s ~ ~ ~ ~ 20
execute if score angle dialogue matches 0 if score cutscene dialogue matches 0 if score firstperson dialogue matches 0 as @p at @s facing entity @e[tag=npcfocus,limit=1] eyes run tp @s ~ ~ ~ ~ 0
execute if score cutscene dialogue matches 0 if score firstperson dialogue matches 0 if entity @e[type=marker,tag=thaddeuslock] as @p at @s facing entity @e[tag=thaddeuslock,limit=1] eyes run tp @s ~ ~ ~ ~ 0

execute if score firstperson dialogue matches 1 unless entity @e[tag=npcfocus] at @e[type=marker,tag=dialogue_tp] positioned ~ ~0.1 ~ align y run tp @s ~ ~ ~ ~ 0
execute if score firstperson dialogue matches 1 if entity @e[tag=npcfocus] at @e[type=marker,tag=dialogue_tp] positioned ~ ~0.1 ~ align y facing entity @e[tag=npcfocus] eyes run tp @s ~ ~ ~ ~ 0

execute if score cutscene dialogue matches 0 run ride @p mount @e[type=minecart,tag=dialogue_lock_minecart,limit=1]