execute if score @s aj.alden.animation.walking.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:alden/zzzzzzzz/animations/walking/end_loop
execute if score @s aj.alden.animation.walking.loop_mode = $aj.loop_mode.once aj.i run function animated_java:alden/animations/walking/stop
execute if score @s aj.alden.animation.walking.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:alden/animations/walking/pause