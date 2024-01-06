execute at @s rotated ~ 0 run function animated_java:thaddeus/summon
execute as @e[type=item_display,tag=aj.thaddeus.root] run function animated_java:thaddeus/animations/hovering/play
execute if score # gameplay matches 12 if score firstbatch gameplay matches 2 if score 4 quests_2_progress matches 2.. as @e[type=item_display,tag=aj.thaddeus.root] run function animated_java:thaddeus/animations/hovering/stop
execute if score # gameplay matches 12 if score firstbatch gameplay matches 2 if score 4 quests_2_progress matches 2.. as @e[type=item_display,tag=aj.thaddeus.root] run function animated_java:thaddeus/animations/idle/play
execute if score thaddeusmove gameplay matches 1.. as @e[type=item_display,tag=aj.thaddeus.root] run function animated_java:thaddeus/animations/hovering/stop
execute if score thaddeusmove gameplay matches 1.. as @e[type=item_display,tag=aj.thaddeus.root] run function animated_java:thaddeus/animations/idle/stop
execute if score thaddeusmove gameplay matches 1.. as @e[type=item_display,tag=aj.thaddeus.root] run function animated_java:thaddeus/animations/running/play
tag @e[type=item_display,tag=aj.thaddeus.root] add npc
tag @e[type=item_display,tag=aj.thaddeus.root] add thaddeus
execute if entity @s[tag=npcfocus] run tag @e[type=item_display,tag=aj.thaddeus.root] add npcfocus
kill @s