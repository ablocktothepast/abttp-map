execute if block ^ ^1.3 ^0.2 #gothrough run tp @s ^ ^ ^0.2
execute positioned ~ ~1.3 ~ run scoreboard players set @p[distance=..0.5] set_damage 5
execute positioned ~ ~1.3 ~ if entity @p[distance=..0.5] run kill @s
scoreboard players set @p[distance=..0.5] set_damage 5
execute if entity @p[distance=..0.5] run kill @s
execute unless block ^ ^1.3 ^0.2 #gothrough run kill @s

tag @s add enemy_projectile