execute if score # gameplay matches 14 if score secondbatch gameplay matches 2 run return 0

execute if score # gameplay matches 13.. run tp @e[tag=tristan] -332 2 650 -162 0
execute if score # gameplay matches 13.. run tag @e[tag=tristan] add npcfocus

execute if score # gameplay matches 13.. run scoreboard players set id dialogue 283
execute if score # gameplay matches 13.. run scoreboard players set angle dialogue 20
execute if score # gameplay matches 14 if score secondbatch gameplay matches 1 if score 6 quests_2_progress matches 5 run scoreboard players set id dialogue 284

execute if score # gameplay matches 13.. run function alttp:dialogue_start