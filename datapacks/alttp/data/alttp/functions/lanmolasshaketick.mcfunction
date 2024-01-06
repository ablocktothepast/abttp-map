scoreboard players add @s lanmolasshake 1

execute store result score result rand run random value 1..2
execute if score result rand matches 1 run tp @s ~ ~ ~ ~ ~2
execute if score result rand matches 2 run tp @s ~ ~ ~ ~ ~-2

execute if score @s lanmolasshake matches 30.. run tag @s remove lanmolasshake
execute if score @s lanmolasshake matches 30.. run tag @s remove nodamageshake
execute if score @s lanmolasshake matches 30.. unless entity @s[tag=nodamageshake] run scoreboard players set @s set_damage 1
execute if score @s lanmolasshake matches 30.. run scoreboard players set @s lanmolasshake 0