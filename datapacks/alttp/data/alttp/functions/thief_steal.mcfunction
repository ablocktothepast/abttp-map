#1=rupee, 2=5 rupee, 3=3 bomb, 4=5 arrow

tag @s remove tagain
execute store result score result rand run random value 1..4

execute if score result rand matches 1 if score @p rupees matches 1.. run scoreboard players set @s enemydummy2 1
execute if score result rand matches 1 if score @p rupees matches 1.. run scoreboard players remove @p rupees 1
execute if score result rand matches 2 if score @p rupees matches 5.. run scoreboard players set @s enemydummy2 2
execute if score result rand matches 2 if score @p rupees matches 5.. run scoreboard players remove @p rupees 5
execute if score result rand matches 3 if score @p bombs matches 3.. run scoreboard players set @s enemydummy2 3
execute if score result rand matches 3 if score @p bombs matches 3.. run scoreboard players remove @p bombs 3
execute if score result rand matches 4 if score @p arrows matches 5.. run scoreboard players set @s enemydummy2 4
execute if score result rand matches 4 if score @p arrows matches 5.. run scoreboard players remove @p arrows 5

execute if score result rand matches 1 unless score @p rupees matches 1.. run tag @s add tagain
execute if score result rand matches 2 unless score @p rupees matches 5.. run tag @s add tagain
execute if score result rand matches 3 unless score @p bombs matches 3.. run tag @s add tagain
execute if score result rand matches 4 unless score @p arrows matches 5.. run tag @s add tagain

scoreboard players set @s enemydummy 2

execute unless score @p rupees matches 1.. unless score @p bombs matches 3.. unless score @p arrows matches 5.. run tellraw @p ["",{"text":"[Thief] ","color":"gray"},"Ghaah! I have nothing to steal from a poor guy like you!"]
execute unless score @p rupees matches 1.. unless score @p bombs matches 3.. unless score @p arrows matches 5.. run tag @s remove tagain

execute if entity @s[tag=tagain] run function alttp:thief_steal

playsound alttp.rupee weather @p ~ ~ ~ 1 1