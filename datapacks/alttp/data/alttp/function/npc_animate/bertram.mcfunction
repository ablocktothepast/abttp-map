execute at @s rotated ~ 0 run function animated_java:bertram/summon
execute unless score bertramwalk gameplay matches 1.. as @e[type=item_display,tag=aj.bertram.root] run function animated_java:bertram/animations/idle/play
execute if score bertramwalk gameplay matches 1.. as @e[type=item_display,tag=aj.bertram.root] run function animated_java:bertram/animations/walking/play
tag @e[type=item_display,tag=aj.bertram.root] add npc
tag @e[type=item_display,tag=aj.bertram.root] add bertram
execute if entity @s[tag=npcfocus] run tag @e[type=item_display,tag=aj.bertram.root] add npcfocus
kill @s