#ENCHANTED HEALTH STEAL
execute if score @p boomerangtier matches 3 run scoreboard players set -1 dummy -1
execute if score @p boomerangtier matches 3 run scoreboard players operation @s enemydummy2 *= -1 dummy
execute if score @p boomerangtier matches 3 store result score @p set_damage run scoreboard players get @s enemydummy2

scoreboard players set @p spw_c_2 0
kill @e[type=armor_stand,tag=magicalboomerangmodel]
kill @s

tp @e[type=item,tag=bo_item] ~ ~ ~
data modify entity @e[type=item,tag=bo_item,limit=1] Item set from entity @s ArmorItems[3]
tag @e remove bo_hit
tag @e remove bo_item
tag @e remove copied