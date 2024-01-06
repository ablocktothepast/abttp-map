#needs animation!

execute store result score result rand run random value 1..3

execute if score result rand matches 1 unless score @p rupees matches 1.. run scoreboard players set result rand 0
execute if score result rand matches 2 unless score @p arrows matches 5.. run scoreboard players set result rand 0
execute if score result rand matches 3 unless score @p bombs matches 1.. run scoreboard players set result rand 0

execute store result score result rand run random value 1..3

execute if score result rand matches 1 unless score @p rupees matches 1.. run scoreboard players set result rand 0
execute if score result rand matches 2 unless score @p arrows matches 5.. run scoreboard players set result rand 0
execute if score result rand matches 3 unless score @p bombs matches 1.. run scoreboard players set result rand 0

execute if score result rand matches 1.. store result score @s enemydummy2 run scoreboard players get result rand

execute if score result rand matches 1 run scoreboard players remove @p rupees 1
execute if score result rand matches 2 run scoreboard players remove @p arrows 5
execute if score result rand matches 3 run scoreboard players remove @p bombs 1

execute if score result rand matches 1.. run playsound alttp.bounce weather @p ~ ~ ~ 1 1