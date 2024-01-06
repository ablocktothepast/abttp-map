scoreboard players add @s enemydummy 1
setblock ~ ~ ~ fire
execute if score @s enemydummy matches 100.. run setblock ~ ~ ~ air
execute if score @s enemydummy matches 100.. run kill @s

tag @s add enemy_projectile