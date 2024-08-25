#DAMAGING
execute unless score @s enemydummy2 matches 1.. if entity @p[distance=..1] run scoreboard players set @p set_damage 5
execute unless score @s enemydummy2 matches 1.. if entity @p[distance=..1] run scoreboard players set @s enemydummy2 20

execute if score @s enemydummy2 matches 1.. run scoreboard players remove @s enemydummy2 1

#MOVEMENT
execute unless score @s enemydummy matches -2147483648..2147483647 run scoreboard players set @s enemydummy 0
execute if score @s enemydummy matches ..-1 run scoreboard players add @s enemydummy 1
execute if score @s enemydummy matches 0 positioned ~ ~ ~1 if entity @p[distance=..0.65] run scoreboard players set @s enemydummy 1
execute if score @s enemydummy matches 0 positioned ~ ~ ~2 if entity @p[distance=..0.65] run scoreboard players set @s enemydummy 1
execute if score @s enemydummy matches 0 positioned ~ ~ ~3 if entity @p[distance=..0.65] run scoreboard players set @s enemydummy 1
execute if score @s enemydummy matches 0 positioned ~ ~ ~4 if entity @p[distance=..0.65] run scoreboard players set @s enemydummy 1
execute if score @s enemydummy matches 0 positioned ~ ~ ~5 if entity @p[distance=..0.65] run scoreboard players set @s enemydummy 1
execute if score @s enemydummy matches 0 positioned ~ ~ ~6 if entity @p[distance=..0.65] run scoreboard players set @s enemydummy 1

execute if score @s enemydummy matches 0 positioned ~ ~ ~-1 if entity @p[distance=..0.65] run scoreboard players set @s enemydummy 2
execute if score @s enemydummy matches 0 positioned ~ ~ ~-2 if entity @p[distance=..0.65] run scoreboard players set @s enemydummy 2
execute if score @s enemydummy matches 0 positioned ~ ~ ~-3 if entity @p[distance=..0.65] run scoreboard players set @s enemydummy 2
execute if score @s enemydummy matches 0 positioned ~ ~ ~-4 if entity @p[distance=..0.65] run scoreboard players set @s enemydummy 2
execute if score @s enemydummy matches 0 positioned ~ ~ ~-5 if entity @p[distance=..0.65] run scoreboard players set @s enemydummy 2
execute if score @s enemydummy matches 0 positioned ~ ~ ~-6 if entity @p[distance=..0.65] run scoreboard players set @s enemydummy 2

execute if score @s enemydummy matches 0 positioned ~1 ~ ~ if entity @p[distance=..0.65] run scoreboard players set @s enemydummy 3
execute if score @s enemydummy matches 0 positioned ~2 ~ ~ if entity @p[distance=..0.65] run scoreboard players set @s enemydummy 3
execute if score @s enemydummy matches 0 positioned ~3 ~ ~ if entity @p[distance=..0.65] run scoreboard players set @s enemydummy 3
execute if score @s enemydummy matches 0 positioned ~4 ~ ~ if entity @p[distance=..0.65] run scoreboard players set @s enemydummy 3
execute if score @s enemydummy matches 0 positioned ~5 ~ ~ if entity @p[distance=..0.65] run scoreboard players set @s enemydummy 3
execute if score @s enemydummy matches 0 positioned ~6 ~ ~ if entity @p[distance=..0.65] run scoreboard players set @s enemydummy 3

execute if score @s enemydummy matches 0 positioned ~-1 ~ ~ if entity @p[distance=..0.65] run scoreboard players set @s enemydummy 4
execute if score @s enemydummy matches 0 positioned ~-2 ~ ~ if entity @p[distance=..0.65] run scoreboard players set @s enemydummy 4
execute if score @s enemydummy matches 0 positioned ~-3 ~ ~ if entity @p[distance=..0.65] run scoreboard players set @s enemydummy 4
execute if score @s enemydummy matches 0 positioned ~-4 ~ ~ if entity @p[distance=..0.65] run scoreboard players set @s enemydummy 4
execute if score @s enemydummy matches 0 positioned ~-5 ~ ~ if entity @p[distance=..0.65] run scoreboard players set @s enemydummy 4
execute if score @s enemydummy matches 0 positioned ~-6 ~ ~ if entity @p[distance=..0.65] run scoreboard players set @s enemydummy 4

execute if score @s enemydummy matches 1 run tp @s ~ ~ ~0.4
execute if score @s enemydummy matches 2 run tp @s ~ ~ ~-0.4
execute if score @s enemydummy matches 3 run tp @s ~0.4 ~ ~
execute if score @s enemydummy matches 4 run tp @s ~-0.4 ~ ~

execute if score @s enemydummy matches 1 unless block ~ ~ ~0.5 #gothrough run scoreboard players set @s enemydummy -10
execute if score @s enemydummy matches 2 unless block ~ ~ ~-0.5 #gothrough run scoreboard players set @s enemydummy -10
execute if score @s enemydummy matches 3 unless block ~0.5 ~ ~ #gothrough run scoreboard players set @s enemydummy -10
execute if score @s enemydummy matches 4 unless block ~-0.5 ~ ~ #gothrough run scoreboard players set @s enemydummy -10

execute if score @s enemydummy matches ..0 align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~

##Reflection
scoreboard players add @s enemydummy3 1
execute if score @s enemydummy3 matches 106.. run scoreboard players set @s enemydummy3 1
execute if score @s enemydummy3 matches ..99 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 256}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute if score @s enemydummy3 matches 100 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 257}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute if score @s enemydummy3 matches 101 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 258}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute if score @s enemydummy3 matches 102 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 259}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute if score @s enemydummy3 matches 103 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 260}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute if score @s enemydummy3 matches 104 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 261}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute if score @s enemydummy3 matches 105 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 262}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}