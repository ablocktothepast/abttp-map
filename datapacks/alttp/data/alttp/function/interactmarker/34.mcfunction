execute if score # gameplay matches 14 if score secondbatch gameplay matches 2 run return 0

execute if score # gameplay matches 5..13 run tag @e[tag=erin] add npcfocus
execute if score # gameplay matches 5..13 run scoreboard players set angle dialogue 20
execute if score # gameplay matches 5..13 as @e[type=item_display,tag=erin] run function animated_java:erin/animations/running/stop
execute if score # gameplay matches 5..13 as @e[type=item_display,tag=erin] run function animated_java:erin/animations/idle/play
execute if score # gameplay matches 5..13 at @e[tag=erin] run tp @e[tag=erin] ~ ~ ~ facing entity @p

execute if score # gameplay matches 14.. run tp @e[tag=erin] -300 -13.4375 646 79 0
execute if score # gameplay matches 14.. run tag @e[tag=erin] add npcfocus

execute if score # gameplay matches 5..11 run scoreboard players set id dialogue 401
execute if score # gameplay matches 12 if score firstbatch gameplay matches 1 run scoreboard players set id dialogue 402
execute if score # gameplay matches 12 if score firstbatch gameplay matches 2..3 run scoreboard players set id dialogue 403
execute if score # gameplay matches 13.. run scoreboard players set id dialogue 404
execute if score # gameplay matches 14 if score secondbatch gameplay matches 1 if score 6 quests_2_progress matches 5 run scoreboard players set id dialogue 405

execute if score # gameplay matches 5.. run function alttp:dialogue_start