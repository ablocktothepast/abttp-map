# Rotation for more Lanmolas
execute at @s if score @e[type=armor_stand,tag=link_a,limit=1] enemydummy14 matches 2 if score @e[type=armor_stand,tag=link_a,limit=1] enemydummy16 matches 3 run tp @s ~ ~ ~ ~120 0
execute at @s if score @e[type=armor_stand,tag=link_a,limit=1] enemydummy14 matches 2 if score @e[type=armor_stand,tag=link_a,limit=1] enemydummy16 matches 2 run tp @s ~ ~ ~ ~180 0
execute at @s if score @e[type=armor_stand,tag=link_a,limit=1] enemydummy14 matches 3 run tp @s ~ ~ ~ ~-120 0

# Distance
execute at @s as @e[type=armor_stand,tag=link_a] run function alttp:lanmolas_rotator_alignsegment
execute at @s rotated ~-20 ~ as @e[type=armor_stand,tag=body1] run function alttp:lanmolas_rotator_alignsegment
execute at @s rotated ~-40 ~ as @e[type=armor_stand,tag=body2] run function alttp:lanmolas_rotator_alignsegment
execute at @s rotated ~-60 ~ as @e[type=armor_stand,tag=body3] run function alttp:lanmolas_rotator_alignsegment
execute at @s rotated ~-80 ~ as @e[type=armor_stand,tag=body4] run function alttp:lanmolas_rotator_alignsegment
execute at @s rotated ~-100 ~ as @e[type=armor_stand,tag=body5] run function alttp:lanmolas_rotator_alignsegment
execute at @s rotated ~-120 ~ as @e[type=armor_stand,tag=body6] run function alttp:lanmolas_rotator_alignsegment
execute at @s rotated ~-140 ~ as @e[type=armor_stand,tag=body7] run function alttp:lanmolas_rotator_alignsegment

# Height
execute as @e[type=armor_stand,tag=body1] at @s run tp @s ~ ~-3 ~
execute as @e[type=armor_stand,tag=body2] at @s run tp @s ~ ~-6 ~
execute as @e[type=armor_stand,tag=body3] at @s run tp @s ~ ~-9 ~
execute as @e[type=armor_stand,tag=body4] at @s run tp @s ~ ~-12 ~
execute as @e[type=armor_stand,tag=body5] at @s run tp @s ~ ~-15 ~
execute as @e[type=armor_stand,tag=body6] at @s run tp @s ~ ~-18 ~
execute as @e[type=armor_stand,tag=body7] at @s run tp @s ~ ~-21 ~

# Rotate back
execute at @s if score @e[type=armor_stand,tag=link_a,limit=1] enemydummy14 matches 2 if score @e[type=armor_stand,tag=link_a,limit=1] enemydummy16 matches 3 run tp @s ~ ~ ~ ~-120 0
execute at @s if score @e[type=armor_stand,tag=link_a,limit=1] enemydummy14 matches 2 if score @e[type=armor_stand,tag=link_a,limit=1] enemydummy16 matches 2 run tp @s ~ ~ ~ ~-180 0
execute at @s if score @e[type=armor_stand,tag=link_a,limit=1] enemydummy14 matches 3 run tp @s ~ ~ ~ ~120 0