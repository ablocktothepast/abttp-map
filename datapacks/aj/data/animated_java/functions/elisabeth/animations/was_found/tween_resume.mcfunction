execute if entity @s[tag=aj.elisabeth.root] run function animated_java:elisabeth/zzzzzzzz/animations/was_found/tween_resume_as_root
execute if entity @s[tag=!aj.elisabeth.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:elisabeth/animations/was_found/tween_resume ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]