execute store result score result rand run random value 1..8

execute if score result rand matches 1 run scoreboard players remove @s enemydummy 5
execute if score result rand matches 2 run scoreboard players remove @s enemydummy 10
execute if score result rand matches 3 run scoreboard players remove @s enemydummy 15
execute if score result rand matches 4 run scoreboard players remove @s enemydummy 20

execute if score result rand matches 1..4 run tag @s add intervalled