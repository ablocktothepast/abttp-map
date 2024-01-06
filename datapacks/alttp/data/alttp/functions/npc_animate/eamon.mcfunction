execute at @s rotated ~ 0 run function animated_java:eamon/summon
execute as @e[type=item_display,tag=aj.eamon.root] run function animated_java:eamon/animations/idle/play
tag @e[type=item_display,tag=aj.eamon.root] add npc
tag @e[type=item_display,tag=aj.eamon.root] add eamon
execute if entity @s[tag=npcfocus] run tag @e[type=item_display,tag=aj.eamon.root] add npcfocus
kill @s