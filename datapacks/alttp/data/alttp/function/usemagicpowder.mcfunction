execute positioned ^ ^ ^1.5 run tag @e[type=armor_stand,tag=!powdered,tag=buzzblob,limit=1,distance=..2] add cukeman
execute positioned ^ ^ ^1.5 run tag @e[type=armor_stand,tag=deadrock,distance=..2,tag=!powdered] add powdered

execute unless score @s spw_e_5 matches 1 run scoreboard players remove @s magic 1

execute store result score result rand run random value 1..2

execute if score result rand matches 1 run playsound alttp.magic_powder_a weather @p ~ ~ ~ 1 1
execute if score result rand matches 2 run playsound alttp.magic_powder_b weather @p ~ ~ ~ 1 1

particle minecraft:enchant ^ ^ ^1.5 0.5 0.5 0.5 0.1 100 force
particle minecraft:ash ^ ^ ^1.5 0.5 1.25 0.5 0.1 100 force