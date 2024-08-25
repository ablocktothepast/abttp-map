execute if block ^ ^ ^0.25 #gothrough run tp @s ^ ^ ^0.25
execute unless block ^ ^ ^0.25 #gothrough run kill @s
particle electric_spark
execute at @p[distance=..0.5] run summon lightning_bolt ~ ~5 ~
execute positioned ~ ~-1.2 ~ run scoreboard players set @p[distance=..0.5] lightstruck 5
execute if entity @p[distance=..0.5] run kill @s
execute positioned ~ ~-1.2 ~ at @p[distance=..0.5] run summon lightning_bolt ~ ~5 ~
execute positioned ~ ~-1.2 ~ run scoreboard players set @p[distance=..0.5] lightstruck 5
execute positioned ~ ~-1.2 ~ if entity @p[distance=..0.5] run kill @s

tag @s add enemy_projectile