execute if entity @s[tag=aj.amara.root] run function animated_java:amara/zzzzzzzz/animations/idle_sitting/stop_as_root
execute if entity @s[tag=!aj.amara.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:amara/animations/idle_sitting/stop ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]