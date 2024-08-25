execute at @s rotated ~-90 0 run function animated_java:uncle_alphon/summon
execute as @e[type=item_display,tag=aj.uncle_alphon.root] run function animated_java:uncle_alphon/animations/idle/play
tag @e[type=item_display,tag=aj.uncle_alphon.root] add npc
tag @e[type=item_display,tag=aj.uncle_alphon.root] add unclestart
execute if entity @s[tag=npcfocus] run tag @e[type=item_display,tag=aj.uncle_alphon.root] add npcfocus
kill @s