execute store result score @s enemydummy7 run data get entity @s Motion[0] 100
execute store result score @s enemydummy8 run data get entity @s Motion[2] 100
scoreboard players operation @s enemydummy7 += @s enemydummy8
execute if score @s enemydummy7 matches 0 run scoreboard players add @s enemydummy9 1
execute if score @s enemydummy7 matches 0 run tp @s ~ ~-0.01 ~
execute if score @s enemydummy9 matches 30.. run kill @s

scoreboard players set @p[distance=..0.6] set_damage 2
execute positioned ~ ~-1.5 ~ run scoreboard players set @p[distance=..0.6] set_damage 2

execute if entity @p[distance=..0.6] run kill @s
execute positioned ~ ~-1.5 ~ if entity @p[distance=..0.6] run kill @s