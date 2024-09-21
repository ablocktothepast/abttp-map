execute if score # gameplay matches 5..14 run tp @e[tag=lysander] -295.25 -8.5 675 58 0
execute if score # gameplay matches 5..14 run tag @e[tag=lysander] add npcfocus

execute if score # gameplay matches 5..11 run scoreboard players set id dialogue 349
execute store result score questprog dummy run data get storage minecraft:quests main[{id:5}].progress
execute if score # gameplay matches 12 if score firstbatch gameplay matches 3 if score questprog dummy matches 1 run scoreboard players set id dialogue 142
execute if score # gameplay matches 12 if score firstbatch gameplay matches 1..2 run scoreboard players set id dialogue 350
execute if score # gameplay matches 13..14 run scoreboard players set id dialogue 351
execute store result score questprog dummy run data get storage minecraft:quests main[{id:6}].progress
execute if score # gameplay matches 14 if score secondbatch gameplay matches 1 if score questprog dummy matches 5 run scoreboard players set id dialogue 355
execute if score # gameplay matches 14 if score secondbatch gameplay matches 2 run scoreboard players set id dialogue 417

execute if score # gameplay matches 5..14 run function alttp:dialogue_start