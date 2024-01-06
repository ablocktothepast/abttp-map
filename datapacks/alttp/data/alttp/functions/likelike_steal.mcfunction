execute store result score result rand run random value 1..10

execute if score result rand matches 1..2 run scoreboard players remove @p rupees 2
execute if score result rand matches 1..2 run playsound alttp.rupee weather @p ~ ~ ~ 1 0.7

execute if score result rand matches 3..5 run scoreboard players remove @p arrows 2
execute if score result rand matches 3..5 run playsound alttp.heart weather @p ~ ~ ~ 1 0.7

execute if score result rand matches 6..7 run scoreboard players remove @p rupees 5
execute if score result rand matches 6..7 run playsound alttp.rupee weather @p ~ ~ ~ 1 0.7

execute if score result rand matches 8..10 if score @p shieldtier matches 1..2 run scoreboard players remove @p shieldtier 1
execute if score result rand matches 8..10 run playsound entity.player.burp weather @p ~ ~ ~ 1 0.85

execute store result score @s enemydummy4 run scoreboard players get result rand

scoreboard players set @s enemydummy3 400
scoreboard players set @s enemydummy2 0
tag @p remove likelikesucked