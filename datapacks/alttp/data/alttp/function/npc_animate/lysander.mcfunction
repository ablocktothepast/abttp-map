execute at @s rotated ~ 0 run function animated_java:lysander/summon
execute if score # gameplay matches ..14 as @e[type=item_display,tag=aj.lysander.root] run function animated_java:lysander/animations/idle_sitting/play
execute if score # gameplay matches 15.. as @e[type=item_display,tag=aj.lysander.root] run function animated_java:lysander/animations/idle/play
tag @e[type=item_display,tag=aj.lysander.root] add npc
tag @e[type=item_display,tag=aj.lysander.root] add lysander
execute if entity @s[tag=npcfocus] run tag @e[type=item_display,tag=aj.lysander.root] add npcfocus
kill @s