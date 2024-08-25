execute at @s rotated ~ 0 run function animated_java:tristan/summon
execute as @e[type=item_display,tag=aj.tristan.root] run function animated_java:tristan/animations/idle/play
tag @e[type=item_display,tag=aj.tristan.root] add npc
tag @e[type=item_display,tag=aj.tristan.root] add tristan
execute if entity @s[tag=npcfocus] run tag @e[type=item_display,tag=aj.tristan.root] add npcfocus
kill @s