execute align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~
setblock ~ ~ ~ barrier

execute unless score @s enemydummy matches 1.. as @p[distance=..1.3] positioned ~ ~-0.75 ~ facing entity @p feet positioned as @s run function delta:api/launch_looking
execute unless score @s enemydummy matches 1.. as @p[distance=..1.3] run playsound minecraft:alttp.bounce weather @p ~ ~ ~
execute if entity @p[distance=..1.3] run scoreboard players set @s enemydummy 5
execute if score @s enemydummy matches 1.. run scoreboard players remove @s enemydummy 1