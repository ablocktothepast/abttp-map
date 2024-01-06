execute at @s rotated ~ 0 run function animated_java:elisabeth/summon
execute as @e[type=item_display,tag=aj.elisabeth.root] run function animated_java:elisabeth/animations/idle/play
execute if score # gameplay matches 9 if score elisabethfound gameplay matches 0 as @e[type=item_display,tag=aj.elisabeth.root] run function animated_java:elisabeth/animations/idle/stop
execute if score # gameplay matches 9 if score elisabethfound gameplay matches 0 as @e[type=item_display,tag=aj.elisabeth.root] run function animated_java:elisabeth/animations/idle/play
tag @e[type=item_display,tag=aj.elisabeth.root] add npc
tag @e[type=item_display,tag=aj.elisabeth.root] add elisabeth
execute if entity @s[tag=npcfocus] run tag @e[type=item_display,tag=aj.elisabeth.root] add npcfocus
kill @s