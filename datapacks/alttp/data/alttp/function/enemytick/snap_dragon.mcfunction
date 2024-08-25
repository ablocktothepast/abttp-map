#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=silverfish,tag=snap_dragonsf] if score @s enemylink = @e[type=armor_stand,tag=snap_dragon,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKY
tp @e[type=silverfish,tag=link_b] ~ ~ ~ ~ ~
execute if entity @s[tag=link_init] unless entity @e[type=silverfish,tag=link_b] run function alttp:enemy_death

#MOVEMENT
scoreboard players add @s enemydummy 1
execute at @s if score @s enemydummy matches 1 run tp @s ~ ~ ~ facing entity @p
execute at @s if score @s enemydummy matches 2 store result score @s enemydummy4 run data get entity @s Rotation[0]
execute at @s if score @s enemydummy matches 2 if score @s enemydummy4 matches 1..90 run tp @s ~ ~ ~ 45 0
execute at @s if score @s enemydummy matches 2 if score @s enemydummy4 matches 91..180 run tp @s ~ ~ ~ 135 0
execute at @s if score @s enemydummy matches 2 if score @s enemydummy4 matches -179..-90 run tp @s ~ ~ ~ -135 0
execute at @s if score @s enemydummy matches 2 if score @s enemydummy4 matches -89..0 run tp @s ~ ~ ~ -45 0

execute at @s if score @s enemydummy matches 2.. if block ^ ^ ^0.16 #gothrough run tp @s ^ ^ ^0.16

execute at @s if score @s enemydummy matches 2 if block ^ ^0.15 ^ #gothrough run tp @s ^ ^0.15 ^
execute at @s if score @s enemydummy matches 3 if block ^ ^0.14 ^ #gothrough run tp @s ^ ^0.14 ^
execute at @s if score @s enemydummy matches 4 if block ^ ^0.13 ^ #gothrough run tp @s ^ ^0.13 ^
execute at @s if score @s enemydummy matches 5 if block ^ ^0.1 ^ #gothrough run tp @s ^ ^0.1 ^
execute at @s if score @s enemydummy matches 6 if block ^ ^0.1 ^ #gothrough run tp @s ^ ^0.1 ^
execute at @s if score @s enemydummy matches 7 if block ^ ^0.09 ^ #gothrough run tp @s ^ ^0.09 ^

execute at @s if score @s enemydummy matches 8 if block ^ ^-0.09 ^ #gothrough run tp @s ^ ^-0.09 ^
execute at @s if score @s enemydummy matches 9 if block ^ ^-0.1 ^ #gothrough run tp @s ^ ^-0.1 ^
execute at @s if score @s enemydummy matches 10 if block ^ ^-0.1 ^ #gothrough run tp @s ^ ^-0.1 ^
execute at @s if score @s enemydummy matches 11 if block ^ ^-0.13 ^ #gothrough run tp @s ^ ^-0.13 ^
execute at @s if score @s enemydummy matches 12 if block ^ ^-0.14 ^ #gothrough run tp @s ^ ^-0.14 ^
execute at @s if score @s enemydummy matches 13 if block ^ ^-0.15 ^ #gothrough run tp @s ^ ^-0.15 ^

execute at @s if score @s enemydummy matches 14.. if block ~ ~-0.5 ~ #gothrough run tp @s ~ ~-0.5 ~
execute at @s if score @s enemydummy matches 14.. if block ~ ~-0.3 ~ #gothrough run tp @s ~ ~-0.3 ~
execute at @s if score @s enemydummy matches 14.. if block ~ ~-0.1 ~ #gothrough run tp @s ~ ~-0.1 ~
execute at @s if score @s enemydummy matches 14.. if block ~ ~-0.1 ~ #gothrough run tp @s ~ ~-0.1 ~
execute at @s if score @s enemydummy matches 14.. if block ~ ~-0.01 ~ #gothrough run tp @s ~ ~-0.01 ~
execute at @s if score @s enemydummy matches 14.. if block ~ ~-0.01 ~ #gothrough run tp @s ~ ~-0.01 ~
execute at @s if score @s enemydummy matches 14.. if block ~ ~-0.01 ~ #gothrough run tp @s ~ ~-0.01 ~
execute at @s if score @s enemydummy matches 14.. if block ~ ~-0.01 ~ #gothrough run tp @s ~ ~-0.01 ~
execute at @s if score @s enemydummy matches 14.. if block ~ ~-0.01 ~ #gothrough run tp @s ~ ~-0.01 ~

execute at @s if score @s enemydummy matches 16.. run scoreboard players set @s enemydummy 0

#ME WHEN DAMAGE
execute at @s unless score @s enemydummy2 matches 1.. run scoreboard players set @p[distance=..0.75] set_damage 4
execute unless score @s enemydummy2 matches 1.. at @s if entity @p[distance=..0.75] run scoreboard players set @s enemydummy2 30
execute if score @s enemydummy2 matches 1.. run scoreboard players remove @s enemydummy2 1

#DAMAGE INDICATOR
execute if entity @e[type=silverfish,tag=link_b,nbt={HurtTime:10s}] run particle block{block_state:"minecraft:redstone_block"} ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=silverfish,tag=link_b] run tag @s add link_init
tag @e[type=silverfish] remove link_b
tag @s remove link_a