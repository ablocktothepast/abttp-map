execute if entity @s[tag=aj.lysander.root] run function animated_java:lysander/zzzzzzzz/apply_variant/lysander_face_normal/as_root
execute if entity @s[tag=!aj.lysander.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:lysander/apply_variant/lysander_face_normal ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]