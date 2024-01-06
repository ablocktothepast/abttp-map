execute at @s rotated ~ 0 run function animated_java:amara/summon
execute if score # gameplay matches ..12 as @e[type=item_display,tag=aj.amara.root] run function animated_java:amara/animations/idle_sitting/play
execute if score # gameplay matches 13.. as @e[type=item_display,tag=aj.amara.root] run function animated_java:amara/animations/idle/play
tag @e[type=item_display,tag=aj.amara.root] add npc
tag @e[type=item_display,tag=aj.amara.root] add amara
execute if entity @s[tag=npcfocus] run tag @e[type=item_display,tag=aj.amara.root] add npcfocus
kill @s