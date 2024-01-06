#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=silverfish,tag=zorosf] if score @s enemylink = @e[type=armor_stand,tag=zoro,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKY
tp @e[type=silverfish,tag=link_b] @s
execute if entity @s[tag=link_init] unless entity @e[type=silverfish,tag=link_b] run function alttp:enemy_death

#RANDOM BEGINNING ROTATION
execute unless score @s enemydummy matches 1 store result score result rand run random value 1..8
execute unless score @s enemydummy matches 1 if score result rand matches 1 run tp @s ~ ~ ~ 0 0
execute unless score @s enemydummy matches 1 if score result rand matches 2 run tp @s ~ ~ ~ 45 0
execute unless score @s enemydummy matches 1 if score result rand matches 3 run tp @s ~ ~ ~ 90 0
execute unless score @s enemydummy matches 1 if score result rand matches 4 run tp @s ~ ~ ~ 135 0
execute unless score @s enemydummy matches 1 if score result rand matches 5 run tp @s ~ ~ ~ 180 0
execute unless score @s enemydummy matches 1 if score result rand matches 6 run tp @s ~ ~ ~ -135 0
execute unless score @s enemydummy matches 1 if score result rand matches 7 run tp @s ~ ~ ~ -90 0
execute unless score @s enemydummy matches 1 if score result rand matches 8 run tp @s ~ ~ ~ -45 0
execute unless score @s enemydummy matches 1 run scoreboard players set @s enemydummy 1

#RANDOM MOVEMENT AAAA
execute store result score result rand run random value 1..2

execute at @s if score result rand matches 1 run tp @s ~ ~ ~ ~10 ~
execute at @s if score result rand matches 2 run tp @s ~ ~ ~ ~-10 ~

execute at @s if block ^ ^ ^0.2 #gothrough run tp @s ^ ^ ^0.2 ~ ~

execute at @s if block ~ ~-0.5 ~ #gothrough run tp @s ~ ~-0.5 ~
execute at @s if block ~ ~-0.2 ~ #gothrough run tp @s ~ ~-0.2 ~
execute at @s if block ~ ~-0.1 ~ #gothrough run tp @s ~ ~-0.1 ~
execute at @s if block ~ ~-0.05 ~ #gothrough run tp @s ~ ~-0.05 ~
execute at @s if block ~ ~-0.01 ~ #gothrough run tp @s ~ ~-0.01 ~

#PARTICLY
particle block coal_block ~ ~ ~ 0.05 0.1 0.05 0.05 2 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=silverfish,tag=link_b] run tag @s add link_init
tag @e[type=silverfish] remove link_b
tag @s remove link_a