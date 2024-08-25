#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=zombie,tag=freezorzo] if score @s enemylink = @e[type=armor_stand,tag=freezor,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKY
tp @s @e[type=zombie,tag=link_b,limit=1]
execute if entity @s[tag=link_init] unless entity @e[type=zombie,tag=link_b] run function alttp:enemy_death

#STATES
execute unless score @s enemydummy matches -2147483648..2147483647 run scoreboard players set @s enemydummy 0

execute if score @s enemydummy matches 0 if entity @p[distance=..6] run scoreboard players set @s enemydummy 1

execute if score @s enemydummy matches 0 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 32}, count: 1, id: "minecraft:activator_rail"}, {}]}
execute if score @s enemydummy matches 0 run data merge entity @e[type=zombie,tag=link_b,limit=1] {Invulnerable:1b,NoAI:1b}

execute if score @s enemydummy matches 1..5 run particle snowflake ~ ~ ~ 0.5 0.2 0.5 0 50
execute if score @s enemydummy matches 6..10 run particle snowflake ~ ~ ~ 0.5 0.4 0.5 0 50
execute if score @s enemydummy matches 11..15 run particle snowflake ~ ~ ~ 0.5 0.6 0.5 0 50
execute if score @s enemydummy matches 16..20 run particle snowflake ~ ~ ~ 0.5 0.8 0.5 0 50
execute if score @s enemydummy matches 21..25 run particle snowflake ~ ~ ~ 0.5 1.0 0.5 0 50
execute if score @s enemydummy matches 26..30 run particle snowflake ~ ~ ~ 0.5 1.2 0.5 0 50
execute if score @s enemydummy matches 31..34 run particle snowflake ~ ~ ~ 0.5 1.4 0.5 0 50

execute if score @s enemydummy matches 1..34 run scoreboard players add @s enemydummy 1

execute if score @s enemydummy matches 35 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 32}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute if score @s enemydummy matches 35 run data merge entity @e[type=zombie,tag=link_b,limit=1] {NoAI:0b}

execute store result score @s enemydummy2 run data get entity @e[type=zombie,tag=link_b,limit=1] Motion[0] 100
effect give @e[type=zombie,tag=link_b] speed 1 1 true
execute if score @s enemydummy2 matches 4.. run effect clear @e[type=zombie,tag=link_b] speed
execute if score @s enemydummy2 matches ..-4 run effect clear @e[type=zombie,tag=link_b] speed
execute if score @s enemydummy matches 35 run particle snowflake ~ ~ ~ 0 0.1 0 0 5

#DAMAGE INDICATOR
execute if entity @e[type=zombie,tag=link_b,nbt={HurtTime:10s}] run particle block{block_state:"minecraft:blue_ice"} ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=zombie,tag=link_b] run tag @s add link_init
tag @e[type=zombie] remove link_b
tag @s remove link_a