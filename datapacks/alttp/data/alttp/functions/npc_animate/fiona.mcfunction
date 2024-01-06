execute at @s rotated ~ 0 run function animated_java:fiona/summon
execute if score # gameplay matches ..14 as @e[type=item_display,tag=aj.fiona.root] run function animated_java:fiona/animations/idle_sitting/play
execute if score # gameplay matches 15.. as @e[type=item_display,tag=aj.fiona.root] run function animated_java:fiona/animations/idle/play
tag @e[type=item_display,tag=aj.fiona.root] add npc
tag @e[type=item_display,tag=aj.fiona.root] add fiona
execute if entity @s[tag=npcfocus] run tag @e[type=item_display,tag=aj.fiona.root] add npcfocus
kill @s