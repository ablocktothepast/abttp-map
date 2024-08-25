#DAMAGING
execute unless score @s enemydummy2 matches 1.. if entity @p[distance=..1] run scoreboard players set @p set_damage 3
execute unless score @s enemydummy2 matches 1.. if entity @p[distance=..1] run scoreboard players set @s enemydummy2 20

execute if score @s enemydummy2 matches 1.. run scoreboard players remove @s enemydummy2 1

execute align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~

##Reflection
scoreboard players add @s enemydummy 1
execute if score @s enemydummy matches 106.. run scoreboard players set @s enemydummy 1
execute if score @s enemydummy matches ..99 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 247}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute if score @s enemydummy matches 100 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 248}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute if score @s enemydummy matches 101 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 249}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute if score @s enemydummy matches 102 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 250}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute if score @s enemydummy matches 103 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 251}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute if score @s enemydummy matches 104 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 252}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}
execute if score @s enemydummy matches 105 run data merge entity @s {HandItems: [{components: {"minecraft:custom_model_data": 253}, count: 1, id: "minecraft:carrot_on_a_stick"}, {}]}