execute if score @s aj.percival.animation.emote_sitting.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:percival/zzzzzzzz/animations/emote_sitting/end_loop
execute if score @s aj.percival.animation.emote_sitting.loop_mode = $aj.loop_mode.once aj.i run function animated_java:percival/animations/emote_sitting/stop
execute if score @s aj.percival.animation.emote_sitting.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:percival/animations/emote_sitting/pause