execute if entity @s[tag=aj.fiona.root] run function animated_java:fiona/zzzzzzzz/animations/walking/stop_as_root
execute if entity @s[tag=!aj.fiona.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:fiona/animations/walking/stop ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]