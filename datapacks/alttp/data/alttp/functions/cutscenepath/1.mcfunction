execute if score tick cutscene matches 1..5 run tp @s -229 -4.5 573 -130 0

execute if score tick cutscene matches 3 as @e[type=item_display,tag=aj.elisabeth.root] run function animated_java:elisabeth/animations/emote/play
execute if score tick cutscene matches 3 as @e[type=item_display,tag=aj.elisabeth.root] at @s facing entity @p eyes run tp @s ~ ~ ~ ~ 0

execute if score tick cutscene matches 130 run tp @s -227.679 -4.5 574.488 -130 0
execute if score tick cutscene matches 130 as @e[type=item_display,tag=aj.bernard.root] run function animated_java:bernard/animations/emote/play
execute if score tick cutscene matches 130 as @e[type=item_display,tag=aj.bernard.root] at @s facing entity @p eyes run tp @s ~ ~ ~ ~ 0
execute if score tick cutscene matches 130 as @e[type=item_display,tag=aj.elisabeth.root] at @s run tp @s ~ ~ ~ 23 0

execute if score tick cutscene matches 260 run tp @s -226.5 -4.5 575.5 -130 0
execute if score tick cutscene matches 260 as @e[type=item_display,tag=aj.neal.root] run function animated_java:neal/animations/emote/play
execute if score tick cutscene matches 260 as @e[type=item_display,tag=aj.neal.root] at @s facing entity @p eyes run tp @s ~ ~ ~ ~ 0
execute if score tick cutscene matches 260 as @e[type=item_display,tag=aj.bernard.root] at @s run tp @s ~ ~ ~ 53 0