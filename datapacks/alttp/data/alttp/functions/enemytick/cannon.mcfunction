#INITIATE AND FIX TO WALL
execute unless score @s enemydummy matches 1 rotated 0 0 unless block ^ ^ ^-1 #gothrough run tp @s ~ ~ ~ ~ ~
execute unless score @s enemydummy matches 1 rotated 0 0 unless block ^ ^ ^-1 #gothrough run scoreboard players set @s enemydummy 1
execute unless score @s enemydummy matches 1 rotated 90 0 unless block ^ ^ ^-1 #gothrough run tp @s ~ ~ ~ ~ ~
execute unless score @s enemydummy matches 1 rotated 90 0 unless block ^ ^ ^-1 #gothrough run scoreboard players set @s enemydummy 1
execute unless score @s enemydummy matches 1 rotated 180 0 unless block ^ ^ ^-1 #gothrough run tp @s ~ ~ ~ ~ ~
execute unless score @s enemydummy matches 1 rotated 180 0 unless block ^ ^ ^-1 #gothrough run scoreboard players set @s enemydummy 1
execute unless score @s enemydummy matches 1 rotated -90 0 unless block ^ ^ ^-1 #gothrough run tp @s ~ ~ ~ ~ ~
execute unless score @s enemydummy matches 1 rotated -90 0 unless block ^ ^ ^-1 #gothrough run scoreboard players set @s enemydummy 1

execute unless score @s enemydummy matches 1 run kill @s

execute unless score @s enemydummy5 matches 1 at @s align xyz positioned ~0.5 ~ ~0.5 positioned ^ ^ ^-0.3 run tp @s ~ ~ ~
scoreboard players set @s enemydummy5 1

#MOVEMENT AND ITS STATES
execute unless score @s enemydummy2 matches 0.. run scoreboard players set @s enemydummy2 1

execute at @s if score @s enemydummy2 matches 1 if block ^ ^ ^-1 #gothrough run tag @s add 1_back
execute at @s if score @s enemydummy2 matches 1 unless block ^0.5 ^ ^ #gothrough run scoreboard players set @s enemydummy2 2

execute at @s if score @s enemydummy2 matches 2 if block ^ ^ ^-1 #gothrough run tag @s add 2_back
execute at @s if score @s enemydummy2 matches 2 unless block ^-0.5 ^ ^ #gothrough run scoreboard players set @s enemydummy2 1

execute at @s if entity @s[tag=1_back] run tp @s ^-0.2 ^ ^
execute at @s if entity @s[tag=1_back] run scoreboard players set @s enemydummy2 2
execute at @s if entity @s[tag=1_back] run tag @s remove 1_back

execute at @s if entity @s[tag=2_back] run tp @s ^0.2 ^ ^
execute at @s if entity @s[tag=2_back] run scoreboard players set @s enemydummy2 1
execute at @s if entity @s[tag=2_back] run tag @s remove 2_back

execute at @s if score @s enemydummy2 matches 1 run tp @s ^0.1 ^ ^
execute at @s if score @s enemydummy2 matches 2 run tp @s ^-0.1 ^ ^

#SHOOTY SHOOTY
scoreboard players add @s enemydummy3 1
execute if score @s enemydummy3 matches 60.. run function alttp:cannonshoot