execute at @s rotated ~ 0 run function animated_java:erin/summon
kill @e[type=marker,tag=erin_marker]
execute if score # gameplay matches ..13 as @e[type=item_display,tag=aj.erin.root] at @s run summon marker -292 -9 644 {Tags:["erin_marker"]}
execute if score # gameplay matches ..13 as @e[type=item_display,tag=aj.erin.root] run function animated_java:erin/animations/running/play
execute if score # gameplay matches 14.. as @e[type=item_display,tag=aj.erin.root] run function animated_java:erin/animations/idle/play
tag @e[type=item_display,tag=aj.erin.root] add npc
tag @e[type=item_display,tag=aj.erin.root] add erin
tag @e[type=item_display,tag=aj.erin.root] add dynamic
execute if entity @s[tag=npcfocus] run tag @e[type=item_display,tag=aj.erin.root] add npcfocus
kill @s