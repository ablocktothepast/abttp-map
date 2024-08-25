execute at @s rotated ~ 0 run function animated_java:seraphina/summon
execute as @e[type=item_display,tag=aj.seraphina.root] run function animated_java:seraphina/animations/idle/play
tag @e[type=item_display,tag=aj.seraphina.root] add npc
tag @e[type=item_display,tag=aj.seraphina.root] add seraphina
execute if entity @s[tag=npcfocus] run tag @e[type=item_display,tag=aj.seraphina.root] add npcfocus
kill @s