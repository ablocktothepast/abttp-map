execute if block ^ ^ ^0.2 #gothrough run tp @s ^ ^ ^0.2
execute unless block ^ ^ ^0.2 #gothrough run particle block bone_block ~ ~0.15 ~ 0.4 0.4 0.4 0 25 force
execute unless block ^ ^ ^0.2 #gothrough run playsound minecraft:entity.turtle.egg_break weather @p ~ ~ ~ 0.5 1
execute unless block ^ ^ ^0.2 #gothrough run kill @s
execute if entity @p[distance=..0.5] run particle block bone_block ~ ~0.15 ~ 0.4 0.4 0.4 0 25 force
execute if entity @p[distance=..0.5] run scoreboard players set @p set_damage 6
execute if entity @p[distance=..0.5] run playsound minecraft:entity.turtle.egg_break weather @p ~ ~ ~ 0.5 1
execute if entity @p[distance=..0.5] run kill @s
execute positioned ~ ~-1.45 ~ if entity @p[distance=..0.5] positioned ~ ~1.45 ~ run particle block bone_block ~ ~0.15 ~ 0.4 0.4 0.4 0 25 force
execute positioned ~ ~-1.45 ~ if entity @p[distance=..0.5] run scoreboard players set @p set_damage 6
execute positioned ~ ~-1.45 ~ if entity @p[distance=..0.5] run playsound minecraft:entity.turtle.egg_break weather @p ~ ~ ~ 0.5 1
execute positioned ~ ~-1.45 ~ if entity @p[distance=..0.5] run kill @s
execute anchored feet facing entity @p eyes positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^40 facing entity @s feet facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
execute rotated ~ 0 run particle ash ^ ^0.2 ^-0.2
scoreboard players add @s enemydummy 1
execute if score @s enemydummy matches 200.. run tp @s ~ ~ ~ ~ ~10
scoreboard players add @s enemydummy2 24
execute if score @s enemydummy2 matches 360.. run scoreboard players set @s enemydummy2 0
execute store result entity @s Pose.RightArm[1] float 1 run scoreboard players get @s enemydummy2
execute unless data entity @s Pose.RightArm[1] run data merge entity @s {Pose:{RightArm:[0.0f,1.0f,0.0f]}}

tag @s add enemy_projectile