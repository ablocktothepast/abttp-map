#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=silverfish,tag=leeversf] if score @s enemylink = @e[type=armor_stand,tag=leever,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKY
execute if score @s enemydummy matches 1 run tp @e[type=silverfish,tag=link_b] @s
execute if score @s enemydummy matches 2 run tp @s @e[type=silverfish,tag=link_b,limit=1]
execute if entity @s[tag=link_init] unless entity @e[type=silverfish,tag=link_b] run function alttp:enemy_death

#DAMAGE INDICATOR
execute if entity @e[type=silverfish,tag=link_b,nbt={HurtTime:10s}] run particle block{block_state:"minecraft:redstone_block"} ~ ~0.7 ~ 0 0 0 0.1 50 force

#BURROW IN AND OUT
execute unless score @s enemydummy matches -2147483648..2147483647 run scoreboard players set @s enemydummy 1

execute if score @s enemydummy matches 1 run data merge entity @s {HandItems: [{count: 1, id: "minecraft:activator_rail"}, {}]}
execute if score @s enemydummy matches 1 if entity @p[distance=..3] run scoreboard players set @s enemydummy 2
execute if score @s enemydummy matches 1 run particle block{block_state:"minecraft:sand"} ~ ~ ~ 0 0 0 0 1 force

execute if score @s enemydummy matches 2 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 32}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=silverfish,tag=link_b] run tag @s add link_init
tag @e[type=silverfish] remove link_b
tag @s remove link_a