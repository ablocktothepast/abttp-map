execute if score # gameplay matches 14 if score secondbatch gameplay matches 2 run tp @e[tag=agatha] -288 -9 648 154 0
execute if score # gameplay matches 14 if score secondbatch gameplay matches 2 run tag @e[tag=agatha] add npcfocus

execute if score # gameplay matches 14 if score secondbatch gameplay matches 2 run scoreboard players set id dialogue 410

execute if score # gameplay matches 14 if score secondbatch gameplay matches 2 run function alttp:dialogue_start

execute if score # gameplay matches 14 if score secondbatch gameplay matches 2 run return 0