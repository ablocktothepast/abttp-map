execute at @s rotated ~ 0 run function animated_java:alden/summon
execute as @e[type=item_display,tag=aj.alden.root] run function animated_java:alden/animations/idle/play
tag @e[type=item_display,tag=aj.alden.root] add npc
tag @e[type=item_display,tag=aj.alden.root] add alden
execute if entity @s[tag=npcfocus] run tag @e[type=item_display,tag=aj.alden.root] add npcfocus
kill @s