execute if score # gameplay matches 14 if score secondbatch gameplay matches 2 run tp @e[tag=seraphina] -335 -2 713 69 0
execute if score # gameplay matches 14 if score secondbatch gameplay matches 2 run tag @e[tag=seraphina] add npcfocus

execute if score # gameplay matches 14 if score secondbatch gameplay matches 2 run scoreboard players set id dialogue 413

execute if score # gameplay matches 14 if score secondbatch gameplay matches 2 run function alttp:dialogue_start

execute if score # gameplay matches 14 if score secondbatch gameplay matches 2 run return 0