tp @s ^ ^ ^0.25
execute unless block ~ ~1.3 ~ #gothrough run kill @s
execute positioned ~ ~1.3 ~ run scoreboard players set @p[distance=..0.5] set_damage 4
execute positioned ~ ~1.3 ~ if entity @p[distance=..0.5] run kill @s
scoreboard players set @p[distance=..0.5] set_damage 4
execute if entity @p[distance=..0.5] run kill @s
data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":122}}]}

tag @s add enemy_projectile