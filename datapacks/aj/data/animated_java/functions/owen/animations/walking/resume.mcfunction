execute if entity @s[tag=aj.owen.root] run function animated_java:owen/zzzzzzzz/animations/walking/resume_as_root
execute if entity @s[tag=!aj.owen.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:owen/animations/walking/resume ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]