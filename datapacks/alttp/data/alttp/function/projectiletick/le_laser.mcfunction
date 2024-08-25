tp @s ^ ^ ^0.25
execute unless block ~ ~1.3 ~ #gothrough run kill @s
execute positioned ~ ~1.3 ~ run scoreboard players set @p[distance=..0.5] set_damage 6
execute positioned ~ ~1.3 ~ run scoreboard players set @p[distance=..0.5] set_damage_source 2
execute positioned ~ ~1.3 ~ if entity @p[distance=..0.5] run kill @s
scoreboard players set @p[distance=..0.5] set_damage 6
scoreboard players set @p[distance=..0.5] set_damage_source 2
execute if entity @p[distance=..0.5] run kill @s
scoreboard players add @s enemydummy 1
execute if score @s enemydummy matches 4.. run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:end_rod",Count:1b}]}

tag @s add enemy_projectile