#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=silverfish,tag=gyormsf] if score @s enemylink = @e[type=armor_stand,tag=gyorm,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKY
tp @e[type=silverfish,tag=link_b] @s
execute if entity @s[tag=link_init] unless entity @e[type=silverfish,tag=link_b] run function alttp:enemy_death

#MOVEMENT
execute unless score @s enemydummy matches -2147483648..2147483647 run scoreboard players set @s enemydummy 1

execute if entity @p[distance=..15] if score @s enemydummy matches 1 facing entity @p eyes rotated ~ 0 if block ^ ^ ^0.12 #gothrough run tp @s ^ ^ ^0.12 ~ 0

execute if score @s enemydummy matches 0 run data merge entity @e[type=silverfish,tag=link_b,limit=1] {Invulnerable:0b}
execute at @s if score @s enemydummy matches 0 if block ~ ~-0.1 ~ #gothrough run tp @s ~ ~-0.1 ~
execute at @s if score @s enemydummy matches 0 if block ~ ~-0.01 ~ #gothrough run tp @s ~ ~-0.01 ~
execute at @s facing entity @p eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~

#SHOOT
execute if score @s enemydummy matches 1 if entity @p[distance=..12] run scoreboard players add @s enemydummy2 1
execute if score @s enemydummy matches 1 if entity @p[distance=..12] if score @s enemydummy2 matches 80.. run scoreboard players set @s enemydummy2 0
execute if score @s enemydummy matches 1 if entity @p[distance=..12] if score @s enemydummy2 matches 60 run function alttp:gyormshoot

#DAMAGE INDICATOR
execute if entity @e[type=silverfish,tag=link_b,nbt={HurtTime:10s}] run particle block redstone_block ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=silverfish,tag=link_b] run tag @s add link_init
tag @e[type=silverfish] remove link_b
tag @s remove link_a