execute store result score result rand run random value 1..50
execute if score result rand matches 1 anchored eyes run function alttp:findlookat
execute if score result rand matches 1 as @e[type=marker,tag=looking_result] at @s run function alttp:loot/greenrupee
execute if score result rand matches 1 run kill @e[type=marker,tag=looking_result]

scoreboard players set @s weedmined 0