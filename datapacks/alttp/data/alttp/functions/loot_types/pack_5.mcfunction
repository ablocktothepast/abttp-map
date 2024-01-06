#FIRST TIME?
execute unless score 5 prizepacks matches 0.. run scoreboard players set 5 prizepacks 1

#GIVE LOOT
execute if score 5 prizepacks matches 1 run function alttp:loot/arrow_5
execute if score 5 prizepacks matches 2 run function alttp:loot/heart
execute if score 5 prizepacks matches 3 run function alttp:loot/arrow_5
execute if score 5 prizepacks matches 4 run function alttp:loot/arrow_10
execute if score 5 prizepacks matches 5 run function alttp:loot/arrow_5
execute if score 5 prizepacks matches 6 run function alttp:loot/heart
execute if score 5 prizepacks matches 7 run function alttp:loot/arrow_5
execute if score 5 prizepacks matches 8 run function alttp:loot/arrow_10

#INCREASE VARIABLE
scoreboard players add 5 prizepacks 1
execute if score 5 prizepacks matches 9.. run scoreboard players set 5 prizepacks 1