execute if block ^ ^ ^0.25 #gothrough run tp @s ^ ^ ^0.25
execute unless block ^ ^ ^0.25 #gothrough run kill @s
particle lava
execute at @p[distance=..0.5] run summon minecraft:small_fireball ~ ~3 ~ {power:[0.0,-10.0,0.0]}
execute if entity @p[distance=..0.5] run kill @s
execute positioned ~ ~-1.2 ~ at @p[distance=..0.5] run summon minecraft:small_fireball ~ ~3 ~ {power:[0.0,-10.0,0.0]}
execute positioned ~ ~-1.2 ~ if entity @p[distance=..0.5] run kill @s

tag @s add enemy_projectile