execute if entity @s[tag=aj.cedric.root] run function animated_java:cedric/zzzzzzzz/animations/walking/apply_frame_as_root
execute if entity @s[tag=!aj.cedric.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:cedric/animations/walking/apply_frame ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]