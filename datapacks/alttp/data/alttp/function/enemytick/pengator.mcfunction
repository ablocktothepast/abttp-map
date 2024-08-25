#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=zombie,tag=pengatorzo] if score @s enemylink = @e[type=armor_stand,tag=pengator,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKY
execute at @e[type=zombie,tag=link_b] rotated as @e[type=zombie,tag=link_b] run tp @s ~ ~ ~ ~ ~
execute if entity @s[tag=link_init] unless entity @e[type=zombie,tag=link_b] run function alttp:enemy_death

#LEAP WHEN NEAR
execute unless score @s enemydummy matches -2147483648..2147483647 run scoreboard players set @s enemydummy -100
execute if score @s enemydummy matches -100 if entity @p[distance=..5] run scoreboard players set @s enemydummy 20

execute if score @s enemydummy matches -99.. run scoreboard players remove @s enemydummy 1
execute if score @s enemydummy matches 19 as @e[type=zombie,tag=link_b] at @s facing entity @p feet rotated ~ 0 run tp @s ^ ^ ^ ~ ~
execute if score @s enemydummy matches 1.. as @e[type=zombie,tag=link_b] at @s if block ^ ^ ^0.3 #gothrough run tp @s ^ ^ ^0.3 ~ ~

#DAMAGE INDICATOR
execute if entity @e[type=zombie,tag=link_b,nbt={HurtTime:10s}] run particle block{block_state:"minecraft:redstone_block"} ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=zombie,tag=link_b] run tag @s add link_init
tag @e[type=zombie] remove link_b
tag @s remove link_a