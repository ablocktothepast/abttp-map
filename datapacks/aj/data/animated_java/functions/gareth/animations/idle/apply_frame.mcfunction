execute if entity @s[tag=aj.gareth.root] run function animated_java:gareth/zzzzzzzz/animations/idle/apply_frame_as_root
execute if entity @s[tag=!aj.gareth.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:gareth/animations/idle/apply_frame ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]