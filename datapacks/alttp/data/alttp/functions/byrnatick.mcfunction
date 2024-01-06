scoreboard players remove @s byrnatimer 1
effect give @s glowing 1 1 true
effect give @s resistance 1 255 true

execute if score @s spw_e_17 matches 1 as @e[tag=!byrnahit,tag=enemy,distance=..1.2] run damage @s 16
execute unless score @s spw_e_17 matches 1 as @e[tag=!byrnahit,tag=enemy,distance=..1.2] run damage @s 8
tag @e[tag=enemy,tag=!byrnahit,distance=..1.2] add byrnahit