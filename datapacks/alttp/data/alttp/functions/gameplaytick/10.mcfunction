execute if score alldown gameplay matches 1.. run scoreboard players remove alldown gameplay 1

execute if score alldown gameplay matches 180 as @e[type=item_display,tag=aj.elisabeth.root] run function animated_java:elisabeth/animations/departure/play
execute if score alldown gameplay matches 120 run tp @e[tag=elisabeth] -228 -4 572 51 0

execute if score alldown gameplay matches 180 as @e[type=item_display,tag=aj.bernard.root] run function animated_java:bernard/animations/departure/play
execute if score alldown gameplay matches 141..145 as @e[type=item_display,tag=aj.bernard.root] at @s run particle cloud ~ ~ ~ 0.5 1.5 0.5 0 250 force
execute if score alldown gameplay matches 146..150 as @e[type=item_display,tag=aj.bernard.root] at @s run particle cloud ~ ~ ~ 0.5 1.5 0.5 0 200 force
execute if score alldown gameplay matches 151..155 as @e[type=item_display,tag=aj.bernard.root] at @s run particle cloud ~ ~ ~ 0.5 1.3 0.5 0 150 force
execute if score alldown gameplay matches 156..160 as @e[type=item_display,tag=aj.bernard.root] at @s run particle cloud ~ ~ ~ 0.5 1.0 0.5 0 100 force
execute if score alldown gameplay matches 161..165 as @e[type=item_display,tag=aj.bernard.root] at @s run particle cloud ~ ~ ~ 0.5 0.7 0.5 0 50 force
execute if score alldown gameplay matches 166..170 as @e[type=item_display,tag=aj.bernard.root] at @s run particle cloud ~ ~ ~ 0.5 0.4 0.5 0 20 force
execute if score alldown gameplay matches 171..175 as @e[type=item_display,tag=aj.bernard.root] at @s run particle cloud ~ ~ ~ 0.5 0.2 0.5 0 10 force
execute if score alldown gameplay matches 176..180 as @e[type=item_display,tag=aj.bernard.root] at @s run particle cloud ~ ~ ~ 0.5 0.1 0.5 0 5 force

execute if score alldown gameplay matches 180 as @e[type=item_display,tag=aj.neal.root] run function animated_java:neal/animations/departure/play

execute if score alldown gameplay matches 95 run tp @e[tag=bernard] -227 -4 573 48 0
execute if score alldown gameplay matches 120 run tp @e[tag=neal] -226 -4 574 45 0
execute if score alldown gameplay matches 120 as @e[type=item_display,tag=aj.neal.root] run function animated_java:neal/animations/sleepy/stop
execute if score alldown gameplay matches 120 as @e[type=item_display,tag=aj.neal.root] run function animated_java:neal/animations/idle/play

execute if score alldown gameplay matches 145 as @e[type=item_display,tag=aj.bernard.root] run function animated_java:bernard/animations/idle/stop
execute if score alldown gameplay matches 145 as @e[type=item_display,tag=aj.bernard.root] run function animated_java:bernard/animations/idle/play

execute if score alldown gameplay matches 120 as @e[type=item_display,tag=aj.elisabeth.root] run function animated_java:elisabeth/animations/idle/stop
execute if score alldown gameplay matches 120 as @e[type=item_display,tag=aj.elisabeth.root] run function animated_java:elisabeth/animations/idle/play

execute store result score time dummy run time query daytime
execute if score time dummy matches ..12000 run time add 1t