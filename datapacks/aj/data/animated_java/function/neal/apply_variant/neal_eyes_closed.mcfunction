execute if entity @s[tag=aj.neal.root] run function animated_java:neal/zzzzzzzz/apply_variant/neal_eyes_closed/as_root
execute if entity @s[tag=!aj.neal.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:neal/apply_variant/neal_eyes_closed ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]