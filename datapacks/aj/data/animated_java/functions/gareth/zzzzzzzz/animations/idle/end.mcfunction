execute if score @s aj.gareth.animation.idle.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:gareth/zzzzzzzz/animations/idle/end_loop
execute if score @s aj.gareth.animation.idle.loop_mode = $aj.loop_mode.once aj.i run function animated_java:gareth/animations/idle/stop
execute if score @s aj.gareth.animation.idle.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:gareth/animations/idle/pause