execute if score # gameplay matches 5..14 run tp @e[tag=fiona] -294.25 -8.5 677 75 0
execute if score # gameplay matches 5..14 run tag @e[tag=fiona] add npcfocus

execute if score # gameplay matches 5..11 run scoreboard players set id dialogue 375
execute store result score questprog dummy run data get storage minecraft:quests main[{id:5}].progress
execute if score # gameplay matches 12 if score firstbatch gameplay matches 3 if score questprog dummy matches 1 run scoreboard players set id dialogue 141
execute if score # gameplay matches 12 if score firstbatch gameplay matches 1..2 run scoreboard players set id dialogue 376
execute if score # gameplay matches 13..14 run scoreboard players set id dialogue 380
execute store result score questprog dummy run data get storage minecraft:quests main[{id:6}].progress
execute if score # gameplay matches 14 if score secondbatch gameplay matches 1 if score questprog dummy matches 5 run scoreboard players set id dialogue 381
execute if score # gameplay matches 14 if score secondbatch gameplay matches 2 run scoreboard players set id dialogue 416

execute if score # gameplay matches 5..14 run function alttp:dialogue_start