execute if entity @s[tag=aj.villager_link.root] run function animated_java:villager_link/zzzzzzzz/animations/waking_up/tween_resume_as_root
execute if entity @s[tag=!aj.villager_link.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:villager_link/animations/waking_up/tween_resume ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]