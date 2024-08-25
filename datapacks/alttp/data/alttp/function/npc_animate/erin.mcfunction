execute at @s rotated ~ 0 run function animated_java:erin/summon
kill @e[type=marker,tag=erin_marker]
execute if score # gameplay matches ..13 as @e[type=item_display,tag=aj.erin.root] at @s run summon marker -292 -9 644 {Tags:["erin_marker"]}
execute if score # gameplay matches 14.. run tp @e[tag=aj.erin.root] -300 -13.4375 646 84 0
execute if score # gameplay matches 14 if score secondbatch gameplay matches 2 run tp @e[tag=aj.erin.root] -293 -9 638 -119 0
execute if score # gameplay matches ..13 as @e[type=item_display,tag=aj.erin.root] run function animated_java:erin/animations/running/play
execute if score # gameplay matches 14.. as @e[type=item_display,tag=aj.erin.root] run function animated_java:erin/animations/idle/play
tag @e[type=item_display,tag=aj.erin.root] add npc
tag @e[type=item_display,tag=aj.erin.root] add erin
tag @e[type=item_display,tag=aj.erin.root] add dynamic
execute if entity @s[tag=npcfocus] run tag @e[type=item_display,tag=aj.erin.root] add npcfocus
kill @s