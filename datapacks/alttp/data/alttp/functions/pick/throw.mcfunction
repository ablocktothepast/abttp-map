#Summon the correct throw entity
execute if score @s holding_id matches 1 run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["thrown","pot"],ArmorItems:[{},{},{},{id:"minecraft:prismarine_shard",Count:1b,tag:{CustomModelData:1}}]}
execute if score @s holding_id matches 3 run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["thrown","stone"],ArmorItems:[{},{},{},{id:"minecraft:prismarine_shard",Count:1b,tag:{CustomModelData:1}}]}
execute if score @s holding_id matches 4 run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["thrown","skull"],ArmorItems:[{},{},{},{id:"minecraft:prismarine_shard",Count:1b,tag:{CustomModelData:2}}]}
execute if score @s holding_id matches 5 run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["thrown","hrock"],ArmorItems:[{},{},{},{id:"minecraft:prismarine_shard",Count:1b,tag:{CustomModelData:1}}]}
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