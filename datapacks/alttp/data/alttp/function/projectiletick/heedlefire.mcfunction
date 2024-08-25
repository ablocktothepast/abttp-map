execute unless score @s enemydummy matches -2147483648..2147483647 at @s unless block ~ ~ ~ air run kill @s
execute unless score @s enemydummy matches -2147483648..2147483647 at @s if block ~ ~ ~ air run setblock ~ ~ ~ fire
scoreboard players add @s enemydummy 1
execute if score @s enemydummy matches 60.. run setblock ~ ~ ~ air
execute if score @s enemydummy matches 60.. run kill @s

tag @s add enemy_projectile