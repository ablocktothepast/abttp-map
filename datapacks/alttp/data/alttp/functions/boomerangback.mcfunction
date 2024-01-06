scoreboard players set @p spw_c_2 0
kill @e[type=armor_stand,tag=boomerangmodel]
kill @s

tp @e[type=item,tag=bo_item] ~ ~ ~
data modify entity @e[type=item,tag=bo_item,limit=1] Item set from entity @s ArmorItems[3]
tag @e remove bo_hit
tag @e remove bo_item
tag @e remove copied