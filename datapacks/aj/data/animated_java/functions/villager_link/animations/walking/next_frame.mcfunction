execute if entity @s[tag=aj.villager_link.root] run function animated_java:villager_link/zzzzzzzz/animations/walking/next_frame_as_root
execute if entity @s[tag=!aj.villager_link.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:villager_link/animations/walking/next_frame ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]