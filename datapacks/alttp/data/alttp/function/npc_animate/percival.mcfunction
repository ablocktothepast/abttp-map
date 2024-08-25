execute at @s rotated ~ 0 run function animated_java:percival/summon
execute if score # gameplay matches ..14 as @e[type=item_display,tag=aj.percival.root] run function animated_java:percival/animations/idle_sitting/play
execute if score # gameplay matches 15.. as @e[type=item_display,tag=aj.percival.root] run function animated_java:percival/animations/idle/play
tag @e[type=item_display,tag=aj.percival.root] add npc
tag @e[type=item_display,tag=aj.percival.root] add percival
execute if entity @s[tag=npcfocus] run tag @e[type=item_display,tag=aj.percival.root] add npcfocus
kill @s