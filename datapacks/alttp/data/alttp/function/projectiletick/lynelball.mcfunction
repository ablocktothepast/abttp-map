execute if block ^ ^ ^0.2 #gothrough run tp @s ^ ^ ^0.2
execute unless block ^ ^ ^0.2 #gothrough run kill @s
execute run scoreboard players set @p[distance=..0.5] set_damage 8
execute if entity @p[distance=..0.75] run kill @s

tag @s add enemy_projectile