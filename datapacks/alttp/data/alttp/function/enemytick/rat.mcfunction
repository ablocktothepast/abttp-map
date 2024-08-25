#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=silverfish,tag=ratsf] if score @s enemylink = @e[type=armor_stand,tag=rat,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKING
execute if entity @s[tag=link_init] unless entity @e[type=silverfish,tag=link_b] run function alttp:enemy_death
tp @s @e[type=silverfish,tag=link_b,limit=1]

#ATTACK
execute if entity @p[distance=..3.5] run team leave @e[type=silverfish,tag=link_b]
execute unless entity @p[distance=..3.5] run team join passive @e[type=silverfish,tag=link_b]

#BREAKS
scoreboard players add @s enemydummy 1
execute if score @s enemydummy matches 100..139 run data merge entity @e[type=silverfish,tag=link_b,limit=1] {NoAI:1b}
execute if score @s enemydummy matches 140.. run data merge entity @e[type=silverfish,tag=link_b,limit=1] {NoAI:0b}

execute if score @s enemydummy matches 140.. store result score result rand run random value 1..3
execute if score @s enemydummy matches 140.. if score result rand matches 1..2 run playsound alttp.rat weather @a[distance=..10] ~ ~ ~ 1 1
execute if score @s enemydummy matches 140.. run scoreboard players set @s enemydummy 0

#RAT ANIMATION
execute store result score @s enemydummy9 run data get entity @e[type=silverfish,tag=link_b,limit=1] Motion[0] 1000
execute store result score @s enemydummy10 run data get entity @e[type=silverfish,tag=link_b,limit=1] Motion[2] 1000
scoreboard players operation @s enemydummy9 += @s enemydummy10

execute if score @s enemydummy9 matches 0 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 126}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}

execute unless score @s enemydummy9 matches 0 run scoreboard players add @s enemydummy8 1
execute if score @s enemydummy8 matches 11.. run scoreboard players set @s enemydummy8 1
execute unless score @s enemydummy9 matches 0 if score @s enemydummy8 matches 1..5 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 127}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute unless score @s enemydummy9 matches 0 if score @s enemydummy8 matches 6..10 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 128}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}

execute if score @s enemydummy matches 100..139 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 126}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}

#DAMAGE INDICATOR
execute if entity @e[type=silverfish,tag=link_b,nbt={HurtTime:10s}] run particle block{block_state:"minecraft:redstone_block"} ~ ~0.7 ~ 0 0 0 0.1 50 force

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=silverfish,tag=link_b] run tag @s add link_init
tag @e[type=silverfish] remove link_b
tag @s remove link_a