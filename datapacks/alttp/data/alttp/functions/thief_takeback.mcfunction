execute if score @s enemydummy2 matches 1 run scoreboard players add @p rupees 1
execute if score @s enemydummy2 matches 2 run scoreboard players add @p rupees 5
execute if score @s enemydummy2 matches 3 run scoreboard players add @p bombs 3
execute if score @s enemydummy2 matches 4 run scoreboard players add @p arrows 5

scoreboard players set @s enemydummy 3

playsound alttp.rupee weather @p ~ ~ ~ 1 1