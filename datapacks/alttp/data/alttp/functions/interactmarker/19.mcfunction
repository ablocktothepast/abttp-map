execute if score # gameplay matches 14 if score secondbatch gameplay matches 2 run return 0

execute if score # gameplay matches 5.. run tp @e[tag=seraphina] -323 -1 714 4 0
execute if score # gameplay matches 5.. run tag @e[tag=seraphina] add npcfocus

execute if score # gameplay matches 5..11 run scoreboard players set id dialogue 285
execute if score # gameplay matches 12 if score firstbatch gameplay matches 3 run scoreboard players set id dialogue 286
execute if score # gameplay matches 12 if score firstbatch gameplay matches 1..2 run scoreboard players set id dialogue 288
execute if score # gameplay matches 13.. run scoreboard players set id dialogue 289
execute if score # gameplay matches 14 if score secondbatch gameplay matches 1 if score 6 quests_2_progress matches 5 run scoreboard players set id dialogue 290

execute if score # gameplay matches 5.. run function alttp:dialogue_start