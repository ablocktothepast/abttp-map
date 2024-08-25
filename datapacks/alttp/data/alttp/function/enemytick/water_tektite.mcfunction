#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=silverfish,tag=water_tektitesf] if score @s enemylink = @e[type=armor_stand,tag=water_tektite,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKY
tp @e[type=silverfish,tag=link_b] @s
execute if entity @s[tag=link_init] unless entity @e[type=silverfish,tag=link_b] run function alttp:enemy_death

#MOVEMENT
scoreboard players add @s enemydummy 1
execute at @s if score @s enemydummy matches 1 run tp @s ~ ~ ~ facing entity @p
execute at @s if score @s enemydummy matches 2 store result score @s enemydummy4 run data get entity @s Rotation[0]
execute at @s if score @s enemydummy matches 2 if score @s enemydummy4 matches 1..90 run tp @s ~ ~ ~ 45 0
execute at @s if score @s enemydummy matches 2 if score @s enemydummy4 matches 91..180 run tp @s ~ ~ ~ 135 0
execute at @s if score @s enemydummy matches 2 if score @s enemydummy4 matches -179..-90 run tp @s ~ ~ ~ -135 0
execute at @s if score @s enemydummy matches 2 if score @s enemydummy4 matches -89..0 run tp @s ~ ~ ~ -45 0

execute at @s if score @s enemydummy matches 2 if block ^ ^ ^0.1 #gothrough if block ^ ^-1 ^0.1 water run tp @s ^ ^ ^0.1
execute at @s if score @s enemydummy matches 3 if block ^ ^ ^0.11 #gothrough if block ^ ^-1 ^0.1 water run tp @s ^ ^ ^0.11
execute at @s if score @s enemydummy matches 4 if block ^ ^ ^0.12 #gothrough if block ^ ^-1 ^0.1 water run tp @s ^ ^ ^0.12
execute at @s if score @s enemydummy matches 5 if block ^ ^ ^0.14 #gothrough if block ^ ^-1 ^0.1 water run tp @s ^ ^ ^0.14
execute at @s if score @s enemydummy matches 6 if block ^ ^ ^0.16 #gothrough if block ^ ^-1 ^0.1 water run tp @s ^ ^ ^0.16
execute at @s if score @s enemydummy matches 7 if block ^ ^ ^0.18 #gothrough if block ^ ^-1 ^0.1 water run tp @s ^ ^ ^0.18
execute at @s if score @s enemydummy matches 8 if block ^ ^ ^0.22 #gothrough if block ^ ^-1 ^0.1 water run tp @s ^ ^ ^0.22
execute at @s if score @s enemydummy matches 9 if block ^ ^ ^0.25 #gothrough if block ^ ^-1 ^0.1 water run tp @s ^ ^ ^0.25
execute at @s if score @s enemydummy matches 10 if block ^ ^ ^0.27 #gothrough if block ^ ^-1 ^0.1 water run tp @s ^ ^ ^0.27
execute at @s if score @s enemydummy matches 11 if block ^ ^ ^0.27 #gothrough if block ^ ^-1 ^0.1 water run tp @s ^ ^ ^0.27
execute at @s if score @s enemydummy matches 12 if block ^ ^ ^0.25 #gothrough if block ^ ^-1 ^0.1 water run tp @s ^ ^ ^0.25
execute at @s if score @s enemydummy matches 13 if block ^ ^ ^0.22 #gothrough if block ^ ^-1 ^0.1 water run tp @s ^ ^ ^0.22
execute at @s if score @s enemydummy matches 14 if block ^ ^ ^0.18 #gothrough if block ^ ^-1 ^0.1 water run tp @s ^ ^ ^0.18
execute at @s if score @s enemydummy matches 15 if block ^ ^ ^0.16 #gothrough if block ^ ^-1 ^0.1 water run tp @s ^ ^ ^0.16
execute at @s if score @s enemydummy matches 16 if block ^ ^ ^0.14 #gothrough if block ^ ^-1 ^0.1 water run tp @s ^ ^ ^0.14
execute at @s if score @s enemydummy matches 17 if block ^ ^ ^0.12 #gothrough if block ^ ^-1 ^0.1 water run tp @s ^ ^ ^0.12
execute at @s if score @s enemydummy matches 18 if block ^ ^ ^0.11 #gothrough if block ^ ^-1 ^0.1 water run tp @s ^ ^ ^0.11
execute at @s if score @s enemydummy matches 19 if block ^ ^ ^0.1 #gothrough if block ^ ^-1 ^0.05 water run tp @s ^ ^ ^0.1

execute at @s if block ~ ~ ~ water run tp @s ~ ~0.05 ~
execute at @s if block ~ ~ ~ water run tp @s ~ ~0.05 ~
execute at @s if block ~ ~ ~ water run tp @s ~ ~0.05 ~
execute at @s if block ~ ~ ~ water run tp @s ~ ~0.05 ~
execute at @s if block ~ ~ ~ water run tp @s ~ ~0.05 ~
execute at @s if block ~ ~ ~ water run tp @s ~ ~0.05 ~
execute at @s if block ~ ~ ~ water run tp @s ~ ~0.05 ~
execute at @s if block ~ ~ ~ water run tp @s ~ ~0.05 ~

execute at @s if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~
execute at @s if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~
execute at @s if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~
execute at @s if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~
execute at @s if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~
execute at @s if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~

execute at @s if score @s enemydummy matches 30.. run scoreboard players set @s enemydummy 0

#DAMAGE INDICATOR
execute if entity @e[type=silverfish,tag=link_b,nbt={HurtTime:10s}] run particle block{block_state:"minecraft:redstone_block"} ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=silverfish,tag=link_b] run tag @s add link_init
tag @e[type=silverfish] remove link_b
tag @s remove link_a