execute if score @s aj.villager_link.animation.emote_sitting.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:villager_link/zzzzzzzz/animations/emote_sitting/end_loop
execute if score @s aj.villager_link.animation.emote_sitting.loop_mode = $aj.loop_mode.once aj.i run function animated_java:villager_link/animations/emote_sitting/stop
execute if score @s aj.villager_link.animation.emote_sitting.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:villager_link/animations/emote_sitting/pause