##Initiate
execute if score tick cutscene matches 1 run function alttp:cutscenepath/begin

##Main stuff
gamemode adventure @p
execute as @p at @s rotated as @e[type=area_effect_cloud,tag=cutscene_aec,limit=1] run tp @s ~ ~ ~ ~ ~
ride @p mount @e[type=minecart,tag=cutscene_mc,limit=1]
execute store result score tpair dummy run data get entity @e[type=area_effect_cloud,tag=cutscene_aec,limit=1] Air
execute if score tpair dummy matches 0 run data merge entity @e[type=area_effect_cloud,tag=cutscene_aec,limit=1] {Air:1}
execute unless score tpair dummy matches 0 run data merge entity @e[type=area_effect_cloud,tag=cutscene_aec,limit=1] {Air:0}
scoreboard players add tick cutscene 1

##Cutscene paths
execute if score path cutscene matches 1 as @e[type=area_effect_cloud,tag=cutscene_aec] at @s run function alttp:cutscenepath/1
execute if score path cutscene matches 2 as @e[type=villager,tag=cutscener] at @s run function alttp:cutscenepath/2
execute if score path cutscene matches 2 run scoreboard players add tick cutscene 1
execute if score path cutscene matches 2 as @e[type=villager,tag=cutscener] at @s run function alttp:cutscenepath/2