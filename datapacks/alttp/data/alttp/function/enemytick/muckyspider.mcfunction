#FIND LINKED ENTITY
tag @s add link_a
execute as @e[type=silverfish,tag=muckyspidersf] if score @s enemylink = @e[type=armor_stand,tag=muckyspider,limit=1,sort=nearest] enemylink run tag @s add link_b

#LINKY
tp @s @e[type=silverfish,tag=link_b,limit=1]
execute if entity @s[tag=link_init] unless entity @e[type=silverfish,tag=link_b] run function alttp:enemy_death

#DAMAGE INDICATOR
execute if entity @e[type=silverfish,tag=link_b,nbt={HurtTime:10s}] run particle block{block_state:"minecraft:redstone_block"} ~ ~0.7 ~ 0 0 0 0.1 50 force

##MODELS
execute if score @s enemydummy7 matches 1 run scoreboard players add @s enemydummy 1
execute if score @s enemydummy matches 9.. run scoreboard players set @s enemydummy 1
execute if score @s enemydummy matches 1..4 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 300}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute if score @s enemydummy matches 5..8 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 301}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}

#Epic movement models
execute store result score @s enemydummy8 run data get entity @e[type=silverfish,tag=link_b,limit=1] Motion[0] 100
execute store result score @s enemydummy9 run data get entity @e[type=silverfish,tag=link_b,limit=1] Motion[2] 100
scoreboard players set @s enemydummy7 1
execute if score @s enemydummy8 matches 0 if score @s enemydummy9 matches 0 run scoreboard players set @s enemydummy7 0

##Sounds yes
scoreboard players add @s enemydummy2 1
execute if score @s enemydummy2 matches 40.. store result score result rand run random value 1..5
execute if score @s enemydummy2 matches 40.. if entity @p[distance=..10] if score result rand matches 1 at @p run playsound minecraft:entity.spider.ambient weather @p ~ ~ ~ 1 1.5
execute if score @s enemydummy2 matches 40.. run scoreboard players set @s enemydummy2 0

#REMOVE LINK TAG FOR NEXT ENEMY
execute if entity @e[type=silverfish,tag=link_b] run tag @s add link_init
tag @e[type=silverfish] remove link_b
tag @s remove link_a