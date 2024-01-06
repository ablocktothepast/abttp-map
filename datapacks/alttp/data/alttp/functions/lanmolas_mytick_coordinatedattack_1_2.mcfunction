execute store result score mmm dummy run data get entity @s Rotation[0]
execute store result score mmma dummy run data get entity @e[type=armor_stand,tag=link_a,limit=1] Rotation[0]

execute if score @s enemydummy2 matches ..155 run tp @s ^ ^ ^0.325 ~ ~

execute at @s if score @s enemydummy2 matches ..90 run tp @s ~ ~ ~ ~2.9 ~

execute at @s if score @s enemydummy2 matches ..65 run tp @s ~ ~0.3 ~
execute at @s if score @s enemydummy2 matches 66..80 run tp @s ~ ~0.25 ~
execute at @s if score @s enemydummy2 matches 81..90 run tp @s ~ ~0.2 ~
execute at @s if score @s enemydummy2 matches 91..97 run tp @s ~ ~0.15 ~
execute at @s if score @s enemydummy2 matches 98..100 run tp @s ~ ~-0.1 ~
execute at @s if score @s enemydummy2 matches 101..110 run tp @s ~ ~-0.25 ~
execute at @s if score @s enemydummy2 matches 111..120 run tp @s ~ ~-0.4 ~
execute at @s if score @s enemydummy2 matches 121..130 run tp @s ~ ~-0.55 ~
execute at @s if score @s enemydummy2 matches 131..140 run tp @s ~ ~-0.65 ~
execute at @s if score @s enemydummy2 matches 141..150 run tp @s ~ ~-0.7 ~