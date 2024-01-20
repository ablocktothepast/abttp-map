execute if score hidedown gameplay matches 1.. run scoreboard players remove hidedown gameplay 1

execute if score hidedown gameplay matches 180 as @e[type=item_display,tag=aj.elisabeth.root] run function animated_java:elisabeth/animations/departure/play
execute if score hidedown gameplay matches 120 run tp @e[tag=elisabeth] -306 -2 561 -130 0

execute if score hidedown gameplay matches 150 as @e[type=item_display,tag=aj.bernard.root] run function animated_java:bernard/animations/departure/play
execute if score hidedown gameplay matches 111..115 as @e[type=item_display,tag=aj.bernard.root] at @s run particle cloud ~ ~ ~ 0.5 1.5 0.5 0 250 force
execute if score hidedown gameplay matches 116..120 as @e[type=item_display,tag=aj.bernard.root] at @s run particle cloud ~ ~ ~ 0.5 1.5 0.5 0 200 force
execute if score hidedown gameplay matches 121..125 as @e[type=item_display,tag=aj.bernard.root] at @s run particle cloud ~ ~ ~ 0.5 1.3 0.5 0 150 force
execute if score hidedown gameplay matches 126..130 as @e[type=item_display,tag=aj.bernard.root] at @s run particle cloud ~ ~ ~ 0.5 1.0 0.5 0 100 force
execute if score hidedown gameplay matches 131..135 as @e[type=item_display,tag=aj.bernard.root] at @s run particle cloud ~ ~ ~ 0.5 0.7 0.5 0 50 force
execute if score hidedown gameplay matches 136..140 as @e[type=item_display,tag=aj.bernard.root] at @s run particle cloud ~ ~ ~ 0.5 0.4 0.5 0 20 force
execute if score hidedown gameplay matches 141..145 as @e[type=item_display,tag=aj.bernard.root] at @s run particle cloud ~ ~ ~ 0.5 0.2 0.5 0 10 force
execute if score hidedown gameplay matches 146..150 as @e[type=item_display,tag=aj.bernard.root] at @s run particle cloud ~ ~ ~ 0.5 0.1 0.5 0 5 force

execute if score hidedown gameplay matches 120 as @e[type=item_display,tag=aj.neal.root] run function animated_java:neal/animations/departure/play

execute if score hidedown gameplay matches 115 run tp @e[tag=bernard] -274 -14 673 -40 0
execute if score hidedown gameplay matches 60 run tp @e[tag=neal] -279 -14 728 180 0
execute if score hidedown gameplay matches 60 as @e[type=item_display,tag=aj.neal.root] run function animated_java:neal/animations/idle/stop
execute if score hidedown gameplay matches 60 as @e[type=item_display,tag=aj.neal.root] run function animated_java:neal/animations/sleepy/play

execute if score hidedown gameplay matches 115 as @e[type=item_display,tag=aj.bernard.root] run function animated_java:bernard/animations/idle/stop
execute if score hidedown gameplay matches 115 as @e[type=item_display,tag=aj.bernard.root] run function animated_java:bernard/animations/hiding/play

execute if score hidedown gameplay matches 120 as @e[type=item_display,tag=aj.elisabeth.root] run function animated_java:elisabeth/animations/idle/stop
execute if score hidedown gameplay matches 120 as @e[type=item_display,tag=aj.elisabeth.root] run function animated_java:elisabeth/animations/idle/play

execute store result score time dummy run time query daytime
execute if score time dummy matches ..10000 run time add 3t