scoreboard players add dialoguetransitiontick dummy 1

execute if score dialoguetransitiontick dummy matches 1 at @e[type=marker,tag=dialogue_tp] align y run summon marker ~ ~-0.1 ~ {Tags:["dialoguetransitiongoal"]}

execute if score dialoguetransitiontick dummy matches 1.. as @e[type=area_effect_cloud,tag=dialoguetransition] at @s facing entity @e[type=marker,tag=dialoguetransitiongoal] feet run tp @s ^ ^ ^0.05
execute as @e[type=area_effect_cloud,tag=dialoguetransition] at @s if entity @e[type=marker,tag=dialoguetransitiongoal,distance=..0.06] run function alttp:dialogue_post_start

execute if score dialoguetransitiontick dummy matches 1.. as @e[type=area_effect_cloud,tag=dialoguetransition] at @s facing entity @e[type=marker,tag=dialoguetransitiongoal] feet run tp @s ^ ^ ^0.05
execute as @e[type=area_effect_cloud,tag=dialoguetransition] at @s if entity @e[type=marker,tag=dialoguetransitiongoal,distance=..0.06] run function alttp:dialogue_post_start

execute if score dialoguetransitiontick dummy matches 1.. as @e[type=area_effect_cloud,tag=dialoguetransition] at @s facing entity @e[type=marker,tag=dialoguetransitiongoal] feet run tp @s ^ ^ ^0.05
execute as @e[type=area_effect_cloud,tag=dialoguetransition] at @s if entity @e[type=marker,tag=dialoguetransitiongoal,distance=..0.06] run function alttp:dialogue_post_start

execute if score dialoguetransitiontick dummy matches ..1 as @e[type=area_effect_cloud,tag=dialoguetransition] at @s facing entity @e[type=marker,tag=dialoguetransitiongoal] feet run tp @s ^ ^ ^0.05
execute as @e[type=area_effect_cloud,tag=dialoguetransition] at @s if entity @e[type=marker,tag=dialoguetransitiongoal,distance=..0.06] run function alttp:dialogue_post_start

execute if score dialoguetransitiontick dummy matches ..3 as @e[type=area_effect_cloud,tag=dialoguetransition] at @s facing entity @e[type=marker,tag=dialoguetransitiongoal] feet run tp @s ^ ^ ^0.05
execute as @e[type=area_effect_cloud,tag=dialoguetransition] at @s if entity @e[type=marker,tag=dialoguetransitiongoal,distance=..0.06] run function alttp:dialogue_post_start

execute if score dialoguetransitiontick dummy matches ..5 as @e[type=area_effect_cloud,tag=dialoguetransition] at @s facing entity @e[type=marker,tag=dialoguetransitiongoal] feet run tp @s ^ ^ ^0.05
execute as @e[type=area_effect_cloud,tag=dialoguetransition] at @s if entity @e[type=marker,tag=dialoguetransitiongoal,distance=..0.06] run function alttp:dialogue_post_start

execute if score dialoguetransitiontick dummy matches 3..10 as @e[type=area_effect_cloud,tag=dialoguetransition] at @s facing entity @e[type=marker,tag=dialoguetransitiongoal] feet run tp @s ^ ^ ^0.05
execute as @e[type=area_effect_cloud,tag=dialoguetransition] at @s if entity @e[type=marker,tag=dialoguetransitiongoal,distance=..0.06] run function alttp:dialogue_post_start

execute if score dialoguetransitiontick dummy matches 5..15 as @e[type=area_effect_cloud,tag=dialoguetransition] at @s facing entity @e[type=marker,tag=dialoguetransitiongoal] feet run tp @s ^ ^ ^0.05
execute as @e[type=area_effect_cloud,tag=dialoguetransition] at @s if entity @e[type=marker,tag=dialoguetransitiongoal,distance=..0.06] run function alttp:dialogue_post_start

execute if score dialoguetransitiontick dummy matches 1 at @e[type=marker,tag=dialogueplayerpos,limit=1] run summon marker ~ ~ ~ {Tags:["dialogue_player"]}
execute if score dialoguetransitiontick dummy matches 1 at @e[type=marker,tag=dialogueplayerpos,limit=1] run tp @e[type=marker,tag=dialogue_player] ~ ~ ~ ~ ~
execute if score dialoguetransitiontick dummy matches 1 at @e[type=marker,tag=dialogueplayerpos,limit=1] rotated ~ 0 run function animated_java:villager_link/summon
execute if score dialoguetransitiontick dummy matches 1 as @e[type=item_display,tag=aj.villager_link.root] run function animated_java:villager_link/animations/walking/play

execute if score dialoguetransitiontick dummy matches 2.. as @e[type=marker,tag=dialogue_player] at @s unless entity @e[type=marker,tag=dialogue_fakeplayerpos,distance=..0.3] facing entity @e[type=marker,tag=dialogue_fakeplayerpos,limit=1] eyes run tp @s ^ ^ ^0.16 ~ ~
execute if score dialoguetransitiontick dummy matches 2.. as @e[type=marker,tag=dialogue_player] at @s if entity @e[type=marker,tag=dialogue_fakeplayerpos,distance=..0.3] run function alttp:ajsummon/dialogue_link_idle
execute if score dialoguetransitiontick dummy matches 2.. as @e[type=marker,tag=dialogue_player] at @s if entity @e[type=marker,tag=dialogue_fakeplayerpos,distance=..0.3] run tp @s @e[type=marker,tag=dialogue_fakeplayerpos,limit=1]
execute if score dialoguetransitiontick dummy matches 2.. as @e[type=marker,tag=dialogue_player] at @s run tp @e[type=item_display,tag=aj.villager_link.root] ~ ~ ~ ~ 0

