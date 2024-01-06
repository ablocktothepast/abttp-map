#enemydummy = has been centered
#enemydummy2 = state (1=active 0=inactive)
#enemydummy3 = inactive timer
execute unless score @s enemydummy matches 1 align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~
execute unless score @s enemydummy matches 1 run scoreboard players set @s enemydummy 1

execute unless block ~ ~ ~ air unless block ~ ~ ~ barrier run kill @s
execute unless score @s enemydummy2 matches -2147483648..2147483647 run scoreboard players set @s enemydummy2 1
execute if score @s enemydummy2 matches 1 if block ~ ~ ~ air run setblock ~ ~ ~ barrier
execute if score @s enemydummy2 matches 0 if block ~ ~ ~ barrier run setblock ~ ~ ~ air

execute unless score @s enemydummy3 matches -2147483648..2147483647 run scoreboard players set @s enemydummy3 -1
execute if score @s enemydummy2 matches 0 if score @s enemydummy3 matches -1 run scoreboard players set @s enemydummy3 200
execute if score @s enemydummy2 matches 0 if score @s enemydummy3 matches 0 run scoreboard players set @s enemydummy2 1
execute if score @s enemydummy3 matches 0.. run scoreboard players remove @s enemydummy3 1

#MODELS
execute if score @s enemydummy2 matches 1 run data merge entity @s {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:90}},{}]}
execute if score @s enemydummy2 matches 0 run data merge entity @s {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:91}},{}]}

#DONT GO ON TOP OF THIS BOI
execute if score @s enemydummy2 matches 1 positioned ~ ~1 ~ if entity @p[distance=..0.5] positioned ~ ~-1 ~ run tp @p ^ ^ ^1