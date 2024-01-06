execute store result score result rand run random value 1..4

execute if score result rand matches 1 unless score @p rupees matches 1.. run scoreboard players set result rand 0
execute if score result rand matches 2 unless score @p arrows matches 5.. run scoreboard players set result rand 0
execute if score result rand matches 3 unless score @p bombs matches 1.. run scoreboard players set result rand 0
execute if score result rand matches 4 unless score @p rupees matches 5.. run scoreboard players set result rand 0

execute store result score @s enemydummy2 run scoreboard players get result rand

execute if score result rand matches 1 run scoreboard players remove @p rupees 1
execute if score result rand matches 2 run scoreboard players remove @p arrows 5
execute if score result rand matches 3 run scoreboard players remove @p bombs 1
execute if score result rand matches 4 run scoreboard players remove @p rupees 5

execute store result score result rand run random value 1..8

execute if score result rand matches 1 positioned ~-2 ~ ~-1.9 run function alttp:pikkuscatter_do
execute if score result rand matches 2 positioned ~2 ~ ~-1.5 run function alttp:pikkuscatter_do
execute if score result rand matches 3 positioned ~-2 ~ ~2 run function alttp:pikkuscatter_do
execute if score result rand matches 4 positioned ~1.3 ~ ~2 run function alttp:pikkuscatter_do
execute if score result rand matches 5 positioned ~-2.1 ~ ~ run function alttp:pikkuscatter_do
execute if score result rand matches 6 positioned ~1.6 ~ ~ run function alttp:pikkuscatter_do
execute if score result rand matches 7 positioned ~ ~ ~2 run function alttp:pikkuscatter_do
execute if score result rand matches 8 positioned ~ ~ ~-1.4 run function alttp:pikkuscatter_do