execute if score angle dialogue matches 0 if score dialoguetransitiontick dummy matches 1.. as @e[type=area_effect_cloud,tag=dialoguetransition] at @s anchored eyes facing entity @e[tag=npcfocus,limit=1] eyes rotated ~ 0 positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~

execute if score angle dialogue matches 0 if score dialoguetransitiontick dummy matches 1.. as @e[type=area_effect_cloud,tag=dialoguetransition] at @s anchored eyes facing entity @e[tag=npcfocus,limit=1] eyes rotated ~ 0 positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~

execute if score angle dialogue matches 0 if score dialoguetransitiontick dummy matches 1.. as @e[type=area_effect_cloud,tag=dialoguetransition] at @s anchored eyes facing entity @e[tag=npcfocus,limit=1] eyes rotated ~ 0 positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~

execute if score angle dialogue matches 0 if score dialoguetransitiontick dummy matches 1.. as @e[type=area_effect_cloud,tag=dialoguetransition] at @s if entity @e[type=marker,tag=dialoguetransitiongoal,distance=0.5..] anchored eyes facing entity @e[tag=npcfocus,limit=1] eyes rotated ~ 0 positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~

execute if score angle dialogue matches 0 if score dialoguetransitiontick dummy matches 1.. as @e[type=area_effect_cloud,tag=dialoguetransition] at @s if entity @e[type=marker,tag=dialoguetransitiongoal,distance=1..] anchored eyes facing entity @e[tag=npcfocus,limit=1] eyes rotated ~ 0 positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~


execute if score angle dialogue matches 20 if score dialoguetransitiontick dummy matches 1.. as @e[type=area_effect_cloud,tag=dialoguetransition] at @s anchored eyes facing entity @e[tag=npcfocus,limit=1] eyes rotated ~ 20 positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~

execute if score angle dialogue matches 20 if score dialoguetransitiontick dummy matches 1.. as @e[type=area_effect_cloud,tag=dialoguetransition] at @s anchored eyes facing entity @e[tag=npcfocus,limit=1] eyes rotated ~ 20 positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~

execute if score angle dialogue matches 20 if score dialoguetransitiontick dummy matches 1.. as @e[type=area_effect_cloud,tag=dialoguetransition] at @s anchored eyes facing entity @e[tag=npcfocus,limit=1] eyes rotated ~ 20 positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~

execute if score angle dialogue matches 20 if score dialoguetransitiontick dummy matches 1.. as @e[type=area_effect_cloud,tag=dialoguetransition] at @s if entity @e[type=marker,tag=dialoguetransitiongoal,distance=0.5..] anchored eyes facing entity @e[tag=npcfocus,limit=1] eyes rotated ~ 20 positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~

execute if score angle dialogue matches 20 if score dialoguetransitiontick dummy matches 1.. as @e[type=area_effect_cloud,tag=dialoguetransition] at @s if entity @e[type=marker,tag=dialoguetransitiongoal,distance=1..] anchored eyes facing entity @e[tag=npcfocus,limit=1] eyes rotated ~ 20 positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~


execute store result score tpair dummy run data get entity @e[type=area_effect_cloud,tag=dialoguetransition,limit=1] Air
execute if score tpair dummy matches 0 run data merge entity @e[type=area_effect_cloud,tag=dialoguetransition,limit=1] {Air:1}
execute unless score tpair dummy matches 0 run data merge entity @e[type=area_effect_cloud,tag=dialoguetransition,limit=1] {Air:0}
execute if score dialoguetransitiontick dummy matches 0.. as @p at @s rotated as @e[type=area_effect_cloud,tag=dialoguetransition] run tp @s ~ ~ ~ ~ ~
execute if score dialoguetransitiontick dummy matches 0.. run ride @p mount @e[type=minecart,tag=dialogue_minecart,limit=1]

team join no_collide @p
team join no_collide @e[type=area_effect_cloud,tag=dialoguetransition]

#Inventory clearing and filling with empty items
item replace entity @p hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":" "}'},CustomModelData:0} 1
item replace entity @p hotbar.1 with carrot_on_a_stick{display:{Name:'{"text":" "}'},CustomModelData:0} 1
item replace entity @p hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":" "}'},CustomModelData:0} 1
item replace entity @p hotbar.3 with carrot_on_a_stick{display:{Name:'{"text":" "}'},CustomModelData:0} 1
item replace entity @p hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":" "}'},CustomModelData:0} 1
item replace entity @p hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":" "}'},CustomModelData:0} 1
item replace entity @p hotbar.6 with carrot_on_a_stick{display:{Name:'{"text":" "}'},CustomModelData:0} 1
item replace entity @p hotbar.7 with carrot_on_a_stick{display:{Name:'{"text":" "}'},CustomModelData:0} 1
item replace entity @p hotbar.8 with carrot_on_a_stick{display:{Name:'{"text":" "}'},CustomModelData:0} 1