execute if score @s aj.fiona.animation.walking.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:fiona/zzzzzzzz/animations/walking/end_loop
execute if score @s aj.fiona.animation.walking.loop_mode = $aj.loop_mode.once aj.i run function animated_java:fiona/animations/walking/stop
execute if score @s aj.fiona.animation.walking.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:fiona/animations/walking/pause