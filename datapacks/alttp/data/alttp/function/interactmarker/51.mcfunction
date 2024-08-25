execute if score melissa_guide gameplay matches 2 run tp @e[tag=melissa] -307.554 -14 641.564 46 0
execute if score melissa_guide gameplay matches 2 run tag @e[tag=melissa] add npcfocus
execute if score melissa_guide gameplay matches 2 run schedule clear alttp:ajsummon/melissa_chance
execute if score melissa_guide gameplay matches 2 as @e[type=item_display,tag=aj.melissa.root] run function animated_java:melissa/animations/sweeping/stop
execute if score melissa_guide gameplay matches 2 as @e[type=item_display,tag=aj.melissa.root] run function animated_java:melissa/animations/idle/play

execute if score melissa_guide gameplay matches 2 run scoreboard players set id dialogue 438

execute if score melissa_guide gameplay matches 2 run function alttp:dialogue_start