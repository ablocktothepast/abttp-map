execute if score # gameplay matches 5..14 positioned -309 -2 609 run tp @e[tag=unclestart] -309 -2 609 37 0
execute if score # gameplay matches 5..14 run tag @e[tag=unclestart] add npcfocus

execute if score # gameplay matches 5 run scoreboard players set id dialogue 9
execute if score # gameplay matches 6 run scoreboard players set id dialogue 24
execute if score # gameplay matches 7 run scoreboard players set id dialogue 28
execute if score # gameplay matches 8 run scoreboard players set id dialogue 74
execute if score # gameplay matches 9..10 run scoreboard players set id dialogue 75
execute if score # gameplay matches 11 run scoreboard players set id dialogue 77
execute if score # gameplay matches 12 run scoreboard players set id dialogue 235
execute if score # gameplay matches 13 run scoreboard players set id dialogue 236
execute if score # gameplay matches 14 if score secondbatch gameplay matches 2 positioned -309 -2 609 if entity @e[tag=muckyspider,distance=..10] run scoreboard players set id dialogue 259
execute if score # gameplay matches 14 if score secondbatch gameplay matches 2 positioned -309 -2 609 unless entity @e[tag=muckyspider,distance=..10] run scoreboard players set id dialogue 260
execute if score # gameplay matches 14 if score secondbatch gameplay matches 1 if score 6 quests_2_progress matches 1..4 run scoreboard players set id dialogue 266
execute if score # gameplay matches 14 if score secondbatch gameplay matches 1 if score 6 quests_2_progress matches 5 run scoreboard players set id dialogue 267

execute if score # gameplay matches 5..14 run function alttp:dialogue_start

execute if score # gameplay matches 5 run scoreboard players set # gameplay 6