execute if entity @s[tag=aj.neal.root] run function animated_java:neal/zzzzzzzz/animations/running/pause_as_root
execute if entity @s[tag=!aj.neal.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:neal/animations/running/pause ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]