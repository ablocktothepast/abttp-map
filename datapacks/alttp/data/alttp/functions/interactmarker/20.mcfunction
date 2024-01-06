execute if score # gameplay matches 14 if score secondbatch gameplay matches 2 run return 0

execute if score # gameplay matches 8.. run tp @e[tag=owen] -372 1 726 -167 0
execute if score # gameplay matches 8.. run tag @e[tag=owen] add npcfocus

execute if score # gameplay matches 8.. run scoreboard players set id dialogue 295
execute if score # gameplay matches 14 if score secondbatch gameplay matches 1 if score 6 quests_2_progress matches 5 run scoreboard players set id dialogue 296

execute if score # gameplay matches 8.. run scoreboard players set angle dialogue 20
execute if score # gameplay matches 8.. run function alttp:dialogue_start