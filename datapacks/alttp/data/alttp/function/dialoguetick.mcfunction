execute if score dlfov options matches 70 run effect give @p slowness infinite 1 true
execute if score dlfov options matches 85 run effect give @p slowness infinite 3 true
execute if score dlfov options matches 110 run effect give @p slowness infinite 5 true

stopsound @a * entity.player.hurt

#Player alignment
execute as @p at @s run function alttp:dialogue_playeralign

#Align the parts in front of the player
execute as @p at @s run function alttp:dialogue_boxalign

#Inventory clearing and filling with empty items
item replace entity @p hotbar.0 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=0,minecraft:custom_name='{"text":" "}']
item replace entity @p hotbar.1 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=0,minecraft:custom_name='{"text":" "}']
item replace entity @p hotbar.2 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=0,minecraft:custom_name='{"text":" "}']
item replace entity @p hotbar.3 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=0,minecraft:custom_name='{"text":" "}']
item replace entity @p hotbar.4 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=0,minecraft:custom_name='{"text":" "}']
item replace entity @p hotbar.5 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=0,minecraft:custom_name='{"text":" "}']
item replace entity @p hotbar.6 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=0,minecraft:custom_name='{"text":" "}']
item replace entity @p hotbar.7 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=0,minecraft:custom_name='{"text":" "}']
item replace entity @p hotbar.8 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=0,minecraft:custom_name='{"text":" "}']

execute if score id dialogue matches 91 run item replace entity @p hotbar.2 with minecraft:barrier[minecraft:custom_name='{"text":"Empty item slot","color":"red","italic":false}']
execute if score id dialogue matches 91 run item replace entity @p hotbar.3 with minecraft:barrier[minecraft:custom_name='{"text":"Empty item slot","color":"red","italic":false}']
execute if score id dialogue matches 91 run item replace entity @p hotbar.4 with minecraft:barrier[minecraft:custom_name='{"text":"Empty item slot","color":"red","italic":false}']

execute if score id dialogue matches 251 run item replace entity @p hotbar.2 with minecraft:barrier[minecraft:custom_name='{"text":"Empty item slot","color":"red","italic":false}']
execute if score id dialogue matches 251 run item replace entity @p hotbar.3 with minecraft:barrier[minecraft:custom_name='{"text":"Empty item slot","color":"red","italic":false}']
execute if score id dialogue matches 251 run item replace entity @p hotbar.4 with minecraft:barrier[minecraft:custom_name='{"text":"Empty item slot","color":"red","italic":false}']

#Letterindex and updating
execute if score . intercool matches 0 run scoreboard players set letterIndex dialogue 0
execute if score . intercool matches 0 run scoreboard players set cutscenetick dialogue 0
execute if score . intercool matches 0 run scoreboard players set length dialogue 999
execute if score . intercool matches 0 run scoreboard players set choice dialogue 1
execute unless score letterIndex dialogue < length dialogue run scoreboard players set stillless dialogue 0
execute if score letterIndex dialogue < length dialogue run scoreboard players set stillless dialogue 1
execute if score dlspeed options matches 1 run scoreboard players add letterIndex dialogue 1
execute if score dlspeed options matches 2 run scoreboard players add letterIndex dialogue 2
execute if score dlspeed options matches 3 run scoreboard players add letterIndex dialogue 3
execute if score dlspeed options matches 4 run scoreboard players add letterIndex dialogue 4
execute unless score letterIndex dialogue < length dialogue if score stillless dialogue matches 1 run function alttp:dialogue_ids
execute if score letterIndex dialogue < length dialogue run function alttp:dialogue_ids
execute if score letterIndex dialogue >= length dialogue run data merge entity @e[type=item_display,tag=dialogue_na,limit=1] {transformation:{scale:[0.04f,0.04f,0f]}}
execute if score letterIndex dialogue < length dialogue run data merge entity @e[type=item_display,tag=dialogue_na,limit=1] {transformation:{scale:[0f,0f,0f]}}
execute if score choicedialogue dialogue matches 1 run data merge entity @e[type=item_display,tag=dialogue_na,limit=1] {transformation:{scale:[0f,0f,0f]}}
scoreboard players add na_float dialogue 1
execute if score na_float dialogue matches 20.. run scoreboard players set na_float dialogue 0

#NPC name displaying
function alttp:dialogue_npc with storage dialogue

##Cutscene dialogue
execute if score cutscene dialogue matches 1 if score letterIndex dialogue >= length dialogue run scoreboard players add cutscenetick dialogue 1
execute if score cutscene dialogue matches 1 if score cutscenetick dialogue matches 40.. run function alttp:dialogue_next

