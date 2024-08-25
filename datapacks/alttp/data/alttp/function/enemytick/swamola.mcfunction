#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=silverfish,tag=swamolasf] if score @s enemylink = @e[type=armor_stand,tag=swamola,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKY
tp @e[type=silverfish,tag=link_b] @s
execute if entity @s[tag=link_init] unless entity @e[type=silverfish,tag=link_b] run function alttp:enemy_death

#MOVEMENT (have to add rotating for model when made)
scoreboard players add @s enemydummy 1
execute if score @s enemydummy matches 1 store result score result rand run random value 1..8
execute if score @s enemydummy matches 1 if score result rand matches 1 run tp @s ~ ~ ~ 0 -90
execute if score @s enemydummy matches 1 if score result rand matches 2 run tp @s ~ ~ ~ 90 -90
execute if score @s enemydummy matches 1 if score result rand matches 3 run tp @s ~ ~ ~ 180 -90
execute if score @s enemydummy matches 1 if score result rand matches 4 run tp @s ~ ~ ~ -90 -90
execute if score @s enemydummy matches 1 if score result rand matches 5 run tp @s ~ ~ ~ 45 -90
execute if score @s enemydummy matches 1 if score result rand matches 6 run tp @s ~ ~ ~ 135 -90
execute if score @s enemydummy matches 1 if score result rand matches 7 run tp @s ~ ~ ~ -135 -90
execute if score @s enemydummy matches 1 if score result rand matches 8 run tp @s ~ ~ ~ -45 -90
execute at @s if score @s enemydummy matches 2.. if block ^ ^ ^0.2 #gothrough run tp @s ^ ^ ^0.2 ~ ~2.5
execute at @s if score @s enemydummy matches 74.. if block ~ ~-0.5 ~ #gothrough run tp @s ~ ~-0.5 ~
execute at @s if score @s enemydummy matches 74.. if block ~ ~-0.4 ~ #gothrough run tp @s ~ ~-0.4 ~
execute at @s if score @s enemydummy matches 74.. if block ~ ~-0.3 ~ #gothrough run tp @s ~ ~-0.3 ~
execute at @s if score @s enemydummy matches 74.. if block ~ ~-0.2 ~ #gothrough run tp @s ~ ~-0.2 ~
execute at @s if score @s enemydummy matches 74.. if block ~ ~-0.1 ~ #gothrough run tp @s ~ ~-0.1 ~
execute at @s if score @s enemydummy matches 74.. if block ~ ~-0.05 ~ #gothrough run tp @s ~ ~-0.05 ~
execute at @s if score @s enemydummy matches 74.. if block ~ ~-0.05 ~ #gothrough run tp @s ~ ~-0.05 ~
execute at @s if score @s enemydummy matches 74.. if block ~ ~-0.05 ~ #gothrough run tp @s ~ ~-0.05 ~
execute at @s if score @s enemydummy matches 74.. if block ~ ~-0.05 ~ #gothrough run tp @s ~ ~-0.05 ~
execute at @s if score @s enemydummy matches 74.. if block ~ ~-0.05 ~ #gothrough run tp @s ~ ~-0.05 ~
execute if score @s enemydummy matches 75.. run data merge entity @s {HandItems: [{count: 1, id: "minecraft:activator_rail"}]}
execute if score @s enemydummy matches 75.. run data merge entity @e[type=silverfish,tag=link_b,limit=1] {Invulnerable:1b}
execute if score @s enemydummy matches 120.. run particle block{block_state:"minecraft:green_concrete_powder"} ~ ~ ~ 0 0 0 0.1 10
execute if score @s enemydummy matches 134.. run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 32}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute if score @s enemydummy matches 134.. run data merge entity @e[type=silverfish,tag=link_b,limit=1] {Invulnerable:0b}
execute if score @s enemydummy matches 134.. run scoreboard players set @s enemydummy 0

#DAMAGE
execute unless score @s enemydummy2 matches 1.. if score @s enemydummy matches 1..75 run scoreboard players set @p[distance=..0.75] set_damage 5
execute unless score @s enemydummy2 matches 1.. if score @s enemydummy matches 1..75 if entity @p[distance=..0.75] run scoreboard players set @s enemydummy2 30
execute if score @s enemydummy2 matches 1.. run scoreboard players remove @s enemydummy2 1

#DAMAGE INDICATOR
execute if entity @e[type=silverfish,tag=link_b,nbt={HurtTime:10s}] run particle block{block_state:"minecraft:redstone_block"} ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=silverfish,tag=link_b] run tag @s add link_init
tag @e[type=silverfish] remove link_b
tag @s remove link_a