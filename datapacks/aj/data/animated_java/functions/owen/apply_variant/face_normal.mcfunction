execute if entity @s[tag=aj.owen.root] run function animated_java:owen/zzzzzzzz/apply_variant/face_normal/as_root
execute if entity @s[tag=!aj.owen.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:owen/apply_variant/face_normal ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]