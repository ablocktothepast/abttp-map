execute if score # gameplay matches 14 if score secondbatch gameplay matches 2 run return 0

execute if score # gameplay matches 5.. run tp @e[tag=agatha] -296 -5 668 -144 0
execute if score # gameplay matches 5.. run tag @e[tag=agatha] add npcfocus

execute if score # gameplay matches 5..13 run scoreboard players set id dialogue 337
execute store result score questprog dummy run data get storage minecraft:quests main[{id:6}].progress
execute if score secondbatch gameplay matches 1 if score # gameplay matches 14 if score questprog dummy matches ..4 run scoreboard players set id dialogue 254
execute if score secondbatch gameplay matches 1 if score # gameplay matches 14 if score questprog dummy matches ..4 as @e[type=item_display,tag=agatha] run function animated_java:agatha/animations/thank_you_thank_you/play
execute if score secondbatch gameplay matches 1 if score # gameplay matches 14 if score questprog dummy matches 5 run scoreboard players set id dialogue 256
execute if score # gameplay matches 15.. run scoreboard players set id dialogue 338

execute if score # gameplay matches 5.. run scoreboard players set angle dialogue 20
execute if score # gameplay matches 5.. run function alttp:dialogue_start