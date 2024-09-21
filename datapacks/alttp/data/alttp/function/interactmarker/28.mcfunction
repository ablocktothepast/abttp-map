execute if score # gameplay matches 14 if score secondbatch gameplay matches 2 run return 0

execute if score # gameplay matches 5.. run tp @e[tag=eamon] -252.0 -6 727 170 0
execute if score # gameplay matches 5.. run tag @e[tag=eamon] add npcfocus

execute if score # gameplay matches 5..11 run scoreboard players set id dialogue 362
execute if score # gameplay matches 12 if score firstbatch gameplay matches 3 run scoreboard players set id dialogue 363
execute if score # gameplay matches 12 if score firstbatch gameplay matches 1..2 run scoreboard players set id dialogue 364
execute if score # gameplay matches 13..14 run scoreboard players set id dialogue 366
execute store result score questprog dummy run data get storage minecraft:quests main[{id:6}].progress
execute if score # gameplay matches 14 if score secondbatch gameplay matches 1 if score questprog dummy matches 5 run scoreboard players set id dialogue 367
execute if score # gameplay matches 15.. run scoreboard players set id dialogue 368

execute if score # gameplay matches 5.. run function alttp:dialogue_start