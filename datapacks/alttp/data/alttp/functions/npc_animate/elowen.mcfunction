execute at @s rotated ~ 0 run function animated_java:elowen/summon
execute as @e[type=item_display,tag=aj.elowen.root] run function animated_java:elowen/animations/idle/play
tag @e[type=item_display,tag=aj.elowen.root] add npc
tag @e[type=item_display,tag=aj.elowen.root] add elowen
execute if entity @s[tag=npcfocus] run tag @e[type=item_display,tag=aj.elowen.root] add npcfocus
kill @s