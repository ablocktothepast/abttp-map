execute if score @s aj.eamon.animation.idle_interacting.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:eamon/zzzzzzzz/animations/idle_interacting/end_loop
execute if score @s aj.eamon.animation.idle_interacting.loop_mode = $aj.loop_mode.once aj.i run function animated_java:eamon/animations/idle_interacting/stop
execute if score @s aj.eamon.animation.idle_interacting.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:eamon/animations/idle_interacting/pause