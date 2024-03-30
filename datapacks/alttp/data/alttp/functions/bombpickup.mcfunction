execute unless score @p spw_1 matches 19 unless score @p spw_2 matches 19 unless score @p spw_3 matches 19 run return 0

execute if entity @e[type=armor_stand,tag=bomb,limit=1,sort=nearest,distance=..1.5] run execute store result score @p bombtick run scoreboard players get @e[type=armor_stand,tag=bomb,limit=1,sort=nearest] bombtick
execute if entity @e[type=armor_stand,tag=bomb,limit=1,sort=nearest,distance=..1.5] run tag @p add bomb
execute if entity @e[type=armor_stand,tag=bomb,limit=1,sort=nearest,distance=..1.5] run kill @e[type=armor_stand,tag=bomb,limit=1,sort=nearest,distance=0.1..]