execute at @s rotated ~ 0 run function animated_java:bernard/summon
execute as @e[type=item_display,tag=aj.bernard.root] run function animated_java:bernard/animations/idle/play
execute if score # gameplay matches 9 if score bernardfound gameplay matches 0 as @e[type=item_display,tag=aj.bernard.root] run function animated_java:bernard/animations/idle/stop
execute if score # gameplay matches 9 if score bernardfound gameplay matches 0 as @e[type=item_display,tag=aj.bernard.root] run function animated_java:bernard/animations/hiding/play
tag @e[type=item_display,tag=aj.bernard.root] add npc
tag @e[type=item_display,tag=aj.bernard.root] add bernard
execute if entity @s[tag=npcfocus] run tag @e[type=item_display,tag=aj.bernard.root] add npcfocus
kill @s