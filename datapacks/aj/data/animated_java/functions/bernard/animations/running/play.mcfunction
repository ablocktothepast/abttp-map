execute if entity @s[tag=aj.bernard.root] run function animated_java:bernard/zzzzzzzz/animations/running/play_as_root
execute if entity @s[tag=!aj.bernard.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:bernard/animations/running/play ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]