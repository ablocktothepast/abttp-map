execute if score @s enemydummy4 matches 1..2 run scoreboard players add @p rupees 2
execute if score @s enemydummy4 matches 1..2 run playsound alttp.rupee weather @p ~ ~ ~ 1 1

execute if score @s enemydummy4 matches 3..5 run scoreboard players add @p arrows 2
execute if score @s enemydummy4 matches 3..5 run playsound alttp.heart weather @p ~ ~ ~ 1 1

execute if score @s enemydummy4 matches 6..7 run scoreboard players add @p rupees 5
execute if score @s enemydummy4 matches 6..7 run playsound alttp.rupee weather @p ~ ~ ~ 1 0.7

execute if score @s enemydummy4 matches 8..10 if score @p shieldtier matches 0..1 run scoreboard players add @p shieldtier 1
execute if score @s enemydummy4 matches 8..10 run playsound alttp.heart weather @p ~ ~ ~ 1 1