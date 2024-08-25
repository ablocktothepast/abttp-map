execute if block ^ ^1.3 ^0.3 #gothrough run tp @s ^ ^ ^0.3
execute unless block ^ ^1.3 ^0.3 #gothrough if block ^ ^1.3 ^-0.6 air run summon marker ^ ^1.3 ^-0.6 {Tags:["red_kodongofire"]}
execute positioned ~ ~1.3 ~ run scoreboard players set @p[distance=..0.5] set_damage 5
execute positioned ~ ~1.3 ~ run scoreboard players set @p[distance=..0.5] set_damage_source 1
execute positioned ~ ~1.3 ~ if entity @p[distance=..0.5] run summon marker ^ ^ ^-0.6 {Tags:["red_kodongofire","nolifesteal"]}
execute positioned ~ ~1.3 ~ if entity @p[distance=..0.5] run kill @s
execute unless block ^ ^1.3 ^0.3 #gothrough run kill @s

tag @s add enemy_projectile