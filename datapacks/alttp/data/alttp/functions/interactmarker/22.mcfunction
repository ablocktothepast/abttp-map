execute if score # gameplay matches 14 if score secondbatch gameplay matches 2 run return 0

execute if score # gameplay matches 5.. run tp @e[tag=elowen] -338 4 683 62 0
execute if score # gameplay matches 5.. run tag @e[tag=elowen] add npcfocus

execute if score # gameplay matches 5..11 run scoreboard players set id dialogue 319
execute if score # gameplay matches 12 if score firstbatch gameplay matches 3 run scoreboard players set id dialogue 320
execute if score # gameplay matches 12 if score firstbatch gameplay matches 1..2 run scoreboard players set id dialogue 321
execute if score # gameplay matches 13..14 run scoreboard players set id dialogue 323
execute if score # gameplay matches 14 if score secondbatch gameplay matches 1 if score 6 quests_2_progress matches 5 run scoreboard players set id dialogue 324
execute if score # gameplay matches 15.. run scoreboard players set id dialogue 325

execute if score # gameplay matches 5.. run function alttp:dialogue_start