execute unless score @s enemydummy matches -100.. store result score result rand run random value 1..60
execute unless score @s enemydummy matches -100.. run scoreboard players operation @s enemydummy -= result rand

scoreboard players add @s enemydummy 1

execute if score @s enemydummy matches 6 run function alttp:ceilingrock_position
execute at @s if score @s enemydummy matches 6 run summon block_display ~ 68.005 ~ {Tags:["fallshadow"],block_state:{Name:"minecraft:coal_block"}}
execute at @s if score @s enemydummy matches 6 run tp @s ~ 117 ~

execute if score @s enemydummy matches 10..15 run tp @s ~ ~-0.3 ~
execute if score @s enemydummy matches 16..20 run tp @s ~ ~-0.35 ~
execute if score @s enemydummy matches 21..25 run tp @s ~ ~-0.4 ~
execute if score @s enemydummy matches 26..30 run tp @s ~ ~-0.45 ~
execute if score @s enemydummy matches 31..35 run tp @s ~ ~-0.5 ~
execute if score @s enemydummy matches 36..40 run tp @s ~ ~-0.55 ~
execute if score @s enemydummy matches 41..45 run tp @s ~ ~-0.6 ~
execute if score @s enemydummy matches 46..50 run tp @s ~ ~-0.65 ~
execute if score @s enemydummy matches 51..55 run tp @s ~ ~-0.7 ~
execute if score @s enemydummy matches 56..60 run tp @s ~ ~-0.75 ~
execute if score @s enemydummy matches 61..65 run tp @s ~ ~-0.8 ~
execute if score @s enemydummy matches 66..70 run tp @s ~ ~-0.85 ~
execute if score @s enemydummy matches 71..200 run tp @s ~ ~-0.9 ~

execute if score @s enemydummy matches 201.. run tp @s ~ ~-0.05 ~

execute at @s if block ~ ~-0.5 ~ sandstone run particle block sandstone ~ ~0.7 ~ 0.8 0.8 0.8 0.1 15 force
execute at @s if block ~ ~-0.5 ~ sandstone run scoreboard players set @s enemydummy 200

execute at @s if score @s enemydummy matches 20.. if block ~ ~2 ~ sandstone positioned ~ 68 ~ run kill @e[type=block_display,tag=fallshadow,limit=1,sort=nearest]
execute at @s if score @s enemydummy matches 20.. if block ~ ~2 ~ sandstone run kill @s

execute at @s if entity @p[distance=..1.5] positioned ~ 68 ~ run kill @e[type=block_display,tag=fallshadow,limit=1,sort=nearest]
execute at @s if entity @p[distance=..1.5] run kill @s
execute at @s run scoreboard players set @p[distance=..1.5] set_damage 5