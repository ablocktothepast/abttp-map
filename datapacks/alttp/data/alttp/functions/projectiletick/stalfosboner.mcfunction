tp @s ^ ^ ^0.3
scoreboard players add @s enemydummy 24
execute store result entity @s Pose.Head[2] float 1 run scoreboard players get @s enemydummy
execute if score @s enemydummy matches 360.. run scoreboard players set @s enemydummy 1
execute unless data entity @s Pose.Head[2] run data merge entity @s {Pose:{Head:[0.0f,0.0f,1.0f]}}
execute unless block ~ ~1.3 ~ #gothrough run kill @s
execute positioned ~ ~1.3 ~ run scoreboard players set @p[distance=..0.5] set_damage 5
execute positioned ~ ~1.3 ~ if entity @p[distance=..0.5] run kill @s
scoreboard players set @p[distance=..0.5] set_damage 5
execute if entity @p[distance=..0.5] run kill @s

tag @s add enemy_projectile