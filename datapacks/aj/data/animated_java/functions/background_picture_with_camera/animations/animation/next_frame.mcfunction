execute if entity @s[tag=aj.background_picture_with_camera.root] run function animated_java:background_picture_with_camera/zzzzzzzz/animations/animation/next_frame_as_root
execute if entity @s[tag=!aj.background_picture_with_camera.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:background_picture_with_camera/animations/animation/next_frame ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]