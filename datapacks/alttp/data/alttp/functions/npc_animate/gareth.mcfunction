execute at @s rotated ~ 0 run function animated_java:gareth/summon
execute as @e[type=item_display,tag=aj.gareth.root] run function animated_java:gareth/animations/idle/play
tag @e[type=item_display,tag=aj.gareth.root] add npc
tag @e[type=item_display,tag=aj.gareth.root] add gareth
execute if entity @s[tag=npcfocus] run tag @e[type=item_display,tag=aj.gareth.root] add npcfocus
kill @s