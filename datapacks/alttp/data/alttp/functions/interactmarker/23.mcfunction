execute if score # gameplay matches 14 if score secondbatch gameplay matches 2 run return 0

execute if score # gameplay matches 5.. run tp @e[tag=gareth] -339 9.5 683 5 0
execute if score # gameplay matches 5.. run tag @e[tag=gareth] add npcfocus

execute if score # gameplay matches 5..11 run scoreboard players set id dialogue 326
execute if score # gameplay matches 12 if score firstbatch gameplay matches 3 run scoreboard players set id dialogue 328
execute if score # gameplay matches 12 if score firstbatch gameplay matches 1..2 run scoreboard players set id dialogue 329
execute if score # gameplay matches 13..14 run scoreboard players set id dialogue 333
execute if score # gameplay matches 14 if score secondbatch gameplay matches 1 if score 6 quests_2_progress matches 5 run scoreboard players set id dialogue 334
execute if score # gameplay matches 15.. run scoreboard players set id dialogue 336

execute if score # gameplay matches 5.. run function alttp:dialogue_start