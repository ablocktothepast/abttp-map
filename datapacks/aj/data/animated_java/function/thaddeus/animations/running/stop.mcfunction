execute if entity @s[tag=aj.thaddeus.root] run function animated_java:thaddeus/zzzzzzzz/animations/running/stop_as_root
execute if entity @s[tag=!aj.thaddeus.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:thaddeus/animations/running/stop ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]