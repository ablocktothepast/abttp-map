execute positioned ~ ~-0.5 ~ run tp @s ^ ^ ^0.7

execute unless block ~ ~ ~ #gothrough run kill @s
execute if entity @e[tag=enemy,distance=..0.7] run damage @e[tag=enemy,limit=1,sort=nearest] 10
execute if entity @e[tag=enemy,distance=..0.7] run kill @s

data merge entity @s {HandItems:[{id:"minecraft:iron_sword",Count:1b},{id:"minecraft:iron_sword",Count:1b}]}

particle crit ^-0.4 ^ ^ 0 0 0 0 1
particle crit ^0.4 ^ ^ 0 0 0 0 1

scoreboard players add @s enemydummy 1
execute if score @s enemydummy matches 200.. run kill @s