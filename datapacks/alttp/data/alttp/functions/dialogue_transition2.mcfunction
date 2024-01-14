scoreboard players add dialoguetransitiontick2 dummy 1

execute if score dialoguetransitiontick2 dummy matches 1.. as @e[type=area_effect_cloud,tag=dialoguetransition] at @s facing entity @e[type=marker,tag=dialogueplayerpos] feet run tp @s ^ ^ ^0.05
execute as @e[type=area_effect_cloud,tag=dialoguetransition] at @s if entity @e[type=marker,tag=dialogueplayerpos,distance=..0.05] run function alttp:dialogue_transition2_post

execute if score dialoguetransitiontick2 dummy matches 1.. as @e[type=area_effect_cloud,tag=dialoguetransition] at @s facing entity @e[type=marker,tag=dialogueplayerpos] feet run tp @s ^ ^ ^0.05
execute as @e[type=area_effect_cloud,tag=dialoguetransition] at @s if entity @e[type=marker,tag=dialogueplayerpos,distance=..0.05] run function alttp:dialogue_transition2_post

execute if score dialoguetransitiontick2 dummy matches 1..1 as @e[type=area_effect_cloud,tag=dialoguetransition] at @s facing entity @e[type=marker,tag=dialogueplayerpos] feet run tp @s ^ ^ ^0.05
execute as @e[type=area_effect_cloud,tag=dialoguetransition] at @s if entity @e[type=marker,tag=dialogueplayerpos,distance=..0.05] run function alttp:dialogue_transition2_post

execute if score dialoguetransitiontick2 dummy matches 1..3 as @e[type=area_effect_cloud,tag=dialoguetransition] at @s facing entity @e[type=marker,tag=dialogueplayerpos] feet run tp @s ^ ^ ^0.05
execute as @e[type=area_effect_cloud,tag=dialoguetransition] at @s if entity @e[type=marker,tag=dialogueplayerpos,distance=..0.05] run function alttp:dialogue_transition2_post

execute if score dialoguetransitiontick2 dummy matches 1..5 as @e[type=area_effect_cloud,tag=dialoguetransition] at @s facing entity @e[type=marker,tag=dialogueplayerpos] feet run tp @s ^ ^ ^0.05
execute as @e[type=area_effect_cloud,tag=dialoguetransition] at @s if entity @e[type=marker,tag=dialogueplayerpos,distance=..0.05] run function alttp:dialogue_transition2_post

execute if score dialoguetransitiontick2 dummy matches 1..8 as @e[type=area_effect_cloud,tag=dialoguetransition] at @s facing entity @e[type=marker,tag=dialogueplayerpos] feet run tp @s ^ ^ ^0.05
execute as @e[type=area_effect_cloud,tag=dialoguetransition] at @s if entity @e[type=marker,tag=dialogueplayerpos,distance=..0.05] run function alttp:dialogue_transition2_post

execute if score dialoguetransitiontick2 dummy matches 1.. as @e[type=area_effect_cloud,tag=dialoguetransition] at @s anchored eyes rotated as @e[type=marker,tag=dialogueplayerpos] positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~

execute if score dialoguetransitiontick2 dummy matches 1.. as @e[type=area_effect_cloud,tag=dialoguetransition] at @s if entity @e[type=marker,tag=dialogueplayerpos,distance=0.5..] anchored eyes rotated as @e[type=marker,tag=dialogueplayerpos] positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~

execute if score dialoguetransitiontick2 dummy matches 1.. as @e[type=area_effect_cloud,tag=dialoguetransition] at @s if entity @e[type=marker,tag=dialogueplayerpos,distance=1..] anchored eyes rotated as @e[type=marker,tag=dialogueplayerpos] positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~

execute store result score tpair dummy run data get entity @e[type=area_effect_cloud,tag=dialoguetransition,limit=1] Air
execute if score tpair dummy matches 0 run data merge entity @e[type=area_effect_cloud,tag=dialoguetransition,limit=1] {Air:1}
execute unless score tpair dummy matches 0 run data merge entity @e[type=area_effect_cloud,tag=dialoguetransition,limit=1] {Air:0}
execute if score dialoguetransitiontick2 dummy matches -5.. as @p at @s rotated as @e[type=area_effect_cloud,tag=dialoguetransition] run tp @s ~ ~ ~ ~ ~
execute if score dialoguetransitiontick2 dummy matches -5.. run ride @p mount @e[type=minecart,tag=dialogue_minecart,limit=1]

execute if score dialoguetransitiontick2 dummy matches 0.. run kill @e[type=minecart,tag=dialogue_lock_minecart]
execute if score dialoguetransitiontick2 dummy matches 0.. run kill @e[type=area_effect_cloud,tag=dialogue_lock_aec]

team join no_collide @p
team join no_collide @e[type=area_effect_cloud,tag=dialoguetransition]