#FIRST TIME?
execute unless score 4 prizepacks matches 0.. run scoreboard players set 4 prizepacks 1

#GIVE LOOT
execute if score 4 prizepacks matches 1 run function alttp:loot/bomb_1
execute if score 4 prizepacks matches 2 run function alttp:loot/bomb_1
execute if score 4 prizepacks matches 3 run function alttp:loot/bomb_1
execute if score 4 prizepacks matches 4 run function alttp:loot/bomb_4
execute if score 4 prizepacks matches 5 run function alttp:loot/bomb_1
execute if score 4 prizepacks matches 6 run function alttp:loot/bomb_1
execute if score 4 prizepacks matches 7 run function alttp:loot/bomb_8
execute if score 4 prizepacks matches 8 run function alttp:loot/bomb_1

#INCREASE VARIABLE
scoreboard players add 4 prizepacks 1
execute if score 4 prizepacks matches 9.. run scoreboard players set 4 prizepacks 1