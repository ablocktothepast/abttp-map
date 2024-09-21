execute if score # gameplay matches 5..14 if score melissa_guide gameplay matches 0 run tp @e[tag=melissa] -294 -9 637 -124 0
execute if score # gameplay matches 5..14 if score melissa_guide gameplay matches 0 run tag @e[tag=melissa] add npcfocus
execute if score # gameplay matches 5..14 if score melissa_guide gameplay matches 0 run schedule clear alttp:ajsummon/melissa_chance
execute if score # gameplay matches 5..14 if score melissa_guide gameplay matches 0 as @e[type=item_display,tag=aj.melissa.root] run function animated_java:melissa/animations/sweeping/stop
execute if score # gameplay matches 5..14 if score melissa_guide gameplay matches 0 as @e[type=item_display,tag=aj.melissa.root] run function animated_java:melissa/animations/idle/play
execute if score # gameplay matches 5..14 if score melissa_guide gameplay matches 0 as @e[type=item_display,tag=aj.melissa.root] run function animated_java:melissa/animations/blush/play

execute if score # gameplay matches 5..11 run scoreboard players set id dialogue 310
execute store result score questprog dummy run data get storage minecraft:quests main[{id:3}].progress
execute if score # gameplay matches 12 if score firstbatch gameplay matches 1 if score questprog dummy matches 1 run scoreboard players set id dialogue 100
execute if score # gameplay matches 12 if score firstbatch gameplay matches 1 if score questprog dummy matches 2 run scoreboard players set id dialogue 111
execute if score # gameplay matches 12 if score firstbatch gameplay matches 1 if score questprog dummy matches 3 run scoreboard players set id dialogue 116
execute if score # gameplay matches 12 unless score firstbatch gameplay matches 1 run scoreboard players set id dialogue 311
execute if score # gameplay matches 13..14 run scoreboard players set id dialogue 313
execute store result score questprog dummy run data get storage minecraft:quests main[{id:6}].progress
execute if score # gameplay matches 14 if score secondbatch gameplay matches 1 if score questprog dummy matches 5 run scoreboard players set id dialogue 314

execute if score # gameplay matches 14 if score secondbatch gameplay matches 2 run scoreboard players set id dialogue 409

execute if score # gameplay matches 5..14 if score melissa_guide gameplay matches 0 run function alttp:dialogue_start 