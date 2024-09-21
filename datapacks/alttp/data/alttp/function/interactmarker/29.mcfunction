execute if score # gameplay matches 14 if score secondbatch gameplay matches 2 run return 0

execute if score # gameplay matches 5.. run tp @e[tag=cedric] -252 -2 722 -11 0
execute if score # gameplay matches 5.. run tag @e[tag=cedric] add npcfocus

execute if score # gameplay matches 5..11 run scoreboard players set id dialogue 369
execute if score # gameplay matches 12 if score firstbatch gameplay matches 3 run scoreboard players set id dialogue 370
execute if score # gameplay matches 12 if score firstbatch gameplay matches 1..2 run scoreboard players set id dialogue 371
execute if score # gameplay matches 13..14 run scoreboard players set id dialogue 372
execute store result score questprog dummy run data get storage minecraft:quests main[{id:6}].progress
execute if score # gameplay matches 14 if score secondbatch gameplay matches 1 if score questprog dummy matches 5 run scoreboard players set id dialogue 373
execute if score # gameplay matches 15.. run scoreboard players set id dialogue 374

execute if score # gameplay matches 5.. run function alttp:dialogue_start