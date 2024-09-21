execute store result score questprog dummy run data get storage minecraft:quests main[{id:4}].progress

execute if score # gameplay matches 12 if score firstbatch gameplay matches 2 if score questprog dummy matches 3 run tag @e[tag=thaddeus] add npcfocus
execute if score # gameplay matches 12 if score firstbatch gameplay matches 2 if score questprog dummy matches 3 run tp @e[tag=thaddeus] -401 -11 711 42 0
execute if score # gameplay matches 12 if score firstbatch gameplay matches 2 if score questprog dummy matches 3 run scoreboard players set id dialogue 125
execute if score # gameplay matches 12 if score firstbatch gameplay matches 2 if score questprog dummy matches 3 run function alttp:dialogue_start

execute if score # gameplay matches 12 if score firstbatch gameplay matches 2 if score questprog dummy matches 4 run tag @e[tag=thaddeus] add npcfocus
execute if score # gameplay matches 12 if score firstbatch gameplay matches 2 if score questprog dummy matches 4 run tp @e[tag=thaddeus] -401 -11 711 42 0
execute if score # gameplay matches 12 if score firstbatch gameplay matches 2 if score questprog dummy matches 4 run scoreboard players set id dialogue 131
execute if score # gameplay matches 12 if score firstbatch gameplay matches 2 if score questprog dummy matches 4 run function alttp:dialogue_start