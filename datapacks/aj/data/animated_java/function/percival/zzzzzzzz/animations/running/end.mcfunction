execute if score @s aj.percival.animation.running.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:percival/zzzzzzzz/animations/running/end_loop
execute if score @s aj.percival.animation.running.loop_mode = $aj.loop_mode.once aj.i run function animated_java:percival/animations/running/stop
execute if score @s aj.percival.animation.running.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:percival/animations/running/pause