execute store result score questprog dummy run data get storage minecraft:quests main[{id:5}].progress

execute if score # gameplay matches 12 if score firstbatch gameplay matches 3 if score questprog dummy matches 1 run tag @e[tag=bertram] add npcfocus
execute if score # gameplay matches 12 if score firstbatch gameplay matches 3 if score questprog dummy matches 1 run tp @e[tag=bertram] -301 -7.8125 679 facing entity @p
execute if score # gameplay matches 12 if score firstbatch gameplay matches 3 if score questprog dummy matches 1 run scoreboard players set id dialogue 143
execute if score # gameplay matches 12 if score firstbatch gameplay matches 3 if score questprog dummy matches 1 run function alttp:dialogue_start

execute if score # gameplay matches 12 if score firstbatch gameplay matches 3 if score questprog dummy matches 2 run tag @e[tag=bertram] add npcfocus
execute if score # gameplay matches 12 if score firstbatch gameplay matches 3 if score questprog dummy matches 2 run tp @e[tag=bertram] -301 -7.8125 679 facing entity @p
execute if score # gameplay matches 12 if score firstbatch gameplay matches 3 if score questprog dummy matches 2 run scoreboard players set id dialogue 147
execute if score # gameplay matches 12 if score firstbatch gameplay matches 3 if score questprog dummy matches 2 run function alttp:dialogue_start

execute if score # gameplay matches 5..14 run tp @e[tag=bertram] -301 -7.8125 679 -90 0
execute if score # gameplay matches 5..14 run tag @e[tag=bertram] add npcfocus

execute if score # gameplay matches 5..11 run scoreboard players set id dialogue 339
execute if score # gameplay matches 12 if score firstbatch gameplay matches 3 if score questprog dummy matches 1 run scoreboard players set id dialogue 143
execute if score # gameplay matches 12 if score firstbatch gameplay matches 3 if score questprog dummy matches 2 run scoreboard players set id dialogue 147
execute if score # gameplay matches 12 if score firstbatch gameplay matches 1..2 run scoreboard players set id dialogue 340
execute if score # gameplay matches 13..14 run scoreboard players set id dialogue 341
execute store result score questprog dummy run data get storage minecraft:quests main[{id:5}].progress
execute if score # gameplay matches 14 if score secondbatch gameplay matches 1 if score questprog dummy matches 5 run scoreboard players set id dialogue 342
execute if score # gameplay matches 14 if score secondbatch gameplay matches 2 run scoreboard players set id dialogue 418

execute if score # gameplay matches 5..14 run function alttp:dialogue_start