execute if entity @s[tag=aj.melissa.root] run function animated_java:melissa/zzzzzzzz/apply_variant/face_normal/as_root
execute if entity @s[tag=!aj.melissa.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:melissa/apply_variant/face_normal ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]