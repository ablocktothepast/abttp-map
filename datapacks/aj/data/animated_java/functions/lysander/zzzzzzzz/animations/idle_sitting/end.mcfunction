execute if score @s aj.lysander.animation.idle_sitting.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:lysander/zzzzzzzz/animations/idle_sitting/end_loop
execute if score @s aj.lysander.animation.idle_sitting.loop_mode = $aj.loop_mode.once aj.i run function animated_java:lysander/animations/idle_sitting/stop
execute if score @s aj.lysander.animation.idle_sitting.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:lysander/animations/idle_sitting/pause