scoreboard players add @s enemydummy 1
execute if score @s enemydummy matches 1 run fill ~ ~ ~ ~ ~2 ~ light[level=3] replace air
execute if score @s enemydummy matches 3 run fill ~ ~ ~ ~ ~2 ~ light[level=6] replace light
execute if score @s enemydummy matches 5 run fill ~ ~ ~ ~ ~2 ~ light[level=9] replace light
execute if score @s enemydummy matches 15 run fill ~ ~ ~ ~ ~2 ~ light[level=6] replace light
execute if score @s enemydummy matches 17 run fill ~ ~ ~ ~ ~2 ~ light[level=3] replace light
execute if score @s enemydummy matches 20.. run fill ~ ~ ~ ~ ~2 ~ air replace light
execute if score @s enemydummy matches 20.. run kill @s