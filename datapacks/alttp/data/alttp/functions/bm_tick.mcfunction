#PLAYER LOCK
execute as @p at @s rotated as @e[type=area_effect_cloud,tag=bm,tag=aec,limit=1] run tp @s ~ ~ ~ ~ 0
ride @p mount @e[type=minecart,tag=bm,tag=minecart,limit=1]
execute store result score tpair dummy run data get entity @e[type=area_effect_cloud,tag=aec,limit=1] Air
execute if score tpair dummy matches 0 run data merge entity @e[type=area_effect_cloud,tag=aec,limit=1] {Air:1}
execute unless score tpair dummy matches 0 run data merge entity @e[type=area_effect_cloud,tag=aec,limit=1] {Air:0}

#BOX ALIGNMENT
function alttp:bm_boxalign

##Inventory
item replace entity @p hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":" "}'},CustomModelData:0}
item replace entity @p hotbar.1 with carrot_on_a_stick{display:{Name:'{"text":" "}'},CustomModelData:0}
item replace entity @p hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":" "}'},CustomModelData:0}
item replace entity @p hotbar.3 with carrot_on_a_stick{display:{Name:'{"text":" "}'},CustomModelData:0}
item replace entity @p hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":" "}'},CustomModelData:0}
item replace entity @p hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":" "}'},CustomModelData:0}
item replace entity @p hotbar.6 with carrot_on_a_stick{display:{Name:'{"text":" "}'},CustomModelData:0}
item replace entity @p hotbar.7 with carrot_on_a_stick{display:{Name:'{"text":" "}'},CustomModelData:0}
item replace entity @p hotbar.8 with carrot_on_a_stick{display:{Name:'{"text":" "}'},CustomModelData:0}

##WASD detection
execute if score .w wasd matches 1 unless score w_cool bm matches 1 if score menu bm matches 0 run function alttp:bm_up_0
execute if score .a wasd matches 1 unless score a_cool bm matches 1 if score menu bm matches 0 run function alttp:bm_left_0
execute if score .s wasd matches 1 unless score s_cool bm matches 1 if score menu bm matches 0 run function alttp:bm_down_0
execute if score .d wasd matches 1 unless score d_cool bm matches 1 if score menu bm matches 0 run function alttp:bm_right_0

execute if score .w wasd matches 0 if score w_cool bm matches 1 run scoreboard players set w_cool bm 0
execute if score .a wasd matches 0 if score a_cool bm matches 1 run scoreboard players set a_cool bm 0
execute if score .s wasd matches 0 if score s_cool bm matches 1 run scoreboard players set s_cool bm 0
execute if score .d wasd matches 0 if score d_cool bm matches 1 run scoreboard players set d_cool bm 0