#Right-click for next dialogue
execute if score rc_cool dialogue matches 1.. run scoreboard players remove rc_cool dialogue 1

#Scroll detection
execute store result score slotselect dialogue run data get entity @p SelectedItemSlot
execute unless score oldslotselect dialogue = slotselect dialogue run function alttp:dialogue_slotmove

#Set interaction cooldown to prepare to go out of dialogue
scoreboard players set . intercool 10

effect give @p invisibility infinite 1 true

##Click detection
execute if data entity @e[type=interaction,tag=dialogue_in,limit=1] attack unless score rc_cool dialogue matches 1.. if score cutscene dialogue matches 0 if score letterIndex dialogue >= length dialogue if score id dialogue matches 178 run schedule function alttp:dialogue_next 10t
execute if data entity @e[type=interaction,tag=dialogue_in,limit=1] attack unless score rc_cool dialogue matches 1.. if score cutscene dialogue matches 0 if score letterIndex dialogue >= length dialogue if score id dialogue matches 178 run title @p times 5t 10t 5t
execute if data entity @e[type=interaction,tag=dialogue_in,limit=1] attack unless score rc_cool dialogue matches 1.. if score cutscene dialogue matches 0 if score letterIndex dialogue >= length dialogue if score id dialogue matches 178 run title @p title ["","\uE006"]

execute if data entity @e[type=interaction,tag=dialogue_in,limit=1] attack unless score rc_cool dialogue matches 1.. if score cutscene dialogue matches 0 if score letterIndex dialogue >= length dialogue unless score id dialogue matches 178 run function alttp:dialogue_next
execute if data entity @e[type=interaction,tag=dialogue_in,limit=1] attack unless score rc_cool dialogue matches 1.. if score cutscene dialogue matches 0 if score letterIndex dialogue < length dialogue run function alttp:dialogue_complete
execute if data entity @e[type=interaction,tag=dialogue_in,limit=1] attack run data remove entity @e[type=interaction,tag=dialogue_in,limit=1] attack

##Thing
execute as @e[type=marker,tag=dialogue_player] unless score cutscene dialogue matches 1 unless score firstperson dialogue matches 1 at @s unless entity @e[type=marker,tag=dialogue_fakeplayerpos,distance=..0.3] facing entity @e[type=marker,tag=dialogue_fakeplayerpos,limit=1] eyes run tp @s ^ ^ ^0.16 ~ ~
execute as @e[type=marker,tag=dialogue_player] unless score cutscene dialogue matches 1 unless score firstperson dialogue matches 1 at @s if entity @e[type=marker,tag=dialogue_fakeplayerpos,distance=0.01..0.3] run function alttp:ajsummon/dialogue_link_idle
execute as @e[type=marker,tag=dialogue_player] unless score cutscene dialogue matches 1 unless score firstperson dialogue matches 1 at @s if entity @e[type=marker,tag=dialogue_fakeplayerpos,distance=0.01..0.3] run tp @s @e[type=marker,tag=dialogue_fakeplayerpos,limit=1]
execute as @e[type=marker,tag=dialogue_player] unless score cutscene dialogue matches 1 unless score firstperson dialogue matches 1 at @s run tp @e[type=item_display,tag=aj.villager_link.root] ~ ~ ~ ~ 0

execute store result score tpair dummy run data get entity @e[type=area_effect_cloud,tag=dialogue_lock_aec,limit=1] Air
execute if score tpair dummy matches 0 run data merge entity @e[type=area_effect_cloud,tag=dialogue_lock_aec,limit=1] {Air:1}
execute unless score tpair dummy matches 0 run data merge entity @e[type=area_effect_cloud,tag=dialogue_lock_aec,limit=1] {Air:0}

##Controls
execute if score choicedialogue dialogue matches 1 run bossbar set minecraft:dialoguecontrols name [{"text":"\uF80D\uF80C"},{"keybind":"key.attack"},{"text":" to continue"},{"text":" | ","color":"gray"},{"text":"Scroll to select choices"}]
execute if score choicedialogue dialogue matches 0 run bossbar set minecraft:dialoguecontrols name [{"text":"\uF80E"},{"keybind":"key.attack"},{"text":" to continue"}]
execute if score choicedialogue dialogue matches 1 run bossbar set minecraft:dialoguebars name "\uE089"
execute if score choicedialogue dialogue matches 0 run bossbar set minecraft:dialoguebars name "\uE017"
execute if score active dialogue matches 0 run bossbar set dialoguebars name "\uE090"