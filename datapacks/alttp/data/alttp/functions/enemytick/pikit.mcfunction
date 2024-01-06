#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=silverfish,tag=pikitsf] if score @s enemylink = @e[type=armor_stand,tag=pikit,limit=1,sort=nearest] enemylink run tag @s add link_b

#MOVEMENT
execute if entity @p[distance=5..15] run tp @s ~ ~ ~ facing entity @p
execute at @s if entity @p[distance=5..15] run tp @s ~ ~ ~ ~ 0
execute at @s if entity @p[distance=5..15] if block ^ ^ ^0.1 #gothrough run tp @s ^ ^ ^0.1 ~ ~

execute if entity @p[distance=..5] run tp @s ~ ~ ~ facing entity @p
execute at @s if entity @p[distance=..5] run tp @s ~ ~ ~ ~180 0
execute at @s if entity @p[distance=..5] if block ^ ^ ^0.1 #gothrough run tp @s ^ ^ ^0.1 ~ ~

execute at @s if block ~ ~-0.2 ~ #gothrough run tp @s ~ ~-0.2 ~
execute at @s if block ~ ~-0.1 ~ #gothrough run tp @s ~ ~-0.1 ~
execute at @s if block ~ ~-0.05 ~ #gothrough run tp @s ~ ~-0.05 ~
execute at @s if block ~ ~-0.01 ~ #gothrough run tp @s ~ ~-0.01 ~

#LICK ITEMS
scoreboard players add @s enemydummy 1
execute if score @s enemydummy matches 80 if entity @p[distance=5..8] run function alttp:pikitlick
execute if score @s enemydummy matches 80.. run scoreboard players set @s enemydummy 0

#LINKY
tp @e[type=silverfish,tag=link_b] ~ ~ ~ ~ ~
execute if entity @s[tag=link_init] unless entity @e[type=silverfish,tag=link_b] run function alttp:pikitback

#DAMAGE INDICATOR
execute if entity @e[type=silverfish,tag=link_b,nbt={HurtTime:10s}] run particle block redstone_block ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=silverfish,tag=link_b] run tag @s add link_init
tag @e[type=silverfish] remove link_b
tag @s remove link_a