execute if score # gameplay matches 5..12 run tp @e[tag=tristan] -246 -11 631 42 0
execute if score # gameplay matches 5..12 run tag @e[tag=tristan] add npcfocus

execute if score # gameplay matches 5..11 run scoreboard players set id dialogue 269
execute if score # gameplay matches 12 if score firstbatch gameplay matches 3 run scoreboard players set id dialogue 273
execute if score # gameplay matches 12 if score firstbatch gameplay matches 1..2 run scoreboard players set id dialogue 277

execute if score # gameplay matches 5..12 run function alttp:dialogue_start