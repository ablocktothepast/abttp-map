execute if score # gameplay matches 14 if score secondbatch gameplay matches 2 run return 0

execute if score # gameplay matches 5.. run tp @e[tag=thaddeus] -410 -8 680 -90 0
execute if score # gameplay matches 5.. run tag @e[tag=thaddeus] add npcfocus

execute if score # gameplay matches 5..11 run scoreboard players set id dialogue 297
execute if score # gameplay matches 12 if score firstbatch gameplay matches 2 run scoreboard players set id dialogue 118
execute if score # gameplay matches 12 unless score firstbatch gameplay matches 2 run scoreboard players set id dialogue 301
execute if score # gameplay matches 13.. run scoreboard players set id dialogue 308
execute store result score questprog dummy run data get storage minecraft:quests main[{id:6}].progress
execute if score # gameplay matches 14 if score secondbatch gameplay matches 1 if score questprog dummy matches 5 run scoreboard players set id dialogue 309

execute if score # gameplay matches 5.. run function alttp:dialogue_start