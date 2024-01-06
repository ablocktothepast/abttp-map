execute if score # gameplay matches 5..12 run tp @e[tag=amara] -294.25 -8.5 679 74 0
execute if score # gameplay matches 5..12 run tag @e[tag=amara] add npcfocus

execute if score # gameplay matches 5..11 run scoreboard players set id dialogue 357
execute if score # gameplay matches 12 if score firstbatch gameplay matches 3 if score 5 quests_2_progress matches 1 run scoreboard players set id dialogue 140
execute if score # gameplay matches 12 if score firstbatch gameplay matches 1..2 run scoreboard players set id dialogue 358
# execute if score # gameplay matches 13..14 run scoreboard players set id dialogue 359
# execute if score # gameplay matches 14 if score secondbatch gameplay matches 1 if score 6 quests_2_progress matches 5 run scoreboard players set id dialogue 360
# execute if score # gameplay matches 14 if score secondbatch gameplay matches 2 run scoreboard players set id dialogue 415

execute if score # gameplay matches 5..12 run function alttp:dialogue_start