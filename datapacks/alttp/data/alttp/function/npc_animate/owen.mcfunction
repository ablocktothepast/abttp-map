execute at @s rotated ~ 0 run function animated_java:owen/summon
execute as @e[type=item_display,tag=aj.owen.root] run function animated_java:owen/animations/idle/play
tag @e[type=item_display,tag=aj.owen.root] add npc
tag @e[type=item_display,tag=aj.owen.root] add owen
execute if entity @s[tag=npcfocus] run tag @e[type=item_display,tag=aj.owen.root] add npcfocus
kill @s