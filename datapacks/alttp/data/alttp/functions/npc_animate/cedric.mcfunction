execute at @s rotated ~ 0 run function animated_java:cedric/summon
execute as @e[type=item_display,tag=aj.cedric.root] run function animated_java:cedric/animations/idle/play
tag @e[type=item_display,tag=aj.cedric.root] add npc
tag @e[type=item_display,tag=aj.cedric.root] add cedric
execute if entity @s[tag=npcfocus] run tag @e[type=item_display,tag=aj.cedric.root] add npcfocus
kill @s