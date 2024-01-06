effect give @s minecraft:slowness 1 255 true
execute unless score @s frozentimer matches -2147483648..2147483647 run scoreboard players set @s frozentimer 40
execute if entity @s[tag=!noparticles,tag=!stunned] run particle minecraft:snowflake ~ ~1 ~ 0.1 1 0.1 0.1 1
execute if entity @s[tag=stunned] run particle current_down ~ ~ ~ 0.3 0.4 0.3 0.05 10 force
execute if score @s frozentimer matches 1.. run scoreboard players remove @s frozentimer 1
execute if score @s frozentimer matches 0 run tag @s remove noparticles
execute if score @s frozentimer matches 0 run tag @s remove icerodfrozen
execute if score @s frozentimer matches 0 run tag @s remove stunned
execute if score @s frozentimer matches 0 run effect clear @s slowness
execute if score @s frozentimer matches 0 run scoreboard players set @s frozentimer -1