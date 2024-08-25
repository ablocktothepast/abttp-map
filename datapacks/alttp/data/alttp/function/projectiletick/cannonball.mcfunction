tp @s ^ ^ ^0.35 ~ ~
execute unless block ^ ^ ^-0.5 #gothrough run particle block coal_block ^ ^ ^-0.5 0.05 0.1 0.05 0 30 force
execute unless block ^ ^ ^-0.5 #gothrough run kill @s
scoreboard players set @p[distance=..0.5] set_damage 5
execute if entity @p[distance=..0.5] run particle block coal_block ^ ^ ^-0.5 0.05 0.1 0.05 0 30 force
execute if entity @p[distance=..0.5] run kill @s

tag @s add enemy_projectile