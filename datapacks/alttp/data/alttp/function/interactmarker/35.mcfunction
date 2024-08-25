execute if score # gameplay matches 14 if score secondbatch gameplay matches 2 run tp @e[tag=thaddeus] -401 -8 683 -63 0
execute if score # gameplay matches 14 if score secondbatch gameplay matches 2 run tag @e[tag=thaddeus] add npcfocus

execute if score # gameplay matches 14 if score secondbatch gameplay matches 2 run scoreboard players set id dialogue 406

execute if score # gameplay matches 14 if score secondbatch gameplay matches 2 run function alttp:dialogue_start

execute if score # gameplay matches 14 if score secondbatch gameplay matches 2 run return 0