tp @s ^ ^ ^0.3
execute unless block ~ ~1.3 ~ #gothrough run kill @s
execute positioned ~ ~1.3 ~ run scoreboard players set @p[distance=..0.5] set_damage 5
execute positioned ~ ~1.3 ~ if entity @p[distance=..0.5] run kill @s
scoreboard players set @p[distance=..0.5] set_damage 5
execute if entity @p[distance=..0.5] run kill @s

tag @s add enemy_projectile