#FIRST TIME?
execute unless score 2 prizepacks matches 0.. run scoreboard players set 2 prizepacks 1

#GIVE LOOT
execute if score 2 prizepacks matches 1 run function alttp:loot/bluerupee
execute if score 2 prizepacks matches 2 run function alttp:loot/greenrupee
execute if score 2 prizepacks matches 3 run function alttp:loot/bluerupee
execute if score 2 prizepacks matches 4 run function alttp:loot/redrupee
execute if score 2 prizepacks matches 5 run function alttp:loot/bluerupee
execute if score 2 prizepacks matches 6 run function alttp:loot/greenrupee
execute if score 2 prizepacks matches 7 run function alttp:loot/bluerupee
execute if score 2 prizepacks matches 8 run function alttp:loot/bluerupee

#INCREASE VARIABLE
scoreboard players add 2 prizepacks 1
execute if score 2 prizepacks matches 9.. run scoreboard players set 2 prizepacks 1