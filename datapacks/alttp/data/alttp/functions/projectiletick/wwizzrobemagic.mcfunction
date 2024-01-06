execute if block ^ ^ ^0.25 #gothrough run tp @s ^ ^ ^0.25
execute unless block ^ ^ ^0.25 #gothrough run kill @s
scoreboard players set @p[distance=..0.5] set_damage 5
execute if entity @p[distance=..0.5] run kill @s
execute positioned ~ ~-1.2 ~ run scoreboard players set @p[distance=..0.5] set_damage 5
execute positioned ~ ~-1.2 ~ if entity @p[distance=..0.5] run kill @s

tag @s add enemy_projectile