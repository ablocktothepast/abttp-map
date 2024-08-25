#Summon the correct throw entity
execute if score @s holding_id matches 1 run summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":1},count:1,id:"minecraft:prismarine_shard"}],Invisible:1b,Marker:1b,Tags:["thrown","pot"]}
execute if score @s holding_id matches 3 run summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":1},count:1,id:"minecraft:prismarine_shard"}],Invisible:1b,Marker:1b,Tags:["thrown","stone"]}
execute if score @s holding_id matches 4 run summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":2},count:1,id:"minecraft:prismarine_shard"}],Invisible:1b,Marker:1b,Tags:["thrown","skull"]}
execute if score @s holding_id matches 5 run summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":1},count:1,id:"minecraft:prismarine_shard"}],Invisible:1b,Marker:1b,Tags:["thrown","hrock"]}
execute if score @s holding_id matches 2 run tag @e[type=chicken,tag=heldchick] add thrown

#Align it
tp @e[type=armor_stand,tag=thrown,tag=!init] ~ ~ ~ ~ ~-10
tag @e[type=armor_stand,tag=thrown,tag=!init] add init

#Align it (chicken)
tp @e[type=chicken,tag=thrown,tag=!init] ~ ~1.6 ~ ~ ~-10
tag @e[type=chicken,tag=thrown,tag=!init] add init

#Reset everything
scoreboard players set @s holding_bool 0
scoreboard players set @s holding_cool 20
clear @s prismarine_shard

#RESET PEGASUS COUNTER
scoreboard players set @p pegasussneak 0