#Bottom bar
title @p times 0t 1s 0t
title @p title "\uE021"

#Sneak detection
execute unless data entity @p RootVehicle unless score sneak_cool bm matches 1 run function alttp:bm_sneak

#PLAYER LOCK
execute as @p at @s rotated as @e[type=area_effect_cloud,tag=bm,tag=aec,limit=1] run tp @s ~ ~ ~ ~ 0
ride @p mount @e[type=minecart,tag=bm,tag=minecart,limit=1]
execute store result score tpair dummy run data get entity @e[type=area_effect_cloud,tag=aec,limit=1] Air
execute if score tpair dummy matches 0 run data merge entity @e[type=area_effect_cloud,tag=aec,limit=1] {Air:1}
execute unless score tpair dummy matches 0 run data merge entity @e[type=area_effect_cloud,tag=aec,limit=1] {Air:0}

#BOX ALIGNMENT
function alttp:bm_boxalign

##Inventory
item replace entity @p hotbar.0 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=0,minecraft:custom_name='{"text":" "}']
item replace entity @p hotbar.1 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=0,minecraft:custom_name='{"text":" "}']
item replace entity @p hotbar.2 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=0,minecraft:custom_name='{"text":" "}']
item replace entity @p hotbar.3 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=0,minecraft:custom_name='{"text":" "}']
item replace entity @p hotbar.4 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=0,minecraft:custom_name='{"text":" "}']
item replace entity @p hotbar.5 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=0,minecraft:custom_name='{"text":" "}']
item replace entity @p hotbar.6 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=0,minecraft:custom_name='{"text":" "}']
item replace entity @p hotbar.7 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=0,minecraft:custom_name='{"text":" "}']
item replace entity @p hotbar.8 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=0,minecraft:custom_name='{"text":" "}']

##WASD detection
execute if score .w wasd matches 1 unless score w_cool bm matches 1 run function alttp:bm_up
execute if score .a wasd matches 1 unless score a_cool bm matches 1 run function alttp:bm_left
execute if score .s wasd matches 1 unless score s_cool bm matches 1 run function alttp:bm_down
execute if score .d wasd matches 1 unless score d_cool bm matches 1 run function alttp:bm_right

execute if score .w wasd matches 0 if score w_cool bm matches 1 run scoreboard players set w_cool bm 0
execute if score .a wasd matches 0 if score a_cool bm matches 1 run scoreboard players set a_cool bm 0
execute if score .s wasd matches 0 if score s_cool bm matches 1 run scoreboard players set s_cool bm 0
execute if score .d wasd matches 0 if score d_cool bm matches 1 run scoreboard players set d_cool bm 0

##Click detection
execute if data entity @e[type=minecraft:interaction,tag=bm,tag=interact,limit=1] attack run function alttp:bm_click
execute if data entity @e[type=minecraft:interaction,tag=bm,tag=interact,limit=1] interaction run function alttp:bm_rclick

execute if score @p spw_1_go matches 1.. run function alttp:bm_spw1go
execute if score @p spw_2_go matches 1.. run function alttp:bm_spw2go
execute if score @p spw_3_go matches 1.. run function alttp:bm_spw3go