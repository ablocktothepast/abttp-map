execute at @s rotated ~ 0 run function animated_java:agatha/summon
execute as @e[type=item_display,tag=aj.agatha.root] run function animated_java:agatha/animations/idle/play
tag @e[type=item_display,tag=aj.agatha.root] add npc
tag @e[type=item_display,tag=aj.agatha.root] add agatha
execute if entity @s[tag=npcfocus] run tag @e[type=item_display,tag=aj.agatha.root] add npcfocus
kill @s