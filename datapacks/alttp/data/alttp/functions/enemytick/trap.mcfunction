#DAMAGING
execute unless score @s enemydummy2 matches 1.. if entity @p[distance=..1] run scoreboard players set @p set_damage 3
execute unless score @s enemydummy2 matches 1.. if entity @p[distance=..1] run scoreboard players set @s enemydummy2 20

execute if score @s enemydummy2 matches 1.. run scoreboard players remove @s enemydummy2 1

execute align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~

##Reflection
scoreboard players add @s enemydummy 1
execute if score @s enemydummy matches 106.. run scoreboard players set @s enemydummy 1
execute if score @s enemydummy matches ..99 run data merge entity @s {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:247}},{}]}
execute if score @s enemydummy matches 100 run data merge entity @s {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:248}},{}]}
execute if score @s enemydummy matches 101 run data merge entity @s {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:249}},{}]}
execute if score @s enemydummy matches 102 run data merge entity @s {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:250}},{}]}
execute if score @s enemydummy matches 103 run data merge entity @s {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:251}},{}]}
execute if score @s enemydummy matches 104 run data merge entity @s {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:252}},{}]}
execute if score @s enemydummy matches 105 run data merge entity @s {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:253}},{}]}