execute at @s rotated ~ 0 run function animated_java:neal/summon
execute as @e[type=item_display,tag=aj.neal.root] run function animated_java:neal/animations/idle/play
execute if score # gameplay matches 9 as @e[type=item_display,tag=aj.neal.root] run function animated_java:neal/animations/sleepy/play
tag @e[type=item_display,tag=aj.neal.root] add npc
tag @e[type=item_display,tag=aj.neal.root] add neal
execute if entity @s[tag=npcfocus] run tag @e[type=item_display,tag=aj.neal.root] add npcfocus
kill @s