execute if score @s aj.villager_link.animation.idle.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:villager_link/zzzzzzzz/animations/idle/end_loop
execute if score @s aj.villager_link.animation.idle.loop_mode = $aj.loop_mode.once aj.i run function animated_java:villager_link/animations/idle/stop
execute if score @s aj.villager_link.animation.idle.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:villager_link/animations/idle/pause