execute if entity @s[tag=aj.percival.root] run function animated_java:percival/zzzzzzzz/animations/idle_sitting_grin/resume_as_root
execute if entity @s[tag=!aj.percival.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:percival/animations/idle_sitting_grin/resume ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]