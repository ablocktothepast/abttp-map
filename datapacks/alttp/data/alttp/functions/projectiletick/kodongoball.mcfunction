execute if block ^ ^1.3 ^0.2 #gothrough run tp @s ^ ^ ^0.2
execute unless block ^ ^1.3 ^0.2 #gothrough if block ^ ^1.3 ^-0.4 air run summon marker ^ ^1.3 ^-0.4 {Tags:["kodongofire"]}
execute positioned ~ ~1.3 ~ run scoreboard players set @p[distance=..0.5] set_damage_source 1
execute positioned ~ ~1.3 ~ run scoreboard players set @p[distance=..0.5] set_damage 5
execute positioned ~ ~1.3 ~ if entity @p[distance=..0.5] run summon marker ^ ^ ^-0.4 {Tags:["kodongofire","nolifesteal"]}
execute positioned ~ ~1.3 ~ if entity @p[distance=..0.5] run kill @s
execute unless block ^ ^1.3 ^0.2 #gothrough run kill @s

tag @s add enemy_projectile