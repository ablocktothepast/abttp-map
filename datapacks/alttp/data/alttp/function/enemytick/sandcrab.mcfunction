#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=silverfish,tag=sandcrabsf] if score @s enemylink = @e[type=armor_stand,tag=sandcrab,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKY
tp @e[type=silverfish,tag=link_b] @s
execute if entity @s[tag=link_init] unless entity @e[type=silverfish,tag=link_b] run function alttp:enemy_death

#MOVEMENT
#always facing same way, fast horizontally and slow vertically
scoreboard players add @s enemydummy 1

execute if score @s enemydummy matches 1 run playsound block.sand.step weather @p ~ ~ ~ 1 1.6
execute if score @s enemydummy matches 1 store result score result rand run random value 1..4
execute if score @s enemydummy matches 1 store result score @s enemydummy2 run scoreboard players get result rand

execute if block ~ ~ ~-0.2 #gothrough if score @s enemydummy2 matches 1 run tp @s ~ ~ ~-0.2
execute if block ~ ~ ~0.2 #gothrough if score @s enemydummy2 matches 2 run tp @s ~ ~ ~0.2
execute if block ~0.075 ~ ~ #gothrough if score @s enemydummy2 matches 3 run tp @s ~0.075 ~ ~
execute if block ~-0.075 ~ ~ #gothrough if score @s enemydummy2 matches 4 run tp @s ~-0.075 ~ ~

execute if score @s enemydummy matches 16.. unless block ~ ~-0.01 ~ #gothrough run scoreboard players set @s enemydummy 35

execute at @s if block ~ ~-0.3 ~ #gothrough run tp @s ~ ~-0.3 ~
execute at @s if block ~ ~-0.2 ~ #gothrough run tp @s ~ ~-0.2 ~
execute at @s if block ~ ~-0.1 ~ #gothrough run tp @s ~ ~-0.1 ~
execute at @s if block ~ ~-0.05 ~ #gothrough run tp @s ~ ~-0.05 ~
execute at @s if block ~ ~-0.04 ~ #gothrough run tp @s ~ ~-0.04 ~
execute at @s if block ~ ~-0.03 ~ #gothrough run tp @s ~ ~-0.03 ~
execute at @s if block ~ ~-0.02 ~ #gothrough run tp @s ~ ~-0.02 ~
execute at @s if block ~ ~-0.01 ~ #gothrough run tp @s ~ ~-0.01 ~

execute if score @s enemydummy matches 35.. run scoreboard players set @s enemydummy 0

#DAMAGE
execute unless score @s dummy matches 1.. run scoreboard players set @p[distance=..0.9] set_damage 6
execute unless score @s dummy matches 1.. if entity @p[distance=..0.9] run scoreboard players set @s dummy 25

execute if score @s dummy matches 1.. run scoreboard players remove @s dummy 1

#DAMAGE INDICATOR
execute if entity @e[type=silverfish,tag=link_b,nbt={HurtTime:10s}] run particle block{block_state:"minecraft:redstone_block"} ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=silverfish,tag=link_b] run tag @s add link_init
tag @e[type=silverfish] remove link_b
tag @s remove link_a