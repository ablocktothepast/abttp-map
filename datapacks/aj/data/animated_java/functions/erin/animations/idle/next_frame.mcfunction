execute if entity @s[tag=aj.erin.root] run function animated_java:erin/zzzzzzzz/animations/idle/next_frame_as_root
execute if entity @s[tag=!aj.erin.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:erin/animations/idle/next_frame ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]