fill ~ ~ ~ ~ ~ ~ air replace light

scoreboard players add @s dummy 1

execute if score @s dummy matches 1..3 run tp @s ~ ~0.05 ~
execute if score @s dummy matches 4..10 run tp @s ~ ~0.03 ~
execute if score @s dummy matches 11..16 run tp @s ~ ~0.02 ~
execute if score @s dummy matches 17..20 run tp @s ~ ~0.01 ~

execute if score @s dummy matches 21..24 run tp @s ~ ~-0.01 ~
execute if score @s dummy matches 25..30 run tp @s ~ ~-0.02 ~
execute if score @s dummy matches 31..37 run tp @s ~ ~-0.03 ~
execute if score @s dummy matches 38..40 run tp @s ~ ~-0.05 ~

execute if score @s dummy matches 41..43 run tp @s ~ ~-0.05 ~
execute if score @s dummy matches 44..50 run tp @s ~ ~-0.03 ~
execute if score @s dummy matches 51..56 run tp @s ~ ~-0.02 ~
execute if score @s dummy matches 57..60 run tp @s ~ ~-0.01 ~

execute if score @s dummy matches 61..64 run tp @s ~ ~0.01 ~
execute if score @s dummy matches 65..70 run tp @s ~ ~0.02 ~
execute if score @s dummy matches 71..77 run tp @s ~ ~0.03 ~
execute if score @s dummy matches 78..80 run tp @s ~ ~0.05 ~

execute if score @s dummy matches 80.. run scoreboard players set @s dummy 0

#ANIMATION
scoreboard players add @s animationtick 1

execute if score @s animationtick matches 1..4 run data merge entity @s {item:{components:{"minecraft:custom_model_data":110},count:1,id:"minecraft:carrot_on_a_stick"}}
execute if score @s animationtick matches 5..8 run data merge entity @s {item:{components:{"minecraft:custom_model_data":111},count:1,id:"minecraft:carrot_on_a_stick"}}

execute if score @s animationtick matches 8.. run scoreboard players set @s animationtick 0

#Me emit light
execute at @s run fill ~ ~ ~ ~ ~ ~ light replace air