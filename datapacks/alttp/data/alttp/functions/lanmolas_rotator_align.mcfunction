# Up and down
execute if score @e[type=armor_stand,tag=link_a,limit=1] enemydummy2 matches -10..20 run tp @s ~ ~0.5 ~ ~ 0
execute if score @e[type=armor_stand,tag=link_a,limit=1] enemydummy2 matches 21..30 run tp @s ~ ~0.44 ~ ~ 0
execute if score @e[type=armor_stand,tag=link_a,limit=1] enemydummy2 matches 31..40 run tp @s ~ ~0.35 ~ ~ 0
execute if score @e[type=armor_stand,tag=link_a,limit=1] enemydummy2 matches 41..50 run tp @s ~ ~0.25 ~ ~ 0
execute if score @e[type=armor_stand,tag=link_a,limit=1] enemydummy2 matches 51..65 run tp @s ~ ~0.1 ~ ~ 0

execute if score @e[type=armor_stand,tag=link_a,limit=1] enemydummy2 matches 66..80 run tp @s ~ ~-0.05 ~ ~ 0
execute if score @e[type=armor_stand,tag=link_a,limit=1] enemydummy2 matches 81..90 run tp @s ~ ~-0.1 ~ ~ 0

# Rotation
execute at @s if score @e[type=armor_stand,tag=link_a,limit=1] enemydummy2 matches -10..10 run tp @s ~ ~ ~ ~6 0
execute at @s if score @e[type=armor_stand,tag=link_a,limit=1] enemydummy2 matches 11..20 run tp @s ~ ~ ~ ~5 0
execute at @s if score @e[type=armor_stand,tag=link_a,limit=1] enemydummy2 matches 21..30 run tp @s ~ ~ ~ ~4.5 0
execute at @s if score @e[type=armor_stand,tag=link_a,limit=1] enemydummy2 matches 31..40 run tp @s ~ ~ ~ ~4 0
execute at @s if score @e[type=armor_stand,tag=link_a,limit=1] enemydummy2 matches 41..50 run tp @s ~ ~ ~ ~3.5 0
execute at @s if score @e[type=armor_stand,tag=link_a,limit=1] enemydummy2 matches 51..80 run tp @s ~ ~ ~ ~3 0
execute at @s if score @e[type=armor_stand,tag=link_a,limit=1] enemydummy2 matches 81..90 run tp @s ~ ~ ~ ~3.5 0