execute if entity @s[tag=aj.tristan.root] run function animated_java:tristan/zzzzzzzz/animations/walking/pause_as_root
execute if entity @s[tag=!aj.tristan.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:tristan/animations/walking/pause ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]